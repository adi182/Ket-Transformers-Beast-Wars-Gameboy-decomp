; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $012", ROMX[$4000], BANK[$12]

    inc bc                                        ; $4000: $03
    nop                                           ; $4001: $00
    inc b                                         ; $4002: $04
    inc bc                                        ; $4003: $03
    ld a, [bc]                                    ; $4004: $0A
    rlca                                          ; $4005: $07
    rrca                                          ; $4006: $0F
    rlca                                          ; $4007: $07
    rrca                                          ; $4008: $0F
    rlca                                          ; $4009: $07
    rlca                                          ; $400A: $07
    ld bc, $0011                                  ; $400B: $01 $11 $00
    ld l, c                                       ; $400E: $69
    db $10                                        ; $400F: $10
    or [hl]                                       ; $4010: $B6
    ld l, c                                       ; $4011: $69
    rst RST_38                                    ; $4012: $FF
    ld a, [bc]                                    ; $4013: $0A
    cp a                                          ; $4014: $BF
    ld [hl], a                                    ; $4015: $77
    rst RST_38                                    ; $4016: $FF
    rlca                                          ; $4017: $07
    cp a                                          ; $4018: $BF
    ld [hl], a                                    ; $4019: $77
    ld a, a                                       ; $401A: $7F
    rrca                                          ; $401B: $0F
    ccf                                           ; $401C: $3F
    ld e, $1E                                     ; $401D: $1E $1E
    nop                                           ; $401F: $00
    rrca                                          ; $4020: $0F
    nop                                           ; $4021: $00
    dec bc                                        ; $4022: $0B
    dec b                                         ; $4023: $05
    dec bc                                        ; $4024: $0B
    inc b                                         ; $4025: $04
    rra                                           ; $4026: $1F
    inc bc                                        ; $4027: $03
    rst RST_38                                    ; $4028: $FF
    inc c                                         ; $4029: $0C
    inc e                                         ; $402A: $1C
    di                                            ; $402B: $F3
    cp e                                          ; $402C: $BB
    db $F4                                        ; $402D: $F4
    db $FD                                        ; $402E: $FD
    or $FF                                        ; $402F: $F6 $FF
    ret nz                                        ; $4031: $C0

    rst RST_18                                    ; $4032: $DF
    or e                                          ; $4033: $B3
    rst RST_10                                    ; $4034: $D7
    xor l                                         ; $4035: $AD
    rst RST_18                                    ; $4036: $DF
    dec l                                         ; $4037: $2D
    ld a, a                                       ; $4038: $7F
    sub e                                         ; $4039: $93
    ld sp, $CFCE                                  ; $403A: $31 $CE $CF
    ld bc, $0087                                  ; $403D: $01 $87 $00
    nop                                           ; $4040: $00
    nop                                           ; $4041: $00
    nop                                           ; $4042: $00
    nop                                           ; $4043: $00
    nop                                           ; $4044: $00
    nop                                           ; $4045: $00
    ld a, h                                       ; $4046: $7C
    nop                                           ; $4047: $00
    cp $04                                        ; $4048: $FE $04
    rst RST_38                                    ; $404A: $FF
    ldh [c], a                                    ; $404B: $E2
    rst RST_38                                    ; $404C: $FF
    ld [bc], a                                    ; $404D: $02
    rst RST_38                                    ; $404E: $FF
    di                                            ; $404F: $F3
    rst RST_38                                    ; $4050: $FF
    ld b, b                                       ; $4051: $40
    ret c                                         ; $4052: $D8

    scf                                           ; $4053: $37
    ld a, [$FFB7]                                 ; $4054: $FA $B7 $FF
    adc a                                         ; $4057: $8F
    rst RST_38                                    ; $4058: $FF
    rrca                                          ; $4059: $0F
    ld a, a                                       ; $405A: $7F
    xor a                                         ; $405B: $AF
    ld a, a                                       ; $405C: $7F
    and a                                         ; $405D: $A7
    ld a, a                                       ; $405E: $7F
    and b                                         ; $405F: $A0
    add b                                         ; $4060: $80
    nop                                           ; $4061: $00
    ldh a, [rP1]                                  ; $4062: $F0 $00
    jr @-$0E                                      ; $4064: $18 $F0

    xor h                                         ; $4066: $AC
    ld hl, sp-$04                                 ; $4067: $F8 $FC
    ld hl, sp-$04                                 ; $4069: $F8 $FC
    ld hl, sp-$08                                 ; $406B: $F8 $F8
    ret nz                                        ; $406D: $C0

    ret z                                         ; $406E: $C8

    add b                                         ; $406F: $80
    or [hl]                                       ; $4070: $B6
    ld c, b                                       ; $4071: $48
    ld l, l                                       ; $4072: $6D
    sub [hl]                                      ; $4073: $96
    rst RST_38                                    ; $4074: $FF
    ld d, b                                       ; $4075: $50
    db $FD                                        ; $4076: $FD
    xor $FF                                       ; $4077: $EE $FF
    ldh [$FFFD], a                                ; $4079: $E0 $FD
    xor $FE                                       ; $407B: $EE $FE
    ldh a, [$FFFC]                                ; $407D: $F0 $FC
    ld a, b                                       ; $407F: $78
    adc a                                         ; $4080: $8F
    inc bc                                        ; $4081: $03
    sub e                                         ; $4082: $93
    dec c                                         ; $4083: $0D
    ld hl, $C11E                                  ; $4084: $21 $1E $C1
    ld a, $62                                     ; $4087: $3E $62
    call c, $C0FC                                 ; $4089: $DC $FC $C0
    ldh a, [c]                                    ; $408C: $F2
    inc a                                         ; $408D: $3C
    ld a, [$FAFC]                                 ; $408E: $FA $FC $FA
    ld a, h                                       ; $4091: $7C
    db $FC                                        ; $4092: $FC
    ld a, b                                       ; $4093: $78
    ld a, h                                       ; $4094: $7C
    jr c, @+$7E                                   ; $4095: $38 $7C

    nop                                           ; $4097: $00
    cp $3C                                        ; $4098: $FE $3C
    ld a, $DC                                     ; $409A: $3E $DC
    ld e, $EC                                     ; $409C: $1E $EC
    db $FC                                        ; $409E: $FC
    nop                                           ; $409F: $00
    cp $6D                                        ; $40A0: $FE $6D
    cp $DD                                        ; $40A2: $FE $DD
    db $FD                                        ; $40A4: $FD
    cp b                                          ; $40A5: $B8
    ld sp, hl                                     ; $40A6: $F9
    nop                                           ; $40A7: $00
    ld sp, hl                                     ; $40A8: $F9
    ldh [$FFE5], a                                ; $40A9: $E0 $E5
    ret c                                         ; $40AB: $D8

    jp nz, $C2BC                                  ; $40AC: $C2 $BC $C2

    inc a                                         ; $40AF: $3C
    ld c, a                                       ; $40B0: $4F
    jr nc, jr_012_40E9                            ; $40B1: $30 $36

    dec c                                         ; $40B3: $0D
    ld a, $0D                                     ; $40B4: $3E $0D
    ccf                                           ; $40B6: $3F
    inc de                                        ; $40B7: $13
    ccf                                           ; $40B8: $3F
    rra                                           ; $40B9: $1F
    rra                                           ; $40BA: $1F
    rrca                                          ; $40BB: $0F
    rra                                           ; $40BC: $1F
    rrca                                          ; $40BD: $0F
    rrca                                          ; $40BE: $0F
    inc b                                         ; $40BF: $04
    ld c, a                                       ; $40C0: $4F
    add b                                         ; $40C1: $80
    ldh [rP1], a                                  ; $40C2: $E0 $00
    ret nc                                        ; $40C4: $D0

    and b                                         ; $40C5: $A0
    ret z                                         ; $40C6: $C8

    or b                                          ; $40C7: $B0
    add sp, $70                                   ; $40C8: $E8 $70
    add sp, -$10                                  ; $40CA: $E8 $F0
    ld hl, sp-$10                                 ; $40CC: $F8 $F0
    ld hl, sp-$10                                 ; $40CE: $F8 $F0
    ld hl, sp-$80                                 ; $40D0: $F8 $80
    db $FC                                        ; $40D2: $FC
    nop                                           ; $40D3: $00
    call nz, $8238                                ; $40D4: $C4 $38 $82
    ld a, h                                       ; $40D7: $7C
    add d                                         ; $40D8: $82
    ld a, h                                       ; $40D9: $7C
    ld a, h                                       ; $40DA: $7C
    nop                                           ; $40DB: $00
    nop                                           ; $40DC: $00
    nop                                           ; $40DD: $00
    nop                                           ; $40DE: $00
    nop                                           ; $40DF: $00
    ld bc, $0100                                  ; $40E0: $01 $00 $01
    nop                                           ; $40E3: $00
    ld bc, $0100                                  ; $40E4: $01 $00 $01
    nop                                           ; $40E7: $00
    nop                                           ; $40E8: $00

jr_012_40E9:
    nop                                           ; $40E9: $00
    nop                                           ; $40EA: $00
    nop                                           ; $40EB: $00
    nop                                           ; $40EC: $00
    nop                                           ; $40ED: $00
    nop                                           ; $40EE: $00
    nop                                           ; $40EF: $00
    nop                                           ; $40F0: $00
    nop                                           ; $40F1: $00
    ld bc, $0200                                  ; $40F2: $01 $00 $02
    ld bc, $0003                                  ; $40F5: $01 $03 $00
    nop                                           ; $40F8: $00
    nop                                           ; $40F9: $00
    nop                                           ; $40FA: $00
    nop                                           ; $40FB: $00
    nop                                           ; $40FC: $00
    nop                                           ; $40FD: $00
    nop                                           ; $40FE: $00
    nop                                           ; $40FF: $00
    inc bc                                        ; $4100: $03
    nop                                           ; $4101: $00
    inc b                                         ; $4102: $04
    inc bc                                        ; $4103: $03
    ld a, [bc]                                    ; $4104: $0A
    rlca                                          ; $4105: $07
    rrca                                          ; $4106: $0F
    rlca                                          ; $4107: $07
    rrca                                          ; $4108: $0F
    rlca                                          ; $4109: $07
    rlca                                          ; $410A: $07
    ld bc, $0001                                  ; $410B: $01 $01 $00
    ld de, $6E00                                  ; $410E: $11 $00 $6E
    ld de, $6AB7                                  ; $4111: $11 $B7 $6A
    rst RST_38                                    ; $4114: $FF
    dec bc                                        ; $4115: $0B
    cp a                                          ; $4116: $BF
    ld [hl], a                                    ; $4117: $77
    rst RST_38                                    ; $4118: $FF
    rlca                                          ; $4119: $07
    cp a                                          ; $411A: $BF
    ld [hl], a                                    ; $411B: $77
    ld a, a                                       ; $411C: $7F
    ld c, $3E                                     ; $411D: $0E $3E
    nop                                           ; $411F: $00
    rrca                                          ; $4120: $0F
    nop                                           ; $4121: $00
    dec bc                                        ; $4122: $0B
    dec b                                         ; $4123: $05
    dec bc                                        ; $4124: $0B
    inc b                                         ; $4125: $04
    rra                                           ; $4126: $1F
    inc bc                                        ; $4127: $03
    rst RST_38                                    ; $4128: $FF
    inc c                                         ; $4129: $0C
    inc e                                         ; $412A: $1C
    di                                            ; $412B: $F3
    cp e                                          ; $412C: $BB
    db $F4                                        ; $412D: $F4
    db $FD                                        ; $412E: $FD
    or $FF                                        ; $412F: $F6 $FF
    ret nz                                        ; $4131: $C0

    rst RST_18                                    ; $4132: $DF
    or e                                          ; $4133: $B3
    rst RST_10                                    ; $4134: $D7
    xor l                                         ; $4135: $AD
    rst RST_18                                    ; $4136: $DF
    dec l                                         ; $4137: $2D
    ld a, a                                       ; $4138: $7F
    sub e                                         ; $4139: $93
    ld sp, $CFCE                                  ; $413A: $31 $CE $CF
    ld bc, $0087                                  ; $413D: $01 $87 $00
    ld a, h                                       ; $4140: $7C
    nop                                           ; $4141: $00
    cp $04                                        ; $4142: $FE $04
    rst RST_38                                    ; $4144: $FF
    ldh [c], a                                    ; $4145: $E2
    rst RST_38                                    ; $4146: $FF
    ld [bc], a                                    ; $4147: $02
    rst RST_38                                    ; $4148: $FF
    di                                            ; $4149: $F3
    rst RST_38                                    ; $414A: $FF
    ld b, b                                       ; $414B: $40
    ret c                                         ; $414C: $D8

    scf                                           ; $414D: $37
    ld a, [$FFB7]                                 ; $414E: $FA $B7 $FF
    adc a                                         ; $4151: $8F
    rst RST_38                                    ; $4152: $FF
    rrca                                          ; $4153: $0F
    ld a, a                                       ; $4154: $7F
    xor a                                         ; $4155: $AF

jr_012_4156:
    ld a, a                                       ; $4156: $7F
    and a                                         ; $4157: $A7
    ld a, a                                       ; $4158: $7F
    and b                                         ; $4159: $A0
    cp $6D                                        ; $415A: $FE $6D
    cp $DD                                        ; $415C: $FE $DD
    db $FD                                        ; $415E: $FD
    cp b                                          ; $415F: $B8
    add b                                         ; $4160: $80
    nop                                           ; $4161: $00
    ldh a, [rP1]                                  ; $4162: $F0 $00
    jr jr_012_4156                                ; $4164: $18 $F0

    xor h                                         ; $4166: $AC
    ld hl, sp-$04                                 ; $4167: $F8 $FC
    ld hl, sp-$04                                 ; $4169: $F8 $FC
    ld hl, sp-$08                                 ; $416B: $F8 $F8
    ret nz                                        ; $416D: $C0

    ret nz                                        ; $416E: $C0

    add b                                         ; $416F: $80
    xor b                                         ; $4170: $A8
    ld b, b                                       ; $4171: $40
    halt                                          ; $4172: $76
    adc b                                         ; $4173: $88
    db $ED                                        ; $4174: $ED
    ld d, [hl]                                    ; $4175: $56
    rst RST_38                                    ; $4176: $FF
    ret nc                                        ; $4177: $D0

    db $FD                                        ; $4178: $FD
    xor $FF                                       ; $4179: $EE $FF
    ldh [$FFFD], a                                ; $417B: $E0 $FD
    xor $FE                                       ; $417D: $EE $FE
    ld [hl], b                                    ; $417F: $70
    ld bc, $0100                                  ; $4180: $01 $00 $01
    nop                                           ; $4183: $00
    ld bc, $0100                                  ; $4184: $01 $00 $01
    nop                                           ; $4187: $00
    nop                                           ; $4188: $00
    nop                                           ; $4189: $00
    nop                                           ; $418A: $00
    nop                                           ; $418B: $00
    nop                                           ; $418C: $00
    nop                                           ; $418D: $00
    nop                                           ; $418E: $00
    nop                                           ; $418F: $00
    ld bc, $0200                                  ; $4190: $01 $00 $02
    ld bc, $0003                                  ; $4193: $01 $03 $00
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
    adc a                                         ; $41A0: $8F
    inc bc                                        ; $41A1: $03
    sub e                                         ; $41A2: $93
    dec c                                         ; $41A3: $0D
    ld hl, $C11E                                  ; $41A4: $21 $1E $C1
    ld a, $62                                     ; $41A7: $3E $62
    call c, $C0FC                                 ; $41A9: $DC $FC $C0
    ldh a, [c]                                    ; $41AC: $F2
    inc a                                         ; $41AD: $3C
    ld a, [$FAFC]                                 ; $41AE: $FA $FC $FA
    ld a, h                                       ; $41B1: $7C
    db $FC                                        ; $41B2: $FC

jr_012_41B3:
    ld a, b                                       ; $41B3: $78
    ld a, h                                       ; $41B4: $7C
    jr c, jr_012_41B3                             ; $41B5: $38 $FC

    nop                                           ; $41B7: $00
    ld a, $DC                                     ; $41B8: $3E $DC
    ld e, $EC                                     ; $41BA: $1E $EC
    cp $00                                        ; $41BC: $FE $00
    nop                                           ; $41BE: $00
    nop                                           ; $41BF: $00
    ld sp, hl                                     ; $41C0: $F9
    nop                                           ; $41C1: $00
    ld sp, hl                                     ; $41C2: $F9
    ldh [$FFE5], a                                ; $41C3: $E0 $E5
    ret c                                         ; $41C5: $D8

    jp nz, $C2BC                                  ; $41C6: $C2 $BC $C2

    inc a                                         ; $41C9: $3C
    ld c, a                                       ; $41CA: $4F
    jr nc, jr_012_4203                            ; $41CB: $30 $36

    dec c                                         ; $41CD: $0D
    ld a, $0D                                     ; $41CE: $3E $0D
    ccf                                           ; $41D0: $3F
    inc de                                        ; $41D1: $13
    ccf                                           ; $41D2: $3F
    rra                                           ; $41D3: $1F
    rra                                           ; $41D4: $1F
    rrca                                          ; $41D5: $0F
    rra                                           ; $41D6: $1F
    rrca                                          ; $41D7: $0F
    rrca                                          ; $41D8: $0F
    inc b                                         ; $41D9: $04
    rlca                                          ; $41DA: $07
    nop                                           ; $41DB: $00
    ld b, $01                                     ; $41DC: $06 $01
    inc b                                         ; $41DE: $04
    inc bc                                        ; $41DF: $03
    ld a, h                                       ; $41E0: $7C
    nop                                           ; $41E1: $00
    nop                                           ; $41E2: $00
    nop                                           ; $41E3: $00
    add b                                         ; $41E4: $80
    nop                                           ; $41E5: $00
    ld b, b                                       ; $41E6: $40
    add b                                         ; $41E7: $80
    ld b, b                                       ; $41E8: $40
    add b                                         ; $41E9: $80
    ret nz                                        ; $41EA: $C0

    add b                                         ; $41EB: $80
    ret nz                                        ; $41EC: $C0

    add b                                         ; $41ED: $80
    ret nz                                        ; $41EE: $C0

    add b                                         ; $41EF: $80
    ret nz                                        ; $41F0: $C0

    nop                                           ; $41F1: $00
    ret nz                                        ; $41F2: $C0

    nop                                           ; $41F3: $00
    jr nz, @-$3E                                  ; $41F4: $20 $C0

    db $10                                        ; $41F6: $10
    ldh [$FFF0], a                                ; $41F7: $E0 $F0
    nop                                           ; $41F9: $00
    nop                                           ; $41FA: $00
    nop                                           ; $41FB: $00
    nop                                           ; $41FC: $00
    nop                                           ; $41FD: $00
    nop                                           ; $41FE: $00
    nop                                           ; $41FF: $00
    rlca                                          ; $4200: $07
    nop                                           ; $4201: $00
    nop                                           ; $4202: $00

jr_012_4203:
    nop                                           ; $4203: $00
    nop                                           ; $4204: $00
    nop                                           ; $4205: $00
    nop                                           ; $4206: $00
    nop                                           ; $4207: $00
    nop                                           ; $4208: $00
    nop                                           ; $4209: $00
    nop                                           ; $420A: $00
    nop                                           ; $420B: $00
    nop                                           ; $420C: $00
    nop                                           ; $420D: $00
    nop                                           ; $420E: $00
    nop                                           ; $420F: $00
    nop                                           ; $4210: $00
    nop                                           ; $4211: $00
    nop                                           ; $4212: $00
    nop                                           ; $4213: $00
    nop                                           ; $4214: $00
    nop                                           ; $4215: $00
    nop                                           ; $4216: $00
    nop                                           ; $4217: $00
    nop                                           ; $4218: $00
    nop                                           ; $4219: $00
    nop                                           ; $421A: $00
    nop                                           ; $421B: $00
    nop                                           ; $421C: $00
    nop                                           ; $421D: $00
    nop                                           ; $421E: $00
    nop                                           ; $421F: $00
    inc bc                                        ; $4220: $03
    nop                                           ; $4221: $00
    inc b                                         ; $4222: $04
    inc bc                                        ; $4223: $03
    ld a, [bc]                                    ; $4224: $0A
    rlca                                          ; $4225: $07
    rrca                                          ; $4226: $0F
    rlca                                          ; $4227: $07
    rrca                                          ; $4228: $0F
    rlca                                          ; $4229: $07
    rlca                                          ; $422A: $07
    ld bc, $0001                                  ; $422B: $01 $01 $00
    ld bc, $1E00                                  ; $422E: $01 $00 $1E
    ld bc, $166F                                  ; $4231: $01 $6F $16
    or a                                          ; $4234: $B7
    ld l, e                                       ; $4235: $6B
    rst RST_38                                    ; $4236: $FF
    dec bc                                        ; $4237: $0B
    cp a                                          ; $4238: $BF
    ld [hl], a                                    ; $4239: $77
    rst RST_38                                    ; $423A: $FF
    rlca                                          ; $423B: $07
    cp a                                          ; $423C: $BF
    halt                                          ; $423D: $76
    ld a, a                                       ; $423E: $7F
    nop                                           ; $423F: $00
    rrca                                          ; $4240: $0F
    nop                                           ; $4241: $00
    dec bc                                        ; $4242: $0B
    dec b                                         ; $4243: $05
    dec bc                                        ; $4244: $0B
    inc b                                         ; $4245: $04
    rra                                           ; $4246: $1F
    inc bc                                        ; $4247: $03
    rst RST_38                                    ; $4248: $FF
    inc c                                         ; $4249: $0C
    inc e                                         ; $424A: $1C
    di                                            ; $424B: $F3
    cp e                                          ; $424C: $BB
    db $F4                                        ; $424D: $F4
    db $FD                                        ; $424E: $FD
    or $FF                                        ; $424F: $F6 $FF
    ret nz                                        ; $4251: $C0

    rst RST_18                                    ; $4252: $DF
    or e                                          ; $4253: $B3
    rst RST_10                                    ; $4254: $D7
    xor l                                         ; $4255: $AD
    rst RST_18                                    ; $4256: $DF
    dec l                                         ; $4257: $2D
    ld a, a                                       ; $4258: $7F
    sub e                                         ; $4259: $93
    ld sp, $CFCE                                  ; $425A: $31 $CE $CF
    ld bc, $0087                                  ; $425D: $01 $87 $00
    ld a, h                                       ; $4260: $7C
    nop                                           ; $4261: $00
    cp $04                                        ; $4262: $FE $04
    rst RST_38                                    ; $4264: $FF
    ldh [c], a                                    ; $4265: $E2
    rst RST_38                                    ; $4266: $FF
    ld [bc], a                                    ; $4267: $02
    rst RST_38                                    ; $4268: $FF
    di                                            ; $4269: $F3
    rst RST_38                                    ; $426A: $FF
    ld b, b                                       ; $426B: $40
    ret c                                         ; $426C: $D8

    scf                                           ; $426D: $37
    ld a, [$FFB7]                                 ; $426E: $FA $B7 $FF
    adc a                                         ; $4271: $8F
    rst RST_38                                    ; $4272: $FF
    rrca                                          ; $4273: $0F
    ld a, a                                       ; $4274: $7F
    xor a                                         ; $4275: $AF

jr_012_4276:
    ld a, a                                       ; $4276: $7F
    and a                                         ; $4277: $A7
    ld a, a                                       ; $4278: $7F
    and b                                         ; $4279: $A0
    cp $6D                                        ; $427A: $FE $6D
    cp $DD                                        ; $427C: $FE $DD
    db $FD                                        ; $427E: $FD
    cp b                                          ; $427F: $B8
    add b                                         ; $4280: $80
    nop                                           ; $4281: $00
    ldh a, [rP1]                                  ; $4282: $F0 $00
    jr jr_012_4276                                ; $4284: $18 $F0

    xor h                                         ; $4286: $AC
    ld hl, sp-$04                                 ; $4287: $F8 $FC
    ld hl, sp-$04                                 ; $4289: $F8 $FC
    ld hl, sp-$08                                 ; $428B: $F8 $F8
    ret nz                                        ; $428D: $C0

    ret nz                                        ; $428E: $C0

    add b                                         ; $428F: $80
    and b                                         ; $4290: $A0
    ld b, b                                       ; $4291: $40
    ld a, b                                       ; $4292: $78
    add b                                         ; $4293: $80
    or $68                                        ; $4294: $F6 $68
    db $ED                                        ; $4296: $ED
    sub $FF                                       ; $4297: $D6 $FF
    ret nc                                        ; $4299: $D0

    db $FD                                        ; $429A: $FD
    xor $FF                                       ; $429B: $EE $FF
    ldh [$FFFD], a                                ; $429D: $E0 $FD
    ld l, [hl]                                    ; $429F: $6E
    ld bc, $0100                                  ; $42A0: $01 $00 $01
    nop                                           ; $42A3: $00
    ld bc, $0100                                  ; $42A4: $01 $00 $01
    nop                                           ; $42A7: $00
    nop                                           ; $42A8: $00
    nop                                           ; $42A9: $00
    nop                                           ; $42AA: $00
    nop                                           ; $42AB: $00
    ld bc, $0200                                  ; $42AC: $01 $00 $02
    ld bc, $0304                                  ; $42AF: $01 $04 $03
    rlca                                          ; $42B2: $07
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
    sbc a                                         ; $42C0: $9F
    inc bc                                        ; $42C1: $03
    and e                                         ; $42C2: $A3
    dec e                                         ; $42C3: $1D
    pop bc                                        ; $42C4: $C1
    ld a, $61                                     ; $42C5: $3E $61
    sbc $FE                                       ; $42C7: $DE $FE
    ret nz                                        ; $42C9: $C0

    ldh a, [c]                                    ; $42CA: $F2
    inc a                                         ; $42CB: $3C
    ld a, [$FAFC]                                 ; $42CC: $FA $FC $FA
    db $FC                                        ; $42CF: $FC
    db $FC                                        ; $42D0: $FC
    ld a, b                                       ; $42D1: $78
    db $FC                                        ; $42D2: $FC
    ld a, b                                       ; $42D3: $78
    ld hl, sp+$00                                 ; $42D4: $F8 $00

jr_012_42D6:
    ld a, h                                       ; $42D6: $7C
    cp b                                          ; $42D7: $B8
    inc a                                         ; $42D8: $3C
    ret c                                         ; $42D9: $D8

    db $FC                                        ; $42DA: $FC
    nop                                           ; $42DB: $00
    nop                                           ; $42DC: $00
    nop                                           ; $42DD: $00
    nop                                           ; $42DE: $00
    nop                                           ; $42DF: $00
    ld sp, hl                                     ; $42E0: $F9
    nop                                           ; $42E1: $00
    ld sp, hl                                     ; $42E2: $F9
    ldh [$FFE5], a                                ; $42E3: $E0 $E5
    ret c                                         ; $42E5: $D8

    jp nz, $DFBC                                  ; $42E6: $C2 $BC $DF

    jr nz, jr_012_4361                            ; $42E9: $20 $76

    dec c                                         ; $42EB: $0D
    ld a, $0D                                     ; $42EC: $3E $0D
    ccf                                           ; $42EE: $3F
    inc de                                        ; $42EF: $13
    ccf                                           ; $42F0: $3F
    rra                                           ; $42F1: $1F
    ccf                                           ; $42F2: $3F
    rra                                           ; $42F3: $1F
    rra                                           ; $42F4: $1F
    rrca                                          ; $42F5: $0F
    rra                                           ; $42F6: $1F
    ld [$000F], sp                                ; $42F7: $08 $0F $00
    inc c                                         ; $42FA: $0C
    inc bc                                        ; $42FB: $03
    ld [$0F07], sp                                ; $42FC: $08 $07 $0F
    nop                                           ; $42FF: $00
    cp $00                                        ; $4300: $FE $00
    add b                                         ; $4302: $80
    nop                                           ; $4303: $00
    ld b, b                                       ; $4304: $40
    add b                                         ; $4305: $80
    ld b, b                                       ; $4306: $40
    add b                                         ; $4307: $80
    ld b, b                                       ; $4308: $40
    add b                                         ; $4309: $80
    ret nz                                        ; $430A: $C0

    add b                                         ; $430B: $80
    ret nz                                        ; $430C: $C0

    add b                                         ; $430D: $80
    ret nz                                        ; $430E: $C0

    nop                                           ; $430F: $00
    ret nz                                        ; $4310: $C0

    nop                                           ; $4311: $00
    ld b, b                                       ; $4312: $40
    add b                                         ; $4313: $80
    jr nz, jr_012_42D6                            ; $4314: $20 $C0

    ldh [rP1], a                                  ; $4316: $E0 $00
    nop                                           ; $4318: $00
    nop                                           ; $4319: $00
    nop                                           ; $431A: $00
    nop                                           ; $431B: $00
    nop                                           ; $431C: $00
    nop                                           ; $431D: $00
    nop                                           ; $431E: $00
    nop                                           ; $431F: $00
    inc bc                                        ; $4320: $03
    nop                                           ; $4321: $00
    inc b                                         ; $4322: $04
    inc bc                                        ; $4323: $03
    ld a, [bc]                                    ; $4324: $0A
    rlca                                          ; $4325: $07
    rrca                                          ; $4326: $0F
    rlca                                          ; $4327: $07
    rrca                                          ; $4328: $0F
    rlca                                          ; $4329: $07
    rlca                                          ; $432A: $07
    ld bc, $0001                                  ; $432B: $01 $01 $00
    ld de, $6E00                                  ; $432E: $11 $00 $6E
    ld de, $6AB7                                  ; $4331: $11 $B7 $6A
    rst RST_38                                    ; $4334: $FF
    dec bc                                        ; $4335: $0B
    cp a                                          ; $4336: $BF
    ld [hl], a                                    ; $4337: $77
    rst RST_38                                    ; $4338: $FF
    rlca                                          ; $4339: $07
    cp a                                          ; $433A: $BF
    ld [hl], a                                    ; $433B: $77

Jump_012_433C:
    ld a, a                                       ; $433C: $7F
    ld c, $1E                                     ; $433D: $0E $1E
    nop                                           ; $433F: $00
    rrca                                          ; $4340: $0F
    nop                                           ; $4341: $00
    dec bc                                        ; $4342: $0B
    dec b                                         ; $4343: $05
    dec bc                                        ; $4344: $0B
    inc b                                         ; $4345: $04
    rst RST_38                                    ; $4346: $FF
    inc bc                                        ; $4347: $03
    rra                                           ; $4348: $1F
    db $EC                                        ; $4349: $EC
    cp h                                          ; $434A: $BC
    di                                            ; $434B: $F3
    ei                                            ; $434C: $FB
    db $F4                                        ; $434D: $F4
    db $FD                                        ; $434E: $FD
    or $FF                                        ; $434F: $F6 $FF
    ret nz                                        ; $4351: $C0

    rst RST_18                                    ; $4352: $DF
    or e                                          ; $4353: $B3
    rst RST_10                                    ; $4354: $D7
    dec l                                         ; $4355: $2D
    ld e, a                                       ; $4356: $5F
    xor l                                         ; $4357: $AD
    ld a, a                                       ; $4358: $7F
    sub e                                         ; $4359: $93
    or c                                          ; $435A: $B1
    ld c, [hl]                                    ; $435B: $4E
    rst RST_08                                    ; $435C: $CF
    ld bc, $0087                                  ; $435D: $01 $87 $00
    ld a, h                                       ; $4360: $7C

jr_012_4361:
    nop                                           ; $4361: $00
    cp $04                                        ; $4362: $FE $04
    rst RST_38                                    ; $4364: $FF
    ldh [c], a                                    ; $4365: $E2
    rst RST_38                                    ; $4366: $FF
    ld [bc], a                                    ; $4367: $02
    rst RST_38                                    ; $4368: $FF
    ldh a, [$FFF8]                                ; $4369: $F0 $F8
    ld b, a                                       ; $436B: $47
    jp c, $FF37                                   ; $436C: $DA $37 $FF

    or a                                          ; $436F: $B7
    rst RST_38                                    ; $4370: $FF
    adc a                                         ; $4371: $8F
    rst RST_38                                    ; $4372: $FF
    rrca                                          ; $4373: $0F

jr_012_4374:
    ld a, a                                       ; $4374: $7F
    and a                                         ; $4375: $A7
    ld a, a                                       ; $4376: $7F
    and b                                         ; $4377: $A0
    ld a, [hl]                                    ; $4378: $7E
    xor l                                         ; $4379: $AD
    cp $6D                                        ; $437A: $FE $6D
    rst RST_38                                    ; $437C: $FF
    call c, $B8FD                                 ; $437D: $DC $FD $B8
    ldh a, [rP1]                                  ; $4380: $F0 $00
    jr jr_012_4374                                ; $4382: $18 $F0

    xor h                                         ; $4384: $AC
    ld hl, sp-$04                                 ; $4385: $F8 $FC
    ld hl, sp-$04                                 ; $4387: $F8 $FC
    ld hl, sp-$08                                 ; $4389: $F8 $F8
    ret nz                                        ; $438B: $C0

    ret nz                                        ; $438C: $C0

    add b                                         ; $438D: $80
    xor b                                         ; $438E: $A8
    ld b, b                                       ; $438F: $40
    halt                                          ; $4390: $76
    adc b                                         ; $4391: $88
    db $ED                                        ; $4392: $ED
    ld d, [hl]                                    ; $4393: $56
    rst RST_38                                    ; $4394: $FF
    ret nc                                        ; $4395: $D0

    db $FD                                        ; $4396: $FD
    xor $FF                                       ; $4397: $EE $FF
    ldh [$FFFD], a                                ; $4399: $E0 $FD
    xor $FE                                       ; $439B: $EE $FE
    ld [hl], b                                    ; $439D: $70
    ld a, b                                       ; $439E: $78
    nop                                           ; $439F: $00
    ld bc, $0100                                  ; $43A0: $01 $00 $01
    nop                                           ; $43A3: $00
    ld bc, $0100                                  ; $43A4: $01 $00 $01
    nop                                           ; $43A7: $00
    ld bc, $0000                                  ; $43A8: $01 $00 $00
    nop                                           ; $43AB: $00
    nop                                           ; $43AC: $00
    nop                                           ; $43AD: $00
    nop                                           ; $43AE: $00
    nop                                           ; $43AF: $00
    ld bc, $0200                                  ; $43B0: $01 $00 $02
    ld bc, $0304                                  ; $43B3: $01 $04 $03
    rlca                                          ; $43B6: $07
    nop                                           ; $43B7: $00
    nop                                           ; $43B8: $00
    nop                                           ; $43B9: $00
    nop                                           ; $43BA: $00
    nop                                           ; $43BB: $00
    nop                                           ; $43BC: $00
    nop                                           ; $43BD: $00
    nop                                           ; $43BE: $00
    nop                                           ; $43BF: $00
    adc a                                         ; $43C0: $8F
    inc bc                                        ; $43C1: $03
    inc de                                        ; $43C2: $13
    dec c                                         ; $43C3: $0D
    ld hl, $C11E                                  ; $43C4: $21 $1E $C1
    ld a, $62                                     ; $43C7: $3E $62
    call c, $C0FC                                 ; $43C9: $DC $FC $C0
    ldh a, [c]                                    ; $43CC: $F2
    inc a                                         ; $43CD: $3C
    ld a, [$FAFC]                                 ; $43CE: $FA $FC $FA
    db $FC                                        ; $43D1: $FC
    db $FC                                        ; $43D2: $FC
    ld a, b                                       ; $43D3: $78
    db $FC                                        ; $43D4: $FC
    ld a, b                                       ; $43D5: $78
    ld a, b                                       ; $43D6: $78
    nop                                           ; $43D7: $00
    db $FC                                        ; $43D8: $FC
    ld a, b                                       ; $43D9: $78
    ld a, h                                       ; $43DA: $7C
    cp b                                          ; $43DB: $B8
    inc a                                         ; $43DC: $3C
    ret c                                         ; $43DD: $D8

    ld hl, sp+$00                                 ; $43DE: $F8 $00
    ld sp, hl                                     ; $43E0: $F9
    nop                                           ; $43E1: $00
    ld sp, hl                                     ; $43E2: $F9
    ldh [$FFE4], a                                ; $43E3: $E0 $E4
    ret c                                         ; $43E5: $D8

    jp nz, $C2BC                                  ; $43E6: $C2 $BC $C2

    inc a                                         ; $43E9: $3C
    ld e, a                                       ; $43EA: $5F
    jr nz, jr_012_4423                            ; $43EB: $20 $36

    dec c                                         ; $43ED: $0D
    ld a, $0D                                     ; $43EE: $3E $0D
    ccf                                           ; $43F0: $3F
    inc de                                        ; $43F1: $13
    ccf                                           ; $43F2: $3F
    rra                                           ; $43F3: $1F
    ccf                                           ; $43F4: $3F
    rra                                           ; $43F5: $1F
    rra                                           ; $43F6: $1F
    rrca                                          ; $43F7: $0F
    rra                                           ; $43F8: $1F
    ld [$000F], sp                                ; $43F9: $08 $0F $00
    inc c                                         ; $43FC: $0C
    inc bc                                        ; $43FD: $03
    ld [$6807], sp                                ; $43FE: $08 $07 $68
    ret nc                                        ; $4401: $D0

    db $E4                                        ; $4402: $E4
    ret c                                         ; $4403: $D8

    db $F4                                        ; $4404: $F4
    jr c, @-$0A                                   ; $4405: $38 $F4

    ld hl, sp-$0C                                 ; $4407: $F8 $F4
    ld hl, sp-$04                                 ; $4409: $F8 $FC
    ld hl, sp-$04                                 ; $440B: $F8 $FC
    add b                                         ; $440D: $80
    db $FC                                        ; $440E: $FC
    nop                                           ; $440F: $00
    call nz, $8238                                ; $4410: $C4 $38 $82
    ld a, h                                       ; $4413: $7C
    add d                                         ; $4414: $82
    ld a, h                                       ; $4415: $7C
    ld a, h                                       ; $4416: $7C
    nop                                           ; $4417: $00
    nop                                           ; $4418: $00
    nop                                           ; $4419: $00
    nop                                           ; $441A: $00
    nop                                           ; $441B: $00
    nop                                           ; $441C: $00
    nop                                           ; $441D: $00
    nop                                           ; $441E: $00
    nop                                           ; $441F: $00
    rlca                                          ; $4420: $07
    nop                                           ; $4421: $00
    dec b                                         ; $4422: $05

jr_012_4423:
    ld [bc], a                                    ; $4423: $02
    dec b                                         ; $4424: $05
    ld [bc], a                                    ; $4425: $02
    rrca                                          ; $4426: $0F
    ld bc, $061F                                  ; $4427: $01 $1F $06
    ld h, $19                                     ; $442A: $26 $19
    ld d, l                                       ; $442C: $55
    ld a, [hl-]                                   ; $442D: $3A
    ld a, [hl]                                    ; $442E: $7E
    dec sp                                        ; $442F: $3B
    ld a, a                                       ; $4430: $7F
    jr nz, @+$39                                  ; $4431: $20 $37

    add hl, bc                                    ; $4433: $09
    sbc l                                         ; $4434: $9D
    ld b, $FF                                     ; $4435: $06 $FF
    ld b, $FF                                     ; $4437: $06 $FF
    ld [hl], c                                    ; $4439: $71
    ld sp, hl                                     ; $443A: $F9
    halt                                          ; $443B: $76
    rst RST_38                                    ; $443C: $FF
    ld hl, sp-$01                                 ; $443D: $F8 $FF
    ld a, [$0001]                                 ; $443F: $FA $01 $00
    ld c, $01                                     ; $4442: $0E $01
    rla                                           ; $4444: $17
    dec c                                         ; $4445: $0D
    rra                                           ; $4446: $1F
    ld bc, $0E17                                  ; $4447: $01 $17 $0E
    rrca                                          ; $444A: $0F
    nop                                           ; $444B: $00
    dec bc                                        ; $444C: $0B
    ld b, $07                                     ; $444D: $06 $07
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
    rst RST_38                                    ; $4460: $FF
    ld a, [$01FA]                                 ; $4461: $FA $FA $01
    ld [bc], a                                    ; $4464: $02
    ld bc, $0001                                  ; $4465: $01 $01 $00
    ld bc, $0100                                  ; $4468: $01 $00 $01
    nop                                           ; $446B: $00
    ld [bc], a                                    ; $446C: $02
    ld bc, $0103                                  ; $446D: $01 $03 $01
    ld bc, $0000                                  ; $4470: $01 $00 $00
    nop                                           ; $4473: $00
    nop                                           ; $4474: $00
    nop                                           ; $4475: $00
    nop                                           ; $4476: $00
    nop                                           ; $4477: $00
    nop                                           ; $4478: $00
    nop                                           ; $4479: $00
    ld bc, $0200                                  ; $447A: $01 $00 $02
    ld bc, $0003                                  ; $447D: $01 $03 $00
    cp a                                          ; $4480: $BF
    ld e, l                                       ; $4481: $5D
    ld a, l                                       ; $4482: $7D
    add b                                         ; $4483: $80
    db $10                                        ; $4484: $10
    ldh [$FF08], a                                ; $4485: $E0 $08
    ldh a, [$FFB8]                                ; $4487: $F0 $B8
    ld b, b                                       ; $4489: $40
    db $E4                                        ; $448A: $E4
    cp b                                          ; $448B: $B8
    ldh a, [c]                                    ; $448C: $F2
    cp h                                          ; $448D: $BC
    ld a, [$FF7C]                                 ; $448E: $FA $7C $FF
    ld a, [hl]                                    ; $4491: $7E
    ld a, a                                       ; $4492: $7F
    ld a, $3F                                     ; $4493: $3E $3F
    jr jr_012_44D6                                ; $4495: $18 $3F

    rlca                                          ; $4497: $07
    rst RST_38                                    ; $4498: $FF
    cpl                                           ; $4499: $2F
    ld l, a                                       ; $449A: $6F
    sub a                                         ; $449B: $97
    add a                                         ; $449C: $87
    ld a, b                                       ; $449D: $78
    ld hl, sp+$00                                 ; $449E: $F8 $00
    ldh a, [$FFE0]                                ; $44A0: $F0 $E0
    ldh [rP1], a                                  ; $44A2: $E0 $00
    nop                                           ; $44A4: $00
    nop                                           ; $44A5: $00
    nop                                           ; $44A6: $00
    nop                                           ; $44A7: $00
    nop                                           ; $44A8: $00
    nop                                           ; $44A9: $00
    nop                                           ; $44AA: $00
    nop                                           ; $44AB: $00
    nop                                           ; $44AC: $00
    nop                                           ; $44AD: $00
    nop                                           ; $44AE: $00
    nop                                           ; $44AF: $00
    nop                                           ; $44B0: $00
    nop                                           ; $44B1: $00
    nop                                           ; $44B2: $00
    nop                                           ; $44B3: $00
    nop                                           ; $44B4: $00
    nop                                           ; $44B5: $00
    add b                                         ; $44B6: $80
    nop                                           ; $44B7: $00
    add b                                         ; $44B8: $80
    nop                                           ; $44B9: $00
    add b                                         ; $44BA: $80
    nop                                           ; $44BB: $00
    nop                                           ; $44BC: $00
    nop                                           ; $44BD: $00
    nop                                           ; $44BE: $00
    nop                                           ; $44BF: $00
    rst RST_38                                    ; $44C0: $FF
    ldh [c], a                                    ; $44C1: $E2
    rst RST_38                                    ; $44C2: $FF
    ld bc, $F9FF                                  ; $44C3: $01 $FF $F9
    rst RST_38                                    ; $44C6: $FF
    jr nz, jr_012_453D                            ; $44C7: $20 $74

    sbc e                                         ; $44C9: $9B
    ld a, [$FB57]                                 ; $44CA: $FA $57 $FB
    ld h, a                                       ; $44CD: $67
    rst RST_38                                    ; $44CE: $FF
    rla                                           ; $44CF: $17
    cp a                                          ; $44D0: $BF
    rst RST_10                                    ; $44D1: $D7
    cp a                                          ; $44D2: $BF
    sub $BE                                       ; $44D3: $D6 $BE
    pop de                                        ; $44D5: $D1

jr_012_44D6:
    rst RST_38                                    ; $44D6: $FF
    nop                                           ; $44D7: $00
    ld a, a                                       ; $44D8: $7F
    db $DD                                        ; $44D9: $DD
    rst RST_38                                    ; $44DA: $FF
    dec e                                         ; $44DB: $1D
    ld a, a                                       ; $44DC: $7F
    db $DD                                        ; $44DD: $DD
    rst RST_38                                    ; $44DE: $FF
    dec e                                         ; $44DF: $1D
    nop                                           ; $44E0: $00
    nop                                           ; $44E1: $00
    add b                                         ; $44E2: $80
    nop                                           ; $44E3: $00
    add b                                         ; $44E4: $80
    nop                                           ; $44E5: $00
    ldh a, [rP1]                                  ; $44E6: $F0 $00
    ld [$B4F0], sp                                ; $44E8: $08 $F0 $B4
    ld hl, sp-$04                                 ; $44EB: $F8 $FC
    ret z                                         ; $44ED: $C8

    db $FC                                        ; $44EE: $FC
    add b                                         ; $44EF: $80
    sbc h                                         ; $44F0: $9C
    ld h, b                                       ; $44F1: $60
    jr @-$1E                                      ; $44F2: $18 $E0

    db $10                                        ; $44F4: $10
    ldh [$FFF0], a                                ; $44F5: $E0 $F0
    nop                                           ; $44F7: $00
    ldh a, [$FFE0]                                ; $44F8: $F0 $E0
    ld hl, sp-$10                                 ; $44FA: $F8 $F0
    ld hl, sp-$10                                 ; $44FC: $F8 $F0
    ld hl, sp-$10                                 ; $44FE: $F8 $F0
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
    ld a, $00                                     ; $451C: $3E $00
    rst RST_38                                    ; $451E: $FF
    ld [bc], a                                    ; $451F: $02
    nop                                           ; $4520: $00
    nop                                           ; $4521: $00
    nop                                           ; $4522: $00
    nop                                           ; $4523: $00
    nop                                           ; $4524: $00
    nop                                           ; $4525: $00
    nop                                           ; $4526: $00
    nop                                           ; $4527: $00
    ld bc, $0200                                  ; $4528: $01 $00 $02
    ld bc, $0103                                  ; $452B: $01 $03 $01
    ld bc, $0100                                  ; $452E: $01 $00 $01
    nop                                           ; $4531: $00
    dec c                                         ; $4532: $0D
    nop                                           ; $4533: $00
    ld [hl], a                                    ; $4534: $77
    ld [$6BBF], sp                                ; $4535: $08 $BF $6B
    rst RST_38                                    ; $4538: $FF
    dec bc                                        ; $4539: $0B
    cp a                                          ; $453A: $BF
    ld [hl], a                                    ; $453B: $77
    ld a, a                                       ; $453C: $7F

jr_012_453D:
    rlca                                          ; $453D: $07
    ld e, a                                       ; $453E: $5F
    scf                                           ; $453F: $37
    ld a, a                                       ; $4540: $7F
    nop                                           ; $4541: $00
    ld e, a                                       ; $4542: $5F
    ld l, $5F                                     ; $4543: $2E $5F
    jr nz, @+$01                                  ; $4545: $20 $FF

    rra                                           ; $4547: $1F
    rst RST_38                                    ; $4548: $FF
    ld h, d                                       ; $4549: $62
    rst RST_20                                    ; $454A: $E7
    add hl, de                                    ; $454B: $19
    ld e, a                                       ; $454C: $5F
    and h                                         ; $454D: $A4
    rst RST_28                                    ; $454E: $EF
    or [hl]                                       ; $454F: $B6
    rst RST_38                                    ; $4550: $FF
    nop                                           ; $4551: $00
    rst RST_30                                    ; $4552: $F7
    ld a, [hl-]                                   ; $4553: $3A
    or a                                          ; $4554: $B7
    jp c, $DBF7                                   ; $4555: $DA $F7 $DB

    rst RST_38                                    ; $4558: $FF
    nop                                           ; $4559: $00
    xor a                                         ; $455A: $AF
    ld e, e                                       ; $455B: $5B
    rst RST_38                                    ; $455C: $FF
    add e                                         ; $455D: $83
    rst RST_28                                    ; $455E: $EF
    sbc e                                         ; $455F: $9B
    ldh a, [rNR41]                                ; $4560: $F0 $20
    ldh a, [rNR41]                                ; $4562: $F0 $20
    ld hl, sp+$10                                 ; $4564: $F8 $10
    ld hl, sp-$70                                 ; $4566: $F8 $90
    db $FC                                        ; $4568: $FC
    nop                                           ; $4569: $00
    add d                                         ; $456A: $82
    ld a, h                                       ; $456B: $7C
    ld a, l                                       ; $456C: $7D
    cp $7F                                        ; $456D: $FE $7F
    add d                                         ; $456F: $82
    rst RST_38                                    ; $4570: $FF
    add d                                         ; $4571: $82
    rst RST_20                                    ; $4572: $E7
    sbc d                                         ; $4573: $9A
    jp nz, $C2BC                                  ; $4574: $C2 $BC $C2

    inc a                                         ; $4577: $3C
    cp $00                                        ; $4578: $FE $00
    cp $BC                                        ; $457A: $FE $BC
    rst RST_38                                    ; $457C: $FF
    cp [hl]                                       ; $457D: $BE
    rst RST_38                                    ; $457E: $FF
    cp [hl]                                       ; $457F: $BE
    ld a, a                                       ; $4580: $7F
    sbc $FE                                       ; $4581: $DE $FE
    ld bc, $0304                                  ; $4583: $01 $04 $03
    jr jr_012_458F                                ; $4586: $18 $07

    inc l                                         ; $4588: $2C
    dec de                                        ; $4589: $1B
    ccf                                           ; $458A: $3F
    jr jr_012_45AB                                ; $458B: $18 $1E

    rlca                                          ; $458D: $07
    rra                                           ; $458E: $1F

jr_012_458F:
    rrca                                          ; $458F: $0F
    rra                                           ; $4590: $1F
    rrca                                          ; $4591: $0F
    rrca                                          ; $4592: $0F
    rlca                                          ; $4593: $07
    rrca                                          ; $4594: $0F
    rlca                                          ; $4595: $07
    rra                                           ; $4596: $1F
    nop                                           ; $4597: $00
    daa                                           ; $4598: $27
    dec de                                        ; $4599: $1B
    ld b, e                                       ; $459A: $43
    dec a                                         ; $459B: $3D
    ld a, a                                       ; $459C: $7F
    nop                                           ; $459D: $00
    nop                                           ; $459E: $00
    nop                                           ; $459F: $00
    rst RST_38                                    ; $45A0: $FF
    adc [hl]                                      ; $45A1: $8E
    rst RST_18                                    ; $45A2: $DF
    ld l, $3E                                     ; $45A3: $2E $3E
    ret nz                                        ; $45A5: $C0

    ld [hl+], a                                   ; $45A6: $22
    call c, $9E61                                 ; $45A7: $DC $61 $9E
    sub c                                         ; $45AA: $91

jr_012_45AB:
    ld c, $4F                                     ; $45AB: $0E $4F
    add c                                         ; $45AD: $81
    ld d, a                                       ; $45AE: $57
    adc l                                         ; $45AF: $8D
    rst RST_18                                    ; $45B0: $DF
    adc l                                         ; $45B1: $8D
    rst RST_08                                    ; $45B2: $CF
    add c                                         ; $45B3: $81
    add c                                         ; $45B4: $81
    nop                                           ; $45B5: $00
    add b                                         ; $45B6: $80
    nop                                           ; $45B7: $00
    ret nz                                        ; $45B8: $C0

    add b                                         ; $45B9: $80
    ret nz                                        ; $45BA: $C0

    add b                                         ; $45BB: $80
    ret nz                                        ; $45BC: $C0

    nop                                           ; $45BD: $00
    nop                                           ; $45BE: $00
    nop                                           ; $45BF: $00
    db $FC                                        ; $45C0: $FC
    ld hl, sp-$08                                 ; $45C1: $F8 $F8
    ldh a, [$FFF0]                                ; $45C3: $F0 $F0
    nop                                           ; $45C5: $00
    nop                                           ; $45C6: $00
    nop                                           ; $45C7: $00
    ret nz                                        ; $45C8: $C0

    nop                                           ; $45C9: $00
    jr nz, @-$3E                                  ; $45CA: $20 $C0

    sub b                                         ; $45CC: $90
    ldh [$FFF8], a                                ; $45CD: $E0 $F8
    ldh a, [$FFFE]                                ; $45CF: $F0 $FE
    ldh a, [rIE]                                  ; $45D1: $F0 $FF
    or $FF                                        ; $45D3: $F6 $FF
    ld l, [hl]                                    ; $45D5: $6E
    ld a, a                                       ; $45D6: $7F
    ld e, $3E                                     ; $45D7: $1E $3E
    inc b                                         ; $45D9: $04
    inc h                                         ; $45DA: $24
    jr jr_012_4621                                ; $45DB: $18 $44

    jr c, jr_012_4657                             ; $45DD: $38 $78

    nop                                           ; $45DF: $00
    nop                                           ; $45E0: $00
    nop                                           ; $45E1: $00
    nop                                           ; $45E2: $00
    nop                                           ; $45E3: $00
    nop                                           ; $45E4: $00
    nop                                           ; $45E5: $00
    nop                                           ; $45E6: $00
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
    ld hl, sp+$00                                 ; $45FE: $F8 $00
    rlca                                          ; $4600: $07

Jump_012_4601:
    nop                                           ; $4601: $00
    dec b                                         ; $4602: $05
    ld [bc], a                                    ; $4603: $02
    dec b                                         ; $4604: $05
    ld [bc], a                                    ; $4605: $02
    rrca                                          ; $4606: $0F
    ld bc, $063F                                  ; $4607: $01 $3F $06
    ld b, [hl]                                    ; $460A: $46
    add hl, sp                                    ; $460B: $39
    xor l                                         ; $460C: $AD
    ld a, d                                       ; $460D: $7A
    cp $7B                                        ; $460E: $FE $7B
    rst RST_38                                    ; $4610: $FF
    ld h, b                                       ; $4611: $60
    ld [hl], a                                    ; $4612: $77
    jr z, jr_012_464B                             ; $4613: $28 $36

    dec bc                                        ; $4615: $0B
    rst RST_30                                    ; $4616: $F7
    dec bc                                        ; $4617: $0B
    rst RST_38                                    ; $4618: $FF
    ldh a, [$FFFC]                                ; $4619: $F0 $FC
    ei                                            ; $461B: $FB
    rst RST_38                                    ; $461C: $FF
    ld hl, sp-$01                                 ; $461D: $F8 $FF
    ei                                            ; $461F: $FB
    rst RST_38                                    ; $4620: $FF

jr_012_4621:
    ld [bc], a                                    ; $4621: $02
    rst RST_38                                    ; $4622: $FF
    ldh [c], a                                    ; $4623: $E2
    rst RST_38                                    ; $4624: $FF
    ld bc, $F9FF                                  ; $4625: $01 $FF $F9
    rst RST_38                                    ; $4628: $FF
    jr nz, jr_012_46A1                            ; $4629: $20 $76

    sbc c                                         ; $462B: $99
    db $FC                                        ; $462C: $FC
    ld d, e                                       ; $462D: $53
    db $FD                                        ; $462E: $FD
    ld h, e                                       ; $462F: $63
    rst RST_38                                    ; $4630: $FF
    dec bc                                        ; $4631: $0B
    rst RST_18                                    ; $4632: $DF
    db $EB                                        ; $4633: $EB
    rst RST_18                                    ; $4634: $DF
    ld l, e                                       ; $4635: $6B
    rst RST_18                                    ; $4636: $DF
    ld l, h                                       ; $4637: $6C
    rst RST_38                                    ; $4638: $FF
    nop                                           ; $4639: $00
    rst RST_28                                    ; $463A: $EF
    ld e, e                                       ; $463B: $5B
    rst RST_38                                    ; $463C: $FF
    inc bc                                        ; $463D: $03
    rst RST_28                                    ; $463E: $EF
    db $DB                                        ; $463F: $DB
    nop                                           ; $4640: $00
    nop                                           ; $4641: $00
    nop                                           ; $4642: $00
    nop                                           ; $4643: $00
    add b                                         ; $4644: $80
    nop                                           ; $4645: $00
    add b                                         ; $4646: $80
    nop                                           ; $4647: $00
    ld hl, sp+$00                                 ; $4648: $F8 $00
    inc b                                         ; $464A: $04

jr_012_464B:
    ld hl, sp-$56                                 ; $464B: $F8 $AA
    db $FC                                        ; $464D: $FC
    cp $FC                                        ; $464E: $FE $FC
    db $FC                                        ; $4650: $FC
    ldh a, [$FFF0]                                ; $4651: $F0 $F0
    ret nz                                        ; $4653: $C0

    ret z                                         ; $4654: $C8

    or b                                          ; $4655: $B0
    adc b                                         ; $4656: $88

jr_012_4657:
    ld [hl], b                                    ; $4657: $70
    db $FC                                        ; $4658: $FC
    nop                                           ; $4659: $00
    cp $BC                                        ; $465A: $FE $BC
    rst RST_38                                    ; $465C: $FF
    cp [hl]                                       ; $465D: $BE
    rst RST_38                                    ; $465E: $FF
    cp [hl]                                       ; $465F: $BE
    rst RST_38                                    ; $4660: $FF
    ldh a, [c]                                    ; $4661: $F2
    ldh a, [c]                                    ; $4662: $F2
    ld bc, $0304                                  ; $4663: $01 $04 $03
    inc e                                         ; $4666: $1C
    inc bc                                        ; $4667: $03
    inc l                                         ; $4668: $2C
    dec de                                        ; $4669: $1B
    ccf                                           ; $466A: $3F
    jr @+$20                                      ; $466B: $18 $1E

    rlca                                          ; $466D: $07
    rra                                           ; $466E: $1F
    rrca                                          ; $466F: $0F
    rra                                           ; $4670: $1F
    rrca                                          ; $4671: $0F
    rra                                           ; $4672: $1F
    rrca                                          ; $4673: $0F
    rrca                                          ; $4674: $0F
    rlca                                          ; $4675: $07
    rrca                                          ; $4676: $0F
    rlca                                          ; $4677: $07
    ccf                                           ; $4678: $3F
    nop                                           ; $4679: $00
    ld c, a                                       ; $467A: $4F
    scf                                           ; $467B: $37

jr_012_467C:
    add a                                         ; $467C: $87
    ld a, e                                       ; $467D: $7B
    rst RST_38                                    ; $467E: $FF
    nop                                           ; $467F: $00
    rst RST_38                                    ; $4680: $FF
    inc bc                                        ; $4681: $03
    scf                                           ; $4682: $37
    sra a                                         ; $4683: $CB $2F
    ret nc                                        ; $4685: $D0

    inc h                                         ; $4686: $24
    ret c                                         ; $4687: $D8

    ld b, a                                       ; $4688: $47
    cp b                                          ; $4689: $B8
    add sp, $17                                   ; $468A: $E8 $17
    ld e, [hl]                                    ; $468C: $5E
    xor a                                         ; $468D: $AF
    ld a, a                                       ; $468E: $7F
    xor a                                         ; $468F: $AF
    rst RST_38                                    ; $4690: $FF
    sbc a                                         ; $4691: $9F
    rst RST_18                                    ; $4692: $DF
    add a                                         ; $4693: $87
    add a                                         ; $4694: $87
    nop                                           ; $4695: $00
    add c                                         ; $4696: $81
    nop                                           ; $4697: $00
    inc bc                                        ; $4698: $03
    nop                                           ; $4699: $00
    add h                                         ; $469A: $84
    inc bc                                        ; $469B: $03
    add a                                         ; $469C: $87
    nop                                           ; $469D: $00
    add b                                         ; $469E: $80
    nop                                           ; $469F: $00
    rst RST_38                                    ; $46A0: $FF

jr_012_46A1:
    cp [hl]                                       ; $46A1: $BE
    cp $BC                                        ; $46A2: $FE $BC
    cp h                                          ; $46A4: $BC
    nop                                           ; $46A5: $00
    nop                                           ; $46A6: $00
    nop                                           ; $46A7: $00
    nop                                           ; $46A8: $00
    nop                                           ; $46A9: $00
    add b                                         ; $46AA: $80
    nop                                           ; $46AB: $00
    ld b, b                                       ; $46AC: $40
    add b                                         ; $46AD: $80
    ldh [$FFC0], a                                ; $46AE: $E0 $C0
    ld hl, sp-$40                                 ; $46B0: $F8 $C0
    db $FC                                        ; $46B2: $FC
    cp b                                          ; $46B3: $B8
    db $FC                                        ; $46B4: $FC
    ld a, b                                       ; $46B5: $78
    ld hl, sp+$70                                 ; $46B6: $F8 $70
    ld a, b                                       ; $46B8: $78
    or b                                          ; $46B9: $B0
    jr nc, jr_012_467C                            ; $46BA: $30 $C0

    ldh [rP1], a                                  ; $46BC: $E0 $00
    nop                                           ; $46BE: $00
    nop                                           ; $46BF: $00
    nop                                           ; $46C0: $00
    nop                                           ; $46C1: $00
    nop                                           ; $46C2: $00
    nop                                           ; $46C3: $00
    inc bc                                        ; $46C4: $03
    nop                                           ; $46C5: $00
    dec e                                         ; $46C6: $1D
    ld [bc], a                                    ; $46C7: $02
    cpl                                           ; $46C8: $2F
    ld a, [de]                                    ; $46C9: $1A
    ccf                                           ; $46CA: $3F
    ld [bc], a                                    ; $46CB: $02
    cpl                                           ; $46CC: $2F
    dec e                                         ; $46CD: $1D
    rra                                           ; $46CE: $1F
    ld bc, $0D17                                  ; $46CF: $01 $17 $0D
    rrca                                          ; $46D2: $0F
    nop                                           ; $46D3: $00
    nop                                           ; $46D4: $00
    nop                                           ; $46D5: $00
    nop                                           ; $46D6: $00
    nop                                           ; $46D7: $00
    nop                                           ; $46D8: $00
    nop                                           ; $46D9: $00
    nop                                           ; $46DA: $00
    nop                                           ; $46DB: $00
    nop                                           ; $46DC: $00
    nop                                           ; $46DD: $00
    nop                                           ; $46DE: $00
    nop                                           ; $46DF: $00
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
    nop                                           ; $46F4: $00
    nop                                           ; $46F5: $00
    nop                                           ; $46F6: $00
    nop                                           ; $46F7: $00
    nop                                           ; $46F8: $00
    nop                                           ; $46F9: $00
    nop                                           ; $46FA: $00
    nop                                           ; $46FB: $00
    nop                                           ; $46FC: $00
    nop                                           ; $46FD: $00
    ld a, $00                                     ; $46FE: $3E $00
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
    ld bc, $3F00                                  ; $4710: $01 $00 $3F
    nop                                           ; $4713: $00
    ld b, c                                       ; $4714: $41
    ccf                                           ; $4715: $3F
    xor e                                         ; $4716: $AB
    ld a, a                                       ; $4717: $7F
    rst RST_38                                    ; $4718: $FF
    ld a, a                                       ; $4719: $7F
    rst RST_38                                    ; $471A: $FF
    ld a, h                                       ; $471B: $7C
    ld a, l                                       ; $471C: $7D
    dec de                                        ; $471D: $1B
    dec e                                         ; $471E: $1D
    ld a, [bc]                                    ; $471F: $0A
    nop                                           ; $4720: $00
    nop                                           ; $4721: $00
    nop                                           ; $4722: $00
    nop                                           ; $4723: $00
    nop                                           ; $4724: $00
    nop                                           ; $4725: $00
    nop                                           ; $4726: $00
    nop                                           ; $4727: $00
    rlca                                          ; $4728: $07
    nop                                           ; $4729: $00
    rst RST_38                                    ; $472A: $FF
    nop                                           ; $472B: $00
    cp a                                          ; $472C: $BF
    ld e, [hl]                                    ; $472D: $5E
    cp a                                          ; $472E: $BF
    ld b, b                                       ; $472F: $40
    rst RST_38                                    ; $4730: $FF
    ccf                                           ; $4731: $3F
    rst RST_38                                    ; $4732: $FF
    call nz, $33CD                                ; $4733: $C4 $CD $33
    cp a                                          ; $4736: $BF
    ld c, e                                       ; $4737: $4B
    rst RST_18                                    ; $4738: $DF
    ld l, b                                       ; $4739: $68
    rst RST_38                                    ; $473A: $FF
    nop                                           ; $473B: $00
    rst RST_30                                    ; $473C: $F7
    ld a, [hl-]                                   ; $473D: $3A
    ld [hl], a                                    ; $473E: $77
    jp c, RST_00                                  ; $473F: $DA $00 $00

    nop                                           ; $4742: $00
    nop                                           ; $4743: $00
    nop                                           ; $4744: $00
    nop                                           ; $4745: $00
    nop                                           ; $4746: $00
    nop                                           ; $4747: $00
    ret nz                                        ; $4748: $C0

    nop                                           ; $4749: $00
    ldh [rLCDC], a                                ; $474A: $E0 $40
    ldh a, [rNR41]                                ; $474C: $F0 $20
    ldh a, [rNR41]                                ; $474E: $F0 $20
    ld hl, sp+$30                                 ; $4750: $F8 $30
    rst RST_38                                    ; $4752: $FF
    nop                                           ; $4753: $00
    add c                                         ; $4754: $81
    ld a, a                                       ; $4755: $7F
    xor d                                         ; $4756: $AA
    ld a, a                                       ; $4757: $7F
    rst RST_38                                    ; $4758: $FF
    rst RST_38                                    ; $4759: $FF
    rst RST_38                                    ; $475A: $FF
    rst RST_38                                    ; $475B: $FF
    rst RST_38                                    ; $475C: $FF
    db $FC                                        ; $475D: $FC
    db $FC                                        ; $475E: $FC
    ld a, b                                       ; $475F: $78
    nop                                           ; $4760: $00
    nop                                           ; $4761: $00
    nop                                           ; $4762: $00
    nop                                           ; $4763: $00
    nop                                           ; $4764: $00
    nop                                           ; $4765: $00
    nop                                           ; $4766: $00
    nop                                           ; $4767: $00
    nop                                           ; $4768: $00
    nop                                           ; $4769: $00
    nop                                           ; $476A: $00
    nop                                           ; $476B: $00
    nop                                           ; $476C: $00
    nop                                           ; $476D: $00
    nop                                           ; $476E: $00
    nop                                           ; $476F: $00
    nop                                           ; $4770: $00
    nop                                           ; $4771: $00
    nop                                           ; $4772: $00
    nop                                           ; $4773: $00
    nop                                           ; $4774: $00
    nop                                           ; $4775: $00
    add b                                         ; $4776: $80
    nop                                           ; $4777: $00
    ret nz                                        ; $4778: $C0

    add b                                         ; $4779: $80
    ret nz                                        ; $477A: $C0

    add b                                         ; $477B: $80
    ret nz                                        ; $477C: $C0

    add b                                         ; $477D: $80
    add b                                         ; $477E: $80
    nop                                           ; $477F: $00
    ld de, $6E00                                  ; $4780: $11 $00 $6E
    ld de, $6AB7                                  ; $4783: $11 $B7 $6A
    rst RST_38                                    ; $4786: $FF
    ld a, [bc]                                    ; $4787: $0A
    cp [hl]                                       ; $4788: $BE
    ld [hl], l                                    ; $4789: $75
    ld a, a                                       ; $478A: $7F
    dec b                                         ; $478B: $05
    ld e, a                                       ; $478C: $5F
    inc [hl]                                      ; $478D: $34
    ccf                                           ; $478E: $3F
    dec c                                         ; $478F: $0D
    rrca                                          ; $4790: $0F
    ld bc, $0001                                  ; $4791: $01 $01 $00
    ld bc, $0300                                  ; $4794: $01 $00 $03
    nop                                           ; $4797: $00
    inc b                                         ; $4798: $04
    inc bc                                        ; $4799: $03
    ld [$0F07], sp                                ; $479A: $08 $07 $0F
    nop                                           ; $479D: $00
    nop                                           ; $479E: $00
    nop                                           ; $479F: $00
    cp [hl]                                       ; $47A0: $BE
    ld e, e                                       ; $47A1: $5B
    rst RST_38                                    ; $47A2: $FF
    ld h, $63                                     ; $47A3: $26 $63
    sbc l                                         ; $47A5: $9D
    rst RST_38                                    ; $47A6: $FF
    inc bc                                        ; $47A7: $03
    rst RST_00                                    ; $47A8: $C7
    cp b                                          ; $47A9: $B8
    ei                                            ; $47AA: $FB
    add l                                         ; $47AB: $85
    push hl                                       ; $47AC: $E5
    ld a, d                                       ; $47AD: $7A
    push af                                       ; $47AE: $F5
    ld a, [$F8F7]                                 ; $47AF: $FA $F7 $F8
    ld hl, sp-$10                                 ; $47B2: $F8 $F0
    ld hl, sp-$10                                 ; $47B4: $F8 $F0
    ldh a, [rP1]                                  ; $47B6: $F0 $00
    ld hl, sp+$70                                 ; $47B8: $F8 $70
    ld a, b                                       ; $47BA: $78
    or b                                          ; $47BB: $B0
    ld hl, sp+$00                                 ; $47BC: $F8 $00
    nop                                           ; $47BE: $00
    nop                                           ; $47BF: $00
    rst RST_38                                    ; $47C0: $FF
    ld b, b                                       ; $47C1: $40
    db $FC                                        ; $47C2: $FC
    db $DB                                        ; $47C3: $DB
    db $FC                                        ; $47C4: $FC
    cp e                                          ; $47C5: $BB
    ei                                            ; $47C6: $FB
    ld [hl], b                                    ; $47C7: $70
    ld sp, hl                                     ; $47C8: $F9
    nop                                           ; $47C9: $00
    ld sp, hl                                     ; $47CA: $F9
    ldh [$FFE5], a                                ; $47CB: $E0 $E5
    ret c                                         ; $47CD: $D8

    jp nz, $C2BC                                  ; $47CE: $C2 $BC $C2

    inc a                                         ; $47D1: $3C
    pop hl                                        ; $47D2: $E1
    ld e, [hl]                                    ; $47D3: $5E
    pop hl                                        ; $47D4: $E1
    ld e, [hl]                                    ; $47D5: $5E
    di                                            ; $47D6: $F3
    inc l                                         ; $47D7: $2C
    db $FD                                        ; $47D8: $FD
    inc sp                                        ; $47D9: $33
    cp a                                          ; $47DA: $BF
    ld e, e                                       ; $47DB: $5B
    sbc a                                         ; $47DC: $9F
    ld l, h                                       ; $47DD: $6C
    ld l, [hl]                                    ; $47DE: $6E
    nop                                           ; $47DF: $00
    ld d, b                                       ; $47E0: $50
    add b                                         ; $47E1: $80
    ld l, h                                       ; $47E2: $6C
    sub b                                         ; $47E3: $90
    jp c, $FE2C                                   ; $47E4: $DA $2C $FE

    and b                                         ; $47E7: $A0
    ld a, [$FCDC]                                 ; $47E8: $FA $DC $FC
    ret nz                                        ; $47EB: $C0

    db $F4                                        ; $47EC: $F4
    ret c                                         ; $47ED: $D8

    db $FC                                        ; $47EE: $FC
    ld h, b                                       ; $47EF: $60
    ld a, b                                       ; $47F0: $78
    nop                                           ; $47F1: $00
    nop                                           ; $47F2: $00
    nop                                           ; $47F3: $00
    nop                                           ; $47F4: $00
    nop                                           ; $47F5: $00
    nop                                           ; $47F6: $00
    nop                                           ; $47F7: $00
    add b                                         ; $47F8: $80
    nop                                           ; $47F9: $00
    add b                                         ; $47FA: $80
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
    rlca                                          ; $4810: $07
    nop                                           ; $4811: $00
    ld [$1507], sp                                ; $4812: $08 $07 $15
    rrca                                          ; $4815: $0F
    rra                                           ; $4816: $1F
    rrca                                          ; $4817: $0F
    rra                                           ; $4818: $1F
    rrca                                          ; $4819: $0F
    rrca                                          ; $481A: $0F
    inc bc                                        ; $481B: $03
    inc hl                                        ; $481C: $23
    ld bc, $20D3                                  ; $481D: $01 $D3 $20
    nop                                           ; $4820: $00
    nop                                           ; $4821: $00
    nop                                           ; $4822: $00
    nop                                           ; $4823: $00
    nop                                           ; $4824: $00
    nop                                           ; $4825: $00
    nop                                           ; $4826: $00
    nop                                           ; $4827: $00
    rra                                           ; $4828: $1F
    nop                                           ; $4829: $00
    rla                                           ; $482A: $17
    dec bc                                        ; $482B: $0B
    rla                                           ; $482C: $17
    ld [$073F], sp                                ; $482D: $08 $3F $07
    rst RST_38                                    ; $4830: $FF
    jr jr_012_486C                                ; $4831: $18 $39

    and $77                                       ; $4833: $E6 $77
    jp hl                                         ; $4835: $E9


    ei                                            ; $4836: $FB
    db $ED                                        ; $4837: $ED
    rst RST_38                                    ; $4838: $FF
    add b                                         ; $4839: $80
    cp [hl]                                       ; $483A: $BE
    ld h, a                                       ; $483B: $67
    xor [hl]                                      ; $483C: $AE
    ld e, e                                       ; $483D: $5B
    cp [hl]                                       ; $483E: $BE
    ld e, e                                       ; $483F: $5B
    nop                                           ; $4840: $00
    nop                                           ; $4841: $00
    nop                                           ; $4842: $00
    nop                                           ; $4843: $00
    nop                                           ; $4844: $00
    nop                                           ; $4845: $00
    ld hl, sp+$00                                 ; $4846: $F8 $00
    db $FC                                        ; $4848: $FC
    ld [$C4FE], sp                                ; $4849: $08 $FE $C4
    cp $04                                        ; $484C: $FE $04
    rst RST_38                                    ; $484E: $FF
    and $FF                                       ; $484F: $E6 $FF
    add b                                         ; $4851: $80
    or b                                          ; $4852: $B0
    ld l, a                                       ; $4853: $6F

jr_012_4854:
    push af                                       ; $4854: $F5
    ld l, a                                       ; $4855: $6F
    rst RST_38                                    ; $4856: $FF
    rra                                           ; $4857: $1F
    rst RST_38                                    ; $4858: $FF
    rra                                           ; $4859: $1F
    rst RST_38                                    ; $485A: $FF
    ld e, a                                       ; $485B: $5F
    rst RST_38                                    ; $485C: $FF
    ld c, a                                       ; $485D: $4F
    rst RST_38                                    ; $485E: $FF
    ld b, b                                       ; $485F: $40
    nop                                           ; $4860: $00
    nop                                           ; $4861: $00
    nop                                           ; $4862: $00
    nop                                           ; $4863: $00
    nop                                           ; $4864: $00
    nop                                           ; $4865: $00
    nop                                           ; $4866: $00
    nop                                           ; $4867: $00
    nop                                           ; $4868: $00
    nop                                           ; $4869: $00
    nop                                           ; $486A: $00
    nop                                           ; $486B: $00

jr_012_486C:
    nop                                           ; $486C: $00
    nop                                           ; $486D: $00
    nop                                           ; $486E: $00
    nop                                           ; $486F: $00
    ldh [rP1], a                                  ; $4870: $E0 $00
    jr nc, jr_012_4854                            ; $4872: $30 $E0

    ld e, b                                       ; $4874: $58
    ldh a, [$FFF8]                                ; $4875: $F0 $F8
    ldh a, [$FFF8]                                ; $4877: $F0 $F8
    ldh a, [$FFF0]                                ; $4879: $F0 $F0
    add b                                         ; $487B: $80
    sub b                                         ; $487C: $90
    nop                                           ; $487D: $00
    ld l, h                                       ; $487E: $6C
    sub b                                         ; $487F: $90
    or [hl]                                       ; $4880: $B6
    ld l, c                                       ; $4881: $69
    rst RST_38                                    ; $4882: $FF
    ld a, [bc]                                    ; $4883: $0A
    cp a                                          ; $4884: $BF
    ld [hl], a                                    ; $4885: $77
    rst RST_38                                    ; $4886: $FF
    rlca                                          ; $4887: $07
    cp a                                          ; $4888: $BF
    ld [hl], a                                    ; $4889: $77
    ld a, a                                       ; $488A: $7F
    rrca                                          ; $488B: $0F
    ccf                                           ; $488C: $3F
    ld e, $1E                                     ; $488D: $1E $1E
    nop                                           ; $488F: $00
    nop                                           ; $4890: $00
    nop                                           ; $4891: $00
    nop                                           ; $4892: $00

jr_012_4893:
    nop                                           ; $4893: $00
    nop                                           ; $4894: $00
    nop                                           ; $4895: $00
    nop                                           ; $4896: $00
    nop                                           ; $4897: $00
    nop                                           ; $4898: $00
    nop                                           ; $4899: $00
    nop                                           ; $489A: $00
    nop                                           ; $489B: $00
    nop                                           ; $489C: $00
    nop                                           ; $489D: $00
    nop                                           ; $489E: $00
    nop                                           ; $489F: $00
    ld a, a                                       ; $48A0: $7F
    sub e                                         ; $48A1: $93
    ld sp, $CFCE                                  ; $48A2: $31 $CE $CF
    ld bc, $008F                                  ; $48A5: $01 $8F $00
    adc a                                         ; $48A8: $8F
    rlca                                          ; $48A9: $07
    adc a                                         ; $48AA: $8F
    inc bc                                        ; $48AB: $03
    inc de                                        ; $48AC: $13
    dec c                                         ; $48AD: $0D
    ld de, $110E                                  ; $48AE: $11 $0E $11
    ld c, $0D                                     ; $48B1: $0E $0D
    ld [bc], a                                    ; $48B3: $02
    ld d, $0D                                     ; $48B4: $16 $0D
    rra                                           ; $48B6: $1F
    inc c                                         ; $48B7: $0C
    rrca                                          ; $48B8: $0F
    inc bc                                        ; $48B9: $03
    rrca                                          ; $48BA: $0F
    rlca                                          ; $48BB: $07
    rrca                                          ; $48BC: $0F
    rlca                                          ; $48BD: $07
    rlca                                          ; $48BE: $07
    inc bc                                        ; $48BF: $03
    cp $6D                                        ; $48C0: $FE $6D
    cp $DD                                        ; $48C2: $FE $DD
    db $FD                                        ; $48C4: $FD
    cp b                                          ; $48C5: $B8
    ld sp, hl                                     ; $48C6: $F9
    nop                                           ; $48C7: $00
    pop af                                        ; $48C8: $F1
    ldh [$FFF1], a                                ; $48C9: $E0 $F1
    add b                                         ; $48CB: $80
    adc b                                         ; $48CC: $88
    ld [hl], b                                    ; $48CD: $70
    ld [$08F0], sp                                ; $48CE: $08 $F0 $08
    ldh a, [rBCPS]                                ; $48D1: $F0 $68
    sub b                                         ; $48D3: $90
    cp h                                          ; $48D4: $BC
    ld h, b                                       ; $48D5: $60
    ldh a, [c]                                    ; $48D6: $F2
    ld l, h                                       ; $48D7: $6C
    ld a, [$FA1C]                                 ; $48D8: $FA $1C $FA
    ld a, h                                       ; $48DB: $7C
    cp $7C                                        ; $48DC: $FE $7C
    cp $BC                                        ; $48DE: $FE $BC
    ld l, l                                       ; $48E0: $6D
    sub [hl]                                      ; $48E1: $96
    rst RST_38                                    ; $48E2: $FF
    ld d, b                                       ; $48E3: $50
    db $FD                                        ; $48E4: $FD
    xor $FF                                       ; $48E5: $EE $FF
    ldh [$FFFD], a                                ; $48E7: $E0 $FD
    xor $FE                                       ; $48E9: $EE $FE
    ldh a, [$FFFC]                                ; $48EB: $F0 $FC
    ld a, b                                       ; $48ED: $78
    ld a, b                                       ; $48EE: $78
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
    rst RST_38                                    ; $4900: $FF
    ld [hl], a                                    ; $4901: $77
    ld a, a                                       ; $4902: $7F
    nop                                           ; $4903: $00
    ld a, a                                       ; $4904: $7F
    scf                                           ; $4905: $37
    ld a, a                                       ; $4906: $7F
    rlca                                          ; $4907: $07
    ld c, a                                       ; $4908: $4F
    jr nc, jr_012_4893                            ; $4909: $30 $88

    ld [hl], a                                    ; $490B: $77
    adc b                                         ; $490C: $88
    ld [hl], a                                    ; $490D: $77
    ld sp, hl                                     ; $490E: $F9
    ld b, $06                                     ; $490F: $06 $06
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
    add b                                         ; $4920: $80
    nop                                           ; $4921: $00
    add b                                         ; $4922: $80
    nop                                           ; $4923: $00
    ret nz                                        ; $4924: $C0

    add b                                         ; $4925: $80
    ret nz                                        ; $4926: $C0

    add b                                         ; $4927: $80
    ret nz                                        ; $4928: $C0

    add b                                         ; $4929: $80
    add b                                         ; $492A: $80
    nop                                           ; $492B: $00
    add b                                         ; $492C: $80
    nop                                           ; $492D: $00
    nop                                           ; $492E: $00
    nop                                           ; $492F: $00
    nop                                           ; $4930: $00
    nop                                           ; $4931: $00
    nop                                           ; $4932: $00
    nop                                           ; $4933: $00
    nop                                           ; $4934: $00
    nop                                           ; $4935: $00
    nop                                           ; $4936: $00
    nop                                           ; $4937: $00
    nop                                           ; $4938: $00
    nop                                           ; $4939: $00
    nop                                           ; $493A: $00
    nop                                           ; $493B: $00
    nop                                           ; $493C: $00
    nop                                           ; $493D: $00
    nop                                           ; $493E: $00
    nop                                           ; $493F: $00
    ld de, $6E00                                  ; $4940: $11 $00 $6E
    ld de, $6AB7                                  ; $4943: $11 $B7 $6A
    rst RST_38                                    ; $4946: $FF
    ld a, [bc]                                    ; $4947: $0A
    cp [hl]                                       ; $4948: $BE
    ld [hl], l                                    ; $4949: $75
    ld a, a                                       ; $494A: $7F
    dec b                                         ; $494B: $05
    ld e, a                                       ; $494C: $5F
    inc [hl]                                      ; $494D: $34
    ccf                                           ; $494E: $3F
    dec c                                         ; $494F: $0D
    rrca                                          ; $4950: $0F
    ld bc, $0001                                  ; $4951: $01 $01 $00
    nop                                           ; $4954: $00
    nop                                           ; $4955: $00
    nop                                           ; $4956: $00
    nop                                           ; $4957: $00
    nop                                           ; $4958: $00
    nop                                           ; $4959: $00
    nop                                           ; $495A: $00
    nop                                           ; $495B: $00
    nop                                           ; $495C: $00
    nop                                           ; $495D: $00
    ld bc, $BE00                                  ; $495E: $01 $00 $BE
    ld e, e                                       ; $4961: $5B
    rst RST_38                                    ; $4962: $FF
    ld h, $63                                     ; $4963: $26 $63
    sbc l                                         ; $4965: $9D
    rst RST_38                                    ; $4966: $FF
    inc bc                                        ; $4967: $03
    rst RST_00                                    ; $4968: $C7
    cp b                                          ; $4969: $B8
    ei                                            ; $496A: $FB
    add l                                         ; $496B: $85
    push hl                                       ; $496C: $E5
    ld a, d                                       ; $496D: $7A
    push af                                       ; $496E: $F5
    ld a, [$F8F7]                                 ; $496F: $FA $F7 $F8
    ld hl, sp-$10                                 ; $4972: $F8 $F0
    ld hl, sp+$70                                 ; $4974: $F8 $70
    db $FC                                        ; $4976: $FC
    ld [$78FC], sp                                ; $4977: $08 $FC $78
    db $FC                                        ; $497A: $FC
    ld a, b                                       ; $497B: $78
    ld hl, sp+$10                                 ; $497C: $F8 $10
    jr @-$1E                                      ; $497E: $18 $E0

    rst RST_38                                    ; $4980: $FF
    ld b, b                                       ; $4981: $40
    db $FC                                        ; $4982: $FC
    db $DB                                        ; $4983: $DB
    db $FC                                        ; $4984: $FC
    cp e                                          ; $4985: $BB
    ei                                            ; $4986: $FB
    ld [hl], b                                    ; $4987: $70
    ld sp, hl                                     ; $4988: $F9
    nop                                           ; $4989: $00
    ld sp, hl                                     ; $498A: $F9
    ldh [$FFE5], a                                ; $498B: $E0 $E5
    ret c                                         ; $498D: $D8

    jp nz, $C2BC                                  ; $498E: $C2 $BC $C2

    inc a                                         ; $4991: $3C
    pop hl                                        ; $4992: $E1
    ld e, [hl]                                    ; $4993: $5E
    pop hl                                        ; $4994: $E1
    ld e, [hl]                                    ; $4995: $5E
    di                                            ; $4996: $F3
    inc l                                         ; $4997: $2C
    db $FD                                        ; $4998: $FD
    inc sp                                        ; $4999: $33
    cp a                                          ; $499A: $BF
    ld e, e                                       ; $499B: $5B
    sbc a                                         ; $499C: $9F
    ld l, h                                       ; $499D: $6C
    ld l, [hl]                                    ; $499E: $6E
    nop                                           ; $499F: $00
    ld d, b                                       ; $49A0: $50
    add b                                         ; $49A1: $80
    ld l, h                                       ; $49A2: $6C
    sub b                                         ; $49A3: $90
    jp c, $FE2C                                   ; $49A4: $DA $2C $FE

    and b                                         ; $49A7: $A0
    ld a, [$FCDC]                                 ; $49A8: $FA $DC $FC
    ret nz                                        ; $49AB: $C0

    db $F4                                        ; $49AC: $F4
    ret c                                         ; $49AD: $D8

    db $FC                                        ; $49AE: $FC
    ld h, b                                       ; $49AF: $60
    ld a, b                                       ; $49B0: $78
    nop                                           ; $49B1: $00
    nop                                           ; $49B2: $00
    nop                                           ; $49B3: $00
    nop                                           ; $49B4: $00
    nop                                           ; $49B5: $00
    nop                                           ; $49B6: $00
    nop                                           ; $49B7: $00
    add b                                         ; $49B8: $80
    nop                                           ; $49B9: $00
    add b                                         ; $49BA: $80
    nop                                           ; $49BB: $00
    nop                                           ; $49BC: $00
    nop                                           ; $49BD: $00
    nop                                           ; $49BE: $00
    nop                                           ; $49BF: $00
    ld b, h                                       ; $49C0: $44
    jr c, jr_012_4A3B                             ; $49C1: $38 $78

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
    nop                                           ; $49E0: $00
    nop                                           ; $49E1: $00
    nop                                           ; $49E2: $00
    nop                                           ; $49E3: $00
    nop                                           ; $49E4: $00
    nop                                           ; $49E5: $00
    nop                                           ; $49E6: $00
    nop                                           ; $49E7: $00
    ld a, [bc]                                    ; $49E8: $0A
    nop                                           ; $49E9: $00
    dec d                                         ; $49EA: $15
    ld a, [bc]                                    ; $49EB: $0A
    ccf                                           ; $49EC: $3F
    ld a, [bc]                                    ; $49ED: $0A
    ld e, a                                       ; $49EE: $5F
    jr z, jr_012_4A6F                             ; $49EF: $28 $7E

    ld hl, $067D                                  ; $49F1: $21 $7D $06
    rst RST_38                                    ; $49F4: $FF
    ld h, b                                       ; $49F5: $60
    rst RST_38                                    ; $49F6: $FF
    ld a, [hl]                                    ; $49F7: $7E
    rst RST_38                                    ; $49F8: $FF
    ld a, [hl]                                    ; $49F9: $7E
    cp $7D                                        ; $49FA: $FE $7D
    ld a, a                                       ; $49FC: $7F
    jr c, jr_012_4A37                             ; $49FD: $38 $38

    nop                                           ; $49FF: $00
    nop                                           ; $4A00: $00
    nop                                           ; $4A01: $00
    rrca                                          ; $4A02: $0F
    nop                                           ; $4A03: $00
    dec bc                                        ; $4A04: $0B
    dec b                                         ; $4A05: $05
    dec bc                                        ; $4A06: $0B
    inc b                                         ; $4A07: $04
    rra                                           ; $4A08: $1F
    inc bc                                        ; $4A09: $03
    rst RST_38                                    ; $4A0A: $FF
    inc c                                         ; $4A0B: $0C
    inc e                                         ; $4A0C: $1C
    di                                            ; $4A0D: $F3
    cp e                                          ; $4A0E: $BB
    ld [hl], h                                    ; $4A0F: $74
    db $FD                                        ; $4A10: $FD
    halt                                          ; $4A11: $76
    rst RST_38                                    ; $4A12: $FF
    ret nz                                        ; $4A13: $C0

    rst RST_18                                    ; $4A14: $DF
    or e                                          ; $4A15: $B3
    rst RST_10                                    ; $4A16: $D7
    dec l                                         ; $4A17: $2D
    ld e, a                                       ; $4A18: $5F
    xor l                                         ; $4A19: $AD

jr_012_4A1A:
    rst RST_38                                    ; $4A1A: $FF
    inc de                                        ; $4A1B: $13
    ld sp, $0F0E                                  ; $4A1C: $31 $0E $0F
    ld bc, $007C                                  ; $4A1F: $01 $7C $00
    cp $04                                        ; $4A22: $FE $04
    rst RST_38                                    ; $4A24: $FF
    ldh [c], a                                    ; $4A25: $E2
    rst RST_38                                    ; $4A26: $FF
    ld [bc], a                                    ; $4A27: $02
    rst RST_38                                    ; $4A28: $FF
    di                                            ; $4A29: $F3
    rst RST_38                                    ; $4A2A: $FF
    ld b, b                                       ; $4A2B: $40
    ret c                                         ; $4A2C: $D8

    scf                                           ; $4A2D: $37
    ld a, [$FFB7]                                 ; $4A2E: $FA $B7 $FF
    adc a                                         ; $4A31: $8F
    rst RST_38                                    ; $4A32: $FF
    rrca                                          ; $4A33: $0F
    ld a, a                                       ; $4A34: $7F
    xor a                                         ; $4A35: $AF
    ld a, a                                       ; $4A36: $7F

jr_012_4A37:
    and a                                         ; $4A37: $A7
    ld a, a                                       ; $4A38: $7F
    and b                                         ; $4A39: $A0
    rst RST_28                                    ; $4A3A: $EF

jr_012_4A3B:
    ld e, d                                       ; $4A3B: $5A
    rst RST_38                                    ; $4A3C: $FF
    jp $ADF7                                      ; $4A3D: $C3 $F7 $AD


    nop                                           ; $4A40: $00
    nop                                           ; $4A41: $00
    nop                                           ; $4A42: $00
    nop                                           ; $4A43: $00
    nop                                           ; $4A44: $00
    nop                                           ; $4A45: $00
    nop                                           ; $4A46: $00
    nop                                           ; $4A47: $00
    add b                                         ; $4A48: $80
    nop                                           ; $4A49: $00
    ldh a, [rP1]                                  ; $4A4A: $F0 $00
    jr @-$0E                                      ; $4A4C: $18 $F0

    xor h                                         ; $4A4E: $AC
    ld hl, sp-$04                                 ; $4A4F: $F8 $FC
    ld hl, sp-$04                                 ; $4A51: $F8 $FC
    ld hl, sp-$08                                 ; $4A53: $F8 $F8
    ret nz                                        ; $4A55: $C0

    ret nz                                        ; $4A56: $C0

jr_012_4A57:
    nop                                           ; $4A57: $00
    jr nz, jr_012_4A1A                            ; $4A58: $20 $C0

    ldh a, [rP1]                                  ; $4A5A: $F0 $00
    ld hl, sp+$70                                 ; $4A5C: $F8 $70
    db $FC                                        ; $4A5E: $FC
    cp b                                          ; $4A5F: $B8
    ld bc, $0300                                  ; $4A60: $01 $00 $03
    nop                                           ; $4A63: $00
    inc b                                         ; $4A64: $04
    inc bc                                        ; $4A65: $03
    inc b                                         ; $4A66: $04
    inc bc                                        ; $4A67: $03
    ld [$3C07], sp                                ; $4A68: $08 $07 $3C
    inc bc                                        ; $4A6B: $03
    ld e, d                                       ; $4A6C: $5A
    dec l                                         ; $4A6D: $2D
    cp a                                          ; $4A6E: $BF

jr_012_4A6F:
    ld l, h                                       ; $4A6F: $6C
    rst RST_38                                    ; $4A70: $FF
    ld [hl], d                                    ; $4A71: $72
    rst RST_38                                    ; $4A72: $FF
    cp $FE                                        ; $4A73: $FE $FE
    db $FC                                        ; $4A75: $FC
    db $FC                                        ; $4A76: $FC
    jr nc, @-$0E                                  ; $4A77: $30 $F0

    nop                                           ; $4A79: $00
    ld h, b                                       ; $4A7A: $60
    add b                                         ; $4A7B: $80
    jr nz, @-$3E                                  ; $4A7C: $20 $C0

    ldh [rP1], a                                  ; $4A7E: $E0 $00
    rst RST_38                                    ; $4A80: $FF
    nop                                           ; $4A81: $00
    cp $79                                        ; $4A82: $FE $79
    ld a, c                                       ; $4A84: $79
    or [hl]                                       ; $4A85: $B6
    jr nc, jr_012_4A57                            ; $4A86: $30 $CF

    jr nc, @-$2F                                  ; $4A88: $30 $CF

    ld c, c                                       ; $4A8A: $49
    add [hl]                                      ; $4A8B: $86
    add [hl]                                      ; $4A8C: $86
    ld bc, $0305                                  ; $4A8D: $01 $05 $03
    dec b                                         ; $4A90: $05
    inc bc                                        ; $4A91: $03
    inc bc                                        ; $4A92: $03
    ld bc, $0103                                  ; $4A93: $01 $03 $01
    inc bc                                        ; $4A96: $03
    nop                                           ; $4A97: $00
    rlca                                          ; $4A98: $07
    inc bc                                        ; $4A99: $03
    rlca                                          ; $4A9A: $07
    inc bc                                        ; $4A9B: $03
    rlca                                          ; $4A9C: $07
    nop                                           ; $4A9D: $00
    nop                                           ; $4A9E: $00
    nop                                           ; $4A9F: $00
    rst RST_38                                    ; $4AA0: $FF
    ld l, [hl]                                    ; $4AA1: $6E
    rst RST_38                                    ; $4AA2: $FF
    xor [hl]                                      ; $4AA3: $AE
    cp $1C                                        ; $4AA4: $FE $1C
    cp h                                          ; $4AA6: $BC
    nop                                           ; $4AA7: $00
    ld l, b                                       ; $4AA8: $68
    or b                                          ; $4AA9: $B0
    ld hl, sp+$30                                 ; $4AAA: $F8 $30
    ld hl, sp-$40                                 ; $4AAC: $F8 $C0
    ld hl, sp-$10                                 ; $4AAE: $F8 $F0
    ldh a, [$FFE0]                                ; $4AB0: $F0 $E0
    ldh a, [$FFE0]                                ; $4AB2: $F0 $E0
    ldh [$FFC0], a                                ; $4AB4: $E0 $C0
    ldh a, [rP1]                                  ; $4AB6: $F0 $00
    ret z                                         ; $4AB8: $C8

    or b                                          ; $4AB9: $B0
    add h                                         ; $4ABA: $84
    ld a, b                                       ; $4ABB: $78
    db $FC                                        ; $4ABC: $FC
    nop                                           ; $4ABD: $00
    nop                                           ; $4ABE: $00
    nop                                           ; $4ABF: $00
    ld bc, $0100                                  ; $4AC0: $01 $00 $01
    nop                                           ; $4AC3: $00
    inc bc                                        ; $4AC4: $03
    nop                                           ; $4AC5: $00
    inc bc                                        ; $4AC6: $03
    nop                                           ; $4AC7: $00
    inc b                                         ; $4AC8: $04
    inc bc                                        ; $4AC9: $03
    ld [$0F07], sp                                ; $4ACA: $08 $07 $0F
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
    nop                                           ; $4AEE: $00
    nop                                           ; $4AEF: $00
    ld a, [bc]                                    ; $4AF0: $0A
    nop                                           ; $4AF1: $00
    dec d                                         ; $4AF2: $15
    ld a, [bc]                                    ; $4AF3: $0A
    ccf                                           ; $4AF4: $3F
    ld a, [bc]                                    ; $4AF5: $0A
    ld e, a                                       ; $4AF6: $5F
    jr z, jr_012_4B77                             ; $4AF7: $28 $7E

    ld hl, $067D                                  ; $4AF9: $21 $7D $06
    rst RST_38                                    ; $4AFC: $FF
    ld h, b                                       ; $4AFD: $60
    rst RST_38                                    ; $4AFE: $FF
    ld a, [hl]                                    ; $4AFF: $7E
    nop                                           ; $4B00: $00
    nop                                           ; $4B01: $00
    nop                                           ; $4B02: $00
    nop                                           ; $4B03: $00
    nop                                           ; $4B04: $00
    nop                                           ; $4B05: $00
    nop                                           ; $4B06: $00
    nop                                           ; $4B07: $00
    nop                                           ; $4B08: $00
    nop                                           ; $4B09: $00
    rrca                                          ; $4B0A: $0F
    nop                                           ; $4B0B: $00
    dec bc                                        ; $4B0C: $0B
    dec b                                         ; $4B0D: $05
    dec bc                                        ; $4B0E: $0B
    inc b                                         ; $4B0F: $04
    rrca                                          ; $4B10: $0F
    inc bc                                        ; $4B11: $03
    rst RST_38                                    ; $4B12: $FF
    inc c                                         ; $4B13: $0C
    inc e                                         ; $4B14: $1C
    di                                            ; $4B15: $F3
    cp e                                          ; $4B16: $BB
    ld [hl], h                                    ; $4B17: $74
    db $FD                                        ; $4B18: $FD
    halt                                          ; $4B19: $76
    rst RST_38                                    ; $4B1A: $FF
    ret nz                                        ; $4B1B: $C0

    rst RST_18                                    ; $4B1C: $DF
    or e                                          ; $4B1D: $B3
    rst RST_10                                    ; $4B1E: $D7
    dec l                                         ; $4B1F: $2D
    nop                                           ; $4B20: $00
    nop                                           ; $4B21: $00
    nop                                           ; $4B22: $00
    nop                                           ; $4B23: $00
    nop                                           ; $4B24: $00
    nop                                           ; $4B25: $00
    nop                                           ; $4B26: $00
    nop                                           ; $4B27: $00
    db $FC                                        ; $4B28: $FC
    nop                                           ; $4B29: $00
    cp $04                                        ; $4B2A: $FE $04
    rst RST_38                                    ; $4B2C: $FF
    ldh [c], a                                    ; $4B2D: $E2
    rst RST_38                                    ; $4B2E: $FF
    ld [bc], a                                    ; $4B2F: $02
    rst RST_38                                    ; $4B30: $FF
    di                                            ; $4B31: $F3
    rst RST_38                                    ; $4B32: $FF
    ld b, b                                       ; $4B33: $40
    ret c                                         ; $4B34: $D8

    scf                                           ; $4B35: $37
    ld a, [$FFB7]                                 ; $4B36: $FA $B7 $FF
    adc a                                         ; $4B39: $8F
    rst RST_38                                    ; $4B3A: $FF
    rrca                                          ; $4B3B: $0F
    ld a, a                                       ; $4B3C: $7F
    xor a                                         ; $4B3D: $AF
    ld a, a                                       ; $4B3E: $7F
    and a                                         ; $4B3F: $A7
    nop                                           ; $4B40: $00
    nop                                           ; $4B41: $00
    nop                                           ; $4B42: $00
    nop                                           ; $4B43: $00
    nop                                           ; $4B44: $00
    nop                                           ; $4B45: $00

jr_012_4B46:
    nop                                           ; $4B46: $00
    nop                                           ; $4B47: $00
    nop                                           ; $4B48: $00
    nop                                           ; $4B49: $00
    nop                                           ; $4B4A: $00
    nop                                           ; $4B4B: $00
    nop                                           ; $4B4C: $00
    nop                                           ; $4B4D: $00
    nop                                           ; $4B4E: $00
    nop                                           ; $4B4F: $00
    add b                                         ; $4B50: $80
    nop                                           ; $4B51: $00
    ldh a, [rP1]                                  ; $4B52: $F0 $00
    jr jr_012_4B46                                ; $4B54: $18 $F0

    xor h                                         ; $4B56: $AC
    ld hl, sp-$04                                 ; $4B57: $F8 $FC
    ld hl, sp-$04                                 ; $4B59: $F8 $FC
    ld hl, sp-$08                                 ; $4B5B: $F8 $F8
    ret nz                                        ; $4B5D: $C0

    ret nz                                        ; $4B5E: $C0

    nop                                           ; $4B5F: $00
    ld a, a                                       ; $4B60: $7F
    ccf                                           ; $4B61: $3F
    ld a, a                                       ; $4B62: $7F
    ld a, $3F                                     ; $4B63: $3E $3F
    inc e                                         ; $4B65: $1C
    inc e                                         ; $4B66: $1C
    nop                                           ; $4B67: $00
    ld bc, $0100                                  ; $4B68: $01 $00 $01
    nop                                           ; $4B6B: $00
    ld bc, $0100                                  ; $4B6C: $01 $00 $01
    nop                                           ; $4B6F: $00
    ld bc, $0000                                  ; $4B70: $01 $00 $00
    nop                                           ; $4B73: $00
    nop                                           ; $4B74: $00
    nop                                           ; $4B75: $00
    inc bc                                        ; $4B76: $03

jr_012_4B77:
    nop                                           ; $4B77: $00
    inc b                                         ; $4B78: $04
    inc bc                                        ; $4B79: $03
    ld [$0F07], sp                                ; $4B7A: $08 $07 $0F
    nop                                           ; $4B7D: $00
    nop                                           ; $4B7E: $00
    nop                                           ; $4B7F: $00
    xor a                                         ; $4B80: $AF
    ld d, [hl]                                    ; $4B81: $56
    ld a, a                                       ; $4B82: $7F
    adc c                                         ; $4B83: $89
    adc b                                         ; $4B84: $88
    rlca                                          ; $4B85: $07
    rst RST_18                                    ; $4B86: $DF
    nop                                           ; $4B87: $00
    ld h, e                                       ; $4B88: $63
    call c, $C2FD                                 ; $4B89: $DC $FD $C2
    ldh [c], a                                    ; $4B8C: $E2
    dec a                                         ; $4B8D: $3D
    ldh a, [c]                                    ; $4B8E: $F2
    db $FD                                        ; $4B8F: $FD
    di                                            ; $4B90: $F3
    db $FC                                        ; $4B91: $FC
    db $F4                                        ; $4B92: $F4
    ld a, b                                       ; $4B93: $78
    db $FC                                        ; $4B94: $FC
    ld a, b                                       ; $4B95: $78
    ld hl, sp+$00                                 ; $4B96: $F8 $00
    ld hl, sp+$70                                 ; $4B98: $F8 $70
    ld a, b                                       ; $4B9A: $78
    or b                                          ; $4B9B: $B0
    ld hl, sp+$00                                 ; $4B9C: $F8 $00
    nop                                           ; $4B9E: $00
    nop                                           ; $4B9F: $00
    cp a                                          ; $4BA0: $BF
    ret nc                                        ; $4BA1: $D0

    rst RST_30                                    ; $4BA2: $F7
    xor l                                         ; $4BA3: $AD
    rst RST_38                                    ; $4BA4: $FF
    ld h, c                                       ; $4BA5: $61
    ei                                            ; $4BA6: $FB
    sub $FF                                       ; $4BA7: $D6 $FF
    nop                                           ; $4BA9: $00
    db $FD                                        ; $4BAA: $FD
    di                                            ; $4BAB: $F3
    di                                            ; $4BAC: $F3
    ld l, h                                       ; $4BAD: $6C
    pop hl                                        ; $4BAE: $E1
    ld e, [hl]                                    ; $4BAF: $5E
    pop hl                                        ; $4BB0: $E1
    ld e, $70                                     ; $4BB1: $1E $70
    cpl                                           ; $4BB3: $2F
    ld [hl], b                                    ; $4BB4: $70
    cpl                                           ; $4BB5: $2F
    ld a, c                                       ; $4BB6: $79
    ld d, $7E                                     ; $4BB7: $16 $7E
    add hl, de                                    ; $4BB9: $19
    ld e, a                                       ; $4BBA: $5F
    dec l                                         ; $4BBB: $2D
    ld c, a                                       ; $4BBC: $4F
    ld [hl], $37                                  ; $4BBD: $36 $37
    nop                                           ; $4BBF: $00
    sub b                                         ; $4BC0: $90
    ld h, b                                       ; $4BC1: $60
    ld hl, sp+$00                                 ; $4BC2: $F8 $00
    db $FC                                        ; $4BC4: $FC
    cp b                                          ; $4BC5: $B8
    cp $DC                                        ; $4BC6: $FE $DC
    cp $DC                                        ; $4BC8: $FE $DC
    cp $5C                                        ; $4BCA: $FE $5C
    ld a, h                                       ; $4BCC: $7C
    jr c, jr_012_4C07                             ; $4BCD: $38 $38

    nop                                           ; $4BCF: $00
    nop                                           ; $4BD0: $00
    nop                                           ; $4BD1: $00
    add b                                         ; $4BD2: $80
    nop                                           ; $4BD3: $00
    add b                                         ; $4BD4: $80
    nop                                           ; $4BD5: $00
    add b                                         ; $4BD6: $80
    nop                                           ; $4BD7: $00
    ret nz                                        ; $4BD8: $C0

    add b                                         ; $4BD9: $80
    ret nz                                        ; $4BDA: $C0

    add b                                         ; $4BDB: $80
    add b                                         ; $4BDC: $80
    nop                                           ; $4BDD: $00
    nop                                           ; $4BDE: $00
    nop                                           ; $4BDF: $00
    nop                                           ; $4BE0: $00
    nop                                           ; $4BE1: $00
    nop                                           ; $4BE2: $00
    nop                                           ; $4BE3: $00
    nop                                           ; $4BE4: $00
    nop                                           ; $4BE5: $00
    nop                                           ; $4BE6: $00
    nop                                           ; $4BE7: $00
    dec b                                         ; $4BE8: $05
    nop                                           ; $4BE9: $00
    ld a, [bc]                                    ; $4BEA: $0A
    dec b                                         ; $4BEB: $05
    rra                                           ; $4BEC: $1F
    dec b                                         ; $4BED: $05
    cpl                                           ; $4BEE: $2F
    inc d                                         ; $4BEF: $14
    ccf                                           ; $4BF0: $3F
    db $10                                        ; $4BF1: $10
    ld a, $03                                     ; $4BF2: $3E $03
    ld a, a                                       ; $4BF4: $7F
    jr nc, jr_012_4C76                            ; $4BF5: $30 $7F

    ccf                                           ; $4BF7: $3F
    ld a, a                                       ; $4BF8: $7F
    ccf                                           ; $4BF9: $3F
    ld a, a                                       ; $4BFA: $7F
    ld a, $3F                                     ; $4BFB: $3E $3F
    inc e                                         ; $4BFD: $1C
    inc e                                         ; $4BFE: $1C
    nop                                           ; $4BFF: $00
    nop                                           ; $4C00: $00
    nop                                           ; $4C01: $00
    rlca                                          ; $4C02: $07
    nop                                           ; $4C03: $00
    dec b                                         ; $4C04: $05
    ld [bc], a                                    ; $4C05: $02
    dec b                                         ; $4C06: $05

jr_012_4C07:
    ld [bc], a                                    ; $4C07: $02
    rlca                                          ; $4C08: $07
    ld bc, $06FF                                  ; $4C09: $01 $FF $06
    adc [hl]                                      ; $4C0C: $8E
    ld a, c                                       ; $4C0D: $79
    db $DD                                        ; $4C0E: $DD
    ld a, [hl-]                                   ; $4C0F: $3A
    ld a, [hl]                                    ; $4C10: $7E
    cp e                                          ; $4C11: $BB
    rst RST_38                                    ; $4C12: $FF
    ld h, b                                       ; $4C13: $60
    rst RST_28                                    ; $4C14: $EF
    ld e, c                                       ; $4C15: $59
    db $EB                                        ; $4C16: $EB
    ld d, $AF                                     ; $4C17: $16 $AF
    ld d, [hl]                                    ; $4C19: $56
    ld a, a                                       ; $4C1A: $7F
    adc c                                         ; $4C1B: $89
    adc b                                         ; $4C1C: $88
    rlca                                          ; $4C1D: $07
    rst RST_18                                    ; $4C1E: $DF
    nop                                           ; $4C1F: $00
    ld a, [hl]                                    ; $4C20: $7E
    nop                                           ; $4C21: $00
    rst RST_38                                    ; $4C22: $FF
    ld [bc], a                                    ; $4C23: $02
    rst RST_38                                    ; $4C24: $FF
    pop af                                        ; $4C25: $F1
    rst RST_38                                    ; $4C26: $FF
    ld bc, $F9FF                                  ; $4C27: $01 $FF $F9
    rst RST_38                                    ; $4C2A: $FF
    jr nz, jr_012_4C99                            ; $4C2B: $20 $6C

    sbc e                                         ; $4C2D: $9B
    db $FD                                        ; $4C2E: $FD
    ld e, e                                       ; $4C2F: $5B
    rst RST_38                                    ; $4C30: $FF
    ld b, a                                       ; $4C31: $47
    rst RST_38                                    ; $4C32: $FF
    rlca                                          ; $4C33: $07
    cp a                                          ; $4C34: $BF
    rst RST_10                                    ; $4C35: $D7
    cp a                                          ; $4C36: $BF
    db $D3                                        ; $4C37: $D3
    cp a                                          ; $4C38: $BF
    ret nc                                        ; $4C39: $D0

    rst RST_30                                    ; $4C3A: $F7
    xor l                                         ; $4C3B: $AD
    rst RST_38                                    ; $4C3C: $FF
    ld h, c                                       ; $4C3D: $61
    ei                                            ; $4C3E: $FB
    sub $00                                       ; $4C3F: $D6 $00
    nop                                           ; $4C41: $00
    nop                                           ; $4C42: $00
    nop                                           ; $4C43: $00
    add b                                         ; $4C44: $80
    nop                                           ; $4C45: $00
    add b                                         ; $4C46: $80
    nop                                           ; $4C47: $00
    ret nz                                        ; $4C48: $C0

    add b                                         ; $4C49: $80
    ld hl, sp+$00                                 ; $4C4A: $F8 $00
    inc c                                         ; $4C4C: $0C
    ld hl, sp+$56                                 ; $4C4D: $F8 $56
    db $FC                                        ; $4C4F: $FC
    cp $FC                                        ; $4C50: $FE $FC
    cp $FC                                        ; $4C52: $FE $FC
    db $FC                                        ; $4C54: $FC
    ldh [$FFE0], a                                ; $4C55: $E0 $E0
    add b                                         ; $4C57: $80
    sub b                                         ; $4C58: $90
    ld h, b                                       ; $4C59: $60
    ld hl, sp+$00                                 ; $4C5A: $F8 $00
    db $FC                                        ; $4C5C: $FC
    cp b                                          ; $4C5D: $B8
    cp $DC                                        ; $4C5E: $FE $DC
    or c                                          ; $4C60: $B1
    ld l, [hl]                                    ; $4C61: $6E
    cp $61                                        ; $4C62: $FE $61
    ld sp, hl                                     ; $4C64: $F9
    ld e, $FD                                     ; $4C65: $1E $FD
    ld a, [hl]                                    ; $4C67: $7E
    db $FD                                        ; $4C68: $FD
    ld a, [hl]                                    ; $4C69: $7E
    ld a, [hl]                                    ; $4C6A: $7E
    inc a                                         ; $4C6B: $3C
    ld a, $1C                                     ; $4C6C: $3E $1C
    ccf                                           ; $4C6E: $3F
    ld [bc], a                                    ; $4C6F: $02
    ccf                                           ; $4C70: $3F
    ld e, $3F                                     ; $4C71: $1E $3F
    ld e, $3E                                     ; $4C73: $1E $3E
    inc b                                         ; $4C75: $04

jr_012_4C76:
    ld b, [hl]                                    ; $4C76: $46
    jr c, jr_012_4CBD                             ; $4C77: $38 $44

    jr c, jr_012_4CF3                             ; $4C79: $38 $78

    nop                                           ; $4C7B: $00
    nop                                           ; $4C7C: $00
    nop                                           ; $4C7D: $00
    nop                                           ; $4C7E: $00
    nop                                           ; $4C7F: $00
    rst RST_38                                    ; $4C80: $FF
    nop                                           ; $4C81: $00
    cp $79                                        ; $4C82: $FE $79
    ld a, c                                       ; $4C84: $79
    or [hl]                                       ; $4C85: $B6
    ld [hl], b                                    ; $4C86: $70
    xor a                                         ; $4C87: $AF
    ldh a, [rIF]                                  ; $4C88: $F0 $0F
    jr c, jr_012_4CA3                             ; $4C8A: $38 $17

    jr c, jr_012_4CA5                             ; $4C8C: $38 $17

    inc a                                         ; $4C8E: $3C
    dec bc                                        ; $4C8F: $0B
    ccf                                           ; $4C90: $3F
    inc c                                         ; $4C91: $0C
    cpl                                           ; $4C92: $2F
    ld d, $27                                     ; $4C93: $16 $27
    dec de                                        ; $4C95: $1B
    dec de                                        ; $4C96: $1B
    nop                                           ; $4C97: $00
    nop                                           ; $4C98: $00

jr_012_4C99:
    nop                                           ; $4C99: $00
    nop                                           ; $4C9A: $00
    nop                                           ; $4C9B: $00
    nop                                           ; $4C9C: $00
    nop                                           ; $4C9D: $00
    nop                                           ; $4C9E: $00
    nop                                           ; $4C9F: $00
    rst RST_38                                    ; $4CA0: $FF
    ld l, [hl]                                    ; $4CA1: $6E
    rst RST_38                                    ; $4CA2: $FF

jr_012_4CA3:
    xor [hl]                                      ; $4CA3: $AE
    cp [hl]                                       ; $4CA4: $BE

jr_012_4CA5:
    inc e                                         ; $4CA5: $1C
    sbc h                                         ; $4CA6: $9C
    nop                                           ; $4CA7: $00
    add b                                         ; $4CA8: $80
    nop                                           ; $4CA9: $00
    ld b, b                                       ; $4CAA: $40
    add b                                         ; $4CAB: $80
    ld b, b                                       ; $4CAC: $40
    add b                                         ; $4CAD: $80
    ret nz                                        ; $4CAE: $C0

    nop                                           ; $4CAF: $00
    ld h, b                                       ; $4CB0: $60
    ret nz                                        ; $4CB1: $C0

    ldh [$FFC0], a                                ; $4CB2: $E0 $C0
    ret nz                                        ; $4CB4: $C0

    nop                                           ; $4CB5: $00
    add b                                         ; $4CB6: $80
    nop                                           ; $4CB7: $00
    nop                                           ; $4CB8: $00
    nop                                           ; $4CB9: $00
    nop                                           ; $4CBA: $00
    nop                                           ; $4CBB: $00
    nop                                           ; $4CBC: $00

jr_012_4CBD:
    nop                                           ; $4CBD: $00
    nop                                           ; $4CBE: $00
    nop                                           ; $4CBF: $00
    nop                                           ; $4CC0: $00
    nop                                           ; $4CC1: $00
    nop                                           ; $4CC2: $00
    nop                                           ; $4CC3: $00
    nop                                           ; $4CC4: $00
    nop                                           ; $4CC5: $00
    nop                                           ; $4CC6: $00
    nop                                           ; $4CC7: $00
    ld bc, $1200                                  ; $4CC8: $01 $00 $12
    ld bc, $112B                                  ; $4CCB: $01 $2B $11
    rra                                           ; $4CCE: $1F
    add hl, bc                                    ; $4CCF: $09
    ccf                                           ; $4CD0: $3F
    ld [bc], a                                    ; $4CD1: $02
    ld e, a                                       ; $4CD2: $5F
    dec sp                                        ; $4CD3: $3B
    ccf                                           ; $4CD4: $3F
    ld b, $1F                                     ; $4CD5: $06 $1F
    ld b, $2F                                     ; $4CD7: $06 $2F
    ld a, [de]                                    ; $4CD9: $1A
    rra                                           ; $4CDA: $1F
    ld bc, $0307                                  ; $4CDB: $01 $07 $03
    inc bc                                        ; $4CDE: $03
    nop                                           ; $4CDF: $00
    nop                                           ; $4CE0: $00
    nop                                           ; $4CE1: $00
    nop                                           ; $4CE2: $00
    nop                                           ; $4CE3: $00
    nop                                           ; $4CE4: $00
    nop                                           ; $4CE5: $00
    nop                                           ; $4CE6: $00
    nop                                           ; $4CE7: $00
    nop                                           ; $4CE8: $00
    nop                                           ; $4CE9: $00
    add b                                         ; $4CEA: $80
    nop                                           ; $4CEB: $00
    adc a                                         ; $4CEC: $8F
    nop                                           ; $4CED: $00
    sub b                                         ; $4CEE: $90
    rrca                                          ; $4CEF: $0F
    ld [$FF1F], a                                 ; $4CF0: $EA $1F $FF

jr_012_4CF3:
    ld e, [hl]                                    ; $4CF3: $5E
    cp $E5                                        ; $4CF4: $FE $E5
    or $E9                                        ; $4CF6: $F6 $E9
    ldh a, [c]                                    ; $4CF8: $F2
    db $ED                                        ; $4CF9: $ED
    di                                            ; $4CFA: $F3
    db $EC                                        ; $4CFB: $EC
    rst RST_28                                    ; $4CFC: $EF
    pop bc                                        ; $4CFD: $C1
    pop bc                                        ; $4CFE: $C1
    nop                                           ; $4CFF: $00
    ld e, $00                                     ; $4D00: $1E $00
    cpl                                           ; $4D02: $2F
    ld d, $7F                                     ; $4D03: $16 $7F
    ld bc, $3E7F                                  ; $4D05: $01 $7F $3E
    ccf                                           ; $4D08: $3F
    inc bc                                        ; $4D09: $03
    db $E3                                        ; $4D0A: $E3
    inc e                                         ; $4D0B: $1C
    ld e, [hl]                                    ; $4D0C: $5E
    and l                                         ; $4D0D: $A5
    rst RST_28                                    ; $4D0E: $EF
    or l                                          ; $4D0F: $B5
    rst RST_38                                    ; $4D10: $FF
    nop                                           ; $4D11: $00
    ei                                            ; $4D12: $FB
    sbc l                                         ; $4D13: $9D
    cp e                                          ; $4D14: $BB
    ld l, l                                       ; $4D15: $6D
    ei                                            ; $4D16: $FB
    ld l, l                                       ; $4D17: $6D
    rst RST_38                                    ; $4D18: $FF
    sbc e                                         ; $4D19: $9B
    adc a                                         ; $4D1A: $8F
    halt                                          ; $4D1B: $76
    rst RST_38                                    ; $4D1C: $FF
    adc l                                         ; $4D1D: $8D
    rst RST_38                                    ; $4D1E: $FF
    ld a, e                                       ; $4D1F: $7B
    nop                                           ; $4D20: $00
    nop                                           ; $4D21: $00
    ldh [rP1], a                                  ; $4D22: $E0 $00
    ldh a, [rNR41]                                ; $4D24: $F0 $20
    ld a, [$FD10]                                 ; $4D26: $FA $10 $FD
    ld [de], a                                    ; $4D29: $12
    rst RST_30                                    ; $4D2A: $F7
    adc d                                         ; $4D2B: $8A
    rst RST_38                                    ; $4D2C: $FF
    add c                                         ; $4D2D: $81
    rst RST_18                                    ; $4D2E: $DF
    daa                                           ; $4D2F: $27
    rst RST_38                                    ; $4D30: $FF
    ld c, d                                       ; $4D31: $4A
    rst RST_28                                    ; $4D32: $EF
    ld d, c                                       ; $4D33: $51
    rst RST_38                                    ; $4D34: $FF
    ld h, e                                       ; $4D35: $63
    db $E3                                        ; $4D36: $E3
    ld e, l                                       ; $4D37: $5D
    db $FD                                        ; $4D38: $FD
    add b                                         ; $4D39: $80
    ldh [$FFC0], a                                ; $4D3A: $E0 $C0
    ret nz                                        ; $4D3C: $C0

    add b                                         ; $4D3D: $80
    add b                                         ; $4D3E: $80
    nop                                           ; $4D3F: $00
    nop                                           ; $4D40: $00
    nop                                           ; $4D41: $00
    nop                                           ; $4D42: $00
    nop                                           ; $4D43: $00
    nop                                           ; $4D44: $00
    nop                                           ; $4D45: $00
    nop                                           ; $4D46: $00
    nop                                           ; $4D47: $00
    nop                                           ; $4D48: $00
    nop                                           ; $4D49: $00
    nop                                           ; $4D4A: $00
    nop                                           ; $4D4B: $00
    nop                                           ; $4D4C: $00
    nop                                           ; $4D4D: $00
    ld b, b                                       ; $4D4E: $40
    nop                                           ; $4D4F: $00
    and b                                         ; $4D50: $A0
    ld b, b                                       ; $4D51: $40
    ldh a, [$FF80]                                ; $4D52: $F0 $80
    ld hl, sp-$30                                 ; $4D54: $F8 $D0
    ld hl, sp+$30                                 ; $4D56: $F8 $30
    ld hl, sp-$10                                 ; $4D58: $F8 $F0
    ld hl, sp-$10                                 ; $4D5A: $F8 $F0
    ldh a, [$FFE0]                                ; $4D5C: $F0 $E0
    ldh [rP1], a                                  ; $4D5E: $E0 $00
    ld bc, $0200                                  ; $4D60: $01 $00 $02
    ld bc, $031C                                  ; $4D63: $01 $1C $03
    cpl                                           ; $4D66: $2F
    jr jr_012_4DA5                                ; $4D67: $18 $3C

    dec de                                        ; $4D69: $1B
    ld a, $07                                     ; $4D6A: $3E $07
    ccf                                           ; $4D6C: $3F
    rra                                           ; $4D6D: $1F
    rra                                           ; $4D6E: $1F
    rrca                                          ; $4D6F: $0F
    rra                                           ; $4D70: $1F
    rrca                                          ; $4D71: $0F
    rrca                                          ; $4D72: $0F
    rlca                                          ; $4D73: $07
    rrca                                          ; $4D74: $0F
    nop                                           ; $4D75: $00
    ccf                                           ; $4D76: $3F
    rlca                                          ; $4D77: $07
    ld c, a                                       ; $4D78: $4F
    scf                                           ; $4D79: $37
    add a                                         ; $4D7A: $87
    ld a, e                                       ; $4D7B: $7B
    rst RST_38                                    ; $4D7C: $FF
    nop                                           ; $4D7D: $00
    nop                                           ; $4D7E: $00
    nop                                           ; $4D7F: $00
    rst RST_38                                    ; $4D80: $FF
    nop                                           ; $4D81: $00
    rst RST_38                                    ; $4D82: $FF
    inc a                                         ; $4D83: $3C
    inc a                                         ; $4D84: $3C
    db $DB                                        ; $4D85: $DB
    jr c, @-$27                                   ; $4D86: $38 $D7

    dec sp                                        ; $4D88: $3B
    call nz, Call_000_03CD                        ; $4D89: $C4 $CD $03
    ld c, a                                       ; $4D8C: $4F
    add e                                         ; $4D8D: $83
    ld c, a                                       ; $4D8E: $4F
    add h                                         ; $4D8F: $84
    rst RST_08                                    ; $4D90: $CF
    add a                                         ; $4D91: $87
    add a                                         ; $4D92: $87
    inc bc                                        ; $4D93: $03
    add a                                         ; $4D94: $87
    inc bc                                        ; $4D95: $03
    inc bc                                        ; $4D96: $03
    ld bc, $0081                                  ; $4D97: $01 $81 $00
    add c                                         ; $4D9A: $81
    nop                                           ; $4D9B: $00
    add c                                         ; $4D9C: $81
    nop                                           ; $4D9D: $00
    ld bc, $8000                                  ; $4D9E: $01 $00 $80
    nop                                           ; $4DA1: $00
    ld b, b                                       ; $4DA2: $40
    add b                                         ; $4DA3: $80
    ret nz                                        ; $4DA4: $C0

jr_012_4DA5:
    nop                                           ; $4DA5: $00
    and b                                         ; $4DA6: $A0
    ld b, b                                       ; $4DA7: $40
    sub b                                         ; $4DA8: $90
    ld h, b                                       ; $4DA9: $60
    ret nc                                        ; $4DAA: $D0

    ldh [$FFD0], a                                ; $4DAB: $E0 $D0
    ldh [$FFF0], a                                ; $4DAD: $E0 $F0
    ldh [$FFF0], a                                ; $4DAF: $E0 $F0
    ldh [$FFF0], a                                ; $4DB1: $E0 $F0
    nop                                           ; $4DB3: $00
    ldh a, [rP1]                                  ; $4DB4: $F0 $00
    adc b                                         ; $4DB6: $88
    ld [hl], b                                    ; $4DB7: $70
    ld [$04F0], sp                                ; $4DB8: $08 $F0 $04
    ld hl, sp-$04                                 ; $4DBB: $F8 $FC
    nop                                           ; $4DBD: $00
    nop                                           ; $4DBE: $00
    nop                                           ; $4DBF: $00
    nop                                           ; $4DC0: $00
    nop                                           ; $4DC1: $00
    inc bc                                        ; $4DC2: $03
    nop                                           ; $4DC3: $00
    inc b                                         ; $4DC4: $04
    inc bc                                        ; $4DC5: $03
    ld a, [bc]                                    ; $4DC6: $0A
    rlca                                          ; $4DC7: $07
    rrca                                          ; $4DC8: $0F
    rlca                                          ; $4DC9: $07
    rlca                                          ; $4DCA: $07
    inc bc                                        ; $4DCB: $03
    dec hl                                        ; $4DCC: $2B
    dec b                                         ; $4DCD: $05
    ld e, a                                       ; $4DCE: $5F
    inc h                                         ; $4DCF: $24
    ld a, a                                       ; $4DD0: $7F
    ld [$6DBF], sp                                ; $4DD1: $08 $BF $6D
    ld a, a                                       ; $4DD4: $7F
    dec de                                        ; $4DD5: $1B
    ccf                                           ; $4DD6: $3F
    dec de                                        ; $4DD7: $1B
    ld e, a                                       ; $4DD8: $5F
    dec hl                                        ; $4DD9: $2B
    ccf                                           ; $4DDA: $3F
    rlca                                          ; $4DDB: $07
    rra                                           ; $4DDC: $1F
    rrca                                          ; $4DDD: $0F
    rrca                                          ; $4DDE: $0F
    nop                                           ; $4DDF: $00
    nop                                           ; $4DE0: $00
    nop                                           ; $4DE1: $00
    rlca                                          ; $4DE2: $07
    nop                                           ; $4DE3: $00
    rrca                                          ; $4DE4: $0F
    ld bc, $050B                                  ; $4DE5: $01 $0B $05
    dec de                                        ; $4DE8: $1B
    dec b                                         ; $4DE9: $05
    rst RST_38                                    ; $4DEA: $FF
    ld [$EF1F], sp                                ; $4DEB: $08 $1F $EF
    cp a                                          ; $4DEE: $BF
    ldh a, [$FFFD]                                ; $4DEF: $F0 $FD
    or $FD                                        ; $4DF1: $F6 $FD
    ldh [c], a                                    ; $4DF3: $E2
    rst RST_28                                    ; $4DF4: $EF
    reti                                          ; $4DF5: $D9


    db $EB                                        ; $4DF6: $EB
    sub $EF                                       ; $4DF7: $D6 $EF
    ld d, $BF                                     ; $4DF9: $16 $BF
    ld c, c                                       ; $4DFB: $49
    ret c                                         ; $4DFC: $D8

    and a                                         ; $4DFD: $A7
    rst RST_20                                    ; $4DFE: $E7
    add b                                         ; $4DFF: $80
    ld hl, sp+$00                                 ; $4E00: $F8 $00
    db $FC                                        ; $4E02: $FC
    ld [$C4FE], sp                                ; $4E03: $08 $FE $C4
    cp $A4                                        ; $4E06: $FE $A4
    rst RST_38                                    ; $4E08: $FF
    ld h, [hl]                                    ; $4E09: $66
    rst RST_38                                    ; $4E0A: $FF
    ret nz                                        ; $4E0B: $C0

    ret c                                         ; $4E0C: $D8

    scf                                           ; $4E0D: $37
    ld a, [$FFB7]                                 ; $4E0E: $FA $B7 $FF
    adc a                                         ; $4E11: $8F
    rst RST_38                                    ; $4E12: $FF
    rrca                                          ; $4E13: $0F
    cp a                                          ; $4E14: $BF
    rst RST_08                                    ; $4E15: $CF
    cp a                                          ; $4E16: $BF
    rst RST_10                                    ; $4E17: $D7

jr_012_4E18:
    cp a                                          ; $4E18: $BF
    ret nc                                        ; $4E19: $D0

    ei                                            ; $4E1A: $FB
    or [hl]                                       ; $4E1B: $B6
    rst RST_38                                    ; $4E1C: $FF
    ld l, b                                       ; $4E1D: $68
    db $FD                                        ; $4E1E: $FD
    db $DB                                        ; $4E1F: $DB
    nop                                           ; $4E20: $00
    nop                                           ; $4E21: $00
    nop                                           ; $4E22: $00
    nop                                           ; $4E23: $00
    ldh a, [rP1]                                  ; $4E24: $F0 $00
    jr jr_012_4E18                                ; $4E26: $18 $F0

    xor h                                         ; $4E28: $AC
    ld hl, sp-$04                                 ; $4E29: $F8 $FC
    ld hl, sp-$04                                 ; $4E2B: $F8 $FC
    ld hl, sp-$08                                 ; $4E2D: $F8 $F8
    ret nz                                        ; $4E2F: $C0

    ldh a, [$FF80]                                ; $4E30: $F0 $80
    adc b                                         ; $4E32: $88
    ld [hl], b                                    ; $4E33: $70
    db $FC                                        ; $4E34: $FC
    nop                                           ; $4E35: $00
    cp $DC                                        ; $4E36: $FE $DC
    rst RST_38                                    ; $4E38: $FF
    ld l, [hl]                                    ; $4E39: $6E
    rst RST_38                                    ; $4E3A: $FF
    ld l, [hl]                                    ; $4E3B: $6E
    rst RST_38                                    ; $4E3C: $FF
    xor [hl]                                      ; $4E3D: $AE
    cp [hl]                                       ; $4E3E: $BE

jr_012_4E3F:
    inc e                                         ; $4E3F: $1C
    ldh a, [$FFE0]                                ; $4E40: $F0 $E0
    di                                            ; $4E42: $F3
    ldh [$FFE4], a                                ; $4E43: $E0 $E4
    jp Jump_000_07D8                              ; $4E45: $C3 $D8 $07


    inc l                                         ; $4E48: $2C
    dec de                                        ; $4E49: $1B
    ccf                                           ; $4E4A: $3F
    jr jr_012_4E8B                                ; $4E4B: $18 $3E

    rlca                                          ; $4E4D: $07
    ccf                                           ; $4E4E: $3F
    rra                                           ; $4E4F: $1F
    ccf                                           ; $4E50: $3F
    rra                                           ; $4E51: $1F
    rra                                           ; $4E52: $1F
    rrca                                          ; $4E53: $0F
    rra                                           ; $4E54: $1F
    rrca                                          ; $4E55: $0F
    ccf                                           ; $4E56: $3F
    nop                                           ; $4E57: $00
    ld c, a                                       ; $4E58: $4F
    scf                                           ; $4E59: $37
    add a                                         ; $4E5A: $87
    ld a, e                                       ; $4E5B: $7B
    rst RST_38                                    ; $4E5C: $FF
    nop                                           ; $4E5D: $00
    nop                                           ; $4E5E: $00
    nop                                           ; $4E5F: $00
    ld a, a                                       ; $4E60: $7F
    nop                                           ; $4E61: $00
    rst RST_38                                    ; $4E62: $FF
    ld a, h                                       ; $4E63: $7C
    ld a, h                                       ; $4E64: $7C
    cp e                                          ; $4E65: $BB
    jr c, jr_012_4E3F                             ; $4E66: $38 $D7

    dec sp                                        ; $4E68: $3B
    call nz, $01C6                                ; $4E69: $C4 $C6 $01
    ld b, e                                       ; $4E6C: $43
    add c                                         ; $4E6D: $81
    ld b, a                                       ; $4E6E: $47
    add d                                         ; $4E6F: $82
    ld b, a                                       ; $4E70: $47
    add e                                         ; $4E71: $83
    add a                                         ; $4E72: $87
    inc bc                                        ; $4E73: $03
    add e                                         ; $4E74: $83
    ld bc, $0103                                  ; $4E75: $01 $03 $01
    add c                                         ; $4E78: $81
    nop                                           ; $4E79: $00
    add c                                         ; $4E7A: $81
    nop                                           ; $4E7B: $00
    add c                                         ; $4E7C: $81
    nop                                           ; $4E7D: $00
    ld bc, $FF00                                  ; $4E7E: $01 $00 $FF
    dec de                                        ; $4E81: $1B
    cp a                                          ; $4E82: $BF
    ld l, e                                       ; $4E83: $6B
    rst RST_28                                    ; $4E84: $EF
    rlca                                          ; $4E85: $07
    ld b, a                                       ; $4E86: $47
    add b                                         ; $4E87: $80
    ldh [rP1], a                                  ; $4E88: $E0 $00
    ret nc                                        ; $4E8A: $D0

jr_012_4E8B:
    and b                                         ; $4E8B: $A0
    ret z                                         ; $4E8C: $C8

    or b                                          ; $4E8D: $B0
    add sp, $70                                   ; $4E8E: $E8 $70
    add sp, -$10                                  ; $4E90: $E8 $F0
    ld hl, sp-$10                                 ; $4E92: $F8 $F0
    ld hl, sp-$10                                 ; $4E94: $F8 $F0
    ld hl, sp+$00                                 ; $4E96: $F8 $00
    ld hl, sp+$00                                 ; $4E98: $F8 $00
    adc b                                         ; $4E9A: $88
    ld [hl], b                                    ; $4E9B: $70
    inc b                                         ; $4E9C: $04
    ld hl, sp-$04                                 ; $4E9D: $F8 $FC
    nop                                           ; $4E9F: $00
    inc bc                                        ; $4EA0: $03
    nop                                           ; $4EA1: $00
    inc b                                         ; $4EA2: $04
    inc bc                                        ; $4EA3: $03
    ld a, [bc]                                    ; $4EA4: $0A
    rlca                                          ; $4EA5: $07
    rrca                                          ; $4EA6: $0F
    rlca                                          ; $4EA7: $07
    rlca                                          ; $4EA8: $07
    ld bc, $0005                                  ; $4EA9: $01 $05 $00
    ld a, [hl+]                                   ; $4EAC: $2A
    inc b                                         ; $4EAD: $04
    ld e, [hl]                                    ; $4EAE: $5E
    inc h                                         ; $4EAF: $24
    ld a, a                                       ; $4EB0: $7F
    ld [$6DBF], sp                                ; $4EB1: $08 $BF $6D
    ld a, a                                       ; $4EB4: $7F
    dec de                                        ; $4EB5: $1B
    ccf                                           ; $4EB6: $3F
    dec de                                        ; $4EB7: $1B
    ld e, a                                       ; $4EB8: $5F
    dec hl                                        ; $4EB9: $2B
    ccf                                           ; $4EBA: $3F
    rlca                                          ; $4EBB: $07
    rra                                           ; $4EBC: $1F
    rrca                                          ; $4EBD: $0F
    rrca                                          ; $4EBE: $0F
    nop                                           ; $4EBF: $00
    nop                                           ; $4EC0: $00
    nop                                           ; $4EC1: $00
    rlca                                          ; $4EC2: $07
    nop                                           ; $4EC3: $00
    rrca                                          ; $4EC4: $0F
    ld bc, $050B                                  ; $4EC5: $01 $0B $05
    ei                                            ; $4EC8: $FB
    dec b                                         ; $4EC9: $05
    rra                                           ; $4ECA: $1F
    add sp, -$41                                  ; $4ECB: $E8 $BF
    rst RST_28                                    ; $4ECD: $EF
    rst RST_38                                    ; $4ECE: $FF
    ldh a, [$FFFD]                                ; $4ECF: $F0 $FD
    or $FD                                        ; $4ED1: $F6 $FD
    ldh [c], a                                    ; $4ED3: $E2
    rst RST_28                                    ; $4ED4: $EF
    ld e, c                                       ; $4ED5: $59
    db $EB                                        ; $4ED6: $EB
    ld d, $2F                                     ; $4ED7: $16 $2F
    sub $BF                                       ; $4ED9: $D6 $BF
    ld c, c                                       ; $4EDB: $49
    ret c                                         ; $4EDC: $D8

    and a                                         ; $4EDD: $A7
    rst RST_28                                    ; $4EDE: $EF
    add b                                         ; $4EDF: $80
    ld hl, sp+$00                                 ; $4EE0: $F8 $00
    db $FC                                        ; $4EE2: $FC
    ld [$C4FE], sp                                ; $4EE3: $08 $FE $C4
    cp $A4                                        ; $4EE6: $FE $A4
    rst RST_38                                    ; $4EE8: $FF
    ld h, b                                       ; $4EE9: $60
    ld hl, sp-$39                                 ; $4EEA: $F8 $C7
    jp c, $FF37                                   ; $4EEC: $DA $37 $FF

    or a                                          ; $4EEF: $B7
    rst RST_38                                    ; $4EF0: $FF
    adc a                                         ; $4EF1: $8F
    rst RST_38                                    ; $4EF2: $FF
    rrca                                          ; $4EF3: $0F

jr_012_4EF4:
    cp a                                          ; $4EF4: $BF
    rst RST_10                                    ; $4EF5: $D7
    cp a                                          ; $4EF6: $BF
    ret nc                                        ; $4EF7: $D0

    cp e                                          ; $4EF8: $BB
    sub $FF                                       ; $4EF9: $D6 $FF
    or b                                          ; $4EFB: $B0
    rst RST_38                                    ; $4EFC: $FF
    ld l, l                                       ; $4EFD: $6D
    db $FD                                        ; $4EFE: $FD
    jp c, Jump_000_00F0                           ; $4EFF: $DA $F0 $00

    jr jr_012_4EF4                                ; $4F02: $18 $F0

    xor h                                         ; $4F04: $AC
    ld hl, sp-$04                                 ; $4F05: $F8 $FC
    ld hl, sp-$04                                 ; $4F07: $F8 $FC
    ld hl, sp-$08                                 ; $4F09: $F8 $F8
    ret nz                                        ; $4F0B: $C0

    ldh [$FF80], a                                ; $4F0C: $E0 $80
    sub b                                         ; $4F0E: $90

jr_012_4F0F:
    ld h, b                                       ; $4F0F: $60
    ret z                                         ; $4F10: $C8

    jr nc, jr_012_4F0F                            ; $4F11: $30 $FC

    ret nz                                        ; $4F13: $C0

    cp $5C                                        ; $4F14: $FE $5C
    rst RST_38                                    ; $4F16: $FF
    ld l, [hl]                                    ; $4F17: $6E
    rst RST_38                                    ; $4F18: $FF
    xor [hl]                                      ; $4F19: $AE
    rst RST_38                                    ; $4F1A: $FF
    ld l, $3E                                     ; $4F1B: $2E $3E
    inc e                                         ; $4F1D: $1C
    sbc h                                         ; $4F1E: $9C
    nop                                           ; $4F1F: $00
    or $6D                                        ; $4F20: $F6 $6D
    rst RST_38                                    ; $4F22: $FF
    db $EC                                        ; $4F23: $EC
    cp $E3                                        ; $4F24: $FE $E3
    rst RST_38                                    ; $4F26: $FF
    rrca                                          ; $4F27: $0F
    rra                                           ; $4F28: $1F
    rrca                                          ; $4F29: $0F
    rrca                                          ; $4F2A: $0F
    rlca                                          ; $4F2B: $07
    rrca                                          ; $4F2C: $0F
    rlca                                          ; $4F2D: $07
    ccf                                           ; $4F2E: $3F
    nop                                           ; $4F2F: $00
    ld c, a                                       ; $4F30: $4F
    scf                                           ; $4F31: $37
    add a                                         ; $4F32: $87
    ld a, e                                       ; $4F33: $7B
    rst RST_38                                    ; $4F34: $FF
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
    ccf                                           ; $4F40: $3F
    ret nz                                        ; $4F41: $C0

    rst RST_18                                    ; $4F42: $DF
    cpl                                           ; $4F43: $2F
    cpl                                           ; $4F44: $2F
    sub $2E                                       ; $4F45: $D6 $2E
    push de                                       ; $4F47: $D5
    ld a, $C1                                     ; $4F48: $3E $C1
    ld b, a                                       ; $4F4A: $47
    add d                                         ; $4F4B: $82
    rst RST_00                                    ; $4F4C: $C7
    add d                                         ; $4F4D: $82
    add a                                         ; $4F4E: $87
    ld bc, $0187                                  ; $4F4F: $01 $87 $01
    add l                                         ; $4F52: $85
    ld [bc], a                                    ; $4F53: $02
    add h                                         ; $4F54: $84
    inc bc                                        ; $4F55: $03
    inc bc                                        ; $4F56: $03
    nop                                           ; $4F57: $00
    nop                                           ; $4F58: $00
    nop                                           ; $4F59: $00
    nop                                           ; $4F5A: $00
    nop                                           ; $4F5B: $00
    nop                                           ; $4F5C: $00
    nop                                           ; $4F5D: $00
    nop                                           ; $4F5E: $00
    nop                                           ; $4F5F: $00
    rst RST_38                                    ; $4F60: $FF
    dec d                                         ; $4F61: $15
    rst RST_18                                    ; $4F62: $DF
    dec h                                         ; $4F63: $25
    daa                                           ; $4F64: $27
    jp $E013                                      ; $4F65: $C3 $13 $E0


    db $10                                        ; $4F68: $10
    ldh [$FF08], a                                ; $4F69: $E0 $08
    ldh a, [$FF08]                                ; $4F6B: $F0 $08
    ldh a, [$FF98]                                ; $4F6D: $F0 $98
    ld h, b                                       ; $4F6F: $60
    db $EC                                        ; $4F70: $EC
    sbc b                                         ; $4F71: $98
    db $FC                                        ; $4F72: $FC
    ret c                                         ; $4F73: $D8

    ld hl, sp+$60                                 ; $4F74: $F8 $60
    ld [hl], b                                    ; $4F76: $70
    nop                                           ; $4F77: $00
    nop                                           ; $4F78: $00
    nop                                           ; $4F79: $00
    nop                                           ; $4F7A: $00
    nop                                           ; $4F7B: $00
    nop                                           ; $4F7C: $00
    nop                                           ; $4F7D: $00
    nop                                           ; $4F7E: $00
    nop                                           ; $4F7F: $00
    nop                                           ; $4F80: $00
    nop                                           ; $4F81: $00
    nop                                           ; $4F82: $00
    nop                                           ; $4F83: $00
    nop                                           ; $4F84: $00
    nop                                           ; $4F85: $00
    nop                                           ; $4F86: $00
    nop                                           ; $4F87: $00
    add b                                         ; $4F88: $80
    nop                                           ; $4F89: $00
    ret nz                                        ; $4F8A: $C0

    nop                                           ; $4F8B: $00
    and b                                         ; $4F8C: $A0
    ld b, b                                       ; $4F8D: $40
    ldh [rP1], a                                  ; $4F8E: $E0 $00
    ldh [rLCDC], a                                ; $4F90: $E0 $40
    ldh [rLCDC], a                                ; $4F92: $E0 $40
    ret nz                                        ; $4F94: $C0

    add b                                         ; $4F95: $80
    add b                                         ; $4F96: $80
    nop                                           ; $4F97: $00
    add b                                         ; $4F98: $80
    nop                                           ; $4F99: $00
    add b                                         ; $4F9A: $80
    nop                                           ; $4F9B: $00
    nop                                           ; $4F9C: $00
    nop                                           ; $4F9D: $00
    nop                                           ; $4F9E: $00
    nop                                           ; $4F9F: $00
    ld hl, sp-$40                                 ; $4FA0: $F8 $C0
    cp $F0                                        ; $4FA2: $FE $F0
    db $FD                                        ; $4FA4: $FD
    ld l, $FE                                     ; $4FA5: $2E $FE
    ret nz                                        ; $4FA7: $C0

    ldh a, [$FFE0]                                ; $4FA8: $F0 $E0
    ldh a, [$FFC0]                                ; $4FAA: $F0 $C0
    add sp, $30                                   ; $4FAC: $E8 $30
    ld [hl], h                                    ; $4FAE: $74
    cp b                                          ; $4FAF: $B8
    db $E4                                        ; $4FB0: $E4
    ld a, b                                       ; $4FB1: $78
    db $F4                                        ; $4FB2: $F4
    jr c, jr_012_4FD9                             ; $4FB3: $38 $24

    ret c                                         ; $4FB5: $D8

    db $F4                                        ; $4FB6: $F4
    ld e, b                                       ; $4FB7: $58
    ld a, l                                       ; $4FB8: $7D
    add b                                         ; $4FB9: $80
    rst RST_30                                    ; $4FBA: $F7
    sbc c                                         ; $4FBB: $99
    db $EB                                        ; $4FBC: $EB
    ld d, l                                       ; $4FBD: $55
    ei                                            ; $4FBE: $FB
    push bc                                       ; $4FBF: $C5
    dec sp                                        ; $4FC0: $3B
    db $DD                                        ; $4FC1: $DD
    rst RST_38                                    ; $4FC2: $FF
    inc bc                                        ; $4FC3: $03
    rst RST_30                                    ; $4FC4: $F7
    jp c, $18FF                                   ; $4FC5: $DA $FF $18

    rst RST_38                                    ; $4FC8: $FF
    ret nz                                        ; $4FC9: $C0

    rst RST_18                                    ; $4FCA: $DF
    ld hl, $867F                                  ; $4FCB: $21 $7F $86
    or $48                                        ; $4FCE: $F6 $48
    db $FC                                        ; $4FD0: $FC
    jr nz, @-$04                                  ; $4FD1: $20 $FA

    ld l, h                                       ; $4FD3: $6C
    db $FC                                        ; $4FD4: $FC
    or b                                          ; $4FD5: $B0
    ld hl, sp-$50                                 ; $4FD6: $F8 $B0
    db $F4                                        ; $4FD8: $F4

jr_012_4FD9:
    xor b                                         ; $4FD9: $A8
    ld hl, sp-$40                                 ; $4FDA: $F8 $C0
    ldh a, [$FFE0]                                ; $4FDC: $F0 $E0
    ldh [rP1], a                                  ; $4FDE: $E0 $00
    rlca                                          ; $4FE0: $07
    nop                                           ; $4FE1: $00
    rrca                                          ; $4FE2: $0F
    dec b                                         ; $4FE3: $05
    rrca                                          ; $4FE4: $0F
    ld b, $0F                                     ; $4FE5: $06 $0F
    rlca                                          ; $4FE7: $07
    rrca                                          ; $4FE8: $0F
    rlca                                          ; $4FE9: $07
    rlca                                          ; $4FEA: $07
    inc bc                                        ; $4FEB: $03
    inc bc                                        ; $4FEC: $03
    nop                                           ; $4FED: $00
    inc b                                         ; $4FEE: $04
    inc bc                                        ; $4FEF: $03
    inc b                                         ; $4FF0: $04
    inc bc                                        ; $4FF1: $03
    add a                                         ; $4FF2: $87
    nop                                           ; $4FF3: $00
    ld c, [hl]                                    ; $4FF4: $4E
    add l                                         ; $4FF5: $85
    ld a, a                                       ; $4FF6: $7F
    adc d                                         ; $4FF7: $8A

Call_012_4FF8:
    ld a, e                                       ; $4FF8: $7B
    sub l                                         ; $4FF9: $95
    ei                                            ; $4FFA: $FB
    ld d, l                                       ; $4FFB: $55
    ei                                            ; $4FFC: $FB
    sub $FF                                       ; $4FFD: $D6 $FF
    db $DB                                        ; $4FFF: $DB
    cp $4D                                        ; $5000: $FE $4D
    ld a, a                                       ; $5002: $7F
    sub [hl]                                      ; $5003: $96
    ld a, a                                       ; $5004: $7F
    sbc e                                         ; $5005: $9B
    cp a                                          ; $5006: $BF
    inc e                                         ; $5007: $1C
    rra                                           ; $5008: $1F
    dec bc                                        ; $5009: $0B
    rrca                                          ; $500A: $0F
    ld bc, $0205                                  ; $500B: $01 $05 $02
    dec b                                         ; $500E: $05
    ld [bc], a                                    ; $500F: $02
    dec b                                         ; $5010: $05
    ld [bc], a                                    ; $5011: $02
    inc bc                                        ; $5012: $03
    ld bc, $0307                                  ; $5013: $01 $07 $03
    rlca                                          ; $5016: $07
    inc bc                                        ; $5017: $03
    rlca                                          ; $5018: $07
    inc bc                                        ; $5019: $03
    rlca                                          ; $501A: $07
    inc bc                                        ; $501B: $03
    inc bc                                        ; $501C: $03
    ld bc, $0001                                  ; $501D: $01 $01 $00
    nop                                           ; $5020: $00
    nop                                           ; $5021: $00
    nop                                           ; $5022: $00
    nop                                           ; $5023: $00
    nop                                           ; $5024: $00
    nop                                           ; $5025: $00
    nop                                           ; $5026: $00
    nop                                           ; $5027: $00
    nop                                           ; $5028: $00
    nop                                           ; $5029: $00
    nop                                           ; $502A: $00
    nop                                           ; $502B: $00
    nop                                           ; $502C: $00
    nop                                           ; $502D: $00
    nop                                           ; $502E: $00
    nop                                           ; $502F: $00
    nop                                           ; $5030: $00
    nop                                           ; $5031: $00
    nop                                           ; $5032: $00
    nop                                           ; $5033: $00
    nop                                           ; $5034: $00
    nop                                           ; $5035: $00
    nop                                           ; $5036: $00
    nop                                           ; $5037: $00
    ld [$5500], sp                                ; $5038: $08 $00 $55
    ld [$49BE], sp                                ; $503B: $08 $BE $49
    rst RST_38                                    ; $503E: $FF
    ld c, d                                       ; $503F: $4A
    nop                                           ; $5040: $00
    nop                                           ; $5041: $00
    nop                                           ; $5042: $00
    nop                                           ; $5043: $00
    nop                                           ; $5044: $00
    nop                                           ; $5045: $00
    nop                                           ; $5046: $00
    nop                                           ; $5047: $00
    nop                                           ; $5048: $00
    nop                                           ; $5049: $00
    ld e, $00                                     ; $504A: $1E $00
    ld a, l                                       ; $504C: $7D
    ld d, $FF                                     ; $504D: $16 $FF
    halt                                          ; $504F: $76
    rst RST_38                                    ; $5050: $FF
    ld hl, sp-$06                                 ; $5051: $F8 $FA
    db $FD                                        ; $5053: $FD
    ldh a, [c]                                    ; $5054: $F2
    db $FD                                        ; $5055: $FD
    db $E4                                        ; $5056: $E4
    dec sp                                        ; $5057: $3B
    inc a                                         ; $5058: $3C
    inc bc                                        ; $5059: $03
    inc bc                                        ; $505A: $03
    nop                                           ; $505B: $00
    inc bc                                        ; $505C: $03
    ld bc, $003F                                  ; $505D: $01 $3F $00
    db $FC                                        ; $5060: $FC
    inc sp                                        ; $5061: $33
    ld a, [$FEED]                                 ; $5062: $FA $ED $FE
    db $ED                                        ; $5065: $ED
    cp $F1                                        ; $5066: $FE $F1
    di                                            ; $5068: $F3
    db $FC                                        ; $5069: $FC
    call nz, $F8F8                                ; $506A: $C4 $F8 $F8
    nop                                           ; $506D: $00
    nop                                           ; $506E: $00
    nop                                           ; $506F: $00
    nop                                           ; $5070: $00
    nop                                           ; $5071: $00
    nop                                           ; $5072: $00
    nop                                           ; $5073: $00
    nop                                           ; $5074: $00
    nop                                           ; $5075: $00
    nop                                           ; $5076: $00
    nop                                           ; $5077: $00
    nop                                           ; $5078: $00
    nop                                           ; $5079: $00
    nop                                           ; $507A: $00
    nop                                           ; $507B: $00
    nop                                           ; $507C: $00
    nop                                           ; $507D: $00
    nop                                           ; $507E: $00
    nop                                           ; $507F: $00
    nop                                           ; $5080: $00
    nop                                           ; $5081: $00
    nop                                           ; $5082: $00
    nop                                           ; $5083: $00
    nop                                           ; $5084: $00
    nop                                           ; $5085: $00
    nop                                           ; $5086: $00
    nop                                           ; $5087: $00
    nop                                           ; $5088: $00
    nop                                           ; $5089: $00
    nop                                           ; $508A: $00
    nop                                           ; $508B: $00
    nop                                           ; $508C: $00
    nop                                           ; $508D: $00
    ld h, b                                       ; $508E: $60
    nop                                           ; $508F: $00
    sub b                                         ; $5090: $90
    ld h, b                                       ; $5091: $60
    adc b                                         ; $5092: $88
    ld [hl], b                                    ; $5093: $70
    ld c, h                                       ; $5094: $4C
    jr nc, jr_012_50F6                            ; $5095: $30 $5F

    inc l                                         ; $5097: $2C
    ccf                                           ; $5098: $3F
    ld e, $3F                                     ; $5099: $1E $3F
    ld e, $1E                                     ; $509B: $1E $1E
    inc c                                         ; $509D: $0C
    inc c                                         ; $509E: $0C
    nop                                           ; $509F: $00
    ld bc, $1F00                                  ; $50A0: $01 $00 $1F
    ld bc, $1827                                  ; $50A3: $01 $27 $18
    ld b, e                                       ; $50A6: $43
    inc a                                         ; $50A7: $3C
    ld b, e                                       ; $50A8: $43
    inc a                                         ; $50A9: $3C
    ld b, e                                       ; $50AA: $43
    inc a                                         ; $50AB: $3C
    inc a                                         ; $50AC: $3C
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
    nop                                           ; $50D8: $00
    nop                                           ; $50D9: $00
    nop                                           ; $50DA: $00
    nop                                           ; $50DB: $00
    nop                                           ; $50DC: $00
    nop                                           ; $50DD: $00
    add b                                         ; $50DE: $80
    nop                                           ; $50DF: $00
    nop                                           ; $50E0: $00
    nop                                           ; $50E1: $00
    nop                                           ; $50E2: $00
    nop                                           ; $50E3: $00
    nop                                           ; $50E4: $00
    nop                                           ; $50E5: $00
    nop                                           ; $50E6: $00
    nop                                           ; $50E7: $00
    nop                                           ; $50E8: $00
    nop                                           ; $50E9: $00
    nop                                           ; $50EA: $00
    nop                                           ; $50EB: $00
    nop                                           ; $50EC: $00
    nop                                           ; $50ED: $00
    ldh [rP1], a                                  ; $50EE: $E0 $00
    ldh a, [rLCDC]                                ; $50F0: $F0 $40
    add sp, $50                                   ; $50F2: $E8 $50
    ld hl, sp+$40                                 ; $50F4: $F8 $40

jr_012_50F6:
    ld hl, sp+$50                                 ; $50F6: $F8 $50
    ld hl, sp-$30                                 ; $50F8: $F8 $D0

jr_012_50FA:
    ldh a, [$FFA0]                                ; $50FA: $F0 $A0
    ldh [$FF80], a                                ; $50FC: $E0 $80
    add b                                         ; $50FE: $80
    nop                                           ; $50FF: $00
    ldh [rP1], a                                  ; $5100: $E0 $00
    sub $60                                       ; $5102: $D6 $60
    db $FD                                        ; $5104: $FD
    ld h, [hl]                                    ; $5105: $66
    ld a, [$FE95]                                 ; $5106: $FA $95 $FE
    pop af                                        ; $5109: $F1
    adc [hl]                                      ; $510A: $8E
    ld [hl], a                                    ; $510B: $77
    rst RST_38                                    ; $510C: $FF
    add b                                         ; $510D: $80
    db $FD                                        ; $510E: $FD
    or $FF                                        ; $510F: $F6 $FF
    ld [bc], a                                    ; $5111: $02
    rst RST_38                                    ; $5112: $FF
    ld a, b                                       ; $5113: $78
    ld sp, hl                                     ; $5114: $F9
    ld a, [hl]                                    ; $5115: $7E
    db $FD                                        ; $5116: $FD
    ld a, [hl]                                    ; $5117: $7E
    ld a, c                                       ; $5118: $79
    cp [hl]                                       ; $5119: $BE
    ld a, l                                       ; $511A: $7D
    cp [hl]                                       ; $511B: $BE
    ld a, d                                       ; $511C: $7A
    cp h                                          ; $511D: $BC
    cp d                                          ; $511E: $BA
    inc e                                         ; $511F: $1C
    nop                                           ; $5120: $00
    nop                                           ; $5121: $00
    nop                                           ; $5122: $00
    nop                                           ; $5123: $00
    nop                                           ; $5124: $00
    nop                                           ; $5125: $00
    nop                                           ; $5126: $00
    nop                                           ; $5127: $00
    nop                                           ; $5128: $00
    nop                                           ; $5129: $00
    nop                                           ; $512A: $00
    nop                                           ; $512B: $00
    nop                                           ; $512C: $00
    nop                                           ; $512D: $00
    nop                                           ; $512E: $00
    nop                                           ; $512F: $00
    nop                                           ; $5130: $00
    nop                                           ; $5131: $00
    nop                                           ; $5132: $00
    nop                                           ; $5133: $00
    add b                                         ; $5134: $80
    nop                                           ; $5135: $00
    ld b, b                                       ; $5136: $40
    add b                                         ; $5137: $80
    jr nz, jr_012_50FA                            ; $5138: $20 $C0

    ld de, $0EE0                                  ; $513A: $11 $E0 $0E
    pop af                                        ; $513D: $F1
    ld a, $C5                                     ; $513E: $3E $C5
    ld a, [hl]                                    ; $5140: $7E
    or l                                          ; $5141: $B5
    rst RST_38                                    ; $5142: $FF
    ld [hl], $3F                                  ; $5143: $36 $3F
    rst RST_10                                    ; $5145: $D7
    rra                                           ; $5146: $1F
    db $E3                                        ; $5147: $E3
    rra                                           ; $5148: $1F
    push hl                                       ; $5149: $E5
    rra                                           ; $514A: $1F
    and $E7                                       ; $514B: $E6 $E7
    inc bc                                        ; $514D: $03
    inc bc                                        ; $514E: $03
    ld bc, $0001                                  ; $514F: $01 $01 $00
    cp l                                          ; $5152: $BD
    nop                                           ; $5153: $00
    cp $BD                                        ; $5154: $FE $BD
    rst RST_38                                    ; $5156: $FF
    cp [hl]                                       ; $5157: $BE
    rst RST_38                                    ; $5158: $FF
    cp [hl]                                       ; $5159: $BE
    rst RST_38                                    ; $515A: $FF
    cp [hl]                                       ; $515B: $BE
    cp $3C                                        ; $515C: $FE $3C
    inc a                                         ; $515E: $3C
    nop                                           ; $515F: $00
    ld b, $00                                     ; $5160: $06 $00
    dec c                                         ; $5162: $0D
    ld b, $1F                                     ; $5163: $06 $1F
    ld b, $1E                                     ; $5165: $06 $1E
    add hl, bc                                    ; $5167: $09
    ld a, $1D                                     ; $5168: $3E $1D
    ld a, $1D                                     ; $516A: $3E $1D
    ld a, a                                       ; $516C: $7F
    ld a, $FF                                     ; $516D: $3E $FF
    inc a                                         ; $516F: $3C
    db $FC                                        ; $5170: $FC
    add b                                         ; $5171: $80
    add a                                         ; $5172: $87
    ld a, b                                       ; $5173: $78
    ld a, [hl]                                    ; $5174: $7E
    ld sp, hl                                     ; $5175: $F9
    db $FD                                        ; $5176: $FD
    or $FF                                        ; $5177: $F6 $FF
    or $FF                                        ; $5179: $F6 $FF
    ld a, b                                       ; $517B: $78
    ld a, d                                       ; $517C: $7A
    nop                                           ; $517D: $00
    dec b                                         ; $517E: $05
    ld [bc], a                                    ; $517F: $02
    rra                                           ; $5180: $1F
    nop                                           ; $5181: $00
    cpl                                           ; $5182: $2F
    dec e                                         ; $5183: $1D
    rra                                           ; $5184: $1F
    ld bc, $1D2F                                  ; $5185: $01 $2F $1D
    rra                                           ; $5188: $1F
    ld bc, $0C17                                  ; $5189: $01 $17 $0C
    inc c                                         ; $518C: $0C
    nop                                           ; $518D: $00
    nop                                           ; $518E: $00
    nop                                           ; $518F: $00
    nop                                           ; $5190: $00
    nop                                           ; $5191: $00
    nop                                           ; $5192: $00
    nop                                           ; $5193: $00
    nop                                           ; $5194: $00
    nop                                           ; $5195: $00
    nop                                           ; $5196: $00
    nop                                           ; $5197: $00
    nop                                           ; $5198: $00
    nop                                           ; $5199: $00
    nop                                           ; $519A: $00
    nop                                           ; $519B: $00
    nop                                           ; $519C: $00
    nop                                           ; $519D: $00
    nop                                           ; $519E: $00
    nop                                           ; $519F: $00
    ld bc, $0300                                  ; $51A0: $01 $00 $03
    ld bc, $003F                                  ; $51A3: $01 $3F $00
    ld e, a                                       ; $51A6: $5F
    ld l, $8F                                     ; $51A7: $2E $8F
    halt                                          ; $51A9: $76
    adc a                                         ; $51AA: $8F
    halt                                          ; $51AB: $76
    rst RST_08                                    ; $51AC: $CF
    ld [hl], $3E                                  ; $51AD: $36 $3E
    nop                                           ; $51AF: $00
    nop                                           ; $51B0: $00
    nop                                           ; $51B1: $00
    nop                                           ; $51B2: $00
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
    inc e                                         ; $51C0: $1C
    nop                                           ; $51C1: $00
    nop                                           ; $51C2: $00
    nop                                           ; $51C3: $00
    nop                                           ; $51C4: $00
    nop                                           ; $51C5: $00
    nop                                           ; $51C6: $00
    nop                                           ; $51C7: $00
    nop                                           ; $51C8: $00
    nop                                           ; $51C9: $00
    nop                                           ; $51CA: $00
    nop                                           ; $51CB: $00
    nop                                           ; $51CC: $00
    nop                                           ; $51CD: $00
    nop                                           ; $51CE: $00
    nop                                           ; $51CF: $00
    nop                                           ; $51D0: $00
    nop                                           ; $51D1: $00
    nop                                           ; $51D2: $00
    nop                                           ; $51D3: $00
    nop                                           ; $51D4: $00
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
    rlca                                          ; $51E4: $07
    nop                                           ; $51E5: $00
    ld [$1507], sp                                ; $51E6: $08 $07 $15
    rrca                                          ; $51E9: $0F
    rra                                           ; $51EA: $1F
    rrca                                          ; $51EB: $0F
    rra                                           ; $51EC: $1F
    rrca                                          ; $51ED: $0F
    rra                                           ; $51EE: $1F
    inc bc                                        ; $51EF: $03
    ld l, e                                       ; $51F0: $6B
    ld de, $68B7                                  ; $51F1: $11 $B7 $68
    rst RST_38                                    ; $51F4: $FF
    ld a, [bc]                                    ; $51F5: $0A
    cp a                                          ; $51F6: $BF
    ld [hl], a                                    ; $51F7: $77
    rst RST_38                                    ; $51F8: $FF
    rlca                                          ; $51F9: $07
    cp a                                          ; $51FA: $BF
    ld [hl], a                                    ; $51FB: $77
    ld a, a                                       ; $51FC: $7F
    ld c, $3E                                     ; $51FD: $0E $3E
    nop                                           ; $51FF: $00
    nop                                           ; $5200: $00
    nop                                           ; $5201: $00
    rra                                           ; $5202: $1F
    nop                                           ; $5203: $00
    rla                                           ; $5204: $17
    dec bc                                        ; $5205: $0B
    rla                                           ; $5206: $17
    ld [$073F], sp                                ; $5207: $08 $3F $07
    rst RST_38                                    ; $520A: $FF
    jr jr_012_5246                                ; $520B: $18 $39

    and $77                                       ; $520D: $E6 $77
    jp hl                                         ; $520F: $E9


    ei                                            ; $5210: $FB
    db $ED                                        ; $5211: $ED
    rst RST_38                                    ; $5212: $FF
    add b                                         ; $5213: $80
    cp [hl]                                       ; $5214: $BE
    ld h, a                                       ; $5215: $67
    xor [hl]                                      ; $5216: $AE
    ld e, e                                       ; $5217: $5B
    cp [hl]                                       ; $5218: $BE
    ld e, e                                       ; $5219: $5B
    ld a, a                                       ; $521A: $7F
    and [hl]                                      ; $521B: $A6
    and e                                         ; $521C: $A3
    ld e, l                                       ; $521D: $5D
    rst RST_18                                    ; $521E: $DF
    inc bc                                        ; $521F: $03
    ld hl, sp+$00                                 ; $5220: $F8 $00
    db $FC                                        ; $5222: $FC
    ld [$C4FE], sp                                ; $5223: $08 $FE $C4
    cp $04                                        ; $5226: $FE $04
    rst RST_38                                    ; $5228: $FF
    and $FF                                       ; $5229: $E6 $FF
    add b                                         ; $522B: $80
    or b                                          ; $522C: $B0
    ld l, a                                       ; $522D: $6F

jr_012_522E:
    push af                                       ; $522E: $F5
    ld l, a                                       ; $522F: $6F
    rst RST_38                                    ; $5230: $FF
    rra                                           ; $5231: $1F
    rst RST_38                                    ; $5232: $FF
    ccf                                           ; $5233: $3F
    rst RST_38                                    ; $5234: $FF
    rlca                                          ; $5235: $07
    cp a                                          ; $5236: $BF
    ld l, b                                       ; $5237: $68
    cp a                                          ; $5238: $BF
    ld c, l                                       ; $5239: $4D
    rst RST_18                                    ; $523A: $DF
    or [hl]                                       ; $523B: $B6
    rst RST_18                                    ; $523C: $DF
    and [hl]                                      ; $523D: $A6
    rst RST_28                                    ; $523E: $EF
    ld e, c                                       ; $523F: $59
    nop                                           ; $5240: $00
    nop                                           ; $5241: $00
    nop                                           ; $5242: $00
    nop                                           ; $5243: $00
    nop                                           ; $5244: $00
    nop                                           ; $5245: $00

jr_012_5246:
    nop                                           ; $5246: $00
    nop                                           ; $5247: $00
    nop                                           ; $5248: $00
    nop                                           ; $5249: $00
    ldh [rP1], a                                  ; $524A: $E0 $00
    jr nc, jr_012_522E                            ; $524C: $30 $E0

    ld e, b                                       ; $524E: $58
    ldh a, [$FFF8]                                ; $524F: $F0 $F8

jr_012_5251:
    ldh a, [$FFF8]                                ; $5251: $F0 $F8
    ldh a, [$FFF0]                                ; $5253: $F0 $F0
    add b                                         ; $5255: $80
    ret nz                                        ; $5256: $C0

    nop                                           ; $5257: $00
    ldh [$FFC0], a                                ; $5258: $E0 $C0
    ldh a, [$FFE0]                                ; $525A: $F0 $E0
    ldh a, [$FFE0]                                ; $525C: $F0 $E0
    ldh a, [$FFE0]                                ; $525E: $F0 $E0
    ld hl, sp+$70                                 ; $5260: $F8 $70
    di                                            ; $5262: $F3
    ldh [$FFE4], a                                ; $5263: $E0 $E4
    inc bc                                        ; $5265: $03
    jr jr_012_526F                                ; $5266: $18 $07

    inc l                                         ; $5268: $2C
    dec de                                        ; $5269: $1B
    ccf                                           ; $526A: $3F
    jr jr_012_52AB                                ; $526B: $18 $3E

    rlca                                          ; $526D: $07
    ccf                                           ; $526E: $3F

jr_012_526F:
    rra                                           ; $526F: $1F
    rra                                           ; $5270: $1F
    rrca                                          ; $5271: $0F
    rra                                           ; $5272: $1F
    rrca                                          ; $5273: $0F
    rrca                                          ; $5274: $0F
    rlca                                          ; $5275: $07
    ccf                                           ; $5276: $3F
    nop                                           ; $5277: $00
    ld c, a                                       ; $5278: $4F
    scf                                           ; $5279: $37
    add a                                         ; $527A: $87
    ld a, e                                       ; $527B: $7B
    rst RST_38                                    ; $527C: $FF
    nop                                           ; $527D: $00
    nop                                           ; $527E: $00
    nop                                           ; $527F: $00
    rst RST_38                                    ; $5280: $FF
    nop                                           ; $5281: $00
    rst RST_38                                    ; $5282: $FF
    ld a, h                                       ; $5283: $7C
    ld a, h                                       ; $5284: $7C
    cp e                                          ; $5285: $BB
    jr c, @-$27                                   ; $5286: $38 $D7

    jr c, jr_012_5251                             ; $5288: $38 $C7

    ret                                           ; $528A: $C9


    ld b, $46                                     ; $528B: $06 $46
    add c                                         ; $528D: $81
    ld b, a                                       ; $528E: $47
    add c                                         ; $528F: $81
    ld b, a                                       ; $5290: $47
    add d                                         ; $5291: $82
    add a                                         ; $5292: $87
    inc bc                                        ; $5293: $03
    add e                                         ; $5294: $83

jr_012_5295:
    ld bc, $0001                                  ; $5295: $01 $01 $00
    add b                                         ; $5298: $80
    nop                                           ; $5299: $00
    add b                                         ; $529A: $80
    nop                                           ; $529B: $00
    add b                                         ; $529C: $80
    nop                                           ; $529D: $00
    nop                                           ; $529E: $00
    nop                                           ; $529F: $00
    cp [hl]                                       ; $52A0: $BE
    inc e                                         ; $52A1: $1C
    inc e                                         ; $52A2: $1C
    nop                                           ; $52A3: $00
    add b                                         ; $52A4: $80
    nop                                           ; $52A5: $00
    ld b, b                                       ; $52A6: $40
    add b                                         ; $52A7: $80
    ld h, b                                       ; $52A8: $60
    add b                                         ; $52A9: $80
    ret nc                                        ; $52AA: $D0

jr_012_52AB:
    jr nz, jr_012_5295                            ; $52AB: $20 $E8

    or b                                          ; $52AD: $B0
    add sp, -$50                                  ; $52AE: $E8 $B0
    ld hl, sp+$70                                 ; $52B0: $F8 $70
    db $FC                                        ; $52B2: $FC
    ld hl, sp-$04                                 ; $52B3: $F8 $FC
    ld hl, sp-$04                                 ; $52B5: $F8 $FC
    ret nz                                        ; $52B7: $C0

    db $FC                                        ; $52B8: $FC
    nop                                           ; $52B9: $00
    ld h, d                                       ; $52BA: $62
    inc e                                         ; $52BB: $1C
    ld b, c                                       ; $52BC: $41
    ld a, $7F                                     ; $52BD: $3E $7F
    nop                                           ; $52BF: $00
    ccf                                           ; $52C0: $3F
    nop                                           ; $52C1: $00
    ld d, c                                       ; $52C2: $51
    ld l, $FF                                     ; $52C3: $2E $FF
    ld l, [hl]                                    ; $52C5: $6E
    rst RST_38                                    ; $52C6: $FF
    ld b, b                                       ; $52C7: $40
    or a                                          ; $52C8: $B7
    ld c, [hl]                                    ; $52C9: $4E
    ld e, a                                       ; $52CA: $5F
    jr nz, jr_012_5305                            ; $52CB: $20 $38

    nop                                           ; $52CD: $00
    nop                                           ; $52CE: $00
    nop                                           ; $52CF: $00
    nop                                           ; $52D0: $00
    nop                                           ; $52D1: $00
    nop                                           ; $52D2: $00
    nop                                           ; $52D3: $00
    nop                                           ; $52D4: $00
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
    nop                                           ; $52E7: $00
    nop                                           ; $52E8: $00
    nop                                           ; $52E9: $00
    nop                                           ; $52EA: $00
    nop                                           ; $52EB: $00
    nop                                           ; $52EC: $00
    nop                                           ; $52ED: $00
    ld bc, $0200                                  ; $52EE: $01 $00 $02
    ld bc, $01FF                                  ; $52F1: $01 $FF $01
    inc bc                                        ; $52F4: $03
    db $FD                                        ; $52F5: $FD
    rst RST_38                                    ; $52F6: $FF
    cp $FF                                        ; $52F7: $FE $FF
    cp $FF                                        ; $52F9: $FE $FF
    cp $FF                                        ; $52FB: $FE $FF
    cp $FF                                        ; $52FD: $FE $FF
    nop                                           ; $52FF: $00
    nop                                           ; $5300: $00
    nop                                           ; $5301: $00
    inc bc                                        ; $5302: $03
    nop                                           ; $5303: $00
    ld [bc], a                                    ; $5304: $02

jr_012_5305:
    ld bc, $0102                                  ; $5305: $01 $02 $01
    rlca                                          ; $5308: $07
    nop                                           ; $5309: $00
    rst RST_38                                    ; $530A: $FF
    inc bc                                        ; $530B: $03
    rlca                                          ; $530C: $07
    db $FC                                        ; $530D: $FC
    xor [hl]                                      ; $530E: $AE
    db $FD                                        ; $530F: $FD
    rst RST_38                                    ; $5310: $FF
    db $FD                                        ; $5311: $FD
    rst RST_38                                    ; $5312: $FF
    ldh a, [$FFF7]                                ; $5313: $F0 $F7
    ld l, h                                       ; $5315: $6C
    ld [hl], l                                    ; $5316: $75
    xor e                                         ; $5317: $AB
    scf                                           ; $5318: $37
    set 7, a                                      ; $5319: $CB $FF
    inc b                                         ; $531B: $04
    inc b                                         ; $531C: $04
    inc bc                                        ; $531D: $03
    inc bc                                        ; $531E: $03
    nop                                           ; $531F: $00
    rra                                           ; $5320: $1F
    nop                                           ; $5321: $00
    rst RST_38                                    ; $5322: $FF
    ld bc, $78FF                                  ; $5323: $01 $FF $78
    rst RST_38                                    ; $5326: $FF
    nop                                           ; $5327: $00
    rst RST_38                                    ; $5328: $FF
    db $FC                                        ; $5329: $FC
    rst RST_38                                    ; $532A: $FF
    db $10                                        ; $532B: $10
    ld [hl], $CD                                  ; $532C: $36 $CD
    cp $2D                                        ; $532E: $FE $2D
    ld a, a                                       ; $5330: $7F
    and e                                         ; $5331: $A3
    rst RST_38                                    ; $5332: $FF
    inc bc                                        ; $5333: $03
    rst RST_18                                    ; $5334: $DF
    db $EB                                        ; $5335: $EB
    rst RST_18                                    ; $5336: $DF
    ld l, b                                       ; $5337: $68
    db $DB                                        ; $5338: $DB
    ld h, [hl]                                    ; $5339: $66
    ei                                            ; $533A: $FB
    call nc, $B37D                                ; $533B: $D4 $7D $B3
    db $FD                                        ; $533E: $FD
    ld l, d                                       ; $533F: $6A
    add b                                         ; $5340: $80
    nop                                           ; $5341: $00
    ret nz                                        ; $5342: $C0

    add b                                         ; $5343: $80
    ret nz                                        ; $5344: $C0

    add b                                         ; $5345: $80
    ldh [$FFC0], a                                ; $5346: $E0 $C0
    db $FC                                        ; $5348: $FC
    nop                                           ; $5349: $00
    ld b, $FC                                     ; $534A: $06 $FC
    xor e                                         ; $534C: $AB
    cp $FF                                        ; $534D: $FE $FF
    cp $FF                                        ; $534F: $FE $FF

jr_012_5351:
    cp $FE                                        ; $5351: $FE $FE
    ldh a, [$FFF0]                                ; $5353: $F0 $F0
    ld h, b                                       ; $5355: $60
    ld hl, sp-$80                                 ; $5356: $F8 $80
    db $FC                                        ; $5358: $FC
    ret c                                         ; $5359: $D8

    cp $6C                                        ; $535A: $FE $6C
    cp $6C                                        ; $535C: $FE $6C
    cp $9C                                        ; $535E: $FE $9C
    inc bc                                        ; $5360: $03
    nop                                           ; $5361: $00
    inc b                                         ; $5362: $04
    inc bc                                        ; $5363: $03
    jr jr_012_536D                                ; $5364: $18 $07

    inc l                                         ; $5366: $2C
    dec de                                        ; $5367: $1B
    ccf                                           ; $5368: $3F
    jr jr_012_53A9                                ; $5369: $18 $3E

    rlca                                          ; $536B: $07
    ccf                                           ; $536C: $3F

jr_012_536D:
    rra                                           ; $536D: $1F
    rra                                           ; $536E: $1F
    rrca                                          ; $536F: $0F
    rra                                           ; $5370: $1F
    rrca                                          ; $5371: $0F
    rrca                                          ; $5372: $0F
    rlca                                          ; $5373: $07
    ccf                                           ; $5374: $3F
    nop                                           ; $5375: $00
    ld c, a                                       ; $5376: $4F
    scf                                           ; $5377: $37
    add a                                         ; $5378: $87
    ld a, e                                       ; $5379: $7B
    rst RST_38                                    ; $537A: $FF
    nop                                           ; $537B: $00
    nop                                           ; $537C: $00
    nop                                           ; $537D: $00
    nop                                           ; $537E: $00
    nop                                           ; $537F: $00
    cp $01                                        ; $5380: $FE $01
    rst RST_38                                    ; $5382: $FF
    ld a, h                                       ; $5383: $7C
    ld a, h                                       ; $5384: $7C
    cp e                                          ; $5385: $BB
    jr c, @-$27                                   ; $5386: $38 $D7

    jr c, jr_012_5351                             ; $5388: $38 $C7

    ret                                           ; $538A: $C9


    ld b, $46                                     ; $538B: $06 $46
    add c                                         ; $538D: $81
    ld b, a                                       ; $538E: $47
    add c                                         ; $538F: $81
    ld b, a                                       ; $5390: $47
    add d                                         ; $5391: $82
    add a                                         ; $5392: $87

jr_012_5393:
    inc bc                                        ; $5393: $03
    add e                                         ; $5394: $83
    ld bc, $0001                                  ; $5395: $01 $01 $00
    add b                                         ; $5398: $80
    nop                                           ; $5399: $00
    add b                                         ; $539A: $80
    nop                                           ; $539B: $00
    add b                                         ; $539C: $80
    nop                                           ; $539D: $00
    nop                                           ; $539E: $00
    nop                                           ; $539F: $00
    db $FC                                        ; $53A0: $FC
    jr c, @-$46                                   ; $53A1: $38 $B8

    nop                                           ; $53A3: $00
    ld b, b                                       ; $53A4: $40
    add b                                         ; $53A5: $80
    ld h, b                                       ; $53A6: $60
    add b                                         ; $53A7: $80
    ret nc                                        ; $53A8: $D0

jr_012_53A9:
    jr nz, jr_012_5393                            ; $53A9: $20 $E8

    or b                                          ; $53AB: $B0
    add sp, -$50                                  ; $53AC: $E8 $B0
    ld hl, sp+$70                                 ; $53AE: $F8 $70
    db $FC                                        ; $53B0: $FC
    ld hl, sp-$04                                 ; $53B1: $F8 $FC
    ld hl, sp-$04                                 ; $53B3: $F8 $FC
    ret nz                                        ; $53B5: $C0

    db $FC                                        ; $53B6: $FC
    nop                                           ; $53B7: $00
    ld h, d                                       ; $53B8: $62
    inc e                                         ; $53B9: $1C
    ld b, c                                       ; $53BA: $41
    ld a, $7F                                     ; $53BB: $3E $7F
    nop                                           ; $53BD: $00
    nop                                           ; $53BE: $00
    nop                                           ; $53BF: $00
    ld h, b                                       ; $53C0: $60
    nop                                           ; $53C1: $00
    or b                                          ; $53C2: $B0
    ld h, b                                       ; $53C3: $60
    sbc b                                         ; $53C4: $98
    ld [hl], b                                    ; $53C5: $70
    sbc h                                         ; $53C6: $9C
    ld [hl], b                                    ; $53C7: $70
    ld a, a                                       ; $53C8: $7F
    inc b                                         ; $53C9: $04
    ld a, a                                       ; $53CA: $7F
    rlca                                          ; $53CB: $07
    ccf                                           ; $53CC: $3F
    rlca                                          ; $53CD: $07
    ccf                                           ; $53CE: $3F
    inc bc                                        ; $53CF: $03
    rra                                           ; $53D0: $1F
    inc bc                                        ; $53D1: $03
    rra                                           ; $53D2: $1F
    nop                                           ; $53D3: $00
    ld c, $00                                     ; $53D4: $0E $00
    nop                                           ; $53D6: $00
    nop                                           ; $53D7: $00
    nop                                           ; $53D8: $00
    nop                                           ; $53D9: $00
    nop                                           ; $53DA: $00
    nop                                           ; $53DB: $00
    nop                                           ; $53DC: $00
    nop                                           ; $53DD: $00
    nop                                           ; $53DE: $00
    nop                                           ; $53DF: $00
    nop                                           ; $53E0: $00
    nop                                           ; $53E1: $00
    ld bc, $0200                                  ; $53E2: $01 $00 $02
    ld bc, $0306                                  ; $53E5: $01 $06 $03
    rlca                                          ; $53E8: $07
    inc bc                                        ; $53E9: $03
    rlca                                          ; $53EA: $07
    inc bc                                        ; $53EB: $03
    inc sp                                        ; $53EC: $33
    ld bc, $106F                                  ; $53ED: $01 $6F $10
    or a                                          ; $53F0: $B7
    ld l, b                                       ; $53F1: $68
    cp $03                                        ; $53F2: $FE $03
    rst RST_20                                    ; $53F4: $E7
    dec de                                        ; $53F5: $1B
    sbc a                                         ; $53F6: $9F
    ld a, h                                       ; $53F7: $7C
    rst RST_38                                    ; $53F8: $FF
    ld a, [hl]                                    ; $53F9: $7E
    rst RST_38                                    ; $53FA: $FF
    ld a, [hl]                                    ; $53FB: $7E
    rst RST_38                                    ; $53FC: $FF
    ld a, $3E                                     ; $53FD: $3E $3E
    nop                                           ; $53FF: $00
    ei                                            ; $5400: $FB
    inc b                                         ; $5401: $04
    dec c                                         ; $5402: $0D
    or $BF                                        ; $5403: $F6 $BF
    ret nz                                        ; $5405: $C0

    rst RST_18                                    ; $5406: $DF
    or e                                          ; $5407: $B3
    rst RST_10                                    ; $5408: $D7
    xor l                                         ; $5409: $AD
    rst RST_18                                    ; $540A: $DF
    xor l                                         ; $540B: $AD
    rst RST_18                                    ; $540C: $DF
    inc sp                                        ; $540D: $33
    pop af                                        ; $540E: $F1
    adc [hl]                                      ; $540F: $8E
    rst RST_38                                    ; $5410: $FF
    ld b, c                                       ; $5411: $41
    rst RST_38                                    ; $5412: $FF
    rrca                                          ; $5413: $0F
    rrca                                          ; $5414: $0F
    ldh a, [rIF]                                  ; $5415: $F0 $0F
    rst RST_30                                    ; $5417: $F7
    rlca                                          ; $5418: $07
    ei                                            ; $5419: $FB
    rst RST_00                                    ; $541A: $C7
    ld a, [hl-]                                   ; $541B: $3A
    ccf                                           ; $541C: $3F
    nop                                           ; $541D: $00
    ld bc, $0000                                  ; $541E: $01 $00 $00
    nop                                           ; $5421: $00
    nop                                           ; $5422: $00
    nop                                           ; $5423: $00
    nop                                           ; $5424: $00
    nop                                           ; $5425: $00
    nop                                           ; $5426: $00
    nop                                           ; $5427: $00
    nop                                           ; $5428: $00
    nop                                           ; $5429: $00
    nop                                           ; $542A: $00
    nop                                           ; $542B: $00
    nop                                           ; $542C: $00
    nop                                           ; $542D: $00
    nop                                           ; $542E: $00
    nop                                           ; $542F: $00
    nop                                           ; $5430: $00
    nop                                           ; $5431: $00
    nop                                           ; $5432: $00
    nop                                           ; $5433: $00
    inc bc                                        ; $5434: $03
    nop                                           ; $5435: $00
    dec b                                         ; $5436: $05
    ld [bc], a                                    ; $5437: $02
    rrca                                          ; $5438: $0F
    nop                                           ; $5439: $00
    rrca                                          ; $543A: $0F
    rlca                                          ; $543B: $07
    rrca                                          ; $543C: $0F
    nop                                           ; $543D: $00
    inc b                                         ; $543E: $04
    inc bc                                        ; $543F: $03
    ldh a, [rP1]                                  ; $5440: $F0 $00
    ldh [$FF80], a                                ; $5442: $E0 $80
    sub b                                         ; $5444: $90
    ld h, b                                       ; $5445: $60
    ld [$08F0], sp                                ; $5446: $08 $F0 $08
    ldh a, [$FF0E]                                ; $5449: $F0 $0E
    ldh a, [$FF9D]                                ; $544B: $F0 $9D
    ld h, d                                       ; $544D: $62
    ld l, [hl]                                    ; $544E: $6E
    dec de                                        ; $544F: $1B
    ld a, [hl]                                    ; $5450: $7E
    dec de                                        ; $5451: $1B
    ld a, a                                       ; $5452: $7F
    daa                                           ; $5453: $27
    ld a, a                                       ; $5454: $7F
    ccf                                           ; $5455: $3F
    ccf                                           ; $5456: $3F
    rra                                           ; $5457: $1F
    rra                                           ; $5458: $1F
    ld c, $0F                                     ; $5459: $0E $0F
    nop                                           ; $545B: $00
    ld b, $01                                     ; $545C: $06 $01
    inc b                                         ; $545E: $04
    inc bc                                        ; $545F: $03
    ret nz                                        ; $5460: $C0

    nop                                           ; $5461: $00
    db $FC                                        ; $5462: $FC
    ret nz                                        ; $5463: $C0

    cp $24                                        ; $5464: $FE $24
    rst RST_38                                    ; $5466: $FF
    jp nz, Jump_012_72FF                          ; $5467: $C2 $FF $72

    ld a, a                                       ; $546A: $7F
    add d                                         ; $546B: $82
    sbc $B1                                       ; $546C: $DE $B1
    pop af                                        ; $546E: $F1
    xor [hl]                                      ; $546F: $AE
    rst RST_30                                    ; $5470: $F7
    inc c                                         ; $5471: $0C
    ld a, a                                       ; $5472: $7F
    xor c                                         ; $5473: $A9
    ld a, l                                       ; $5474: $7D
    xor d                                         ; $5475: $AA
    ld a, a                                       ; $5476: $7F
    xor h                                         ; $5477: $AC
    db $FC                                        ; $5478: $FC
    dec hl                                        ; $5479: $2B
    rst RST_38                                    ; $547A: $FF
    ldh [$FFFC], a                                ; $547B: $E0 $FC
    ret c                                         ; $547D: $D8

    ld hl, sp-$50                                 ; $547E: $F8 $B0
    nop                                           ; $5480: $00
    nop                                           ; $5481: $00
    nop                                           ; $5482: $00
    nop                                           ; $5483: $00
    nop                                           ; $5484: $00
    nop                                           ; $5485: $00
    nop                                           ; $5486: $00
    nop                                           ; $5487: $00
    nop                                           ; $5488: $00
    nop                                           ; $5489: $00
    nop                                           ; $548A: $00
    nop                                           ; $548B: $00
    ld b, b                                       ; $548C: $40
    nop                                           ; $548D: $00
    xor b                                         ; $548E: $A8
    ld b, b                                       ; $548F: $40
    db $F4                                        ; $5490: $F4
    ld c, b                                       ; $5491: $48
    cp $30                                        ; $5492: $FE $30
    rst RST_38                                    ; $5494: $FF
    ld a, [$46FF]                                 ; $5495: $FA $FF $46
    rst RST_38                                    ; $5498: $FF
    ld a, $FF                                     ; $5499: $3E $FF
    ld a, [hl]                                    ; $549B: $7E
    ld a, [hl]                                    ; $549C: $7E
    cp h                                          ; $549D: $BC
    cp h                                          ; $549E: $BC
    nop                                           ; $549F: $00
    and b                                         ; $54A0: $A0
    ret nz                                        ; $54A1: $C0

    and b                                         ; $54A2: $A0
    ret nz                                        ; $54A3: $C0

    ldh [$FFC0], a                                ; $54A4: $E0 $C0
    ldh a, [$FFE0]                                ; $54A6: $F0 $E0
    ldh a, [$FFE0]                                ; $54A8: $F0 $E0
    ldh a, [$FF80]                                ; $54AA: $F0 $80
    ldh a, [rP1]                                  ; $54AC: $F0 $00
    adc b                                         ; $54AE: $88
    ld [hl], b                                    ; $54AF: $70
    inc b                                         ; $54B0: $04
    ld hl, sp-$7C                                 ; $54B1: $F8 $84
    ld a, b                                       ; $54B3: $78
    ld a, h                                       ; $54B4: $7C
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
    inc bc                                        ; $54C0: $03
    nop                                           ; $54C1: $00
    ld [bc], a                                    ; $54C2: $02
    ld bc, $0102                                  ; $54C3: $01 $02 $01
    ld b, a                                       ; $54C6: $47
    nop                                           ; $54C7: $00
    or a                                          ; $54C8: $B7
    ld b, e                                       ; $54C9: $43
    db $EB                                        ; $54CA: $EB
    ld d, b                                       ; $54CB: $50
    cp $89                                        ; $54CC: $FE $89
    rst RST_38                                    ; $54CE: $FF
    db $ED                                        ; $54CF: $ED
    rst RST_38                                    ; $54D0: $FF
    ld d, [hl]                                    ; $54D1: $56
    rst RST_30                                    ; $54D2: $F7
    adc d                                         ; $54D3: $8A
    rst RST_38                                    ; $54D4: $FF
    add $C7                                       ; $54D5: $C6 $C7
    cp b                                          ; $54D7: $B8
    cp a                                          ; $54D8: $BF
    ld b, $0F                                     ; $54D9: $06 $0F
    rlca                                          ; $54DB: $07
    rlca                                          ; $54DC: $07
    inc bc                                        ; $54DD: $03
    inc bc                                        ; $54DE: $03
    nop                                           ; $54DF: $00
    rlca                                          ; $54E0: $07
    ld bc, $0609                                  ; $54E1: $01 $09 $06
    ld [hl], b                                    ; $54E4: $70
    rrca                                          ; $54E5: $0F
    or b                                          ; $54E6: $B0

jr_012_54E7:
    ld l, a                                       ; $54E7: $6F
    ld sp, hl                                     ; $54E8: $F9
    ld h, [hl]                                    ; $54E9: $66
    and $98                                       ; $54EA: $E6 $98
    db $F4                                        ; $54EC: $F4
    ld hl, sp-$0C                                 ; $54ED: $F8 $F4
    ld hl, sp-$04                                 ; $54EF: $F8 $FC
    ld hl, sp-$08                                 ; $54F1: $F8 $F8
    ldh a, [$FFF0]                                ; $54F3: $F0 $F0
    jr nz, jr_012_54E7                            ; $54F5: $20 $F0

    ret nz                                        ; $54F7: $C0

    ldh a, [$FFE0]                                ; $54F8: $F0 $E0
    ldh a, [$FF60]                                ; $54FA: $F0 $60
    ldh [rP1], a                                  ; $54FC: $E0 $00
    nop                                           ; $54FE: $00
    nop                                           ; $54FF: $00
    nop                                           ; $5500: $00
    nop                                           ; $5501: $00
    nop                                           ; $5502: $00
    nop                                           ; $5503: $00
    nop                                           ; $5504: $00
    nop                                           ; $5505: $00
    nop                                           ; $5506: $00
    nop                                           ; $5507: $00
    nop                                           ; $5508: $00
    nop                                           ; $5509: $00
    nop                                           ; $550A: $00
    nop                                           ; $550B: $00
    nop                                           ; $550C: $00
    nop                                           ; $550D: $00
    ld [bc], a                                    ; $550E: $02
    nop                                           ; $550F: $00
    dec b                                         ; $5510: $05
    ld [bc], a                                    ; $5511: $02
    rrca                                          ; $5512: $0F
    ld bc, $0B1F                                  ; $5513: $01 $1F $0B
    rra                                           ; $5516: $1F
    inc c                                         ; $5517: $0C
    rra                                           ; $5518: $1F
    rrca                                          ; $5519: $0F
    rra                                           ; $551A: $1F
    rrca                                          ; $551B: $0F
    rrca                                          ; $551C: $0F
    rlca                                          ; $551D: $07
    rlca                                          ; $551E: $07
    nop                                           ; $551F: $00
    ld bc, $0100                                  ; $5520: $01 $00 $01
    nop                                           ; $5523: $00
    ld bc, $0100                                  ; $5524: $01 $00 $01
    nop                                           ; $5527: $00
    ld bc, $0100                                  ; $5528: $01 $00 $01
    nop                                           ; $552B: $00
    rlca                                          ; $552C: $07
    ld bc, $0609                                  ; $552D: $01 $09 $06
    db $10                                        ; $5530: $10
    rrca                                          ; $5531: $0F
    rra                                           ; $5532: $1F
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
    ld a, $00                                     ; $5540: $3E $00
    rst RST_38                                    ; $5542: $FF
    ld [bc], a                                    ; $5543: $02
    rst RST_38                                    ; $5544: $FF
    ld [hl], d                                    ; $5545: $72
    rst RST_38                                    ; $5546: $FF
    ld bc, $F9FF                                  ; $5547: $01 $FF $F9
    rst RST_38                                    ; $554A: $FF
    ld de, $CC37                                  ; $554B: $11 $37 $CC
    cp $2D                                        ; $554E: $FE $2D
    ld a, l                                       ; $5550: $7D
    add e                                         ; $5551: $83
    rst RST_18                                    ; $5552: $DF
    add hl, sp                                    ; $5553: $39
    db $DD                                        ; $5554: $DD
    or [hl]                                       ; $5555: $B6
    rst RST_18                                    ; $5556: $DF
    or [hl]                                       ; $5557: $B6
    rst RST_38                                    ; $5558: $FF
    ret c                                         ; $5559: $D8

    pop af                                        ; $555A: $F1
    xor $FF                                       ; $555B: $EE $FF
    ld [hl], c                                    ; $555D: $71
    rst RST_38                                    ; $555E: $FF
    cp l                                          ; $555F: $BD
    rst RST_38                                    ; $5560: $FF
    inc bc                                        ; $5561: $03
    rst RST_38                                    ; $5562: $FF
    ei                                            ; $5563: $FB
    rst RST_38                                    ; $5564: $FF
    ldh a, [$FFF2]                                ; $5565: $F0 $F2
    ld l, h                                       ; $5567: $6C
    pop hl                                        ; $5568: $E1
    ld e, $2F                                     ; $5569: $1E $2F
    db $10                                        ; $556B: $10
    dec de                                        ; $556C: $1B
    ld b, $1F                                     ; $556D: $06 $1F
    ld b, $1F                                     ; $556F: $06 $1F
    add hl, bc                                    ; $5571: $09
    rra                                           ; $5572: $1F
    rrca                                          ; $5573: $0F
    rra                                           ; $5574: $1F
    rrca                                          ; $5575: $0F
    rrca                                          ; $5576: $0F
    rlca                                          ; $5577: $07
    rrca                                          ; $5578: $0F
    inc b                                         ; $5579: $04
    rlca                                          ; $557A: $07
    nop                                           ; $557B: $00
    ld b, $01                                     ; $557C: $06 $01
    inc b                                         ; $557E: $04
    inc bc                                        ; $557F: $03
    add b                                         ; $5580: $80
    nop                                           ; $5581: $00
    add b                                         ; $5582: $80
    nop                                           ; $5583: $00
    add b                                         ; $5584: $80
    nop                                           ; $5585: $00
    ldh a, [rP1]                                  ; $5586: $F0 $00
    ld [$5CF0], sp                                ; $5588: $08 $F0 $5C
    ld hl, sp-$04                                 ; $558B: $F8 $FC
    add sp, -$14                                  ; $558D: $E8 $EC

jr_012_558F:
    ret nc                                        ; $558F: $D0

    jp c, $FEAC                                   ; $5590: $DA $AC $FE

    jr nz, jr_012_558F                            ; $5593: $20 $FA

    call c, $C0FC                                 ; $5595: $DC $FC $C0
    db $F4                                        ; $5598: $F4
    ret c                                         ; $5599: $D8

    ld hl, sp-$20                                 ; $559A: $F8 $E0
    ldh a, [$FFC0]                                ; $559C: $F0 $C0
    ret nz                                        ; $559E: $C0

    nop                                           ; $559F: $00
    ldh a, [rP1]                                  ; $55A0: $F0 $00
    ld l, b                                       ; $55A2: $68
    ret nc                                        ; $55A3: $D0

    db $E4                                        ; $55A4: $E4
    ret c                                         ; $55A5: $D8

    db $F4                                        ; $55A6: $F4
    jr c, @-$0A                                   ; $55A7: $38 $F4

    ld hl, sp-$04                                 ; $55A9: $F8 $FC
    ld hl, sp-$04                                 ; $55AB: $F8 $FC
    ld hl, sp-$04                                 ; $55AD: $F8 $FC
    add b                                         ; $55AF: $80
    db $FC                                        ; $55B0: $FC
    nop                                           ; $55B1: $00
    call nz, $8238                                ; $55B2: $C4 $38 $82
    ld a, h                                       ; $55B5: $7C
    cp $00                                        ; $55B6: $FE $00
    nop                                           ; $55B8: $00
    nop                                           ; $55B9: $00
    nop                                           ; $55BA: $00
    nop                                           ; $55BB: $00
    nop                                           ; $55BC: $00
    nop                                           ; $55BD: $00
    nop                                           ; $55BE: $00
    nop                                           ; $55BF: $00
    ld bc, $0900                                  ; $55C0: $01 $00 $09
    nop                                           ; $55C3: $00
    scf                                           ; $55C4: $37
    ld [$345B], sp                                ; $55C5: $08 $5B $34
    ld a, a                                       ; $55C8: $7F
    inc b                                         ; $55C9: $04
    ld e, a                                       ; $55CA: $5F
    ld a, [hl-]                                   ; $55CB: $3A
    ccf                                           ; $55CC: $3F
    inc bc                                        ; $55CD: $03
    cpl                                           ; $55CE: $2F
    dec de                                        ; $55CF: $1B
    rra                                           ; $55D0: $1F
    nop                                           ; $55D1: $00
    ld b, $01                                     ; $55D2: $06 $01
    inc c                                         ; $55D4: $0C
    inc bc                                        ; $55D5: $03
    ld d, $0D                                     ; $55D6: $16 $0D
    rra                                           ; $55D8: $1F
    inc c                                         ; $55D9: $0C
    rra                                           ; $55DA: $1F
    inc bc                                        ; $55DB: $03
    rra                                           ; $55DC: $1F
    rrca                                          ; $55DD: $0F
    rra                                           ; $55DE: $1F
    rrca                                          ; $55DF: $0F
    ccf                                           ; $55E0: $3F
    nop                                           ; $55E1: $00
    ld e, a                                       ; $55E2: $5F
    ld l, $5F                                     ; $55E3: $2E $5F
    jr nz, @+$01                                  ; $55E5: $20 $FF

    rra                                           ; $55E7: $1F
    rst RST_38                                    ; $55E8: $FF
    ld h, d                                       ; $55E9: $62
    ld h, [hl]                                    ; $55EA: $66
    add hl, de                                    ; $55EB: $19
    ld e, a                                       ; $55EC: $5F
    dec h                                         ; $55ED: $25
    ld l, a                                       ; $55EE: $6F
    inc [hl]                                      ; $55EF: $34
    rst RST_38                                    ; $55F0: $FF
    nop                                           ; $55F1: $00
    ld [hl], a                                    ; $55F2: $77
    jp c, $DAF7                                   ; $55F3: $DA $F7 $DA

    rst RST_38                                    ; $55F6: $FF
    ld [hl], $1F                                  ; $55F7: $36 $1F
    xor $FF                                       ; $55F9: $EE $FF
    dec e                                         ; $55FB: $1D
    rst RST_38                                    ; $55FC: $FF
    ei                                            ; $55FD: $FB
    rst RST_38                                    ; $55FE: $FF
    rlca                                          ; $55FF: $07
    ret nz                                        ; $5600: $C0

    nop                                           ; $5601: $00
    ldh [rLCDC], a                                ; $5602: $E0 $40
    ldh a, [rNR41]                                ; $5604: $F0 $20
    rst RST_30                                    ; $5606: $F7
    jr nz, @+$01                                  ; $5607: $20 $FF

    dec h                                         ; $5609: $25
    ld a, [$EF95]                                 ; $560A: $FA $95 $EF
    sub d                                         ; $560D: $92
    rst RST_38                                    ; $560E: $FF
    ld b, a                                       ; $560F: $47
    rst RST_30                                    ; $5610: $F7
    ret c                                         ; $5611: $D8

    rst RST_38                                    ; $5612: $FF
    jp $D7EF                                      ; $5613: $C3 $EF $D7


    rst RST_00                                    ; $5616: $C7
    cp e                                          ; $5617: $BB
    ei                                            ; $5618: $FB
    nop                                           ; $5619: $00
    ldh [$FFC0], a                                ; $561A: $E0 $C0
    ldh [$FFC0], a                                ; $561C: $E0 $C0
    ret nz                                        ; $561E: $C0

    add b                                         ; $561F: $80
    nop                                           ; $5620: $00
    nop                                           ; $5621: $00
    nop                                           ; $5622: $00
    nop                                           ; $5623: $00
    nop                                           ; $5624: $00
    nop                                           ; $5625: $00
    nop                                           ; $5626: $00
    nop                                           ; $5627: $00
    nop                                           ; $5628: $00
    nop                                           ; $5629: $00
    nop                                           ; $562A: $00
    nop                                           ; $562B: $00
    nop                                           ; $562C: $00
    nop                                           ; $562D: $00
    add b                                         ; $562E: $80
    nop                                           ; $562F: $00
    ret nz                                        ; $5630: $C0

    nop                                           ; $5631: $00
    ldh [$FF80], a                                ; $5632: $E0 $80
    ldh a, [$FFA0]                                ; $5634: $F0 $A0
    ldh a, [$FF60]                                ; $5636: $F0 $60
    ldh a, [$FFE0]                                ; $5638: $F0 $E0
    ldh a, [$FFE0]                                ; $563A: $F0 $E0
    ldh [$FFC0], a                                ; $563C: $E0 $C0
    ret nz                                        ; $563E: $C0

    nop                                           ; $563F: $00
    rrca                                          ; $5640: $0F
    rlca                                          ; $5641: $07
    rrca                                          ; $5642: $0F
    rlca                                          ; $5643: $07
    rra                                           ; $5644: $1F
    nop                                           ; $5645: $00

jr_012_5646:
    daa                                           ; $5646: $27
    dec de                                        ; $5647: $1B
    ld b, e                                       ; $5648: $43
    dec a                                         ; $5649: $3D
    ld a, a                                       ; $564A: $7F
    nop                                           ; $564B: $00
    nop                                           ; $564C: $00
    nop                                           ; $564D: $00
    nop                                           ; $564E: $00
    nop                                           ; $564F: $00
    nop                                           ; $5650: $00
    nop                                           ; $5651: $00
    nop                                           ; $5652: $00
    nop                                           ; $5653: $00
    nop                                           ; $5654: $00
    nop                                           ; $5655: $00
    nop                                           ; $5656: $00
    nop                                           ; $5657: $00
    nop                                           ; $5658: $00
    nop                                           ; $5659: $00
    nop                                           ; $565A: $00
    nop                                           ; $565B: $00
    nop                                           ; $565C: $00
    nop                                           ; $565D: $00
    nop                                           ; $565E: $00
    nop                                           ; $565F: $00
    rst RST_38                                    ; $5660: $FF
    add b                                         ; $5661: $80
    rst RST_38                                    ; $5662: $FF
    ld a, $3E                                     ; $5663: $3E $3E
    db $DD                                        ; $5665: $DD
    inc e                                         ; $5666: $1C
    db $EB                                        ; $5667: $EB
    inc e                                         ; $5668: $1C
    db $E3                                        ; $5669: $E3

jr_012_566A:
    ldh [c], a                                    ; $566A: $E2
    ld bc, $C021                                  ; $566B: $01 $21 $C0
    and b                                         ; $566E: $A0
    ret nz                                        ; $566F: $C0

    and b                                         ; $5670: $A0
    ret nz                                        ; $5671: $C0

    ret nz                                        ; $5672: $C0

    add b                                         ; $5673: $80
    ret nz                                        ; $5674: $C0

    add b                                         ; $5675: $80
    add b                                         ; $5676: $80
    nop                                           ; $5677: $00
    ret nz                                        ; $5678: $C0

    add b                                         ; $5679: $80
    ret nz                                        ; $567A: $C0

    add b                                         ; $567B: $80
    ret nz                                        ; $567C: $C0

    nop                                           ; $567D: $00
    nop                                           ; $567E: $00
    nop                                           ; $567F: $00
    ret nz                                        ; $5680: $C0

    nop                                           ; $5681: $00
    ret nz                                        ; $5682: $C0

    nop                                           ; $5683: $00
    jr nz, jr_012_5646                            ; $5684: $20 $C0

    db $10                                        ; $5686: $10
    ldh [$FF7C], a                                ; $5687: $E0 $7C
    add b                                         ; $5689: $80
    sub d                                         ; $568A: $92
    ld l, h                                       ; $568B: $6C
    db $FD                                        ; $568C: $FD
    ld l, [hl]                                    ; $568D: $6E
    db $FD                                        ; $568E: $FD
    ld e, $FE                                     ; $568F: $1E $FE
    ld a, a                                       ; $5691: $7F
    cp $7F                                        ; $5692: $FE $7F
    ld a, a                                       ; $5694: $7F
    ccf                                           ; $5695: $3F
    ccf                                           ; $5696: $3F
    inc c                                         ; $5697: $0C
    rrca                                          ; $5698: $0F
    nop                                           ; $5699: $00
    ld b, $01                                     ; $569A: $06 $01
    ld [bc], a                                    ; $569C: $02
    ld bc, $0001                                  ; $569D: $01 $01 $00
    add b                                         ; $56A0: $80
    nop                                           ; $56A1: $00
    add b                                         ; $56A2: $80
    nop                                           ; $56A3: $00
    add b                                         ; $56A4: $80
    nop                                           ; $56A5: $00
    ret nz                                        ; $56A6: $C0

    nop                                           ; $56A7: $00
    jr nz, jr_012_566A                            ; $56A8: $20 $C0

    db $10                                        ; $56AA: $10
    ldh [rNR10], a                                ; $56AB: $E0 $10
    ldh [$FFF0], a                                ; $56AD: $E0 $F0
    nop                                           ; $56AF: $00
    nop                                           ; $56B0: $00
    nop                                           ; $56B1: $00
    nop                                           ; $56B2: $00
    nop                                           ; $56B3: $00
    nop                                           ; $56B4: $00
    nop                                           ; $56B5: $00
    nop                                           ; $56B6: $00
    nop                                           ; $56B7: $00
    nop                                           ; $56B8: $00
    nop                                           ; $56B9: $00
    nop                                           ; $56BA: $00
    nop                                           ; $56BB: $00
    nop                                           ; $56BC: $00
    nop                                           ; $56BD: $00
    nop                                           ; $56BE: $00
    nop                                           ; $56BF: $00
    nop                                           ; $56C0: $00
    nop                                           ; $56C1: $00
    nop                                           ; $56C2: $00
    nop                                           ; $56C3: $00
    nop                                           ; $56C4: $00
    nop                                           ; $56C5: $00
    ld bc, $0700                                  ; $56C6: $01 $00 $07
    ld bc, $070F                                  ; $56C9: $01 $0F $07
    inc e                                         ; $56CC: $1C
    rrca                                          ; $56CD: $0F
    jr jr_012_56DF                                ; $56CE: $18 $0F

    add hl, sp                                    ; $56D0: $39
    ld e, $39                                     ; $56D1: $1E $39
    ld e, $19                                     ; $56D3: $1E $19
    ld c, $1C                                     ; $56D5: $0E $1C
    rrca                                          ; $56D7: $0F
    rrca                                          ; $56D8: $0F
    rlca                                          ; $56D9: $07
    rlca                                          ; $56DA: $07
    ld bc, $0001                                  ; $56DB: $01 $01 $00
    nop                                           ; $56DE: $00

jr_012_56DF:
    nop                                           ; $56DF: $00
    nop                                           ; $56E0: $00
    nop                                           ; $56E1: $00
    nop                                           ; $56E2: $00
    nop                                           ; $56E3: $00
    ld a, a                                       ; $56E4: $7F
    nop                                           ; $56E5: $00
    rst RST_38                                    ; $56E6: $FF
    ld a, a                                       ; $56E7: $7F
    rst RST_38                                    ; $56E8: $FF
    rst RST_38                                    ; $56E9: $FF
    ld bc, $7EFE                                  ; $56EA: $01 $FE $7E
    add c                                         ; $56ED: $81
    and d                                         ; $56EE: $A2
    ld e, l                                       ; $56EF: $5D
    ld [hl+], a                                   ; $56F0: $22
    db $DD                                        ; $56F1: $DD
    ld a, [hl]                                    ; $56F2: $7E
    add c                                         ; $56F3: $81
    ld h, d                                       ; $56F4: $62
    sbc l                                         ; $56F5: $9D
    cp l                                          ; $56F6: $BD
    ld b, d                                       ; $56F7: $42
    ld h, b                                       ; $56F8: $60
    sbc a                                         ; $56F9: $9F
    rst RST_38                                    ; $56FA: $FF
    rst RST_38                                    ; $56FB: $FF
    rst RST_38                                    ; $56FC: $FF
    ld a, a                                       ; $56FD: $7F
    ld a, a                                       ; $56FE: $7F
    nop                                           ; $56FF: $00
    nop                                           ; $5700: $00
    nop                                           ; $5701: $00
    nop                                           ; $5702: $00
    nop                                           ; $5703: $00
    rst RST_38                                    ; $5704: $FF
    nop                                           ; $5705: $00
    rst RST_38                                    ; $5706: $FF
    db $FD                                        ; $5707: $FD
    rst RST_38                                    ; $5708: $FF
    db $FD                                        ; $5709: $FD
    db $FD                                        ; $570A: $FD
    ld [bc], a                                    ; $570B: $02
    inc bc                                        ; $570C: $03
    db $FC                                        ; $570D: $FC
    ld [bc], a                                    ; $570E: $02
    db $FD                                        ; $570F: $FD
    ld [bc], a                                    ; $5710: $02
    db $FD                                        ; $5711: $FD
    ld [bc], a                                    ; $5712: $02
    db $FD                                        ; $5713: $FD
    inc bc                                        ; $5714: $03
    db $FC                                        ; $5715: $FC
    db $FC                                        ; $5716: $FC
    inc bc                                        ; $5717: $03
    nop                                           ; $5718: $00
    rst RST_38                                    ; $5719: $FF
    rst RST_38                                    ; $571A: $FF
    rst RST_38                                    ; $571B: $FF
    rst RST_38                                    ; $571C: $FF
    rst RST_38                                    ; $571D: $FF
    rst RST_38                                    ; $571E: $FF
    nop                                           ; $571F: $00
    rlca                                          ; $5720: $07
    nop                                           ; $5721: $00
    dec b                                         ; $5722: $05
    ld [bc], a                                    ; $5723: $02
    dec b                                         ; $5724: $05
    ld [bc], a                                    ; $5725: $02
    rst RST_38                                    ; $5726: $FF
    nop                                           ; $5727: $00
    rst RST_38                                    ; $5728: $FF
    and $FF                                       ; $5729: $E6 $FF
    ld sp, hl                                     ; $572B: $F9
    inc b                                         ; $572C: $04
    ei                                            ; $572D: $FB
    inc b                                         ; $572E: $04
    ei                                            ; $572F: $FB
    add h                                         ; $5730: $84
    ld a, e                                       ; $5731: $7B
    ld b, h                                       ; $5732: $44
    cp e                                          ; $5733: $BB
    ld h, $D9                                     ; $5734: $26 $D9
    sbc $21                                       ; $5736: $DE $21
    dec b                                         ; $5738: $05
    ld a, [$FD02]                                 ; $5739: $FA $02 $FD
    rst RST_38                                    ; $573C: $FF
    cp $FF                                        ; $573D: $FE $FF
    cp $E0                                        ; $573F: $FE $E0
    nop                                           ; $5741: $00
    db $FC                                        ; $5742: $FC
    ret nz                                        ; $5743: $C0

    cp $1C                                        ; $5744: $FE $1C
    rst RST_38                                    ; $5746: $FF
    nop                                           ; $5747: $00
    rst RST_38                                    ; $5748: $FF
    ld a, [hl]                                    ; $5749: $7E
    rst RST_38                                    ; $574A: $FF
    rst RST_38                                    ; $574B: $FF
    nop                                           ; $574C: $00
    rst RST_38                                    ; $574D: $FF
    nop                                           ; $574E: $00
    rst RST_38                                    ; $574F: $FF
    nop                                           ; $5750: $00
    rst RST_38                                    ; $5751: $FF
    nop                                           ; $5752: $00
    rst RST_38                                    ; $5753: $FF
    ld bc, $01FE                                  ; $5754: $01 $FE $01
    cp $02                                        ; $5757: $FE $02
    db $FD                                        ; $5759: $FD
    add l                                         ; $575A: $85

jr_012_575B:
    ld a, d                                       ; $575B: $7A
    rst RST_38                                    ; $575C: $FF
    ld bc, $7DFF                                  ; $575D: $01 $FF $7D
    rst RST_38                                    ; $5760: $FF
    nop                                           ; $5761: $00
    inc b                                         ; $5762: $04
    inc bc                                        ; $5763: $03
    jr jr_012_576D                                ; $5764: $18 $07

    inc l                                         ; $5766: $2C
    dec de                                        ; $5767: $1B
    ccf                                           ; $5768: $3F
    jr jr_012_57A9                                ; $5769: $18 $3E

    rlca                                          ; $576B: $07
    ccf                                           ; $576C: $3F

jr_012_576D:
    rra                                           ; $576D: $1F
    ccf                                           ; $576E: $3F
    rra                                           ; $576F: $1F
    rra                                           ; $5770: $1F
    rrca                                          ; $5771: $0F
    rra                                           ; $5772: $1F
    rrca                                          ; $5773: $0F
    ccf                                           ; $5774: $3F
    nop                                           ; $5775: $00
    ld c, a                                       ; $5776: $4F
    scf                                           ; $5777: $37
    add a                                         ; $5778: $87
    ld a, e                                       ; $5779: $7B
    rst RST_38                                    ; $577A: $FF
    nop                                           ; $577B: $00
    nop                                           ; $577C: $00
    nop                                           ; $577D: $00
    nop                                           ; $577E: $00
    nop                                           ; $577F: $00
    rst RST_38                                    ; $5780: $FF
    nop                                           ; $5781: $00
    jr c, jr_012_575B                             ; $5782: $38 $D7

    jr nc, @-$2F                                  ; $5784: $30 $CF

    ld c, b                                       ; $5786: $48
    add a                                         ; $5787: $87
    add h                                         ; $5788: $84
    inc bc                                        ; $5789: $03
    ld b, e                                       ; $578A: $43
    add b                                         ; $578B: $80
    ld b, d                                       ; $578C: $42
    add c                                         ; $578D: $81
    ld b, e                                       ; $578E: $43
    add c                                         ; $578F: $81
    add c                                         ; $5790: $81
    nop                                           ; $5791: $00
    add b                                         ; $5792: $80
    nop                                           ; $5793: $00
    nop                                           ; $5794: $00
    nop                                           ; $5795: $00
    add b                                         ; $5796: $80
    nop                                           ; $5797: $00
    add b                                         ; $5798: $80
    nop                                           ; $5799: $00
    add b                                         ; $579A: $80
    nop                                           ; $579B: $00
    nop                                           ; $579C: $00
    nop                                           ; $579D: $00
    nop                                           ; $579E: $00
    nop                                           ; $579F: $00
    nop                                           ; $57A0: $00
    nop                                           ; $57A1: $00
    nop                                           ; $57A2: $00
    nop                                           ; $57A3: $00
    rst RST_38                                    ; $57A4: $FF
    nop                                           ; $57A5: $00
    rst RST_38                                    ; $57A6: $FF
    db $E3                                        ; $57A7: $E3
    rst RST_38                                    ; $57A8: $FF

jr_012_57A9:
    ld a, l                                       ; $57A9: $7D
    add c                                         ; $57AA: $81
    ld a, [hl]                                    ; $57AB: $7E
    add c                                         ; $57AC: $81
    ld a, [hl]                                    ; $57AD: $7E
    add [hl]                                      ; $57AE: $86
    ld a, c                                       ; $57AF: $79
    adc b                                         ; $57B0: $88
    ld [hl], a                                    ; $57B1: $77

jr_012_57B2:
    cp $01                                        ; $57B2: $FE $01

jr_012_57B4:
    adc l                                         ; $57B4: $8D
    ld [hl], d                                    ; $57B5: $72

jr_012_57B6:
    call $FD32                                    ; $57B6: $CD $32 $FD
    ld [bc], a                                    ; $57B9: $02
    rst RST_38                                    ; $57BA: $FF
    ld b, [hl]                                    ; $57BB: $46
    rst RST_38                                    ; $57BC: $FF
    cp l                                          ; $57BD: $BD
    rst RST_38                                    ; $57BE: $FF
    nop                                           ; $57BF: $00
    add b                                         ; $57C0: $80
    nop                                           ; $57C1: $00
    ld b, b                                       ; $57C2: $40
    add b                                         ; $57C3: $80
    ld a, b                                       ; $57C4: $78
    add b                                         ; $57C5: $80
    ld b, h                                       ; $57C6: $44
    cp b                                          ; $57C7: $B8
    cp $7C                                        ; $57C8: $FE $7C
    rst RST_38                                    ; $57CA: $FF
    cp [hl]                                       ; $57CB: $BE

jr_012_57CC:
    rst RST_38                                    ; $57CC: $FF
    cp [hl]                                       ; $57CD: $BE

jr_012_57CE:
    rst RST_38                                    ; $57CE: $FF
    ld a, [hl]                                    ; $57CF: $7E
    ld a, a                                       ; $57D0: $7F
    dec c                                         ; $57D1: $0D
    rrca                                          ; $57D2: $0F
    ld bc, $0003                                  ; $57D3: $01 $03 $00
    ld [bc], a                                    ; $57D6: $02
    ld bc, $0304                                  ; $57D7: $01 $04 $03
    rlca                                          ; $57DA: $07
    nop                                           ; $57DB: $00
    nop                                           ; $57DC: $00
    nop                                           ; $57DD: $00
    nop                                           ; $57DE: $00
    nop                                           ; $57DF: $00
    nop                                           ; $57E0: $00
    nop                                           ; $57E1: $00
    nop                                           ; $57E2: $00
    nop                                           ; $57E3: $00
    cp $00                                        ; $57E4: $FE $00
    db $FC                                        ; $57E6: $FC
    ld hl, sp-$08                                 ; $57E7: $F8 $F8
    ldh a, [rNR10]                                ; $57E9: $F0 $10
    ldh [rNR10], a                                ; $57EB: $E0 $10
    ldh [rNR41], a                                ; $57ED: $E0 $20
    ret nz                                        ; $57EF: $C0

    jr nz, jr_012_57B2                            ; $57F0: $20 $C0

    jr nz, jr_012_57B4                            ; $57F2: $20 $C0

    jr nz, jr_012_57B6                            ; $57F4: $20 $C0

    db $10                                        ; $57F6: $10
    ldh [rNR10], a                                ; $57F7: $E0 $10
    ldh [$FFF8], a                                ; $57F9: $E0 $F8
    ldh a, [$FFFC]                                ; $57FB: $F0 $FC
    ld hl, sp-$02                                 ; $57FD: $F8 $FE
    nop                                           ; $57FF: $00
    ret nz                                        ; $5800: $C0

    nop                                           ; $5801: $00
    ldh [$FFC0], a                                ; $5802: $E0 $C0
    ldh [$FFC0], a                                ; $5804: $E0 $C0
    ldh [$FFC0], a                                ; $5806: $E0 $C0
    ldh [rP1], a                                  ; $5808: $E0 $00
    jr nz, jr_012_57CC                            ; $580A: $20 $C0

    jr nz, jr_012_57CE                            ; $580C: $20 $C0

    ret nz                                        ; $580E: $C0

    nop                                           ; $580F: $00
    nop                                           ; $5810: $00
    nop                                           ; $5811: $00
    nop                                           ; $5812: $00
    nop                                           ; $5813: $00
    nop                                           ; $5814: $00
    nop                                           ; $5815: $00
    nop                                           ; $5816: $00
    nop                                           ; $5817: $00
    nop                                           ; $5818: $00
    nop                                           ; $5819: $00
    nop                                           ; $581A: $00
    nop                                           ; $581B: $00
    nop                                           ; $581C: $00
    nop                                           ; $581D: $00
    nop                                           ; $581E: $00
    nop                                           ; $581F: $00
    nop                                           ; $5820: $00
    nop                                           ; $5821: $00
    nop                                           ; $5822: $00
    nop                                           ; $5823: $00
    inc bc                                        ; $5824: $03
    nop                                           ; $5825: $00
    ld [bc], a                                    ; $5826: $02
    ld bc, $0102                                  ; $5827: $01 $02 $01
    rst RST_30                                    ; $582A: $F7
    nop                                           ; $582B: $00
    rrca                                          ; $582C: $0F
    di                                            ; $582D: $F3
    and e                                         ; $582E: $A3
    db $FC                                        ; $582F: $FC
    ld [$FF7D], a                                 ; $5830: $EA $7D $FF
    ld a, l                                       ; $5833: $7D
    ld a, [hl]                                    ; $5834: $7E
    cp l                                          ; $5835: $BD
    ld a, $DD                                     ; $5836: $3E $DD
    rra                                           ; $5838: $1F
    db $EC                                        ; $5839: $EC
    rst RST_28                                    ; $583A: $EF
    nop                                           ; $583B: $00
    inc bc                                        ; $583C: $03
    ld bc, $0001                                  ; $583D: $01 $01 $00
    ld bc, $0200                                  ; $5840: $01 $00 $02
    ld bc, $030C                                  ; $5843: $01 $0C $03
    ld d, $0D                                     ; $5846: $16 $0D
    rra                                           ; $5848: $1F
    inc c                                         ; $5849: $0C
    rra                                           ; $584A: $1F
    inc bc                                        ; $584B: $03
    rra                                           ; $584C: $1F
    rrca                                          ; $584D: $0F
    rra                                           ; $584E: $1F
    rrca                                          ; $584F: $0F
    rrca                                          ; $5850: $0F
    rlca                                          ; $5851: $07
    rrca                                          ; $5852: $0F
    rlca                                          ; $5853: $07
    rra                                           ; $5854: $1F
    nop                                           ; $5855: $00
    daa                                           ; $5856: $27
    dec de                                        ; $5857: $1B
    ld b, e                                       ; $5858: $43
    dec a                                         ; $5859: $3D
    ld a, a                                       ; $585A: $7F
    nop                                           ; $585B: $00
    nop                                           ; $585C: $00
    nop                                           ; $585D: $00
    nop                                           ; $585E: $00
    nop                                           ; $585F: $00
    nop                                           ; $5860: $00
    nop                                           ; $5861: $00
    nop                                           ; $5862: $00
    nop                                           ; $5863: $00
    nop                                           ; $5864: $00
    nop                                           ; $5865: $00
    nop                                           ; $5866: $00
    nop                                           ; $5867: $00
    nop                                           ; $5868: $00
    nop                                           ; $5869: $00
    nop                                           ; $586A: $00
    nop                                           ; $586B: $00
    nop                                           ; $586C: $00
    nop                                           ; $586D: $00
    ld bc, $0100                                  ; $586E: $01 $00 $01
    nop                                           ; $5871: $00
    cp $00                                        ; $5872: $FE $00
    ld bc, $FFFE                                  ; $5874: $01 $FE $FF
    cp $FF                                        ; $5877: $FE $FF
    cp $FF                                        ; $5879: $FE $FF
    cp $FF                                        ; $587B: $FE $FF
    cp $FE                                        ; $587D: $FE $FE
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
    nop                                           ; $588E: $00
    nop                                           ; $588F: $00
    nop                                           ; $5890: $00
    nop                                           ; $5891: $00
    ccf                                           ; $5892: $3F
    nop                                           ; $5893: $00
    ld a, a                                       ; $5894: $7F
    ld l, $FF                                     ; $5895: $2E $FF
    ld l, [hl]                                    ; $5897: $6E
    rst RST_38                                    ; $5898: $FF
    ld b, b                                       ; $5899: $40
    or a                                          ; $589A: $B7
    ld c, [hl]                                    ; $589B: $4E
    ld e, [hl]                                    ; $589C: $5E
    jr nz, jr_012_58CF                            ; $589D: $20 $30

    nop                                           ; $589F: $00
    nop                                           ; $58A0: $00
    nop                                           ; $58A1: $00
    ldh a, [rP1]                                  ; $58A2: $F0 $00
    cp $60                                        ; $58A4: $FE $60
    rst RST_38                                    ; $58A6: $FF
    ld c, $FF                                     ; $58A7: $0E $FF
    rst RST_18                                    ; $58A9: $DF
    rst RST_38                                    ; $58AA: $FF
    ccf                                           ; $58AB: $3F
    rst RST_18                                    ; $58AC: $DF
    rst RST_38                                    ; $58AD: $FF
    xor a                                         ; $58AE: $AF

jr_012_58AF:
    rst RST_38                                    ; $58AF: $FF
    ld e, a                                       ; $58B0: $5F
    rst RST_38                                    ; $58B1: $FF
    cpl                                           ; $58B2: $2F
    rst RST_38                                    ; $58B3: $FF
    rla                                           ; $58B4: $17
    rst RST_38                                    ; $58B5: $FF
    rrca                                          ; $58B6: $0F
    rst RST_38                                    ; $58B7: $FF
    rla                                           ; $58B8: $17
    rst RST_38                                    ; $58B9: $FF
    adc e                                         ; $58BA: $8B
    ld a, [hl]                                    ; $58BB: $7E
    rst RST_18                                    ; $58BC: $DF
    cp l                                          ; $58BD: $BD
    rst RST_38                                    ; $58BE: $FF
    nop                                           ; $58BF: $00

jr_012_58C0:
    rst RST_38                                    ; $58C0: $FF
    ld a, $3E                                     ; $58C1: $3E $3E
    db $DD                                        ; $58C3: $DD
    inc e                                         ; $58C4: $1C
    db $EB                                        ; $58C5: $EB
    jr jr_012_58AF                                ; $58C6: $18 $E7

    inc h                                         ; $58C8: $24
    jp Jump_000_01C2                              ; $58C9: $C3 $C2 $01


    ld hl, $A1C0                                  ; $58CC: $21 $C0 $A1

jr_012_58CF:
    ret nz                                        ; $58CF: $C0

    and c                                         ; $58D0: $A1
    ret nz                                        ; $58D1: $C0

    ret nz                                        ; $58D2: $C0

    add b                                         ; $58D3: $80
    ret nz                                        ; $58D4: $C0

    add b                                         ; $58D5: $80
    add b                                         ; $58D6: $80
    nop                                           ; $58D7: $00
    ret nz                                        ; $58D8: $C0

    add b                                         ; $58D9: $80
    ret nz                                        ; $58DA: $C0

    add b                                         ; $58DB: $80
    ret nz                                        ; $58DC: $C0

    nop                                           ; $58DD: $00
    nop                                           ; $58DE: $00
    nop                                           ; $58DF: $00
    ldh a, [rP1]                                  ; $58E0: $F0 $00
    adc [hl]                                      ; $58E2: $8E
    ld [hl], b                                    ; $58E3: $70
    pop bc                                        ; $58E4: $C1
    cp [hl]                                       ; $58E5: $BE
    ld [$FFBF], a                                 ; $58E6: $EA $BF $FF
    cp a                                          ; $58E9: $BF
    rst RST_38                                    ; $58EA: $FF
    cp h                                          ; $58EB: $BC
    db $FC                                        ; $58EC: $FC
    cp b                                          ; $58ED: $B8
    rst RST_38                                    ; $58EE: $FF
    nop                                           ; $58EF: $00
    rst RST_00                                    ; $58F0: $C7
    add hl, sp                                    ; $58F1: $39
    rst RST_20                                    ; $58F2: $E7
    sbc c                                         ; $58F3: $99
    rst RST_38                                    ; $58F4: $FF
    ld bc, $237F                                  ; $58F5: $01 $7F $23
    ccf                                           ; $58F8: $3F
    ld e, $9E                                     ; $58F9: $1E $9E
    nop                                           ; $58FB: $00
    ld b, b                                       ; $58FC: $40
    add b                                         ; $58FD: $80
    jr nz, jr_012_58C0                            ; $58FE: $20 $C0

    inc a                                         ; $5900: $3C
    ret nz                                        ; $5901: $C0

    ld [hl+], a                                   ; $5902: $22
    call c, Call_000_3EFF                         ; $5903: $DC $FF $3E
    ld a, a                                       ; $5906: $7F
    rst RST_18                                    ; $5907: $DF
    rst RST_38                                    ; $5908: $FF
    rst RST_18                                    ; $5909: $DF
    rst RST_38                                    ; $590A: $FF
    ccf                                           ; $590B: $3F
    ccf                                           ; $590C: $3F
    ld b, $07                                     ; $590D: $06 $07
    nop                                           ; $590F: $00
    ld bc, $0100                                  ; $5910: $01 $00 $01
    nop                                           ; $5913: $00
    ld [bc], a                                    ; $5914: $02
    ld bc, $0003                                  ; $5915: $01 $03 $00
    nop                                           ; $5918: $00
    nop                                           ; $5919: $00
    nop                                           ; $591A: $00
    nop                                           ; $591B: $00
    nop                                           ; $591C: $00
    nop                                           ; $591D: $00
    nop                                           ; $591E: $00
    nop                                           ; $591F: $00
    nop                                           ; $5920: $00
    nop                                           ; $5921: $00
    nop                                           ; $5922: $00
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
    add b                                         ; $592E: $80
    nop                                           ; $592F: $00
    add b                                         ; $5930: $80
    nop                                           ; $5931: $00
    nop                                           ; $5932: $00
    nop                                           ; $5933: $00
    nop                                           ; $5934: $00
    nop                                           ; $5935: $00
    nop                                           ; $5936: $00
    nop                                           ; $5937: $00
    add b                                         ; $5938: $80
    nop                                           ; $5939: $00
    add b                                         ; $593A: $80
    nop                                           ; $593B: $00
    add b                                         ; $593C: $80
    nop                                           ; $593D: $00
    add b                                         ; $593E: $80
    nop                                           ; $593F: $00
    add b                                         ; $5940: $80
    nop                                           ; $5941: $00
    ldh [rP1], a                                  ; $5942: $E0 $00
    ldh a, [$FF60]                                ; $5944: $F0 $60
    ldh a, [$FFE0]                                ; $5946: $F0 $E0
    ldh a, [$FFE0]                                ; $5948: $F0 $E0
    ldh a, [rP1]                                  ; $594A: $F0 $00
    db $10                                        ; $594C: $10
    ldh [rNR10], a                                ; $594D: $E0 $10
    ldh [$FFE0], a                                ; $594F: $E0 $E0
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
    nop                                           ; $5960: $00
    nop                                           ; $5961: $00
    nop                                           ; $5962: $00
    nop                                           ; $5963: $00
    nop                                           ; $5964: $00
    nop                                           ; $5965: $00
    ld bc, $0200                                  ; $5966: $01 $00 $02
    ld bc, $0103                                  ; $5969: $01 $03 $01
    inc bc                                        ; $596C: $03
    ld bc, $0003                                  ; $596D: $01 $03 $00
    dec c                                         ; $5970: $0D
    ld [bc], a                                    ; $5971: $02
    ld d, $0D                                     ; $5972: $16 $0D
    rra                                           ; $5974: $1F
    ld bc, $0E17                                  ; $5975: $01 $17 $0E
    rra                                           ; $5978: $1F
    nop                                           ; $5979: $00
    rla                                           ; $597A: $17
    ld c, $0F                                     ; $597B: $0E $0F
    ld bc, $0007                                  ; $597D: $01 $07 $00
    inc bc                                        ; $5980: $03
    nop                                           ; $5981: $00
    ld [bc], a                                    ; $5982: $02
    ld bc, $0102                                  ; $5983: $01 $02 $01
    rlca                                          ; $5986: $07
    nop                                           ; $5987: $00
    rst RST_38                                    ; $5988: $FF
    inc bc                                        ; $5989: $03
    rlca                                          ; $598A: $07
    db $FC                                        ; $598B: $FC
    xor [hl]                                      ; $598C: $AE
    db $FD                                        ; $598D: $FD
    rst RST_38                                    ; $598E: $FF
    db $FD                                        ; $598F: $FD
    rst RST_38                                    ; $5990: $FF
    ldh a, [$FFF7]                                ; $5991: $F0 $F7
    ld l, h                                       ; $5993: $6C
    ld [hl], l                                    ; $5994: $75
    dec bc                                        ; $5995: $0B
    rst RST_10                                    ; $5996: $D7
    dec hl                                        ; $5997: $2B
    rst RST_28                                    ; $5998: $EF
    ld d, h                                       ; $5999: $54
    db $FC                                        ; $599A: $FC
    db $E3                                        ; $599B: $E3
    rst RST_38                                    ; $599C: $FF
    ret nz                                        ; $599D: $C0

    ret c                                         ; $599E: $D8

    or a                                          ; $599F: $B7
    rra                                           ; $59A0: $1F
    nop                                           ; $59A1: $00
    rst RST_38                                    ; $59A2: $FF
    ld bc, $78FF                                  ; $59A3: $01 $FF $78
    rst RST_38                                    ; $59A6: $FF
    nop                                           ; $59A7: $00
    rst RST_38                                    ; $59A8: $FF
    db $FC                                        ; $59A9: $FC
    rst RST_38                                    ; $59AA: $FF
    db $10                                        ; $59AB: $10
    ld [hl], $CD                                  ; $59AC: $36 $CD
    cp $2D                                        ; $59AE: $FE $2D
    ld a, a                                       ; $59B0: $7F
    and e                                         ; $59B1: $A3
    rst RST_38                                    ; $59B2: $FF
    rlca                                          ; $59B3: $07
    rst RST_18                                    ; $59B4: $DF
    ldh [$FFD7], a                                ; $59B5: $E0 $D7
    ld l, l                                       ; $59B7: $6D
    rst RST_10                                    ; $59B8: $D7
    ld l, c                                       ; $59B9: $69
    ei                                            ; $59BA: $FB
    sub $7B                                       ; $59BB: $D6 $7B
    or h                                          ; $59BD: $B4
    db $FD                                        ; $59BE: $FD
    ld l, e                                       ; $59BF: $6B
    add b                                         ; $59C0: $80
    nop                                           ; $59C1: $00
    ret nz                                        ; $59C2: $C0

    add b                                         ; $59C3: $80
    ret nz                                        ; $59C4: $C0

    add b                                         ; $59C5: $80
    ldh [$FFC0], a                                ; $59C6: $E0 $C0
    db $FC                                        ; $59C8: $FC
    nop                                           ; $59C9: $00
    ld b, $FC                                     ; $59CA: $06 $FC
    xor e                                         ; $59CC: $AB
    cp $FF                                        ; $59CD: $FE $FF
    cp $FF                                        ; $59CF: $FE $FF
    cp $FE                                        ; $59D1: $FE $FE
    ldh a, [$FFF8]                                ; $59D3: $F0 $F8
    nop                                           ; $59D5: $00
    db $FC                                        ; $59D6: $FC
    cp b                                          ; $59D7: $B8
    cp $DC                                        ; $59D8: $FE $DC
    cp $DC                                        ; $59DA: $FE $DC
    cp $3C                                        ; $59DC: $FE $3C
    ld a, h                                       ; $59DE: $7C
    jr c, @+$01                                   ; $59DF: $38 $FF

    or b                                          ; $59E1: $B0
    db $FC                                        ; $59E2: $FC
    rrca                                          ; $59E3: $0F
    ld a, [hl]                                    ; $59E4: $7E
    ccf                                           ; $59E5: $3F
    ccf                                           ; $59E6: $3F
    rra                                           ; $59E7: $1F
    ccf                                           ; $59E8: $3F
    rra                                           ; $59E9: $1F

jr_012_59EA:
    rra                                           ; $59EA: $1F
    ld c, $3F                                     ; $59EB: $0E $3F
    nop                                           ; $59ED: $00
    ld c, a                                       ; $59EE: $4F
    scf                                           ; $59EF: $37
    add a                                         ; $59F0: $87
    ld a, e                                       ; $59F1: $7B
    rst RST_38                                    ; $59F2: $FF
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
    rst RST_38                                    ; $5A00: $FF
    nop                                           ; $5A01: $00
    ld a, a                                       ; $5A02: $7F
    cp h                                          ; $5A03: $BC
    cp h                                          ; $5A04: $BC
    ld e, e                                       ; $5A05: $5B
    cp b                                          ; $5A06: $B8
    ld d, a                                       ; $5A07: $57
    ld hl, sp+$07                                 ; $5A08: $F8 $07
    adc b                                         ; $5A0A: $88
    rlca                                          ; $5A0B: $07
    inc c                                         ; $5A0C: $0C
    inc bc                                        ; $5A0D: $03
    ld c, $01                                     ; $5A0E: $0E $01
    adc a                                         ; $5A10: $8F
    ld [bc], a                                    ; $5A11: $02
    adc e                                         ; $5A12: $8B
    dec b                                         ; $5A13: $05
    adc c                                         ; $5A14: $89
    ld b, $07                                     ; $5A15: $06 $07
    nop                                           ; $5A17: $00
    nop                                           ; $5A18: $00
    nop                                           ; $5A19: $00
    nop                                           ; $5A1A: $00
    nop                                           ; $5A1B: $00
    nop                                           ; $5A1C: $00
    nop                                           ; $5A1D: $00
    nop                                           ; $5A1E: $00
    nop                                           ; $5A1F: $00
    jr c, jr_012_5A22                             ; $5A20: $38 $00

jr_012_5A22:
    add b                                         ; $5A22: $80
    nop                                           ; $5A23: $00
    ld b, b                                       ; $5A24: $40
    add b                                         ; $5A25: $80
    ld b, b                                       ; $5A26: $40
    add b                                         ; $5A27: $80
    jr nz, jr_012_59EA                            ; $5A28: $20 $C0

    jr nz, @-$3E                                  ; $5A2A: $20 $C0

    ld h, b                                       ; $5A2C: $60
    add b                                         ; $5A2D: $80
    or b                                          ; $5A2E: $B0
    ld h, b                                       ; $5A2F: $60
    ldh a, [$FF60]                                ; $5A30: $F0 $60
    ldh a, [$FF80]                                ; $5A32: $F0 $80
    ldh [rP1], a                                  ; $5A34: $E0 $00
    nop                                           ; $5A36: $00
    nop                                           ; $5A37: $00
    nop                                           ; $5A38: $00
    nop                                           ; $5A39: $00
    nop                                           ; $5A3A: $00
    nop                                           ; $5A3B: $00
    nop                                           ; $5A3C: $00
    nop                                           ; $5A3D: $00
    nop                                           ; $5A3E: $00
    nop                                           ; $5A3F: $00
    nop                                           ; $5A40: $00
    nop                                           ; $5A41: $00
    nop                                           ; $5A42: $00
    nop                                           ; $5A43: $00
    nop                                           ; $5A44: $00
    nop                                           ; $5A45: $00
    nop                                           ; $5A46: $00
    nop                                           ; $5A47: $00
    nop                                           ; $5A48: $00
    nop                                           ; $5A49: $00
    nop                                           ; $5A4A: $00
    nop                                           ; $5A4B: $00
    nop                                           ; $5A4C: $00
    nop                                           ; $5A4D: $00
    nop                                           ; $5A4E: $00
    nop                                           ; $5A4F: $00
    nop                                           ; $5A50: $00
    nop                                           ; $5A51: $00
    ccf                                           ; $5A52: $3F
    nop                                           ; $5A53: $00
    ld d, c                                       ; $5A54: $51
    ld l, $FF                                     ; $5A55: $2E $FF
    ld l, [hl]                                    ; $5A57: $6E
    rst RST_38                                    ; $5A58: $FF
    ld b, b                                       ; $5A59: $40
    or a                                          ; $5A5A: $B7
    ld c, [hl]                                    ; $5A5B: $4E
    ld e, [hl]                                    ; $5A5C: $5E
    jr nz, jr_012_5A8F                            ; $5A5D: $20 $30

    nop                                           ; $5A5F: $00
    nop                                           ; $5A60: $00
    nop                                           ; $5A61: $00
    nop                                           ; $5A62: $00
    nop                                           ; $5A63: $00
    nop                                           ; $5A64: $00
    nop                                           ; $5A65: $00
    nop                                           ; $5A66: $00
    nop                                           ; $5A67: $00
    nop                                           ; $5A68: $00
    nop                                           ; $5A69: $00
    nop                                           ; $5A6A: $00
    nop                                           ; $5A6B: $00
    nop                                           ; $5A6C: $00
    nop                                           ; $5A6D: $00
    ld bc, $0200                                  ; $5A6E: $01 $00 $02
    ld bc, $01FF                                  ; $5A71: $01 $FF $01
    inc bc                                        ; $5A74: $03
    db $FD                                        ; $5A75: $FD
    rst RST_38                                    ; $5A76: $FF
    cp $FF                                        ; $5A77: $FE $FF
    cp $FF                                        ; $5A79: $FE $FF
    cp $FF                                        ; $5A7B: $FE $FF
    cp $FE                                        ; $5A7D: $FE $FE
    nop                                           ; $5A7F: $00
    inc bc                                        ; $5A80: $03
    nop                                           ; $5A81: $00
    ld [bc], a                                    ; $5A82: $02
    ld bc, $0102                                  ; $5A83: $01 $02 $01
    rlca                                          ; $5A86: $07
    nop                                           ; $5A87: $00
    rst RST_38                                    ; $5A88: $FF
    inc bc                                        ; $5A89: $03
    rlca                                          ; $5A8A: $07
    db $FC                                        ; $5A8B: $FC
    xor [hl]                                      ; $5A8C: $AE
    db $FD                                        ; $5A8D: $FD
    rst RST_38                                    ; $5A8E: $FF

jr_012_5A8F:
    db $FD                                        ; $5A8F: $FD
    rst RST_38                                    ; $5A90: $FF
    ldh a, [$FFF7]                                ; $5A91: $F0 $F7
    ld l, h                                       ; $5A93: $6C
    ld [hl], l                                    ; $5A94: $75
    xor e                                         ; $5A95: $AB
    scf                                           ; $5A96: $37
    set 7, a                                      ; $5A97: $CB $FF
    inc b                                         ; $5A99: $04
    inc b                                         ; $5A9A: $04
    inc bc                                        ; $5A9B: $03
    scf                                           ; $5A9C: $37
    nop                                           ; $5A9D: $00
    ld e, b                                       ; $5A9E: $58
    scf                                           ; $5A9F: $37
    rra                                           ; $5AA0: $1F
    nop                                           ; $5AA1: $00
    rst RST_38                                    ; $5AA2: $FF
    ld bc, $78FF                                  ; $5AA3: $01 $FF $78
    rst RST_38                                    ; $5AA6: $FF
    nop                                           ; $5AA7: $00
    rst RST_38                                    ; $5AA8: $FF
    db $FC                                        ; $5AA9: $FC
    rst RST_38                                    ; $5AAA: $FF
    db $10                                        ; $5AAB: $10
    ld [hl], $CD                                  ; $5AAC: $36 $CD
    cp $2D                                        ; $5AAE: $FE $2D
    ld a, a                                       ; $5AB0: $7F
    and e                                         ; $5AB1: $A3
    rst RST_38                                    ; $5AB2: $FF
    rlca                                          ; $5AB3: $07
    rst RST_18                                    ; $5AB4: $DF
    ldh [$FFD7], a                                ; $5AB5: $E0 $D7
    ld l, l                                       ; $5AB7: $6D
    rst RST_10                                    ; $5AB8: $D7
    ld l, c                                       ; $5AB9: $69
    ei                                            ; $5ABA: $FB
    sub $7B                                       ; $5ABB: $D6 $7B
    or h                                          ; $5ABD: $B4
    db $FD                                        ; $5ABE: $FD
    ld l, e                                       ; $5ABF: $6B
    add b                                         ; $5AC0: $80
    nop                                           ; $5AC1: $00
    ret nz                                        ; $5AC2: $C0

    add b                                         ; $5AC3: $80
    ret nz                                        ; $5AC4: $C0

    add b                                         ; $5AC5: $80
    ldh [$FFC0], a                                ; $5AC6: $E0 $C0
    db $FC                                        ; $5AC8: $FC
    nop                                           ; $5AC9: $00
    ld b, $FC                                     ; $5ACA: $06 $FC
    xor e                                         ; $5ACC: $AB
    cp $FF                                        ; $5ACD: $FE $FF
    cp $FF                                        ; $5ACF: $FE $FF
    cp $FE                                        ; $5AD1: $FE $FE
    ldh a, [$FFF8]                                ; $5AD3: $F0 $F8
    nop                                           ; $5AD5: $00
    db $FC                                        ; $5AD6: $FC
    cp b                                          ; $5AD7: $B8
    cp $DC                                        ; $5AD8: $FE $DC
    cp $DC                                        ; $5ADA: $FE $DC
    cp $3C                                        ; $5ADC: $FE $3C
    db $FC                                        ; $5ADE: $FC
    jr c, jr_012_5B60                             ; $5ADF: $38 $7F

    jr nc, jr_012_5B1F                            ; $5AE1: $30 $3C

    rrca                                          ; $5AE3: $0F
    ld a, $1F                                     ; $5AE4: $3E $1F
    rra                                           ; $5AE6: $1F
    rrca                                          ; $5AE7: $0F
    rra                                           ; $5AE8: $1F
    rrca                                          ; $5AE9: $0F

jr_012_5AEA:
    rrca                                          ; $5AEA: $0F
    rlca                                          ; $5AEB: $07

jr_012_5AEC:
    rrca                                          ; $5AEC: $0F
    nop                                           ; $5AED: $00
    inc de                                        ; $5AEE: $13
    dec c                                         ; $5AEF: $0D
    ld hl, $3F1E                                  ; $5AF0: $21 $1E $3F
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
    rst RST_38                                    ; $5B00: $FF
    nop                                           ; $5B01: $00
    ld a, a                                       ; $5B02: $7F
    cp h                                          ; $5B03: $BC
    cp h                                          ; $5B04: $BC
    ld e, e                                       ; $5B05: $5B
    cp b                                          ; $5B06: $B8
    ld d, a                                       ; $5B07: $57
    ld hl, sp-$79                                 ; $5B08: $F8 $87
    ret z                                         ; $5B0A: $C8

    add a                                         ; $5B0B: $87
    call nz, $C283                                ; $5B0C: $C4 $83 $C2
    ld bc, $C0E3                                  ; $5B0F: $01 $E3 $C0
    db $E3                                        ; $5B12: $E3
    ret nz                                        ; $5B13: $C0

    db $E3                                        ; $5B14: $E3
    nop                                           ; $5B15: $00
    ld bc, $0000                                  ; $5B16: $01 $00 $00
    nop                                           ; $5B19: $00
    nop                                           ; $5B1A: $00
    nop                                           ; $5B1B: $00
    nop                                           ; $5B1C: $00
    nop                                           ; $5B1D: $00
    nop                                           ; $5B1E: $00

jr_012_5B1F:
    nop                                           ; $5B1F: $00
    jr c, jr_012_5B22                             ; $5B20: $38 $00

jr_012_5B22:
    add b                                         ; $5B22: $80
    nop                                           ; $5B23: $00
    ld b, b                                       ; $5B24: $40
    add b                                         ; $5B25: $80
    ld b, b                                       ; $5B26: $40
    add b                                         ; $5B27: $80
    jr nz, jr_012_5AEA                            ; $5B28: $20 $C0

    jr nz, jr_012_5AEC                            ; $5B2A: $20 $C0

    ldh a, [rP1]                                  ; $5B2C: $F0 $00
    ld a, b                                       ; $5B2E: $78
    ret nc                                        ; $5B2F: $D0

    ld hl, sp-$30                                 ; $5B30: $F8 $D0
    ld hl, sp+$30                                 ; $5B32: $F8 $30
    ldh a, [rP1]                                  ; $5B34: $F0 $00
    nop                                           ; $5B36: $00
    nop                                           ; $5B37: $00
    nop                                           ; $5B38: $00
    nop                                           ; $5B39: $00
    nop                                           ; $5B3A: $00
    nop                                           ; $5B3B: $00
    nop                                           ; $5B3C: $00
    nop                                           ; $5B3D: $00
    nop                                           ; $5B3E: $00
    nop                                           ; $5B3F: $00
    ld bc, $3F00                                  ; $5B40: $01 $00 $3F
    ld bc, $007F                                  ; $5B43: $01 $7F $00
    rst RST_38                                    ; $5B46: $FF
    nop                                           ; $5B47: $00
    rst RST_38                                    ; $5B48: $FF
    nop                                           ; $5B49: $00
    ld a, a                                       ; $5B4A: $7F
    nop                                           ; $5B4B: $00
    jr c, jr_012_5B4E                             ; $5B4C: $38 $00

jr_012_5B4E:
    nop                                           ; $5B4E: $00

jr_012_5B4F:
    nop                                           ; $5B4F: $00
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

jr_012_5B60:
    inc bc                                        ; $5B60: $03
    nop                                           ; $5B61: $00
    adc h                                         ; $5B62: $8C
    inc bc                                        ; $5B63: $03
    di                                            ; $5B64: $F3
    adc a                                         ; $5B65: $8F
    rst RST_38                                    ; $5B66: $FF
    ld l, a                                       ; $5B67: $6F
    rst RST_38                                    ; $5B68: $FF
    cpl                                           ; $5B69: $2F
    rst RST_38                                    ; $5B6A: $FF
    cpl                                           ; $5B6B: $2F
    rst RST_38                                    ; $5B6C: $FF
    jr nz, jr_012_5B4F                            ; $5B6D: $20 $E0

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
    call z, Call_000_3003                         ; $5B80: $CC $03 $30
    rst RST_08                                    ; $5B83: $CF
    ldh a, [$FFEF]                                ; $5B84: $F0 $EF
    ldh a, [$FFEF]                                ; $5B86: $F0 $EF
    pop af                                        ; $5B88: $F1
    xor $FE                                       ; $5B89: $EE $FE
    ret nz                                        ; $5B8B: $C0

    ret nz                                        ; $5B8C: $C0

    nop                                           ; $5B8D: $00
    nop                                           ; $5B8E: $00
    nop                                           ; $5B8F: $00
    nop                                           ; $5B90: $00
    nop                                           ; $5B91: $00
    nop                                           ; $5B92: $00
    nop                                           ; $5B93: $00
    nop                                           ; $5B94: $00
    nop                                           ; $5B95: $00
    nop                                           ; $5B96: $00
    nop                                           ; $5B97: $00
    nop                                           ; $5B98: $00
    nop                                           ; $5B99: $00
    nop                                           ; $5B9A: $00
    nop                                           ; $5B9B: $00
    nop                                           ; $5B9C: $00
    nop                                           ; $5B9D: $00
    nop                                           ; $5B9E: $00
    nop                                           ; $5B9F: $00
    ld a, a                                       ; $5BA0: $7F
    cp h                                          ; $5BA1: $BC
    ccf                                           ; $5BA2: $3F
    sbc $3F                                       ; $5BA3: $DE $3F
    call c, $DA3D                                 ; $5BA5: $DC $3D $DA
    ei                                            ; $5BA8: $FB
    dec b                                         ; $5BA9: $05
    inc de                                        ; $5BAA: $13
    dec c                                         ; $5BAB: $0D
    rrca                                          ; $5BAC: $0F
    inc bc                                        ; $5BAD: $03
    rra                                           ; $5BAE: $1F
    dec bc                                        ; $5BAF: $0B
    rla                                           ; $5BB0: $17
    dec bc                                        ; $5BB1: $0B
    rrca                                          ; $5BB2: $0F
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
    nop                                           ; $5BBF: $00
    dec b                                         ; $5BC0: $05
    ld [bc], a                                    ; $5BC1: $02
    and $00                                       ; $5BC2: $E6 $00
    cp $E0                                        ; $5BC4: $FE $E0
    rst RST_38                                    ; $5BC6: $FF
    ret nc                                        ; $5BC7: $D0

    rst RST_38                                    ; $5BC8: $FF
    ret nc                                        ; $5BC9: $D0

    rst RST_38                                    ; $5BCA: $FF
    ret nc                                        ; $5BCB: $D0

    rst RST_38                                    ; $5BCC: $FF
    ret nz                                        ; $5BCD: $C0

    rst RST_10                                    ; $5BCE: $D7
    ld [$1827], sp                                ; $5BCF: $08 $27 $18
    ld a, $00                                     ; $5BD2: $3E $00
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
    nop                                           ; $5BE0: $00
    nop                                           ; $5BE1: $00
    nop                                           ; $5BE2: $00
    nop                                           ; $5BE3: $00
    nop                                           ; $5BE4: $00
    nop                                           ; $5BE5: $00
    nop                                           ; $5BE6: $00
    nop                                           ; $5BE7: $00
    nop                                           ; $5BE8: $00
    nop                                           ; $5BE9: $00
    nop                                           ; $5BEA: $00
    nop                                           ; $5BEB: $00
    nop                                           ; $5BEC: $00
    nop                                           ; $5BED: $00
    ld b, b                                       ; $5BEE: $40
    nop                                           ; $5BEF: $00
    and b                                         ; $5BF0: $A0
    ld b, b                                       ; $5BF1: $40
    ld hl, sp+$40                                 ; $5BF2: $F8 $40
    db $F4                                        ; $5BF4: $F4
    sbc b                                         ; $5BF5: $98
    ld hl, sp+$20                                 ; $5BF6: $F8 $20
    cp $80                                        ; $5BF8: $FE $80
    db $FD                                        ; $5BFA: $FD
    xor $FE                                       ; $5BFB: $EE $FE
    ldh a, [$FFF0]                                ; $5BFD: $F0 $F0
    nop                                           ; $5BFF: $00
    nop                                           ; $5C00: $00
    nop                                           ; $5C01: $00
    inc bc                                        ; $5C02: $03
    nop                                           ; $5C03: $00
    ld [bc], a                                    ; $5C04: $02
    ld bc, $0102                                  ; $5C05: $01 $02 $01
    rlca                                          ; $5C08: $07
    nop                                           ; $5C09: $00
    sub a                                         ; $5C0A: $97
    inc bc                                        ; $5C0B: $03
    rst RST_28                                    ; $5C0C: $EF
    sub b                                         ; $5C0D: $90
    ldh a, [c]                                    ; $5C0E: $F2
    ld hl, $C0FB                                  ; $5C0F: $21 $FB $C0
    rst RST_38                                    ; $5C12: $FF
    db $EB                                        ; $5C13: $EB
    ei                                            ; $5C14: $FB
    sub l                                         ; $5C15: $95
    rst RST_38                                    ; $5C16: $FF
    ld [hl], l                                    ; $5C17: $75
    rst RST_38                                    ; $5C18: $FF
    ei                                            ; $5C19: $FB
    db $FD                                        ; $5C1A: $FD
    ldh a, [c]                                    ; $5C1B: $F2
    di                                            ; $5C1C: $F3
    nop                                           ; $5C1D: $00
    rlca                                          ; $5C1E: $07
    nop                                           ; $5C1F: $00
    ld a, $00                                     ; $5C20: $3E $00
    rst RST_38                                    ; $5C22: $FF
    ld [bc], a                                    ; $5C23: $02
    rst RST_38                                    ; $5C24: $FF
    ld [hl], e                                    ; $5C25: $73
    rst RST_38                                    ; $5C26: $FF
    ld bc, $F9FF                                  ; $5C27: $01 $FF $F9
    rst RST_38                                    ; $5C2A: $FF
    db $10                                        ; $5C2B: $10
    ld [hl], $CD                                  ; $5C2C: $36 $CD
    db $FD                                        ; $5C2E: $FD
    inc hl                                        ; $5C2F: $23
    rst RST_38                                    ; $5C30: $FF
    rlca                                          ; $5C31: $07
    ld a, a                                       ; $5C32: $7F
    and [hl]                                      ; $5C33: $A6
    ld a, a                                       ; $5C34: $7F
    and [hl]                                      ; $5C35: $A6
    ld a, a                                       ; $5C36: $7F
    xor c                                         ; $5C37: $A9
    rst RST_38                                    ; $5C38: $FF
    ld l, a                                       ; $5C39: $6F
    rst RST_38                                    ; $5C3A: $FF
    rst RST_18                                    ; $5C3B: $DF
    rst RST_38                                    ; $5C3C: $FF
    cp a                                          ; $5C3D: $BF
    rst RST_38                                    ; $5C3E: $FF
    ld b, $00                                     ; $5C3F: $06 $00
    nop                                           ; $5C41: $00
    add b                                         ; $5C42: $80
    nop                                           ; $5C43: $00
    add b                                         ; $5C44: $80
    nop                                           ; $5C45: $00
    ret nz                                        ; $5C46: $C0

    add b                                         ; $5C47: $80
    ldh a, [rP1]                                  ; $5C48: $F0 $00
    ld [$F4F0], sp                                ; $5C4A: $08 $F0 $F4
    ret z                                         ; $5C4D: $C8

    db $FC                                        ; $5C4E: $FC
    nop                                           ; $5C4F: $00
    add a                                         ; $5C50: $87
    ld a, b                                       ; $5C51: $78
    adc a                                         ; $5C52: $8F
    ld [hl], a                                    ; $5C53: $77
    rst RST_28                                    ; $5C54: $EF
    sub [hl]                                      ; $5C55: $96
    rst RST_18                                    ; $5C56: $DF
    add [hl]                                      ; $5C57: $86
    adc a                                         ; $5C58: $8F
    dec b                                         ; $5C59: $05
    add a                                         ; $5C5A: $87
    ld bc, $0207                                  ; $5C5B: $01 $07 $02
    rlca                                          ; $5C5E: $07
    ld [bc], a                                    ; $5C5F: $02
    nop                                           ; $5C60: $00
    nop                                           ; $5C61: $00
    nop                                           ; $5C62: $00
    nop                                           ; $5C63: $00
    nop                                           ; $5C64: $00
    nop                                           ; $5C65: $00
    nop                                           ; $5C66: $00
    nop                                           ; $5C67: $00
    nop                                           ; $5C68: $00
    nop                                           ; $5C69: $00
    nop                                           ; $5C6A: $00
    nop                                           ; $5C6B: $00
    ld bc, $0600                                  ; $5C6C: $01 $00 $06
    ld bc, $040B                                  ; $5C6F: $01 $0B $04
    rlca                                          ; $5C72: $07
    ld [bc], a                                    ; $5C73: $02
    rrca                                          ; $5C74: $0F
    ld bc, $0D17                                  ; $5C75: $01 $17 $0D
    rra                                           ; $5C78: $1F
    inc bc                                        ; $5C79: $03
    inc bc                                        ; $5C7A: $03
    nop                                           ; $5C7B: $00
    inc bc                                        ; $5C7C: $03
    ld bc, $0001                                  ; $5C7D: $01 $01 $00
    rlca                                          ; $5C80: $07
    nop                                           ; $5C81: $00
    ld a, [bc]                                    ; $5C82: $0A
    dec b                                         ; $5C83: $05
    rla                                           ; $5C84: $17
    inc c                                         ; $5C85: $0C
    cpl                                           ; $5C86: $2F
    rra                                           ; $5C87: $1F
    ld e, a                                       ; $5C88: $5F
    ld a, $5E                                     ; $5C89: $3E $5E
    dec a                                         ; $5C8B: $3D
    cp [hl]                                       ; $5C8C: $BE
    ld a, l                                       ; $5C8D: $7D
    cp a                                          ; $5C8E: $BF
    ld a, b                                       ; $5C8F: $78
    ld a, a                                       ; $5C90: $7F
    dec de                                        ; $5C91: $1B
    ld e, a                                       ; $5C92: $5F
    jr nz, @+$48                                  ; $5C93: $20 $46

    add hl, sp                                    ; $5C95: $39
    inc hl                                        ; $5C96: $23
    dec e                                         ; $5C97: $1D
    rla                                           ; $5C98: $17
    ld [$060B], sp                                ; $5C99: $08 $0B $06
    rrca                                          ; $5C9C: $0F
    ld b, $0F                                     ; $5C9D: $06 $0F
    ld bc, $80C1                                  ; $5C9F: $01 $C1 $80
    db $E3                                        ; $5CA2: $E3
    ld b, c                                       ; $5CA3: $41
    ld [hl], a                                    ; $5CA4: $77
    and c                                         ; $5CA5: $A1
    xor e                                         ; $5CA6: $AB
    ld b, [hl]                                    ; $5CA7: $46
    rst RST_30                                    ; $5CA8: $F7
    rrca                                          ; $5CA9: $0F
    rst RST_28                                    ; $5CAA: $EF
    ld e, a                                       ; $5CAB: $5F
    rst RST_18                                    ; $5CAC: $DF
    ccf                                           ; $5CAD: $3F
    rst RST_18                                    ; $5CAE: $DF
    cp a                                          ; $5CAF: $BF
    rst RST_38                                    ; $5CB0: $FF
    ld e, $3F                                     ; $5CB1: $1E $3F
    call nz, Call_000_3BC7                        ; $5CB3: $C4 $C7 $3B
    ld b, e                                       ; $5CB6: $43
    cp h                                          ; $5CB7: $BC
    di                                            ; $5CB8: $F3
    inc c                                         ; $5CB9: $0C
    cp a                                          ; $5CBA: $BF
    ret nz                                        ; $5CBB: $C0

    cp a                                          ; $5CBC: $BF
    rst RST_10                                    ; $5CBD: $D7
    rst RST_38                                    ; $5CBE: $FF
    or b                                          ; $5CBF: $B0
    add b                                         ; $5CC0: $80
    nop                                           ; $5CC1: $00
    ldh [$FF80], a                                ; $5CC2: $E0 $80
    ldh a, [$FFE0]                                ; $5CC4: $F0 $E0
    ldh a, [$FFE0]                                ; $5CC6: $F0 $E0
    ldh a, [$FF60]                                ; $5CC8: $F0 $60
    ldh [$FF80], a                                ; $5CCA: $E0 $80
    ret nz                                        ; $5CCC: $C0

    add b                                         ; $5CCD: $80
    add b                                         ; $5CCE: $80
    nop                                           ; $5CCF: $00
    nop                                           ; $5CD0: $00
    nop                                           ; $5CD1: $00
    add b                                         ; $5CD2: $80
    nop                                           ; $5CD3: $00
    ret nz                                        ; $5CD4: $C0

    add b                                         ; $5CD5: $80
    ldh [$FFC0], a                                ; $5CD6: $E0 $C0
    ldh [rLCDC], a                                ; $5CD8: $E0 $40
    ldh [$FFC0], a                                ; $5CDA: $E0 $C0
    ret nz                                        ; $5CDC: $C0

    add b                                         ; $5CDD: $80
    add b                                         ; $5CDE: $80
    nop                                           ; $5CDF: $00
    nop                                           ; $5CE0: $00
    nop                                           ; $5CE1: $00
    nop                                           ; $5CE2: $00
    nop                                           ; $5CE3: $00
    nop                                           ; $5CE4: $00
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
    jr c, jr_012_5D00                             ; $5CFE: $38 $00

jr_012_5D00:
    dec de                                        ; $5D00: $1B
    nop                                           ; $5D01: $00
    inc l                                         ; $5D02: $2C
    dec de                                        ; $5D03: $1B
    ccf                                           ; $5D04: $3F
    jr jr_012_5D46                                ; $5D05: $18 $3F

    rlca                                          ; $5D07: $07
    rra                                           ; $5D08: $1F
    rrca                                          ; $5D09: $0F
    rra                                           ; $5D0A: $1F
    rrca                                          ; $5D0B: $0F
    rrca                                          ; $5D0C: $0F
    rlca                                          ; $5D0D: $07
    rlca                                          ; $5D0E: $07
    inc bc                                        ; $5D0F: $03

jr_012_5D10:
    rrca                                          ; $5D10: $0F
    nop                                           ; $5D11: $00

jr_012_5D12:
    inc de                                        ; $5D12: $13
    dec c                                         ; $5D13: $0D

jr_012_5D14:
    ld hl, $3F1E                                  ; $5D14: $21 $1E $3F
    nop                                           ; $5D17: $00
    nop                                           ; $5D18: $00
    nop                                           ; $5D19: $00
    nop                                           ; $5D1A: $00
    nop                                           ; $5D1B: $00
    nop                                           ; $5D1C: $00
    nop                                           ; $5D1D: $00
    nop                                           ; $5D1E: $00
    nop                                           ; $5D1F: $00
    ld b, a                                       ; $5D20: $47
    dec sp                                        ; $5D21: $3B
    ccf                                           ; $5D22: $3F
    rlca                                          ; $5D23: $07
    ccf                                           ; $5D24: $3F
    ld e, $FF                                     ; $5D25: $1E $FF
    nop                                           ; $5D27: $00
    ccf                                           ; $5D28: $3F
    rst RST_18                                    ; $5D29: $DF
    rra                                           ; $5D2A: $1F
    xor $DE                                       ; $5D2B: $EE $DE
    dec l                                         ; $5D2D: $2D
    db $FC                                        ; $5D2E: $FC
    add e                                         ; $5D2F: $83
    call nz, $C483                                ; $5D30: $C4 $83 $C4
    add e                                         ; $5D33: $83
    jp nz, $C281                                  ; $5D34: $C2 $81 $C2

    ld bc, $C0E1                                  ; $5D37: $01 $E1 $C0
    pop hl                                        ; $5D3A: $E1
    ret nz                                        ; $5D3B: $C0

    pop hl                                        ; $5D3C: $E1
    nop                                           ; $5D3D: $00
    nop                                           ; $5D3E: $00
    nop                                           ; $5D3F: $00
    ld hl, sp-$50                                 ; $5D40: $F8 $B0
    ld hl, sp+$70                                 ; $5D42: $F8 $70
    ldh a, [$FFE0]                                ; $5D44: $F0 $E0

jr_012_5D46:
    ldh [rP1], a                                  ; $5D46: $E0 $00
    ret nz                                        ; $5D48: $C0

    add b                                         ; $5D49: $80
    ret nz                                        ; $5D4A: $C0

    nop                                           ; $5D4B: $00
    ld b, b                                       ; $5D4C: $40
    add b                                         ; $5D4D: $80
    jr nz, jr_012_5D10                            ; $5D4E: $20 $C0

    jr nz, jr_012_5D12                            ; $5D50: $20 $C0

    jr c, jr_012_5D14                             ; $5D52: $38 $C0

    ld a, $D8                                     ; $5D54: $3E $D8
    ccf                                           ; $5D56: $3F
    jp c, Jump_000_38FF                           ; $5D57: $DA $FF $38

    cp l                                          ; $5D5A: $BD
    jp c, $D6F9                                   ; $5D5B: $DA $F9 $D6

    rst RST_38                                    ; $5D5E: $FF
    nop                                           ; $5D5F: $00
    ccf                                           ; $5D60: $3F
    call nc, $D63F                                ; $5D61: $D4 $3F $D6
    ld a, a                                       ; $5D64: $7F
    jp c, $E27F                                   ; $5D65: $DA $7F $E2

    ld [hl], a                                    ; $5D68: $77
    ldh [$FFF8], a                                ; $5D69: $E0 $F8
    ld h, a                                       ; $5D6B: $67
    rst RST_38                                    ; $5D6C: $FF
    nop                                           ; $5D6D: $00
    ld hl, sp+$07                                 ; $5D6E: $F8 $07
    adc a                                         ; $5D70: $8F
    ld [hl], a                                    ; $5D71: $77
    rst RST_38                                    ; $5D72: $FF
    ld [hl], a                                    ; $5D73: $77
    rst RST_38                                    ; $5D74: $FF
    ld [hl], a                                    ; $5D75: $77
    rst RST_38                                    ; $5D76: $FF
    ld [hl], a                                    ; $5D77: $77
    rst RST_38                                    ; $5D78: $FF
    ld [hl], b                                    ; $5D79: $70
    ldh a, [rP1]                                  ; $5D7A: $F0 $00
    ret nz                                        ; $5D7C: $C0

    add b                                         ; $5D7D: $80
    add b                                         ; $5D7E: $80
    nop                                           ; $5D7F: $00
    ccf                                           ; $5D80: $3F
    nop                                           ; $5D81: $00
    ld a, a                                       ; $5D82: $7F
    inc b                                         ; $5D83: $04
    rst RST_38                                    ; $5D84: $FF
    jr @+$01                                      ; $5D85: $18 $FF

    ld [hl], b                                    ; $5D87: $70
    rst RST_38                                    ; $5D88: $FF
    db $E3                                        ; $5D89: $E3
    rst RST_38                                    ; $5D8A: $FF
    adc $FF                                       ; $5D8B: $CE $FF
    call c, $BCFE                                 ; $5D8D: $DC $FE $BC
    xor $F8                                       ; $5D90: $EE $F8
    db $DD                                        ; $5D92: $DD
    ld hl, sp-$62                                 ; $5D93: $F8 $9E
    ld sp, hl                                     ; $5D95: $F9
    rra                                           ; $5D96: $1F
    rst RST_30                                    ; $5D97: $F7
    ccf                                           ; $5D98: $3F
    rst RST_30                                    ; $5D99: $F7
    ccf                                           ; $5D9A: $3F
    ldh [$FF3F], a                                ; $5D9B: $E0 $3F
    db $D3                                        ; $5D9D: $D3
    dec a                                         ; $5D9E: $3D
    jp nc, RST_00                                 ; $5D9F: $D2 $00 $00

    rra                                           ; $5DA2: $1F
    nop                                           ; $5DA3: $00
    rst RST_38                                    ; $5DA4: $FF
    nop                                           ; $5DA5: $00
    rst RST_38                                    ; $5DA6: $FF
    nop                                           ; $5DA7: $00
    rst RST_38                                    ; $5DA8: $FF
    nop                                           ; $5DA9: $00
    db $FC                                        ; $5DAA: $FC
    nop                                           ; $5DAB: $00
    ld hl, sp+$00                                 ; $5DAC: $F8 $00
    ldh [$FF80], a                                ; $5DAE: $E0 $80
    ret nz                                        ; $5DB0: $C0

    nop                                           ; $5DB1: $00
    add b                                         ; $5DB2: $80
    nop                                           ; $5DB3: $00
    nop                                           ; $5DB4: $00
    nop                                           ; $5DB5: $00
    nop                                           ; $5DB6: $00
    nop                                           ; $5DB7: $00
    nop                                           ; $5DB8: $00
    nop                                           ; $5DB9: $00
    ld hl, sp+$00                                 ; $5DBA: $F8 $00
    ld b, $F8                                     ; $5DBC: $06 $F8
    ld sp, hl                                     ; $5DBE: $F9
    cp $80                                        ; $5DBF: $FE $80
    rst RST_38                                    ; $5DC1: $FF
    add b                                         ; $5DC2: $80
    rst RST_38                                    ; $5DC3: $FF
    add b                                         ; $5DC4: $80
    rst RST_38                                    ; $5DC5: $FF
    add b                                         ; $5DC6: $80
    rst RST_38                                    ; $5DC7: $FF
    rlca                                          ; $5DC8: $07
    ld hl, sp+$1D                                 ; $5DC9: $F8 $1D
    ldh [c], a                                    ; $5DCB: $E2
    cpl                                           ; $5DCC: $2F
    ret c                                         ; $5DCD: $D8

    dec a                                         ; $5DCE: $3D
    jp $D82F                                      ; $5DCF: $C3 $2F $D8


    dec e                                         ; $5DD2: $1D
    db $E3                                        ; $5DD3: $E3
    rla                                           ; $5DD4: $17
    db $EC                                        ; $5DD5: $EC
    adc [hl]                                      ; $5DD6: $8E
    pop af                                        ; $5DD7: $F1
    add c                                         ; $5DD8: $81
    cp $C1                                        ; $5DD9: $FE $C1
    rst RST_38                                    ; $5DDB: $FF
    rst RST_38                                    ; $5DDC: $FF
    ld a, [hl]                                    ; $5DDD: $7E
    ld a, [hl]                                    ; $5DDE: $7E
    nop                                           ; $5DDF: $00
    nop                                           ; $5DE0: $00
    nop                                           ; $5DE1: $00
    ld bc, $0300                                  ; $5DE2: $01 $00 $03
    nop                                           ; $5DE5: $00
    rlca                                          ; $5DE6: $07
    ld bc, $030F                                  ; $5DE7: $01 $0F $03
    rra                                           ; $5DEA: $1F
    rlca                                          ; $5DEB: $07
    ccf                                           ; $5DEC: $3F
    rrca                                          ; $5DED: $0F
    dec a                                         ; $5DEE: $3D
    rra                                           ; $5DEF: $1F
    ld a, e                                       ; $5DF0: $7B
    ccf                                           ; $5DF1: $3F
    ld [hl], e                                    ; $5DF2: $73
    ccf                                           ; $5DF3: $3F
    di                                            ; $5DF4: $F3
    ld a, a                                       ; $5DF5: $7F
    rst RST_20                                    ; $5DF6: $E7
    ld a, a                                       ; $5DF7: $7F
    and $FF                                       ; $5DF8: $E6 $FF
    add $FF                                       ; $5DFA: $C6 $FF
    call nz, $C4FF                                ; $5DFC: $C4 $FF $C4
    rst RST_38                                    ; $5DFF: $FF
    ld bc, $0100                                  ; $5E00: $01 $00 $01
    nop                                           ; $5E03: $00
    ld bc, $0300                                  ; $5E04: $01 $00 $03
    ld bc, $0103                                  ; $5E07: $01 $03 $01
    inc bc                                        ; $5E0A: $03
    ld bc, $0103                                  ; $5E0B: $01 $03 $01
    rlca                                          ; $5E0E: $07
    inc bc                                        ; $5E0F: $03
    rlca                                          ; $5E10: $07
    inc bc                                        ; $5E11: $03
    rlca                                          ; $5E12: $07
    inc bc                                        ; $5E13: $03
    rlca                                          ; $5E14: $07
    inc bc                                        ; $5E15: $03
    rlca                                          ; $5E16: $07
    inc bc                                        ; $5E17: $03
    rlca                                          ; $5E18: $07
    inc bc                                        ; $5E19: $03
    rlca                                          ; $5E1A: $07
    inc bc                                        ; $5E1B: $03
    rlca                                          ; $5E1C: $07
    inc bc                                        ; $5E1D: $03
    inc bc                                        ; $5E1E: $03
    ld bc, $0000                                  ; $5E1F: $01 $00 $00
    nop                                           ; $5E22: $00
    nop                                           ; $5E23: $00
    nop                                           ; $5E24: $00
    nop                                           ; $5E25: $00
    nop                                           ; $5E26: $00
    nop                                           ; $5E27: $00
    nop                                           ; $5E28: $00
    nop                                           ; $5E29: $00
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
    rst RST_38                                    ; $5E3A: $FF
    nop                                           ; $5E3B: $00
    db $FC                                        ; $5E3C: $FC
    nop                                           ; $5E3D: $00
    ldh [rP1], a                                  ; $5E3E: $E0 $00
    nop                                           ; $5E40: $00
    nop                                           ; $5E41: $00
    nop                                           ; $5E42: $00
    nop                                           ; $5E43: $00
    nop                                           ; $5E44: $00
    nop                                           ; $5E45: $00
    nop                                           ; $5E46: $00
    nop                                           ; $5E47: $00
    nop                                           ; $5E48: $00
    nop                                           ; $5E49: $00
    nop                                           ; $5E4A: $00
    nop                                           ; $5E4B: $00
    nop                                           ; $5E4C: $00
    nop                                           ; $5E4D: $00
    nop                                           ; $5E4E: $00
    nop                                           ; $5E4F: $00
    nop                                           ; $5E50: $00
    nop                                           ; $5E51: $00
    nop                                           ; $5E52: $00
    nop                                           ; $5E53: $00
    nop                                           ; $5E54: $00
    nop                                           ; $5E55: $00
    nop                                           ; $5E56: $00
    nop                                           ; $5E57: $00
    nop                                           ; $5E58: $00
    nop                                           ; $5E59: $00
    nop                                           ; $5E5A: $00
    nop                                           ; $5E5B: $00
    ld bc, $0F00                                  ; $5E5C: $01 $00 $0F
    nop                                           ; $5E5F: $00
    inc bc                                        ; $5E60: $03
    ld bc, $0001                                  ; $5E61: $01 $01 $00
    nop                                           ; $5E64: $00
    nop                                           ; $5E65: $00
    nop                                           ; $5E66: $00
    nop                                           ; $5E67: $00
    nop                                           ; $5E68: $00
    nop                                           ; $5E69: $00
    nop                                           ; $5E6A: $00
    nop                                           ; $5E6B: $00
    nop                                           ; $5E6C: $00
    nop                                           ; $5E6D: $00
    nop                                           ; $5E6E: $00
    nop                                           ; $5E6F: $00
    nop                                           ; $5E70: $00
    nop                                           ; $5E71: $00
    nop                                           ; $5E72: $00
    nop                                           ; $5E73: $00
    nop                                           ; $5E74: $00
    nop                                           ; $5E75: $00
    nop                                           ; $5E76: $00
    nop                                           ; $5E77: $00
    nop                                           ; $5E78: $00
    nop                                           ; $5E79: $00
    nop                                           ; $5E7A: $00
    nop                                           ; $5E7B: $00
    nop                                           ; $5E7C: $00
    nop                                           ; $5E7D: $00
    nop                                           ; $5E7E: $00
    nop                                           ; $5E7F: $00
    cp $FF                                        ; $5E80: $FE $FF
    rst RST_38                                    ; $5E82: $FF
    ld a, a                                       ; $5E83: $7F
    rst RST_38                                    ; $5E84: $FF
    rlca                                          ; $5E85: $07
    rst RST_38                                    ; $5E86: $FF
    ld sp, hl                                     ; $5E87: $F9
    rst RST_38                                    ; $5E88: $FF
    add [hl]                                      ; $5E89: $86
    rst RST_38                                    ; $5E8A: $FF
    ld a, e                                       ; $5E8B: $7B
    rst RST_38                                    ; $5E8C: $FF
    call $B4CF                                    ; $5E8D: $CD $CF $B4
    rst RST_00                                    ; $5E90: $C7
    ld a, [hl-]                                   ; $5E91: $3A
    add a                                         ; $5E92: $87
    ld a, d                                       ; $5E93: $7A
    adc a                                         ; $5E94: $8F
    halt                                          ; $5E95: $76
    ld c, a                                       ; $5E96: $4F
    or b                                          ; $5E97: $B0
    cp a                                          ; $5E98: $BF
    rst RST_00                                    ; $5E99: $C7
    rst RST_20                                    ; $5E9A: $E7
    db $DB                                        ; $5E9B: $DB
    rst RST_38                                    ; $5E9C: $FF
    ret nz                                        ; $5E9D: $C0

    ret nz                                        ; $5E9E: $C0

    add b                                         ; $5E9F: $80
    add b                                         ; $5EA0: $80
    nop                                           ; $5EA1: $00
    ret nz                                        ; $5EA2: $C0

    add b                                         ; $5EA3: $80
    ld hl, sp-$80                                 ; $5EA4: $F8 $80
    db $FC                                        ; $5EA6: $FC
    cp b                                          ; $5EA7: $B8
    cp $BC                                        ; $5EA8: $FE $BC
    cp $3C                                        ; $5EAA: $FE $3C
    cp $B0                                        ; $5EAC: $FE $B0
    ldh a, [c]                                    ; $5EAE: $F2
    ld l, h                                       ; $5EAF: $6C
    ldh [c], a                                    ; $5EB0: $E2
    inc e                                         ; $5EB1: $1C
    ld b, c                                       ; $5EB2: $41
    ld a, $21                                     ; $5EB3: $3E $21
    ld e, $11                                     ; $5EB5: $1E $11
    ld c, $8F                                     ; $5EB7: $0E $8F
    ld bc, $068D                                  ; $5EB9: $01 $8D $06
    adc a                                         ; $5EBC: $8F
    ld b, $07                                     ; $5EBD: $06 $07
    nop                                           ; $5EBF: $00
    jr c, jr_012_5EC2                             ; $5EC0: $38 $00

jr_012_5EC2:
    cp $38                                        ; $5EC2: $FE $38
    rst RST_38                                    ; $5EC4: $FF
    ld a, [$FAFF]                                 ; $5EC5: $FA $FF $FA
    rst RST_38                                    ; $5EC8: $FF
    or $FF                                        ; $5EC9: $F6 $FF
    ldh [$FFED], a                                ; $5ECB: $E0 $ED
    jp nz, $8ED1                                  ; $5ECD: $C2 $D1 $8E

    sbc a                                         ; $5ED0: $9F
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
    add b                                         ; $5EE0: $80
    nop                                           ; $5EE1: $00
    nop                                           ; $5EE2: $00
    nop                                           ; $5EE3: $00
    nop                                           ; $5EE4: $00
    nop                                           ; $5EE5: $00
    nop                                           ; $5EE6: $00
    nop                                           ; $5EE7: $00
    nop                                           ; $5EE8: $00
    nop                                           ; $5EE9: $00
    nop                                           ; $5EEA: $00
    nop                                           ; $5EEB: $00
    nop                                           ; $5EEC: $00
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
    rra                                           ; $5F00: $1F
    nop                                           ; $5F01: $00
    ccf                                           ; $5F02: $3F
    inc de                                        ; $5F03: $13
    dec a                                         ; $5F04: $3D
    ld [de], a                                    ; $5F05: $12
    ccf                                           ; $5F06: $3F
    inc d                                         ; $5F07: $14
    ccf                                           ; $5F08: $3F
    ld d, $3F                                     ; $5F09: $16 $3F
    ld a, [de]                                    ; $5F0B: $1A
    rra                                           ; $5F0C: $1F
    ld [bc], a                                    ; $5F0D: $02
    rlca                                          ; $5F0E: $07
    nop                                           ; $5F0F: $00
    ld hl, sp+$07                                 ; $5F10: $F8 $07
    rst RST_38                                    ; $5F12: $FF
    nop                                           ; $5F13: $00
    adc b                                         ; $5F14: $88
    ld [hl], a                                    ; $5F15: $77
    rst RST_38                                    ; $5F16: $FF
    ld [hl], a                                    ; $5F17: $77
    rst RST_38                                    ; $5F18: $FF
    ld [hl], a                                    ; $5F19: $77
    rst RST_38                                    ; $5F1A: $FF
    ld [hl], a                                    ; $5F1B: $77
    rst RST_38                                    ; $5F1C: $FF
    ld [hl], a                                    ; $5F1D: $77
    rst RST_30                                    ; $5F1E: $F7
    nop                                           ; $5F1F: $00
    inc bc                                        ; $5F20: $03
    nop                                           ; $5F21: $00
    dec e                                         ; $5F22: $1D
    ld [bc], a                                    ; $5F23: $02
    cpl                                           ; $5F24: $2F
    jr jr_012_5F64                                ; $5F25: $18 $3D

    inc bc                                        ; $5F27: $03
    cpl                                           ; $5F28: $2F
    jr jr_012_5F48                                ; $5F29: $18 $1D

    inc bc                                        ; $5F2B: $03
    rla                                           ; $5F2C: $17
    inc c                                         ; $5F2D: $0C
    ld c, $01                                     ; $5F2E: $0E $01
    ld bc, $0000                                  ; $5F30: $01 $00 $00
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

jr_012_5F48:
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
    nop                                           ; $5F56: $00
    nop                                           ; $5F57: $00
    inc bc                                        ; $5F58: $03
    nop                                           ; $5F59: $00
    inc c                                         ; $5F5A: $0C
    inc bc                                        ; $5F5B: $03
    rra                                           ; $5F5C: $1F
    rrca                                          ; $5F5D: $0F
    ccf                                           ; $5F5E: $3F
    rra                                           ; $5F5F: $1F
    nop                                           ; $5F60: $00
    nop                                           ; $5F61: $00
    nop                                           ; $5F62: $00
    nop                                           ; $5F63: $00

jr_012_5F64:
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
    ld hl, sp+$00                                 ; $5F7A: $F8 $00
    ld b, $F8                                     ; $5F7C: $06 $F8
    ld sp, hl                                     ; $5F7E: $F9
    cp $07                                        ; $5F7F: $FE $07
    nop                                           ; $5F81: $00
    ld l, b                                       ; $5F82: $68
    rlca                                          ; $5F83: $07
    cp [hl]                                       ; $5F84: $BE
    ld h, c                                       ; $5F85: $61
    rst RST_38                                    ; $5F86: $FF
    ld l, [hl]                                    ; $5F87: $6E
    ld a, a                                       ; $5F88: $7F
    rra                                           ; $5F89: $1F
    ccf                                           ; $5F8A: $3F
    rra                                           ; $5F8B: $1F
    rra                                           ; $5F8C: $1F
    rrca                                          ; $5F8D: $0F
    rrca                                          ; $5F8E: $0F
    inc bc                                        ; $5F8F: $03
    inc bc                                        ; $5F90: $03
    nop                                           ; $5F91: $00
    inc bc                                        ; $5F92: $03
    ld bc, $0107                                  ; $5F93: $01 $07 $01
    add hl, bc                                    ; $5F96: $09
    ld b, $11                                     ; $5F97: $06 $11
    ld c, $0E                                     ; $5F99: $0E $0E
    nop                                           ; $5F9B: $00
    nop                                           ; $5F9C: $00
    nop                                           ; $5F9D: $00
    nop                                           ; $5F9E: $00
    nop                                           ; $5F9F: $00
    ld a, a                                       ; $5FA0: $7F
    dec c                                         ; $5FA1: $0D
    ld b, a                                       ; $5FA2: $47
    dec sp                                        ; $5FA3: $3B
    ccf                                           ; $5FA4: $3F
    rlca                                          ; $5FA5: $07
    ccf                                           ; $5FA6: $3F
    ld e, $FF                                     ; $5FA7: $1E $FF
    nop                                           ; $5FA9: $00
    ccf                                           ; $5FAA: $3F
    rst RST_18                                    ; $5FAB: $DF
    rra                                           ; $5FAC: $1F
    xor $9E                                       ; $5FAD: $EE $9E
    ld l, l                                       ; $5FAF: $6D
    db $FC                                        ; $5FB0: $FC
    add e                                         ; $5FB1: $83
    call nz, $C283                                ; $5FB2: $C4 $83 $C2
    add c                                         ; $5FB5: $81
    ldh [c], a                                    ; $5FB6: $E2
    ld bc, $E0F1                                  ; $5FB7: $01 $F1 $E0
    pop af                                        ; $5FBA: $F1
    ldh [$FFE1], a                                ; $5FBB: $E0 $E1
    ret nz                                        ; $5FBD: $C0

    ret nz                                        ; $5FBE: $C0

    add b                                         ; $5FBF: $80
    db $FC                                        ; $5FC0: $FC
    add b                                         ; $5FC1: $80
    ldh a, [$FFA0]                                ; $5FC2: $F0 $A0
    ldh a, [$FF60]                                ; $5FC4: $F0 $60
    ldh [$FFC0], a                                ; $5FC6: $E0 $C0
    ret nz                                        ; $5FC8: $C0

    nop                                           ; $5FC9: $00
    ret nz                                        ; $5FCA: $C0

    add b                                         ; $5FCB: $80
    ret nz                                        ; $5FCC: $C0

    nop                                           ; $5FCD: $00
    ld b, b                                       ; $5FCE: $40
    add b                                         ; $5FCF: $80
    ld b, b                                       ; $5FD0: $40
    add b                                         ; $5FD1: $80
    jr c, @-$3E                                   ; $5FD2: $38 $C0

    inc a                                         ; $5FD4: $3C
    ret c                                         ; $5FD5: $D8

    ld a, $D8                                     ; $5FD6: $3E $D8
    rst RST_38                                    ; $5FD8: $FF
    ld a, [hl-]                                   ; $5FD9: $3A
    cp a                                          ; $5FDA: $BF
    db $DB                                        ; $5FDB: $DB
    rst RST_38                                    ; $5FDC: $FF
    rst RST_10                                    ; $5FDD: $D7
    rst RST_38                                    ; $5FDE: $FF
    ld bc, $B0F8                                  ; $5FDF: $01 $F8 $B0
    ld hl, sp+$70                                 ; $5FE2: $F8 $70
    ld hl, sp+$10                                 ; $5FE4: $F8 $10
    sub b                                         ; $5FE6: $90
    ld h, b                                       ; $5FE7: $60
    sub b                                         ; $5FE8: $90
    ld h, b                                       ; $5FE9: $60
    ld [hl], b                                    ; $5FEA: $70
    nop                                           ; $5FEB: $00
    nop                                           ; $5FEC: $00
    nop                                           ; $5FED: $00
    nop                                           ; $5FEE: $00
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
    add b                                         ; $6000: $80
    nop                                           ; $6001: $00
    nop                                           ; $6002: $00
    nop                                           ; $6003: $00
    nop                                           ; $6004: $00
    nop                                           ; $6005: $00
    nop                                           ; $6006: $00
    nop                                           ; $6007: $00
    nop                                           ; $6008: $00
    nop                                           ; $6009: $00
    nop                                           ; $600A: $00
    nop                                           ; $600B: $00
    nop                                           ; $600C: $00
    nop                                           ; $600D: $00
    nop                                           ; $600E: $00
    nop                                           ; $600F: $00
    nop                                           ; $6010: $00
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
    cp $7F                                        ; $6020: $FE $7F
    rst RST_38                                    ; $6022: $FF
    ld a, a                                       ; $6023: $7F
    rst RST_38                                    ; $6024: $FF
    rlca                                          ; $6025: $07
    rst RST_38                                    ; $6026: $FF
    ld sp, hl                                     ; $6027: $F9
    rst RST_38                                    ; $6028: $FF
    add [hl]                                      ; $6029: $86
    rst RST_38                                    ; $602A: $FF
    ld a, e                                       ; $602B: $7B
    rst RST_38                                    ; $602C: $FF
    call $B4CF                                    ; $602D: $CD $CF $B4
    rst RST_00                                    ; $6030: $C7
    ld a, [hl-]                                   ; $6031: $3A
    add a                                         ; $6032: $87
    ld a, d                                       ; $6033: $7A
    adc a                                         ; $6034: $8F
    halt                                          ; $6035: $76
    ld c, a                                       ; $6036: $4F
    or h                                          ; $6037: $B4
    cp a                                          ; $6038: $BF
    jp $C7EF                                      ; $6039: $C3 $EF $C7


    rst RST_28                                    ; $603C: $EF
    rst RST_00                                    ; $603D: $C7
    rst RST_10                                    ; $603E: $D7
    adc d                                         ; $603F: $8A
    add b                                         ; $6040: $80
    nop                                           ; $6041: $00
    ret nz                                        ; $6042: $C0

    add b                                         ; $6043: $80
    ld hl, sp-$80                                 ; $6044: $F8 $80
    db $FC                                        ; $6046: $FC
    cp b                                          ; $6047: $B8
    cp $BC                                        ; $6048: $FE $BC
    cp $3C                                        ; $604A: $FE $3C
    cp $B0                                        ; $604C: $FE $B0
    ldh a, [c]                                    ; $604E: $F2
    ld l, h                                       ; $604F: $6C
    ldh [c], a                                    ; $6050: $E2
    inc e                                         ; $6051: $1C
    ld hl, $111E                                  ; $6052: $21 $1E $11
    ld c, $11                                     ; $6055: $0E $11
    ld c, $8F                                     ; $6057: $0E $8F
    nop                                           ; $6059: $00
    adc l                                         ; $605A: $8D
    ld b, $8F                                     ; $605B: $06 $8F
    ld b, $07                                     ; $605D: $06 $07
    ld bc, $00E0                                  ; $605F: $01 $E0 $00
    sub b                                         ; $6062: $90
    ld h, b                                       ; $6063: $60
    add sp, $70                                   ; $6064: $E8 $70
    db $FC                                        ; $6066: $FC
    ld a, b                                       ; $6067: $78
    rst RST_38                                    ; $6068: $FF
    ld a, h                                       ; $6069: $7C
    rst RST_38                                    ; $606A: $FF
    db $FD                                        ; $606B: $FD
    rst RST_38                                    ; $606C: $FF
    dec sp                                        ; $606D: $3B
    ccf                                           ; $606E: $3F
    inc bc                                        ; $606F: $03
    rlca                                          ; $6070: $07
    nop                                           ; $6071: $00
    inc b                                         ; $6072: $04
    inc bc                                        ; $6073: $03
    dec b                                         ; $6074: $05
    ld [bc], a                                    ; $6075: $02
    add hl, bc                                    ; $6076: $09
    ld b, $0E                                     ; $6077: $06 $0E
    nop                                           ; $6079: $00
    nop                                           ; $607A: $00
    nop                                           ; $607B: $00
    nop                                           ; $607C: $00
    nop                                           ; $607D: $00
    nop                                           ; $607E: $00
    nop                                           ; $607F: $00
    sub [hl]                                      ; $6080: $96
    ld [$1824], sp                                ; $6081: $08 $24 $18
    jr z, jr_012_6096                             ; $6084: $28 $10

    jr nc, jr_012_6088                            ; $6086: $30 $00

jr_012_6088:
    nop                                           ; $6088: $00
    nop                                           ; $6089: $00
    nop                                           ; $608A: $00
    nop                                           ; $608B: $00
    nop                                           ; $608C: $00

jr_012_608D:
    nop                                           ; $608D: $00
    nop                                           ; $608E: $00
    nop                                           ; $608F: $00
    nop                                           ; $6090: $00
    nop                                           ; $6091: $00
    nop                                           ; $6092: $00
    nop                                           ; $6093: $00
    nop                                           ; $6094: $00
    nop                                           ; $6095: $00

jr_012_6096:
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
    add b                                         ; $60A0: $80
    nop                                           ; $60A1: $00
    ret nz                                        ; $60A2: $C0

    add b                                         ; $60A3: $80
    ret nz                                        ; $60A4: $C0

    add b                                         ; $60A5: $80
    ret nz                                        ; $60A6: $C0

    add b                                         ; $60A7: $80
    add b                                         ; $60A8: $80
    nop                                           ; $60A9: $00
    add b                                         ; $60AA: $80
    nop                                           ; $60AB: $00
    nop                                           ; $60AC: $00

jr_012_60AD:
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
    nop                                           ; $60BA: $00
    nop                                           ; $60BB: $00
    nop                                           ; $60BC: $00
    nop                                           ; $60BD: $00
    nop                                           ; $60BE: $00
    nop                                           ; $60BF: $00
    jr nz, jr_012_60C2                            ; $60C0: $20 $00

jr_012_60C2:
    ld d, b                                       ; $60C2: $50
    jr nz, jr_012_608D                            ; $60C3: $20 $C8

    jr nc, jr_012_60AD                            ; $60C5: $30 $E6

    jr jr_012_6138                                ; $60C7: $18 $6F

    ld d, $7F                                     ; $60C9: $16 $7F
    rrca                                          ; $60CB: $0F
    ccf                                           ; $60CC: $3F
    rrca                                          ; $60CD: $0F
    rra                                           ; $60CE: $1F
    rlca                                          ; $60CF: $07
    rrca                                          ; $60D0: $0F
    rlca                                          ; $60D1: $07
    rlca                                          ; $60D2: $07
    nop                                           ; $60D3: $00
    nop                                           ; $60D4: $00
    nop                                           ; $60D5: $00
    nop                                           ; $60D6: $00
    nop                                           ; $60D7: $00
    nop                                           ; $60D8: $00
    nop                                           ; $60D9: $00
    nop                                           ; $60DA: $00
    nop                                           ; $60DB: $00
    nop                                           ; $60DC: $00
    nop                                           ; $60DD: $00
    nop                                           ; $60DE: $00
    nop                                           ; $60DF: $00
    ld bc, $0700                                  ; $60E0: $01 $00 $07
    nop                                           ; $60E3: $00
    add hl, de                                    ; $60E4: $19
    rlca                                          ; $60E5: $07
    ld h, a                                       ; $60E6: $67
    rra                                           ; $60E7: $1F
    sbc a                                         ; $60E8: $9F
    ld a, a                                       ; $60E9: $7F
    rst RST_38                                    ; $60EA: $FF
    ld a, a                                       ; $60EB: $7F
    rst RST_38                                    ; $60EC: $FF
    ld a, a                                       ; $60ED: $7F
    rst RST_38                                    ; $60EE: $FF
    cp h                                          ; $60EF: $BC
    rst RST_38                                    ; $60F0: $FF
    nop                                           ; $60F1: $00
    nop                                           ; $60F2: $00
    nop                                           ; $60F3: $00
    nop                                           ; $60F4: $00
    nop                                           ; $60F5: $00
    nop                                           ; $60F6: $00
    nop                                           ; $60F7: $00
    nop                                           ; $60F8: $00
    nop                                           ; $60F9: $00
    nop                                           ; $60FA: $00
    nop                                           ; $60FB: $00
    nop                                           ; $60FC: $00
    nop                                           ; $60FD: $00
    nop                                           ; $60FE: $00
    nop                                           ; $60FF: $00
    ld a, [bc]                                    ; $6100: $0A
    dec b                                         ; $6101: $05
    ld c, $05                                     ; $6102: $0E $05
    rlca                                          ; $6104: $07
    inc bc                                        ; $6105: $03
    dec b                                         ; $6106: $05
    ld [bc], a                                    ; $6107: $02
    inc bc                                        ; $6108: $03
    nop                                           ; $6109: $00
    ld bc, $C300                                  ; $610A: $01 $00 $C3
    nop                                           ; $610D: $00
    xor h                                         ; $610E: $AC
    jp $CFF0                                      ; $610F: $C3 $F0 $CF


    ldh [$FF1F], a                                ; $6112: $E0 $1F
    pop hl                                        ; $6114: $E1
    sbc $FE                                       ; $6115: $DE $FE
    pop bc                                        ; $6117: $C1
    pop hl                                        ; $6118: $E1
    sbc $FE                                       ; $6119: $DE $FE
    add b                                         ; $611B: $80
    ldh [rP1], a                                  ; $611C: $E0 $00
    add b                                         ; $611E: $80
    nop                                           ; $611F: $00
    rst RST_38                                    ; $6120: $FF
    ld d, [hl]                                    ; $6121: $56
    rst RST_38                                    ; $6122: $FF
    ld e, c                                       ; $6123: $59
    rst RST_38                                    ; $6124: $FF
    ld e, a                                       ; $6125: $5F
    rst RST_38                                    ; $6126: $FF
    sbc $FF                                       ; $6127: $DE $FF
    cp [hl]                                       ; $6129: $BE
    cp $0D                                        ; $612A: $FE $0D
    db $FD                                        ; $612C: $FD
    ldh a, [$FFFD]                                ; $612D: $F0 $FD
    ld a, b                                       ; $612F: $78
    ld a, l                                       ; $6130: $7D
    cp b                                          ; $6131: $B8
    ld a, h                                       ; $6132: $7C
    cp b                                          ; $6133: $B8
    ld hl, sp+$30                                 ; $6134: $F8 $30
    ld [hl], b                                    ; $6136: $70
    add b                                         ; $6137: $80

jr_012_6138:
    add b                                         ; $6138: $80
    nop                                           ; $6139: $00
    nop                                           ; $613A: $00
    nop                                           ; $613B: $00
    nop                                           ; $613C: $00
    nop                                           ; $613D: $00
    nop                                           ; $613E: $00
    nop                                           ; $613F: $00
    adc a                                         ; $6140: $8F
    ld [hl], a                                    ; $6141: $77
    rst RST_28                                    ; $6142: $EF
    ld d, $9F                                     ; $6143: $16 $9F
    ld b, $8F                                     ; $6145: $06 $8F
    dec b                                         ; $6147: $05
    ld h, a                                       ; $6148: $67
    add c                                         ; $6149: $81
    ld a, a                                       ; $614A: $7F
    and d                                         ; $614B: $A2
    rst RST_38                                    ; $614C: $FF
    ld [hl], d                                    ; $614D: $72
    ei                                            ; $614E: $FB
    db $F4                                        ; $614F: $F4
    rst RST_38                                    ; $6150: $FF
    pop af                                        ; $6151: $F1
    rst RST_38                                    ; $6152: $FF
    ld a, h                                       ; $6153: $7C
    rst RST_38                                    ; $6154: $FF
    ld a, l                                       ; $6155: $7D
    ld a, a                                       ; $6156: $7F
    jr c, jr_012_6198                             ; $6157: $38 $3F

    ld [bc], a                                    ; $6159: $02
    ld [bc], a                                    ; $615A: $02
    ld bc, $0001                                  ; $615B: $01 $01 $00
    nop                                           ; $615E: $00
    nop                                           ; $615F: $00
    ld hl, sp+$40                                 ; $6160: $F8 $40
    db $F4                                        ; $6162: $F4
    sbc b                                         ; $6163: $98
    ld hl, sp+$20                                 ; $6164: $F8 $20
    cp $80                                        ; $6166: $FE $80
    db $FD                                        ; $6168: $FD
    xor $FE                                       ; $6169: $EE $FE
    ldh a, [$FFF0]                                ; $616B: $F0 $F0
    nop                                           ; $616D: $00
    ret nz                                        ; $616E: $C0

    nop                                           ; $616F: $00
    and b                                         ; $6170: $A0
    ret nz                                        ; $6171: $C0

    ret nz                                        ; $6172: $C0

    nop                                           ; $6173: $00
    ret nz                                        ; $6174: $C0

    add b                                         ; $6175: $80
    and b                                         ; $6176: $A0
    ld b, b                                       ; $6177: $40
    ld b, b                                       ; $6178: $40
    nop                                           ; $6179: $00
    add b                                         ; $617A: $80
    nop                                           ; $617B: $00
    add b                                         ; $617C: $80
    nop                                           ; $617D: $00
    nop                                           ; $617E: $00
    nop                                           ; $617F: $00
    nop                                           ; $6180: $00
    nop                                           ; $6181: $00
    nop                                           ; $6182: $00
    nop                                           ; $6183: $00
    nop                                           ; $6184: $00
    nop                                           ; $6185: $00
    nop                                           ; $6186: $00
    nop                                           ; $6187: $00
    nop                                           ; $6188: $00
    nop                                           ; $6189: $00
    nop                                           ; $618A: $00
    nop                                           ; $618B: $00
    inc bc                                        ; $618C: $03
    nop                                           ; $618D: $00
    ld a, a                                       ; $618E: $7F
    nop                                           ; $618F: $00
    ld e, a                                       ; $6190: $5F
    ld l, $5F                                     ; $6191: $2E $5F
    jr nz, @+$01                                  ; $6193: $20 $FF

    rra                                           ; $6195: $1F
    rst RST_38                                    ; $6196: $FF
    ld h, d                                       ; $6197: $62

jr_012_6198:
    and $19                                       ; $6198: $E6 $19
    ld e, a                                       ; $619A: $5F
    dec h                                         ; $619B: $25
    ld a, a                                       ; $619C: $7F
    nop                                           ; $619D: $00
    rst RST_18                                    ; $619E: $DF
    ld l, d                                       ; $619F: $6A
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
    ret nz                                        ; $61AC: $C0

    nop                                           ; $61AD: $00
    ldh [rLCDC], a                                ; $61AE: $E0 $40
    ldh a, [$FF60]                                ; $61B0: $F0 $60
    ldh a, [rNR41]                                ; $61B2: $F0 $20
    ld hl, sp+$30                                 ; $61B4: $F8 $30
    cp $00                                        ; $61B6: $FE $00
    pop bc                                        ; $61B8: $C1
    cp [hl]                                       ; $61B9: $BE
    cp [hl]                                       ; $61BA: $BE
    ld a, c                                       ; $61BB: $79
    rst RST_38                                    ; $61BC: $FF
    ldh [$FFF0], a                                ; $61BD: $E0 $F0
    rst RST_08                                    ; $61BF: $CF
    nop                                           ; $61C0: $00
    nop                                           ; $61C1: $00
    nop                                           ; $61C2: $00
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
    add b                                         ; $61DA: $80
    nop                                           ; $61DB: $00
    adc b                                         ; $61DC: $88
    nop                                           ; $61DD: $00
    db $F4                                        ; $61DE: $F4
    ld [$0000], sp                                ; $61DF: $08 $00 $00
    nop                                           ; $61E2: $00
    nop                                           ; $61E3: $00
    nop                                           ; $61E4: $00
    nop                                           ; $61E5: $00
    nop                                           ; $61E6: $00
    nop                                           ; $61E7: $00
    ld b, $00                                     ; $61E8: $06 $00
    push hl                                       ; $61EA: $E5
    ld [bc], a                                    ; $61EB: $02
    sbc e                                         ; $61EC: $9B
    ld h, c                                       ; $61ED: $61
    ld a, a                                       ; $61EE: $7F
    jr @+$1E                                      ; $61EF: $18 $1C

    dec bc                                        ; $61F1: $0B
    ld a, a                                       ; $61F2: $7F
    inc bc                                        ; $61F3: $03
    sbc a                                         ; $61F4: $9F
    ld a, e                                       ; $61F5: $7B
    rst RST_38                                    ; $61F6: $FF
    inc bc                                        ; $61F7: $03
    rra                                           ; $61F8: $1F
    dec bc                                        ; $61F9: $0B
    ccf                                           ; $61FA: $3F
    jr @+$5A                                      ; $61FB: $18 $58

    jr nz, @+$62                                  ; $61FD: $20 $60

    nop                                           ; $61FF: $00
    ld [bc], a                                    ; $6200: $02
    ld bc, $0007                                  ; $6201: $01 $07 $00
    rlca                                          ; $6204: $07
    inc bc                                        ; $6205: $03
    inc bc                                        ; $6206: $03
    nop                                           ; $6207: $00
    ld [bc], a                                    ; $6208: $02
    ld bc, $0103                                  ; $6209: $01 $03 $01
    ld bc, $0000                                  ; $620C: $01 $00 $00
    nop                                           ; $620F: $00
    add c                                         ; $6210: $81
    nop                                           ; $6211: $00
    cp [hl]                                       ; $6212: $BE
    ld bc, $BE41                                  ; $6213: $01 $41 $BE
    rst RST_38                                    ; $6216: $FF
    cp [hl]                                       ; $6217: $BE
    rst RST_38                                    ; $6218: $FF
    cp [hl]                                       ; $6219: $BE
    rst RST_38                                    ; $621A: $FF
    cp [hl]                                       ; $621B: $BE
    cp $BC                                        ; $621C: $FE $BC
    cp h                                          ; $621E: $BC
    nop                                           ; $621F: $00
    rlca                                          ; $6220: $07
    nop                                           ; $6221: $00
    inc b                                         ; $6222: $04
    inc bc                                        ; $6223: $03
    or $03                                        ; $6224: $F6 $03
    ei                                            ; $6226: $FB
    ld [hl], c                                    ; $6227: $71
    rst RST_38                                    ; $6228: $FF
    ld bc, $F9FF                                  ; $6229: $01 $FF $F9
    rst RST_38                                    ; $622C: $FF
    ld d, $3F                                     ; $622D: $16 $3F
    rst RST_00                                    ; $622F: $C7
    rst RST_00                                    ; $6230: $C7
    dec sp                                        ; $6231: $3B
    add e                                         ; $6232: $83
    ld a, l                                       ; $6233: $7D
    di                                            ; $6234: $F3
    db $FD                                        ; $6235: $FD
    ld sp, hl                                     ; $6236: $F9
    ld e, $39                                     ; $6237: $1E $39
    adc $1F                                       ; $6239: $CE $1F
    db $ED                                        ; $623B: $ED
    ccf                                           ; $623C: $3F
    db $D3                                        ; $623D: $D3
    ld a, a                                       ; $623E: $7F
    cp e                                          ; $623F: $BB
    add b                                         ; $6240: $80
    nop                                           ; $6241: $00
    ld h, b                                       ; $6242: $60
    add b                                         ; $6243: $80
    db $10                                        ; $6244: $10
    ldh [$FF08], a                                ; $6245: $E0 $08
    ldh a, [$FFC8]                                ; $6247: $F0 $C8
    ldh a, [$FFE4]                                ; $6249: $F0 $E4
    ld hl, sp-$0C                                 ; $624B: $F8 $F4
    ld hl, sp-$0E                                 ; $624D: $F8 $F2
    ld a, h                                       ; $624F: $7C
    ld a, [$FA7C]                                 ; $6250: $FA $7C $FA
    cp h                                          ; $6253: $BC
    cp $BC                                        ; $6254: $FE $BC
    cp $DC                                        ; $6256: $FE $DC
    db $FC                                        ; $6258: $FC
    ret c                                         ; $6259: $D8

    db $FC                                        ; $625A: $FC
    ret c                                         ; $625B: $D8

    ld hl, sp-$20                                 ; $625C: $F8 $E0
    ldh a, [$FF80]                                ; $625E: $F0 $80
    nop                                           ; $6260: $00
    nop                                           ; $6261: $00
    nop                                           ; $6262: $00
    nop                                           ; $6263: $00
    nop                                           ; $6264: $00
    nop                                           ; $6265: $00
    nop                                           ; $6266: $00
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
    inc bc                                        ; $627C: $03
    nop                                           ; $627D: $00
    ld [bc], a                                    ; $627E: $02
    ld bc, $0CBF                                  ; $627F: $01 $BF $0C
    rrca                                          ; $6282: $0F
    ld bc, $0E11                                  ; $6283: $01 $11 $0E
    ld h, b                                       ; $6286: $60
    rra                                           ; $6287: $1F
    or c                                          ; $6288: $B1
    ld l, [hl]                                    ; $6289: $6E
    rst RST_38                                    ; $628A: $FF
    ld h, b                                       ; $628B: $60
    ld a, h                                       ; $628C: $7C
    rra                                           ; $628D: $1F
    ld a, [hl]                                    ; $628E: $7E
    ccf                                           ; $628F: $3F
    ld a, $1F                                     ; $6290: $3E $1F
    ccf                                           ; $6292: $3F
    ld e, $1F                                     ; $6293: $1E $1F
    ld c, $3F                                     ; $6295: $0E $3F
    nop                                           ; $6297: $00
    ld c, a                                       ; $6298: $4F
    scf                                           ; $6299: $37
    add a                                         ; $629A: $87
    ld a, e                                       ; $629B: $7B
    rst RST_38                                    ; $629C: $FF
    nop                                           ; $629D: $00
    nop                                           ; $629E: $00
    nop                                           ; $629F: $00
    ld hl, sp+$70                                 ; $62A0: $F8 $70
    db $FC                                        ; $62A2: $FC
    ldh [$FFE2], a                                ; $62A3: $E0 $E2
    call c, Call_000_3EC1                         ; $62A5: $DC $C1 $3E
    jr nz, jr_012_62C9                            ; $62A8: $20 $1F

    ld de, $8F0E                                  ; $62AA: $11 $0E $8F
    ld bc, $068B                                  ; $62AD: $01 $8B $06
    adc a                                         ; $62B0: $8F
    ld b, $07                                     ; $62B1: $06 $07
    nop                                           ; $62B3: $00
    nop                                           ; $62B4: $00
    nop                                           ; $62B5: $00
    nop                                           ; $62B6: $00
    nop                                           ; $62B7: $00
    add b                                         ; $62B8: $80
    nop                                           ; $62B9: $00
    add b                                         ; $62BA: $80
    nop                                           ; $62BB: $00
    add b                                         ; $62BC: $80
    nop                                           ; $62BD: $00
    nop                                           ; $62BE: $00
    nop                                           ; $62BF: $00
    ldh a, [rP1]                                  ; $62C0: $F0 $00
    ld [$E4F0], sp                                ; $62C2: $08 $F0 $E4
    ld hl, sp-$04                                 ; $62C5: $F8 $FC
    ld hl, sp-$01                                 ; $62C7: $F8 $FF

jr_012_62C9:
    db $FC                                        ; $62C9: $FC

jr_012_62CA:
    rst RST_38                                    ; $62CA: $FF
    db $FD                                        ; $62CB: $FD
    rst RST_38                                    ; $62CC: $FF
    dec de                                        ; $62CD: $1B
    rra                                           ; $62CE: $1F
    inc bc                                        ; $62CF: $03
    rlca                                          ; $62D0: $07
    nop                                           ; $62D1: $00
    inc b                                         ; $62D2: $04
    inc bc                                        ; $62D3: $03
    add hl, bc                                    ; $62D4: $09
    ld b, $0F                                     ; $62D5: $06 $0F
    nop                                           ; $62D7: $00
    nop                                           ; $62D8: $00
    nop                                           ; $62D9: $00
    nop                                           ; $62DA: $00
    nop                                           ; $62DB: $00
    nop                                           ; $62DC: $00
    nop                                           ; $62DD: $00
    nop                                           ; $62DE: $00
    nop                                           ; $62DF: $00
    add b                                         ; $62E0: $80
    nop                                           ; $62E1: $00
    ret nz                                        ; $62E2: $C0

    add b                                         ; $62E3: $80
    ret nz                                        ; $62E4: $C0

    add b                                         ; $62E5: $80
    ret nz                                        ; $62E6: $C0

    add b                                         ; $62E7: $80
    add b                                         ; $62E8: $80
    nop                                           ; $62E9: $00
    add b                                         ; $62EA: $80
    nop                                           ; $62EB: $00
    nop                                           ; $62EC: $00
    nop                                           ; $62ED: $00
    nop                                           ; $62EE: $00
    nop                                           ; $62EF: $00
    nop                                           ; $62F0: $00
    nop                                           ; $62F1: $00
    nop                                           ; $62F2: $00
    nop                                           ; $62F3: $00
    nop                                           ; $62F4: $00
    nop                                           ; $62F5: $00
    nop                                           ; $62F6: $00
    nop                                           ; $62F7: $00
    nop                                           ; $62F8: $00
    nop                                           ; $62F9: $00
    nop                                           ; $62FA: $00
    nop                                           ; $62FB: $00
    nop                                           ; $62FC: $00
    nop                                           ; $62FD: $00
    nop                                           ; $62FE: $00
    nop                                           ; $62FF: $00
    ld bc, $0200                                  ; $6300: $01 $00 $02
    ld bc, $0103                                  ; $6303: $01 $03 $01
    inc bc                                        ; $6306: $03
    ld bc, $0001                                  ; $6307: $01 $01 $00
    inc b                                         ; $630A: $04
    nop                                           ; $630B: $00
    ld a, [de]                                    ; $630C: $1A
    inc b                                         ; $630D: $04
    dec l                                         ; $630E: $2D
    ld a, [de]                                    ; $630F: $1A
    ccf                                           ; $6310: $3F
    ld [bc], a                                    ; $6311: $02
    cpl                                           ; $6312: $2F
    dec e                                         ; $6313: $1D
    rra                                           ; $6314: $1F
    ld bc, $0D17                                  ; $6315: $01 $17 $0D
    rrca                                          ; $6318: $0F
    nop                                           ; $6319: $00
    ld b, $01                                     ; $631A: $06 $01
    dec bc                                        ; $631C: $0B
    ld b, $0F                                     ; $631D: $06 $0F
    ld b, $00                                     ; $631F: $06 $00
    nop                                           ; $6321: $00
    nop                                           ; $6322: $00
    nop                                           ; $6323: $00
    rra                                           ; $6324: $1F
    nop                                           ; $6325: $00
    inc l                                         ; $6326: $2C
    rla                                           ; $6327: $17
    cpl                                           ; $6328: $2F
    db $10                                        ; $6329: $10
    ld a, b                                       ; $632A: $78
    rrca                                          ; $632B: $0F
    ld a, [hl]                                    ; $632C: $7E
    ld sp, $0CF3                                  ; $632D: $31 $F3 $0C
    cpl                                           ; $6330: $2F
    jp nc, $DAF7                                  ; $6331: $D2 $F7 $DA

    rst RST_38                                    ; $6334: $FF
    add b                                         ; $6335: $80
    cp e                                          ; $6336: $BB
    ld l, l                                       ; $6337: $6D
    ei                                            ; $6338: $FB
    ld l, l                                       ; $6339: $6D
    rst RST_38                                    ; $633A: $FF
    jr jr_012_62CA                                ; $633B: $18 $8D

    ld [hl], e                                    ; $633D: $73
    rst RST_38                                    ; $633E: $FF
    ld [$0002], sp                                ; $633F: $08 $02 $00
    ld b, $00                                     ; $6342: $06 $00
    ld c, $04                                     ; $6344: $0E $04
    ld e, $0C                                     ; $6346: $1E $0C
    ccf                                           ; $6348: $3F
    inc e                                         ; $6349: $1C
    ld [hl], a                                    ; $634A: $77
    add hl, sp                                    ; $634B: $39
    xor [hl]                                      ; $634C: $AE
    ld e, e                                       ; $634D: $5B
    xor b                                         ; $634E: $A8
    ld e, a                                       ; $634F: $5F
    or b                                          ; $6350: $B0
    ld e, a                                       ; $6351: $5F
    ldh [$FF1F], a                                ; $6352: $E0 $1F
    ld a, a                                       ; $6354: $7F
    ret nz                                        ; $6355: $C0

    ret nz                                        ; $6356: $C0

    cp a                                          ; $6357: $BF
    add b                                         ; $6358: $80
    ld a, a                                       ; $6359: $7F
    di                                            ; $635A: $F3
    ld a, h                                       ; $635B: $7C
    db $FD                                        ; $635C: $FD
    ld a, d                                       ; $635D: $7A
    ld hl, sp+$77                                 ; $635E: $F8 $77
    nop                                           ; $6360: $00
    nop                                           ; $6361: $00
    nop                                           ; $6362: $00
    nop                                           ; $6363: $00
    nop                                           ; $6364: $00
    nop                                           ; $6365: $00
    nop                                           ; $6366: $00
    nop                                           ; $6367: $00
    ld bc, $0700                                  ; $6368: $01 $00 $07
    ld bc, $070F                                  ; $636B: $01 $0F $07
    dec sp                                        ; $636E: $3B
    ld c, $F6                                     ; $636F: $0E $F6
    inc a                                         ; $6371: $3C
    call z, $9870                                 ; $6372: $CC $70 $98
    ldh a, [$FF3F]                                ; $6375: $F0 $3F
    ldh [$FF7F], a                                ; $6377: $E0 $7F
    rst RST_38                                    ; $6379: $FF
    nop                                           ; $637A: $00
    rst RST_38                                    ; $637B: $FF
    ld bc, $07FF                                  ; $637C: $01 $FF $07
    cp $00                                        ; $637F: $FE $00
    nop                                           ; $6381: $00
    inc b                                         ; $6382: $04
    nop                                           ; $6383: $00
    jr jr_012_6386                                ; $6384: $18 $00

jr_012_6386:
    ld [hl], b                                    ; $6386: $70
    nop                                           ; $6387: $00
    ldh [rLCDC], a                                ; $6388: $E0 $40
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
    add b                                         ; $6396: $80
    nop                                           ; $6397: $00
    cp $80                                        ; $6398: $FE $80
    ld a, b                                       ; $639A: $78
    ldh [$FFE0], a                                ; $639B: $E0 $E0
    add b                                         ; $639D: $80
    add b                                         ; $639E: $80

jr_012_639F:
    nop                                           ; $639F: $00
    sbc [hl]                                      ; $63A0: $9E
    ld a, b                                       ; $63A1: $78
    ld a, b                                       ; $63A2: $78
    and b                                         ; $63A3: $A0
    sbc $38                                       ; $63A4: $DE $38
    add a                                         ; $63A6: $87
    ld a, [hl]                                    ; $63A7: $7E
    add c                                         ; $63A8: $81
    ld a, a                                       ; $63A9: $7F
    ret nz                                        ; $63AA: $C0

    ccf                                           ; $63AB: $3F
    ld hl, $17DF                                  ; $63AC: $21 $DF $17
    xor $1E                                       ; $63AF: $EE $1E
    add sp, -$68                                  ; $63B1: $E8 $98
    ldh [$FFB0], a                                ; $63B3: $E0 $B0
    ret nz                                        ; $63B5: $C0

    ld hl, sp+$20                                 ; $63B6: $F8 $20
    ld e, $F8                                     ; $63B8: $1E $F8
    add a                                         ; $63BA: $87
    ld a, [hl]                                    ; $63BB: $7E
    ld b, c                                       ; $63BC: $41
    cp a                                          ; $63BD: $BF
    jr nz, jr_012_639F                            ; $63BE: $20 $DF

    add b                                         ; $63C0: $80
    nop                                           ; $63C1: $00
    ldh [$FF80], a                                ; $63C2: $E0 $80
    ld [hl], b                                    ; $63C4: $70
    ldh [$FFE0], a                                ; $63C5: $E0 $E0
    add b                                         ; $63C7: $80
    add b                                         ; $63C8: $80
    nop                                           ; $63C9: $00
    nop                                           ; $63CA: $00
    nop                                           ; $63CB: $00
    nop                                           ; $63CC: $00
    nop                                           ; $63CD: $00
    nop                                           ; $63CE: $00
    nop                                           ; $63CF: $00
    nop                                           ; $63D0: $00
    nop                                           ; $63D1: $00
    nop                                           ; $63D2: $00
    nop                                           ; $63D3: $00
    add b                                         ; $63D4: $80
    nop                                           ; $63D5: $00
    ldh [$FF80], a                                ; $63D6: $E0 $80
    ld a, b                                       ; $63D8: $78
    ldh [$FFFC], a                                ; $63D9: $E0 $FC
    ld hl, sp-$02                                 ; $63DB: $F8 $FE
    nop                                           ; $63DD: $00
    nop                                           ; $63DE: $00
    nop                                           ; $63DF: $00
    rlca                                          ; $63E0: $07
    ld bc, $0103                                  ; $63E1: $01 $03 $01
    ld bc, $0000                                  ; $63E4: $01 $00 $00
    nop                                           ; $63E7: $00
    nop                                           ; $63E8: $00
    nop                                           ; $63E9: $00
    nop                                           ; $63EA: $00
    nop                                           ; $63EB: $00
    nop                                           ; $63EC: $00
    nop                                           ; $63ED: $00
    nop                                           ; $63EE: $00
    nop                                           ; $63EF: $00
    nop                                           ; $63F0: $00
    nop                                           ; $63F1: $00
    nop                                           ; $63F2: $00
    nop                                           ; $63F3: $00
    nop                                           ; $63F4: $00
    nop                                           ; $63F5: $00
    nop                                           ; $63F6: $00
    nop                                           ; $63F7: $00
    nop                                           ; $63F8: $00
    nop                                           ; $63F9: $00
    nop                                           ; $63FA: $00
    nop                                           ; $63FB: $00
    nop                                           ; $63FC: $00
    nop                                           ; $63FD: $00
    nop                                           ; $63FE: $00
    nop                                           ; $63FF: $00
    db $FD                                        ; $6400: $FD
    cp e                                          ; $6401: $BB
    rst RST_38                                    ; $6402: $FF
    ret nz                                        ; $6403: $C0

    cp $8D                                        ; $6404: $FE $8D
    adc a                                         ; $6406: $8F
    ld [hl], h                                    ; $6407: $74
    rrca                                          ; $6408: $0F
    or $07                                        ; $6409: $F6 $07
    ld hl, sp-$08                                 ; $640B: $F8 $F8
    nop                                           ; $640D: $00
    add h                                         ; $640E: $84
    ld hl, sp-$1E                                 ; $640F: $F8 $E2
    db $FC                                        ; $6411: $FC
    ei                                            ; $6412: $FB
    db $FC                                        ; $6413: $FC
    cp $3B                                        ; $6414: $FE $3B
    ld a, $07                                     ; $6416: $3E $07
    ld e, a                                       ; $6418: $5F
    cpl                                           ; $6419: $2F
    adc a                                         ; $641A: $8F
    halt                                          ; $641B: $76
    cp $00                                        ; $641C: $FE $00
    nop                                           ; $641E: $00
    nop                                           ; $641F: $00
    db $FD                                        ; $6420: $FD
    ld [bc], a                                    ; $6421: $02
    sbc [hl]                                      ; $6422: $9E
    ld h, c                                       ; $6423: $61
    ret z                                         ; $6424: $C8

    ld [hl], a                                    ; $6425: $77
    rst RST_28                                    ; $6426: $EF
    ld [hl], a                                    ; $6427: $77
    rst RST_38                                    ; $6428: $FF
    ld [hl], a                                    ; $6429: $77
    rst RST_38                                    ; $642A: $FF
    ld [hl], a                                    ; $642B: $77
    rst RST_38                                    ; $642C: $FF
    ld [$F70C], sp                                ; $642D: $08 $0C $F7
    rlca                                          ; $6430: $07
    ld hl, sp-$38                                 ; $6431: $F8 $C8
    scf                                           ; $6433: $37
    ld a, $07                                     ; $6434: $3E $07
    scf                                           ; $6436: $37
    dec de                                        ; $6437: $1B
    ccf                                           ; $6438: $3F
    dec de                                        ; $6439: $1B
    sbc a                                         ; $643A: $9F
    inc bc                                        ; $643B: $03
    add e                                         ; $643C: $83
    nop                                           ; $643D: $00
    add b                                         ; $643E: $80
    nop                                           ; $643F: $00
    sbc a                                         ; $6440: $9F
    pop hl                                        ; $6441: $E1
    jp hl                                         ; $6442: $E9


    or $F9                                        ; $6443: $F6 $F9
    or $F9                                        ; $6445: $F6 $F9
    ld l, [hl]                                    ; $6447: $6E
    ld a, a                                       ; $6448: $7F
    ld [$0619], sp                                ; $6449: $08 $19 $06
    ld hl, $3E1E                                  ; $644C: $21 $1E $3E
    nop                                           ; $644F: $00
    nop                                           ; $6450: $00
    nop                                           ; $6451: $00
    nop                                           ; $6452: $00
    nop                                           ; $6453: $00
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
    ld bc, $0100                                  ; $6460: $01 $00 $01
    nop                                           ; $6463: $00
    rlca                                          ; $6464: $07
    nop                                           ; $6465: $00
    ld [$0F07], sp                                ; $6466: $08 $07 $0F
    rlca                                          ; $6469: $07
    rrca                                          ; $646A: $0F
    ld b, $06                                     ; $646B: $06 $06
    ld bc, $0113                                  ; $646D: $01 $13 $01
    ld l, e                                       ; $6470: $6B
    db $10                                        ; $6471: $10
    or [hl]                                       ; $6472: $B6
    ld l, c                                       ; $6473: $69
    rst RST_38                                    ; $6474: $FF
    ld [$76BF], sp                                ; $6475: $08 $BF $76
    ld a, a                                       ; $6478: $7F
    rlca                                          ; $6479: $07
    ld e, a                                       ; $647A: $5F
    ld [hl], $3E                                  ; $647B: $36 $3E
    ld bc, $0718                                  ; $647D: $01 $18 $07
    nop                                           ; $6480: $00
    nop                                           ; $6481: $00
    nop                                           ; $6482: $00
    nop                                           ; $6483: $00
    ld a, l                                       ; $6484: $7D
    nop                                           ; $6485: $00
    cp d                                          ; $6486: $BA
    ld e, l                                       ; $6487: $5D
    cp [hl]                                       ; $6488: $BE
    ld b, c                                       ; $6489: $41
    ldh a, [c]                                    ; $648A: $F2
    dec a                                         ; $648B: $3D
    ei                                            ; $648C: $FB
    call nz, $33CD                                ; $648D: $C4 $CD $33
    cp a                                          ; $6490: $BF
    ld c, d                                       ; $6491: $4A
    rst RST_18                                    ; $6492: $DF
    ld l, c                                       ; $6493: $69
    rst RST_38                                    ; $6494: $FF
    ld bc, $B5EF                                  ; $6495: $01 $EF $B5
    rst RST_28                                    ; $6498: $EF
    or l                                          ; $6499: $B5
    rst RST_38                                    ; $649A: $FF
    ld h, b                                       ; $649B: $60
    ld [hl], $CD                                  ; $649C: $36 $CD
    rst RST_38                                    ; $649E: $FF
    ld hl, $0001                                  ; $649F: $21 $01 $00
    inc bc                                        ; $64A2: $03
    nop                                           ; $64A3: $00
    rlca                                          ; $64A4: $07
    nop                                           ; $64A5: $00
    ld c, $04                                     ; $64A6: $0E $04

jr_012_64A8:
    ld e, $0C                                     ; $64A8: $1E $0C
    inc a                                         ; $64AA: $3C
    jr @+$7E                                      ; $64AB: $18 $7C

    jr c, jr_012_64A8                             ; $64AD: $38 $F9

    ld [hl], b                                    ; $64AF: $70
    rst RST_18                                    ; $64B0: $DF
    pop af                                        ; $64B1: $F1
    sbc a                                         ; $64B2: $9F
    ld h, a                                       ; $64B3: $67
    cp e                                          ; $64B4: $BB
    ld e, [hl]                                    ; $64B5: $5E
    and a                                         ; $64B6: $A7
    ld a, l                                       ; $64B7: $7D
    add b                                         ; $64B8: $80
    ld a, a                                       ; $64B9: $7F
    db $FC                                        ; $64BA: $FC
    inc bc                                        ; $64BB: $03
    inc bc                                        ; $64BC: $03
    db $FD                                        ; $64BD: $FD
    pop hl                                        ; $64BE: $E1
    cp $00                                        ; $64BF: $FE $00
    nop                                           ; $64C1: $00
    add b                                         ; $64C2: $80
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
    ld [$7000], sp                                ; $64CE: $08 $00 $70
    nop                                           ; $64D1: $00
    ldh [rP1], a                                  ; $64D2: $E0 $00
    ret nz                                        ; $64D4: $C0

    add b                                         ; $64D5: $80
    add b                                         ; $64D6: $80
    nop                                           ; $64D7: $00
    rst RST_38                                    ; $64D8: $FF
    nop                                           ; $64D9: $00
    rst RST_38                                    ; $64DA: $FF
    cp $1E                                        ; $64DB: $FE $1E
    ld hl, sp+$78                                 ; $64DD: $F8 $78
    ldh [$FF2C], a                                ; $64DF: $E0 $2C
    dec de                                        ; $64E1: $1B
    ccf                                           ; $64E2: $3F
    jr @+$21                                      ; $64E3: $18 $1F

    rlca                                          ; $64E5: $07
    rrca                                          ; $64E6: $0F
    rlca                                          ; $64E7: $07
    rlca                                          ; $64E8: $07
    inc bc                                        ; $64E9: $03
    inc bc                                        ; $64EA: $03
    nop                                           ; $64EB: $00
    nop                                           ; $64EC: $00
    nop                                           ; $64ED: $00
    ld bc, $0200                                  ; $64EE: $01 $00 $02
    ld bc, $0003                                  ; $64F1: $01 $03 $00
    nop                                           ; $64F4: $00
    nop                                           ; $64F5: $00
    nop                                           ; $64F6: $00
    nop                                           ; $64F7: $00
    nop                                           ; $64F8: $00
    nop                                           ; $64F9: $00
    nop                                           ; $64FA: $00
    nop                                           ; $64FB: $00
    nop                                           ; $64FC: $00
    nop                                           ; $64FD: $00
    nop                                           ; $64FE: $00
    nop                                           ; $64FF: $00
    rst RST_30                                    ; $6500: $F7
    db $ED                                        ; $6501: $ED
    rst RST_38                                    ; $6502: $FF
    ld bc, $35FB                                  ; $6503: $01 $FB $35
    ccf                                           ; $6506: $3F
    ret nc                                        ; $6507: $D0

    inc a                                         ; $6508: $3C
    db $DB                                        ; $6509: $DB
    inc e                                         ; $650A: $1C
    db $E3                                        ; $650B: $E3
    db $E3                                        ; $650C: $E3
    nop                                           ; $650D: $00
    sub b                                         ; $650E: $90
    ldh [$FFE8], a                                ; $650F: $E0 $E8

jr_012_6511:
    ldh a, [$FFFC]                                ; $6511: $F0 $FC
    ldh a, [$FFFA]                                ; $6513: $F0 $FA
    db $EC                                        ; $6515: $EC
    cp $1C                                        ; $6516: $FE $1C
    ld a, [hl]                                    ; $6518: $7E
    cp h                                          ; $6519: $BC
    inc a                                         ; $651A: $3C
    ret c                                         ; $651B: $D8

    ld hl, sp+$00                                 ; $651C: $F8 $00
    nop                                           ; $651E: $00
    nop                                           ; $651F: $00
    cp $F1                                        ; $6520: $FE $F1
    db $F4                                        ; $6522: $F4
    db $EB                                        ; $6523: $EB
    ldh [c], a                                    ; $6524: $E2
    db $DD                                        ; $6525: $DD
    rst RST_30                                    ; $6526: $F7
    ld [$8778], sp                                ; $6527: $08 $78 $87
    and b                                         ; $652A: $A0
    rst RST_18                                    ; $652B: $DF
    rst RST_38                                    ; $652C: $FF
    rst RST_18                                    ; $652D: $DF
    rst RST_38                                    ; $652E: $FF
    rst RST_18                                    ; $652F: $DF
    rst RST_38                                    ; $6530: $FF
    rst RST_18                                    ; $6531: $DF
    rst RST_38                                    ; $6532: $FF
    jr nz, @+$3B                                  ; $6533: $20 $39

    rst RST_18                                    ; $6535: $DF
    ld e, $E1                                     ; $6536: $1E $E1
    ld hl, $FEDE                                  ; $6538: $21 $DE $FE
    rra                                           ; $653B: $1F
    rst RST_18                                    ; $653C: $DF
    ld l, a                                       ; $653D: $6F
    rst RST_38                                    ; $653E: $FF
    ld l, a                                       ; $653F: $6F
    ld hl, sp-$80                                 ; $6540: $F8 $80
    rst RST_38                                    ; $6542: $FF
    ld hl, sp+$3F                                 ; $6543: $F8 $3F
    rst RST_38                                    ; $6545: $FF
    rlca                                          ; $6546: $07
    rst RST_38                                    ; $6547: $FF
    nop                                           ; $6548: $00
    rst RST_38                                    ; $6549: $FF
    nop                                           ; $654A: $00
    rst RST_38                                    ; $654B: $FF
    add b                                         ; $654C: $80
    ld a, a                                       ; $654D: $7F
    ld b, a                                       ; $654E: $47
    cp a                                          ; $654F: $BF
    ld a, a                                       ; $6550: $7F
    cp a                                          ; $6551: $BF
    ld a, a                                       ; $6552: $7F
    cp b                                          ; $6553: $B8
    ld hl, sp+$00                                 ; $6554: $F8 $00
    ret nz                                        ; $6556: $C0

    nop                                           ; $6557: $00
    ldh a, [$FFC0]                                ; $6558: $F0 $C0
    ld a, h                                       ; $655A: $7C
    ldh a, [rIE]                                  ; $655B: $F0 $FF
    db $FC                                        ; $655D: $FC
    rst RST_38                                    ; $655E: $FF
    nop                                           ; $655F: $00
    nop                                           ; $6560: $00
    nop                                           ; $6561: $00
    nop                                           ; $6562: $00
    nop                                           ; $6563: $00
    ldh [rP1], a                                  ; $6564: $E0 $00
    ld hl, sp-$20                                 ; $6566: $F8 $E0
    cp $F8                                        ; $6568: $FE $F8
    ccf                                           ; $656A: $3F
    cp $FE                                        ; $656B: $FE $FE
    ld hl, sp-$08                                 ; $656D: $F8 $F8
    ldh [$FFE0], a                                ; $656F: $E0 $E0
    nop                                           ; $6571: $00
    nop                                           ; $6572: $00
    nop                                           ; $6573: $00
    nop                                           ; $6574: $00
    nop                                           ; $6575: $00
    nop                                           ; $6576: $00
    nop                                           ; $6577: $00
    nop                                           ; $6578: $00
    nop                                           ; $6579: $00
    nop                                           ; $657A: $00
    nop                                           ; $657B: $00
    nop                                           ; $657C: $00
    nop                                           ; $657D: $00
    ret nz                                        ; $657E: $C0

    nop                                           ; $657F: $00
    ld hl, sp-$80                                 ; $6580: $F8 $80
    db $EC                                        ; $6582: $EC
    ret c                                         ; $6583: $D8

    db $FC                                        ; $6584: $FC
    ret c                                         ; $6585: $D8

    db $FC                                        ; $6586: $FC
    cp b                                          ; $6587: $B8
    db $FC                                        ; $6588: $FC
    jr nz, @+$66                                  ; $6589: $20 $64

    jr jr_012_6511                                ; $658B: $18 $84

    ld a, b                                       ; $658D: $78
    ld hl, sp+$00                                 ; $658E: $F8 $00
    nop                                           ; $6590: $00
    nop                                           ; $6591: $00
    nop                                           ; $6592: $00
    nop                                           ; $6593: $00
    nop                                           ; $6594: $00
    nop                                           ; $6595: $00
    nop                                           ; $6596: $00
    nop                                           ; $6597: $00
    nop                                           ; $6598: $00
    nop                                           ; $6599: $00
    nop                                           ; $659A: $00
    nop                                           ; $659B: $00
    nop                                           ; $659C: $00
    nop                                           ; $659D: $00
    nop                                           ; $659E: $00
    nop                                           ; $659F: $00
    ld a, a                                       ; $65A0: $7F
    rrca                                          ; $65A1: $0F
    rrca                                          ; $65A2: $0F
    ld bc, $0001                                  ; $65A3: $01 $01 $00
    nop                                           ; $65A6: $00
    nop                                           ; $65A7: $00
    nop                                           ; $65A8: $00
    nop                                           ; $65A9: $00
    nop                                           ; $65AA: $00
    nop                                           ; $65AB: $00
    nop                                           ; $65AC: $00
    nop                                           ; $65AD: $00
    nop                                           ; $65AE: $00
    nop                                           ; $65AF: $00
    nop                                           ; $65B0: $00
    nop                                           ; $65B1: $00
    nop                                           ; $65B2: $00
    nop                                           ; $65B3: $00
    nop                                           ; $65B4: $00
    nop                                           ; $65B5: $00
    nop                                           ; $65B6: $00
    nop                                           ; $65B7: $00
    nop                                           ; $65B8: $00
    nop                                           ; $65B9: $00
    nop                                           ; $65BA: $00
    nop                                           ; $65BB: $00
    nop                                           ; $65BC: $00
    nop                                           ; $65BD: $00
    nop                                           ; $65BE: $00
    nop                                           ; $65BF: $00
    nop                                           ; $65C0: $00
    nop                                           ; $65C1: $00
    nop                                           ; $65C2: $00
    nop                                           ; $65C3: $00
    nop                                           ; $65C4: $00
    nop                                           ; $65C5: $00
    nop                                           ; $65C6: $00
    nop                                           ; $65C7: $00
    nop                                           ; $65C8: $00
    nop                                           ; $65C9: $00
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
    ldh [rP1], a                                  ; $65DC: $E0 $00
    add b                                         ; $65DE: $80
    nop                                           ; $65DF: $00
    rlca                                          ; $65E0: $07
    nop                                           ; $65E1: $00
    inc c                                         ; $65E2: $0C
    inc bc                                        ; $65E3: $03
    ld [$0907], sp                                ; $65E4: $08 $07 $09
    rlca                                          ; $65E7: $07
    dec bc                                        ; $65E8: $0B
    rlca                                          ; $65E9: $07
    dec c                                         ; $65EA: $0D
    inc bc                                        ; $65EB: $03
    ld a, [hl]                                    ; $65EC: $7E
    ld bc, $3F40                                  ; $65ED: $01 $40 $3F
    ret z                                         ; $65F0: $C8

    ccf                                           ; $65F1: $3F
    add d                                         ; $65F2: $82
    ld a, a                                       ; $65F3: $7F
    sbc c                                         ; $65F4: $99
    ld a, a                                       ; $65F5: $7F
    add c                                         ; $65F6: $81
    ld a, a                                       ; $65F7: $7F
    sbc c                                         ; $65F8: $99
    ld a, a                                       ; $65F9: $7F
    jp Jump_012_673F                              ; $65FA: $C3 $3F $67


    rra                                           ; $65FD: $1F
    jr c, @+$09                                   ; $65FE: $38 $07

    nop                                           ; $6600: $00
    nop                                           ; $6601: $00
    rlca                                          ; $6602: $07
    nop                                           ; $6603: $00
    inc c                                         ; $6604: $0C
    inc bc                                        ; $6605: $03
    ld [$1807], sp                                ; $6606: $08 $07 $18
    rlca                                          ; $6609: $07
    ldh a, [rIF]                                  ; $660A: $F0 $0F
    inc b                                         ; $660C: $04
    rst RST_38                                    ; $660D: $FF
    rlca                                          ; $660E: $07
    rst RST_38                                    ; $660F: $FF
    ld e, b                                       ; $6610: $58
    rst RST_38                                    ; $6611: $FF
    ld a, [$F0FF]                                 ; $6612: $FA $FF $F0
    rst RST_38                                    ; $6615: $FF
    db $E4                                        ; $6616: $E4
    rst RST_38                                    ; $6617: $FF
    ld h, c                                       ; $6618: $61
    rst RST_38                                    ; $6619: $FF
    inc bc                                        ; $661A: $03
    rst RST_38                                    ; $661B: $FF
    add h                                         ; $661C: $84
    rst RST_38                                    ; $661D: $FF
    ret nz                                        ; $661E: $C0

    rst RST_38                                    ; $661F: $FF
    rst RST_38                                    ; $6620: $FF
    nop                                           ; $6621: $00
    add c                                         ; $6622: $81
    ld a, [hl]                                    ; $6623: $7E
    inc b                                         ; $6624: $04
    rst RST_38                                    ; $6625: $FF
    ldh [c], a                                    ; $6626: $E2
    rst RST_38                                    ; $6627: $FF
    jp nc, $B3FF                                  ; $6628: $D2 $FF $B3

    rst RST_38                                    ; $662B: $FF
    ld h, b                                       ; $662C: $60
    rst RST_38                                    ; $662D: $FF
    adc b                                         ; $662E: $88
    rst RST_38                                    ; $662F: $FF
    ld e, c                                       ; $6630: $59
    rst RST_38                                    ; $6631: $FF
    ld b, a                                       ; $6632: $47
    rst RST_38                                    ; $6633: $FF
    rlca                                          ; $6634: $07
    rst RST_38                                    ; $6635: $FF
    rst RST_00                                    ; $6636: $C7
    rst RST_38                                    ; $6637: $FF
    ld c, e                                       ; $6638: $4B
    rst RST_38                                    ; $6639: $FF
    ld c, b                                       ; $663A: $48
    rst RST_38                                    ; $663B: $FF
    reti                                          ; $663C: $D9


    rst RST_38                                    ; $663D: $FF
    inc [hl]                                      ; $663E: $34
    rst RST_38                                    ; $663F: $FF
    add b                                         ; $6640: $80
    nop                                           ; $6641: $00
    add b                                         ; $6642: $80
    nop                                           ; $6643: $00
    ret nz                                        ; $6644: $C0

    nop                                           ; $6645: $00
    ld h, b                                       ; $6646: $60
    add b                                         ; $6647: $80
    ld a, [hl]                                    ; $6648: $7E
    add b                                         ; $6649: $80
    inc bc                                        ; $664A: $03
    db $FC                                        ; $664B: $FC
    add hl, bc                                    ; $664C: $09
    cp $55                                        ; $664D: $FE $55
    cp $FD                                        ; $664F: $FE $FD
    cp $FD                                        ; $6651: $FE $FD
    cp $E3                                        ; $6653: $FE $E3
    db $FC                                        ; $6655: $FC
    jp Jump_000_03FC                              ; $6656: $C3 $FC $03


    db $FC                                        ; $6659: $FC
    nop                                           ; $665A: $00
    rst RST_38                                    ; $665B: $FF
    ld l, [hl]                                    ; $665C: $6E
    rst RST_38                                    ; $665D: $FF
    or a                                          ; $665E: $B7
    rst RST_38                                    ; $665F: $FF
    nop                                           ; $6660: $00
    nop                                           ; $6661: $00
    nop                                           ; $6662: $00
    nop                                           ; $6663: $00
    nop                                           ; $6664: $00
    nop                                           ; $6665: $00
    nop                                           ; $6666: $00
    nop                                           ; $6667: $00
    nop                                           ; $6668: $00
    nop                                           ; $6669: $00
    nop                                           ; $666A: $00
    nop                                           ; $666B: $00
    nop                                           ; $666C: $00
    nop                                           ; $666D: $00
    nop                                           ; $666E: $00
    nop                                           ; $666F: $00
    add b                                         ; $6670: $80
    nop                                           ; $6671: $00
    ret nz                                        ; $6672: $C0

    nop                                           ; $6673: $00
    ld b, b                                       ; $6674: $40
    add b                                         ; $6675: $80
    ld b, b                                       ; $6676: $40
    add b                                         ; $6677: $80
    ld b, b                                       ; $6678: $40
    add b                                         ; $6679: $80
    ld b, b                                       ; $667A: $40
    add b                                         ; $667B: $80
    ret nz                                        ; $667C: $C0

    nop                                           ; $667D: $00
    add b                                         ; $667E: $80
    nop                                           ; $667F: $00
    rrca                                          ; $6680: $0F
    nop                                           ; $6681: $00
    nop                                           ; $6682: $00
    nop                                           ; $6683: $00
    nop                                           ; $6684: $00
    nop                                           ; $6685: $00
    nop                                           ; $6686: $00
    nop                                           ; $6687: $00
    nop                                           ; $6688: $00
    nop                                           ; $6689: $00
    nop                                           ; $668A: $00
    nop                                           ; $668B: $00
    nop                                           ; $668C: $00
    nop                                           ; $668D: $00
    ld bc, $0200                                  ; $668E: $01 $00 $02
    ld bc, $0102                                  ; $6691: $01 $02 $01
    ld [bc], a                                    ; $6694: $02
    ld bc, $0000                                  ; $6695: $01 $00 $00
    nop                                           ; $6698: $00
    nop                                           ; $6699: $00
    nop                                           ; $669A: $00
    nop                                           ; $669B: $00
    nop                                           ; $669C: $00
    nop                                           ; $669D: $00
    nop                                           ; $669E: $00
    nop                                           ; $669F: $00
    ret nz                                        ; $66A0: $C0

    rst RST_38                                    ; $66A1: $FF
    ret nz                                        ; $66A2: $C0

    rst RST_38                                    ; $66A3: $FF
    ret nz                                        ; $66A4: $C0

    rst RST_38                                    ; $66A5: $FF
    add b                                         ; $66A6: $80
    rst RST_38                                    ; $66A7: $FF
    nop                                           ; $66A8: $00
    rst RST_38                                    ; $66A9: $FF
    sub b                                         ; $66AA: $90
    ld a, a                                       ; $66AB: $7F
    or b                                          ; $66AC: $B0
    ld a, a                                       ; $66AD: $7F
    adc h                                         ; $66AE: $8C
    ld a, a                                       ; $66AF: $7F
    cp [hl]                                       ; $66B0: $BE
    ld a, a                                       ; $66B1: $7F
    cp [hl]                                       ; $66B2: $BE
    ld a, a                                       ; $66B3: $7F
    sbc $3F                                       ; $66B4: $DE $3F
    sbc $3F                                       ; $66B6: $DE $3F
    nop                                           ; $66B8: $00
    rst RST_38                                    ; $66B9: $FF
    ld c, $FF                                     ; $66BA: $0E $FF
    ld b, $FF                                     ; $66BC: $06 $FF
    nop                                           ; $66BE: $00
    rst RST_38                                    ; $66BF: $FF
    ld l, h                                       ; $66C0: $6C
    rst RST_38                                    ; $66C1: $FF
    nop                                           ; $66C2: $00
    rst RST_38                                    ; $66C3: $FF
    ld hl, sp-$01                                 ; $66C4: $F8 $FF
    ld [hl], b                                    ; $66C6: $70
    rst RST_38                                    ; $66C7: $FF
    jr nz, @+$01                                  ; $66C8: $20 $FF

    nop                                           ; $66CA: $00
    rst RST_38                                    ; $66CB: $FF
    ld [hl], c                                    ; $66CC: $71
    adc a                                         ; $66CD: $8F
    ld d, e                                       ; $66CE: $53
    adc a                                         ; $66CF: $8F
    ld d, h                                       ; $66D0: $54
    adc a                                         ; $66D1: $8F
    ld d, a                                       ; $66D2: $57
    adc a                                         ; $66D3: $8F
    rst RST_10                                    ; $66D4: $D7
    rrca                                          ; $66D5: $0F
    sbc e                                         ; $66D6: $9B
    rlca                                          ; $66D7: $07
    adc d                                         ; $66D8: $8A
    rlca                                          ; $66D9: $07
    adc h                                         ; $66DA: $8C
    inc bc                                        ; $66DB: $03
    add h                                         ; $66DC: $84
    inc bc                                        ; $66DD: $03
    add h                                         ; $66DE: $84
    inc bc                                        ; $66DF: $03
    scf                                           ; $66E0: $37
    rst RST_38                                    ; $66E1: $FF
    ld d, a                                       ; $66E2: $57
    rst RST_38                                    ; $66E3: $FF
    ld c, $FF                                     ; $66E4: $0E $FF
    ld [hl], c                                    ; $66E6: $71
    adc [hl]                                      ; $66E7: $8E
    rra                                           ; $66E8: $1F
    ldh [$FF08], a                                ; $66E9: $E0 $08
    ldh a, [$FF08]                                ; $66EB: $F0 $08
    ldh a, [$FFC8]                                ; $66ED: $F0 $C8
    ldh a, [$FFC8]                                ; $66EF: $F0 $C8
    ldh a, [$FFE8]                                ; $66F1: $F0 $E8
    ldh a, [$FFE8]                                ; $66F3: $F0 $E8
    ldh a, [$FF08]                                ; $66F5: $F0 $08
    ldh a, [$FF0C]                                ; $66F7: $F0 $0C
    ldh a, [rDIV]                                 ; $66F9: $F0 $04
    ld hl, sp+$04                                 ; $66FB: $F8 $04
    ld hl, sp+$04                                 ; $66FD: $F8 $04
    ld hl, sp+$04                                 ; $66FF: $F8 $04
    inc bc                                        ; $6701: $03
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
    inc bc                                        ; $6722: $03
    nop                                           ; $6723: $00
    inc b                                         ; $6724: $04
    inc bc                                        ; $6725: $03
    ld a, [bc]                                    ; $6726: $0A
    rlca                                          ; $6727: $07
    rrca                                          ; $6728: $0F
    rlca                                          ; $6729: $07
    rlca                                          ; $672A: $07
    inc bc                                        ; $672B: $03
    inc bc                                        ; $672C: $03
    ld bc, $003D                                  ; $672D: $01 $3D $00
    ld e, e                                       ; $6730: $5B
    inc [hl]                                      ; $6731: $34
    ld a, a                                       ; $6732: $7F
    dec b                                         ; $6733: $05
    cp a                                          ; $6734: $BF
    ld [hl], e                                    ; $6735: $73
    rst RST_38                                    ; $6736: $FF
    inc bc                                        ; $6737: $03
    cp a                                          ; $6738: $BF
    ld [hl], e                                    ; $6739: $73
    ld a, a                                       ; $673A: $7F
    rlca                                          ; $673B: $07
    ccf                                           ; $673C: $3F
    rrca                                          ; $673D: $0F
    rrca                                          ; $673E: $0F

Jump_012_673F:
    nop                                           ; $673F: $00
    nop                                           ; $6740: $00
    nop                                           ; $6741: $00
    rlca                                          ; $6742: $07
    nop                                           ; $6743: $00
    rrca                                          ; $6744: $0F
    ld bc, $050B                                  ; $6745: $01 $0B $05
    dec de                                        ; $6748: $1B
    dec b                                         ; $6749: $05
    rst RST_38                                    ; $674A: $FF
    ld [$EF1F], sp                                ; $674B: $08 $1F $EF
    cp a                                          ; $674E: $BF
    ldh a, [$FFFD]                                ; $674F: $F0 $FD
    or $FD                                        ; $6751: $F6 $FD
    ldh [c], a                                    ; $6753: $E2
    rst RST_28                                    ; $6754: $EF
    reti                                          ; $6755: $D9


    db $EB                                        ; $6756: $EB
    sub $EF                                       ; $6757: $D6 $EF
    ld d, $BF                                     ; $6759: $16 $BF
    ld c, c                                       ; $675B: $49
    ret c                                         ; $675C: $D8

    and a                                         ; $675D: $A7
    rst RST_20                                    ; $675E: $E7
    add b                                         ; $675F: $80
    ld hl, sp+$00                                 ; $6760: $F8 $00
    db $FC                                        ; $6762: $FC
    ld [$C4FE], sp                                ; $6763: $08 $FE $C4
    cp $A4                                        ; $6766: $FE $A4
    rst RST_38                                    ; $6768: $FF
    ld h, [hl]                                    ; $6769: $66
    rst RST_38                                    ; $676A: $FF
    ret nz                                        ; $676B: $C0

    ret c                                         ; $676C: $D8

    scf                                           ; $676D: $37
    ld a, [$FFB7]                                 ; $676E: $FA $B7 $FF
    adc a                                         ; $6771: $8F
    rst RST_38                                    ; $6772: $FF
    rrca                                          ; $6773: $0F
    cp a                                          ; $6774: $BF
    rst RST_08                                    ; $6775: $CF

jr_012_6776:
    cp a                                          ; $6776: $BF
    rst RST_10                                    ; $6777: $D7
    cp a                                          ; $6778: $BF
    ret nc                                        ; $6779: $D0

    ei                                            ; $677A: $FB
    or [hl]                                       ; $677B: $B6
    rst RST_38                                    ; $677C: $FF
    ld l, b                                       ; $677D: $68
    db $FD                                        ; $677E: $FD
    db $DB                                        ; $677F: $DB
    nop                                           ; $6780: $00
    nop                                           ; $6781: $00
    ldh a, [rP1]                                  ; $6782: $F0 $00
    jr jr_012_6776                                ; $6784: $18 $F0

    xor h                                         ; $6786: $AC
    ld hl, sp-$04                                 ; $6787: $F8 $FC
    ld hl, sp-$04                                 ; $6789: $F8 $FC
    ld hl, sp-$08                                 ; $678B: $F8 $F8
    ret nz                                        ; $678D: $C0

    ldh a, [$FF80]                                ; $678E: $F0 $80
    adc b                                         ; $6790: $88
    ld [hl], b                                    ; $6791: $70
    db $FC                                        ; $6792: $FC
    nop                                           ; $6793: $00
    cp $DC                                        ; $6794: $FE $DC
    rst RST_38                                    ; $6796: $FF
    ld l, [hl]                                    ; $6797: $6E
    rst RST_38                                    ; $6798: $FF
    ld l, [hl]                                    ; $6799: $6E
    rst RST_38                                    ; $679A: $FF
    xor [hl]                                      ; $679B: $AE
    cp $1C                                        ; $679C: $FE $1C
    inc e                                         ; $679E: $1C

jr_012_679F:
    nop                                           ; $679F: $00
    db $FC                                        ; $67A0: $FC
    jr c, jr_012_679F                             ; $67A1: $38 $FC

    ld a, b                                       ; $67A3: $78
    ld sp, hl                                     ; $67A4: $F9
    ldh a, [$FFF6]                                ; $67A5: $F0 $F6
    ld bc, $060B                                  ; $67A7: $01 $0B $06
    rrca                                          ; $67AA: $0F
    ld b, $0F                                     ; $67AB: $06 $0F
    ld bc, $070F                                  ; $67AD: $01 $0F $07
    rrca                                          ; $67B0: $0F
    rlca                                          ; $67B1: $07
    rlca                                          ; $67B2: $07
    inc bc                                        ; $67B3: $03
    rlca                                          ; $67B4: $07
    inc bc                                        ; $67B5: $03
    rrca                                          ; $67B6: $0F
    nop                                           ; $67B7: $00
    inc de                                        ; $67B8: $13
    dec c                                         ; $67B9: $0D
    ld hl, $3F1E                                  ; $67BA: $21 $1E $3F
    nop                                           ; $67BD: $00
    nop                                           ; $67BE: $00
    nop                                           ; $67BF: $00
    rra                                           ; $67C0: $1F
    nop                                           ; $67C1: $00
    rst RST_38                                    ; $67C2: $FF
    rra                                           ; $67C3: $1F
    rra                                           ; $67C4: $1F
    xor $0E                                       ; $67C5: $EE $0E
    push af                                       ; $67C7: $F5
    ld c, $F1                                     ; $67C8: $0E $F1
    pop af                                        ; $67CA: $F1
    nop                                           ; $67CB: $00
    sub b                                         ; $67CC: $90
    ldh [$FFD1], a                                ; $67CD: $E0 $D1
    ldh [$FFD1], a                                ; $67CF: $E0 $D1
    ldh [$FFE1], a                                ; $67D1: $E0 $E1
    ret nz                                        ; $67D3: $C0

    ldh [$FFC0], a                                ; $67D4: $E0 $C0
    ret nz                                        ; $67D6: $C0

    nop                                           ; $67D7: $00
    ldh [$FFC0], a                                ; $67D8: $E0 $C0
    ldh [$FFC0], a                                ; $67DA: $E0 $C0
    ldh [rP1], a                                  ; $67DC: $E0 $00
    nop                                           ; $67DE: $00
    nop                                           ; $67DF: $00
    rst RST_38                                    ; $67E0: $FF
    ld b, $EF                                     ; $67E1: $06 $EF
    ld a, [de]                                    ; $67E3: $1A
    ccf                                           ; $67E4: $3F
    pop bc                                        ; $67E5: $C1
    ld de, $F8E0                                  ; $67E6: $11 $E0 $F8
    nop                                           ; $67E9: $00
    or h                                          ; $67EA: $B4
    ld l, b                                       ; $67EB: $68
    ldh a, [c]                                    ; $67EC: $F2
    ld l, h                                       ; $67ED: $6C
    ld a, [$FA9C]                                 ; $67EE: $FA $9C $FA
    db $FC                                        ; $67F1: $FC
    cp $FC                                        ; $67F2: $FE $FC
    cp $7C                                        ; $67F4: $FE $7C
    cp $40                                        ; $67F6: $FE $40
    ld a, [hl]                                    ; $67F8: $7E
    nop                                           ; $67F9: $00
    ld h, d                                       ; $67FA: $62
    inc e                                         ; $67FB: $1C
    ld b, c                                       ; $67FC: $41
    ld a, $7F                                     ; $67FD: $3E $7F
    nop                                           ; $67FF: $00
    ld bc, $0300                                  ; $6800: $01 $00 $03
    ld bc, $0003                                  ; $6803: $01 $03 $00
    inc bc                                        ; $6806: $03
    ld bc, $0003                                  ; $6807: $01 $03 $00
    ld b, $03                                     ; $680A: $06 $03
    rlca                                          ; $680C: $07
    inc bc                                        ; $680D: $03
    rlca                                          ; $680E: $07
    nop                                           ; $680F: $00
    dec bc                                        ; $6810: $0B
    ld b, $4F                                     ; $6811: $06 $4F
    ld b, $AF                                     ; $6813: $06 $AF
    ld b, c                                       ; $6815: $41
    ret c                                         ; $6816: $D8

    and a                                         ; $6817: $A7
    rst RST_38                                    ; $6818: $FF
    jr z, @+$01                                   ; $6819: $28 $FF

    db $DB                                        ; $681B: $DB
    rst RST_38                                    ; $681C: $FF
    inc e                                         ; $681D: $1C
    ld a, a                                       ; $681E: $7F
    db $DD                                        ; $681F: $DD
    ld [bc], a                                    ; $6820: $02
    ld bc, $0102                                  ; $6821: $01 $02 $01
    ldh a, [c]                                    ; $6824: $F2
    ld bc, $D1EA                                  ; $6825: $01 $EA $D1
    db $FD                                        ; $6828: $FD
    nop                                           ; $6829: $00
    db $FD                                        ; $682A: $FD
    ld hl, sp-$01                                 ; $682B: $F8 $FF
    add b                                         ; $682D: $80
    adc a                                         ; $682E: $8F
    ld [hl], d                                    ; $682F: $72
    or $49                                        ; $6830: $F6 $49
    xor $55                                       ; $6832: $EE $55
    cp $05                                        ; $6834: $FE $05
    cp a                                          ; $6836: $BF
    ret nc                                        ; $6837: $D0

    cp a                                          ; $6838: $BF
    rst RST_10                                    ; $6839: $D7
    rst RST_38                                    ; $683A: $FF
    or a                                          ; $683B: $B7
    rst RST_38                                    ; $683C: $FF
    halt                                          ; $683D: $76
    rst RST_38                                    ; $683E: $FF
    xor $FF                                       ; $683F: $EE $FF
    ld bc, $0609                                  ; $6841: $01 $09 $06
    ld [$7007], sp                                ; $6844: $08 $07 $70
    rrca                                          ; $6847: $0F
    or c                                          ; $6848: $B1
    ld l, [hl]                                    ; $6849: $6E
    cp $60                                        ; $684A: $FE $60
    ld a, [$FE1C]                                 ; $684C: $FA $1C $FE
    ld a, h                                       ; $684F: $7C
    cp $7C                                        ; $6850: $FE $7C
    db $FC                                        ; $6852: $FC
    ld hl, sp-$08                                 ; $6853: $F8 $F8
    ldh a, [$FFF0]                                ; $6855: $F0 $F0
    nop                                           ; $6857: $00
    ldh a, [$FFE0]                                ; $6858: $F0 $E0
    ldh a, [$FFE0]                                ; $685A: $F0 $E0
    ldh [$FFC0], a                                ; $685C: $E0 $C0
    ret nz                                        ; $685E: $C0

    nop                                           ; $685F: $00
    cp $DC                                        ; $6860: $FE $DC
    db $FC                                        ; $6862: $FC
    nop                                           ; $6863: $00
    db $FC                                        ; $6864: $FC
    ld hl, sp-$04                                 ; $6865: $F8 $FC
    ldh [$FFE2], a                                ; $6867: $E0 $E2
    call c, Call_000_3CC2                         ; $6869: $DC $C2 $3C
    pop bc                                        ; $686C: $C1
    ld a, $27                                     ; $686D: $3E $27
    jr jr_012_688C                                ; $686F: $18 $1B

    ld b, $1F                                     ; $6871: $06 $1F
    ld b, $0F                                     ; $6873: $06 $0F
    ld bc, $070F                                  ; $6875: $01 $0F $07
    rrca                                          ; $6878: $0F
    rlca                                          ; $6879: $07
    rlca                                          ; $687A: $07
    inc bc                                        ; $687B: $03
    inc bc                                        ; $687C: $03
    ld bc, $0001                                  ; $687D: $01 $01 $00
    nop                                           ; $6880: $00
    nop                                           ; $6881: $00
    nop                                           ; $6882: $00
    nop                                           ; $6883: $00
    nop                                           ; $6884: $00
    nop                                           ; $6885: $00
    nop                                           ; $6886: $00
    nop                                           ; $6887: $00
    nop                                           ; $6888: $00
    nop                                           ; $6889: $00
    nop                                           ; $688A: $00
    nop                                           ; $688B: $00

jr_012_688C:
    nop                                           ; $688C: $00
    nop                                           ; $688D: $00
    nop                                           ; $688E: $00
    nop                                           ; $688F: $00
    rrca                                          ; $6890: $0F
    nop                                           ; $6891: $00
    rla                                           ; $6892: $17
    rrca                                          ; $6893: $0F
    rrca                                          ; $6894: $0F
    ld bc, $0E1F                                  ; $6895: $01 $1F $0E
    cpl                                           ; $6898: $2F
    db $10                                        ; $6899: $10
    ld [hl-], a                                   ; $689A: $32
    ld bc, $0102                                  ; $689B: $01 $02 $01
    ld bc, $F800                                  ; $689E: $01 $00 $F8
    ld [hl], b                                    ; $68A1: $70
    db $FC                                        ; $68A2: $FC
    ld hl, sp-$04                                 ; $68A3: $F8 $FC
    ld hl, sp-$04                                 ; $68A5: $F8 $FC
    ld hl, sp-$04                                 ; $68A7: $F8 $FC
    ld hl, sp-$04                                 ; $68A9: $F8 $FC
    ld hl, sp+$7C                                 ; $68AB: $F8 $7C
    ld hl, sp-$08                                 ; $68AD: $F8 $F8
    nop                                           ; $68AF: $00
    ld e, $E0                                     ; $68B0: $1E $E0
    rra                                           ; $68B2: $1F
    xor $3F                                       ; $68B3: $EE $3F
    ret nz                                        ; $68B5: $C0

    ccf                                           ; $68B6: $3F
    ret nz                                        ; $68B7: $C0

    ld a, [hl]                                    ; $68B8: $7E
    add b                                         ; $68B9: $80
    db $FC                                        ; $68BA: $FC
    nop                                           ; $68BB: $00
    ldh a, [rP1]                                  ; $68BC: $F0 $00
    add b                                         ; $68BE: $80
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
    ret nz                                        ; $68D4: $C0

    nop                                           ; $68D5: $00
    ldh [rLCDC], a                                ; $68D6: $E0 $40
    ldh a, [$FFA0]                                ; $68D8: $F0 $A0
    ldh a, [rP1]                                  ; $68DA: $F0 $00
    ld hl, sp-$10                                 ; $68DC: $F8 $F0
    ld hl, sp-$80                                 ; $68DE: $F8 $80
    add b                                         ; $68E0: $80
    nop                                           ; $68E1: $00
    ld b, b                                       ; $68E2: $40
    add b                                         ; $68E3: $80
    and b                                         ; $68E4: $A0
    ret nz                                        ; $68E5: $C0

    and b                                         ; $68E6: $A0
    ret nz                                        ; $68E7: $C0

    ret nc                                        ; $68E8: $D0

    ldh [$FFD0], a                                ; $68E9: $E0 $D0
    ldh [$FFF0], a                                ; $68EB: $E0 $F0
    ldh [$FFF0], a                                ; $68ED: $E0 $F0
    ldh [$FFF8], a                                ; $68EF: $E0 $F8
    add b                                         ; $68F1: $80
    ld hl, sp+$00                                 ; $68F2: $F8 $00
    add h                                         ; $68F4: $84
    ld a, b                                       ; $68F5: $78
    add h                                         ; $68F6: $84
    ld a, b                                       ; $68F7: $78
    ld b, h                                       ; $68F8: $44
    jr c, jr_012_6933                             ; $68F9: $38 $38

    nop                                           ; $68FB: $00
    nop                                           ; $68FC: $00
    nop                                           ; $68FD: $00
    nop                                           ; $68FE: $00
    nop                                           ; $68FF: $00
    ld bc, $0100                                  ; $6900: $01 $00 $01
    nop                                           ; $6903: $00
    ld bc, $0300                                  ; $6904: $01 $00 $03
    ld bc, $0107                                  ; $6907: $01 $07 $01
    add hl, bc                                    ; $690A: $09
    ld b, $11                                     ; $690B: $06 $11
    ld c, $1E                                     ; $690D: $0E $1E
    nop                                           ; $690F: $00
    nop                                           ; $6910: $00
    nop                                           ; $6911: $00
    nop                                           ; $6912: $00
    nop                                           ; $6913: $00
    nop                                           ; $6914: $00
    nop                                           ; $6915: $00
    nop                                           ; $6916: $00
    nop                                           ; $6917: $00
    nop                                           ; $6918: $00
    nop                                           ; $6919: $00
    nop                                           ; $691A: $00
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
    ld bc, $0200                                  ; $692C: $01 $00 $02
    ld bc, $0003                                  ; $692F: $01 $03 $00
    ld [bc], a                                    ; $6932: $02

jr_012_6933:
    ld bc, $0001                                  ; $6933: $01 $01 $00
    ld bc, $0000                                  ; $6936: $01 $00 $00
    nop                                           ; $6939: $00
    nop                                           ; $693A: $00
    nop                                           ; $693B: $00
    nop                                           ; $693C: $00
    nop                                           ; $693D: $00
    nop                                           ; $693E: $00
    nop                                           ; $693F: $00
    nop                                           ; $6940: $00
    nop                                           ; $6941: $00
    nop                                           ; $6942: $00
    nop                                           ; $6943: $00
    nop                                           ; $6944: $00
    nop                                           ; $6945: $00
    nop                                           ; $6946: $00
    nop                                           ; $6947: $00
    inc bc                                        ; $6948: $03
    nop                                           ; $6949: $00
    inc b                                         ; $694A: $04
    inc bc                                        ; $694B: $03
    dec c                                         ; $694C: $0D
    rlca                                          ; $694D: $07
    rrca                                          ; $694E: $0F
    ld b, $06                                     ; $694F: $06 $06
    ld bc, $0709                                  ; $6951: $01 $09 $07
    rra                                           ; $6954: $1F
    rrca                                          ; $6955: $0F
    rra                                           ; $6956: $1F
    rrca                                          ; $6957: $0F
    rrca                                          ; $6958: $0F
    rlca                                          ; $6959: $07
    rlca                                          ; $695A: $07
    nop                                           ; $695B: $00
    ld bc, $0100                                  ; $695C: $01 $00 $01
    nop                                           ; $695F: $00
    nop                                           ; $6960: $00
    nop                                           ; $6961: $00
    rlca                                          ; $6962: $07

jr_012_6963:
    nop                                           ; $6963: $00
    dec b                                         ; $6964: $05
    ld [bc], a                                    ; $6965: $02
    dec b                                         ; $6966: $05
    ld [bc], a                                    ; $6967: $02
    rrca                                          ; $6968: $0F
    ld bc, $06FF                                  ; $6969: $01 $FF $06
    ld c, $F1                                     ; $696C: $0E $F1
    ld e, l                                       ; $696E: $5D
    ldh a, [c]                                    ; $696F: $F2

jr_012_6970:
    cp $01                                        ; $6970: $FE $01
    rla                                           ; $6972: $17
    xor $FF                                       ; $6973: $EE $FF
    xor $FF                                       ; $6975: $EE $FF
    db $EC                                        ; $6977: $EC
    rst RST_38                                    ; $6978: $FF
    ldh [$FFF1], a                                ; $6979: $E0 $F1
    adc [hl]                                      ; $697B: $8E
    rst RST_38                                    ; $697C: $FF
    ld l, [hl]                                    ; $697D: $6E
    ld a, a                                       ; $697E: $7F
    adc [hl]                                      ; $697F: $8E
    db $FC                                        ; $6980: $FC
    nop                                           ; $6981: $00
    cp $04                                        ; $6982: $FE $04
    cp $E4                                        ; $6984: $FE $E4
    rst RST_38                                    ; $6986: $FF
    ld [bc], a                                    ; $6987: $02
    rst RST_38                                    ; $6988: $FF
    ld a, [$20FF]                                 ; $6989: $FA $FF $20
    ld l, h                                       ; $698C: $6C
    sbc e                                         ; $698D: $9B
    db $FD                                        ; $698E: $FD
    ld e, e                                       ; $698F: $5B
    ei                                            ; $6990: $FB
    ld b, a                                       ; $6991: $47
    rst RST_38                                    ; $6992: $FF
    rra                                           ; $6993: $1F
    rst RST_38                                    ; $6994: $FF
    ld e, a                                       ; $6995: $5F
    rst RST_18                                    ; $6996: $DF
    xor h                                         ; $6997: $AC
    db $FC                                        ; $6998: $FC
    inc bc                                        ; $6999: $03
    jr c, jr_012_6963                             ; $699A: $38 $C7

    add $F9                                       ; $699C: $C6 $F9
    ld sp, hl                                     ; $699E: $F9
    cp $00                                        ; $699F: $FE $00
    nop                                           ; $69A1: $00
    nop                                           ; $69A2: $00
    nop                                           ; $69A3: $00
    nop                                           ; $69A4: $00
    nop                                           ; $69A5: $00
    nop                                           ; $69A6: $00
    nop                                           ; $69A7: $00
    nop                                           ; $69A8: $00
    nop                                           ; $69A9: $00
    nop                                           ; $69AA: $00
    nop                                           ; $69AB: $00
    ret nz                                        ; $69AC: $C0

    nop                                           ; $69AD: $00
    jr nc, jr_012_6970                            ; $69AE: $30 $C0

    ld c, b                                       ; $69B0: $48
    ldh a, [$FFF8]                                ; $69B1: $F0 $F8
    ldh a, [$FFF8]                                ; $69B3: $F0 $F8
    ldh a, [$FFF0]                                ; $69B5: $F0 $F0
    ret nz                                        ; $69B7: $C0

    ret nz                                        ; $69B8: $C0

    nop                                           ; $69B9: $00
    add b                                         ; $69BA: $80
    nop                                           ; $69BB: $00
    add b                                         ; $69BC: $80
    nop                                           ; $69BD: $00
    add b                                         ; $69BE: $80
    nop                                           ; $69BF: $00
    cp a                                          ; $69C0: $BF
    ld d, $57                                     ; $69C1: $16 $57
    jr nz, @+$71                                  ; $69C3: $20 $6F

    ld b, $0F                                     ; $69C5: $06 $0F
    inc bc                                        ; $69C7: $03
    inc de                                        ; $69C8: $13
    dec c                                         ; $69C9: $0D
    ld hl, $211E                                  ; $69CA: $21 $1E $21
    ld e, $F2                                     ; $69CD: $1E $F2
    inc c                                         ; $69CF: $0C
    ld e, h                                       ; $69D0: $5C
    or b                                          ; $69D1: $B0
    ld a, h                                       ; $69D2: $7C
    or b                                          ; $69D3: $B0
    db $FC                                        ; $69D4: $FC
    ret z                                         ; $69D5: $C8

    db $FC                                        ; $69D6: $FC
    ld hl, sp-$04                                 ; $69D7: $F8 $FC
    ld hl, sp-$08                                 ; $69D9: $F8 $F8
    ldh a, [$FFF0]                                ; $69DB: $F0 $F0
    ret nz                                        ; $69DD: $C0

    ret nz                                        ; $69DE: $C0

    nop                                           ; $69DF: $00
    rst RST_38                                    ; $69E0: $FF
    cp $FF                                        ; $69E1: $FE $FF
    ld a, [hl]                                    ; $69E3: $7E
    cp $1C                                        ; $69E4: $FE $1C
    db $FC                                        ; $69E6: $FC
    ret nz                                        ; $69E7: $C0

    db $E4                                        ; $69E8: $E4
    ret c                                         ; $69E9: $D8

    jp nz, Jump_012_433C                          ; $69EA: $C2 $3C $43

    inc a                                         ; $69ED: $3C
    ld h, $19                                     ; $69EE: $26 $19
    dec de                                        ; $69F0: $1B
    ld b, $1F                                     ; $69F1: $06 $1F
    ld b, $1F                                     ; $69F3: $06 $1F
    add hl, bc                                    ; $69F5: $09
    rra                                           ; $69F6: $1F
    rrca                                          ; $69F7: $0F
    rrca                                          ; $69F8: $0F
    rlca                                          ; $69F9: $07
    rlca                                          ; $69FA: $07
    inc bc                                        ; $69FB: $03
    inc bc                                        ; $69FC: $03
    ld bc, $0001                                  ; $69FD: $01 $01 $00
    add b                                         ; $6A00: $80
    nop                                           ; $6A01: $00
    ld b, b                                       ; $6A02: $40
    add b                                         ; $6A03: $80
    jr nz, @-$3E                                  ; $6A04: $20 $C0

    and b                                         ; $6A06: $A0
    ret nz                                        ; $6A07: $C0

    and b                                         ; $6A08: $A0
    ret nz                                        ; $6A09: $C0

    ldh a, [$FFE0]                                ; $6A0A: $F0 $E0
    ldh a, [$FFE0]                                ; $6A0C: $F0 $E0
    ldh a, [$FFE0]                                ; $6A0E: $F0 $E0
    ld hl, sp-$40                                 ; $6A10: $F8 $C0
    db $FC                                        ; $6A12: $FC
    nop                                           ; $6A13: $00
    ldh [c], a                                    ; $6A14: $E2
    inc e                                         ; $6A15: $1C
    pop bc                                        ; $6A16: $C1
    ld a, $7F                                     ; $6A17: $3E $7F
    nop                                           ; $6A19: $00
    nop                                           ; $6A1A: $00
    nop                                           ; $6A1B: $00
    nop                                           ; $6A1C: $00
    nop                                           ; $6A1D: $00
    nop                                           ; $6A1E: $00
    nop                                           ; $6A1F: $00
    ld [bc], a                                    ; $6A20: $02
    ld bc, $0102                                  ; $6A21: $01 $02 $01
    dec b                                         ; $6A24: $05
    inc bc                                        ; $6A25: $03
    dec b                                         ; $6A26: $05
    inc bc                                        ; $6A27: $03
    rrca                                          ; $6A28: $0F
    rlca                                          ; $6A29: $07
    rrca                                          ; $6A2A: $0F
    rlca                                          ; $6A2B: $07
    rra                                           ; $6A2C: $1F
    ld bc, $001F                                  ; $6A2D: $01 $1F $00
    inc hl                                        ; $6A30: $23
    inc e                                         ; $6A31: $1C
    ld b, c                                       ; $6A32: $41
    ld a, $7F                                     ; $6A33: $3E $7F
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
    ccf                                           ; $6A40: $3F
    nop                                           ; $6A41: $00
    ld b, b                                       ; $6A42: $40
    ccf                                           ; $6A43: $3F
    add b                                         ; $6A44: $80
    ld a, a                                       ; $6A45: $7F
    add b                                         ; $6A46: $80
    ld a, a                                       ; $6A47: $7F
    cp c                                          ; $6A48: $B9
    ld b, [hl]                                    ; $6A49: $46
    sub c                                         ; $6A4A: $91
    ld l, [hl]                                    ; $6A4B: $6E
    cp c                                          ; $6A4C: $B9
    ld b, [hl]                                    ; $6A4D: $46
    sub c                                         ; $6A4E: $91
    ld l, [hl]                                    ; $6A4F: $6E
    cp d                                          ; $6A50: $BA
    ld b, l                                       ; $6A51: $45
    jp nc, $972D                                  ; $6A52: $D2 $2D $97

    ld l, b                                       ; $6A55: $68
    add b                                         ; $6A56: $80
    ld a, a                                       ; $6A57: $7F
    add b                                         ; $6A58: $80
    ld a, a                                       ; $6A59: $7F
    ld b, b                                       ; $6A5A: $40
    ccf                                           ; $6A5B: $3F
    jr c, jr_012_6A65                             ; $6A5C: $38 $07

    inc b                                         ; $6A5E: $04
    inc bc                                        ; $6A5F: $03
    rst RST_38                                    ; $6A60: $FF
    nop                                           ; $6A61: $00
    nop                                           ; $6A62: $00
    rst RST_38                                    ; $6A63: $FF
    nop                                           ; $6A64: $00

jr_012_6A65:
    rst RST_38                                    ; $6A65: $FF
    nop                                           ; $6A66: $00
    rst RST_38                                    ; $6A67: $FF
    ld [$0BF7], sp                                ; $6A68: $08 $F7 $0B
    db $F4                                        ; $6A6B: $F4
    db $10                                        ; $6A6C: $10
    rst RST_28                                    ; $6A6D: $EF
    db $10                                        ; $6A6E: $10
    rst RST_28                                    ; $6A6F: $EF
    sub e                                         ; $6A70: $93
    ld l, h                                       ; $6A71: $6C
    call nc, $4B2B                                ; $6A72: $D4 $2B $4B
    or h                                          ; $6A75: $B4
    nop                                           ; $6A76: $00
    rst RST_38                                    ; $6A77: $FF
    nop                                           ; $6A78: $00
    rst RST_38                                    ; $6A79: $FF
    nop                                           ; $6A7A: $00
    rst RST_38                                    ; $6A7B: $FF
    rra                                           ; $6A7C: $1F
    ldh [rNR10], a                                ; $6A7D: $E0 $10
    ldh [rIE], a                                  ; $6A7F: $E0 $FF
    nop                                           ; $6A81: $00
    nop                                           ; $6A82: $00
    rst RST_38                                    ; $6A83: $FF
    nop                                           ; $6A84: $00
    rst RST_38                                    ; $6A85: $FF
    inc bc                                        ; $6A86: $03
    db $FC                                        ; $6A87: $FC
    add h                                         ; $6A88: $84
    ld a, e                                       ; $6A89: $7B
    db $E3                                        ; $6A8A: $E3
    inc e                                         ; $6A8B: $1C
    add h                                         ; $6A8C: $84
    ld a, e                                       ; $6A8D: $7B
    add a                                         ; $6A8E: $87
    ld a, b                                       ; $6A8F: $78
    call nz, $A73B                                ; $6A90: $C4 $3B $A7
    ld e, b                                       ; $6A93: $58
    inc c                                         ; $6A94: $0C
    di                                            ; $6A95: $F3
    nop                                           ; $6A96: $00
    rst RST_38                                    ; $6A97: $FF
    nop                                           ; $6A98: $00
    rst RST_38                                    ; $6A99: $FF
    nop                                           ; $6A9A: $00
    rst RST_38                                    ; $6A9B: $FF
    rst RST_38                                    ; $6A9C: $FF
    nop                                           ; $6A9D: $00
    nop                                           ; $6A9E: $00
    nop                                           ; $6A9F: $00
    rst RST_38                                    ; $6AA0: $FF
    nop                                           ; $6AA1: $00
    nop                                           ; $6AA2: $00
    rst RST_38                                    ; $6AA3: $FF

jr_012_6AA4:
    nop                                           ; $6AA4: $00
    rst RST_38                                    ; $6AA5: $FF
    add b                                         ; $6AA6: $80
    ld a, a                                       ; $6AA7: $7F
    add b                                         ; $6AA8: $80
    ld a, a                                       ; $6AA9: $7F
    ret nc                                        ; $6AAA: $D0

    cpl                                           ; $6AAB: $2F
    ld d, a                                       ; $6AAC: $57
    xor b                                         ; $6AAD: $A8
    ret nc                                        ; $6AAE: $D0

    cpl                                           ; $6AAF: $2F
    ld d, b                                       ; $6AB0: $50
    xor a                                         ; $6AB1: $AF
    ret nc                                        ; $6AB2: $D0

    cpl                                           ; $6AB3: $2F
    ld l, c                                       ; $6AB4: $69
    sub [hl]                                      ; $6AB5: $96
    nop                                           ; $6AB6: $00
    rst RST_38                                    ; $6AB7: $FF
    nop                                           ; $6AB8: $00
    rst RST_38                                    ; $6AB9: $FF
    nop                                           ; $6ABA: $00
    rst RST_38                                    ; $6ABB: $FF
    rst RST_38                                    ; $6ABC: $FF
    nop                                           ; $6ABD: $00
    nop                                           ; $6ABE: $00
    nop                                           ; $6ABF: $00
    rst RST_38                                    ; $6AC0: $FF
    nop                                           ; $6AC1: $00
    nop                                           ; $6AC2: $00
    rst RST_38                                    ; $6AC3: $FF
    nop                                           ; $6AC4: $00
    rst RST_38                                    ; $6AC5: $FF
    nop                                           ; $6AC6: $00
    rst RST_38                                    ; $6AC7: $FF
    add d                                         ; $6AC8: $82
    ld a, l                                       ; $6AC9: $7D
    add h                                         ; $6ACA: $84
    ld a, e                                       ; $6ACB: $7B
    add sp, $17                                   ; $6ACC: $E8 $17
    adc [hl]                                      ; $6ACE: $8E
    ld [hl], c                                    ; $6ACF: $71
    sub d                                         ; $6AD0: $92
    ld l, l                                       ; $6AD1: $6D
    and d                                         ; $6AD2: $A2
    ld e, l                                       ; $6AD3: $5D
    ld hl, $00DE                                  ; $6AD4: $21 $DE $00
    rst RST_38                                    ; $6AD7: $FF
    nop                                           ; $6AD8: $00
    rst RST_38                                    ; $6AD9: $FF
    nop                                           ; $6ADA: $00
    rst RST_38                                    ; $6ADB: $FF
    rst RST_38                                    ; $6ADC: $FF
    nop                                           ; $6ADD: $00
    nop                                           ; $6ADE: $00
    nop                                           ; $6ADF: $00
    ret nz                                        ; $6AE0: $C0

    nop                                           ; $6AE1: $00
    jr nz, jr_012_6AA4                            ; $6AE2: $20 $C0

    db $10                                        ; $6AE4: $10
    ldh [rNR10], a                                ; $6AE5: $E0 $10
    ldh [rNR10], a                                ; $6AE7: $E0 $10
    ldh [rNR10], a                                ; $6AE9: $E0 $10
    ldh [rNR10], a                                ; $6AEB: $E0 $10
    ldh [rNR10], a                                ; $6AED: $E0 $10
    ldh [$FF50], a                                ; $6AEF: $E0 $50
    and b                                         ; $6AF1: $A0
    ld d, b                                       ; $6AF2: $50
    and b                                         ; $6AF3: $A0
    sub b                                         ; $6AF4: $90
    ld h, b                                       ; $6AF5: $60
    db $10                                        ; $6AF6: $10
    ldh [rNR10], a                                ; $6AF7: $E0 $10
    ldh [rNR41], a                                ; $6AF9: $E0 $20
    ret nz                                        ; $6AFB: $C0

    ret nz                                        ; $6AFC: $C0

    nop                                           ; $6AFD: $00
    nop                                           ; $6AFE: $00
    nop                                           ; $6AFF: $00
    ld hl, $111E                                  ; $6B00: $21 $1E $11
    ld c, $09                                     ; $6B03: $0E $09
    ld b, $05                                     ; $6B05: $06 $05
    ld [bc], a                                    ; $6B07: $02
    inc bc                                        ; $6B08: $03
    nop                                           ; $6B09: $00
    nop                                           ; $6B0A: $00
    nop                                           ; $6B0B: $00
    nop                                           ; $6B0C: $00
    nop                                           ; $6B0D: $00
    nop                                           ; $6B0E: $00
    nop                                           ; $6B0F: $00
    nop                                           ; $6B10: $00
    nop                                           ; $6B11: $00
    nop                                           ; $6B12: $00
    nop                                           ; $6B13: $00
    nop                                           ; $6B14: $00
    nop                                           ; $6B15: $00
    nop                                           ; $6B16: $00

jr_012_6B17:
    nop                                           ; $6B17: $00
    nop                                           ; $6B18: $00
    nop                                           ; $6B19: $00
    nop                                           ; $6B1A: $00
    nop                                           ; $6B1B: $00
    nop                                           ; $6B1C: $00
    nop                                           ; $6B1D: $00
    nop                                           ; $6B1E: $00
    nop                                           ; $6B1F: $00
    nop                                           ; $6B20: $00
    nop                                           ; $6B21: $00
    nop                                           ; $6B22: $00
    nop                                           ; $6B23: $00
    ld bc, $3F00                                  ; $6B24: $01 $00 $3F
    nop                                           ; $6B27: $00
    ld b, c                                       ; $6B28: $41
    ld a, $AA                                     ; $6B29: $3E $AA
    ld a, a                                       ; $6B2B: $7F
    rst RST_38                                    ; $6B2C: $FF
    ld a, a                                       ; $6B2D: $7F
    rst RST_38                                    ; $6B2E: $FF
    ld a, h                                       ; $6B2F: $7C
    ld a, l                                       ; $6B30: $7D
    inc de                                        ; $6B31: $13
    rla                                           ; $6B32: $17
    ld [$0718], sp                                ; $6B33: $08 $18 $07
    daa                                           ; $6B36: $27
    rra                                           ; $6B37: $1F
    ld a, a                                       ; $6B38: $7F
    ccf                                           ; $6B39: $3F

jr_012_6B3A:
    ld a, a                                       ; $6B3A: $7F
    ccf                                           ; $6B3B: $3F
    ccf                                           ; $6B3C: $3F
    ld e, $1F                                     ; $6B3D: $1E $1F
    nop                                           ; $6B3F: $00
    rra                                           ; $6B40: $1F
    nop                                           ; $6B41: $00
    rst RST_38                                    ; $6B42: $FF
    nop                                           ; $6B43: $00
    cp a                                          ; $6B44: $BF
    ld e, h                                       ; $6B45: $5C
    cp a                                          ; $6B46: $BF
    ld b, b                                       ; $6B47: $40
    rst RST_38                                    ; $6B48: $FF
    ccf                                           ; $6B49: $3F
    rst RST_38                                    ; $6B4A: $FF
    call nz, $33CD                                ; $6B4B: $C4 $CD $33
    cp a                                          ; $6B4E: $BF
    ld c, d                                       ; $6B4F: $4A
    sbc $69                                       ; $6B50: $DE $69
    cp $03                                        ; $6B52: $FE $03
    rst RST_38                                    ; $6B54: $FF
    ld a, e                                       ; $6B55: $7B
    ei                                            ; $6B56: $FB
    inc e                                         ; $6B57: $1C
    ld e, h                                       ; $6B58: $5C
    xor e                                         ; $6B59: $AB
    db $FC                                        ; $6B5A: $FC
    or e                                          ; $6B5B: $B3
    ldh a, [c]                                    ; $6B5C: $F2
    adc l                                         ; $6B5D: $8D
    rst RST_38                                    ; $6B5E: $FF
    cp [hl]                                       ; $6B5F: $BE
    add b                                         ; $6B60: $80
    nop                                           ; $6B61: $00
    ret nz                                        ; $6B62: $C0

    add b                                         ; $6B63: $80
    ret nz                                        ; $6B64: $C0

    add b                                         ; $6B65: $80
    ldh [rLCDC], a                                ; $6B66: $E0 $40
    ldh [rLCDC], a                                ; $6B68: $E0 $40
    ld hl, sp+$00                                 ; $6B6A: $F8 $00
    add [hl]                                      ; $6B6C: $86
    ld a, b                                       ; $6B6D: $78
    dec hl                                        ; $6B6E: $2B
    cp $BF                                        ; $6B6F: $FE $BF
    cp $FF                                        ; $6B71: $FE $FF
    ldh [rIE], a                                  ; $6B73: $E0 $FF
    nop                                           ; $6B75: $00
    ld a, $C0                                     ; $6B76: $3E $C0
    jr c, jr_012_6B3A                             ; $6B78: $38 $C0

    ld h, b                                       ; $6B7A: $60
    add b                                         ; $6B7B: $80
    ldh [rLCDC], a                                ; $6B7C: $E0 $40
    ret nz                                        ; $6B7E: $C0

    add b                                         ; $6B7F: $80
    inc bc                                        ; $6B80: $03
    nop                                           ; $6B81: $00
    dec b                                         ; $6B82: $05
    ld [bc], a                                    ; $6B83: $02
    dec b                                         ; $6B84: $05
    ld [bc], a                                    ; $6B85: $02
    dec bc                                        ; $6B86: $0B
    rlca                                          ; $6B87: $07
    dec bc                                        ; $6B88: $0B
    rlca                                          ; $6B89: $07
    rra                                           ; $6B8A: $1F
    rrca                                          ; $6B8B: $0F
    rra                                           ; $6B8C: $1F
    rrca                                          ; $6B8D: $0F
    ccf                                           ; $6B8E: $3F
    inc bc                                        ; $6B8F: $03
    ccf                                           ; $6B90: $3F
    nop                                           ; $6B91: $00
    ld b, a                                       ; $6B92: $47
    jr c, jr_012_6B17                             ; $6B93: $38 $82

    ld a, h                                       ; $6B95: $7C
    cp $00                                        ; $6B96: $FE $00
    nop                                           ; $6B98: $00
    nop                                           ; $6B99: $00
    nop                                           ; $6B9A: $00
    nop                                           ; $6B9B: $00
    nop                                           ; $6B9C: $00
    nop                                           ; $6B9D: $00
    nop                                           ; $6B9E: $00
    nop                                           ; $6B9F: $00
    rst RST_38                                    ; $6BA0: $FF
    rst RST_08                                    ; $6BA1: $CF

jr_012_6BA2:
    rst RST_38                                    ; $6BA2: $FF
    rlca                                          ; $6BA3: $07
    ccf                                           ; $6BA4: $3F
    jr jr_012_6BE6                                ; $6BA5: $18 $3F

    rrca                                          ; $6BA7: $0F
    ld c, a                                       ; $6BA8: $4F
    scf                                           ; $6BA9: $37
    add a                                         ; $6BAA: $87
    ld a, b                                       ; $6BAB: $78
    add l                                         ; $6BAC: $85
    ld a, b                                       ; $6BAD: $78
    ret z                                         ; $6BAE: $C8

    jr nc, jr_012_6C21                            ; $6BAF: $30 $70

    ret nz                                        ; $6BB1: $C0

    ldh a, [$FFC0]                                ; $6BB2: $F0 $C0
    ldh a, [rNR41]                                ; $6BB4: $F0 $20
    ldh a, [$FFE0]                                ; $6BB6: $F0 $E0
    ldh a, [$FFE0]                                ; $6BB8: $F0 $E0
    ldh [$FFC0], a                                ; $6BBA: $E0 $C0
    ret nz                                        ; $6BBC: $C0

    nop                                           ; $6BBD: $00
    nop                                           ; $6BBE: $00
    nop                                           ; $6BBF: $00
    ld hl, sp-$30                                 ; $6BC0: $F8 $D0
    ldh a, [$FF80]                                ; $6BC2: $F0 $80
    ldh [rLCDC], a                                ; $6BC4: $E0 $40
    ldh [$FF80], a                                ; $6BC6: $E0 $80
    sub b                                         ; $6BC8: $90
    ld h, b                                       ; $6BC9: $60
    ld [$0EF0], sp                                ; $6BCA: $08 $F0 $0E
    ldh a, [$FF99]                                ; $6BCD: $F0 $99
    ld h, [hl]                                    ; $6BCF: $66
    ld l, h                                       ; $6BD0: $6C
    dec de                                        ; $6BD1: $1B
    ld a, [hl]                                    ; $6BD2: $7E
    dec de                                        ; $6BD3: $1B
    ld a, [hl]                                    ; $6BD4: $7E
    daa                                           ; $6BD5: $27
    ld a, a                                       ; $6BD6: $7F
    ccf                                           ; $6BD7: $3F
    ccf                                           ; $6BD8: $3F
    rra                                           ; $6BD9: $1F
    rra                                           ; $6BDA: $1F
    rrca                                          ; $6BDB: $0F
    rrca                                          ; $6BDC: $0F
    rlca                                          ; $6BDD: $07
    rlca                                          ; $6BDE: $07
    nop                                           ; $6BDF: $00
    jr nz, jr_012_6BA2                            ; $6BE0: $20 $C0

    and b                                         ; $6BE2: $A0
    ret nz                                        ; $6BE3: $C0

    and b                                         ; $6BE4: $A0
    ret nz                                        ; $6BE5: $C0

jr_012_6BE6:
    ldh a, [$FFE0]                                ; $6BE6: $F0 $E0
    ldh a, [$FFE0]                                ; $6BE8: $F0 $E0
    ldh a, [$FFE0]                                ; $6BEA: $F0 $E0
    ld hl, sp-$40                                 ; $6BEC: $F8 $C0
    db $FC                                        ; $6BEE: $FC
    nop                                           ; $6BEF: $00
    ldh [c], a                                    ; $6BF0: $E2
    inc e                                         ; $6BF1: $1C
    pop bc                                        ; $6BF2: $C1
    ld a, $7F                                     ; $6BF3: $3E $7F
    nop                                           ; $6BF5: $00
    nop                                           ; $6BF6: $00
    nop                                           ; $6BF7: $00
    nop                                           ; $6BF8: $00
    nop                                           ; $6BF9: $00
    nop                                           ; $6BFA: $00
    nop                                           ; $6BFB: $00
    nop                                           ; $6BFC: $00
    nop                                           ; $6BFD: $00
    nop                                           ; $6BFE: $00
    nop                                           ; $6BFF: $00
    nop                                           ; $6C00: $00
    nop                                           ; $6C01: $00
    nop                                           ; $6C02: $00
    nop                                           ; $6C03: $00
    nop                                           ; $6C04: $00
    nop                                           ; $6C05: $00
    nop                                           ; $6C06: $00
    nop                                           ; $6C07: $00
    nop                                           ; $6C08: $00
    nop                                           ; $6C09: $00
    rlca                                          ; $6C0A: $07
    nop                                           ; $6C0B: $00
    ld [$1507], sp                                ; $6C0C: $08 $07 $15
    rrca                                          ; $6C0F: $0F
    rra                                           ; $6C10: $1F
    rrca                                          ; $6C11: $0F
    rra                                           ; $6C12: $1F
    ld c, $0F                                     ; $6C13: $0E $0F
    dec b                                         ; $6C15: $05
    rlca                                          ; $6C16: $07
    inc bc                                        ; $6C17: $03
    rrca                                          ; $6C18: $0F
    ld bc, $0857                                  ; $6C19: $01 $57 $08
    cp a                                          ; $6C1C: $BF
    ld b, c                                       ; $6C1D: $41
    db $FC                                        ; $6C1E: $FC
    inc de                                        ; $6C1F: $13
    nop                                           ; $6C20: $00

jr_012_6C21:
    nop                                           ; $6C21: $00
    nop                                           ; $6C22: $00
    nop                                           ; $6C23: $00
    ld bc, $0300                                  ; $6C24: $01 $00 $03
    ld bc, $000F                                  ; $6C27: $01 $0F $00
    rst RST_38                                    ; $6C2A: $FF
    inc bc                                        ; $6C2B: $03
    rla                                           ; $6C2C: $17
    db $EB                                        ; $6C2D: $EB
    ld [hl], a                                    ; $6C2E: $77
    jp z, $81FF                                   ; $6C2F: $CA $FF $81

    rst RST_38                                    ; $6C32: $FF
    ld a, d                                       ; $6C33: $7A
    rst RST_38                                    ; $6C34: $FF
    db $FD                                        ; $6C35: $FD
    rst RST_38                                    ; $6C36: $FF
    db $FD                                        ; $6C37: $FD
    rst RST_38                                    ; $6C38: $FF
    adc [hl]                                      ; $6C39: $8E
    or a                                          ; $6C3A: $B7
    ld c, [hl]                                    ; $6C3B: $4E
    rst RST_08                                    ; $6C3C: $CF
    ld a, $1F                                     ; $6C3D: $3E $1F
    db $FC                                        ; $6C3F: $FC

jr_012_6C40:
    nop                                           ; $6C40: $00
    nop                                           ; $6C41: $00
    nop                                           ; $6C42: $00
    nop                                           ; $6C43: $00
    ld hl, sp+$00                                 ; $6C44: $F8 $00
    db $FC                                        ; $6C46: $FC
    ld hl, sp-$02                                 ; $6C47: $F8 $FE
    inc e                                         ; $6C49: $1C
    rst RST_38                                    ; $6C4A: $FF
    db $EC                                        ; $6C4B: $EC
    rst RST_38                                    ; $6C4C: $FF
    add [hl]                                      ; $6C4D: $86
    rst RST_38                                    ; $6C4E: $FF
    ld h, [hl]                                    ; $6C4F: $66
    rst RST_38                                    ; $6C50: $FF
    add l                                         ; $6C51: $85
    cp a                                          ; $6C52: $BF
    ld h, c                                       ; $6C53: $61
    rst RST_38                                    ; $6C54: $FF
    ld h, c                                       ; $6C55: $61
    rst RST_38                                    ; $6C56: $FF

jr_012_6C57:
    nop                                           ; $6C57: $00
    rst RST_38                                    ; $6C58: $FF
    jr jr_012_6C57                                ; $6C59: $18 $FC

    dec de                                        ; $6C5B: $1B
    db $FC                                        ; $6C5C: $FC
    dec de                                        ; $6C5D: $1B
    cp $11                                        ; $6C5E: $FE $11
    nop                                           ; $6C60: $00
    nop                                           ; $6C61: $00
    nop                                           ; $6C62: $00
    nop                                           ; $6C63: $00
    nop                                           ; $6C64: $00
    nop                                           ; $6C65: $00
    nop                                           ; $6C66: $00
    nop                                           ; $6C67: $00
    nop                                           ; $6C68: $00
    nop                                           ; $6C69: $00
    db $FC                                        ; $6C6A: $FC
    nop                                           ; $6C6B: $00
    ld [bc], a                                    ; $6C6C: $02
    db $FC                                        ; $6C6D: $FC
    xor e                                         ; $6C6E: $AB
    cp $FF                                        ; $6C6F: $FE $FF
    cp $FF                                        ; $6C71: $FE $FF
    cp $FE                                        ; $6C73: $FE $FE
    ld hl, sp-$08                                 ; $6C75: $F8 $F8
    ldh [$FFE0], a                                ; $6C77: $E0 $E0
    nop                                           ; $6C79: $00
    add b                                         ; $6C7A: $80
    nop                                           ; $6C7B: $00
    ld b, b                                       ; $6C7C: $40
    add b                                         ; $6C7D: $80
    jr nz, jr_012_6C40                            ; $6C7E: $20 $C0

    cp a                                          ; $6C80: $BF
    ld l, b                                       ; $6C81: $68
    ld a, [hl]                                    ; $6C82: $7E
    add hl, de                                    ; $6C83: $19
    ccf                                           ; $6C84: $3F
    ld a, [de]                                    ; $6C85: $1A
    ld e, a                                       ; $6C86: $5F
    dec hl                                        ; $6C87: $2B
    ccf                                           ; $6C88: $3F
    rlca                                          ; $6C89: $07
    rra                                           ; $6C8A: $1F
    rrca                                          ; $6C8B: $0F
    rrca                                          ; $6C8C: $0F
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
    rst RST_28                                    ; $6CA0: $EF
    ld e, $07                                     ; $6CA1: $1E $07
    db $FC                                        ; $6CA3: $FC
    rst RST_38                                    ; $6CA4: $FF
    pop bc                                        ; $6CA5: $C1
    reti                                          ; $6CA6: $D9


    ld [hl], $FE                                  ; $6CA7: $36 $FE
    or c                                          ; $6CA9: $B1
    rst RST_38                                    ; $6CAA: $FF
    ld c, $7F                                     ; $6CAB: $0E $7F
    ld a, $7F                                     ; $6CAD: $3E $7F
    ld a, $3E                                     ; $6CAF: $3E $3E
    inc e                                         ; $6CB1: $1C
    ld a, $00                                     ; $6CB2: $3E $00
    ccf                                           ; $6CB4: $3F
    ld e, $3F                                     ; $6CB5: $1E $3F
    ld e, $3F                                     ; $6CB7: $1E $3F
    ld [bc], a                                    ; $6CB9: $02

jr_012_6CBA:
    ld [hl+], a                                   ; $6CBA: $22
    inc e                                         ; $6CBB: $1C
    ld [hl+], a                                   ; $6CBC: $22
    inc e                                         ; $6CBD: $1C
    inc e                                         ; $6CBE: $1C
    nop                                           ; $6CBF: $00
    ei                                            ; $6CC0: $FB
    ld d, $FF                                     ; $6CC1: $16 $FF
    jr nc, jr_012_6CBA                            ; $6CC3: $30 $F5

    db $EB                                        ; $6CC5: $EB
    rst RST_38                                    ; $6CC6: $FF
    nop                                           ; $6CC7: $00
    cp $79                                        ; $6CC8: $FE $79
    ld a, e                                       ; $6CCA: $7B
    or h                                          ; $6CCB: $B4
    ld [hl], b                                    ; $6CCC: $70
    xor a                                         ; $6CCD: $AF
    ldh a, [rIF]                                  ; $6CCE: $F0 $0F
    jr c, jr_012_6CE9                             ; $6CD0: $38 $17

    inc a                                         ; $6CD2: $3C
    dec bc                                        ; $6CD3: $0B
    cpl                                           ; $6CD4: $2F
    inc d                                         ; $6CD5: $14
    cpl                                           ; $6CD6: $2F
    ld d, $17                                     ; $6CD7: $16 $17
    dec bc                                        ; $6CD9: $0B
    inc de                                        ; $6CDA: $13
    inc c                                         ; $6CDB: $0C
    ld c, $00                                     ; $6CDC: $0E $00
    nop                                           ; $6CDE: $00
    nop                                           ; $6CDF: $00
    db $FC                                        ; $6CE0: $FC
    nop                                           ; $6CE1: $00
    cp $DC                                        ; $6CE2: $FE $DC
    rst RST_38                                    ; $6CE4: $FF
    ld l, [hl]                                    ; $6CE5: $6E
    rst RST_38                                    ; $6CE6: $FF
    ld l, [hl]                                    ; $6CE7: $6E
    rst RST_38                                    ; $6CE8: $FF

jr_012_6CE9:
    xor [hl]                                      ; $6CE9: $AE
    cp $1C                                        ; $6CEA: $FE $1C
    sbc h                                         ; $6CEC: $9C
    nop                                           ; $6CED: $00
    add b                                         ; $6CEE: $80
    nop                                           ; $6CEF: $00
    ld b, b                                       ; $6CF0: $40
    add b                                         ; $6CF1: $80
    ret nz                                        ; $6CF2: $C0

    nop                                           ; $6CF3: $00
    ld h, b                                       ; $6CF4: $60
    ret nz                                        ; $6CF5: $C0

    ldh [$FFC0], a                                ; $6CF6: $E0 $C0
    ldh [rP1], a                                  ; $6CF8: $E0 $00
    ret nz                                        ; $6CFA: $C0

    nop                                           ; $6CFB: $00
    nop                                           ; $6CFC: $00
    nop                                           ; $6CFD: $00
    nop                                           ; $6CFE: $00
    nop                                           ; $6CFF: $00
    nop                                           ; $6D00: $00
    nop                                           ; $6D01: $00
    nop                                           ; $6D02: $00
    nop                                           ; $6D03: $00
    nop                                           ; $6D04: $00
    nop                                           ; $6D05: $00
    nop                                           ; $6D06: $00
    nop                                           ; $6D07: $00
    ld bc, $0700                                  ; $6D08: $01 $00 $07
    ld bc, $070F                                  ; $6D0B: $01 $0F $07
    rrca                                          ; $6D0E: $0F
    inc b                                         ; $6D0F: $04
    dec c                                         ; $6D10: $0D
    ld [bc], a                                    ; $6D11: $02
    dec de                                        ; $6D12: $1B
    inc c                                         ; $6D13: $0C
    db $10                                        ; $6D14: $10
    rrca                                          ; $6D15: $0F
    ld e, $01                                     ; $6D16: $1E $01
    db $10                                        ; $6D18: $10
    rrca                                          ; $6D19: $0F
    rrca                                          ; $6D1A: $0F
    rlca                                          ; $6D1B: $07
    rlca                                          ; $6D1C: $07
    nop                                           ; $6D1D: $00
    rlca                                          ; $6D1E: $07
    ld [bc], a                                    ; $6D1F: $02
    nop                                           ; $6D20: $00
    nop                                           ; $6D21: $00
    rlca                                          ; $6D22: $07
    nop                                           ; $6D23: $00
    rra                                           ; $6D24: $1F
    rlca                                          ; $6D25: $07
    rst RST_38                                    ; $6D26: $FF
    nop                                           ; $6D27: $00
    rst RST_38                                    ; $6D28: $FF
    ldh [rIE], a                                  ; $6D29: $E0 $FF
    ldh a, [$FFFE]                                ; $6D2B: $F0 $FE
    push af                                       ; $6D2D: $F5
    cp [hl]                                       ; $6D2E: $BE
    ld [hl], c                                    ; $6D2F: $71
    cp [hl]                                       ; $6D30: $BE
    ld [hl], l                                    ; $6D31: $75
    ld a, a                                       ; $6D32: $7F
    db $F4                                        ; $6D33: $F4
    db $FD                                        ; $6D34: $FD
    di                                            ; $6D35: $F3
    rst RST_38                                    ; $6D36: $FF
    db $EB                                        ; $6D37: $EB
    rst RST_38                                    ; $6D38: $FF
    ret z                                         ; $6D39: $C8

    rst RST_18                                    ; $6D3A: $DF
    inc hl                                        ; $6D3B: $23
    cp $07                                        ; $6D3C: $FE $07
    db $FC                                        ; $6D3E: $FC
    rrca                                          ; $6D3F: $0F
    nop                                           ; $6D40: $00
    nop                                           ; $6D41: $00
    ldh [rP1], a                                  ; $6D42: $E0 $00
    ldh a, [$FFE0]                                ; $6D44: $F0 $E0
    ld hl, sp+$70                                 ; $6D46: $F8 $70
    ld hl, sp+$30                                 ; $6D48: $F8 $30
    db $FC                                        ; $6D4A: $FC
    jr c, @-$02                                   ; $6D4B: $38 $FC

jr_012_6D4D:
    jr jr_012_6D4D                                ; $6D4D: $18 $FE

    inc e                                         ; $6D4F: $1C
    cp $1C                                        ; $6D50: $FE $1C
    rst RST_38                                    ; $6D52: $FF
    nop                                           ; $6D53: $00
    rst RST_28                                    ; $6D54: $EF
    rra                                           ; $6D55: $1F
    rst RST_18                                    ; $6D56: $DF
    ccf                                           ; $6D57: $3F
    rst RST_18                                    ; $6D58: $DF
    cp a                                          ; $6D59: $BF
    rst RST_18                                    ; $6D5A: $DF
    cp a                                          ; $6D5B: $BF
    rst RST_38                                    ; $6D5C: $FF
    sbc h                                         ; $6D5D: $9C
    rst RST_38                                    ; $6D5E: $FF
    adc b                                         ; $6D5F: $88
    dec b                                         ; $6D60: $05
    inc bc                                        ; $6D61: $03
    inc b                                         ; $6D62: $04
    inc bc                                        ; $6D63: $03
    rra                                           ; $6D64: $1F
    inc bc                                        ; $6D65: $03
    ld a, a                                       ; $6D66: $7F
    inc c                                         ; $6D67: $0C
    rst RST_10                                    ; $6D68: $D7
    ld l, d                                       ; $6D69: $6A
    ld a, a                                       ; $6D6A: $7F
    ld [bc], a                                    ; $6D6B: $02
    ld l, a                                       ; $6D6C: $6F
    ld [hl], $37                                  ; $6D6D: $36 $37
    add hl, bc                                    ; $6D6F: $09
    rra                                           ; $6D70: $1F
    inc bc                                        ; $6D71: $03
    ld b, $01                                     ; $6D72: $06 $01
    dec bc                                        ; $6D74: $0B
    ld b, $0F                                     ; $6D75: $06 $0F
    ld b, $07                                     ; $6D77: $06 $07
    ld bc, $0307                                  ; $6D79: $01 $07 $03
    inc bc                                        ; $6D7C: $03
    ld bc, $0001                                  ; $6D7D: $01 $01 $00
    ldh a, [$FF7F]                                ; $6D80: $F0 $7F
    add c                                         ; $6D82: $81
    ld a, a                                       ; $6D83: $7F
    jp $FE7E                                      ; $6D84: $C3 $7E $FE


    dec c                                         ; $6D87: $0D
    ld e, $F1                                     ; $6D88: $1E $F1
    rst RST_38                                    ; $6D8A: $FF
    ldh a, [rIE]                                  ; $6D8B: $F0 $FF
    ld b, $FF                                     ; $6D8D: $06 $FF
    cp l                                          ; $6D8F: $BD
    inc a                                         ; $6D90: $3C
    db $DB                                        ; $6D91: $DB
    dec a                                         ; $6D92: $3D
    jp nz, Jump_000_01C2                          ; $6D93: $C2 $C2 $01

    db $E3                                        ; $6D96: $E3
    pop bc                                        ; $6D97: $C1
    db $E3                                        ; $6D98: $E3
    ret nz                                        ; $6D99: $C0

    pop af                                        ; $6D9A: $F1
    ldh [$FFF0], a                                ; $6D9B: $E0 $F0
    ldh [$FFF0], a                                ; $6D9D: $E0 $F0
    ret nz                                        ; $6D9F: $C0

    db $EC                                        ; $6DA0: $EC
    sub e                                         ; $6DA1: $93
    di                                            ; $6DA2: $F3
    adc h                                         ; $6DA3: $8C
    rst RST_38                                    ; $6DA4: $FF
    ld h, e                                       ; $6DA5: $63
    rst RST_38                                    ; $6DA6: $FF
    ld l, a                                       ; $6DA7: $6F
    rst RST_38                                    ; $6DA8: $FF
    ld [hl], a                                    ; $6DA9: $77
    ld a, a                                       ; $6DAA: $7F
    or a                                          ; $6DAB: $B7
    ld a, a                                       ; $6DAC: $7F
    xor a                                         ; $6DAD: $AF
    rst RST_38                                    ; $6DAE: $FF
    nop                                           ; $6DAF: $00
    ldh a, [$FFE0]                                ; $6DB0: $F0 $E0
    ldh a, [rNR41]                                ; $6DB2: $F0 $20
    ld hl, sp-$80                                 ; $6DB4: $F8 $80
    db $FC                                        ; $6DB6: $FC
    cp b                                          ; $6DB7: $B8
    db $FC                                        ; $6DB8: $FC
    ld a, b                                       ; $6DB9: $78
    cp $FC                                        ; $6DBA: $FE $FC
    rst RST_38                                    ; $6DBC: $FF
    ld a, [hl]                                    ; $6DBD: $7E
    ld a, a                                       ; $6DBE: $7F
    inc a                                         ; $6DBF: $3C
    nop                                           ; $6DC0: $00
    nop                                           ; $6DC1: $00
    nop                                           ; $6DC2: $00
    nop                                           ; $6DC3: $00
    ret nz                                        ; $6DC4: $C0

    nop                                           ; $6DC5: $00
    ldh [$FFC0], a                                ; $6DC6: $E0 $C0
    ldh [$FFC0], a                                ; $6DC8: $E0 $C0
    ldh a, [$FFE0]                                ; $6DCA: $F0 $E0
    ldh a, [rNR41]                                ; $6DCC: $F0 $20
    or b                                          ; $6DCE: $B0
    nop                                           ; $6DCF: $00
    sub b                                         ; $6DD0: $90
    nop                                           ; $6DD1: $00
    ret nz                                        ; $6DD2: $C0

    nop                                           ; $6DD3: $00
    ldh [$FFC0], a                                ; $6DD4: $E0 $C0
    ldh a, [$FFE0]                                ; $6DD6: $F0 $E0
    ldh a, [$FFE0]                                ; $6DD8: $F0 $E0
    ldh a, [$FFE0]                                ; $6DDA: $F0 $E0
    ldh [$FFC0], a                                ; $6DDC: $E0 $C0
    ret nz                                        ; $6DDE: $C0

    nop                                           ; $6DDF: $00
    add sp, $10                                   ; $6DE0: $E8 $10
    and h                                         ; $6DE2: $A4
    ld e, b                                       ; $6DE3: $58
    ld d, h                                       ; $6DE4: $54
    jr z, @+$3E                                   ; $6DE5: $28 $3C

    nop                                           ; $6DE7: $00
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
    db $F4                                        ; $6E00: $F4
    ld [$58A4], sp                                ; $6E01: $08 $A4 $58
    xor h                                         ; $6E04: $AC
    ld d, b                                       ; $6E05: $50
    ld [hl], b                                    ; $6E06: $70
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
    nop                                           ; $6E20: $00
    nop                                           ; $6E21: $00
    ld bc, $0700                                  ; $6E22: $01 $00 $07
    nop                                           ; $6E25: $00
    rrca                                          ; $6E26: $0F
    rlca                                          ; $6E27: $07
    ccf                                           ; $6E28: $3F
    rrca                                          ; $6E29: $0F
    ld a, a                                       ; $6E2A: $7F
    ccf                                           ; $6E2B: $3F
    ld a, l                                       ; $6E2C: $7D
    inc hl                                        ; $6E2D: $23
    ld l, l                                       ; $6E2E: $6D
    inc de                                        ; $6E2F: $13
    db $DB                                        ; $6E30: $DB
    ld h, a                                       ; $6E31: $67
    add a                                         ; $6E32: $87
    ld a, a                                       ; $6E33: $7F
    rst RST_30                                    ; $6E34: $F7
    ld c, $87                                     ; $6E35: $0E $87
    ld a, [hl]                                    ; $6E37: $7E
    ld a, a                                       ; $6E38: $7F
    jr c, jr_012_6E77                             ; $6E39: $38 $3C

    inc bc                                        ; $6E3B: $03
    ld l, b                                       ; $6E3C: $68
    scf                                           ; $6E3D: $37
    ld l, b                                       ; $6E3E: $68
    scf                                           ; $6E3F: $37
    nop                                           ; $6E40: $00
    nop                                           ; $6E41: $00
    ldh a, [rP1]                                  ; $6E42: $F0 $00
    ld hl, sp+$70                                 ; $6E44: $F8 $70
    db $FC                                        ; $6E46: $FC
    jr c, @-$02                                   ; $6E47: $38 $FC

    cp b                                          ; $6E49: $B8
    cp $9C                                        ; $6E4A: $FE $9C
    cp $9C                                        ; $6E4C: $FE $9C
    rst RST_38                                    ; $6E4E: $FF
    sbc [hl]                                      ; $6E4F: $9E
    rst RST_38                                    ; $6E50: $FF
    sbc [hl]                                      ; $6E51: $9E
    rst RST_38                                    ; $6E52: $FF
    ld e, $FF                                     ; $6E53: $1E $FF
    ld bc, $3BFF                                  ; $6E55: $01 $FF $3B
    cp l                                          ; $6E58: $BD
    ei                                            ; $6E59: $FB
    dec e                                         ; $6E5A: $1D
    ei                                            ; $6E5B: $FB
    dec e                                         ; $6E5C: $1D
    ei                                            ; $6E5D: $FB
    ld a, $F5                                     ; $6E5E: $3E $F5
    nop                                           ; $6E60: $00
    nop                                           ; $6E61: $00
    ldh a, [rP1]                                  ; $6E62: $F0 $00
    ld hl, sp-$10                                 ; $6E64: $F8 $F0
    db $FC                                        ; $6E66: $FC
    ld hl, sp-$04                                 ; $6E67: $F8 $FC
    ld hl, sp-$04                                 ; $6E69: $F8 $FC
    ld hl, sp-$02                                 ; $6E6B: $F8 $FE
    db $FC                                        ; $6E6D: $FC
    cp $FC                                        ; $6E6E: $FE $FC
    cp $FC                                        ; $6E70: $FE $FC
    ld a, [hl]                                    ; $6E72: $7E
    ret nz                                        ; $6E73: $C0

    cp $3C                                        ; $6E74: $FE $3C
    rst RST_38                                    ; $6E76: $FF

jr_012_6E77:
    ld a, [hl]                                    ; $6E77: $7E
    rst RST_38                                    ; $6E78: $FF
    cp [hl]                                       ; $6E79: $BE
    rst RST_38                                    ; $6E7A: $FF
    cp [hl]                                       ; $6E7B: $BE
    cp $7C                                        ; $6E7C: $FE $7C
    db $FC                                        ; $6E7E: $FC
    nop                                           ; $6E7F: $00
    ld bc, $0000                                  ; $6E80: $01 $00 $00
    nop                                           ; $6E83: $00
    rlca                                          ; $6E84: $07
    nop                                           ; $6E85: $00
    dec e                                         ; $6E86: $1D

jr_012_6E87:
    inc bc                                        ; $6E87: $03
    dec h                                         ; $6E88: $25
    ld a, [de]                                    ; $6E89: $1A
    rra                                           ; $6E8A: $1F
    nop                                           ; $6E8B: $00
    ld [de], a                                    ; $6E8C: $12
    dec c                                         ; $6E8D: $0D
    dec c                                         ; $6E8E: $0D
    ld [bc], a                                    ; $6E8F: $02
    rlca                                          ; $6E90: $07
    nop                                           ; $6E91: $00
    ld bc, $0200                                  ; $6E92: $01 $00 $02
    ld bc, $0003                                  ; $6E95: $01 $03 $00
    inc bc                                        ; $6E98: $03
    ld bc, $0001                                  ; $6E99: $01 $01 $00
    ld bc, $0000                                  ; $6E9C: $01 $00 $00
    nop                                           ; $6E9F: $00
    rst RST_38                                    ; $6EA0: $FF
    rst RST_18                                    ; $6EA1: $DF
    rst RST_38                                    ; $6EA2: $FF
    nop                                           ; $6EA3: $00
    ld b, b                                       ; $6EA4: $40
    ccf                                           ; $6EA5: $3F
    pop de                                        ; $6EA6: $D1
    cpl                                           ; $6EA7: $2F
    pop de                                        ; $6EA8: $D1
    xor a                                         ; $6EA9: $AF
    db $D3                                        ; $6EAA: $D3

jr_012_6EAB:
    xor [hl]                                      ; $6EAB: $AE
    rst RST_38                                    ; $6EAC: $FF
    add c                                         ; $6EAD: $81
    pop hl                                        ; $6EAE: $E1
    ld e, a                                       ; $6EAF: $5F
    di                                            ; $6EB0: $F3
    sbc $FF                                       ; $6EB1: $DE $FF
    ld l, [hl]                                    ; $6EB3: $6E
    cp $80                                        ; $6EB4: $FE $80
    ld hl, sp+$70                                 ; $6EB6: $F8 $70
    ld hl, sp-$10                                 ; $6EB8: $F8 $F0
    db $FC                                        ; $6EBA: $FC
    ld hl, sp-$04                                 ; $6EBB: $F8 $FC
    ld hl, sp-$04                                 ; $6EBD: $F8 $FC
    jr @-$03                                      ; $6EBF: $18 $FB

    or a                                          ; $6EC1: $B7
    db $FD                                        ; $6EC2: $FD
    ld b, e                                       ; $6EC3: $43
    rst RST_18                                    ; $6EC4: $DF
    xor h                                         ; $6EC5: $AC
    sbc a                                         ; $6EC6: $9F
    ld l, l                                       ; $6EC7: $6D
    sbc a                                         ; $6EC8: $9F
    ld l, [hl]                                    ; $6EC9: $6E
    rst RST_08                                    ; $6ECA: $CF
    ld [hl], $CF                                  ; $6ECB: $36 $CF
    or l                                          ; $6ECD: $B5
    rst RST_38                                    ; $6ECE: $FF
    ld b, b                                       ; $6ECF: $40
    db $FC                                        ; $6ED0: $FC
    ld hl, sp-$04                                 ; $6ED1: $F8 $FC
    adc b                                         ; $6ED3: $88
    cp [hl]                                       ; $6ED4: $BE
    ld h, b                                       ; $6ED5: $60
    rst RST_38                                    ; $6ED6: $FF
    ld c, $FF                                     ; $6ED7: $0E $FF
    ld a, [hl]                                    ; $6ED9: $7E
    rst RST_38                                    ; $6EDA: $FF
    ld a, [hl]                                    ; $6EDB: $7E
    ld a, a                                       ; $6EDC: $7F
    ld a, $7F                                     ; $6EDD: $3E $7F
    ld a, $56                                     ; $6EDF: $3E $56
    jr z, jr_012_6E87                             ; $6EE1: $28 $A4

    ld e, b                                       ; $6EE3: $58
    add sp, $10                                   ; $6EE4: $E8 $10
    jr nc, jr_012_6EE8                            ; $6EE6: $30 $00

jr_012_6EE8:
    nop                                           ; $6EE8: $00
    nop                                           ; $6EE9: $00
    nop                                           ; $6EEA: $00
    nop                                           ; $6EEB: $00
    nop                                           ; $6EEC: $00
    nop                                           ; $6EED: $00
    nop                                           ; $6EEE: $00
    nop                                           ; $6EEF: $00
    nop                                           ; $6EF0: $00
    nop                                           ; $6EF1: $00
    nop                                           ; $6EF2: $00
    nop                                           ; $6EF3: $00
    nop                                           ; $6EF4: $00
    nop                                           ; $6EF5: $00
    nop                                           ; $6EF6: $00
    nop                                           ; $6EF7: $00
    nop                                           ; $6EF8: $00
    nop                                           ; $6EF9: $00
    nop                                           ; $6EFA: $00
    nop                                           ; $6EFB: $00
    nop                                           ; $6EFC: $00
    nop                                           ; $6EFD: $00
    nop                                           ; $6EFE: $00
    nop                                           ; $6EFF: $00
    ld a, a                                       ; $6F00: $7F
    ld b, $57                                     ; $6F01: $06 $57
    jr z, jr_012_6EAB                             ; $6F03: $28 $A6

    ld e, b                                       ; $6F05: $58
    xor b                                         ; $6F06: $A8
    ld d, b                                       ; $6F07: $50
    ld d, b                                       ; $6F08: $50
    nop                                           ; $6F09: $00
    nop                                           ; $6F0A: $00
    nop                                           ; $6F0B: $00
    nop                                           ; $6F0C: $00
    nop                                           ; $6F0D: $00
    nop                                           ; $6F0E: $00
    nop                                           ; $6F0F: $00
    nop                                           ; $6F10: $00
    nop                                           ; $6F11: $00
    nop                                           ; $6F12: $00
    nop                                           ; $6F13: $00
    nop                                           ; $6F14: $00
    nop                                           ; $6F15: $00
    nop                                           ; $6F16: $00
    nop                                           ; $6F17: $00
    nop                                           ; $6F18: $00
    nop                                           ; $6F19: $00
    nop                                           ; $6F1A: $00
    nop                                           ; $6F1B: $00
    nop                                           ; $6F1C: $00
    nop                                           ; $6F1D: $00
    nop                                           ; $6F1E: $00
    nop                                           ; $6F1F: $00
    ld bc, $0300                                  ; $6F20: $01 $00 $03
    nop                                           ; $6F23: $00
    dec b                                         ; $6F24: $05
    ld [bc], a                                    ; $6F25: $02
    dec bc                                        ; $6F26: $0B
    ld b, $17                                     ; $6F27: $06 $17
    rrca                                          ; $6F29: $0F
    cpl                                           ; $6F2A: $2F
    rra                                           ; $6F2B: $1F
    cpl                                           ; $6F2C: $2F
    ld e, $5F                                     ; $6F2D: $1E $5F
    ld a, $5F                                     ; $6F2F: $3E $5F
    inc a                                         ; $6F31: $3C
    ccf                                           ; $6F32: $3F
    dec c                                         ; $6F33: $0D
    cpl                                           ; $6F34: $2F
    db $10                                        ; $6F35: $10
    inc hl                                        ; $6F36: $23
    inc e                                         ; $6F37: $1C
    ld de, $0B0E                                  ; $6F38: $11 $0E $0B
    inc b                                         ; $6F3B: $04
    dec b                                         ; $6F3C: $05
    inc bc                                        ; $6F3D: $03
    rlca                                          ; $6F3E: $07
    inc bc                                        ; $6F3F: $03
    ret nz                                        ; $6F40: $C0

    nop                                           ; $6F41: $00
    ldh [rLCDC], a                                ; $6F42: $E0 $40
    ld [hl], c                                    ; $6F44: $71
    and b                                         ; $6F45: $A0
    cp e                                          ; $6F46: $BB
    ld d, b                                       ; $6F47: $50
    push de                                       ; $6F48: $D5
    and e                                         ; $6F49: $A3
    ei                                            ; $6F4A: $FB
    rlca                                          ; $6F4B: $07
    ld [hl], a                                    ; $6F4C: $77
    xor a                                         ; $6F4D: $AF
    ld l, a                                       ; $6F4E: $6F
    sbc a                                         ; $6F4F: $9F
    rst RST_28                                    ; $6F50: $EF
    ld e, a                                       ; $6F51: $5F
    rst RST_38                                    ; $6F52: $FF
    adc a                                         ; $6F53: $8F
    sbc a                                         ; $6F54: $9F
    ld h, d                                       ; $6F55: $62
    ld h, e                                       ; $6F56: $63
    sbc h                                         ; $6F57: $9C
    and b                                         ; $6F58: $A0
    rst RST_18                                    ; $6F59: $DF
    ld hl, sp+$07                                 ; $6F5A: $F8 $07
    rst RST_18                                    ; $6F5C: $DF
    ld h, b                                       ; $6F5D: $60
    rst RST_18                                    ; $6F5E: $DF
    ld l, e                                       ; $6F5F: $6B
    nop                                           ; $6F60: $00
    nop                                           ; $6F61: $00
    ret nz                                        ; $6F62: $C0

    nop                                           ; $6F63: $00
    ldh a, [$FFC0]                                ; $6F64: $F0 $C0
    ld hl, sp-$10                                 ; $6F66: $F8 $F0
    ld hl, sp+$70                                 ; $6F68: $F8 $70
    ld hl, sp-$50                                 ; $6F6A: $F8 $B0
    ldh a, [$FFC0]                                ; $6F6C: $F0 $C0
    ldh [$FFC0], a                                ; $6F6E: $E0 $C0
    ret nz                                        ; $6F70: $C0

    add b                                         ; $6F71: $80
    ldh [rP1], a                                  ; $6F72: $E0 $00
    ldh a, [$FFE0]                                ; $6F74: $F0 $E0
    ld hl, sp+$30                                 ; $6F76: $F8 $30
    ld hl, sp+$10                                 ; $6F78: $F8 $10
    ld hl, sp+$10                                 ; $6F7A: $F8 $10
    ld hl, sp+$30                                 ; $6F7C: $F8 $30
    ldh a, [$FFE0]                                ; $6F7E: $F0 $E0
    ld bc, $0100                                  ; $6F80: $01 $00 $01
    nop                                           ; $6F83: $00
    nop                                           ; $6F84: $00
    nop                                           ; $6F85: $00
    ld bc, $0100                                  ; $6F86: $01 $00 $01
    nop                                           ; $6F89: $00
    inc bc                                        ; $6F8A: $03
    nop                                           ; $6F8B: $00
    inc b                                         ; $6F8C: $04
    inc bc                                        ; $6F8D: $03
    ld [$7007], sp                                ; $6F8E: $08 $07 $70
    rrca                                          ; $6F91: $0F
    or b                                          ; $6F92: $B0
    ld l, a                                       ; $6F93: $6F
    rst RST_38                                    ; $6F94: $FF
    ld h, b                                       ; $6F95: $60
    ld a, h                                       ; $6F96: $7C
    rra                                           ; $6F97: $1F
    ld a, [hl]                                    ; $6F98: $7E
    ccf                                           ; $6F99: $3F
    ld a, [hl]                                    ; $6F9A: $7E
    ccf                                           ; $6F9B: $3F
    ccf                                           ; $6F9C: $3F
    ld e, $3F                                     ; $6F9D: $1E $3F
    ld e, $FF                                     ; $6F9F: $1E $FF
    ld [hl], $1F                                  ; $6FA1: $36 $1F
    xor $FF                                       ; $6FA3: $EE $FF
    dec e                                         ; $6FA5: $1D
    rst RST_38                                    ; $6FA6: $FF
    ei                                            ; $6FA7: $FB
    rst RST_38                                    ; $6FA8: $FF
    nop                                           ; $6FA9: $00
    cp $F8                                        ; $6FAA: $FE $F8
    ld sp, hl                                     ; $6FAC: $F9
    halt                                          ; $6FAD: $76
    ld [hl], b                                    ; $6FAE: $70
    xor a                                         ; $6FAF: $AF
    ld [hl], c                                    ; $6FB0: $71
    adc [hl]                                      ; $6FB1: $8E
    adc d                                         ; $6FB2: $8A
    dec b                                         ; $6FB3: $05
    rlca                                          ; $6FB4: $07
    ld bc, $0083                                  ; $6FB5: $01 $83 $00
    add e                                         ; $6FB8: $83
    ld bc, $0183                                  ; $6FB9: $01 $83 $01
    ld bc, $0000                                  ; $6FBC: $01 $00 $00
    nop                                           ; $6FBF: $00
    ld hl, sp+$00                                 ; $6FC0: $F8 $00
    ldh a, [$FFE0]                                ; $6FC2: $F0 $E0
    ldh [$FFC0], a                                ; $6FC4: $E0 $C0
    ret nz                                        ; $6FC6: $C0

    nop                                           ; $6FC7: $00
    nop                                           ; $6FC8: $00
    nop                                           ; $6FC9: $00
    nop                                           ; $6FCA: $00
    nop                                           ; $6FCB: $00
    nop                                           ; $6FCC: $00
    nop                                           ; $6FCD: $00
    add b                                         ; $6FCE: $80
    nop                                           ; $6FCF: $00
    ldh [rP1], a                                  ; $6FD0: $E0 $00
    ret nc                                        ; $6FD2: $D0

    and b                                         ; $6FD3: $A0
    ret z                                         ; $6FD4: $C8

    or b                                          ; $6FD5: $B0
    db $F4                                        ; $6FD6: $F4
    ld a, b                                       ; $6FD7: $78
    db $F4                                        ; $6FD8: $F4
    ld hl, sp-$02                                 ; $6FD9: $F8 $FE
    db $FC                                        ; $6FDB: $FC
    cp $FC                                        ; $6FDC: $FE $FC
    rst RST_38                                    ; $6FDE: $FF
    ld a, $0F                                     ; $6FDF: $3E $0F
    nop                                           ; $6FE1: $00
    rra                                           ; $6FE2: $1F
    inc bc                                        ; $6FE3: $03
    daa                                           ; $6FE4: $27
    dec de                                        ; $6FE5: $1B
    ld b, e                                       ; $6FE6: $43
    dec a                                         ; $6FE7: $3D
    ld a, a                                       ; $6FE8: $7F
    nop                                           ; $6FE9: $00
    nop                                           ; $6FEA: $00
    nop                                           ; $6FEB: $00
    nop                                           ; $6FEC: $00
    nop                                           ; $6FED: $00
    nop                                           ; $6FEE: $00
    nop                                           ; $6FEF: $00
    nop                                           ; $6FF0: $00
    nop                                           ; $6FF1: $00
    nop                                           ; $6FF2: $00
    nop                                           ; $6FF3: $00
    nop                                           ; $6FF4: $00
    nop                                           ; $6FF5: $00
    nop                                           ; $6FF6: $00
    nop                                           ; $6FF7: $00
    nop                                           ; $6FF8: $00
    nop                                           ; $6FF9: $00
    nop                                           ; $6FFA: $00
    nop                                           ; $6FFB: $00
    nop                                           ; $6FFC: $00
    nop                                           ; $6FFD: $00
    nop                                           ; $6FFE: $00
    nop                                           ; $6FFF: $00
    add b                                         ; $7000: $80
    nop                                           ; $7001: $00
    ret nz                                        ; $7002: $C0

    add b                                         ; $7003: $80
    ret nz                                        ; $7004: $C0

    add b                                         ; $7005: $80
    add b                                         ; $7006: $80
    nop                                           ; $7007: $00
    nop                                           ; $7008: $00
    nop                                           ; $7009: $00
    nop                                           ; $700A: $00
    nop                                           ; $700B: $00
    nop                                           ; $700C: $00
    nop                                           ; $700D: $00
    nop                                           ; $700E: $00
    nop                                           ; $700F: $00
    nop                                           ; $7010: $00
    nop                                           ; $7011: $00
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
    db $FC                                        ; $7020: $FC
    ld b, b                                       ; $7021: $40
    ld [hl], d                                    ; $7022: $72
    inc c                                         ; $7023: $0C
    ld hl, $211E                                  ; $7024: $21 $1E $21
    ld e, $11                                     ; $7027: $1E $11
    ld c, $0E                                     ; $7029: $0E $0E
    nop                                           ; $702B: $00
    nop                                           ; $702C: $00
    nop                                           ; $702D: $00
    nop                                           ; $702E: $00
    nop                                           ; $702F: $00
    nop                                           ; $7030: $00
    nop                                           ; $7031: $00
    nop                                           ; $7032: $00
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
    add b                                         ; $7040: $80
    nop                                           ; $7041: $00
    ld h, b                                       ; $7042: $60
    nop                                           ; $7043: $00
    ld a, b                                       ; $7044: $78
    jr nz, jr_012_7085                            ; $7045: $20 $3E

    jr jr_012_7080                                ; $7047: $18 $37

    ld e, $19                                     ; $7049: $1E $19
    rrca                                          ; $704B: $0F
    jr jr_012_705D                                ; $704C: $18 $0F

    inc c                                         ; $704E: $0C
    rlca                                          ; $704F: $07
    inc c                                         ; $7050: $0C
    rlca                                          ; $7051: $07
    ld b, $03                                     ; $7052: $06 $03
    ld b, $03                                     ; $7054: $06 $03
    inc bc                                        ; $7056: $03
    ld bc, $0103                                  ; $7057: $01 $03 $01
    ld bc, $0100                                  ; $705A: $01 $00 $01

jr_012_705D:
    nop                                           ; $705D: $00
    nop                                           ; $705E: $00
    nop                                           ; $705F: $00
    cpl                                           ; $7060: $2F
    dec e                                         ; $7061: $1D
    ccf                                           ; $7062: $3F
    ld bc, $1D2F                                  ; $7063: $01 $2F $1D
    ccf                                           ; $7066: $3F
    ld bc, $011F                                  ; $7067: $01 $1F $01
    inc bc                                        ; $706A: $03
    ld bc, $01C3                                  ; $706B: $01 $C3 $01
    di                                            ; $706E: $F3
    pop bc                                        ; $706F: $C1
    ccf                                           ; $7070: $3F
    pop af                                        ; $7071: $F1
    rrca                                          ; $7072: $0F
    db $FD                                        ; $7073: $FD
    inc bc                                        ; $7074: $03
    rst RST_38                                    ; $7075: $FF
    nop                                           ; $7076: $00
    rst RST_38                                    ; $7077: $FF
    ld [bc], a                                    ; $7078: $02
    db $FD                                        ; $7079: $FD
    inc b                                         ; $707A: $04
    ei                                            ; $707B: $FB
    add a                                         ; $707C: $87
    ld hl, sp-$80                                 ; $707D: $F8 $80
    rst RST_38                                    ; $707F: $FF

jr_012_7080:
    ld [hl], c                                    ; $7080: $71
    ret nz                                        ; $7081: $C0

    scf                                           ; $7082: $37
    ldh [rNR23], a                                ; $7083: $E0 $18

jr_012_7085:
    rst RST_30                                    ; $7085: $F7
    ld l, h                                       ; $7086: $6C
    sbc e                                         ; $7087: $9B
    ld b, [hl]                                    ; $7088: $46
    cp l                                          ; $7089: $BD
    ld c, e                                       ; $708A: $4B
    or [hl]                                       ; $708B: $B6
    ld sp, $02CF                                  ; $708C: $31 $CF $02
    db $FD                                        ; $708F: $FD
    ld [bc], a                                    ; $7090: $02
    db $FD                                        ; $7091: $FD
    inc b                                         ; $7092: $04
    ei                                            ; $7093: $FB
    inc b                                         ; $7094: $04
    ei                                            ; $7095: $FB
    ld l, b                                       ; $7096: $68
    sub a                                         ; $7097: $97
    jr nc, @-$2F                                  ; $7098: $30 $CF

    db $10                                        ; $709A: $10
    rst RST_28                                    ; $709B: $EF
    ldh [$FF1F], a                                ; $709C: $E0 $1F
    nop                                           ; $709E: $00
    rst RST_38                                    ; $709F: $FF
    cp $03                                        ; $70A0: $FE $03
    db $FC                                        ; $70A2: $FC
    rst RST_30                                    ; $70A3: $F7
    adc l                                         ; $70A4: $8D
    halt                                          ; $70A5: $76
    ld e, b                                       ; $70A6: $58
    xor a                                         ; $70A7: $AF
    ld a, e                                       ; $70A8: $7B
    adc h                                         ; $70A9: $8C
    or h                                          ; $70AA: $B4
    dec de                                        ; $70AB: $1B
    or h                                          ; $70AC: $B4
    dec de                                        ; $70AD: $1B
    db $EB                                        ; $70AE: $EB
    or h                                          ; $70AF: $B4
    ld c, b                                       ; $70B0: $48
    rst RST_30                                    ; $70B1: $F7
    inc b                                         ; $70B2: $04
    ei                                            ; $70B3: $FB
    inc b                                         ; $70B4: $04
    ei                                            ; $70B5: $FB
    ld [bc], a                                    ; $70B6: $02
    db $FD                                        ; $70B7: $FD
    ld bc, $01FE                                  ; $70B8: $01 $FE $01
    cp $01                                        ; $70BB: $FE $01
    cp $01                                        ; $70BD: $FE $01
    cp $7F                                        ; $70BF: $FE $7F
    jp c, $DA67                                   ; $70C1: $DA $67 $DA

    ld l, a                                       ; $70C4: $6F
    sub $6F                                       ; $70C5: $D6 $6F
    sub $7B                                       ; $70C7: $D6 $7B
    adc $7B                                       ; $70C9: $CE $7B
    adc $73                                       ; $70CB: $CE $73
    sbc $73                                       ; $70CD: $DE $73
    sbc $63                                       ; $70CF: $DE $63
    cp $53                                        ; $70D1: $FE $53
    rst RST_28                                    ; $70D3: $EF
    ld [de], a                                    ; $70D4: $12
    rst RST_28                                    ; $70D5: $EF
    ld [hl], b                                    ; $70D6: $70
    adc a                                         ; $70D7: $8F
    ldh a, [rIF]                                  ; $70D8: $F0 $0F
    adc b                                         ; $70DA: $88
    ld [hl], a                                    ; $70DB: $77
    inc b                                         ; $70DC: $04
    ei                                            ; $70DD: $FB
    db $FC                                        ; $70DE: $FC
    inc bc                                        ; $70DF: $03
    ld b, c                                       ; $70E0: $41
    add b                                         ; $70E1: $80
    jp Jump_012_4601                              ; $70E2: $C3 $01 $46


    add e                                         ; $70E5: $83
    call z, $9907                                 ; $70E6: $CC $07 $99
    rrca                                          ; $70E9: $0F
    ld sp, $631F                                  ; $70EA: $31 $1F $63
    ld a, $C3                                     ; $70ED: $3E $C3
    ld a, [hl]                                    ; $70EF: $7E
    add [hl]                                      ; $70F0: $86
    db $FC                                        ; $70F1: $FC
    ld b, $FC                                     ; $70F2: $06 $FC
    inc c                                         ; $70F4: $0C
    ld hl, sp+$0C                                 ; $70F5: $F8 $0C
    ld hl, sp+$18                                 ; $70F7: $F8 $18
    ldh a, [rNR23]                                ; $70F9: $F0 $18
    ldh a, [$FF30]                                ; $70FB: $F0 $30
    ldh [$FF30], a                                ; $70FD: $E0 $30
    ldh [rP1], a                                  ; $70FF: $E0 $00
    nop                                           ; $7101: $00
    nop                                           ; $7102: $00

jr_012_7103:
    nop                                           ; $7103: $00
    nop                                           ; $7104: $00
    nop                                           ; $7105: $00
    ld [bc], a                                    ; $7106: $02
    nop                                           ; $7107: $00
    inc b                                         ; $7108: $04
    nop                                           ; $7109: $00
    inc c                                         ; $710A: $0C
    nop                                           ; $710B: $00
    jr jr_012_710E                                ; $710C: $18 $00

jr_012_710E:
    jr c, jr_012_7120                             ; $710E: $38 $10

    ld [hl], b                                    ; $7110: $70
    jr nz, jr_012_7103                            ; $7111: $20 $F0

    ld h, b                                       ; $7113: $60
    ldh [$FFC0], a                                ; $7114: $E0 $C0
    ld h, b                                       ; $7116: $60
    ret nz                                        ; $7117: $C0

    ld b, b                                       ; $7118: $40
    add b                                         ; $7119: $80
    ret nz                                        ; $711A: $C0

    add b                                         ; $711B: $80
    add b                                         ; $711C: $80
    nop                                           ; $711D: $00
    add b                                         ; $711E: $80
    nop                                           ; $711F: $00

jr_012_7120:
    nop                                           ; $7120: $00
    nop                                           ; $7121: $00
    nop                                           ; $7122: $00
    nop                                           ; $7123: $00
    nop                                           ; $7124: $00
    nop                                           ; $7125: $00
    nop                                           ; $7126: $00
    nop                                           ; $7127: $00
    nop                                           ; $7128: $00
    nop                                           ; $7129: $00
    inc bc                                        ; $712A: $03
    nop                                           ; $712B: $00
    rlca                                          ; $712C: $07
    inc bc                                        ; $712D: $03
    ld c, $07                                     ; $712E: $0E $07
    inc c                                         ; $7130: $0C
    rlca                                          ; $7131: $07
    ld [$0607], sp                                ; $7132: $08 $07 $06
    ld bc, $0001                                  ; $7135: $01 $01 $00
    add hl, de                                    ; $7138: $19
    nop                                           ; $7139: $00
    ld l, [hl]                                    ; $713A: $6E
    ld de, $64BF                                  ; $713B: $11 $BF $64
    rst RST_38                                    ; $713E: $FF
    ld b, $00                                     ; $713F: $06 $00
    nop                                           ; $7141: $00
    rrca                                          ; $7142: $0F
    nop                                           ; $7143: $00
    rrca                                          ; $7144: $0F
    ld bc, $050B                                  ; $7145: $01 $0B $05
    dec de                                        ; $7148: $1B
    dec b                                         ; $7149: $05
    rst RST_38                                    ; $714A: $FF
    ld [$EFF9], sp                                ; $714B: $08 $F9 $EF
    rra                                           ; $714E: $1F
    ldh a, [$FF0D]                                ; $714F: $F0 $0D
    or $3D                                        ; $7151: $F6 $3D
    jp nz, $B05F                                  ; $7153: $C2 $5F $B0

    ld d, a                                       ; $7156: $57
    xor l                                         ; $7157: $AD
    rst RST_18                                    ; $7158: $DF
    dec l                                         ; $7159: $2D
    ld a, a                                       ; $715A: $7F
    sub e                                         ; $715B: $93
    ld de, $AEEE                                  ; $715C: $11 $EE $AE
    ld b, c                                       ; $715F: $41
    ld hl, sp+$00                                 ; $7160: $F8 $00
    db $FC                                        ; $7162: $FC
    ld [$C4FE], sp                                ; $7163: $08 $FE $C4
    cp $84                                        ; $7166: $FE $84
    rst RST_38                                    ; $7168: $FF
    ld h, [hl]                                    ; $7169: $66
    rst RST_38                                    ; $716A: $FF
    ret nz                                        ; $716B: $C0

    rst RST_18                                    ; $716C: $DF
    scf                                           ; $716D: $37
    rst RST_38                                    ; $716E: $FF
    or [hl]                                       ; $716F: $B6
    ld a, c                                       ; $7170: $79
    adc [hl]                                      ; $7171: $8E
    di                                            ; $7172: $F3
    dec l                                         ; $7173: $2D
    ld [hl], e                                    ; $7174: $73
    xor l                                         ; $7175: $AD
    ld a, a                                       ; $7176: $7F
    and e                                         ; $7177: $A3
    ld a, a                                       ; $7178: $7F
    xor e                                         ; $7179: $AB
    db $DD                                        ; $717A: $DD
    ld h, a                                       ; $717B: $67
    dec a                                         ; $717C: $3D
    rst RST_10                                    ; $717D: $D7
    ld a, c                                       ; $717E: $79
    xor a                                         ; $717F: $AF
    nop                                           ; $7180: $00
    nop                                           ; $7181: $00
    nop                                           ; $7182: $00
    nop                                           ; $7183: $00
    nop                                           ; $7184: $00
    nop                                           ; $7185: $00
    nop                                           ; $7186: $00
    nop                                           ; $7187: $00
    nop                                           ; $7188: $00
    nop                                           ; $7189: $00
    ldh a, [rP1]                                  ; $718A: $F0 $00
    ld hl, sp+$70                                 ; $718C: $F8 $70
    db $FC                                        ; $718E: $FC
    ld a, b                                       ; $718F: $78
    sbc h                                         ; $7190: $9C
    ld a, b                                       ; $7191: $78
    adc h                                         ; $7192: $8C
    ld a, b                                       ; $7193: $78
    cp b                                          ; $7194: $B8
    ld b, b                                       ; $7195: $40
    ldh [rP1], a                                  ; $7196: $E0 $00
    xor h                                         ; $7198: $AC
    ld b, b                                       ; $7199: $40
    or $08                                        ; $719A: $F6 $08
    db $ED                                        ; $719C: $ED
    ld d, d                                       ; $719D: $52
    rst RST_38                                    ; $719E: $FF
    ld d, b                                       ; $719F: $50
    inc bc                                        ; $71A0: $03
    nop                                           ; $71A1: $00
    inc b                                         ; $71A2: $04
    inc bc                                        ; $71A3: $03
    ld a, [bc]                                    ; $71A4: $0A
    rlca                                          ; $71A5: $07
    rrca                                          ; $71A6: $0F
    rlca                                          ; $71A7: $07
    rrca                                          ; $71A8: $0F
    rlca                                          ; $71A9: $07
    rlca                                          ; $71AA: $07
    ld bc, $0001                                  ; $71AB: $01 $01 $00
    ld de, $6E00                                  ; $71AE: $11 $00 $6E
    ld de, $6AB7                                  ; $71B1: $11 $B7 $6A
    rst RST_38                                    ; $71B4: $FF
    dec bc                                        ; $71B5: $0B
    cp a                                          ; $71B6: $BF
    ld [hl], a                                    ; $71B7: $77
    rst RST_38                                    ; $71B8: $FF
    rlca                                          ; $71B9: $07
    cp a                                          ; $71BA: $BF
    ld [hl], a                                    ; $71BB: $77
    rst RST_38                                    ; $71BC: $FF
    ld c, $7F                                     ; $71BD: $0E $7F
    nop                                           ; $71BF: $00
    nop                                           ; $71C0: $00
    nop                                           ; $71C1: $00
    rrca                                          ; $71C2: $0F
    nop                                           ; $71C3: $00
    rrca                                          ; $71C4: $0F
    ld bc, $050B                                  ; $71C5: $01 $0B $05
    dec de                                        ; $71C8: $1B
    dec b                                         ; $71C9: $05
    rst RST_38                                    ; $71CA: $FF
    ld [$EF1F], sp                                ; $71CB: $08 $1F $EF
    cp a                                          ; $71CE: $BF
    ldh a, [$FFFD]                                ; $71CF: $F0 $FD
    or $FD                                        ; $71D1: $F6 $FD
    jp nz, $B0DF                                  ; $71D3: $C2 $DF $B0

    rst RST_10                                    ; $71D6: $D7
    xor l                                         ; $71D7: $AD
    rst RST_18                                    ; $71D8: $DF
    dec l                                         ; $71D9: $2D
    ld a, a                                       ; $71DA: $7F
    sub e                                         ; $71DB: $93
    ld de, $AFEE                                  ; $71DC: $11 $EE $AF
    ld b, c                                       ; $71DF: $41
    ld hl, sp+$00                                 ; $71E0: $F8 $00
    db $FC                                        ; $71E2: $FC
    ld [$C4FE], sp                                ; $71E3: $08 $FE $C4
    cp $84                                        ; $71E6: $FE $84
    rst RST_38                                    ; $71E8: $FF
    ld h, [hl]                                    ; $71E9: $66
    rst RST_38                                    ; $71EA: $FF
    ret nz                                        ; $71EB: $C0

    ret c                                         ; $71EC: $D8

    scf                                           ; $71ED: $37
    ld a, [$FFB7]                                 ; $71EE: $FA $B7 $FF
    adc a                                         ; $71F1: $8F
    rst RST_38                                    ; $71F2: $FF
    cpl                                           ; $71F3: $2F

jr_012_71F4:
    ld a, a                                       ; $71F4: $7F
    xor a                                         ; $71F5: $AF
    ld a, a                                       ; $71F6: $7F
    and a                                         ; $71F7: $A7
    ld a, a                                       ; $71F8: $7F
    xor b                                         ; $71F9: $A8
    cp $6D                                        ; $71FA: $FE $6D
    cp $DD                                        ; $71FC: $FE $DD
    db $FD                                        ; $71FE: $FD
    cp b                                          ; $71FF: $B8
    ldh a, [rP1]                                  ; $7200: $F0 $00
    jr jr_012_71F4                                ; $7202: $18 $F0

    xor h                                         ; $7204: $AC
    ld hl, sp-$04                                 ; $7205: $F8 $FC
    ld hl, sp-$04                                 ; $7207: $F8 $FC
    ld hl, sp-$08                                 ; $7209: $F8 $F8
    ret nz                                        ; $720B: $C0

    ldh [$FF80], a                                ; $720C: $E0 $80
    xor b                                         ; $720E: $A8
    ld b, b                                       ; $720F: $40
    halt                                          ; $7210: $76
    adc b                                         ; $7211: $88
    db $ED                                        ; $7212: $ED
    ld d, [hl]                                    ; $7213: $56
    rst RST_38                                    ; $7214: $FF
    ret nc                                        ; $7215: $D0

    db $FD                                        ; $7216: $FD
    xor $FF                                       ; $7217: $EE $FF
    ldh [$FFFD], a                                ; $7219: $E0 $FD
    xor $FF                                       ; $721B: $EE $FF
    ld [hl], b                                    ; $721D: $70
    ld a, [hl]                                    ; $721E: $7E
    nop                                           ; $721F: $00
    inc bc                                        ; $7220: $03
    nop                                           ; $7221: $00
    inc bc                                        ; $7222: $03
    ld bc, $0307                                  ; $7223: $01 $07 $03
    rlca                                          ; $7226: $07
    inc bc                                        ; $7227: $03
    rlca                                          ; $7228: $07
    inc bc                                        ; $7229: $03
    rlca                                          ; $722A: $07
    inc bc                                        ; $722B: $03
    rlca                                          ; $722C: $07
    nop                                           ; $722D: $00
    ld [$1007], sp                                ; $722E: $08 $07 $10
    rrca                                          ; $7231: $0F
    rra                                           ; $7232: $1F
    nop                                           ; $7233: $00
    nop                                           ; $7234: $00
    nop                                           ; $7235: $00
    nop                                           ; $7236: $00
    nop                                           ; $7237: $00
    nop                                           ; $7238: $00
    nop                                           ; $7239: $00
    nop                                           ; $723A: $00
    nop                                           ; $723B: $00
    nop                                           ; $723C: $00
    nop                                           ; $723D: $00
    nop                                           ; $723E: $00
    nop                                           ; $723F: $00
    rst RST_00                                    ; $7240: $C7
    nop                                           ; $7241: $00
    sbc a                                         ; $7242: $9F
    inc bc                                        ; $7243: $03
    db $E3                                        ; $7244: $E3
    dec e                                         ; $7245: $1D
    pop bc                                        ; $7246: $C1
    ld a, $61                                     ; $7247: $3E $61
    sbc $FE                                       ; $7249: $DE $FE
    ret nz                                        ; $724B: $C0

    add sp, $30                                   ; $724C: $E8 $30
    add sp, -$10                                  ; $724E: $E8 $F0
    ld hl, sp-$10                                 ; $7250: $F8 $F0

jr_012_7252:
    ldh a, [$FFE0]                                ; $7252: $F0 $E0
    ldh a, [$FFE0]                                ; $7254: $F0 $E0
    ldh [rLCDC], a                                ; $7256: $E0 $40
    ret nz                                        ; $7258: $C0

    nop                                           ; $7259: $00
    ld b, b                                       ; $725A: $40
    add b                                         ; $725B: $80
    add b                                         ; $725C: $80
    nop                                           ; $725D: $00
    nop                                           ; $725E: $00
    nop                                           ; $725F: $00
    ld sp, hl                                     ; $7260: $F9
    nop                                           ; $7261: $00
    ld sp, hl                                     ; $7262: $F9
    ldh [$FFE5], a                                ; $7263: $E0 $E5
    ret c                                         ; $7265: $D8

    jp nz, $CFBC                                  ; $7266: $C2 $BC $CF

    jr nc, jr_012_72C1                            ; $7269: $30 $56

    dec l                                         ; $726B: $2D
    ccf                                           ; $726C: $3F
    dec c                                         ; $726D: $0D
    ccf                                           ; $726E: $3F
    inc de                                        ; $726F: $13
    ccf                                           ; $7270: $3F
    rra                                           ; $7271: $1F
    rra                                           ; $7272: $1F
    rrca                                          ; $7273: $0F
    rra                                           ; $7274: $1F
    rrca                                          ; $7275: $0F
    rrca                                          ; $7276: $0F
    ld b, $07                                     ; $7277: $06 $07
    nop                                           ; $7279: $00
    ld b, $01                                     ; $727A: $06 $01
    inc b                                         ; $727C: $04
    inc bc                                        ; $727D: $03
    rlca                                          ; $727E: $07
    nop                                           ; $727F: $00
    add b                                         ; $7280: $80
    nop                                           ; $7281: $00
    ld b, b                                       ; $7282: $40
    add b                                         ; $7283: $80
    ld b, b                                       ; $7284: $40
    add b                                         ; $7285: $80
    ret nz                                        ; $7286: $C0

    add b                                         ; $7287: $80
    ret nz                                        ; $7288: $C0

    add b                                         ; $7289: $80
    ret nz                                        ; $728A: $C0

    add b                                         ; $728B: $80
    ret nz                                        ; $728C: $C0

    nop                                           ; $728D: $00
    ret nz                                        ; $728E: $C0

    nop                                           ; $728F: $00
    jr nz, jr_012_7252                            ; $7290: $20 $C0

    db $10                                        ; $7292: $10
    ldh [$FFF0], a                                ; $7293: $E0 $F0
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
    nop                                           ; $72A0: $00
    nop                                           ; $72A1: $00
    nop                                           ; $72A2: $00
    nop                                           ; $72A3: $00
    ld bc, $3F00                                  ; $72A4: $01 $00 $3F
    nop                                           ; $72A7: $00
    rst RST_38                                    ; $72A8: $FF
    ld [bc], a                                    ; $72A9: $02
    rst RST_38                                    ; $72AA: $FF
    ld [hl], d                                    ; $72AB: $72
    rst RST_38                                    ; $72AC: $FF
    ld bc, $F9FF                                  ; $72AD: $01 $FF $F9
    rst RST_38                                    ; $72B0: $FF
    ld de, $CC37                                  ; $72B1: $11 $37 $CC
    cp $2D                                        ; $72B4: $FE $2D
    ld a, l                                       ; $72B6: $7D
    add e                                         ; $72B7: $83
    rst RST_18                                    ; $72B8: $DF
    add hl, sp                                    ; $72B9: $39
    db $DD                                        ; $72BA: $DD
    or [hl]                                       ; $72BB: $B6
    rst RST_18                                    ; $72BC: $DF
    or [hl]                                       ; $72BD: $B6
    rst RST_38                                    ; $72BE: $FF
    ret c                                         ; $72BF: $D8

    pop af                                        ; $72C0: $F1

jr_012_72C1:
    xor $FF                                       ; $72C1: $EE $FF
    ld [hl], c                                    ; $72C3: $71
    rst RST_38                                    ; $72C4: $FF
    cp l                                          ; $72C5: $BD
    rst RST_38                                    ; $72C6: $FF
    inc bc                                        ; $72C7: $03
    rst RST_38                                    ; $72C8: $FF
    ei                                            ; $72C9: $FB
    rst RST_38                                    ; $72CA: $FF
    ldh a, [$FFF2]                                ; $72CB: $F0 $F2
    ld l, h                                       ; $72CD: $6C
    pop hl                                        ; $72CE: $E1
    ld e, $2F                                     ; $72CF: $1E $2F
    db $10                                        ; $72D1: $10
    dec de                                        ; $72D2: $1B
    ld b, $1F                                     ; $72D3: $06 $1F
    ld b, $1F                                     ; $72D5: $06 $1F
    add hl, bc                                    ; $72D7: $09
    rra                                           ; $72D8: $1F
    rrca                                          ; $72D9: $0F
    rra                                           ; $72DA: $1F

jr_012_72DB:
    rrca                                          ; $72DB: $0F
    rrca                                          ; $72DC: $0F
    rlca                                          ; $72DD: $07
    rrca                                          ; $72DE: $0F
    inc b                                         ; $72DF: $04
    add sp, $70                                   ; $72E0: $E8 $70
    add sp, $70                                   ; $72E2: $E8 $70
    db $F4                                        ; $72E4: $F4
    jr c, jr_012_72DB                             ; $72E5: $38 $F4

    jr jr_012_731D                                ; $72E7: $18 $34

    ret c                                         ; $72E9: $D8

    ld e, h                                       ; $72EA: $5C
    ldh [$FFF2], a                                ; $72EB: $E0 $F2
    db $EC                                        ; $72ED: $EC
    cp $CC                                        ; $72EE: $FE $CC
    xor $10                                       ; $72F0: $EE $10
    db $FD                                        ; $72F2: $FD
    sub $FF                                       ; $72F3: $D6 $FF
    ret nc                                        ; $72F5: $D0

    db $FD                                        ; $72F6: $FD
    adc $FF                                       ; $72F7: $CE $FF
    ldh [$FFFD], a                                ; $72F9: $E0 $FD
    xor $FE                                       ; $72FB: $EE $FE
    ldh [$FFE0], a                                ; $72FD: $E0 $E0

Jump_012_72FF:
    nop                                           ; $72FF: $00
    nop                                           ; $7300: $00
    nop                                           ; $7301: $00
    nop                                           ; $7302: $00
    nop                                           ; $7303: $00
    nop                                           ; $7304: $00
    nop                                           ; $7305: $00
    nop                                           ; $7306: $00
    nop                                           ; $7307: $00
    nop                                           ; $7308: $00
    nop                                           ; $7309: $00
    nop                                           ; $730A: $00
    nop                                           ; $730B: $00
    nop                                           ; $730C: $00
    nop                                           ; $730D: $00
    inc c                                         ; $730E: $0C
    nop                                           ; $730F: $00
    inc [hl]                                      ; $7310: $34
    ld [$3874], sp                                ; $7311: $08 $74 $38
    db $E4                                        ; $7314: $E4
    ld a, b                                       ; $7315: $78
    call nz, $CC78                                ; $7316: $C4 $78 $CC
    ldh a, [$FFD0]                                ; $7319: $F0 $D0
    ldh [$FFD0], a                                ; $731B: $E0 $D0

jr_012_731D:
    ldh [$FFD0], a                                ; $731D: $E0 $D0
    ldh [$FFF0], a                                ; $731F: $E0 $F0
    nop                                           ; $7321: $00
    ld l, b                                       ; $7322: $68
    ret nc                                        ; $7323: $D0

    db $E4                                        ; $7324: $E4
    ret c                                         ; $7325: $D8

    db $F4                                        ; $7326: $F4
    jr c, jr_012_731D                             ; $7327: $38 $F4

    ld hl, sp-$04                                 ; $7329: $F8 $FC
    ld hl, sp-$04                                 ; $732B: $F8 $FC
    ld hl, sp-$04                                 ; $732D: $F8 $FC
    add b                                         ; $732F: $80
    db $FC                                        ; $7330: $FC
    nop                                           ; $7331: $00
    call nz, $8238                                ; $7332: $C4 $38 $82
    ld a, h                                       ; $7335: $7C
    cp $00                                        ; $7336: $FE $00
    nop                                           ; $7338: $00
    nop                                           ; $7339: $00
    nop                                           ; $733A: $00
    nop                                           ; $733B: $00
    nop                                           ; $733C: $00
    nop                                           ; $733D: $00
    nop                                           ; $733E: $00
    nop                                           ; $733F: $00
    nop                                           ; $7340: $00
    nop                                           ; $7341: $00
    ld bc, $0300                                  ; $7342: $01 $00 $03
    ld bc, $0306                                  ; $7345: $01 $06 $03
    inc c                                         ; $7348: $0C
    rlca                                          ; $7349: $07
    jr jr_012_735B                                ; $734A: $18 $0F

    jr jr_012_735D                                ; $734C: $18 $0F

    jr nc, jr_012_736F                            ; $734E: $30 $1F

    jr nc, jr_012_7371                            ; $7350: $30 $1F

    jr nc, jr_012_7373                            ; $7352: $30 $1F

    jr nc, jr_012_7375                            ; $7354: $30 $1F

    jr jr_012_7367                                ; $7356: $18 $0F

    jr jr_012_7369                                ; $7358: $18 $0F

    inc c                                         ; $735A: $0C

jr_012_735B:
    rlca                                          ; $735B: $07
    rlca                                          ; $735C: $07

jr_012_735D:
    inc bc                                        ; $735D: $03
    inc bc                                        ; $735E: $03
    nop                                           ; $735F: $00
    rlca                                          ; $7360: $07
    rst RST_38                                    ; $7361: $FF
    rlca                                          ; $7362: $07
    rst RST_38                                    ; $7363: $FF
    rlca                                          ; $7364: $07
    rst RST_38                                    ; $7365: $FF
    inc bc                                        ; $7366: $03

jr_012_7367:
    rst RST_38                                    ; $7367: $FF
    inc bc                                        ; $7368: $03

jr_012_7369:
    rst RST_38                                    ; $7369: $FF
    ld bc, $00FF                                  ; $736A: $01 $FF $00
    rst RST_38                                    ; $736D: $FF
    nop                                           ; $736E: $00

jr_012_736F:
    rst RST_38                                    ; $736F: $FF
    nop                                           ; $7370: $00

jr_012_7371:
    rst RST_38                                    ; $7371: $FF
    nop                                           ; $7372: $00

jr_012_7373:
    rst RST_38                                    ; $7373: $FF
    nop                                           ; $7374: $00

jr_012_7375:
    rst RST_38                                    ; $7375: $FF
    nop                                           ; $7376: $00
    rst RST_38                                    ; $7377: $FF
    ret nz                                        ; $7378: $C0

    rst RST_38                                    ; $7379: $FF
    db $FC                                        ; $737A: $FC
    ccf                                           ; $737B: $3F
    ccf                                           ; $737C: $3F
    inc bc                                        ; $737D: $03
    inc bc                                        ; $737E: $03
    nop                                           ; $737F: $00
    rst RST_38                                    ; $7380: $FF
    ccf                                           ; $7381: $3F
    rst RST_38                                    ; $7382: $FF
    ccf                                           ; $7383: $3F
    rst RST_38                                    ; $7384: $FF
    cp a                                          ; $7385: $BF
    rst RST_38                                    ; $7386: $FF
    rst RST_08                                    ; $7387: $CF
    rst RST_38                                    ; $7388: $FF
    ldh a, [$FF7F]                                ; $7389: $F0 $7F
    rst RST_38                                    ; $738B: $FF
    rrca                                          ; $738C: $0F
    rst RST_38                                    ; $738D: $FF
    nop                                           ; $738E: $00
    rst RST_38                                    ; $738F: $FF
    nop                                           ; $7390: $00
    rst RST_38                                    ; $7391: $FF
    nop                                           ; $7392: $00
    rst RST_38                                    ; $7393: $FF
    nop                                           ; $7394: $00
    rst RST_38                                    ; $7395: $FF
    nop                                           ; $7396: $00
    rst RST_38                                    ; $7397: $FF
    nop                                           ; $7398: $00
    rst RST_38                                    ; $7399: $FF
    ldh a, [rIE]                                  ; $739A: $F0 $FF
    rst RST_38                                    ; $739C: $FF
    rrca                                          ; $739D: $0F
    rrca                                          ; $739E: $0F
    nop                                           ; $739F: $00
    ret nz                                        ; $73A0: $C0

    nop                                           ; $73A1: $00
    add b                                         ; $73A2: $80
    nop                                           ; $73A3: $00
    dec a                                         ; $73A4: $3D
    nop                                           ; $73A5: $00
    ld b, e                                       ; $73A6: $43
    inc a                                         ; $73A7: $3C
    ld l, b                                       ; $73A8: $68
    ccf                                           ; $73A9: $3F
    cp d                                          ; $73AA: $BA
    rra                                           ; $73AB: $1F
    ld a, a                                       ; $73AC: $7F
    sbc a                                         ; $73AD: $9F
    rst RST_18                                    ; $73AE: $DF
    xor a                                         ; $73AF: $AF
    rst RST_08                                    ; $73B0: $CF
    or a                                          ; $73B1: $B7
    rst RST_00                                    ; $73B2: $C7
    cp e                                          ; $73B3: $BB
    ei                                            ; $73B4: $FB
    add b                                         ; $73B5: $80
    rst RST_38                                    ; $73B6: $FF
    ld bc, $FFFF                                  ; $73B7: $01 $FF $FF
    rst RST_38                                    ; $73BA: $FF
    rst RST_38                                    ; $73BB: $FF
    nop                                           ; $73BC: $00
    rst RST_38                                    ; $73BD: $FF
    nop                                           ; $73BE: $00
    rst RST_38                                    ; $73BF: $FF
    db $FC                                        ; $73C0: $FC
    nop                                           ; $73C1: $00
    cp a                                          ; $73C2: $BF
    ld e, b                                       ; $73C3: $58
    cp a                                          ; $73C4: $BF
    ld b, e                                       ; $73C5: $43
    rst RST_38                                    ; $73C6: $FF
    scf                                           ; $73C7: $37
    rst RST_38                                    ; $73C8: $FF
    rst RST_08                                    ; $73C9: $CF
    rst RST_30                                    ; $73CA: $F7
    ccf                                           ; $73CB: $3F
    xor e                                         ; $73CC: $AB
    ld a, a                                       ; $73CD: $7F
    rst RST_10                                    ; $73CE: $D7
    ld a, a                                       ; $73CF: $7F
    adc e                                         ; $73D0: $8B
    ld a, a                                       ; $73D1: $7F
    add l                                         ; $73D2: $85
    ld a, a                                       ; $73D3: $7F
    jp $FF3F                                      ; $73D4: $C3 $3F $FF


    nop                                           ; $73D7: $00
    rst RST_38                                    ; $73D8: $FF
    rst RST_38                                    ; $73D9: $FF
    rst RST_38                                    ; $73DA: $FF
    rst RST_38                                    ; $73DB: $FF
    add b                                         ; $73DC: $80
    rst RST_38                                    ; $73DD: $FF
    nop                                           ; $73DE: $00
    rst RST_38                                    ; $73DF: $FF
    add b                                         ; $73E0: $80
    nop                                           ; $73E1: $00
    ret nz                                        ; $73E2: $C0

    add b                                         ; $73E3: $80
    db $FC                                        ; $73E4: $FC
    ret nz                                        ; $73E5: $C0

    db $E3                                        ; $73E6: $E3
    call c, $EFF0                                 ; $73E7: $DC $F0 $EF
    ld a, [$FFEF]                                 ; $73EA: $FA $EF $FF
    rst RST_28                                    ; $73ED: $EF
    rst RST_38                                    ; $73EE: $FF
    rst RST_28                                    ; $73EF: $EF
    rst RST_38                                    ; $73F0: $FF
    db $EC                                        ; $73F1: $EC
    rst RST_38                                    ; $73F2: $FF
    add e                                         ; $73F3: $83
    rst RST_38                                    ; $73F4: $FF
    ld a, a                                       ; $73F5: $7F
    db $FC                                        ; $73F6: $FC
    rst RST_38                                    ; $73F7: $FF
    add b                                         ; $73F8: $80
    rst RST_38                                    ; $73F9: $FF
    nop                                           ; $73FA: $00
    rst RST_38                                    ; $73FB: $FF
    nop                                           ; $73FC: $00
    rst RST_38                                    ; $73FD: $FF
    ld bc, $80FF                                  ; $73FE: $01 $FF $80
    nop                                           ; $7401: $00
    ld b, b                                       ; $7402: $40
    add b                                         ; $7403: $80
    and b                                         ; $7404: $A0
    ret nz                                        ; $7405: $C0

    ldh [$FFC0], a                                ; $7406: $E0 $C0
    ret nz                                        ; $7408: $C0

    nop                                           ; $7409: $00
    rst RST_38                                    ; $740A: $FF
    nop                                           ; $740B: $00
    rst RST_38                                    ; $740C: $FF
    rst RST_38                                    ; $740D: $FF
    rst RST_38                                    ; $740E: $FF
    rst RST_38                                    ; $740F: $FF
    rrca                                          ; $7410: $0F
    cp $1F                                        ; $7411: $FE $1F
    db $FC                                        ; $7413: $FC
    ccf                                           ; $7414: $3F
    ld hl, sp+$7E                                 ; $7415: $F8 $7E
    ldh a, [$FFFC]                                ; $7417: $F0 $FC
    ldh [$FFF8], a                                ; $7419: $E0 $F8
    ret nz                                        ; $741B: $C0

    ldh a, [rP1]                                  ; $741C: $F0 $00
    ldh [rP1], a                                  ; $741E: $E0 $00
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
    rlca                                          ; $7436: $07
    nop                                           ; $7437: $00
    rra                                           ; $7438: $1F
    rlca                                          ; $7439: $07
    ld a, b                                       ; $743A: $78
    rra                                           ; $743B: $1F
    pop hl                                        ; $743C: $E1
    ld a, a                                       ; $743D: $7F
    add e                                         ; $743E: $83
    rst RST_38                                    ; $743F: $FF
    nop                                           ; $7440: $00
    nop                                           ; $7441: $00
    nop                                           ; $7442: $00
    nop                                           ; $7443: $00
    nop                                           ; $7444: $00
    nop                                           ; $7445: $00
    nop                                           ; $7446: $00
    nop                                           ; $7447: $00
    nop                                           ; $7448: $00
    nop                                           ; $7449: $00
    nop                                           ; $744A: $00
    nop                                           ; $744B: $00
    nop                                           ; $744C: $00
    nop                                           ; $744D: $00
    nop                                           ; $744E: $00
    nop                                           ; $744F: $00
    nop                                           ; $7450: $00
    nop                                           ; $7451: $00
    rst RST_38                                    ; $7452: $FF
    nop                                           ; $7453: $00
    rst RST_38                                    ; $7454: $FF
    db $FC                                        ; $7455: $FC
    ld e, $F8                                     ; $7456: $1E $F8
    ld a, b                                       ; $7458: $78
    ldh [$FFE0], a                                ; $7459: $E0 $E0
    ret nz                                        ; $745B: $C0

    rst RST_38                                    ; $745C: $FF
    add b                                         ; $745D: $80
    ret nz                                        ; $745E: $C0

    ccf                                           ; $745F: $3F
    nop                                           ; $7460: $00
    rst RST_38                                    ; $7461: $FF
    nop                                           ; $7462: $00
    rst RST_38                                    ; $7463: $FF
    nop                                           ; $7464: $00
    rst RST_38                                    ; $7465: $FF
    nop                                           ; $7466: $00
    rst RST_38                                    ; $7467: $FF
    nop                                           ; $7468: $00
    rst RST_38                                    ; $7469: $FF
    rst RST_38                                    ; $746A: $FF
    rst RST_38                                    ; $746B: $FF
    rst RST_38                                    ; $746C: $FF
    nop                                           ; $746D: $00
    inc bc                                        ; $746E: $03
    ld bc, $0103                                  ; $746F: $01 $03 $01
    rlca                                          ; $7472: $07
    nop                                           ; $7473: $00
    add hl, bc                                    ; $7474: $09
    ld b, $10                                     ; $7475: $06 $10
    rrca                                          ; $7477: $0F
    rra                                           ; $7478: $1F
    nop                                           ; $7479: $00
    nop                                           ; $747A: $00
    nop                                           ; $747B: $00
    nop                                           ; $747C: $00
    nop                                           ; $747D: $00
    nop                                           ; $747E: $00
    nop                                           ; $747F: $00
    nop                                           ; $7480: $00
    rst RST_38                                    ; $7481: $FF
    nop                                           ; $7482: $00
    rst RST_38                                    ; $7483: $FF
    nop                                           ; $7484: $00
    rst RST_38                                    ; $7485: $FF
    nop                                           ; $7486: $00
    rst RST_38                                    ; $7487: $FF
    rlca                                          ; $7488: $07
    rst RST_38                                    ; $7489: $FF
    ld a, a                                       ; $748A: $7F
    rst RST_38                                    ; $748B: $FF
    rst RST_38                                    ; $748C: $FF
    ldh [rIE], a                                  ; $748D: $E0 $FF
    nop                                           ; $748F: $00
    ldh a, [$FFE0]                                ; $7490: $F0 $E0
    ldh a, [$FFE0]                                ; $7492: $F0 $E0
    ldh [rP1], a                                  ; $7494: $E0 $00
    ldh a, [$FFE0]                                ; $7496: $F0 $E0
    ldh a, [$FF60]                                ; $7498: $F0 $60
    ldh a, [rP1]                                  ; $749A: $F0 $00
    nop                                           ; $749C: $00
    nop                                           ; $749D: $00
    nop                                           ; $749E: $00
    nop                                           ; $749F: $00
    rlca                                          ; $74A0: $07
    rst RST_38                                    ; $74A1: $FF
    rra                                           ; $74A2: $1F
    rst RST_38                                    ; $74A3: $FF
    rst RST_38                                    ; $74A4: $FF
    db $FC                                        ; $74A5: $FC
    rst RST_38                                    ; $74A6: $FF
    ldh a, [rIE]                                  ; $74A7: $F0 $FF
    ld bc, $07FF                                  ; $74A9: $01 $FF $07
    rst RST_38                                    ; $74AC: $FF
    scf                                           ; $74AD: $37
    ccf                                           ; $74AE: $3F
    rrca                                          ; $74AF: $0F
    rrca                                          ; $74B0: $0F
    ld bc, $0001                                  ; $74B1: $01 $01 $00
    nop                                           ; $74B4: $00
    nop                                           ; $74B5: $00
    nop                                           ; $74B6: $00
    nop                                           ; $74B7: $00
    nop                                           ; $74B8: $00
    nop                                           ; $74B9: $00
    nop                                           ; $74BA: $00
    nop                                           ; $74BB: $00
    nop                                           ; $74BC: $00
    nop                                           ; $74BD: $00
    nop                                           ; $74BE: $00
    nop                                           ; $74BF: $00
    add b                                         ; $74C0: $80
    nop                                           ; $74C1: $00
    ret nz                                        ; $74C2: $C0

    add b                                         ; $74C3: $80
    ldh [$FFC0], a                                ; $74C4: $E0 $C0
    ld hl, sp-$40                                 ; $74C6: $F8 $C0
    db $FC                                        ; $74C8: $FC
    ret c                                         ; $74C9: $D8

    db $FC                                        ; $74CA: $FC
    cp b                                          ; $74CB: $B8
    db $FC                                        ; $74CC: $FC
    jr c, jr_012_754B                             ; $74CD: $38 $7C

    nop                                           ; $74CF: $00
    ld b, h                                       ; $74D0: $44
    jr c, @-$7A                                   ; $74D1: $38 $84

    ld a, b                                       ; $74D3: $78
    ld hl, sp+$00                                 ; $74D4: $F8 $00
    nop                                           ; $74D6: $00
    nop                                           ; $74D7: $00
    nop                                           ; $74D8: $00
    nop                                           ; $74D9: $00
    nop                                           ; $74DA: $00
    nop                                           ; $74DB: $00
    nop                                           ; $74DC: $00
    nop                                           ; $74DD: $00
    nop                                           ; $74DE: $00
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
    nop                                           ; $74EC: $00
    nop                                           ; $74ED: $00
    nop                                           ; $74EE: $00
    nop                                           ; $74EF: $00
    nop                                           ; $74F0: $00
    nop                                           ; $74F1: $00
    nop                                           ; $74F2: $00
    nop                                           ; $74F3: $00
    nop                                           ; $74F4: $00
    nop                                           ; $74F5: $00
    ld hl, sp+$00                                 ; $74F6: $F8 $00
    ldh a, [$FF80]                                ; $74F8: $F0 $80
    ldh [rP1], a                                  ; $74FA: $E0 $00
    ret nz                                        ; $74FC: $C0

    nop                                           ; $74FD: $00
    add b                                         ; $74FE: $80
    nop                                           ; $74FF: $00
    nop                                           ; $7500: $00
    nop                                           ; $7501: $00
    rlca                                          ; $7502: $07
    nop                                           ; $7503: $00
    rra                                           ; $7504: $1F
    nop                                           ; $7505: $00
    db $FD                                        ; $7506: $FD
    ld [bc], a                                    ; $7507: $02
    dec b                                         ; $7508: $05
    ld [bc], a                                    ; $7509: $02
    ld a, a                                       ; $750A: $7F
    ld bc, $768F                                  ; $750B: $01 $8F $76
    add a                                         ; $750E: $87
    ld a, c                                       ; $750F: $79
    push bc                                       ; $7510: $C5
    ld a, e                                       ; $7511: $7B
    xor $73                                       ; $7512: $EE $73
    ld a, h                                       ; $7514: $7C
    inc sp                                        ; $7515: $33
    ld a, h                                       ; $7516: $7C
    inc sp                                        ; $7517: $33
    ld a, $15                                     ; $7518: $3E $15
    ld e, $05                                     ; $751A: $1E $05
    rlca                                          ; $751C: $07
    ld [bc], a                                    ; $751D: $02
    inc bc                                        ; $751E: $03
    ld bc, $000F                                  ; $751F: $01 $0F $00
    rst RST_38                                    ; $7522: $FF
    rrca                                          ; $7523: $0F
    ld hl, sp-$01                                 ; $7524: $F8 $FF
    ldh [$FF1F], a                                ; $7526: $E0 $1F
    rst RST_38                                    ; $7528: $FF
    ret nz                                        ; $7529: $C0

    rst RST_38                                    ; $752A: $FF
    inc e                                         ; $752B: $1C
    rst RST_38                                    ; $752C: $FF
    cp [hl]                                       ; $752D: $BE
    rst RST_38                                    ; $752E: $FF
    ld a, [hl]                                    ; $752F: $7E
    cp a                                          ; $7530: $BF
    rst RST_38                                    ; $7531: $FF
    ld e, a                                       ; $7532: $5F
    rst RST_38                                    ; $7533: $FF
    cp a                                          ; $7534: $BF
    rst RST_38                                    ; $7535: $FF
    ld e, a                                       ; $7536: $5F
    rst RST_38                                    ; $7537: $FF
    cpl                                           ; $7538: $2F
    rst RST_38                                    ; $7539: $FF
    rra                                           ; $753A: $1F
    cp $2F                                        ; $753B: $FE $2F
    cp $17                                        ; $753D: $FE $17
    db $FD                                        ; $753F: $FD
    cp $00                                        ; $7540: $FE $00
    rst RST_38                                    ; $7542: $FF
    cp $00                                        ; $7543: $FE $00
    rst RST_38                                    ; $7545: $FF
    nop                                           ; $7546: $00
    rst RST_38                                    ; $7547: $FF
    ld a, b                                       ; $7548: $78
    rlca                                          ; $7549: $07
    add h                                         ; $754A: $84

jr_012_754B:
    ld a, e                                       ; $754B: $7B
    ld a, h                                       ; $754C: $7C
    cp e                                          ; $754D: $BB
    rst RST_38                                    ; $754E: $FF
    ld bc, $7C83                                  ; $754F: $01 $83 $7C
    xor e                                         ; $7552: $AB
    ld a, [hl]                                    ; $7553: $7E
    rst RST_38                                    ; $7554: $FF
    ld a, [hl]                                    ; $7555: $7E
    cp $78                                        ; $7556: $FE $78
    ld hl, sp+$00                                 ; $7558: $F8 $00
    adc a                                         ; $755A: $8F
    ld [hl], b                                    ; $755B: $70
    adc [hl]                                      ; $755C: $8E
    ld [hl], l                                    ; $755D: $75
    adc a                                         ; $755E: $8F
    halt                                          ; $755F: $76
    call c, $F700                                 ; $7560: $DC $00 $F7
    call z, $EF33                                 ; $7563: $CC $33 $EF
    ld sp, $30EF                                  ; $7566: $31 $EF $30
    rst RST_28                                    ; $7569: $EF
    ld [hl], b                                    ; $756A: $70
    rst RST_28                                    ; $756B: $EF
    ld hl, sp-$39                                 ; $756C: $F8 $C7
    call nz, Call_000_0403                        ; $756E: $C4 $03 $04
    inc bc                                        ; $7571: $03
    inc b                                         ; $7572: $04
    inc bc                                        ; $7573: $03
    ld [$3107], sp                                ; $7574: $08 $07 $31
    rrca                                          ; $7577: $0F
    rst RST_00                                    ; $7578: $C7
    ccf                                           ; $7579: $3F
    cp a                                          ; $757A: $BF
    db $FC                                        ; $757B: $FC
    db $FC                                        ; $757C: $FC
    ret nz                                        ; $757D: $C0

    ret nz                                        ; $757E: $C0

    nop                                           ; $757F: $00
    nop                                           ; $7580: $00
    nop                                           ; $7581: $00
    nop                                           ; $7582: $00
    nop                                           ; $7583: $00
    nop                                           ; $7584: $00
    nop                                           ; $7585: $00
    nop                                           ; $7586: $00
    nop                                           ; $7587: $00
    nop                                           ; $7588: $00
    nop                                           ; $7589: $00
    add b                                         ; $758A: $80
    nop                                           ; $758B: $00
    ret nz                                        ; $758C: $C0

    add b                                         ; $758D: $80
    ret nz                                        ; $758E: $C0

    add b                                         ; $758F: $80
    ldh [$FFC0], a                                ; $7590: $E0 $C0
    ld h, b                                       ; $7592: $60

jr_012_7593:
    ret nz                                        ; $7593: $C0

    ld h, b                                       ; $7594: $60
    ret nz                                        ; $7595: $C0

    ld h, b                                       ; $7596: $60
    ret nz                                        ; $7597: $C0

    ldh [$FFC0], a                                ; $7598: $E0 $C0
    ret nz                                        ; $759A: $C0

    add b                                         ; $759B: $80
    ret nz                                        ; $759C: $C0

    add b                                         ; $759D: $80
    add b                                         ; $759E: $80
    nop                                           ; $759F: $00
    ld bc, $0100                                  ; $75A0: $01 $00 $01
    nop                                           ; $75A3: $00
    ld bc, $0200                                  ; $75A4: $01 $00 $02
    ld bc, $030C                                  ; $75A7: $01 $0C $03
    ld d, $0D                                     ; $75AA: $16 $0D

jr_012_75AC:
    rra                                           ; $75AC: $1F
    inc c                                         ; $75AD: $0C
    rra                                           ; $75AE: $1F
    inc bc                                        ; $75AF: $03
    rra                                           ; $75B0: $1F
    rrca                                          ; $75B1: $0F
    rra                                           ; $75B2: $1F

jr_012_75B3:
    rrca                                          ; $75B3: $0F
    rrca                                          ; $75B4: $0F
    rlca                                          ; $75B5: $07
    rrca                                          ; $75B6: $0F
    rlca                                          ; $75B7: $07
    rra                                           ; $75B8: $1F
    nop                                           ; $75B9: $00
    daa                                           ; $75BA: $27
    dec de                                        ; $75BB: $1B
    ld b, e                                       ; $75BC: $43
    dec a                                         ; $75BD: $3D
    ld a, a                                       ; $75BE: $7F
    nop                                           ; $75BF: $00
    rst RST_38                                    ; $75C0: $FF
    ld a, d                                       ; $75C1: $7A
    rst RST_38                                    ; $75C2: $FF
    nop                                           ; $75C3: $00
    rst RST_38                                    ; $75C4: $FF
    cp $FE                                        ; $75C5: $FE $FE
    dec a                                         ; $75C7: $3D
    inc a                                         ; $75C8: $3C
    db $DB                                        ; $75C9: $DB
    jr jr_012_75B3                                ; $75CA: $18 $E7

    inc h                                         ; $75CC: $24
    jp Jump_000_01C2                              ; $75CD: $C3 $C2 $01


    ld hl, $A1C0                                  ; $75D0: $21 $C0 $A1
    ret nz                                        ; $75D3: $C0

    and c                                         ; $75D4: $A1
    ret nz                                        ; $75D5: $C0

    ret nz                                        ; $75D6: $C0

    add b                                         ; $75D7: $80
    ret nz                                        ; $75D8: $C0

    add b                                         ; $75D9: $80
    add b                                         ; $75DA: $80
    nop                                           ; $75DB: $00
    ret nz                                        ; $75DC: $C0

    add b                                         ; $75DD: $80
    ret nz                                        ; $75DE: $C0

    add b                                         ; $75DF: $80
    rst RST_18                                    ; $75E0: $DF
    ld [hl+], a                                   ; $75E1: $22
    rst RST_38                                    ; $75E2: $FF
    add h                                         ; $75E3: $84
    rst RST_38                                    ; $75E4: $FF
    adc [hl]                                      ; $75E5: $8E
    cp $7C                                        ; $75E6: $FE $7C
    ld a, h                                       ; $75E8: $7C
    add b                                         ; $75E9: $80
    jr nz, jr_012_75AC                            ; $75EA: $20 $C0

    inc a                                         ; $75EC: $3C
    ret nz                                        ; $75ED: $C0

    ld [hl+], a                                   ; $75EE: $22
    call c, Call_000_3EFF                         ; $75EF: $DC $FF $3E
    ld a, a                                       ; $75F2: $7F
    rst RST_18                                    ; $75F3: $DF
    rst RST_38                                    ; $75F4: $FF
    rst RST_18                                    ; $75F5: $DF
    rst RST_38                                    ; $75F6: $FF
    ccf                                           ; $75F7: $3F
    ccf                                           ; $75F8: $3F
    ld b, $07                                     ; $75F9: $06 $07
    nop                                           ; $75FB: $00
    ld bc, $0100                                  ; $75FC: $01 $00 $01
    nop                                           ; $75FF: $00
    ldh [$FFC0], a                                ; $7600: $E0 $C0
    ld hl, sp-$40                                 ; $7602: $F8 $C0
    db $FC                                        ; $7604: $FC
    ret c                                         ; $7605: $D8

    db $FC                                        ; $7606: $FC
    cp b                                          ; $7607: $B8
    db $FC                                        ; $7608: $FC
    jr c, @+$7E                                   ; $7609: $38 $7C

    nop                                           ; $760B: $00
    ld b, h                                       ; $760C: $44
    jr c, jr_012_7593                             ; $760D: $38 $84

    ld a, b                                       ; $760F: $78
    ld hl, sp+$00                                 ; $7610: $F8 $00
    nop                                           ; $7612: $00
    nop                                           ; $7613: $00
    nop                                           ; $7614: $00
    nop                                           ; $7615: $00
    nop                                           ; $7616: $00
    nop                                           ; $7617: $00
    nop                                           ; $7618: $00
    nop                                           ; $7619: $00
    nop                                           ; $761A: $00
    nop                                           ; $761B: $00
    nop                                           ; $761C: $00
    nop                                           ; $761D: $00
    nop                                           ; $761E: $00
    nop                                           ; $761F: $00
    ret nz                                        ; $7620: $C0

    nop                                           ; $7621: $00
    nop                                           ; $7622: $00
    nop                                           ; $7623: $00
    nop                                           ; $7624: $00
    nop                                           ; $7625: $00
    nop                                           ; $7626: $00
    nop                                           ; $7627: $00
    nop                                           ; $7628: $00
    nop                                           ; $7629: $00
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

jr_012_763D:
    nop                                           ; $763D: $00
    nop                                           ; $763E: $00
    nop                                           ; $763F: $00
    nop                                           ; $7640: $00
    nop                                           ; $7641: $00
    nop                                           ; $7642: $00
    nop                                           ; $7643: $00
    rlca                                          ; $7644: $07
    nop                                           ; $7645: $00
    rrca                                          ; $7646: $0F
    ld bc, $0A15                                  ; $7647: $01 $15 $0A
    ld l, $19                                     ; $764A: $2E $19
    ld e, a                                       ; $764C: $5F
    ld a, $BF                                     ; $764D: $3E $BF
    ld a, h                                       ; $764F: $7C
    cp l                                          ; $7650: $BD
    ld a, d                                       ; $7651: $7A
    ld a, l                                       ; $7652: $7D
    ld a, [$F17F]                                 ; $7653: $FA $7F $F1
    rst RST_38                                    ; $7656: $FF
    ld [hl], $BE                                  ; $7657: $36 $BE
    ld b, c                                       ; $7659: $41
    adc l                                         ; $765A: $8D
    ld [hl], d                                    ; $765B: $72
    ld b, [hl]                                    ; $765C: $46
    dec sp                                        ; $765D: $3B
    cpl                                           ; $765E: $2F
    stop                                          ; $765F: $10 $00
    nop                                           ; $7661: $00
    add e                                         ; $7662: $83
    nop                                           ; $7663: $00
    rst RST_00                                    ; $7664: $C7
    add e                                         ; $7665: $83
    rst RST_28                                    ; $7666: $EF
    ld b, e                                       ; $7667: $43
    ld d, a                                       ; $7668: $57
    adc l                                         ; $7669: $8D
    rst RST_28                                    ; $766A: $EF
    ld e, $DF                                     ; $766B: $1E $DF
    cp a                                          ; $766D: $BF
    cp a                                          ; $766E: $BF
    ld a, a                                       ; $766F: $7F
    cp a                                          ; $7670: $BF
    ld a, [hl]                                    ; $7671: $7E
    rst RST_38                                    ; $7672: $FF
    inc a                                         ; $7673: $3C
    ld a, a                                       ; $7674: $7F
    adc e                                         ; $7675: $8B
    adc a                                         ; $7676: $8F
    ld [hl], b                                    ; $7677: $70
    add e                                         ; $7678: $83
    ld a, h                                       ; $7679: $7C
    db $E3                                        ; $767A: $E3
    inc e                                         ; $767B: $1C
    ld a, a                                       ; $767C: $7F
    add b                                         ; $767D: $80
    ld a, a                                       ; $767E: $7F
    xor a                                         ; $767F: $AF
    nop                                           ; $7680: $00
    nop                                           ; $7681: $00
    ret nz                                        ; $7682: $C0

    nop                                           ; $7683: $00
    ldh [$FFC0], a                                ; $7684: $E0 $C0
    ldh [$FFC0], a                                ; $7686: $E0 $C0
    ldh a, [$FFC0]                                ; $7688: $F0 $C0
    ret nc                                        ; $768A: $D0

    jr nz, @-$06                                  ; $768B: $20 $F8

    jr nc, @+$3A                                  ; $768D: $30 $38

    db $10                                        ; $768F: $10
    db $F4                                        ; $7690: $F4
    jr @-$0A                                      ; $7691: $18 $F4

    sbc b                                         ; $7693: $98
    ei                                            ; $7694: $FB
    call c, Call_012_4FF8                         ; $7695: $DC $F8 $4F
    db $FC                                        ; $7698: $FC
    ld c, a                                       ; $7699: $4F
    rst RST_28                                    ; $769A: $EF
    rst RST_00                                    ; $769B: $C7
    rst RST_00                                    ; $769C: $C7
    add c                                         ; $769D: $81
    add c                                         ; $769E: $81
    nop                                           ; $769F: $00
    nop                                           ; $76A0: $00
    nop                                           ; $76A1: $00
    nop                                           ; $76A2: $00
    nop                                           ; $76A3: $00
    nop                                           ; $76A4: $00
    nop                                           ; $76A5: $00
    nop                                           ; $76A6: $00
    nop                                           ; $76A7: $00
    nop                                           ; $76A8: $00
    nop                                           ; $76A9: $00
    nop                                           ; $76AA: $00
    nop                                           ; $76AB: $00
    nop                                           ; $76AC: $00
    nop                                           ; $76AD: $00
    nop                                           ; $76AE: $00
    nop                                           ; $76AF: $00
    jr nz, jr_012_76B2                            ; $76B0: $20 $00

jr_012_76B2:
    ld d, b                                       ; $76B2: $50
    jr nz, jr_012_763D                            ; $76B3: $20 $88

    ld [hl], b                                    ; $76B5: $70
    inc b                                         ; $76B6: $04
    ld hl, sp+$02                                 ; $76B7: $F8 $02
    db $FC                                        ; $76B9: $FC
    rrca                                          ; $76BA: $0F
    cp $FE                                        ; $76BB: $FE $FE
    ld hl, sp-$08                                 ; $76BD: $F8 $F8
    nop                                           ; $76BF: $00
    rla                                           ; $76C0: $17
    dec c                                         ; $76C1: $0D

jr_012_76C2:
    rra                                           ; $76C2: $1F
    dec c                                         ; $76C3: $0D
    rra                                           ; $76C4: $1F
    inc bc                                        ; $76C5: $03
    ld de, $0F0E                                  ; $76C6: $11 $0E $0F
    ld bc, $0F1F                                  ; $76C9: $01 $1F $0F
    rra                                           ; $76CC: $1F
    nop                                           ; $76CD: $00
    ccf                                           ; $76CE: $3F
    rrca                                          ; $76CF: $0F
    ld c, a                                       ; $76D0: $4F
    scf                                           ; $76D1: $37
    add a                                         ; $76D2: $87
    ld a, d                                       ; $76D3: $7A
    rlca                                          ; $76D4: $07
    ld hl, sp+$08                                 ; $76D5: $F8 $08
    ldh a, [$FFF0]                                ; $76D7: $F0 $F0
    nop                                           ; $76D9: $00
    ret z                                         ; $76DA: $C8

    ldh a, [$FFE8]                                ; $76DB: $F0 $E8
    ldh a, [$FFE8]                                ; $76DD: $F0 $E8
    ldh a, [rIE]                                  ; $76DF: $F0 $FF
    ld h, b                                       ; $76E1: $60
    rst RST_38                                    ; $76E2: $FF
    xor $FE                                       ; $76E3: $EE $FE
    call c, $B0FC                                 ; $76E5: $DC $FC $B0
    ldh a, [rP1]                                  ; $76E8: $F0 $00
    ldh [$FF80], a                                ; $76EA: $E0 $80
    sub b                                         ; $76EC: $90
    ld h, b                                       ; $76ED: $60
    ld [$1EF0], sp                                ; $76EE: $08 $F0 $1E
    ldh [$FFAD], a                                ; $76F1: $E0 $AD
    ld e, d                                       ; $76F3: $5A
    ld a, h                                       ; $76F4: $7C
    dec de                                        ; $76F5: $1B
    ccf                                           ; $76F6: $3F
    rlca                                          ; $76F7: $07
    ccf                                           ; $76F8: $3F
    rra                                           ; $76F9: $1F
    ccf                                           ; $76FA: $3F
    rra                                           ; $76FB: $1F
    rra                                           ; $76FC: $1F
    rrca                                          ; $76FD: $0F
    rrca                                          ; $76FE: $0F
    inc bc                                        ; $76FF: $03
    jr nz, jr_012_76C2                            ; $7700: $20 $C0

    ret nc                                        ; $7702: $D0

    ldh [$FFD0], a                                ; $7703: $E0 $D0
    ldh [$FFF8], a                                ; $7705: $E0 $F8
    ldh a, [$FFF8]                                ; $7707: $F0 $F8
    ldh a, [$FFFC]                                ; $7709: $F0 $FC
    ld hl, sp-$04                                 ; $770B: $F8 $FC
    ld b, b                                       ; $770D: $40
    ld [hl], d                                    ; $770E: $72
    inc c                                         ; $770F: $0C
    ld hl, $211E                                  ; $7710: $21 $1E $21
    ld e, $11                                     ; $7713: $1E $11
    ld c, $0E                                     ; $7715: $0E $0E
    nop                                           ; $7717: $00
    nop                                           ; $7718: $00
    nop                                           ; $7719: $00
    nop                                           ; $771A: $00
    nop                                           ; $771B: $00
    nop                                           ; $771C: $00
    nop                                           ; $771D: $00
    nop                                           ; $771E: $00
    nop                                           ; $771F: $00
    ld [hl], b                                    ; $7720: $70
    rrca                                          ; $7721: $0F
    or b                                          ; $7722: $B0
    ld l, a                                       ; $7723: $6F
    rst RST_38                                    ; $7724: $FF
    ld h, b                                       ; $7725: $60
    ld a, h                                       ; $7726: $7C
    rra                                           ; $7727: $1F
    ld a, [hl]                                    ; $7728: $7E
    ccf                                           ; $7729: $3F
    ld a, [hl]                                    ; $772A: $7E
    ccf                                           ; $772B: $3F
    ccf                                           ; $772C: $3F
    ld e, $3F                                     ; $772D: $1E $3F
    ld e, $1F                                     ; $772F: $1E $1F
    nop                                           ; $7731: $00
    ccf                                           ; $7732: $3F
    rlca                                          ; $7733: $07
    ld c, a                                       ; $7734: $4F
    scf                                           ; $7735: $37
    add a                                         ; $7736: $87
    ld a, d                                       ; $7737: $7A
    cp $00                                        ; $7738: $FE $00
    nop                                           ; $773A: $00
    nop                                           ; $773B: $00
    nop                                           ; $773C: $00
    nop                                           ; $773D: $00
    nop                                           ; $773E: $00
    nop                                           ; $773F: $00
    add b                                         ; $7740: $80
    nop                                           ; $7741: $00
    add b                                         ; $7742: $80
    nop                                           ; $7743: $00
    nop                                           ; $7744: $00
    nop                                           ; $7745: $00
    nop                                           ; $7746: $00
    nop                                           ; $7747: $00
    nop                                           ; $7748: $00
    nop                                           ; $7749: $00
    nop                                           ; $774A: $00
    nop                                           ; $774B: $00
    nop                                           ; $774C: $00
    nop                                           ; $774D: $00
    nop                                           ; $774E: $00
    nop                                           ; $774F: $00
    nop                                           ; $7750: $00
    nop                                           ; $7751: $00
    nop                                           ; $7752: $00
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
    nop                                           ; $7760: $00
    nop                                           ; $7761: $00
    nop                                           ; $7762: $00
    nop                                           ; $7763: $00
    nop                                           ; $7764: $00
    nop                                           ; $7765: $00
    nop                                           ; $7766: $00
    nop                                           ; $7767: $00
    nop                                           ; $7768: $00
    nop                                           ; $7769: $00
    nop                                           ; $776A: $00
    nop                                           ; $776B: $00
    nop                                           ; $776C: $00
    nop                                           ; $776D: $00
    nop                                           ; $776E: $00
    nop                                           ; $776F: $00
    nop                                           ; $7770: $00
    nop                                           ; $7771: $00
    nop                                           ; $7772: $00
    nop                                           ; $7773: $00
    nop                                           ; $7774: $00
    nop                                           ; $7775: $00
    nop                                           ; $7776: $00
    nop                                           ; $7777: $00
    nop                                           ; $7778: $00
    nop                                           ; $7779: $00
    nop                                           ; $777A: $00
    nop                                           ; $777B: $00
    ld bc, $0100                                  ; $777C: $01 $00 $01
    nop                                           ; $777F: $00
    inc bc                                        ; $7780: $03
    nop                                           ; $7781: $00
    inc c                                         ; $7782: $0C
    inc bc                                        ; $7783: $03
    rra                                           ; $7784: $1F
    rrca                                          ; $7785: $0F
    ccf                                           ; $7786: $3F
    rra                                           ; $7787: $1F
    rra                                           ; $7788: $1F
    nop                                           ; $7789: $00
    ccf                                           ; $778A: $3F
    inc de                                        ; $778B: $13
    dec a                                         ; $778C: $3D
    ld [de], a                                    ; $778D: $12
    ccf                                           ; $778E: $3F
    inc d                                         ; $778F: $14
    ccf                                           ; $7790: $3F
    ld d, $3F                                     ; $7791: $16 $3F
    ld a, [de]                                    ; $7793: $1A
    rra                                           ; $7794: $1F
    ld [bc], a                                    ; $7795: $02
    rlca                                          ; $7796: $07
    nop                                           ; $7797: $00
    ld [$DF07], sp                                ; $7798: $08 $07 $DF
    nop                                           ; $779B: $00
    jr nz, @-$1F                                  ; $779C: $20 $DF

    rst RST_38                                    ; $779E: $FF
    rst RST_18                                    ; $779F: $DF
    nop                                           ; $77A0: $00
    nop                                           ; $77A1: $00
    nop                                           ; $77A2: $00
    nop                                           ; $77A3: $00
    nop                                           ; $77A4: $00
    nop                                           ; $77A5: $00
    nop                                           ; $77A6: $00
    nop                                           ; $77A7: $00
    nop                                           ; $77A8: $00
    nop                                           ; $77A9: $00
    nop                                           ; $77AA: $00
    nop                                           ; $77AB: $00
    nop                                           ; $77AC: $00
    nop                                           ; $77AD: $00
    nop                                           ; $77AE: $00
    nop                                           ; $77AF: $00
    nop                                           ; $77B0: $00
    nop                                           ; $77B1: $00
    nop                                           ; $77B2: $00
    nop                                           ; $77B3: $00
    nop                                           ; $77B4: $00
    nop                                           ; $77B5: $00
    nop                                           ; $77B6: $00
    nop                                           ; $77B7: $00
    nop                                           ; $77B8: $00
    nop                                           ; $77B9: $00
    ld hl, sp+$00                                 ; $77BA: $F8 $00
    ld b, $F8                                     ; $77BC: $06 $F8
    ld sp, hl                                     ; $77BE: $F9
    cp $FF                                        ; $77BF: $FE $FF
    rst RST_28                                    ; $77C1: $EF
    rst RST_38                                    ; $77C2: $FF
    rst RST_28                                    ; $77C3: $EF
    rst RST_38                                    ; $77C4: $FF
    ld l, a                                       ; $77C5: $6F
    rst RST_28                                    ; $77C6: $EF
    add b                                         ; $77C7: $80
    add b                                         ; $77C8: $80
    nop                                           ; $77C9: $00
    nop                                           ; $77CA: $00
    nop                                           ; $77CB: $00
    nop                                           ; $77CC: $00
    nop                                           ; $77CD: $00
    nop                                           ; $77CE: $00
    nop                                           ; $77CF: $00
    nop                                           ; $77D0: $00
    nop                                           ; $77D1: $00
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
    nop                                           ; $77DE: $00
    nop                                           ; $77DF: $00
    call z, $CCF8                                 ; $77E0: $CC $F8 $CC
    ld hl, sp-$34                                 ; $77E3: $F8 $CC
    ld hl, sp-$24                                 ; $77E5: $F8 $DC
    ld hl, sp-$28                                 ; $77E7: $F8 $D8
    ldh a, [$FFD8]                                ; $77E9: $F0 $D8
    ldh a, [$FFD8]                                ; $77EB: $F0 $D8
    ldh a, [$FFD8]                                ; $77ED: $F0 $D8
    ldh a, [$FFF7]                                ; $77EF: $F0 $F7
    ldh [$FFEB], a                                ; $77F1: $E0 $EB
    add $FF                                       ; $77F3: $C6 $FF
    add c                                         ; $77F5: $81
    ld e, a                                       ; $77F6: $5F
    cp l                                          ; $77F7: $BD
    rst RST_18                                    ; $77F8: $DF
    ld a, [hl-]                                   ; $77F9: $3A
    ld a, a                                       ; $77FA: $7F
    ld [bc], a                                    ; $77FB: $02
    rrca                                          ; $77FC: $0F
    inc b                                         ; $77FD: $04
    inc c                                         ; $77FE: $0C
    nop                                           ; $77FF: $00
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
    rra                                           ; $7812: $1F
    rst RST_38                                    ; $7813: $FF
    rlca                                          ; $7814: $07
    rst RST_38                                    ; $7815: $FF
    inc bc                                        ; $7816: $03
    rst RST_38                                    ; $7817: $FF
    ld [hl], b                                    ; $7818: $70
    adc a                                         ; $7819: $8F
    adc h                                         ; $781A: $8C
    inc bc                                        ; $781B: $03
    add e                                         ; $781C: $83
    nop                                           ; $781D: $00
    add b                                         ; $781E: $80
    nop                                           ; $781F: $00
    ccf                                           ; $7820: $3F
    rra                                           ; $7821: $1F
    ccf                                           ; $7822: $3F
    rra                                           ; $7823: $1F
    ccf                                           ; $7824: $3F
    rra                                           ; $7825: $1F
    inc a                                         ; $7826: $3C
    rra                                           ; $7827: $1F
    jr c, jr_012_7849                             ; $7828: $38 $1F

    jr c, jr_012_784B                             ; $782A: $38 $1F

    jr nc, @+$21                                  ; $782C: $30 $1F

    jr nc, jr_012_784F                            ; $782E: $30 $1F

    ccf                                           ; $7830: $3F
    nop                                           ; $7831: $00
    nop                                           ; $7832: $00
    nop                                           ; $7833: $00
    nop                                           ; $7834: $00
    nop                                           ; $7835: $00
    nop                                           ; $7836: $00
    nop                                           ; $7837: $00
    nop                                           ; $7838: $00
    nop                                           ; $7839: $00
    nop                                           ; $783A: $00
    nop                                           ; $783B: $00
    nop                                           ; $783C: $00
    nop                                           ; $783D: $00
    nop                                           ; $783E: $00
    nop                                           ; $783F: $00
    nop                                           ; $7840: $00
    rst RST_38                                    ; $7841: $FF
    nop                                           ; $7842: $00
    rst RST_38                                    ; $7843: $FF
    ld [bc], a                                    ; $7844: $02
    rst RST_38                                    ; $7845: $FF
    inc c                                         ; $7846: $0C
    rst RST_38                                    ; $7847: $FF
    inc a                                         ; $7848: $3C

jr_012_7849:
    rst RST_38                                    ; $7849: $FF
    ld a, b                                       ; $784A: $78

jr_012_784B:
    rst RST_38                                    ; $784B: $FF
    ld hl, sp-$01                                 ; $784C: $F8 $FF
    pop af                                        ; $784E: $F1

jr_012_784F:
    rst RST_38                                    ; $784F: $FF
    pop af                                        ; $7850: $F1
    rst RST_38                                    ; $7851: $FF
    di                                            ; $7852: $F3
    rst RST_38                                    ; $7853: $FF
    db $E3                                        ; $7854: $E3
    cp $E3                                        ; $7855: $FE $E3
    cp $E7                                        ; $7857: $FE $E7
    cp $E6                                        ; $7859: $FE $E6
    db $FC                                        ; $785B: $FC
    and $FC                                       ; $785C: $E6 $FC
    adc $FC                                       ; $785E: $CE $FC
    inc bc                                        ; $7860: $03
    nop                                           ; $7861: $00
    rlca                                          ; $7862: $07
    inc bc                                        ; $7863: $03
    ld c, $07                                     ; $7864: $0E $07
    inc e                                         ; $7866: $1C
    rrca                                          ; $7867: $0F
    jr c, jr_012_7889                             ; $7868: $38 $1F

    ld [hl], b                                    ; $786A: $70
    ccf                                           ; $786B: $3F
    ldh [$FF7F], a                                ; $786C: $E0 $7F
    ret nz                                        ; $786E: $C0

    ld a, a                                       ; $786F: $7F
    pop bc                                        ; $7870: $C1
    rst RST_38                                    ; $7871: $FF
    add e                                         ; $7872: $83
    rst RST_38                                    ; $7873: $FF
    rlca                                          ; $7874: $07
    rst RST_38                                    ; $7875: $FF
    rrca                                          ; $7876: $0F
    rst RST_38                                    ; $7877: $FF
    rra                                           ; $7878: $1F
    rst RST_38                                    ; $7879: $FF
    ccf                                           ; $787A: $3F
    rst RST_38                                    ; $787B: $FF
    ccf                                           ; $787C: $3F
    rst RST_38                                    ; $787D: $FF
    ld a, a                                       ; $787E: $7F
    rst RST_38                                    ; $787F: $FF
    ld bc, $0100                                  ; $7880: $01 $00 $01
    nop                                           ; $7883: $00
    inc bc                                        ; $7884: $03
    ld bc, $0103                                  ; $7885: $01 $03 $01
    rlca                                          ; $7888: $07

jr_012_7889:
    inc bc                                        ; $7889: $03
    ld b, $03                                     ; $788A: $06 $03
    ld b, $03                                     ; $788C: $06 $03
    ld c, $07                                     ; $788E: $0E $07
    inc c                                         ; $7890: $0C
    rlca                                          ; $7891: $07
    inc c                                         ; $7892: $0C
    rlca                                          ; $7893: $07
    inc e                                         ; $7894: $1C
    rrca                                          ; $7895: $0F
    add hl, de                                    ; $7896: $19
    rrca                                          ; $7897: $0F
    add hl, de                                    ; $7898: $19
    rrca                                          ; $7899: $0F
    dec de                                        ; $789A: $1B
    rrca                                          ; $789B: $0F
    dec de                                        ; $789C: $1B
    rrca                                          ; $789D: $0F
    ccf                                           ; $789E: $3F
    rra                                           ; $789F: $1F
    rst RST_38                                    ; $78A0: $FF
    nop                                           ; $78A1: $00
    rst RST_38                                    ; $78A2: $FF
    rst RST_38                                    ; $78A3: $FF
    add e                                         ; $78A4: $83
    rst RST_38                                    ; $78A5: $FF
    rlca                                          ; $78A6: $07
    cp $0F                                        ; $78A7: $FE $0F
    cp $0E                                        ; $78A9: $FE $0E
    db $FC                                        ; $78AB: $FC
    inc e                                         ; $78AC: $1C
    ld hl, sp+$1C                                 ; $78AD: $F8 $1C
    ld hl, sp+$38                                 ; $78AF: $F8 $38
    ldh a, [$FF30]                                ; $78B1: $F0 $30
    ldh [rSVBK], a                                ; $78B3: $E0 $70
    ldh [$FF60], a                                ; $78B5: $E0 $60
    ret nz                                        ; $78B7: $C0

    ret nz                                        ; $78B8: $C0

    add b                                         ; $78B9: $80
    ret nz                                        ; $78BA: $C0

    add b                                         ; $78BB: $80
    add b                                         ; $78BC: $80
    nop                                           ; $78BD: $00
    add b                                         ; $78BE: $80
    nop                                           ; $78BF: $00
    nop                                           ; $78C0: $00
    nop                                           ; $78C1: $00
    nop                                           ; $78C2: $00
    nop                                           ; $78C3: $00
    nop                                           ; $78C4: $00
    nop                                           ; $78C5: $00
    nop                                           ; $78C6: $00
    nop                                           ; $78C7: $00
    nop                                           ; $78C8: $00
    nop                                           ; $78C9: $00
    nop                                           ; $78CA: $00
    nop                                           ; $78CB: $00
    nop                                           ; $78CC: $00
    nop                                           ; $78CD: $00
    nop                                           ; $78CE: $00
    nop                                           ; $78CF: $00
    nop                                           ; $78D0: $00
    nop                                           ; $78D1: $00
    nop                                           ; $78D2: $00
    nop                                           ; $78D3: $00
    nop                                           ; $78D4: $00
    nop                                           ; $78D5: $00
    rlca                                          ; $78D6: $07
    nop                                           ; $78D7: $00
    ccf                                           ; $78D8: $3F
    rlca                                          ; $78D9: $07
    db $FC                                        ; $78DA: $FC
    ccf                                           ; $78DB: $3F
    ldh [rIE], a                                  ; $78DC: $E0 $FF
    add b                                         ; $78DE: $80
    rst RST_38                                    ; $78DF: $FF
    nop                                           ; $78E0: $00
    nop                                           ; $78E1: $00
    nop                                           ; $78E2: $00
    nop                                           ; $78E3: $00
    nop                                           ; $78E4: $00
    nop                                           ; $78E5: $00
    nop                                           ; $78E6: $00
    nop                                           ; $78E7: $00
    nop                                           ; $78E8: $00
    nop                                           ; $78E9: $00
    nop                                           ; $78EA: $00
    nop                                           ; $78EB: $00
    nop                                           ; $78EC: $00
    nop                                           ; $78ED: $00
    nop                                           ; $78EE: $00
    nop                                           ; $78EF: $00
    nop                                           ; $78F0: $00
    nop                                           ; $78F1: $00
    nop                                           ; $78F2: $00

jr_012_78F3:
    nop                                           ; $78F3: $00
    nop                                           ; $78F4: $00
    nop                                           ; $78F5: $00
    nop                                           ; $78F6: $00
    nop                                           ; $78F7: $00
    nop                                           ; $78F8: $00
    nop                                           ; $78F9: $00
    ldh [rP1], a                                  ; $78FA: $E0 $00
    ret nz                                        ; $78FC: $C0

    add b                                         ; $78FD: $80
    add b                                         ; $78FE: $80
    nop                                           ; $78FF: $00
    ccf                                           ; $7900: $3F
    inc de                                        ; $7901: $13
    dec a                                         ; $7902: $3D
    ld [de], a                                    ; $7903: $12
    ccf                                           ; $7904: $3F
    inc d                                         ; $7905: $14
    ccf                                           ; $7906: $3F
    ld d, $3F                                     ; $7907: $16 $3F
    ld a, [de]                                    ; $7909: $1A
    rra                                           ; $790A: $1F
    ld [bc], a                                    ; $790B: $02
    rlca                                          ; $790C: $07
    nop                                           ; $790D: $00
    ld [$DF07], sp                                ; $790E: $08 $07 $DF
    nop                                           ; $7911: $00
    jr nz, jr_012_78F3                            ; $7912: $20 $DF

    rst RST_38                                    ; $7914: $FF
    rst RST_18                                    ; $7915: $DF
    rst RST_38                                    ; $7916: $FF
    rst RST_28                                    ; $7917: $EF
    rst RST_38                                    ; $7918: $FF
    rst RST_28                                    ; $7919: $EF
    rst RST_38                                    ; $791A: $FF
    ld l, a                                       ; $791B: $6F
    rst RST_28                                    ; $791C: $EF
    add b                                         ; $791D: $80
    add b                                         ; $791E: $80
    nop                                           ; $791F: $00
    nop                                           ; $7920: $00
    nop                                           ; $7921: $00
    nop                                           ; $7922: $00
    nop                                           ; $7923: $00
    nop                                           ; $7924: $00
    nop                                           ; $7925: $00
    nop                                           ; $7926: $00
    nop                                           ; $7927: $00
    nop                                           ; $7928: $00
    nop                                           ; $7929: $00
    nop                                           ; $792A: $00
    nop                                           ; $792B: $00
    nop                                           ; $792C: $00
    nop                                           ; $792D: $00
    nop                                           ; $792E: $00
    nop                                           ; $792F: $00
    nop                                           ; $7930: $00
    nop                                           ; $7931: $00
    nop                                           ; $7932: $00
    nop                                           ; $7933: $00
    nop                                           ; $7934: $00
    nop                                           ; $7935: $00
    inc bc                                        ; $7936: $03
    nop                                           ; $7937: $00
    inc c                                         ; $7938: $0C
    inc bc                                        ; $7939: $03
    rra                                           ; $793A: $1F
    rrca                                          ; $793B: $0F
    ccf                                           ; $793C: $3F
    rra                                           ; $793D: $1F
    rra                                           ; $793E: $1F
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
    nop                                           ; $7950: $00
    nop                                           ; $7951: $00
    nop                                           ; $7952: $00
    nop                                           ; $7953: $00
    nop                                           ; $7954: $00
    nop                                           ; $7955: $00
    nop                                           ; $7956: $00
    nop                                           ; $7957: $00
    nop                                           ; $7958: $00
    nop                                           ; $7959: $00
    ld hl, sp+$00                                 ; $795A: $F8 $00
    ld b, $F8                                     ; $795C: $06 $F8
    ld sp, hl                                     ; $795E: $F9
    cp $07                                        ; $795F: $FE $07
    nop                                           ; $7961: $00
    adc e                                         ; $7962: $8B
    ld b, $FF                                     ; $7963: $06 $FF
    add c                                         ; $7965: $81
    ld e, a                                       ; $7966: $5F
    cp l                                          ; $7967: $BD
    rst RST_18                                    ; $7968: $DF
    ld a, [hl-]                                   ; $7969: $3A
    ld a, a                                       ; $796A: $7F
    ld [bc], a                                    ; $796B: $02
    rrca                                          ; $796C: $0F
    inc b                                         ; $796D: $04
    inc c                                         ; $796E: $0C
    nop                                           ; $796F: $00
    nop                                           ; $7970: $00
    nop                                           ; $7971: $00
    nop                                           ; $7972: $00
    nop                                           ; $7973: $00
    nop                                           ; $7974: $00
    nop                                           ; $7975: $00
    nop                                           ; $7976: $00
    nop                                           ; $7977: $00
    nop                                           ; $7978: $00
    nop                                           ; $7979: $00
    nop                                           ; $797A: $00
    nop                                           ; $797B: $00
    nop                                           ; $797C: $00
    nop                                           ; $797D: $00
    nop                                           ; $797E: $00
    nop                                           ; $797F: $00
    nop                                           ; $7980: $00
    nop                                           ; $7981: $00
    nop                                           ; $7982: $00
    nop                                           ; $7983: $00
    nop                                           ; $7984: $00
    nop                                           ; $7985: $00
    nop                                           ; $7986: $00
    nop                                           ; $7987: $00
    nop                                           ; $7988: $00
    nop                                           ; $7989: $00
    nop                                           ; $798A: $00
    nop                                           ; $798B: $00
    nop                                           ; $798C: $00
    nop                                           ; $798D: $00
    nop                                           ; $798E: $00
    nop                                           ; $798F: $00
    ldh a, [rP1]                                  ; $7990: $F0 $00
    db $FC                                        ; $7992: $FC
    ldh a, [rNR34]                                ; $7993: $F0 $1E
    db $FC                                        ; $7995: $FC
    rlca                                          ; $7996: $07
    cp $71                                        ; $7997: $FE $71
    adc a                                         ; $7999: $8F
    adc h                                         ; $799A: $8C
    inc bc                                        ; $799B: $03
    add e                                         ; $799C: $83
    nop                                           ; $799D: $00
    add b                                         ; $799E: $80
    nop                                           ; $799F: $00
    inc bc                                        ; $79A0: $03
    nop                                           ; $79A1: $00
    rlca                                          ; $79A2: $07
    inc bc                                        ; $79A3: $03
    inc c                                         ; $79A4: $0C
    rlca                                          ; $79A5: $07
    inc c                                         ; $79A6: $0C
    rlca                                          ; $79A7: $07
    jr jr_012_79B9                                ; $79A8: $18 $0F

    jr jr_012_79BB                                ; $79AA: $18 $0F

    rra                                           ; $79AC: $1F
    nop                                           ; $79AD: $00
    nop                                           ; $79AE: $00
    nop                                           ; $79AF: $00
    nop                                           ; $79B0: $00
    nop                                           ; $79B1: $00
    nop                                           ; $79B2: $00
    nop                                           ; $79B3: $00
    nop                                           ; $79B4: $00
    nop                                           ; $79B5: $00
    nop                                           ; $79B6: $00
    nop                                           ; $79B7: $00
    nop                                           ; $79B8: $00

jr_012_79B9:
    nop                                           ; $79B9: $00
    nop                                           ; $79BA: $00

jr_012_79BB:
    nop                                           ; $79BB: $00
    nop                                           ; $79BC: $00
    nop                                           ; $79BD: $00
    nop                                           ; $79BE: $00
    nop                                           ; $79BF: $00
    nop                                           ; $79C0: $00
    nop                                           ; $79C1: $00
    nop                                           ; $79C2: $00
    nop                                           ; $79C3: $00
    nop                                           ; $79C4: $00
    nop                                           ; $79C5: $00
    nop                                           ; $79C6: $00
    nop                                           ; $79C7: $00
    rrca                                          ; $79C8: $0F
    nop                                           ; $79C9: $00
    db $10                                        ; $79CA: $10
    rrca                                          ; $79CB: $0F
    rra                                           ; $79CC: $1F
    rrca                                          ; $79CD: $0F
    rra                                           ; $79CE: $1F
    rrca                                          ; $79CF: $0F
    rrca                                          ; $79D0: $0F
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
    ld bc, $0100                                  ; $79DC: $01 $00 $01
    nop                                           ; $79DF: $00
    nop                                           ; $79E0: $00
    nop                                           ; $79E1: $00
    nop                                           ; $79E2: $00
    nop                                           ; $79E3: $00
    nop                                           ; $79E4: $00
    nop                                           ; $79E5: $00
    nop                                           ; $79E6: $00
    nop                                           ; $79E7: $00
    ld bc, $FE00                                  ; $79E8: $01 $00 $FE
    ld bc, $BDC7                                  ; $79EB: $01 $C7 $BD
    rst RST_38                                    ; $79EE: $FF
    nop                                           ; $79EF: $00
    rlca                                          ; $79F0: $07
    nop                                           ; $79F1: $00
    add hl, bc                                    ; $79F2: $09
    ld b, $17                                     ; $79F3: $06 $17
    ld c, $3F                                     ; $79F5: $0E $3F
    ld [$227F], sp                                ; $79F7: $08 $7F $22
    rst RST_30                                    ; $79FA: $F7
    ld b, d                                       ; $79FB: $42
    ld [hl], l                                    ; $79FC: $75
    add d                                         ; $79FD: $82
    or e                                          ; $79FE: $B3
    nop                                           ; $79FF: $00
    nop                                           ; $7A00: $00
    nop                                           ; $7A01: $00
    nop                                           ; $7A02: $00
    nop                                           ; $7A03: $00
    nop                                           ; $7A04: $00
    nop                                           ; $7A05: $00
    nop                                           ; $7A06: $00
    nop                                           ; $7A07: $00
    nop                                           ; $7A08: $00
    nop                                           ; $7A09: $00
    nop                                           ; $7A0A: $00
    nop                                           ; $7A0B: $00
    ldh a, [rP1]                                  ; $7A0C: $F0 $00
    add hl, bc                                    ; $7A0E: $09
    ldh a, [$FFFE]                                ; $7A0F: $F0 $FE
    ld sp, hl                                     ; $7A11: $F9
    rst RST_38                                    ; $7A12: $FF
    ld sp, hl                                     ; $7A13: $F9
    rst RST_38                                    ; $7A14: $FF
    dec b                                         ; $7A15: $05
    ld bc, $FFFE                                  ; $7A16: $01 $FE $FF
    cp $FF                                        ; $7A19: $FE $FF
    cp $FF                                        ; $7A1B: $FE $FF
    cp $FE                                        ; $7A1D: $FE $FE
    nop                                           ; $7A1F: $00
    inc bc                                        ; $7A20: $03
    nop                                           ; $7A21: $00
    ld [bc], a                                    ; $7A22: $02
    ld bc, $0102                                  ; $7A23: $01 $02 $01
    rlca                                          ; $7A26: $07
    nop                                           ; $7A27: $00
    rst RST_38                                    ; $7A28: $FF
    inc bc                                        ; $7A29: $03
    rlca                                          ; $7A2A: $07
    db $FC                                        ; $7A2B: $FC
    xor [hl]                                      ; $7A2C: $AE
    db $FD                                        ; $7A2D: $FD
    rst RST_38                                    ; $7A2E: $FF
    db $FD                                        ; $7A2F: $FD
    rst RST_38                                    ; $7A30: $FF
    ldh a, [$FFF7]                                ; $7A31: $F0 $F7
    ld l, h                                       ; $7A33: $6C
    ld [hl], l                                    ; $7A34: $75
    xor e                                         ; $7A35: $AB
    scf                                           ; $7A36: $37
    set 7, a                                      ; $7A37: $CB $FF
    inc b                                         ; $7A39: $04
    inc b                                         ; $7A3A: $04
    inc bc                                        ; $7A3B: $03
    inc bc                                        ; $7A3C: $03
    nop                                           ; $7A3D: $00
    inc bc                                        ; $7A3E: $03
    nop                                           ; $7A3F: $00
    db $F4                                        ; $7A40: $F4
    nop                                           ; $7A41: $00
    ld a, [$FA74]                                 ; $7A42: $FA $74 $FA
    inc b                                         ; $7A45: $04
    ld a, [$FFF4]                                 ; $7A46: $FA $F4 $FF
    db $10                                        ; $7A49: $10
    ld [hl], $CD                                  ; $7A4A: $36 $CD
    cp $2D                                        ; $7A4C: $FE $2D
    ld a, a                                       ; $7A4E: $7F
    and e                                         ; $7A4F: $A3
    rst RST_38                                    ; $7A50: $FF
    dec de                                        ; $7A51: $1B
    rst RST_18                                    ; $7A52: $DF
    db $EB                                        ; $7A53: $EB
    rst RST_18                                    ; $7A54: $DF
    ld l, b                                       ; $7A55: $68
    db $DB                                        ; $7A56: $DB
    ld h, [hl]                                    ; $7A57: $66
    ei                                            ; $7A58: $FB
    add h                                         ; $7A59: $84

jr_012_7A5A:
    ld a, l                                       ; $7A5A: $7D
    or e                                          ; $7A5B: $B3

jr_012_7A5C:
    db $FD                                        ; $7A5C: $FD
    ld l, d                                       ; $7A5D: $6A
    cp $01                                        ; $7A5E: $FE $01
    nop                                           ; $7A60: $00
    nop                                           ; $7A61: $00
    nop                                           ; $7A62: $00
    nop                                           ; $7A63: $00
    nop                                           ; $7A64: $00
    nop                                           ; $7A65: $00
    nop                                           ; $7A66: $00
    nop                                           ; $7A67: $00
    db $FC                                        ; $7A68: $FC
    nop                                           ; $7A69: $00
    ld b, $FC                                     ; $7A6A: $06 $FC
    xor e                                         ; $7A6C: $AB
    cp $FF                                        ; $7A6D: $FE $FF
    cp $FF                                        ; $7A6F: $FE $FF
    cp $FE                                        ; $7A71: $FE $FE
    ldh a, [$FFF0]                                ; $7A73: $F0 $F0
    ld h, b                                       ; $7A75: $60
    ld hl, sp-$80                                 ; $7A76: $F8 $80
    db $FC                                        ; $7A78: $FC
    ret c                                         ; $7A79: $D8

    cp $6C                                        ; $7A7A: $FE $6C
    cp $6C                                        ; $7A7C: $FE $6C
    cp $9C                                        ; $7A7E: $FE $9C
    ld bc, $0200                                  ; $7A80: $01 $00 $02
    ld bc, $0304                                  ; $7A83: $01 $04 $03
    rra                                           ; $7A86: $1F
    nop                                           ; $7A87: $00
    inc h                                         ; $7A88: $24
    dec de                                        ; $7A89: $1B
    ld e, a                                       ; $7A8A: $5F
    dec sp                                        ; $7A8B: $3B
    ld e, a                                       ; $7A8C: $5F
    inc a                                         ; $7A8D: $3C
    cp a                                          ; $7A8E: $BF
    ld a, a                                       ; $7A8F: $7F
    cp a                                          ; $7A90: $BF
    ld a, a                                       ; $7A91: $7F
    rst RST_38                                    ; $7A92: $FF
    ld a, [hl]                                    ; $7A93: $7E
    cp $18                                        ; $7A94: $FE $18
    ld a, b                                       ; $7A96: $78
    add b                                         ; $7A97: $80
    jr nc, jr_012_7A5A                            ; $7A98: $30 $C0

    jr nz, jr_012_7A5C                            ; $7A9A: $20 $C0

    ldh [rP1], a                                  ; $7A9C: $E0 $00
    nop                                           ; $7A9E: $00
    nop                                           ; $7A9F: $00
    rst RST_38                                    ; $7AA0: $FF
    ld a, $3E                                     ; $7AA1: $3E $3E
    db $DD                                        ; $7AA3: $DD
    inc e                                         ; $7AA4: $1C
    db $EB                                        ; $7AA5: $EB

jr_012_7AA6:
    inc e                                         ; $7AA6: $1C
    db $E3                                        ; $7AA7: $E3
    and e                                         ; $7AA8: $A3
    ld b, b                                       ; $7AA9: $40
    jp nz, $8201                                  ; $7AAA: $C2 $01 $82

    ld bc, $0182                                  ; $7AAD: $01 $82 $01
    add c                                         ; $7AB0: $81
    nop                                           ; $7AB1: $00
    ld bc, $0000                                  ; $7AB2: $01 $00 $00
    nop                                           ; $7AB5: $00
    ld bc, $0100                                  ; $7AB6: $01 $00 $01
    nop                                           ; $7AB9: $00
    ld bc, $0000                                  ; $7ABA: $01 $00 $00
    nop                                           ; $7ABD: $00
    nop                                           ; $7ABE: $00
    nop                                           ; $7ABF: $00
    rst RST_38                                    ; $7AC0: $FF
    ld c, $2E                                     ; $7AC1: $0E $2E
    ret nz                                        ; $7AC3: $C0

    jr jr_012_7AA6                                ; $7AC4: $18 $E0

    inc [hl]                                      ; $7AC6: $34
    ret c                                         ; $7AC7: $D8

    db $FC                                        ; $7AC8: $FC
    jr jr_012_7B47                                ; $7AC9: $18 $7C

    ldh [$FFFC], a                                ; $7ACB: $E0 $FC
    ld hl, sp-$04                                 ; $7ACD: $F8 $FC
    ld hl, sp-$08                                 ; $7ACF: $F8 $F8
    ldh a, [$FFF8]                                ; $7AD1: $F0 $F8
    ldh a, [$FFFC]                                ; $7AD3: $F0 $FC
    nop                                           ; $7AD5: $00
    ldh a, [c]                                    ; $7AD6: $F2
    db $EC                                        ; $7AD7: $EC
    pop hl                                        ; $7AD8: $E1
    sbc $FF                                       ; $7AD9: $DE $FF
    nop                                           ; $7ADB: $00
    nop                                           ; $7ADC: $00
    nop                                           ; $7ADD: $00
    nop                                           ; $7ADE: $00
    nop                                           ; $7ADF: $00
    ld bc, $0200                                  ; $7AE0: $01 $00 $02
    ld bc, $0304                                  ; $7AE3: $01 $04 $03
    inc b                                         ; $7AE6: $04
    inc bc                                        ; $7AE7: $03
    rlca                                          ; $7AE8: $07
    nop                                           ; $7AE9: $00
    nop                                           ; $7AEA: $00
    nop                                           ; $7AEB: $00
    nop                                           ; $7AEC: $00
    nop                                           ; $7AED: $00
    nop                                           ; $7AEE: $00
    nop                                           ; $7AEF: $00
    nop                                           ; $7AF0: $00
    nop                                           ; $7AF1: $00
    nop                                           ; $7AF2: $00
    nop                                           ; $7AF3: $00
    nop                                           ; $7AF4: $00
    nop                                           ; $7AF5: $00
    nop                                           ; $7AF6: $00
    nop                                           ; $7AF7: $00
    nop                                           ; $7AF8: $00
    nop                                           ; $7AF9: $00
    nop                                           ; $7AFA: $00
    nop                                           ; $7AFB: $00
    nop                                           ; $7AFC: $00
    nop                                           ; $7AFD: $00
    nop                                           ; $7AFE: $00
    nop                                           ; $7AFF: $00
    nop                                           ; $7B00: $00
    nop                                           ; $7B01: $00
    nop                                           ; $7B02: $00
    nop                                           ; $7B03: $00
    nop                                           ; $7B04: $00
    nop                                           ; $7B05: $00
    nop                                           ; $7B06: $00
    nop                                           ; $7B07: $00
    inc a                                         ; $7B08: $3C
    nop                                           ; $7B09: $00
    ld b, e                                       ; $7B0A: $43
    inc a                                         ; $7B0B: $3C
    ld b, c                                       ; $7B0C: $41
    ld a, $43                                     ; $7B0D: $3E $43
    inc a                                         ; $7B0F: $3C
    inc a                                         ; $7B10: $3C
    nop                                           ; $7B11: $00
    nop                                           ; $7B12: $00
    nop                                           ; $7B13: $00
    nop                                           ; $7B14: $00
    nop                                           ; $7B15: $00
    nop                                           ; $7B16: $00
    nop                                           ; $7B17: $00
    ld bc, $0200                                  ; $7B18: $01 $00 $02
    ld bc, $0205                                  ; $7B1B: $01 $05 $02
    ld b, $00                                     ; $7B1E: $06 $00
    nop                                           ; $7B20: $00
    nop                                           ; $7B21: $00
    nop                                           ; $7B22: $00
    nop                                           ; $7B23: $00
    nop                                           ; $7B24: $00
    nop                                           ; $7B25: $00
    inc bc                                        ; $7B26: $03
    nop                                           ; $7B27: $00
    inc b                                         ; $7B28: $04
    inc bc                                        ; $7B29: $03
    ld hl, sp+$07                                 ; $7B2A: $F8 $07
    ld [$FFF7], sp                                ; $7B2C: $08 $F7 $FF
    nop                                           ; $7B2F: $00
    inc e                                         ; $7B30: $1C
    inc bc                                        ; $7B31: $03
    inc h                                         ; $7B32: $24
    dec de                                        ; $7B33: $1B
    ld c, h                                       ; $7B34: $4C
    dec sp                                        ; $7B35: $3B
    rst RST_18                                    ; $7B36: $DF
    inc hl                                        ; $7B37: $23
    ld a, a                                       ; $7B38: $7F
    adc b                                         ; $7B39: $88
    call c, $D408                                 ; $7B3A: $DC $08 $D4
    ld [$00CC], sp                                ; $7B3D: $08 $CC $00
    nop                                           ; $7B40: $00
    nop                                           ; $7B41: $00
    nop                                           ; $7B42: $00
    nop                                           ; $7B43: $00
    nop                                           ; $7B44: $00
    nop                                           ; $7B45: $00
    nop                                           ; $7B46: $00

jr_012_7B47:
    nop                                           ; $7B47: $00
    nop                                           ; $7B48: $00
    nop                                           ; $7B49: $00
    nop                                           ; $7B4A: $00
    nop                                           ; $7B4B: $00
    jp $2400                                      ; $7B4C: $C3 $00 $24


    jp $E738                                      ; $7B4F: $C3 $38 $E7


    jr c, @-$17                                   ; $7B52: $38 $E7

    ld hl, sp+$17                                 ; $7B54: $F8 $17
    rlca                                          ; $7B56: $07
    ld sp, hl                                     ; $7B57: $F9
    dec c                                         ; $7B58: $0D
    ld a, [$FB0C]                                 ; $7B59: $FA $0C $FB
    rst RST_38                                    ; $7B5C: $FF
    ld hl, sp-$08                                 ; $7B5D: $F8 $F8
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
    rrca                                          ; $7B6A: $0F
    nop                                           ; $7B6B: $00
    dec bc                                        ; $7B6C: $0B
    dec b                                         ; $7B6D: $05
    dec bc                                        ; $7B6E: $0B
    inc b                                         ; $7B6F: $04
    rra                                           ; $7B70: $1F
    inc bc                                        ; $7B71: $03
    rst RST_38                                    ; $7B72: $FF
    inc c                                         ; $7B73: $0C
    inc e                                         ; $7B74: $1C
    di                                            ; $7B75: $F3
    dec de                                        ; $7B76: $1B
    db $F4                                        ; $7B77: $F4
    dec e                                         ; $7B78: $1D
    or $7F                                        ; $7B79: $F6 $7F
    ret nz                                        ; $7B7B: $C0

    rst RST_18                                    ; $7B7C: $DF
    or e                                          ; $7B7D: $B3
    rst RST_10                                    ; $7B7E: $D7
    xor l                                         ; $7B7F: $AD
    ret nc                                        ; $7B80: $D0

    nop                                           ; $7B81: $00
    add sp, -$30                                  ; $7B82: $E8 $D0
    add sp, $10                                   ; $7B84: $E8 $10
    add sp, -$30                                  ; $7B86: $E8 $D0
    rst RST_38                                    ; $7B88: $FF
    ld b, b                                       ; $7B89: $40
    ret c                                         ; $7B8A: $D8

    scf                                           ; $7B8B: $37
    ld a, [$FFB7]                                 ; $7B8C: $FA $B7 $FF
    adc a                                         ; $7B8F: $8F
    rst RST_38                                    ; $7B90: $FF
    ld l, a                                       ; $7B91: $6F
    ld a, a                                       ; $7B92: $7F
    xor a                                         ; $7B93: $AF
    ld a, a                                       ; $7B94: $7F
    and c                                         ; $7B95: $A1
    ld l, a                                       ; $7B96: $6F
    sbc d                                         ; $7B97: $9A

jr_012_7B98:
    rst RST_28                                    ; $7B98: $EF

jr_012_7B99:
    inc de                                        ; $7B99: $13
    rst RST_30                                    ; $7B9A: $F7
    call $A9F7                                    ; $7B9B: $CD $F7 $A9
    ei                                            ; $7B9E: $FB
    ld b, $00                                     ; $7B9F: $06 $00
    nop                                           ; $7BA1: $00
    nop                                           ; $7BA2: $00
    nop                                           ; $7BA3: $00
    ldh a, [rP1]                                  ; $7BA4: $F0 $00
    jr jr_012_7B98                                ; $7BA6: $18 $F0

    xor h                                         ; $7BA8: $AC
    ld hl, sp-$04                                 ; $7BA9: $F8 $FC
    ld hl, sp-$04                                 ; $7BAB: $F8 $FC
    ld hl, sp-$08                                 ; $7BAD: $F8 $F8
    ret nz                                        ; $7BAF: $C0

    ret nz                                        ; $7BB0: $C0

    add b                                         ; $7BB1: $80
    ldh [rP1], a                                  ; $7BB2: $E0 $00
    ldh a, [$FF60]                                ; $7BB4: $F0 $60
    ld hl, sp-$50                                 ; $7BB6: $F8 $B0
    ld hl, sp-$50                                 ; $7BB8: $F8 $B0
    ld hl, sp+$70                                 ; $7BBA: $F8 $70
    ldh a, [$FFE0]                                ; $7BBC: $F0 $E0
    ldh [rP1], a                                  ; $7BBE: $E0 $00
    rst RST_18                                    ; $7BC0: $DF
    dec l                                         ; $7BC1: $2D
    rst RST_38                                    ; $7BC2: $FF
    ld [de], a                                    ; $7BC3: $12
    ld de, $0F0E                                  ; $7BC4: $11 $0E $0F
    ld bc, $000F                                  ; $7BC7: $01 $0F $00
    rra                                           ; $7BCA: $1F
    inc bc                                        ; $7BCB: $03
    inc hl                                        ; $7BCC: $23
    dec e                                         ; $7BCD: $1D
    ld b, c                                       ; $7BCE: $41
    ld a, $F1                                     ; $7BCF: $3E $F1
    ld c, $4A                                     ; $7BD1: $0E $4A
    or h                                          ; $7BD3: $B4
    ld e, h                                       ; $7BD4: $5C
    or b                                          ; $7BD5: $B0
    ld a, b                                       ; $7BD6: $78
    ret nz                                        ; $7BD7: $C0

    ld hl, sp-$10                                 ; $7BD8: $F8 $F0
    ldh a, [$FFE0]                                ; $7BDA: $F0 $E0
    ldh [$FFC0], a                                ; $7BDC: $E0 $C0
    ret nz                                        ; $7BDE: $C0

    nop                                           ; $7BDF: $00
    rst RST_38                                    ; $7BE0: $FF
    ldh [$FFE2], a                                ; $7BE1: $E0 $E2
    call c, $BEC1                                 ; $7BE3: $DC $C1 $BE
    jp Jump_000_3F3D                              ; $7BE6: $C3 $3D $3F


    ld bc, $1E27                                  ; $7BE9: $01 $27 $1E
    ld e, a                                       ; $7BEC: $5F
    ccf                                           ; $7BED: $3F
    ld e, a                                       ; $7BEE: $5F
    ccf                                           ; $7BEF: $3F
    ccf                                           ; $7BF0: $3F
    ld e, $3F                                     ; $7BF1: $1E $3F
    ld e, $1F                                     ; $7BF3: $1E $1F
    nop                                           ; $7BF5: $00

jr_012_7BF6:
    ld a, $1D                                     ; $7BF6: $3E $1D
    inc a                                         ; $7BF8: $3C
    dec de                                        ; $7BF9: $1B
    ccf                                           ; $7BFA: $3F
    nop                                           ; $7BFB: $00
    nop                                           ; $7BFC: $00
    nop                                           ; $7BFD: $00
    nop                                           ; $7BFE: $00
    nop                                           ; $7BFF: $00
    ld bc, $0200                                  ; $7C00: $01 $00 $02
    ld bc, $0304                                  ; $7C03: $01 $04 $03
    ld [$0907], sp                                ; $7C06: $08 $07 $09
    rlca                                          ; $7C09: $07
    inc de                                        ; $7C0A: $13
    rrca                                          ; $7C0B: $0F
    rla                                           ; $7C0C: $17
    rrca                                          ; $7C0D: $0F
    ccf                                           ; $7C0E: $3F
    inc bc                                        ; $7C0F: $03
    ld c, a                                       ; $7C10: $4F
    jr nc, jr_012_7B99                            ; $7C11: $30 $86

    ld a, b                                       ; $7C13: $78
    add h                                         ; $7C14: $84
    ld a, b                                       ; $7C15: $78
    db $FC                                        ; $7C16: $FC
    nop                                           ; $7C17: $00
    nop                                           ; $7C18: $00
    nop                                           ; $7C19: $00
    nop                                           ; $7C1A: $00
    nop                                           ; $7C1B: $00
    nop                                           ; $7C1C: $00
    nop                                           ; $7C1D: $00
    nop                                           ; $7C1E: $00
    nop                                           ; $7C1F: $00
    add b                                         ; $7C20: $80
    nop                                           ; $7C21: $00
    ld b, b                                       ; $7C22: $40
    add b                                         ; $7C23: $80
    ret nz                                        ; $7C24: $C0

    add b                                         ; $7C25: $80
    ret nz                                        ; $7C26: $C0

    nop                                           ; $7C27: $00
    ret nz                                        ; $7C28: $C0

    add b                                         ; $7C29: $80
    add b                                         ; $7C2A: $80
    nop                                           ; $7C2B: $00
    nop                                           ; $7C2C: $00
    nop                                           ; $7C2D: $00
    nop                                           ; $7C2E: $00
    nop                                           ; $7C2F: $00
    add b                                         ; $7C30: $80
    nop                                           ; $7C31: $00
    ld b, b                                       ; $7C32: $40
    add b                                         ; $7C33: $80
    jr nz, jr_012_7BF6                            ; $7C34: $20 $C0

    ldh [rP1], a                                  ; $7C36: $E0 $00
    nop                                           ; $7C38: $00
    nop                                           ; $7C39: $00
    nop                                           ; $7C3A: $00
    nop                                           ; $7C3B: $00
    nop                                           ; $7C3C: $00
    nop                                           ; $7C3D: $00
    nop                                           ; $7C3E: $00
    nop                                           ; $7C3F: $00
    nop                                           ; $7C40: $00
    nop                                           ; $7C41: $00
    nop                                           ; $7C42: $00
    nop                                           ; $7C43: $00
    ld bc, $0100                                  ; $7C44: $01 $00 $01
    nop                                           ; $7C47: $00
    ld bc, $0100                                  ; $7C48: $01 $00 $01
    nop                                           ; $7C4B: $00
    ld bc, $0300                                  ; $7C4C: $01 $00 $03
    nop                                           ; $7C4F: $00
    inc b                                         ; $7C50: $04
    inc bc                                        ; $7C51: $03
    ld a, [bc]                                    ; $7C52: $0A
    rlca                                          ; $7C53: $07
    rla                                           ; $7C54: $17
    rrca                                          ; $7C55: $0F
    daa                                           ; $7C56: $27
    inc e                                         ; $7C57: $1C
    cpl                                           ; $7C58: $2F
    jr jr_012_7C89                                ; $7C59: $18 $2E

    add hl, de                                    ; $7C5B: $19
    ld e, $09                                     ; $7C5C: $1E $09
    rrca                                          ; $7C5E: $0F
    nop                                           ; $7C5F: $00
    inc c                                         ; $7C60: $0C
    nop                                           ; $7C61: $00
    ccf                                           ; $7C62: $3F
    inc c                                         ; $7C63: $0C
    ld a, a                                       ; $7C64: $7F
    jr nc, @+$01                                  ; $7C65: $30 $FF

    ld b, b                                       ; $7C67: $40
    rst RST_28                                    ; $7C68: $EF
    rst RST_10                                    ; $7C69: $D7
    rst RST_28                                    ; $7C6A: $EF
    sub b                                         ; $7C6B: $90
    rst RST_38                                    ; $7C6C: $FF
    adc a                                         ; $7C6D: $8F
    rst RST_38                                    ; $7C6E: $FF
    or c                                          ; $7C6F: $B1
    di                                            ; $7C70: $F3
    inc c                                         ; $7C71: $0C
    cpl                                           ; $7C72: $2F
    jp nc, $DAB7                                  ; $7C73: $D2 $B7 $DA

    rst RST_38                                    ; $7C76: $FF
    ldh [$FFF7], a                                ; $7C77: $E0 $F7
    xor $F7                                       ; $7C79: $EE $F7
    dec c                                         ; $7C7B: $0D
    scf                                           ; $7C7C: $37
    call $E01F                                    ; $7C7D: $CD $1F $E0
    nop                                           ; $7C80: $00
    nop                                           ; $7C81: $00
    inc e                                         ; $7C82: $1C
    nop                                           ; $7C83: $00
    inc hl                                        ; $7C84: $23
    inc e                                         ; $7C85: $1C
    ld e, h                                       ; $7C86: $5C
    daa                                           ; $7C87: $27
    ld h, a                                       ; $7C88: $67

jr_012_7C89:
    dec de                                        ; $7C89: $1B
    adc a                                         ; $7C8A: $8F
    ld a, l                                       ; $7C8B: $7D
    add a                                         ; $7C8C: $87
    db $FD                                        ; $7C8D: $FD
    rra                                           ; $7C8E: $1F
    db $FD                                        ; $7C8F: $FD
    rst RST_28                                    ; $7C90: $EF
    ld a, h                                       ; $7C91: $7C
    rst RST_38                                    ; $7C92: $FF
    dec a                                         ; $7C93: $3D
    rst RST_38                                    ; $7C94: $FF
    reti                                          ; $7C95: $D9


    cp $19                                        ; $7C96: $FE $19
    ld a, c                                       ; $7C98: $79
    ret nz                                        ; $7C99: $C0

    add sp, -$30                                  ; $7C9A: $E8 $D0
    add sp, $10                                   ; $7C9C: $E8 $10
    ret nc                                        ; $7C9E: $D0

    ldh [rP1], a                                  ; $7C9F: $E0 $00
    nop                                           ; $7CA1: $00
    ret nz                                        ; $7CA2: $C0

    nop                                           ; $7CA3: $00
    jr nz, @-$3E                                  ; $7CA4: $20 $C0

    ret nc                                        ; $7CA6: $D0

    ldh [$FFF8], a                                ; $7CA7: $E0 $F8
    ret nc                                        ; $7CA9: $D0

    db $FC                                        ; $7CAA: $FC

jr_012_7CAB:
    or b                                          ; $7CAB: $B0
    cp $64                                        ; $7CAC: $FE $64
    cp $18                                        ; $7CAE: $FE $18
    sbc h                                         ; $7CB0: $9C
    ld [$048A], sp                                ; $7CB1: $08 $8A $04
    ld b, $00                                     ; $7CB4: $06 $00
    nop                                           ; $7CB6: $00
    nop                                           ; $7CB7: $00
    nop                                           ; $7CB8: $00
    nop                                           ; $7CB9: $00
    nop                                           ; $7CBA: $00
    nop                                           ; $7CBB: $00
    nop                                           ; $7CBC: $00
    nop                                           ; $7CBD: $00
    add b                                         ; $7CBE: $80
    nop                                           ; $7CBF: $00
    db $10                                        ; $7CC0: $10
    rst RST_28                                    ; $7CC1: $EF
    rra                                           ; $7CC2: $1F
    rst RST_28                                    ; $7CC3: $EF
    rst RST_18                                    ; $7CC4: $DF
    cpl                                           ; $7CC5: $2F
    ccf                                           ; $7CC6: $3F
    rrca                                          ; $7CC7: $0F
    rra                                           ; $7CC8: $1F
    rrca                                          ; $7CC9: $0F
    cpl                                           ; $7CCA: $2F
    db $10                                        ; $7CCB: $10
    ld hl, $631E                                  ; $7CCC: $21 $1E $63
    dec e                                         ; $7CCF: $1D
    ld [hl], e                                    ; $7CD0: $73
    dec l                                         ; $7CD1: $2D
    ld a, a                                       ; $7CD2: $7F
    inc hl                                        ; $7CD3: $23
    cpl                                           ; $7CD4: $2F
    ld a, [de]                                    ; $7CD5: $1A
    ld a, $18                                     ; $7CD6: $3E $18
    jr jr_012_7CDA                                ; $7CD8: $18 $00

jr_012_7CDA:
    nop                                           ; $7CDA: $00
    nop                                           ; $7CDB: $00
    nop                                           ; $7CDC: $00
    nop                                           ; $7CDD: $00
    nop                                           ; $7CDE: $00
    nop                                           ; $7CDF: $00
    rst RST_10                                    ; $7CE0: $D7
    ld h, b                                       ; $7CE1: $60
    ld e, h                                       ; $7CE2: $5C
    and a                                         ; $7CE3: $A7
    rst RST_38                                    ; $7CE4: $FF
    adc h                                         ; $7CE5: $8C
    rst RST_08                                    ; $7CE6: $CF
    jr nc, @+$81                                  ; $7CE7: $30 $7F

    cp e                                          ; $7CE9: $BB
    rst RST_38                                    ; $7CEA: $FF
    ret c                                         ; $7CEB: $D8

    rst RST_38                                    ; $7CEC: $FF
    ret c                                         ; $7CED: $D8

    cp $DB                                        ; $7CEE: $FE $DB
    rst RST_38                                    ; $7CF0: $FF
    add b                                         ; $7CF1: $80
    ret nz                                        ; $7CF2: $C0

    ccf                                           ; $7CF3: $3F
    pop hl                                        ; $7CF4: $E1
    sbc [hl]                                      ; $7CF5: $9E
    sbc d                                         ; $7CF6: $9A
    dec b                                         ; $7CF7: $05
    add a                                         ; $7CF8: $87
    ld bc, $0083                                  ; $7CF9: $01 $83 $00
    inc bc                                        ; $7CFC: $03
    ld bc, $0001                                  ; $7CFD: $01 $01 $00
    add b                                         ; $7D00: $80
    nop                                           ; $7D01: $00
    ld b, b                                       ; $7D02: $40
    add b                                         ; $7D03: $80
    add b                                         ; $7D04: $80
    nop                                           ; $7D05: $00
    nop                                           ; $7D06: $00
    nop                                           ; $7D07: $00
    add b                                         ; $7D08: $80
    nop                                           ; $7D09: $00
    nop                                           ; $7D0A: $00
    nop                                           ; $7D0B: $00
    add b                                         ; $7D0C: $80
    nop                                           ; $7D0D: $00
    ldh a, [rP1]                                  ; $7D0E: $F0 $00
    ret z                                         ; $7D10: $C8

    or b                                          ; $7D11: $B0
    db $F4                                        ; $7D12: $F4
    cp b                                          ; $7D13: $B8
    ld a, [$FF7C]                                 ; $7D14: $FA $7C $FF
    cp $FF                                        ; $7D17: $FE $FF
    db $FC                                        ; $7D19: $FC
    rst RST_38                                    ; $7D1A: $FF
    jr c, jr_012_7D5C                             ; $7D1B: $38 $3F

    nop                                           ; $7D1D: $00
    ld b, $01                                     ; $7D1E: $06 $01
    ldh [rP1], a                                  ; $7D20: $E0 $00
    ldh a, [rP1]                                  ; $7D22: $F0 $00
    ret z                                         ; $7D24: $C8

    jr nc, jr_012_7CAB                            ; $7D25: $30 $84

    ld a, b                                       ; $7D27: $78
    add d                                         ; $7D28: $82
    ld a, h                                       ; $7D29: $7C
    ld b, d                                       ; $7D2A: $42
    inc a                                         ; $7D2B: $3C
    inc a                                         ; $7D2C: $3C
    nop                                           ; $7D2D: $00
    nop                                           ; $7D2E: $00
    nop                                           ; $7D2F: $00
    nop                                           ; $7D30: $00
    nop                                           ; $7D31: $00
    nop                                           ; $7D32: $00
    nop                                           ; $7D33: $00
    nop                                           ; $7D34: $00
    nop                                           ; $7D35: $00
    nop                                           ; $7D36: $00
    nop                                           ; $7D37: $00
    nop                                           ; $7D38: $00
    nop                                           ; $7D39: $00
    nop                                           ; $7D3A: $00
    nop                                           ; $7D3B: $00
    nop                                           ; $7D3C: $00
    nop                                           ; $7D3D: $00
    nop                                           ; $7D3E: $00
    nop                                           ; $7D3F: $00
    nop                                           ; $7D40: $00
    nop                                           ; $7D41: $00
    nop                                           ; $7D42: $00
    nop                                           ; $7D43: $00
    nop                                           ; $7D44: $00
    nop                                           ; $7D45: $00
    nop                                           ; $7D46: $00
    nop                                           ; $7D47: $00
    nop                                           ; $7D48: $00
    nop                                           ; $7D49: $00
    nop                                           ; $7D4A: $00
    nop                                           ; $7D4B: $00
    nop                                           ; $7D4C: $00
    nop                                           ; $7D4D: $00
    nop                                           ; $7D4E: $00
    nop                                           ; $7D4F: $00
    ld bc, $0200                                  ; $7D50: $01 $00 $02
    ld bc, $0305                                  ; $7D53: $01 $05 $03
    rlca                                          ; $7D56: $07
    inc bc                                        ; $7D57: $03
    rlca                                          ; $7D58: $07
    inc bc                                        ; $7D59: $03
    inc bc                                        ; $7D5A: $03
    nop                                           ; $7D5B: $00

jr_012_7D5C:
    ld [$3400], sp                                ; $7D5C: $08 $00 $34
    ld [$0000], sp                                ; $7D5F: $08 $00 $00
    nop                                           ; $7D62: $00
    nop                                           ; $7D63: $00
    nop                                           ; $7D64: $00
    nop                                           ; $7D65: $00
    ld bc, $0700                                  ; $7D66: $01 $00 $07
    nop                                           ; $7D69: $00
    inc b                                         ; $7D6A: $04
    inc bc                                        ; $7D6B: $03
    ld [$0D07], sp                                ; $7D6C: $08 $07 $0D
    rlca                                          ; $7D6F: $07
    rst RST_38                                    ; $7D70: $FF
    ld [bc], a                                    ; $7D71: $02
    rrca                                          ; $7D72: $0F
    ei                                            ; $7D73: $FB
    ld e, a                                       ; $7D74: $5F
    ei                                            ; $7D75: $FB
    rst RST_38                                    ; $7D76: $FF
    ei                                            ; $7D77: $FB
    rst RST_38                                    ; $7D78: $FF
    ldh [$FFEF], a                                ; $7D79: $E0 $EF
    reti                                          ; $7D7B: $D9


    db $EB                                        ; $7D7C: $EB
    ld d, [hl]                                    ; $7D7D: $56
    rst RST_28                                    ; $7D7E: $EF
    ld d, $00                                     ; $7D7F: $16 $00
    nop                                           ; $7D81: $00
    nop                                           ; $7D82: $00
    nop                                           ; $7D83: $00
    ldh [rP1], a                                  ; $7D84: $E0 $00
    cp $E0                                        ; $7D86: $FE $E0
    rst RST_38                                    ; $7D88: $FF
    ld [hl-], a                                   ; $7D89: $32
    cp a                                          ; $7D8A: $BF
    ld d, c                                       ; $7D8B: $51
    ld a, a                                       ; $7D8C: $7F
    sbc c                                         ; $7D8D: $99
    rst RST_38                                    ; $7D8E: $FF
    ld h, c                                       ; $7D8F: $61
    rst RST_28                                    ; $7D90: $EF
    ld e, b                                       ; $7D91: $58
    db $FC                                        ; $7D92: $FC
    ld e, e                                       ; $7D93: $5B
    db $FD                                        ; $7D94: $FD
    add e                                         ; $7D95: $83
    rst RST_38                                    ; $7D96: $FF
    rst RST_00                                    ; $7D97: $C7
    rst RST_38                                    ; $7D98: $FF
    rlca                                          ; $7D99: $07
    cp a                                          ; $7D9A: $BF
    rst RST_10                                    ; $7D9B: $D7
    cp a                                          ; $7D9C: $BF
    db $D3                                        ; $7D9D: $D3
    cp a                                          ; $7D9E: $BF
    ret nc                                        ; $7D9F: $D0

    nop                                           ; $7DA0: $00
    nop                                           ; $7DA1: $00
    nop                                           ; $7DA2: $00
    nop                                           ; $7DA3: $00
    nop                                           ; $7DA4: $00
    nop                                           ; $7DA5: $00
    nop                                           ; $7DA6: $00
    nop                                           ; $7DA7: $00
    nop                                           ; $7DA8: $00
    nop                                           ; $7DA9: $00
    add b                                         ; $7DAA: $80
    nop                                           ; $7DAB: $00
    add b                                         ; $7DAC: $80
    nop                                           ; $7DAD: $00
    ret nz                                        ; $7DAE: $C0

    add b                                         ; $7DAF: $80
    ld hl, sp+$00                                 ; $7DB0: $F8 $00
    inc c                                         ; $7DB2: $0C
    ld hl, sp+$56                                 ; $7DB3: $F8 $56
    db $FC                                        ; $7DB5: $FC
    cp $FC                                        ; $7DB6: $FE $FC
    cp $FC                                        ; $7DB8: $FE $FC
    db $FC                                        ; $7DBA: $FC
    ldh [$FFE4], a                                ; $7DBB: $E0 $E4
    ret nz                                        ; $7DBD: $C0

    db $DB                                        ; $7DBE: $DB
    inc h                                         ; $7DBF: $24
    nop                                           ; $7DC0: $00
    nop                                           ; $7DC1: $00
    nop                                           ; $7DC2: $00
    nop                                           ; $7DC3: $00
    nop                                           ; $7DC4: $00
    nop                                           ; $7DC5: $00
    nop                                           ; $7DC6: $00
    nop                                           ; $7DC7: $00
    inc bc                                        ; $7DC8: $03
    nop                                           ; $7DC9: $00
    ld [hl], d                                    ; $7DCA: $72
    ld bc, $304F                                  ; $7DCB: $01 $4F $30
    ccf                                           ; $7DCE: $3F
    inc c                                         ; $7DCF: $0C
    ld c, $05                                     ; $7DD0: $0E $05
    ccf                                           ; $7DD2: $3F
    ld bc, $3D4F                                  ; $7DD3: $01 $4F $3D
    ld a, a                                       ; $7DD6: $7F
    ld bc, $050F                                  ; $7DD7: $01 $0F $05
    rra                                           ; $7DDA: $1F
    inc c                                         ; $7DDB: $0C
    inc l                                         ; $7DDC: $2C
    db $10                                        ; $7DDD: $10
    jr nc, jr_012_7DE0                            ; $7DDE: $30 $00

jr_012_7DE0:
    inc bc                                        ; $7DE0: $03
    nop                                           ; $7DE1: $00
    ld [bc], a                                    ; $7DE2: $02
    ld bc, $01FB                                  ; $7DE3: $01 $FB $01
    ld a, l                                       ; $7DE6: $7D
    cp b                                          ; $7DE7: $B8
    ld a, a                                       ; $7DE8: $7F
    add b                                         ; $7DE9: $80
    rst RST_38                                    ; $7DEA: $FF
    ld a, h                                       ; $7DEB: $7C
    rst RST_38                                    ; $7DEC: $FF
    adc e                                         ; $7DED: $8B
    sbc a                                         ; $7DEE: $9F
    ld h, e                                       ; $7DEF: $63
    ld h, e                                       ; $7DF0: $63
    sbc l                                         ; $7DF1: $9D
    pop bc                                        ; $7DF2: $C1
    cp [hl]                                       ; $7DF3: $BE
    ld sp, hl                                     ; $7DF4: $F9
    ld a, [hl]                                    ; $7DF5: $7E
    db $FC                                        ; $7DF6: $FC
    adc a                                         ; $7DF7: $8F
    sbc h                                         ; $7DF8: $9C
    ld h, a                                       ; $7DF9: $67
    rrca                                          ; $7DFA: $0F
    or $9F                                        ; $7DFB: $F6 $9F
    ld l, c                                       ; $7DFD: $69
    cp a                                          ; $7DFE: $BF
    ld e, l                                       ; $7DFF: $5D
    nop                                           ; $7E00: $00
    nop                                           ; $7E01: $00
    nop                                           ; $7E02: $00

jr_012_7E03:
    nop                                           ; $7E03: $00
    nop                                           ; $7E04: $00
    nop                                           ; $7E05: $00
    nop                                           ; $7E06: $00
    nop                                           ; $7E07: $00
    nop                                           ; $7E08: $00
    nop                                           ; $7E09: $00
    nop                                           ; $7E0A: $00
    nop                                           ; $7E0B: $00
    nop                                           ; $7E0C: $00
    nop                                           ; $7E0D: $00
    nop                                           ; $7E0E: $00
    nop                                           ; $7E0F: $00
    ret nz                                        ; $7E10: $C0

    nop                                           ; $7E11: $00
    jr nc, @-$3E                                  ; $7E12: $30 $C0

    ld [$84F0], sp                                ; $7E14: $08 $F0 $84
    ld hl, sp-$1C                                 ; $7E17: $F8 $E4
    ld hl, sp-$0E                                 ; $7E19: $F8 $F2
    db $FC                                        ; $7E1B: $FC
    ld a, [$F97C]                                 ; $7E1C: $FA $7C $F9
    cp [hl]                                       ; $7E1F: $BE
    rst RST_18                                    ; $7E20: $DF
    nop                                           ; $7E21: $00
    jr nz, jr_012_7E03                            ; $7E22: $20 $DF

    rst RST_38                                    ; $7E24: $FF
    rst RST_18                                    ; $7E25: $DF
    rst RST_38                                    ; $7E26: $FF
    rst RST_18                                    ; $7E27: $DF
    rst RST_38                                    ; $7E28: $FF
    rst RST_18                                    ; $7E29: $DF
    rst RST_38                                    ; $7E2A: $FF
    sbc $DE                                       ; $7E2B: $DE $DE
    nop                                           ; $7E2D: $00
    inc bc                                        ; $7E2E: $03
    nop                                           ; $7E2F: $00
    rlca                                          ; $7E30: $07
    inc bc                                        ; $7E31: $03
    rra                                           ; $7E32: $1F
    rlca                                          ; $7E33: $07
    rst RST_38                                    ; $7E34: $FF
    rra                                           ; $7E35: $1F
    rst RST_38                                    ; $7E36: $FF
    rst RST_18                                    ; $7E37: $DF
    rst RST_38                                    ; $7E38: $FF
    rst RST_28                                    ; $7E39: $EF
    rst RST_38                                    ; $7E3A: $FF
    db $EC                                        ; $7E3B: $EC
    db $FC                                        ; $7E3C: $FC
    ld h, b                                       ; $7E3D: $60
    ld h, b                                       ; $7E3E: $60
    nop                                           ; $7E3F: $00
    rst RST_18                                    ; $7E40: $DF
    ld b, $87                                     ; $7E41: $06 $87
    ld bc, $00E3                                  ; $7E43: $01 $E3 $00
    call c, $F063                                 ; $7E46: $DC $63 $F0
    ld l, a                                       ; $7E49: $6F
    ldh [$FF9F], a                                ; $7E4A: $E0 $9F
    ret nc                                        ; $7E4C: $D0

    rst RST_28                                    ; $7E4D: $EF
    rst RST_18                                    ; $7E4E: $DF
    ldh [$FF90], a                                ; $7E4F: $E0 $90
    ldh [$FF60], a                                ; $7E51: $E0 $60
    add b                                         ; $7E53: $80
    add b                                         ; $7E54: $80
    nop                                           ; $7E55: $00
    nop                                           ; $7E56: $00
    nop                                           ; $7E57: $00
    nop                                           ; $7E58: $00
    nop                                           ; $7E59: $00
    nop                                           ; $7E5A: $00
    nop                                           ; $7E5B: $00
    nop                                           ; $7E5C: $00
    nop                                           ; $7E5D: $00
    nop                                           ; $7E5E: $00
    nop                                           ; $7E5F: $00
    db $FD                                        ; $7E60: $FD
    cp [hl]                                       ; $7E61: $BE
    db $FD                                        ; $7E62: $FD
    sbc $FF                                       ; $7E63: $DE $FF
    sbc $FF                                       ; $7E65: $DE $FF
    ld l, [hl]                                    ; $7E67: $6E
    cp $6C                                        ; $7E68: $FE $6C
    cp $EC                                        ; $7E6A: $FE $EC
    db $FC                                        ; $7E6C: $FC
    ldh a, [$FFF8]                                ; $7E6D: $F0 $F8

jr_012_7E6F:
    ret nz                                        ; $7E6F: $C0

    db $FC                                        ; $7E70: $FC
    jr c, jr_012_7E6F                             ; $7E71: $38 $FC

    ld hl, sp-$04                                 ; $7E73: $F8 $FC
    jr c, jr_012_7EB3                             ; $7E75: $38 $3C

    ret c                                         ; $7E77: $D8

    inc e                                         ; $7E78: $1C
    add sp, $18                                   ; $7E79: $E8 $18
    ldh [$FF30], a                                ; $7E7B: $E0 $30
    ret nz                                        ; $7E7D: $C0

    ret nz                                        ; $7E7E: $C0

    nop                                           ; $7E7F: $00
    ccf                                           ; $7E80: $3F
    nop                                           ; $7E81: $00
    ld hl, $1B1E                                  ; $7E82: $21 $1E $1B
    dec b                                         ; $7E85: $05
    rlca                                          ; $7E86: $07
    nop                                           ; $7E87: $00
    nop                                           ; $7E88: $00
    nop                                           ; $7E89: $00
    nop                                           ; $7E8A: $00
    nop                                           ; $7E8B: $00
    nop                                           ; $7E8C: $00
    nop                                           ; $7E8D: $00
    nop                                           ; $7E8E: $00
    nop                                           ; $7E8F: $00
    nop                                           ; $7E90: $00
    nop                                           ; $7E91: $00
    nop                                           ; $7E92: $00
    nop                                           ; $7E93: $00
    nop                                           ; $7E94: $00
    nop                                           ; $7E95: $00
    nop                                           ; $7E96: $00
    nop                                           ; $7E97: $00
    nop                                           ; $7E98: $00
    nop                                           ; $7E99: $00
    nop                                           ; $7E9A: $00
    nop                                           ; $7E9B: $00
    nop                                           ; $7E9C: $00
    nop                                           ; $7E9D: $00
    nop                                           ; $7E9E: $00
    nop                                           ; $7E9F: $00
    nop                                           ; $7EA0: $00
    nop                                           ; $7EA1: $00
    nop                                           ; $7EA2: $00
    nop                                           ; $7EA3: $00
    nop                                           ; $7EA4: $00
    nop                                           ; $7EA5: $00
    nop                                           ; $7EA6: $00
    nop                                           ; $7EA7: $00
    nop                                           ; $7EA8: $00
    nop                                           ; $7EA9: $00
    ld bc, $0100                                  ; $7EAA: $01 $00 $01
    nop                                           ; $7EAD: $00
    ld bc, $0300                                  ; $7EAE: $01 $00 $03
    nop                                           ; $7EB1: $00
    inc bc                                        ; $7EB2: $03

jr_012_7EB3:
    ld bc, $0003                                  ; $7EB3: $01 $03 $00
    inc bc                                        ; $7EB6: $03
    nop                                           ; $7EB7: $00
    ld bc, $0000                                  ; $7EB8: $01 $00 $00
    nop                                           ; $7EBB: $00
    add c                                         ; $7EBC: $81
    nop                                           ; $7EBD: $00
    pop bc                                        ; $7EBE: $C1
    add b                                         ; $7EBF: $80
    inc b                                         ; $7EC0: $04
    nop                                           ; $7EC1: $00
    ld a, [de]                                    ; $7EC2: $1A
    inc b                                         ; $7EC3: $04
    dec l                                         ; $7EC4: $2D
    ld a, [de]                                    ; $7EC5: $1A
    ccf                                           ; $7EC6: $3F
    ld [bc], a                                    ; $7EC7: $02
    cpl                                           ; $7EC8: $2F
    dec e                                         ; $7EC9: $1D
    rra                                           ; $7ECA: $1F
    ld bc, $0D17                                  ; $7ECB: $01 $17 $0D
    rrca                                          ; $7ECE: $0F
    inc bc                                        ; $7ECF: $03
    inc bc                                        ; $7ED0: $03
    nop                                           ; $7ED1: $00
    ld bc, $0200                                  ; $7ED2: $01 $00 $02
    ld bc, $0103                                  ; $7ED5: $01 $03 $01
    ld bc, $0000                                  ; $7ED8: $01 $00 $00
    nop                                           ; $7EDB: $00
    nop                                           ; $7EDC: $00
    nop                                           ; $7EDD: $00
    nop                                           ; $7EDE: $00
    nop                                           ; $7EDF: $00
    nop                                           ; $7EE0: $00
    nop                                           ; $7EE1: $00
    nop                                           ; $7EE2: $00
    nop                                           ; $7EE3: $00
    nop                                           ; $7EE4: $00
    nop                                           ; $7EE5: $00
    nop                                           ; $7EE6: $00
    nop                                           ; $7EE7: $00
    nop                                           ; $7EE8: $00
    nop                                           ; $7EE9: $00
    nop                                           ; $7EEA: $00
    nop                                           ; $7EEB: $00

jr_012_7EEC:
    inc bc                                        ; $7EEC: $03
    nop                                           ; $7EED: $00
    rra                                           ; $7EEE: $1F
    nop                                           ; $7EEF: $00
    inc l                                         ; $7EF0: $2C
    rla                                           ; $7EF1: $17
    cpl                                           ; $7EF2: $2F
    db $10                                        ; $7EF3: $10
    ld a, b                                       ; $7EF4: $78
    rrca                                          ; $7EF5: $0F
    ld a, [hl]                                    ; $7EF6: $7E
    ld sp, $0C33                                  ; $7EF7: $31 $33 $0C

jr_012_7EFA:
    cpl                                           ; $7EFA: $2F
    ld [de], a                                    ; $7EFB: $12
    scf                                           ; $7EFC: $37
    ld a, [de]                                    ; $7EFD: $1A
    ld a, a                                       ; $7EFE: $7F
    nop                                           ; $7EFF: $00
    nop                                           ; $7F00: $00
    nop                                           ; $7F01: $00
    nop                                           ; $7F02: $00
    nop                                           ; $7F03: $00
    nop                                           ; $7F04: $00
    nop                                           ; $7F05: $00
    nop                                           ; $7F06: $00
    nop                                           ; $7F07: $00
    nop                                           ; $7F08: $00
    nop                                           ; $7F09: $00
    ldh [rP1], a                                  ; $7F0A: $E0 $00
    ret nc                                        ; $7F0C: $D0

    jr nz, @-$36                                  ; $7F0D: $20 $C8

    jr nc, jr_012_7EFA                            ; $7F0F: $30 $E9

    db $10                                        ; $7F11: $10
    ld l, [hl]                                    ; $7F12: $6E
    sbc c                                         ; $7F13: $99
    ld hl, sp+$07                                 ; $7F14: $F8 $07
    and b                                         ; $7F16: $A0
    rst RST_18                                    ; $7F17: $DF
    jr nz, @-$1F                                  ; $7F18: $20 $DF

    ldh a, [$FF1F]                                ; $7F1A: $F0 $1F
    ldh a, [$FF5F]                                ; $7F1C: $F0 $5F
    reti                                          ; $7F1E: $D9


    ld l, [hl]                                    ; $7F1F: $6E
    nop                                           ; $7F20: $00
    nop                                           ; $7F21: $00
    nop                                           ; $7F22: $00
    nop                                           ; $7F23: $00
    nop                                           ; $7F24: $00
    nop                                           ; $7F25: $00
    nop                                           ; $7F26: $00
    nop                                           ; $7F27: $00
    ret nz                                        ; $7F28: $C0

    nop                                           ; $7F29: $00
    jr nz, jr_012_7EEC                            ; $7F2A: $20 $C0

    db $10                                        ; $7F2C: $10
    ldh [rNR11], a                                ; $7F2D: $E0 $11
    ldh [$FF27], a                                ; $7F2F: $E0 $27
    ret nz                                        ; $7F31: $C0

    ld e, c                                       ; $7F32: $59
    add [hl]                                      ; $7F33: $86
    and c                                         ; $7F34: $A1
    ld e, [hl]                                    ; $7F35: $5E
    ld hl, $20DE                                  ; $7F36: $21 $DE $20
    rst RST_18                                    ; $7F39: $DF
    ldh [$FF1F], a                                ; $7F3A: $E0 $1F
    db $10                                        ; $7F3C: $10
    rrca                                          ; $7F3D: $0F
    rrca                                          ; $7F3E: $0F
    nop                                           ; $7F3F: $00
    nop                                           ; $7F40: $00
    nop                                           ; $7F41: $00
    nop                                           ; $7F42: $00
    nop                                           ; $7F43: $00
    nop                                           ; $7F44: $00
    nop                                           ; $7F45: $00
    nop                                           ; $7F46: $00
    nop                                           ; $7F47: $00
    nop                                           ; $7F48: $00
    nop                                           ; $7F49: $00
    add b                                         ; $7F4A: $80
    nop                                           ; $7F4B: $00
    ld b, b                                       ; $7F4C: $40
    add b                                         ; $7F4D: $80
    ld b, b                                       ; $7F4E: $40
    add b                                         ; $7F4F: $80
    ld a, [hl]                                    ; $7F50: $7E
    add b                                         ; $7F51: $80
    and c                                         ; $7F52: $A1
    ld e, [hl]                                    ; $7F53: $5E
    ld e, $E0                                     ; $7F54: $1E $E0
    sub d                                         ; $7F56: $92
    ld l, h                                       ; $7F57: $6C
    sbc l                                         ; $7F58: $9D
    ld h, d                                       ; $7F59: $62
    ld l, d                                       ; $7F5A: $6A
    sub b                                         ; $7F5B: $90
    call nc, Call_000_0C08                        ; $7F5C: $D4 $08 $0C
    nop                                           ; $7F5F: $00
    cp e                                          ; $7F60: $BB
    ld l, l                                       ; $7F61: $6D
    ei                                            ; $7F62: $FB
    ld l, l                                       ; $7F63: $6D
    rst RST_38                                    ; $7F64: $FF
    dec de                                        ; $7F65: $1B
    adc a                                         ; $7F66: $8F
    ld [hl], a                                    ; $7F67: $77
    rst RST_38                                    ; $7F68: $FF
    adc [hl]                                      ; $7F69: $8E
    rst RST_38                                    ; $7F6A: $FF
    db $DD                                        ; $7F6B: $DD
    rst RST_38                                    ; $7F6C: $FF
    ldh [rIE], a                                  ; $7F6D: $E0 $FF
    rst RST_20                                    ; $7F6F: $E7
    rst RST_20                                    ; $7F70: $E7
    db $DB                                        ; $7F71: $DB
    jp $813D                                      ; $7F72: $C3 $3D $81


    ld a, [hl]                                    ; $7F75: $7E
    rst RST_00                                    ; $7F76: $C7
    cp c                                          ; $7F77: $B9
    rst RST_18                                    ; $7F78: $DF
    and a                                         ; $7F79: $A7
    rst RST_38                                    ; $7F7A: $FF
    inc e                                         ; $7F7B: $1C
    db $FC                                        ; $7F7C: $FC
    ld a, b                                       ; $7F7D: $78
    ld a, b                                       ; $7F7E: $78
    nop                                           ; $7F7F: $00
    adc $71                                       ; $7F80: $CE $71
    rst RST_00                                    ; $7F82: $C7
    ld a, b                                       ; $7F83: $78

jr_012_7F84:
    call nz, $8878                                ; $7F84: $C4 $78 $88
    ldh a, [$FF30]                                ; $7F87: $F0 $30
    ret nz                                        ; $7F89: $C0

    ret nc                                        ; $7F8A: $D0

    jr nz, jr_012_7FA5                            ; $7F8B: $20 $18

    ldh [$FFA6], a                                ; $7F8D: $E0 $A6
    ret c                                         ; $7F8F: $D8

    pop bc                                        ; $7F90: $C1
    cp [hl]                                       ; $7F91: $BE
    ret nz                                        ; $7F92: $C0

    ccf                                           ; $7F93: $3F
    ldh [$FF5F], a                                ; $7F94: $E0 $5F
    ld sp, hl                                     ; $7F96: $F9
    ld b, $4F                                     ; $7F97: $06 $4F
    jr nc, jr_012_7FC8                            ; $7F99: $30 $2D

    inc de                                        ; $7F9B: $13
    cpl                                           ; $7F9C: $2F
    inc de                                        ; $7F9D: $13
    inc de                                        ; $7F9E: $13
    nop                                           ; $7F9F: $00
    ldh a, [rP1]                                  ; $7FA0: $F0 $00
    adc b                                         ; $7FA2: $88
    ld [hl], b                                    ; $7FA3: $70
    inc b                                         ; $7FA4: $04

jr_012_7FA5:
    ld hl, sp-$7D                                 ; $7FA5: $F8 $83
    db $FC                                        ; $7FA7: $FC
    ldh [c], a                                    ; $7FA8: $E2
    ld a, l                                       ; $7FA9: $7D
    cp $7D                                        ; $7FAA: $FE $7D
    rst RST_38                                    ; $7FAC: $FF
    dec e                                         ; $7FAD: $1D
    rra                                           ; $7FAE: $1F
    ld bc, $0001                                  ; $7FAF: $01 $01 $00
    nop                                           ; $7FB2: $00
    nop                                           ; $7FB3: $00
    nop                                           ; $7FB4: $00
    nop                                           ; $7FB5: $00
    nop                                           ; $7FB6: $00
    nop                                           ; $7FB7: $00
    nop                                           ; $7FB8: $00
    nop                                           ; $7FB9: $00
    nop                                           ; $7FBA: $00
    nop                                           ; $7FBB: $00
    nop                                           ; $7FBC: $00
    nop                                           ; $7FBD: $00
    nop                                           ; $7FBE: $00
    nop                                           ; $7FBF: $00
    ret nz                                        ; $7FC0: $C0

    nop                                           ; $7FC1: $00
    jr nz, jr_012_7F84                            ; $7FC2: $20 $C0

    jr nz, @-$3E                                  ; $7FC4: $20 $C0

    ldh a, [$FFE0]                                ; $7FC6: $F0 $E0

jr_012_7FC8:
    ldh a, [$FFC0]                                ; $7FC8: $F0 $C0
    ret nc                                        ; $7FCA: $D0

    jr nz, @-$76                                  ; $7FCB: $20 $88

    ld [hl], b                                    ; $7FCD: $70
    ld c, b                                       ; $7FCE: $48
    jr nc, @+$3A                                  ; $7FCF: $30 $38

    nop                                           ; $7FD1: $00
    nop                                           ; $7FD2: $00
    nop                                           ; $7FD3: $00
    nop                                           ; $7FD4: $00
    nop                                           ; $7FD5: $00
    nop                                           ; $7FD6: $00
    nop                                           ; $7FD7: $00
    nop                                           ; $7FD8: $00
    nop                                           ; $7FD9: $00
    nop                                           ; $7FDA: $00
    nop                                           ; $7FDB: $00
    nop                                           ; $7FDC: $00
    nop                                           ; $7FDD: $00
    nop                                           ; $7FDE: $00
    nop                                           ; $7FDF: $00
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
