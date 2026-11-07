; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01d", ROMX[$4000], BANK[$1d]

    nop                                           ; $4000: $00
    nop                                           ; $4001: $00
    nop                                           ; $4002: $00
    nop                                           ; $4003: $00
    nop                                           ; $4004: $00
    nop                                           ; $4005: $00
    nop                                           ; $4006: $00
    nop                                           ; $4007: $00
    inc bc                                        ; $4008: $03
    nop                                           ; $4009: $00
    dec a                                         ; $400A: $3D
    inc bc                                        ; $400B: $03
    ld b, e                                       ; $400C: $43
    ld a, $B5                                     ; $400D: $3E $B5
    ld l, a                                       ; $400F: $6F
    adc d                                         ; $4010: $8A
    ld a, a                                       ; $4011: $7F
    rst RST_38                                    ; $4012: $FF
    ld a, a                                       ; $4013: $7F
    ld a, a                                       ; $4014: $7F
    inc d                                         ; $4015: $14
    ld d, l                                       ; $4016: $55
    ld a, [hl+]                                   ; $4017: $2A
    ccf                                           ; $4018: $3F
    nop                                           ; $4019: $00
    ld l, e                                       ; $401A: $6B
    ccf                                           ; $401B: $3F
    ccf                                           ; $401C: $3F
    inc e                                         ; $401D: $1C
    inc e                                         ; $401E: $1C
    nop                                           ; $401F: $00
    nop                                           ; $4020: $00
    nop                                           ; $4021: $00
    nop                                           ; $4022: $00
    nop                                           ; $4023: $00

jr_01D_4024:
    nop                                           ; $4024: $00
    nop                                           ; $4025: $00
    ld a, b                                       ; $4026: $78
    nop                                           ; $4027: $00
    rst RST_38                                    ; $4028: $FF
    ld a, b                                       ; $4029: $78
    db $FD                                        ; $402A: $FD
    adc a                                         ; $402B: $8F
    or a                                          ; $402C: $B7
    ld e, a                                       ; $402D: $5F
    rst RST_28                                    ; $402E: $EF
    ccf                                           ; $402F: $3F
    sbc a                                         ; $4030: $9F
    ldh [c], a                                    ; $4031: $E2
    rst RST_38                                    ; $4032: $FF
    inc c                                         ; $4033: $0C
    or a                                          ; $4034: $B7
    ld e, [hl]                                    ; $4035: $5E
    ld l, e                                       ; $4036: $6B
    cp a                                          ; $4037: $BF
    rst RST_10                                    ; $4038: $D7
    ld a, a                                       ; $4039: $7F
    ld a, a                                       ; $403A: $7F
    rst RST_38                                    ; $403B: $FF
    rst RST_38                                    ; $403C: $FF
    ld a, [hl]                                    ; $403D: $7E
    ld a, [hl]                                    ; $403E: $7E
    nop                                           ; $403F: $00
    add b                                         ; $4040: $80
    nop                                           ; $4041: $00
    ld b, b                                       ; $4042: $40
    add b                                         ; $4043: $80
    and b                                         ; $4044: $A0
    ret nz                                        ; $4045: $C0

    ret nc                                        ; $4046: $D0

    ldh [$FFC8], a                                ; $4047: $E0 $C8
    ld [hl], b                                    ; $4049: $70
    db $F4                                        ; $404A: $F4
    ld hl, sp-$1D                                 ; $404B: $F8 $E3
    db $FC                                        ; $404D: $FC
    db $FC                                        ; $404E: $FC
    ld a, a                                       ; $404F: $7F
    ld hl, sp+$7F                                 ; $4050: $F8 $7F
    rst RST_38                                    ; $4052: $FF
    ld a, a                                       ; $4053: $7F
    cp $7F                                        ; $4054: $FE $7F
    ld a, a                                       ; $4056: $7F
    ccf                                           ; $4057: $3F
    ccf                                           ; $4058: $3F
    rra                                           ; $4059: $1F
    ccf                                           ; $405A: $3F
    ld e, $3F                                     ; $405B: $1E $3F
    ld e, $7F                                     ; $405D: $1E $7F
    dec l                                         ; $405F: $2D
    ret nz                                        ; $4060: $C0

    nop                                           ; $4061: $00
    jr nz, jr_01D_4024                            ; $4062: $20 $C0

    db $10                                        ; $4064: $10
    ldh [$FFD0], a                                ; $4065: $E0 $D0
    ldh [$FFA8], a                                ; $4067: $E0 $A8
    ldh a, [$FFE8]                                ; $4069: $F0 $E8
    ldh a, [$FFF6]                                ; $406B: $F0 $F6
    ld hl, sp-$05                                 ; $406D: $F8 $FB
    cp [hl]                                       ; $406F: $BE
    ldh a, [$FFBF]                                ; $4070: $F0 $BF
    rst RST_38                                    ; $4072: $FF
    ld a, a                                       ; $4073: $7F
    rst RST_38                                    ; $4074: $FF
    pop af                                        ; $4075: $F1
    ld hl, sp-$11                                 ; $4076: $F8 $EF
    di                                            ; $4078: $F3
    rst RST_18                                    ; $4079: $DF
    or $DF                                        ; $407A: $F6 $DF
    rst RST_38                                    ; $407C: $FF
    rst RST_18                                    ; $407D: $DF
    rst RST_38                                    ; $407E: $FF
    sbc $80                                       ; $407F: $DE $80
    nop                                           ; $4081: $00
    ld b, b                                       ; $4082: $40
    add b                                         ; $4083: $80
    ldh [$FFC0], a                                ; $4084: $E0 $C0
    ld h, b                                       ; $4086: $60
    ret nz                                        ; $4087: $C0

    jr nc, @-$1E                                  ; $4088: $30 $E0

    sub b                                         ; $408A: $90
    ldh [$FFD0], a                                ; $408B: $E0 $D0
    ldh [$FFD0], a                                ; $408D: $E0 $D0
    ldh [$FFF0], a                                ; $408F: $E0 $F0
    ld h, b                                       ; $4091: $60
    ldh [$FF80], a                                ; $4092: $E0 $80
    ldh [$FFC0], a                                ; $4094: $E0 $C0
    ldh [$FFC0], a                                ; $4096: $E0 $C0
    ldh [$FFC0], a                                ; $4098: $E0 $C0
    ret nz                                        ; $409A: $C0

    add b                                         ; $409B: $80
    ret nz                                        ; $409C: $C0

    add b                                         ; $409D: $80
    ret nz                                        ; $409E: $C0

    add b                                         ; $409F: $80
    rst RST_38                                    ; $40A0: $FF
    ld b, c                                       ; $40A1: $41
    ld d, l                                       ; $40A2: $55
    adc d                                         ; $40A3: $8A
    sbc a                                         ; $40A4: $9F
    dec b                                         ; $40A5: $05
    cpl                                           ; $40A6: $2F
    rla                                           ; $40A7: $17
    ld e, a                                       ; $40A8: $5F
    dec sp                                        ; $40A9: $3B
    ld e, a                                       ; $40AA: $5F
    dec sp                                        ; $40AB: $3B
    ld e, a                                       ; $40AC: $5F
    dec a                                         ; $40AD: $3D
    ld e, a                                       ; $40AE: $5F
    dec a                                         ; $40AF: $3D
    xor a                                         ; $40B0: $AF
    ld e, $7F                                     ; $40B1: $1E $7F
    adc a                                         ; $40B3: $8F
    cp a                                          ; $40B4: $BF
    di                                            ; $40B5: $F3
    rst RST_38                                    ; $40B6: $FF
    or $FF                                        ; $40B7: $F6 $FF
    and $FF                                       ; $40B9: $E6 $FF
    dec e                                         ; $40BB: $1D
    sbc a                                         ; $40BC: $9F
    ld l, h                                       ; $40BD: $6C
    cp $00                                        ; $40BE: $FE $00
    inc bc                                        ; $40C0: $03
    nop                                           ; $40C1: $00
    dec d                                         ; $40C2: $15
    ld [bc], a                                    ; $40C3: $02
    ld a, $10                                     ; $40C4: $3E $10
    jr z, jr_01D_40D8                             ; $40C6: $28 $10

    jr c, @+$12                                   ; $40C8: $38 $10

    inc l                                         ; $40CA: $2C
    jr jr_01D_4101                                ; $40CB: $18 $34

    jr jr_01D_4101                                ; $40CD: $18 $32

    inc e                                         ; $40CF: $1C
    dec e                                         ; $40D0: $1D
    ld c, $1A                                     ; $40D1: $0E $1A
    rrca                                          ; $40D3: $0F
    ld c, $07                                     ; $40D4: $0E $07
    rlca                                          ; $40D6: $07
    inc bc                                        ; $40D7: $03

jr_01D_40D8:
    inc bc                                        ; $40D8: $03
    ld bc, $0001                                  ; $40D9: $01 $01 $00
    ld [bc], a                                    ; $40DC: $02
    ld bc, $0003                                  ; $40DD: $01 $03 $00
    rst RST_38                                    ; $40E0: $FF
    rst RST_28                                    ; $40E1: $EF
    rst RST_38                                    ; $40E2: $FF
    rst RST_28                                    ; $40E3: $EF
    rst RST_38                                    ; $40E4: $FF
    scf                                           ; $40E5: $37
    rst RST_38                                    ; $40E6: $FF
    ld b, b                                       ; $40E7: $40
    db $FD                                        ; $40E8: $FD
    ld hl, sp-$07                                 ; $40E9: $F8 $F9
    ldh [$FFE3], a                                ; $40EB: $E0 $E3
    add c                                         ; $40ED: $81
    sbc a                                         ; $40EE: $9F
    nop                                           ; $40EF: $00
    inc h                                         ; $40F0: $24
    dec de                                        ; $40F1: $1B
    ccf                                           ; $40F2: $3F
    nop                                           ; $40F3: $00
    nop                                           ; $40F4: $00
    nop                                           ; $40F5: $00
    nop                                           ; $40F6: $00
    nop                                           ; $40F7: $00
    nop                                           ; $40F8: $00
    nop                                           ; $40F9: $00
    nop                                           ; $40FA: $00
    nop                                           ; $40FB: $00
    nop                                           ; $40FC: $00
    nop                                           ; $40FD: $00
    nop                                           ; $40FE: $00
    nop                                           ; $40FF: $00
    ret nz                                        ; $4100: $C0

jr_01D_4101:
    nop                                           ; $4101: $00
    ret nz                                        ; $4102: $C0

    nop                                           ; $4103: $00
    nop                                           ; $4104: $00
    nop                                           ; $4105: $00
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
    nop                                           ; $411A: $00
    nop                                           ; $411B: $00
    nop                                           ; $411C: $00
    nop                                           ; $411D: $00
    nop                                           ; $411E: $00
    nop                                           ; $411F: $00
    nop                                           ; $4120: $00
    nop                                           ; $4121: $00
    nop                                           ; $4122: $00
    nop                                           ; $4123: $00
    nop                                           ; $4124: $00
    nop                                           ; $4125: $00
    nop                                           ; $4126: $00
    nop                                           ; $4127: $00
    inc bc                                        ; $4128: $03
    nop                                           ; $4129: $00
    dec a                                         ; $412A: $3D
    inc bc                                        ; $412B: $03
    ld b, e                                       ; $412C: $43
    ld a, $B5                                     ; $412D: $3E $B5
    ld l, a                                       ; $412F: $6F
    adc d                                         ; $4130: $8A
    ld a, a                                       ; $4131: $7F
    rst RST_38                                    ; $4132: $FF
    ld a, a                                       ; $4133: $7F
    ld a, a                                       ; $4134: $7F
    inc d                                         ; $4135: $14
    ld d, l                                       ; $4136: $55
    ld a, [hl+]                                   ; $4137: $2A
    ccf                                           ; $4138: $3F
    nop                                           ; $4139: $00
    ld l, e                                       ; $413A: $6B
    ccf                                           ; $413B: $3F
    ccf                                           ; $413C: $3F
    inc e                                         ; $413D: $1C
    inc e                                         ; $413E: $1C
    nop                                           ; $413F: $00
    nop                                           ; $4140: $00
    nop                                           ; $4141: $00
    nop                                           ; $4142: $00
    nop                                           ; $4143: $00

jr_01D_4144:
    nop                                           ; $4144: $00
    nop                                           ; $4145: $00
    ld a, b                                       ; $4146: $78
    nop                                           ; $4147: $00
    rst RST_38                                    ; $4148: $FF
    ld a, b                                       ; $4149: $78
    db $FD                                        ; $414A: $FD
    adc a                                         ; $414B: $8F
    or a                                          ; $414C: $B7
    ld e, a                                       ; $414D: $5F
    rst RST_28                                    ; $414E: $EF
    ccf                                           ; $414F: $3F
    sbc a                                         ; $4150: $9F
    ldh [c], a                                    ; $4151: $E2
    rst RST_38                                    ; $4152: $FF
    inc c                                         ; $4153: $0C
    or a                                          ; $4154: $B7
    ld e, [hl]                                    ; $4155: $5E
    ld l, e                                       ; $4156: $6B
    cp a                                          ; $4157: $BF
    rst RST_10                                    ; $4158: $D7
    ld a, a                                       ; $4159: $7F
    ld a, a                                       ; $415A: $7F
    rst RST_38                                    ; $415B: $FF
    rst RST_38                                    ; $415C: $FF
    ld a, [hl]                                    ; $415D: $7E
    ld a, [hl]                                    ; $415E: $7E
    nop                                           ; $415F: $00
    add b                                         ; $4160: $80
    nop                                           ; $4161: $00
    ld b, b                                       ; $4162: $40
    add b                                         ; $4163: $80
    and b                                         ; $4164: $A0
    ret nz                                        ; $4165: $C0

    ret nc                                        ; $4166: $D0

    ldh [$FFC8], a                                ; $4167: $E0 $C8
    ld [hl], b                                    ; $4169: $70
    or $F8                                        ; $416A: $F6 $F8
    pop hl                                        ; $416C: $E1
    cp $F8                                        ; $416D: $FE $F8
    ld a, a                                       ; $416F: $7F
    ldh a, [$FF7F]                                ; $4170: $F0 $7F
    rst RST_38                                    ; $4172: $FF
    ld a, a                                       ; $4173: $7F
    cp $7F                                        ; $4174: $FE $7F
    ld a, a                                       ; $4176: $7F
    ccf                                           ; $4177: $3F
    ld a, a                                       ; $4178: $7F
    ccf                                           ; $4179: $3F
    ccf                                           ; $417A: $3F
    ld e, $3F                                     ; $417B: $1E $3F
    ld e, $7F                                     ; $417D: $1E $7F

Call_01D_417F:
    ld l, $C0                                     ; $417F: $2E $C0
    nop                                           ; $4181: $00
    jr nz, jr_01D_4144                            ; $4182: $20 $C0

    db $10                                        ; $4184: $10
    ldh [$FFD0], a                                ; $4185: $E0 $D0
    ldh [$FFA8], a                                ; $4187: $E0 $A8
    ldh a, [$FFE6]                                ; $4189: $F0 $E6
    ld hl, sp-$0F                                 ; $418B: $F8 $F1
    cp $F0                                        ; $418D: $FE $F0
    cp a                                          ; $418F: $BF
    rst RST_30                                    ; $4190: $F7
    cp a                                          ; $4191: $BF
    rst RST_38                                    ; $4192: $FF
    cp h                                          ; $4193: $BC
    rst RST_38                                    ; $4194: $FF
    ld a, e                                       ; $4195: $7B
    db $FC                                        ; $4196: $FC
    rst RST_30                                    ; $4197: $F7
    ld sp, hl                                     ; $4198: $F9
    rst RST_28                                    ; $4199: $EF
    ei                                            ; $419A: $FB
    rst RST_28                                    ; $419B: $EF
    rst RST_38                                    ; $419C: $FF
    rst RST_28                                    ; $419D: $EF
    rst RST_38                                    ; $419E: $FF
    rst RST_28                                    ; $419F: $EF
    add b                                         ; $41A0: $80
    nop                                           ; $41A1: $00
    ld b, b                                       ; $41A2: $40
    add b                                         ; $41A3: $80
    and b                                         ; $41A4: $A0
    ret nz                                        ; $41A5: $C0

    ldh a, [$FFE0]                                ; $41A6: $F0 $E0
    db $10                                        ; $41A8: $10
    ldh [rNR23], a                                ; $41A9: $E0 $18
    ldh a, [$FF88]                                ; $41AB: $F0 $88
    ldh a, [rBCPS]                                ; $41AD: $F0 $68
    ldh a, [$FFF8]                                ; $41AF: $F0 $F8
    ldh a, [$FFF8]                                ; $41B1: $F0 $F8
    ldh a, [$FFF0]                                ; $41B3: $F0 $F0
    ld h, b                                       ; $41B5: $60
    ldh a, [$FF80]                                ; $41B6: $F0 $80
    ldh a, [$FFE0]                                ; $41B8: $F0 $E0
    ldh a, [$FF60]                                ; $41BA: $F0 $60
    ldh [rLCDC], a                                ; $41BC: $E0 $40
    ldh [$FFC0], a                                ; $41BE: $E0 $C0
    ld a, a                                       ; $41C0: $7F
    dec l                                         ; $41C1: $2D
    rst RST_38                                    ; $41C2: $FF
    ld b, c                                       ; $41C3: $41
    ld d, l                                       ; $41C4: $55
    adc d                                         ; $41C5: $8A
    sbc a                                         ; $41C6: $9F
    ld bc, $1B2F                                  ; $41C7: $01 $2F $1B
    cpl                                           ; $41CA: $2F
    dec e                                         ; $41CB: $1D
    cpl                                           ; $41CC: $2F
    dec e                                         ; $41CD: $1D
    cpl                                           ; $41CE: $2F
    ld e, $17                                     ; $41CF: $1E $17
    ld c, $1F                                     ; $41D1: $0E $1F
    ld bc, $1BFF                                  ; $41D3: $01 $FF $1B
    ld e, a                                       ; $41D6: $5F
    di                                            ; $41D7: $F3
    rst RST_38                                    ; $41D8: $FF
    ld c, $4F                                     ; $41D9: $0E $4F
    or [hl]                                       ; $41DB: $B6
    rst RST_38                                    ; $41DC: $FF
    nop                                           ; $41DD: $00
    nop                                           ; $41DE: $00
    nop                                           ; $41DF: $00
    inc bc                                        ; $41E0: $03
    nop                                           ; $41E1: $00
    dec d                                         ; $41E2: $15
    ld [bc], a                                    ; $41E3: $02
    ld a, $10                                     ; $41E4: $3E $10
    jr z, jr_01D_41F8                             ; $41E6: $28 $10

    jr c, jr_01D_41FA                             ; $41E8: $38 $10

    jr z, jr_01D_41FC                             ; $41EA: $28 $10

    inc a                                         ; $41EC: $3C
    jr jr_01D_4223                                ; $41ED: $18 $34

    jr jr_01D_4203                                ; $41EF: $18 $12

    inc c                                         ; $41F1: $0C
    dec e                                         ; $41F2: $1D
    ld c, $0A                                     ; $41F3: $0E $0A
    rlca                                          ; $41F5: $07
    ld c, $07                                     ; $41F6: $0E $07

jr_01D_41F8:
    rlca                                          ; $41F8: $07
    ld [bc], a                                    ; $41F9: $02

jr_01D_41FA:
    inc bc                                        ; $41FA: $03
    nop                                           ; $41FB: $00

jr_01D_41FC:
    nop                                           ; $41FC: $00
    nop                                           ; $41FD: $00
    nop                                           ; $41FE: $00
    nop                                           ; $41FF: $00
    rst RST_38                                    ; $4200: $FF
    rst RST_20                                    ; $4201: $E7
    rst RST_38                                    ; $4202: $FF

jr_01D_4203:
    scf                                           ; $4203: $37
    rst RST_38                                    ; $4204: $FF
    add e                                         ; $4205: $83
    rst RST_38                                    ; $4206: $FF
    ld a, h                                       ; $4207: $7C
    db $FC                                        ; $4208: $FC
    ld a, b                                       ; $4209: $78
    ld sp, hl                                     ; $420A: $F9
    ldh [$FFEF], a                                ; $420B: $E0 $EF
    add b                                         ; $420D: $80
    sub d                                         ; $420E: $92
    dec c                                         ; $420F: $0D
    rra                                           ; $4210: $1F
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
    ldh [rLCDC], a                                ; $4220: $E0 $40
    ld h, b                                       ; $4222: $60

jr_01D_4223:
    add b                                         ; $4223: $80
    ldh [rP1], a                                  ; $4224: $E0 $00
    nop                                           ; $4226: $00
    nop                                           ; $4227: $00
    nop                                           ; $4228: $00
    nop                                           ; $4229: $00
    nop                                           ; $422A: $00
    nop                                           ; $422B: $00
    nop                                           ; $422C: $00
    nop                                           ; $422D: $00
    nop                                           ; $422E: $00
    nop                                           ; $422F: $00
    nop                                           ; $4230: $00
    nop                                           ; $4231: $00
    nop                                           ; $4232: $00
    nop                                           ; $4233: $00
    nop                                           ; $4234: $00
    nop                                           ; $4235: $00
    nop                                           ; $4236: $00
    nop                                           ; $4237: $00
    nop                                           ; $4238: $00
    nop                                           ; $4239: $00
    nop                                           ; $423A: $00
    nop                                           ; $423B: $00
    nop                                           ; $423C: $00
    nop                                           ; $423D: $00
    nop                                           ; $423E: $00
    nop                                           ; $423F: $00
    cp $9C                                        ; $4240: $FE $9C
    ldh [c], a                                    ; $4242: $E2
    ld a, h                                       ; $4243: $7C
    add e                                         ; $4244: $83
    cp $31                                        ; $4245: $FE $31
    cp $6D                                        ; $4247: $FE $6D
    cp $7F                                        ; $4249: $FE $7F
    cp $FF                                        ; $424B: $FE $FF
    cp $FE                                        ; $424D: $FE $FE
    db $EC                                        ; $424F: $EC
    cp $F0                                        ; $4250: $FE $F0
    cp $7C                                        ; $4252: $FE $7C
    cp $8C                                        ; $4254: $FE $8C
    sbc h                                         ; $4256: $9C
    ld [$183C], sp                                ; $4257: $08 $3C $18
    db $FC                                        ; $425A: $FC
    ld [$B04C], sp                                ; $425B: $08 $4C $B0
    db $FC                                        ; $425E: $FC
    nop                                           ; $425F: $00
    db $FD                                        ; $4260: $FD
    or a                                          ; $4261: $B7
    rst RST_38                                    ; $4262: $FF
    cpl                                           ; $4263: $2F
    cp a                                          ; $4264: $BF
    ld e, [hl]                                    ; $4265: $5E
    rst RST_38                                    ; $4266: $FF
    dec a                                         ; $4267: $3D
    rst RST_38                                    ; $4268: $FF
    ld a, l                                       ; $4269: $7D
    rst RST_38                                    ; $426A: $FF
    cp l                                          ; $426B: $BD
    rst RST_38                                    ; $426C: $FF
    cp l                                          ; $426D: $BD
    rst RST_38                                    ; $426E: $FF
    call c, $C6FF                                 ; $426F: $DC $FF $C6
    rst RST_38                                    ; $4272: $FF
    jr nc, @+$01                                  ; $4273: $30 $FF

    ld l, a                                       ; $4275: $6F
    rst RST_38                                    ; $4276: $FF
    ld l, a                                       ; $4277: $6F
    rst RST_38                                    ; $4278: $FF
    call c, $D0FD                                 ; $4279: $DC $FD $D0
    ldh a, [c]                                    ; $427C: $F2
    ld bc, $0003                                  ; $427D: $01 $03 $00
    rrca                                          ; $4280: $0F
    dec b                                         ; $4281: $05
    ld a, a                                       ; $4282: $7F
    ld [$51AA], sp                                ; $4283: $08 $AA $51
    db $D3                                        ; $4286: $D3
    nop                                           ; $4287: $00
    dec b                                         ; $4288: $05
    inc bc                                        ; $4289: $03
    dec b                                         ; $428A: $05
    inc bc                                        ; $428B: $03
    dec b                                         ; $428C: $05
    inc bc                                        ; $428D: $03
    dec b                                         ; $428E: $05
    inc bc                                        ; $428F: $03
    ld [bc], a                                    ; $4290: $02
    ld bc, $0007                                  ; $4291: $01 $07 $00
    ld a, a                                       ; $4294: $7F
    rlca                                          ; $4295: $07
    bit 7, [hl]                                   ; $4296: $CB $7E
    ld a, a                                       ; $4298: $7F
    pop hl                                        ; $4299: $E1

jr_01D_429A:
    jp hl                                         ; $429A: $E9


    sub $FF                                       ; $429B: $D6 $FF
    nop                                           ; $429D: $00
    nop                                           ; $429E: $00
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
    nop                                           ; $42AD: $00
    nop                                           ; $42AE: $00
    nop                                           ; $42AF: $00
    nop                                           ; $42B0: $00
    nop                                           ; $42B1: $00
    nop                                           ; $42B2: $00
    nop                                           ; $42B3: $00
    nop                                           ; $42B4: $00
    nop                                           ; $42B5: $00
    rlca                                          ; $42B6: $07
    nop                                           ; $42B7: $00
    ld a, l                                       ; $42B8: $7D
    rlca                                          ; $42B9: $07
    rst RST_10                                    ; $42BA: $D7
    ld a, a                                       ; $42BB: $7F
    rst RST_38                                    ; $42BC: $FF
    nop                                           ; $42BD: $00
    nop                                           ; $42BE: $00
    nop                                           ; $42BF: $00
    nop                                           ; $42C0: $00
    nop                                           ; $42C1: $00
    nop                                           ; $42C2: $00
    nop                                           ; $42C3: $00
    nop                                           ; $42C4: $00
    nop                                           ; $42C5: $00
    nop                                           ; $42C6: $00
    nop                                           ; $42C7: $00
    nop                                           ; $42C8: $00
    nop                                           ; $42C9: $00
    nop                                           ; $42CA: $00
    nop                                           ; $42CB: $00
    nop                                           ; $42CC: $00
    nop                                           ; $42CD: $00
    nop                                           ; $42CE: $00
    nop                                           ; $42CF: $00
    nop                                           ; $42D0: $00
    nop                                           ; $42D1: $00
    add b                                         ; $42D2: $80
    nop                                           ; $42D3: $00
    add b                                         ; $42D4: $80
    nop                                           ; $42D5: $00
    ld b, b                                       ; $42D6: $40
    add b                                         ; $42D7: $80
    jr nc, jr_01D_429A                            ; $42D8: $30 $C0

    adc h                                         ; $42DA: $8C
    ldh a, [$FF82]                                ; $42DB: $F0 $82
    db $FC                                        ; $42DD: $FC
    dec e                                         ; $42DE: $1D
    cp $00                                        ; $42DF: $FE $00
    nop                                           ; $42E1: $00
    nop                                           ; $42E2: $00
    nop                                           ; $42E3: $00
    nop                                           ; $42E4: $00
    nop                                           ; $42E5: $00
    nop                                           ; $42E6: $00
    nop                                           ; $42E7: $00
    add b                                         ; $42E8: $80
    nop                                           ; $42E9: $00
    ld h, b                                       ; $42EA: $60
    add b                                         ; $42EB: $80
    sbc b                                         ; $42EC: $98
    ldh [rTMA], a                                 ; $42ED: $E0 $06
    ld hl, sp-$3F                                 ; $42EF: $F8 $C1
    cp $98                                        ; $42F1: $FE $98
    rst RST_38                                    ; $42F3: $FF
    or $FF                                        ; $42F4: $F6 $FF
    db $FD                                        ; $42F6: $FD
    rst RST_38                                    ; $42F7: $FF
    rst RST_38                                    ; $42F8: $FF
    rst RST_38                                    ; $42F9: $FF
    rst RST_38                                    ; $42FA: $FF
    rst RST_30                                    ; $42FB: $F7
    rst RST_38                                    ; $42FC: $FF
    push af                                       ; $42FD: $F5
    rst RST_38                                    ; $42FE: $FF
    ld [hl], l                                    ; $42FF: $75
    add b                                         ; $4300: $80
    nop                                           ; $4301: $00
    ld hl, sp-$80                                 ; $4302: $F8 $80
    call nc, Call_01D_7AF8                        ; $4304: $D4 $F8 $7A
    db $FC                                        ; $4307: $FC
    db $FD                                        ; $4308: $FD
    cp $FC                                        ; $4309: $FE $FC
    rlca                                          ; $430B: $07
    ld a, a                                       ; $430C: $7F
    rst RST_28                                    ; $430D: $EF
    cp a                                          ; $430E: $BF
    rst RST_30                                    ; $430F: $F7
    ld a, a                                       ; $4310: $7F
    rst RST_30                                    ; $4311: $F7
    rst RST_38                                    ; $4312: $FF
    rst RST_30                                    ; $4313: $F7
    rst RST_38                                    ; $4314: $FF
    rst RST_28                                    ; $4315: $EF
    rst RST_38                                    ; $4316: $FF
    rlca                                          ; $4317: $07
    rlca                                          ; $4318: $07
    ld bc, $0001                                  ; $4319: $01 $01 $00
    ld bc, $0300                                  ; $431C: $01 $00 $03
    ld bc, $0007                                  ; $431F: $01 $07 $00
    ccf                                           ; $4322: $3F
    rlca                                          ; $4323: $07
    rst RST_18                                    ; $4324: $DF
    jr c, jr_01D_4362                             ; $4325: $38 $3B

    push hl                                       ; $4327: $E5
    ld e, [hl]                                    ; $4328: $5E
    di                                            ; $4329: $F3
    xor c                                         ; $432A: $A9
    cp $FF                                        ; $432B: $FE $FF
    pop af                                        ; $432D: $F1
    cp $47                                        ; $432E: $FE $47
    db $FD                                        ; $4330: $FD
    cpl                                           ; $4331: $2F
    or a                                          ; $4332: $B7
    rst RST_38                                    ; $4333: $FF
    rst RST_38                                    ; $4334: $FF
    jp Jump_000_00C3                              ; $4335: $C3 $C3 $00


    nop                                           ; $4338: $00
    nop                                           ; $4339: $00
    nop                                           ; $433A: $00
    nop                                           ; $433B: $00
    nop                                           ; $433C: $00
    nop                                           ; $433D: $00
    nop                                           ; $433E: $00
    nop                                           ; $433F: $00
    nop                                           ; $4340: $00
    nop                                           ; $4341: $00
    nop                                           ; $4342: $00
    nop                                           ; $4343: $00
    nop                                           ; $4344: $00
    nop                                           ; $4345: $00
    nop                                           ; $4346: $00
    nop                                           ; $4347: $00
    nop                                           ; $4348: $00
    nop                                           ; $4349: $00
    nop                                           ; $434A: $00
    nop                                           ; $434B: $00
    inc bc                                        ; $434C: $03
    nop                                           ; $434D: $00
    inc b                                         ; $434E: $04
    inc bc                                        ; $434F: $03
    dec bc                                        ; $4350: $0B
    ld b, $08                                     ; $4351: $06 $08
    rlca                                          ; $4353: $07
    rrca                                          ; $4354: $0F
    rlca                                          ; $4355: $07
    rlca                                          ; $4356: $07
    ld bc, $0007                                  ; $4357: $01 $07 $00
    ld b, $03                                     ; $435A: $06 $03
    inc bc                                        ; $435C: $03
    ld bc, $0001                                  ; $435D: $01 $01 $00
    cp $1C                                        ; $4360: $FE $1C

jr_01D_4362:
    add [hl]                                      ; $4362: $86
    db $FC                                        ; $4363: $FC
    inc sp                                        ; $4364: $33
    cp $69                                        ; $4365: $FE $69
    cp $7D                                        ; $4367: $FE $7D
    cp $FD                                        ; $4369: $FE $FD
    xor $FF                                       ; $436B: $EE $FF
    or $FE                                        ; $436D: $F6 $FE
    ld hl, sp-$02                                 ; $436F: $F8 $FE
    ld a, h                                       ; $4371: $7C
    cp $0C                                        ; $4372: $FE $0C
    sbc $8C                                       ; $4374: $DE $8C
    sbc h                                         ; $4376: $9C
    ld [$183C], sp                                ; $4377: $08 $3C $18
    db $FC                                        ; $437A: $FC
    ld [$B04C], sp                                ; $437B: $08 $4C $B0
    db $FC                                        ; $437E: $FC
    nop                                           ; $437F: $00
    rst RST_38                                    ; $4380: $FF
    ld e, a                                       ; $4381: $5F
    rst RST_38                                    ; $4382: $FF
    ld a, [hl]                                    ; $4383: $7E
    rst RST_38                                    ; $4384: $FF
    ld a, l                                       ; $4385: $7D
    rst RST_38                                    ; $4386: $FF
    cp l                                          ; $4387: $BD
    rst RST_38                                    ; $4388: $FF
    cp l                                          ; $4389: $BD
    rst RST_38                                    ; $438A: $FF
    db $DD                                        ; $438B: $DD
    rst RST_38                                    ; $438C: $FF
    sbc $FF                                       ; $438D: $DE $FF
    xor $FF                                       ; $438F: $EE $FF
    di                                            ; $4391: $F3
    rst RST_38                                    ; $4392: $FF
    inc [hl]                                      ; $4393: $34
    rst RST_38                                    ; $4394: $FF
    ld l, a                                       ; $4395: $6F
    rst RST_38                                    ; $4396: $FF
    ld l, [hl]                                    ; $4397: $6E
    cp $D8                                        ; $4398: $FE $D8
    ld sp, hl                                     ; $439A: $F9
    ret nz                                        ; $439B: $C0

    ldh [c], a                                    ; $439C: $E2
    ld bc, $0003                                  ; $439D: $01 $03 $00
    ld l, c                                       ; $43A0: $69
    nop                                           ; $43A1: $00
    ld bc, $0200                                  ; $43A2: $01 $00 $02
    ld bc, $0305                                  ; $43A5: $01 $05 $03
    dec b                                         ; $43A8: $05
    inc bc                                        ; $43A9: $03
    dec b                                         ; $43AA: $05
    inc bc                                        ; $43AB: $03
    db $FD                                        ; $43AC: $FD
    inc bc                                        ; $43AD: $03
    xor [hl]                                      ; $43AE: $AE
    pop af                                        ; $43AF: $F1
    rst RST_30                                    ; $43B0: $F7
    db $FC                                        ; $43B1: $FC
    ei                                            ; $43B2: $FB
    ccf                                           ; $43B3: $3F
    ccf                                           ; $43B4: $3F
    rrca                                          ; $43B5: $0F
    rrca                                          ; $43B6: $0F
    ld b, $1F                                     ; $43B7: $06 $1F

jr_01D_43B9:
    ld bc, $1629                                  ; $43B9: $01 $29 $16
    ccf                                           ; $43BC: $3F
    nop                                           ; $43BD: $00
    nop                                           ; $43BE: $00
    nop                                           ; $43BF: $00
    nop                                           ; $43C0: $00
    nop                                           ; $43C1: $00
    nop                                           ; $43C2: $00
    nop                                           ; $43C3: $00
    nop                                           ; $43C4: $00
    nop                                           ; $43C5: $00
    nop                                           ; $43C6: $00
    nop                                           ; $43C7: $00
    nop                                           ; $43C8: $00
    nop                                           ; $43C9: $00
    nop                                           ; $43CA: $00
    nop                                           ; $43CB: $00
    inc bc                                        ; $43CC: $03
    nop                                           ; $43CD: $00
    ld c, $03                                     ; $43CE: $0E $03
    inc de                                        ; $43D0: $13
    rrca                                          ; $43D1: $0F
    scf                                           ; $43D2: $37
    inc e                                         ; $43D3: $1C
    ld a, h                                       ; $43D4: $7C
    jr nc, jr_01D_4427                            ; $43D5: $30 $50

    jr nz, jr_01D_43B9                            ; $43D7: $20 $E0

    ld b, b                                       ; $43D9: $40
    ret nz                                        ; $43DA: $C0

    nop                                           ; $43DB: $00
    nop                                           ; $43DC: $00
    nop                                           ; $43DD: $00
    nop                                           ; $43DE: $00
    nop                                           ; $43DF: $00
    nop                                           ; $43E0: $00
    nop                                           ; $43E1: $00
    nop                                           ; $43E2: $00
    nop                                           ; $43E3: $00
    nop                                           ; $43E4: $00
    nop                                           ; $43E5: $00
    nop                                           ; $43E6: $00
    nop                                           ; $43E7: $00
    nop                                           ; $43E8: $00
    nop                                           ; $43E9: $00
    nop                                           ; $43EA: $00
    nop                                           ; $43EB: $00

jr_01D_43EC:
    nop                                           ; $43EC: $00
    nop                                           ; $43ED: $00
    add b                                         ; $43EE: $80
    nop                                           ; $43EF: $00
    ld b, b                                       ; $43F0: $40
    add b                                         ; $43F1: $80
    ret nz                                        ; $43F2: $C0

    add b                                         ; $43F3: $80
    and b                                         ; $43F4: $A0
    ret nz                                        ; $43F5: $C0

    ldh [$FFC0], a                                ; $43F6: $E0 $C0
    ret c                                         ; $43F8: $D8

    ldh [$FFEC], a                                ; $43F9: $E0 $EC
    ld hl, sp-$3E                                 ; $43FB: $F8 $C2
    db $FC                                        ; $43FD: $FC
    cp l                                          ; $43FE: $BD
    cp $00                                        ; $43FF: $FE $00
    nop                                           ; $4401: $00
    nop                                           ; $4402: $00
    nop                                           ; $4403: $00
    nop                                           ; $4404: $00
    nop                                           ; $4405: $00
    add b                                         ; $4406: $80
    nop                                           ; $4407: $00
    ld h, b                                       ; $4408: $60
    add b                                         ; $4409: $80
    jr jr_01D_43EC                                ; $440A: $18 $E0

    and [hl]                                      ; $440C: $A6
    ld hl, sp-$3F                                 ; $440D: $F8 $C1
    cp $D2                                        ; $440F: $FE $D2
    rst RST_38                                    ; $4411: $FF
    or [hl]                                       ; $4412: $B6
    rst RST_38                                    ; $4413: $FF
    rst RST_38                                    ; $4414: $FF
    rst RST_38                                    ; $4415: $FF
    rst RST_38                                    ; $4416: $FF
    rst RST_38                                    ; $4417: $FF
    rst RST_38                                    ; $4418: $FF
    ld a, e                                       ; $4419: $7B
    rst RST_38                                    ; $441A: $FF
    ld a, d                                       ; $441B: $7A
    rst RST_38                                    ; $441C: $FF
    add [hl]                                      ; $441D: $86
    rst RST_10                                    ; $441E: $D7
    add hl, hl                                    ; $441F: $29
    ldh [rP1], a                                  ; $4420: $E0 $00
    cp $E0                                        ; $4422: $FE $E0
    push af                                       ; $4424: $F5
    ld a, $DE                                     ; $4425: $3E $DE

jr_01D_4427:
    ld a, a                                       ; $4427: $7F
    cp a                                          ; $4428: $BF
    rst RST_38                                    ; $4429: $FF
    ld a, a                                       ; $442A: $7F
    adc c                                         ; $442B: $89
    cp $33                                        ; $442C: $FE $33
    rst RST_18                                    ; $442E: $DF
    ld a, e                                       ; $442F: $7B
    xor a                                         ; $4430: $AF
    db $FD                                        ; $4431: $FD
    ld e, a                                       ; $4432: $5F
    db $FD                                        ; $4433: $FD
    rst RST_38                                    ; $4434: $FF
    db $FD                                        ; $4435: $FD
    rst RST_38                                    ; $4436: $FF
    ld hl, sp-$08                                 ; $4437: $F8 $F8
    nop                                           ; $4439: $00
    ld bc, $0F00                                  ; $443A: $01 $00 $0F
    ld bc, $0A15                                  ; $443D: $01 $15 $0A
    ld bc, $0F00                                  ; $4440: $01 $00 $0F
    ld bc, $0EF7                                  ; $4443: $01 $F7 $0E
    ld c, $F9                                     ; $4446: $0E $F9
    rst RST_10                                    ; $4448: $D7
    cp h                                          ; $4449: $BC
    ld a, [hl+]                                   ; $444A: $2A
    rst RST_38                                    ; $444B: $FF
    rst RST_38                                    ; $444C: $FF
    db $FC                                        ; $444D: $FC
    cp $51                                        ; $444E: $FE $51
    ld d, l                                       ; $4450: $55
    xor d                                         ; $4451: $AA
    rst RST_38                                    ; $4452: $FF
    ld bc, $FFAD                                  ; $4453: $01 $AD $FF
    rst RST_38                                    ; $4456: $FF
    ld [hl], c                                    ; $4457: $71
    ld [hl], c                                    ; $4458: $71
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
    ld bc, $0200                                  ; $4470: $01 $00 $02
    ld bc, $0102                                  ; $4473: $01 $02 $01
    inc bc                                        ; $4476: $03
    ld bc, $0001                                  ; $4477: $01 $01 $00
    ld bc, $0000                                  ; $447A: $01 $00 $00
    nop                                           ; $447D: $00
    ld bc, $FF00                                  ; $447E: $01 $00 $FF
    rst RST_20                                    ; $4481: $E7
    ld hl, sp-$21                                 ; $4482: $F8 $DF
    ldh [$FFBF], a                                ; $4484: $E0 $BF
    call z, $DB7F                                 ; $4486: $CC $7F $DB
    ld a, a                                       ; $4489: $7F
    rst RST_38                                    ; $448A: $FF
    ld a, a                                       ; $448B: $7F
    rst RST_38                                    ; $448C: $FF
    ld a, a                                       ; $448D: $7F
    rst RST_38                                    ; $448E: $FF
    dec sp                                        ; $448F: $3B
    rst RST_38                                    ; $4490: $FF
    cp h                                          ; $4491: $BC
    rst RST_38                                    ; $4492: $FF
    rra                                           ; $4493: $1F
    rra                                           ; $4494: $1F
    inc bc                                        ; $4495: $03
    rlca                                          ; $4496: $07
    ld [bc], a                                    ; $4497: $02
    rrca                                          ; $4498: $0F
    ld b, $7F                                     ; $4499: $06 $7F
    ld [bc], a                                    ; $449B: $02
    sub e                                         ; $449C: $93
    ld l, h                                       ; $449D: $6C
    rst RST_38                                    ; $449E: $FF
    nop                                           ; $449F: $00
    rst RST_38                                    ; $44A0: $FF
    ld l, l                                       ; $44A1: $6D
    rst RST_38                                    ; $44A2: $FF
    dec bc                                        ; $44A3: $0B
    xor a                                         ; $44A4: $AF
    ld d, a                                       ; $44A5: $57
    rst RST_38                                    ; $44A6: $FF
    rrca                                          ; $44A7: $0F
    ld a, a                                       ; $44A8: $7F
    rst RST_18                                    ; $44A9: $DF
    ld a, a                                       ; $44AA: $7F
    rst RST_28                                    ; $44AB: $EF
    ld a, a                                       ; $44AC: $7F
    rst RST_28                                    ; $44AD: $EF
    ld a, a                                       ; $44AE: $7F
    rst RST_30                                    ; $44AF: $F7
    cp a                                          ; $44B0: $BF
    ld a, c                                       ; $44B1: $79
    ld a, a                                       ; $44B2: $7F
    inc a                                         ; $44B3: $3C
    ld a, $0C                                     ; $44B4: $3E $0C
    ld a, h                                       ; $44B6: $7C
    jr @-$02                                      ; $44B7: $18 $FC

    ld a, b                                       ; $44B9: $78

jr_01D_44BA:
    ld a, b                                       ; $44BA: $78
    or b                                          ; $44BB: $B0
    ld hl, sp+$00                                 ; $44BC: $F8 $00
    nop                                           ; $44BE: $00
    nop                                           ; $44BF: $00
    inc bc                                        ; $44C0: $03
    ld bc, $021F                                  ; $44C1: $01 $1F $02
    ld a, [hl+]                                   ; $44C4: $2A
    inc d                                         ; $44C5: $14
    inc [hl]                                      ; $44C6: $34
    nop                                           ; $44C7: $00
    ld bc, $0100                                  ; $44C8: $01 $00 $01
    nop                                           ; $44CB: $00
    ld bc, $0100                                  ; $44CC: $01 $00 $01
    nop                                           ; $44CF: $00
    nop                                           ; $44D0: $00
    nop                                           ; $44D1: $00
    nop                                           ; $44D2: $00
    nop                                           ; $44D3: $00
    nop                                           ; $44D4: $00
    nop                                           ; $44D5: $00
    nop                                           ; $44D6: $00
    nop                                           ; $44D7: $00
    rlca                                          ; $44D8: $07
    nop                                           ; $44D9: $00
    ld a, [bc]                                    ; $44DA: $0A
    dec b                                         ; $44DB: $05
    rrca                                          ; $44DC: $0F
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
    ret nz                                        ; $44F6: $C0

    nop                                           ; $44F7: $00
    jr nz, jr_01D_44BA                            ; $44F8: $20 $C0

    db $10                                        ; $44FA: $10
    ldh [$FF08], a                                ; $44FB: $E0 $08
    ldh a, [$FFF4]                                ; $44FD: $F0 $F4
    ld hl, sp+$00                                 ; $44FF: $F8 $00
    nop                                           ; $4501: $00
    nop                                           ; $4502: $00
    nop                                           ; $4503: $00
    nop                                           ; $4504: $00
    nop                                           ; $4505: $00
    nop                                           ; $4506: $00
    nop                                           ; $4507: $00
    nop                                           ; $4508: $00
    nop                                           ; $4509: $00
    ret nz                                        ; $450A: $C0

    nop                                           ; $450B: $00
    jr nz, @-$3E                                  ; $450C: $20 $C0

    sbc b                                         ; $450E: $98
    ldh [rDIV], a                                 ; $450F: $E0 $04
    ld hl, sp-$0E                                 ; $4511: $F8 $F2
    db $FC                                        ; $4513: $FC
    pop hl                                        ; $4514: $E1
    cp $FE                                        ; $4515: $FE $FE
    rst RST_38                                    ; $4517: $FF
    db $FC                                        ; $4518: $FC
    rst RST_38                                    ; $4519: $FF
    rst RST_38                                    ; $451A: $FF
    rst RST_18                                    ; $451B: $DF
    cp $D7                                        ; $451C: $FE $D7
    db $FC                                        ; $451E: $FC
    rst RST_10                                    ; $451F: $D7
    ldh a, [rP1]                                  ; $4520: $F0 $00
    xor b                                         ; $4522: $A8
    ldh a, [$FFF4]                                ; $4523: $F0 $F4
    ld hl, sp-$06                                 ; $4525: $F8 $FA
    db $FC                                        ; $4527: $FC
    ld sp, hl                                     ; $4528: $F9
    ld c, [hl]                                    ; $4529: $4E
    cp $9F                                        ; $452A: $FE $9F
    db $FC                                        ; $452C: $FC
    rst RST_18                                    ; $452D: $DF
    ld a, a                                       ; $452E: $7F
    rst RST_28                                    ; $452F: $EF
    rst RST_38                                    ; $4530: $FF
    rst RST_28                                    ; $4531: $EF
    rst RST_38                                    ; $4532: $FF
    rst RST_28                                    ; $4533: $EF
    rst RST_38                                    ; $4534: $FF
    rst RST_08                                    ; $4535: $CF
    rst RST_08                                    ; $4536: $CF
    rlca                                          ; $4537: $07
    rrca                                          ; $4538: $0F
    rlca                                          ; $4539: $07
    rlca                                          ; $453A: $07
    inc bc                                        ; $453B: $03
    rlca                                          ; $453C: $07
    inc bc                                        ; $453D: $03
    rrca                                          ; $453E: $0F
    dec b                                         ; $453F: $05
    nop                                           ; $4540: $00
    nop                                           ; $4541: $00
    nop                                           ; $4542: $00
    nop                                           ; $4543: $00
    nop                                           ; $4544: $00
    nop                                           ; $4545: $00
    rrca                                          ; $4546: $0F
    nop                                           ; $4547: $00
    ld a, a                                       ; $4548: $7F
    rrca                                          ; $4549: $0F
    cp a                                          ; $454A: $BF
    ld [hl], c                                    ; $454B: $71
    halt                                          ; $454C: $76
    res 7, l                                      ; $454D: $CB $BD
    rst RST_20                                    ; $454F: $E7
    ld d, e                                       ; $4550: $53
    db $FC                                        ; $4551: $FC
    rst RST_38                                    ; $4552: $FF
    pop hl                                        ; $4553: $E1
    or $8B                                        ; $4554: $F6 $8B
    xor l                                         ; $4556: $AD
    ld d, a                                       ; $4557: $57
    ld a, [$6F0F]                                 ; $4558: $FA $0F $6F
    rst RST_38                                    ; $455B: $FF
    rst RST_38                                    ; $455C: $FF
    adc a                                         ; $455D: $8F
    adc a                                         ; $455E: $8F
    nop                                           ; $455F: $00
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
    rlca                                          ; $456A: $07
    nop                                           ; $456B: $00
    ld [$1607], sp                                ; $456C: $08 $07 $16
    dec c                                         ; $456F: $0D
    ld de, $1F0F                                  ; $4570: $11 $0F $1F
    rrca                                          ; $4573: $0F
    rrca                                          ; $4574: $0F
    ld [bc], a                                    ; $4575: $02
    ld a, [bc]                                    ; $4576: $0A
    dec b                                         ; $4577: $05
    rlca                                          ; $4578: $07
    nop                                           ; $4579: $00
    dec c                                         ; $457A: $0D
    rlca                                          ; $457B: $07
    rlca                                          ; $457C: $07
    inc bc                                        ; $457D: $03
    inc bc                                        ; $457E: $03
    nop                                           ; $457F: $00
    add b                                         ; $4580: $80
    nop                                           ; $4581: $00
    ret nz                                        ; $4582: $C0

    nop                                           ; $4583: $00
    ldh [$FF80], a                                ; $4584: $E0 $80
    ld e, a                                       ; $4586: $5F
    and b                                         ; $4587: $A0
    ld b, b                                       ; $4588: $40
    cp a                                          ; $4589: $BF
    ret                                           ; $458A: $C9


    cp a                                          ; $458B: $BF
    db $ED                                        ; $458C: $ED
    cp a                                          ; $458D: $BF
    rst RST_28                                    ; $458E: $EF
    ld a, a                                       ; $458F: $7F
    rst RST_38                                    ; $4590: $FF
    ld a, a                                       ; $4591: $7F
    rst RST_38                                    ; $4592: $FF
    ld a, b                                       ; $4593: $78
    ld hl, sp+$00                                 ; $4594: $F8 $00
    nop                                           ; $4596: $00
    nop                                           ; $4597: $00
    nop                                           ; $4598: $00
    nop                                           ; $4599: $00
    nop                                           ; $459A: $00
    nop                                           ; $459B: $00
    nop                                           ; $459C: $00
    nop                                           ; $459D: $00
    nop                                           ; $459E: $00
    nop                                           ; $459F: $00
    nop                                           ; $45A0: $00
    nop                                           ; $45A1: $00
    nop                                           ; $45A2: $00
    nop                                           ; $45A3: $00
    nop                                           ; $45A4: $00
    nop                                           ; $45A5: $00
    ret nz                                        ; $45A6: $C0

    nop                                           ; $45A7: $00
    ldh a, [rLCDC]                                ; $45A8: $F0 $40
    ld e, b                                       ; $45AA: $58
    jr nc, @+$2E                                  ; $45AB: $30 $2C

    jr @+$18                                      ; $45AD: $18 $16

    inc c                                         ; $45AF: $0C
    ld [de], a                                    ; $45B0: $12
    inc c                                         ; $45B1: $0C
    rla                                           ; $45B2: $17
    ld c, $E3                                     ; $45B3: $0E $E3
    ld e, $0F                                     ; $45B5: $1E $0F
    cp $2E                                        ; $45B7: $FE $2E
    db $FC                                        ; $45B9: $FC
    cp [hl]                                       ; $45BA: $BE
    db $FC                                        ; $45BB: $FC
    db $FC                                        ; $45BC: $FC
    ld hl, sp-$08                                 ; $45BD: $F8 $F8
    ldh [$FFF0], a                                ; $45BF: $E0 $F0
    rst RST_18                                    ; $45C1: $DF
    pop hl                                        ; $45C2: $E1
    cp [hl]                                       ; $45C3: $BE
    jp nz, $977F                                  ; $45C4: $C2 $7F $97

    ld a, a                                       ; $45C7: $7F
    sbc a                                         ; $45C8: $9F
    rst RST_38                                    ; $45C9: $FF
    cp a                                          ; $45CA: $BF
    rst RST_38                                    ; $45CB: $FF
    cp a                                          ; $45CC: $BF
    cp $FF                                        ; $45CD: $FE $FF
    db $FC                                        ; $45CF: $FC
    rst RST_38                                    ; $45D0: $FF
    ld a, e                                       ; $45D1: $7B
    ld a, a                                       ; $45D2: $7F
    ccf                                           ; $45D3: $3F
    ccf                                           ; $45D4: $3F
    inc bc                                        ; $45D5: $03
    inc bc                                        ; $45D6: $03
    ld bc, $0103                                  ; $45D7: $01 $03 $01
    rra                                           ; $45DA: $1F
    nop                                           ; $45DB: $00
    inc h                                         ; $45DC: $24
    dec de                                        ; $45DD: $1B
    ccf                                           ; $45DE: $3F
    nop                                           ; $45DF: $00
    rst RST_38                                    ; $45E0: $FF
    dec de                                        ; $45E1: $1B
    ld e, a                                       ; $45E2: $5F
    and a                                         ; $45E3: $A7
    rst RST_38                                    ; $45E4: $FF
    ld c, a                                       ; $45E5: $4F
    rst RST_38                                    ; $45E6: $FF
    ld a, a                                       ; $45E7: $7F
    rst RST_38                                    ; $45E8: $FF
    cp [hl]                                       ; $45E9: $BE
    rst RST_38                                    ; $45EA: $FF
    sbc $FF                                       ; $45EB: $DE $FF
    xor $FF                                       ; $45ED: $EE $FF
    ldh a, [c]                                    ; $45EF: $F2
    rst RST_38                                    ; $45F0: $FF
    cp b                                          ; $45F1: $B8
    ld hl, sp-$40                                 ; $45F2: $F8 $C0
    ldh [$FFC0], a                                ; $45F4: $E0 $C0
    ret nz                                        ; $45F6: $C0

    add b                                         ; $45F7: $80
    ret nz                                        ; $45F8: $C0

    add b                                         ; $45F9: $80
    ret nz                                        ; $45FA: $C0

    add b                                         ; $45FB: $80
    ret nz                                        ; $45FC: $C0

    nop                                           ; $45FD: $00
    nop                                           ; $45FE: $00
    nop                                           ; $45FF: $00
    ld a, a                                       ; $4600: $7F
    ld [bc], a                                    ; $4601: $02
    xor a                                         ; $4602: $AF
    ld d, [hl]                                    ; $4603: $56
    rst RST_18                                    ; $4604: $DF
    nop                                           ; $4605: $00
    ld [bc], a                                    ; $4606: $02
    ld bc, $0305                                  ; $4607: $01 $05 $03
    dec b                                         ; $460A: $05
    inc bc                                        ; $460B: $03
    dec b                                         ; $460C: $05
    inc bc                                        ; $460D: $03
    ld [bc], a                                    ; $460E: $02
    ld bc, $0103                                  ; $460F: $01 $03 $01
    ld bc, $0100                                  ; $4612: $01 $00 $01
    nop                                           ; $4615: $00
    inc bc                                        ; $4616: $03
    nop                                           ; $4617: $00
    ccf                                           ; $4618: $3F
    inc bc                                        ; $4619: $03
    ld d, e                                       ; $461A: $53
    dec l                                         ; $461B: $2D
    ld a, a                                       ; $461C: $7F
    nop                                           ; $461D: $00
    nop                                           ; $461E: $00
    nop                                           ; $461F: $00
    nop                                           ; $4620: $00
    nop                                           ; $4621: $00
    nop                                           ; $4622: $00
    nop                                           ; $4623: $00
    nop                                           ; $4624: $00
    nop                                           ; $4625: $00
    nop                                           ; $4626: $00
    nop                                           ; $4627: $00
    nop                                           ; $4628: $00
    nop                                           ; $4629: $00
    nop                                           ; $462A: $00
    nop                                           ; $462B: $00
    nop                                           ; $462C: $00
    nop                                           ; $462D: $00
    nop                                           ; $462E: $00
    nop                                           ; $462F: $00
    nop                                           ; $4630: $00
    nop                                           ; $4631: $00
    nop                                           ; $4632: $00
    nop                                           ; $4633: $00
    add b                                         ; $4634: $80
    nop                                           ; $4635: $00
    ld h, b                                       ; $4636: $60
    add b                                         ; $4637: $80
    db $10                                        ; $4638: $10
    ldh [$FF0C], a                                ; $4639: $E0 $0C
    ldh a, [rSC]                                  ; $463B: $F0 $02
    db $FC                                        ; $463D: $FC
    ld a, c                                       ; $463E: $79
    cp $00                                        ; $463F: $FE $00
    nop                                           ; $4641: $00
    nop                                           ; $4642: $00
    nop                                           ; $4643: $00
    nop                                           ; $4644: $00
    nop                                           ; $4645: $00
    nop                                           ; $4646: $00
    nop                                           ; $4647: $00
    nop                                           ; $4648: $00
    nop                                           ; $4649: $00
    add b                                         ; $464A: $80
    nop                                           ; $464B: $00
    ld [hl], b                                    ; $464C: $70
    add b                                         ; $464D: $80
    ld c, h                                       ; $464E: $4C
    ldh a, [$FFD2]                                ; $464F: $F0 $D2
    db $FC                                        ; $4651: $FC
    pop de                                        ; $4652: $D1
    cp $FA                                        ; $4653: $FE $FA
    rst RST_38                                    ; $4655: $FF
    ld a, [$FFFF]                                 ; $4656: $FA $FF $FF
    rst RST_38                                    ; $4659: $FF
    rst RST_38                                    ; $465A: $FF
    rst RST_28                                    ; $465B: $EF
    rst RST_38                                    ; $465C: $FF
    db $EB                                        ; $465D: $EB
    rst RST_38                                    ; $465E: $FF
    db $EB                                        ; $465F: $EB
    nop                                           ; $4660: $00
    nop                                           ; $4661: $00
    nop                                           ; $4662: $00
    nop                                           ; $4663: $00
    ldh a, [rP1]                                  ; $4664: $F0 $00
    xor b                                         ; $4666: $A8
    ldh a, [$FFF6]                                ; $4667: $F0 $F6
    ld hl, sp-$07                                 ; $4669: $F8 $F9
    cp $FA                                        ; $466B: $FE $FA
    ld c, a                                       ; $466D: $4F
    or $9F                                        ; $466E: $F6 $9F
    cp $DF                                        ; $4670: $FE $DF
    ld a, a                                       ; $4672: $7F
    rst RST_28                                    ; $4673: $EF
    rst RST_38                                    ; $4674: $FF
    rst RST_28                                    ; $4675: $EF
    rst RST_38                                    ; $4676: $FF
    rst RST_28                                    ; $4677: $EF
    rst RST_38                                    ; $4678: $FF
    rst RST_00                                    ; $4679: $C7
    rst RST_00                                    ; $467A: $C7
    inc bc                                        ; $467B: $03
    inc bc                                        ; $467C: $03
    ld bc, $0103                                  ; $467D: $01 $03 $01
    nop                                           ; $4680: $00
    nop                                           ; $4681: $00
    nop                                           ; $4682: $00
    nop                                           ; $4683: $00
    nop                                           ; $4684: $00
    nop                                           ; $4685: $00
    rrca                                          ; $4686: $0F
    nop                                           ; $4687: $00
    ld a, a                                       ; $4688: $7F
    rrca                                          ; $4689: $0F
    cp a                                          ; $468A: $BF
    ld [hl], c                                    ; $468B: $71
    halt                                          ; $468C: $76
    res 7, l                                      ; $468D: $CB $BD
    rst RST_20                                    ; $468F: $E7
    ld d, e                                       ; $4690: $53
    db $FC                                        ; $4691: $FC
    rst RST_38                                    ; $4692: $FF
    pop hl                                        ; $4693: $E1
    or $8B                                        ; $4694: $F6 $8B
    xor l                                         ; $4696: $AD
    ld d, a                                       ; $4697: $57
    ld a, [$6F0F]                                 ; $4698: $FA $0F $6F
    rst RST_38                                    ; $469B: $FF
    rst RST_38                                    ; $469C: $FF
    adc a                                         ; $469D: $8F
    adc a                                         ; $469E: $8F
    nop                                           ; $469F: $00
    nop                                           ; $46A0: $00
    nop                                           ; $46A1: $00
    nop                                           ; $46A2: $00
    nop                                           ; $46A3: $00
    nop                                           ; $46A4: $00
    nop                                           ; $46A5: $00
    nop                                           ; $46A6: $00
    nop                                           ; $46A7: $00
    nop                                           ; $46A8: $00
    nop                                           ; $46A9: $00
    rlca                                          ; $46AA: $07

jr_01D_46AB:
    nop                                           ; $46AB: $00
    ld [$1607], sp                                ; $46AC: $08 $07 $16
    dec c                                         ; $46AF: $0D
    ld de, $1F0F                                  ; $46B0: $11 $0F $1F
    rrca                                          ; $46B3: $0F
    rrca                                          ; $46B4: $0F
    ld [bc], a                                    ; $46B5: $02
    ld a, [bc]                                    ; $46B6: $0A
    dec b                                         ; $46B7: $05
    rlca                                          ; $46B8: $07
    nop                                           ; $46B9: $00
    dec c                                         ; $46BA: $0D
    rlca                                          ; $46BB: $07
    rlca                                          ; $46BC: $07
    inc bc                                        ; $46BD: $03
    inc bc                                        ; $46BE: $03
    nop                                           ; $46BF: $00
    add b                                         ; $46C0: $80
    nop                                           ; $46C1: $00
    ld b, b                                       ; $46C2: $40
    add b                                         ; $46C3: $80
    or b                                          ; $46C4: $B0
    ld b, b                                       ; $46C5: $40
    adc a                                         ; $46C6: $8F
    ld [hl], b                                    ; $46C7: $70
    add b                                         ; $46C8: $80
    ld a, a                                       ; $46C9: $7F
    and h                                         ; $46CA: $A4
    ld a, a                                       ; $46CB: $7F
    or [hl]                                       ; $46CC: $B6
    rst RST_38                                    ; $46CD: $FF
    or a                                          ; $46CE: $B7
    rst RST_38                                    ; $46CF: $FF
    rst RST_38                                    ; $46D0: $FF
    ld a, a                                       ; $46D1: $7F
    rst RST_38                                    ; $46D2: $FF
    ld a, b                                       ; $46D3: $78
    ld hl, sp-$80                                 ; $46D4: $F8 $80
    ret nz                                        ; $46D6: $C0

    add b                                         ; $46D7: $80
    ret nz                                        ; $46D8: $C0

    add b                                         ; $46D9: $80
    ret nz                                        ; $46DA: $C0

    add b                                         ; $46DB: $80
    ret nz                                        ; $46DC: $C0

    nop                                           ; $46DD: $00
    add b                                         ; $46DE: $80
    nop                                           ; $46DF: $00
    nop                                           ; $46E0: $00
    nop                                           ; $46E1: $00
    nop                                           ; $46E2: $00
    nop                                           ; $46E3: $00
    nop                                           ; $46E4: $00
    nop                                           ; $46E5: $00

jr_01D_46E6:
    nop                                           ; $46E6: $00
    nop                                           ; $46E7: $00

jr_01D_46E8:
    ret nz                                        ; $46E8: $C0

    nop                                           ; $46E9: $00
    ldh [rLCDC], a                                ; $46EA: $E0 $40
    ld [hl], b                                    ; $46EC: $70
    jr nz, jr_01D_475F                            ; $46ED: $20 $70

    jr nz, @+$5A                                  ; $46EF: $20 $58

    jr nc, jr_01D_46AB                            ; $46F1: $30 $B8

    ld [hl], b                                    ; $46F3: $70
    jr jr_01D_46E6                                ; $46F4: $18 $F0

    jr c, jr_01D_46E8                             ; $46F6: $38 $F0

    or b                                          ; $46F8: $B0
    ldh [$FFF0], a                                ; $46F9: $E0 $F0
    ldh [$FFE0], a                                ; $46FB: $E0 $E0
    ret nz                                        ; $46FD: $C0

    ret nz                                        ; $46FE: $C0

    nop                                           ; $46FF: $00
    db $FC                                        ; $4700: $FC
    rra                                           ; $4701: $1F
    add b                                         ; $4702: $80
    rst RST_38                                    ; $4703: $FF
    ld bc, $79FF                                  ; $4704: $01 $FF $79
    cp $FD                                        ; $4707: $FE $FD
    cp $FD                                        ; $4709: $FE $FD

jr_01D_470B:
    cp $FF                                        ; $470B: $FE $FF
    cp $FF                                        ; $470D: $FE $FF
    db $DD                                        ; $470F: $DD

jr_01D_4710:
    rst RST_38                                    ; $4710: $FF
    db $E3                                        ; $4711: $E3
    rst RST_38                                    ; $4712: $FF
    ld [hl], c                                    ; $4713: $71
    ld sp, hl                                     ; $4714: $F9
    ld h, b                                       ; $4715: $60
    db $FC                                        ; $4716: $FC
    ldh [$FFFE], a                                ; $4717: $E0 $FE
    ret nz                                        ; $4719: $C0

    sbc $80                                       ; $471A: $DE $80
    cp h                                          ; $471C: $BC
    nop                                           ; $471D: $00
    ld hl, sp+$00                                 ; $471E: $F8 $00
    rst RST_38                                    ; $4720: $FF
    dec de                                        ; $4721: $1B
    ld e, a                                       ; $4722: $5F
    or [hl]                                       ; $4723: $B6
    rst RST_38                                    ; $4724: $FF
    dec c                                         ; $4725: $0D
    rst RST_38                                    ; $4726: $FF
    ld e, l                                       ; $4727: $5D
    rst RST_38                                    ; $4728: $FF
    ld l, l                                       ; $4729: $6D
    rst RST_38                                    ; $472A: $FF
    ld l, l                                       ; $472B: $6D
    ld a, a                                       ; $472C: $7F
    dec [hl]                                      ; $472D: $35
    ld a, a                                       ; $472E: $7F
    jr c, @+$41                                   ; $472F: $38 $3F

    ld c, $0F                                     ; $4731: $0E $0F
    ld bc, $0001                                  ; $4733: $01 $01 $00
    ld bc, $0300                                  ; $4736: $01 $00 $03
    ld bc, $001F                                  ; $4739: $01 $1F $00
    inc h                                         ; $473C: $24
    dec de                                        ; $473D: $1B
    ccf                                           ; $473E: $3F
    nop                                           ; $473F: $00
    nop                                           ; $4740: $00
    nop                                           ; $4741: $00
    nop                                           ; $4742: $00
    nop                                           ; $4743: $00
    nop                                           ; $4744: $00
    nop                                           ; $4745: $00
    inc bc                                        ; $4746: $03
    nop                                           ; $4747: $00
    ld bc, $8000                                  ; $4748: $01 $00 $80
    nop                                           ; $474B: $00
    ld b, b                                       ; $474C: $40
    add b                                         ; $474D: $80
    jr nc, jr_01D_4710                            ; $474E: $30 $C0

    adc a                                         ; $4750: $8F
    ldh a, [$FFC0]                                ; $4751: $F0 $C0
    rst RST_38                                    ; $4753: $FF
    jp nc, $DBFF                                  ; $4754: $D2 $FF $DB

    rst RST_38                                    ; $4757: $FF
    rst RST_18                                    ; $4758: $DF
    rst RST_38                                    ; $4759: $FF
    rst RST_38                                    ; $475A: $FF
    rst RST_38                                    ; $475B: $FF
    rst RST_38                                    ; $475C: $FF
    db $FC                                        ; $475D: $FC
    db $FC                                        ; $475E: $FC

jr_01D_475F:
    nop                                           ; $475F: $00
    nop                                           ; $4760: $00
    nop                                           ; $4761: $00
    nop                                           ; $4762: $00
    nop                                           ; $4763: $00
    nop                                           ; $4764: $00
    nop                                           ; $4765: $00

jr_01D_4766:
    nop                                           ; $4766: $00
    nop                                           ; $4767: $00

jr_01D_4768:
    add b                                         ; $4768: $80
    nop                                           ; $4769: $00
    ldh [$FF80], a                                ; $476A: $E0 $80
    ldh a, [$FF60]                                ; $476C: $F0 $60
    ld d, b                                       ; $476E: $50
    jr nz, jr_01D_47E9                            ; $476F: $20 $78

    jr nc, jr_01D_470B                            ; $4771: $30 $98

    ld [hl], b                                    ; $4773: $70
    jr jr_01D_4766                                ; $4774: $18 $F0

    jr c, jr_01D_4768                             ; $4776: $38 $F0

    ld [hl], b                                    ; $4778: $70
    ldh [$FFF0], a                                ; $4779: $E0 $F0
    ldh [$FFE0], a                                ; $477B: $E0 $E0
    add b                                         ; $477D: $80
    add b                                         ; $477E: $80
    nop                                           ; $477F: $00
    nop                                           ; $4780: $00

Jump_01D_4781:
    nop                                           ; $4781: $00
    nop                                           ; $4782: $00
    nop                                           ; $4783: $00
    nop                                           ; $4784: $00
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
    add b                                         ; $4794: $80
    nop                                           ; $4795: $00
    ld h, b                                       ; $4796: $60
    add b                                         ; $4797: $80
    db $10                                        ; $4798: $10
    ldh [$FF0C], a                                ; $4799: $E0 $0C
    ldh a, [rSC]                                  ; $479B: $F0 $02
    db $FC                                        ; $479D: $FC
    ld a, c                                       ; $479E: $79
    cp $00                                        ; $479F: $FE $00
    nop                                           ; $47A1: $00
    nop                                           ; $47A2: $00
    nop                                           ; $47A3: $00
    nop                                           ; $47A4: $00
    nop                                           ; $47A5: $00
    nop                                           ; $47A6: $00
    nop                                           ; $47A7: $00
    nop                                           ; $47A8: $00
    nop                                           ; $47A9: $00
    add b                                         ; $47AA: $80
    nop                                           ; $47AB: $00
    ld [hl], b                                    ; $47AC: $70
    add b                                         ; $47AD: $80
    ld c, h                                       ; $47AE: $4C
    ldh a, [$FFC2]                                ; $47AF: $F0 $C2
    db $FC                                        ; $47B1: $FC
    push de                                       ; $47B2: $D5
    cp $B4                                        ; $47B3: $FE $B4
    rst RST_38                                    ; $47B5: $FF
    cp $FF                                        ; $47B6: $FE $FF
    cp $FF                                        ; $47B8: $FE $FF
    rst RST_38                                    ; $47BA: $FF
    rst RST_28                                    ; $47BB: $EF
    rst RST_38                                    ; $47BC: $FF
    db $EB                                        ; $47BD: $EB
    rst RST_38                                    ; $47BE: $FF
    db $EB                                        ; $47BF: $EB
    ldh a, [rP1]                                  ; $47C0: $F0 $00
    xor b                                         ; $47C2: $A8
    ldh a, [$FFF6]                                ; $47C3: $F0 $F6
    ld hl, sp-$07                                 ; $47C5: $F8 $F9
    cp $FA                                        ; $47C7: $FE $FA
    ld c, a                                       ; $47C9: $4F
    or $9F                                        ; $47CA: $F6 $9F
    cp $DF                                        ; $47CC: $FE $DF
    ld a, a                                       ; $47CE: $7F
    rst RST_28                                    ; $47CF: $EF
    rst RST_38                                    ; $47D0: $FF
    rst RST_28                                    ; $47D1: $EF
    rst RST_38                                    ; $47D2: $FF
    rst RST_28                                    ; $47D3: $EF
    rst RST_38                                    ; $47D4: $FF
    rst RST_00                                    ; $47D5: $C7
    rst RST_00                                    ; $47D6: $C7
    inc bc                                        ; $47D7: $03
    inc bc                                        ; $47D8: $03
    ld bc, $007F                                  ; $47D9: $01 $7F $00
    xor a                                         ; $47DC: $AF
    ld d, a                                       ; $47DD: $57
    ld d, a                                       ; $47DE: $57
    nop                                           ; $47DF: $00
    nop                                           ; $47E0: $00
    nop                                           ; $47E1: $00
    nop                                           ; $47E2: $00
    nop                                           ; $47E3: $00
    nop                                           ; $47E4: $00
    nop                                           ; $47E5: $00
    rrca                                          ; $47E6: $0F
    nop                                           ; $47E7: $00
    ld a, a                                       ; $47E8: $7F

jr_01D_47E9:
    rrca                                          ; $47E9: $0F
    cp a                                          ; $47EA: $BF
    ld [hl], c                                    ; $47EB: $71
    halt                                          ; $47EC: $76
    res 7, l                                      ; $47ED: $CB $BD
    rst RST_20                                    ; $47EF: $E7
    ld d, e                                       ; $47F0: $53
    db $FC                                        ; $47F1: $FC
    rst RST_38                                    ; $47F2: $FF
    pop hl                                        ; $47F3: $E1
    or $8B                                        ; $47F4: $F6 $8B
    xor l                                         ; $47F6: $AD
    ld d, a                                       ; $47F7: $57
    ld a, [$6F0F]                                 ; $47F8: $FA $0F $6F
    rst RST_38                                    ; $47FB: $FF
    rst RST_38                                    ; $47FC: $FF
    adc a                                         ; $47FD: $8F
    adc a                                         ; $47FE: $8F
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
    rlca                                          ; $480A: $07
    nop                                           ; $480B: $00
    ld [$1607], sp                                ; $480C: $08 $07 $16
    dec c                                         ; $480F: $0D
    ld de, $1F0F                                  ; $4810: $11 $0F $1F
    rrca                                          ; $4813: $0F
    rrca                                          ; $4814: $0F
    ld [bc], a                                    ; $4815: $02
    ld a, [bc]                                    ; $4816: $0A
    dec b                                         ; $4817: $05
    rlca                                          ; $4818: $07
    nop                                           ; $4819: $00
    dec c                                         ; $481A: $0D
    rlca                                          ; $481B: $07
    rlca                                          ; $481C: $07
    inc bc                                        ; $481D: $03
    inc bc                                        ; $481E: $03
    nop                                           ; $481F: $00
    inc bc                                        ; $4820: $03
    nop                                           ; $4821: $00
    dec a                                         ; $4822: $3D
    inc bc                                        ; $4823: $03
    ld b, e                                       ; $4824: $43
    ld a, $B5                                     ; $4825: $3E $B5
    ld l, a                                       ; $4827: $6F
    adc d                                         ; $4828: $8A
    ld a, a                                       ; $4829: $7F
    rst RST_38                                    ; $482A: $FF
    ld a, a                                       ; $482B: $7F
    ld a, a                                       ; $482C: $7F
    inc d                                         ; $482D: $14
    ld d, l                                       ; $482E: $55
    ld a, [hl+]                                   ; $482F: $2A
    ccf                                           ; $4830: $3F
    nop                                           ; $4831: $00
    ld l, e                                       ; $4832: $6B
    ccf                                           ; $4833: $3F
    ccf                                           ; $4834: $3F
    inc e                                         ; $4835: $1C
    inc e                                         ; $4836: $1C
    nop                                           ; $4837: $00
    nop                                           ; $4838: $00
    nop                                           ; $4839: $00
    nop                                           ; $483A: $00
    nop                                           ; $483B: $00
    nop                                           ; $483C: $00
    nop                                           ; $483D: $00
    nop                                           ; $483E: $00
    nop                                           ; $483F: $00
    ld a, b                                       ; $4840: $78
    nop                                           ; $4841: $00
    rst RST_38                                    ; $4842: $FF
    ld a, b                                       ; $4843: $78
    db $FC                                        ; $4844: $FC
    adc a                                         ; $4845: $8F
    or [hl]                                       ; $4846: $B6
    ld e, a                                       ; $4847: $5F
    rst RST_28                                    ; $4848: $EF
    ccf                                           ; $4849: $3F
    sbc a                                         ; $484A: $9F
    ldh [c], a                                    ; $484B: $E2
    rst RST_38                                    ; $484C: $FF
    inc c                                         ; $484D: $0C
    or a                                          ; $484E: $B7
    ld e, [hl]                                    ; $484F: $5E
    ld l, e                                       ; $4850: $6B
    cp a                                          ; $4851: $BF
    rst RST_10                                    ; $4852: $D7
    ld a, a                                       ; $4853: $7F
    ld a, a                                       ; $4854: $7F
    cp $FE                                        ; $4855: $FE $FE
    ld a, h                                       ; $4857: $7C
    ld a, a                                       ; $4858: $7F
    nop                                           ; $4859: $00
    ld a, [bc]                                    ; $485A: $0A
    dec b                                         ; $485B: $05
    dec b                                         ; $485C: $05
    nop                                           ; $485D: $00
    rrca                                          ; $485E: $0F
    nop                                           ; $485F: $00
    ret nz                                        ; $4860: $C0

    nop                                           ; $4861: $00
    ld [hl], b                                    ; $4862: $70
    ret nz                                        ; $4863: $C0

    adc $F0                                       ; $4864: $CE $F0
    db $D3                                        ; $4866: $D3
    cp $F6                                        ; $4867: $FE $F6
    ld a, a                                       ; $4869: $7F
    or $FF                                        ; $486A: $F6 $FF
    rst RST_38                                    ; $486C: $FF
    rst RST_38                                    ; $486D: $FF
    rst RST_38                                    ; $486E: $FF
    ld a, a                                       ; $486F: $7F
    rst RST_38                                    ; $4870: $FF
    ld a, l                                       ; $4871: $7D
    ld a, a                                       ; $4872: $7F
    dec e                                         ; $4873: $1D
    ld a, a                                       ; $4874: $7F
    dec l                                         ; $4875: $2D
    rst RST_38                                    ; $4876: $FF
    ld b, c                                       ; $4877: $41
    rst RST_10                                    ; $4878: $D7
    ld a, [hl+]                                   ; $4879: $2A
    ccf                                           ; $487A: $3F
    nop                                           ; $487B: $00
    rst RST_10                                    ; $487C: $D7
    ld c, $B7                                     ; $487D: $0E $B7
    adc $E0                                       ; $487F: $CE $E0
    nop                                           ; $4881: $00
    ld e, b                                       ; $4882: $58
    ldh [$FFCC], a                                ; $4883: $E0 $CC
    ld hl, sp-$26                                 ; $4885: $F8 $DA
    db $FC                                        ; $4887: $FC
    ei                                            ; $4888: $FB
    cp $FF                                        ; $4889: $FE $FF
    rst RST_38                                    ; $488B: $FF
    rst RST_38                                    ; $488C: $FF
    ld a, [hl]                                    ; $488D: $7E
    rst RST_38                                    ; $488E: $FF
    ld a, l                                       ; $488F: $7D
    cp $7B                                        ; $4890: $FE $7B
    db $FC                                        ; $4892: $FC
    ei                                            ; $4893: $FB
    db $FD                                        ; $4894: $FD
    rst RST_30                                    ; $4895: $F7
    rst RST_38                                    ; $4896: $FF
    rst RST_30                                    ; $4897: $F7
    rst RST_38                                    ; $4898: $FF
    rst RST_30                                    ; $4899: $F7
    rst RST_38                                    ; $489A: $FF
    ld a, e                                       ; $489B: $7B
    rst RST_38                                    ; $489C: $FF
    ld a, e                                       ; $489D: $7B
    rst RST_38                                    ; $489E: $FF
    sbc l                                         ; $489F: $9D
    add b                                         ; $48A0: $80
    nop                                           ; $48A1: $00
    ld b, b                                       ; $48A2: $40
    add b                                         ; $48A3: $80
    ldh a, [rP1]                                  ; $48A4: $F0 $00
    sbc b                                         ; $48A6: $98
    ldh a, [$FF08]                                ; $48A7: $F0 $08
    ldh a, [$FFCC]                                ; $48A9: $F0 $CC

jr_01D_48AB:
    ld hl, sp-$4C                                 ; $48AB: $F8 $B4
    ld hl, sp-$0C                                 ; $48AD: $F8 $F4
    ld hl, sp-$04                                 ; $48AF: $F8 $FC
    ld hl, sp-$04                                 ; $48B1: $F8 $FC
    ret c                                         ; $48B3: $D8

    db $FC                                        ; $48B4: $FC
    ret z                                         ; $48B5: $C8

    ld hl, sp-$10                                 ; $48B6: $F8 $F0
    ld hl, sp+$30                                 ; $48B8: $F8 $30
    ldh a, [$FF60]                                ; $48BA: $F0 $60
    ldh a, [rNR41]                                ; $48BC: $F0 $20
    jr nc, @-$3E                                  ; $48BE: $30 $C0

    ld c, $03                                     ; $48C0: $0E $03
    inc de                                        ; $48C2: $13
    rrca                                          ; $48C3: $0F
    scf                                           ; $48C4: $37
    inc e                                         ; $48C5: $1C
    ld a, h                                       ; $48C6: $7C
    jr nc, jr_01D_4919                            ; $48C7: $30 $50

    jr nz, jr_01D_48AB                            ; $48C9: $20 $E0

    ld b, b                                       ; $48CB: $40
    ret nz                                        ; $48CC: $C0

    nop                                           ; $48CD: $00
    nop                                           ; $48CE: $00
    nop                                           ; $48CF: $00
    nop                                           ; $48D0: $00
    nop                                           ; $48D1: $00
    nop                                           ; $48D2: $00
    nop                                           ; $48D3: $00
    nop                                           ; $48D4: $00
    nop                                           ; $48D5: $00
    nop                                           ; $48D6: $00
    nop                                           ; $48D7: $00
    nop                                           ; $48D8: $00
    nop                                           ; $48D9: $00
    nop                                           ; $48DA: $00
    nop                                           ; $48DB: $00
    nop                                           ; $48DC: $00
    nop                                           ; $48DD: $00
    nop                                           ; $48DE: $00
    nop                                           ; $48DF: $00
    xor l                                         ; $48E0: $AD
    di                                            ; $48E1: $F3
    or $FD                                        ; $48E2: $F6 $FD
    ei                                            ; $48E4: $FB
    ld a, $3F                                     ; $48E5: $3E $3F
    rrca                                          ; $48E7: $0F
    rrca                                          ; $48E8: $0F
    ld b, $1F                                     ; $48E9: $06 $1F
    ld bc, $1629                                  ; $48EB: $01 $29 $16
    ccf                                           ; $48EE: $3F
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
    sbc $FF                                       ; $4901: $DE $FF
    sbc $FF                                       ; $4903: $DE $FF
    daa                                           ; $4905: $27
    rst RST_38                                    ; $4906: $FF
    ld l, b                                       ; $4907: $68
    rst RST_38                                    ; $4908: $FF
    rst RST_18                                    ; $4909: $DF
    rst RST_38                                    ; $490A: $FF
    sbc $FE                                       ; $490B: $DE $FE
    ld bc, $0003                                  ; $490D: $01 $03 $00
    nop                                           ; $4910: $00
    nop                                           ; $4911: $00
    nop                                           ; $4912: $00
    nop                                           ; $4913: $00
    nop                                           ; $4914: $00
    nop                                           ; $4915: $00
    nop                                           ; $4916: $00
    nop                                           ; $4917: $00
    nop                                           ; $4918: $00

jr_01D_4919:
    nop                                           ; $4919: $00
    nop                                           ; $491A: $00
    nop                                           ; $491B: $00
    nop                                           ; $491C: $00
    nop                                           ; $491D: $00
    nop                                           ; $491E: $00
    nop                                           ; $491F: $00
    cp $0C                                        ; $4920: $FE $0C
    db $FC                                        ; $4922: $FC
    ret c                                         ; $4923: $D8

    db $FC                                        ; $4924: $FC
    ld [$B04C], sp                                ; $4925: $08 $4C $B0
    db $FC                                        ; $4928: $FC
    nop                                           ; $4929: $00
    nop                                           ; $492A: $00
    nop                                           ; $492B: $00
    nop                                           ; $492C: $00
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
    inc bc                                        ; $4940: $03
    nop                                           ; $4941: $00
    dec a                                         ; $4942: $3D
    inc bc                                        ; $4943: $03
    ld b, e                                       ; $4944: $43
    ld a, $B5                                     ; $4945: $3E $B5
    ld l, a                                       ; $4947: $6F
    adc d                                         ; $4948: $8A
    ld a, a                                       ; $4949: $7F
    rst RST_38                                    ; $494A: $FF
    ld a, a                                       ; $494B: $7F
    ld a, a                                       ; $494C: $7F
    inc d                                         ; $494D: $14
    ld d, l                                       ; $494E: $55
    ld a, [hl+]                                   ; $494F: $2A
    ccf                                           ; $4950: $3F
    nop                                           ; $4951: $00
    ld l, e                                       ; $4952: $6B
    ccf                                           ; $4953: $3F
    ccf                                           ; $4954: $3F
    inc e                                         ; $4955: $1C
    inc e                                         ; $4956: $1C
    nop                                           ; $4957: $00
    nop                                           ; $4958: $00
    nop                                           ; $4959: $00
    nop                                           ; $495A: $00
    nop                                           ; $495B: $00
    nop                                           ; $495C: $00
    nop                                           ; $495D: $00
    nop                                           ; $495E: $00
    nop                                           ; $495F: $00
    ld a, b                                       ; $4960: $78
    nop                                           ; $4961: $00
    rst RST_38                                    ; $4962: $FF
    ld a, b                                       ; $4963: $78
    db $FD                                        ; $4964: $FD
    adc a                                         ; $4965: $8F
    or a                                          ; $4966: $B7
    ld e, a                                       ; $4967: $5F
    rst RST_28                                    ; $4968: $EF
    ccf                                           ; $4969: $3F
    sbc a                                         ; $496A: $9F
    ldh [c], a                                    ; $496B: $E2
    rst RST_38                                    ; $496C: $FF
    inc c                                         ; $496D: $0C
    or a                                          ; $496E: $B7
    ld e, [hl]                                    ; $496F: $5E
    ld l, e                                       ; $4970: $6B
    cp a                                          ; $4971: $BF
    rst RST_10                                    ; $4972: $D7
    ld a, a                                       ; $4973: $7F
    ld a, a                                       ; $4974: $7F
    rst RST_38                                    ; $4975: $FF
    rst RST_38                                    ; $4976: $FF
    ld a, [hl]                                    ; $4977: $7E
    ld a, [hl]                                    ; $4978: $7E
    nop                                           ; $4979: $00
    nop                                           ; $497A: $00
    nop                                           ; $497B: $00
    rlca                                          ; $497C: $07
    nop                                           ; $497D: $00
    ld a, [bc]                                    ; $497E: $0A
    dec b                                         ; $497F: $05
    add b                                         ; $4980: $80
    nop                                           ; $4981: $00
    ld b, b                                       ; $4982: $40
    add b                                         ; $4983: $80

jr_01D_4984:
    or b                                          ; $4984: $B0
    ret nz                                        ; $4985: $C0

    call z, $D3F0                                 ; $4986: $CC $F0 $D3
    ld a, h                                       ; $4989: $7C
    or d                                          ; $498A: $B2
    rst RST_38                                    ; $498B: $FF
    or $FF                                        ; $498C: $F6 $FF
    cp $7F                                        ; $498E: $FE $7F
    db $FD                                        ; $4990: $FD
    ld a, a                                       ; $4991: $7F
    rst RST_38                                    ; $4992: $FF
    ld a, e                                       ; $4993: $7B
    rst RST_38                                    ; $4994: $FF
    ld a, [hl-]                                   ; $4995: $3A
    ccf                                           ; $4996: $3F
    ld a, [de]                                    ; $4997: $1A
    ld a, a                                       ; $4998: $7F
    ld b, $D7                                     ; $4999: $06 $D7
    add hl, hl                                    ; $499B: $29
    rst RST_38                                    ; $499C: $FF
    ld b, e                                       ; $499D: $43
    rst RST_08                                    ; $499E: $CF
    rlca                                          ; $499F: $07
    add b                                         ; $49A0: $80
    nop                                           ; $49A1: $00
    ld h, b                                       ; $49A2: $60
    add b                                         ; $49A3: $80
    db $10                                        ; $49A4: $10
    ldh [$FFAC], a                                ; $49A5: $E0 $AC
    ldh a, [$FFA2]                                ; $49A7: $F0 $A2
    db $FC                                        ; $49A9: $FC
    pop af                                        ; $49AA: $F1
    cp $F0                                        ; $49AB: $FE $F0
    rst RST_38                                    ; $49AD: $FF
    cp $FF                                        ; $49AE: $FE $FF
    db $FC                                        ; $49B0: $FC
    rst RST_30                                    ; $49B1: $F7
    ld hl, sp-$11                                 ; $49B2: $F8 $EF
    ldh a, [$FFDF]                                ; $49B4: $F0 $DF
    push hl                                       ; $49B6: $E5
    rst RST_18                                    ; $49B7: $DF
    rst RST_20                                    ; $49B8: $E7
    cp a                                          ; $49B9: $BF
    rst RST_28                                    ; $49BA: $EF
    cp a                                          ; $49BB: $BF
    rst RST_28                                    ; $49BC: $EF
    cp a                                          ; $49BD: $BF
    rst RST_38                                    ; $49BE: $FF
    ccf                                           ; $49BF: $3F
    ret nz                                        ; $49C0: $C0

    nop                                           ; $49C1: $00
    jr nz, jr_01D_4984                            ; $49C2: $20 $C0

    db $10                                        ; $49C4: $10
    ldh [$FF08], a                                ; $49C5: $E0 $08
    ldh a, [$FF88]                                ; $49C7: $F0 $88
    ldh a, [$FF64]                                ; $49C9: $F0 $64
    ld hl, sp-$0D                                 ; $49CB: $F8 $F3
    db $FC                                        ; $49CD: $FC
    ldh a, [$FFCF]                                ; $49CE: $F0 $CF
    ldh [$FFBF], a                                ; $49D0: $E0 $BF
    push hl                                       ; $49D2: $E5
    ld a, a                                       ; $49D3: $7F
    db $FD                                        ; $49D4: $FD
    cp a                                          ; $49D5: $BF
    db $FD                                        ; $49D6: $FD
    cp a                                          ; $49D7: $BF
    rst RST_38                                    ; $49D8: $FF
    rst RST_08                                    ; $49D9: $CF
    rst RST_38                                    ; $49DA: $FF
    db $E3                                        ; $49DB: $E3
    di                                            ; $49DC: $F3
    ld h, b                                       ; $49DD: $60
    ldh a, [$FF60]                                ; $49DE: $F0 $60
    ld b, $00                                     ; $49E0: $06 $00
    rlca                                          ; $49E2: $07
    ld [bc], a                                    ; $49E3: $02
    inc bc                                        ; $49E4: $03
    ld bc, $0103                                  ; $49E5: $01 $03 $01
    ld [bc], a                                    ; $49E8: $02
    ld bc, $030D                                  ; $49E9: $01 $0D $03
    ldh a, [rIF]                                  ; $49EC: $F0 $0F
    ld bc, $25FF                                  ; $49EE: $01 $FF $25
    rst RST_38                                    ; $49F1: $FF
    or a                                          ; $49F2: $B7
    rst RST_38                                    ; $49F3: $FF
    cp a                                          ; $49F4: $BF
    cp $FE                                        ; $49F5: $FE $FE
    ld hl, sp-$08                                 ; $49F7: $F8 $F8
    ret nz                                        ; $49F9: $C0

    ret nz                                        ; $49FA: $C0

    nop                                           ; $49FB: $00
    nop                                           ; $49FC: $00
    nop                                           ; $49FD: $00
    nop                                           ; $49FE: $00
    nop                                           ; $49FF: $00
    dec bc                                        ; $4A00: $0B
    inc b                                         ; $4A01: $04
    inc c                                         ; $4A02: $0C
    nop                                           ; $4A03: $00
    nop                                           ; $4A04: $00
    nop                                           ; $4A05: $00
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
    rlca                                          ; $4A20: $07
    inc bc                                        ; $4A21: $03
    rlca                                          ; $4A22: $07
    inc bc                                        ; $4A23: $03
    rrca                                          ; $4A24: $0F
    dec b                                         ; $4A25: $05
    rrca                                          ; $4A26: $0F
    ld b, $0F                                     ; $4A27: $06 $0F
    rlca                                          ; $4A29: $07
    rlca                                          ; $4A2A: $07
    inc bc                                        ; $4A2B: $03
    rlca                                          ; $4A2C: $07
    inc bc                                        ; $4A2D: $03
    inc bc                                        ; $4A2E: $03
    ld bc, $0001                                  ; $4A2F: $01 $01 $00
    nop                                           ; $4A32: $00
    nop                                           ; $4A33: $00
    nop                                           ; $4A34: $00
    nop                                           ; $4A35: $00
    nop                                           ; $4A36: $00
    nop                                           ; $4A37: $00
    nop                                           ; $4A38: $00
    nop                                           ; $4A39: $00
    nop                                           ; $4A3A: $00
    nop                                           ; $4A3B: $00
    nop                                           ; $4A3C: $00
    nop                                           ; $4A3D: $00
    nop                                           ; $4A3E: $00
    nop                                           ; $4A3F: $00
    rst RST_38                                    ; $4A40: $FF
    ld e, $FF                                     ; $4A41: $1E $FF
    adc a                                         ; $4A43: $8F
    rst RST_38                                    ; $4A44: $FF
    add e                                         ; $4A45: $83
    rst RST_38                                    ; $4A46: $FF
    pop bc                                        ; $4A47: $C1
    ld sp, hl                                     ; $4A48: $F9
    nop                                           ; $4A49: $00
    ld a, h                                       ; $4A4A: $7C
    nop                                           ; $4A4B: $00
    inc a                                         ; $4A4C: $3C
    nop                                           ; $4A4D: $00
    inc e                                         ; $4A4E: $1C
    nop                                           ; $4A4F: $00
    add hl, de                                    ; $4A50: $19
    nop                                           ; $4A51: $00
    add hl, de                                    ; $4A52: $19
    nop                                           ; $4A53: $00
    add hl, sp                                    ; $4A54: $39
    nop                                           ; $4A55: $00
    add hl, sp                                    ; $4A56: $39
    nop                                           ; $4A57: $00
    add hl, sp                                    ; $4A58: $39
    nop                                           ; $4A59: $00
    add hl, hl                                    ; $4A5A: $29
    nop                                           ; $4A5B: $00
    nop                                           ; $4A5C: $00
    nop                                           ; $4A5D: $00
    nop                                           ; $4A5E: $00
    nop                                           ; $4A5F: $00
    ldh [rLCDC], a                                ; $4A60: $E0 $40
    ldh [rLCDC], a                                ; $4A62: $E0 $40
    ldh [$FFC0], a                                ; $4A64: $E0 $C0
    ldh [$FFC0], a                                ; $4A66: $E0 $C0
    ldh [rP1], a                                  ; $4A68: $E0 $00
    ld d, b                                       ; $4A6A: $50
    and b                                         ; $4A6B: $A0
    ld d, b                                       ; $4A6C: $50
    and b                                         ; $4A6D: $A0
    ld h, b                                       ; $4A6E: $60
    add b                                         ; $4A6F: $80
    add b                                         ; $4A70: $80
    nop                                           ; $4A71: $00
    nop                                           ; $4A72: $00
    nop                                           ; $4A73: $00
    nop                                           ; $4A74: $00
    nop                                           ; $4A75: $00
    nop                                           ; $4A76: $00
    nop                                           ; $4A77: $00
    nop                                           ; $4A78: $00
    nop                                           ; $4A79: $00
    nop                                           ; $4A7A: $00
    nop                                           ; $4A7B: $00
    nop                                           ; $4A7C: $00
    nop                                           ; $4A7D: $00
    nop                                           ; $4A7E: $00
    nop                                           ; $4A7F: $00
    nop                                           ; $4A80: $00
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
    add b                                         ; $4A90: $80
    nop                                           ; $4A91: $00
    add b                                         ; $4A92: $80
    nop                                           ; $4A93: $00
    ret nz                                        ; $4A94: $C0

    add b                                         ; $4A95: $80
    ret nz                                        ; $4A96: $C0

    add b                                         ; $4A97: $80
    ret nz                                        ; $4A98: $C0

    add b                                         ; $4A99: $80
    ret nz                                        ; $4A9A: $C0

    add b                                         ; $4A9B: $80
    add b                                         ; $4A9C: $80
    nop                                           ; $4A9D: $00
    add b                                         ; $4A9E: $80
    nop                                           ; $4A9F: $00
    nop                                           ; $4AA0: $00
    nop                                           ; $4AA1: $00
    ld bc, $0700                                  ; $4AA2: $01 $00 $07
    ld bc, $070F                                  ; $4AA5: $01 $0F $07
    ld e, $0D                                     ; $4AA8: $1E $0D
    rla                                           ; $4AAA: $17
    dec c                                         ; $4AAB: $0D
    ld [hl], $19                                  ; $4AAC: $36 $19
    ld [hl], $09                                  ; $4AAE: $36 $09
    dec a                                         ; $4AB0: $3D
    rla                                           ; $4AB1: $17
    ld l, e                                       ; $4AB2: $6B
    ld a, $47                                     ; $4AB3: $3E $47
    dec a                                         ; $4AB5: $3D
    call nc, $BF7F                                ; $4AB6: $D4 $7F $BF
    ld e, d                                       ; $4AB9: $5A
    cp c                                          ; $4ABA: $B9
    halt                                          ; $4ABB: $76
    ld a, a                                       ; $4ABC: $7F
    ld sp, $0336                                  ; $4ABD: $31 $36 $03
    ccf                                           ; $4AC0: $3F
    nop                                           ; $4AC1: $00
    ret nc                                        ; $4AC2: $D0

    ccf                                           ; $4AC3: $3F
    ld a, [hl+]                                   ; $4AC4: $2A
    rst RST_38                                    ; $4AC5: $FF
    cp $EF                                        ; $4AC6: $FE $EF
    rst RST_38                                    ; $4AC8: $FF
    rst RST_18                                    ; $4AC9: $DF
    rst RST_38                                    ; $4ACA: $FF
    adc a                                         ; $4ACB: $8F
    rst RST_18                                    ; $4ACC: $DF
    ld a, e                                       ; $4ACD: $7B
    cp a                                          ; $4ACE: $BF
    ld a, l                                       ; $4ACF: $7D
    rst RST_18                                    ; $4AD0: $DF
    ld a, h                                       ; $4AD1: $7C
    ld a, a                                       ; $4AD2: $7F
    cp h                                          ; $4AD3: $BC
    rst RST_38                                    ; $4AD4: $FF
    ld a, c                                       ; $4AD5: $79
    cp e                                          ; $4AD6: $BB
    ld [hl], h                                    ; $4AD7: $74
    ld [hl], h                                    ; $4AD8: $74
    ret nz                                        ; $4AD9: $C0

    ldh [$FFC0], a                                ; $4ADA: $E0 $C0
    ret nz                                        ; $4ADC: $C0

    add b                                         ; $4ADD: $80
    ret nz                                        ; $4ADE: $C0

    add b                                         ; $4ADF: $80
    nop                                           ; $4AE0: $00
    nop                                           ; $4AE1: $00
    ldh a, [rP1]                                  ; $4AE2: $F0 $00
    ld c, $F0                                     ; $4AE4: $0E $F0
    sub c                                         ; $4AE6: $91
    cp $B2                                        ; $4AE7: $FE $B2
    rst RST_38                                    ; $4AE9: $FF
    or $FF                                        ; $4AEA: $F6 $FF
    rst RST_38                                    ; $4AEC: $FF
    rst RST_38                                    ; $4AED: $FF
    rst RST_38                                    ; $4AEE: $FF
    rst RST_38                                    ; $4AEF: $FF
    rst RST_38                                    ; $4AF0: $FF
    ei                                            ; $4AF1: $FB
    rst RST_38                                    ; $4AF2: $FF
    ld a, d                                       ; $4AF3: $7A
    rst RST_38                                    ; $4AF4: $FF
    add [hl]                                      ; $4AF5: $86
    rst RST_10                                    ; $4AF6: $D7
    add hl, hl                                    ; $4AF7: $29
    ccf                                           ; $4AF8: $3F
    rla                                           ; $4AF9: $17
    ccf                                           ; $4AFA: $3F
    rra                                           ; $4AFB: $1F
    ld a, a                                       ; $4AFC: $7F
    rrca                                          ; $4AFD: $0F
    cp a                                          ; $4AFE: $BF
    ld c, a                                       ; $4AFF: $4F
    nop                                           ; $4B00: $00
    nop                                           ; $4B01: $00
    nop                                           ; $4B02: $00
    nop                                           ; $4B03: $00
    nop                                           ; $4B04: $00
    nop                                           ; $4B05: $00
    add b                                         ; $4B06: $80
    nop                                           ; $4B07: $00
    ld b, b                                       ; $4B08: $40
    add b                                         ; $4B09: $80
    and b                                         ; $4B0A: $A0
    ret nz                                        ; $4B0B: $C0

    or b                                          ; $4B0C: $B0
    ldh [$FFD0], a                                ; $4B0D: $E0 $D0
    ldh [$FFCC], a                                ; $4B0F: $E0 $CC
    ldh a, [$FFE6]                                ; $4B11: $F0 $E6
    db $FC                                        ; $4B13: $FC
    jp $BDFE                                      ; $4B14: $C3 $FE $BD


    cp $FF                                        ; $4B17: $FE $FF
    rst RST_20                                    ; $4B19: $E7
    ld hl, sp-$21                                 ; $4B1A: $F8 $DF
    ldh [$FFBF], a                                ; $4B1C: $E0 $BF
    call z, $F07F                                 ; $4B1E: $CC $7F $F0
    nop                                           ; $4B21: $00
    ld [hl], b                                    ; $4B22: $70
    jr nz, jr_01D_4B75                            ; $4B23: $20 $50

    jr nz, jr_01D_4B9F                            ; $4B25: $20 $78

    jr nc, @+$6A                                  ; $4B27: $30 $68

    jr nc, jr_01D_4B4F                            ; $4B29: $30 $24

    jr @+$3D                                      ; $4B2B: $18 $3B

    inc e                                         ; $4B2D: $1C
    inc d                                         ; $4B2E: $14
    rrca                                          ; $4B2F: $0F
    dec e                                         ; $4B30: $1D
    ld c, $0E                                     ; $4B31: $0E $0E
    dec b                                         ; $4B33: $05
    rlca                                          ; $4B34: $07
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
    ld e, a                                       ; $4B40: $5F
    dec a                                         ; $4B41: $3D
    ld e, a                                       ; $4B42: $5F
    dec a                                         ; $4B43: $3D

jr_01D_4B44:
    ld e, a                                       ; $4B44: $5F
    ld a, $5F                                     ; $4B45: $3E $5F
    ld a, $2F                                     ; $4B47: $3E $2F
    rra                                           ; $4B49: $1F
    ccf                                           ; $4B4A: $3F
    inc bc                                        ; $4B4B: $03
    rst RST_38                                    ; $4B4C: $FF
    ld [hl], $BF                                  ; $4B4D: $36 $BF

jr_01D_4B4F:
    and $FF                                       ; $4B4F: $E6 $FF
    dec e                                         ; $4B51: $1D
    sbc a                                         ; $4B52: $9F
    ld l, l                                       ; $4B53: $6D
    rst RST_38                                    ; $4B54: $FF
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
    or $DF                                        ; $4B60: $F6 $DF
    rst RST_38                                    ; $4B62: $FF
    rst RST_18                                    ; $4B63: $DF
    rst RST_38                                    ; $4B64: $FF
    rst RST_18                                    ; $4B65: $DF

jr_01D_4B66:
    rst RST_38                                    ; $4B66: $FF
    xor $FF                                       ; $4B67: $EE $FF
    cpl                                           ; $4B69: $2F
    rst RST_38                                    ; $4B6A: $FF
    ld b, a                                       ; $4B6B: $47
    rst RST_38                                    ; $4B6C: $FF
    ld hl, sp-$07                                 ; $4B6D: $F8 $F9
    ldh a, [$FFF3]                                ; $4B6F: $F0 $F3
    pop bc                                        ; $4B71: $C1
    rst RST_18                                    ; $4B72: $DF
    nop                                           ; $4B73: $00
    inc h                                         ; $4B74: $24

jr_01D_4B75:
    dec de                                        ; $4B75: $1B
    ccf                                           ; $4B76: $3F
    nop                                           ; $4B77: $00
    nop                                           ; $4B78: $00
    nop                                           ; $4B79: $00
    nop                                           ; $4B7A: $00
    nop                                           ; $4B7B: $00
    nop                                           ; $4B7C: $00
    nop                                           ; $4B7D: $00
    nop                                           ; $4B7E: $00
    nop                                           ; $4B7F: $00
    ldh [$FFC0], a                                ; $4B80: $E0 $C0
    jr nz, jr_01D_4B44                            ; $4B82: $20 $C0

    jr nc, jr_01D_4B66                            ; $4B84: $30 $E0

    db $10                                        ; $4B86: $10
    ldh [$FFD0], a                                ; $4B87: $E0 $D0
    ldh [$FFF0], a                                ; $4B89: $E0 $F0
    ldh [$FFF0], a                                ; $4B8B: $E0 $F0
    ldh [$FFE0], a                                ; $4B8D: $E0 $E0
    ret nz                                        ; $4B8F: $C0

    ldh [rP1], a                                  ; $4B90: $E0 $00
    ldh [$FFC0], a                                ; $4B92: $E0 $C0
    ldh [$FFC0], a                                ; $4B94: $E0 $C0
    ret nz                                        ; $4B96: $C0

    add b                                         ; $4B97: $80
    ret nz                                        ; $4B98: $C0

    add b                                         ; $4B99: $80
    ret nz                                        ; $4B9A: $C0

    add b                                         ; $4B9B: $80
    ret nz                                        ; $4B9C: $C0

    nop                                           ; $4B9D: $00
    ret nz                                        ; $4B9E: $C0

jr_01D_4B9F:
    nop                                           ; $4B9F: $00
    db $FC                                        ; $4BA0: $FC
    nop                                           ; $4BA1: $00
    ld b, e                                       ; $4BA2: $43
    db $FC                                        ; $4BA3: $FC
    ret nc                                        ; $4BA4: $D0

    rst RST_38                                    ; $4BA5: $FF
    or $FF                                        ; $4BA6: $F6 $FF
    or $FF                                        ; $4BA8: $F6 $FF
    rst RST_38                                    ; $4BAA: $FF
    rst RST_38                                    ; $4BAB: $FF
    rst RST_38                                    ; $4BAC: $FF
    rst RST_38                                    ; $4BAD: $FF
    rst RST_38                                    ; $4BAE: $FF
    ld a, l                                       ; $4BAF: $7D
    rst RST_38                                    ; $4BB0: $FF
    dec c                                         ; $4BB1: $0D
    rst RST_38                                    ; $4BB2: $FF
    ld b, c                                       ; $4BB3: $41
    rst RST_10                                    ; $4BB4: $D7
    dec hl                                        ; $4BB5: $2B
    rst RST_18                                    ; $4BB6: $DF
    jr nz, @-$47                                  ; $4BB7: $20 $B7

    dec c                                         ; $4BB9: $0D
    rla                                           ; $4BBA: $17
    dec c                                         ; $4BBB: $0D
    rla                                           ; $4BBC: $17
    ld c, $0B                                     ; $4BBD: $0E $0B
    ld b, $1F                                     ; $4BBF: $06 $1F
    inc bc                                        ; $4BC1: $03
    rst RST_38                                    ; $4BC2: $FF
    inc e                                         ; $4BC3: $1C
    cpl                                           ; $4BC4: $2F
    ld sp, hl                                     ; $4BC5: $F9
    rst RST_38                                    ; $4BC6: $FF
    add a                                         ; $4BC7: $87
    and a                                         ; $4BC8: $A7
    ld e, e                                       ; $4BC9: $5B
    rst RST_38                                    ; $4BCA: $FF
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
    nop                                           ; $4BD8: $00
    nop                                           ; $4BD9: $00
    nop                                           ; $4BDA: $00
    nop                                           ; $4BDB: $00
    nop                                           ; $4BDC: $00
    nop                                           ; $4BDD: $00
    nop                                           ; $4BDE: $00
    nop                                           ; $4BDF: $00
    rrca                                          ; $4BE0: $0F
    nop                                           ; $4BE1: $00
    ld [hl], h                                    ; $4BE2: $74
    rrca                                          ; $4BE3: $0F
    jp c, $FF7F                                   ; $4BE4: $DA $7F $FF

    ei                                            ; $4BE7: $FB
    cp a                                          ; $4BE8: $BF
    ld [hl], a                                    ; $4BE9: $77
    cp a                                          ; $4BEA: $BF
    ld h, e                                       ; $4BEB: $63
    or a                                          ; $4BEC: $B7
    ld e, [hl]                                    ; $4BED: $5E
    xor a                                         ; $4BEE: $AF
    ld e, a                                       ; $4BEF: $5F
    ld [hl], a                                    ; $4BF0: $77
    rst RST_18                                    ; $4BF1: $DF
    rst RST_18                                    ; $4BF2: $DF
    xor a                                         ; $4BF3: $AF
    rst RST_38                                    ; $4BF4: $FF
    ld e, [hl]                                    ; $4BF5: $5E
    ld l, $DD                                     ; $4BF6: $2E $DD
    db $DD                                        ; $4BF8: $DD
    or b                                          ; $4BF9: $B0
    ld a, b                                       ; $4BFA: $78
    or b                                          ; $4BFB: $B0
    ldh a, [$FF60]                                ; $4BFC: $F0 $60
    or b                                          ; $4BFE: $B0
    ldh [$FFE0], a                                ; $4BFF: $E0 $E0
    nop                                           ; $4C01: $00
    ld bc, $1F00                                  ; $4C02: $01 $00 $1F
    ld bc, $1FF5                                  ; $4C05: $01 $F5 $1F
    ld e, a                                       ; $4C08: $5F
    rst RST_38                                    ; $4C09: $FF
    rst RST_38                                    ; $4C0A: $FF
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
    nop                                           ; $4C1D: $00
    nop                                           ; $4C1E: $00
    nop                                           ; $4C1F: $00
    ld bc, $0200                                  ; $4C20: $01 $00 $02
    ld bc, $0305                                  ; $4C23: $01 $05 $03
    rlca                                          ; $4C26: $07
    inc bc                                        ; $4C27: $03
    dec bc                                        ; $4C28: $0B
    ld b, $0F                                     ; $4C29: $06 $0F
    ld [bc], a                                    ; $4C2B: $02
    rrca                                          ; $4C2C: $0F
    dec b                                         ; $4C2D: $05
    ld a, [de]                                    ; $4C2E: $1A
    rrca                                          ; $4C2F: $0F
    ld de, $350F                                  ; $4C30: $11 $0F $35
    rra                                           ; $4C33: $1F
    cpl                                           ; $4C34: $2F
    ld d, $2E                                     ; $4C35: $16 $2E
    dec e                                         ; $4C37: $1D
    rra                                           ; $4C38: $1F
    inc c                                         ; $4C39: $0C
    dec c                                         ; $4C3A: $0D
    nop                                           ; $4C3B: $00
    nop                                           ; $4C3C: $00
    nop                                           ; $4C3D: $00
    nop                                           ; $4C3E: $00
    nop                                           ; $4C3F: $00
    nop                                           ; $4C40: $00
    nop                                           ; $4C41: $00
    ld bc, $0300                                  ; $4C42: $01 $00 $03
    ld bc, $0003                                  ; $4C45: $01 $03 $00
    nop                                           ; $4C48: $00
    nop                                           ; $4C49: $00
    nop                                           ; $4C4A: $00
    nop                                           ; $4C4B: $00
    nop                                           ; $4C4C: $00
    nop                                           ; $4C4D: $00
    nop                                           ; $4C4E: $00
    nop                                           ; $4C4F: $00
    nop                                           ; $4C50: $00
    nop                                           ; $4C51: $00
    nop                                           ; $4C52: $00
    nop                                           ; $4C53: $00
    nop                                           ; $4C54: $00
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
    ld h, b                                       ; $4C62: $60
    add b                                         ; $4C63: $80
    ld e, b                                       ; $4C64: $58
    ldh [$FFC4], a                                ; $4C65: $E0 $C4
    ld hl, sp-$16                                 ; $4C67: $F8 $EA
    db $FC                                        ; $4C69: $FC
    jp hl                                         ; $4C6A: $E9


    cp $FC                                        ; $4C6B: $FE $FC
    rst RST_38                                    ; $4C6D: $FF
    rst RST_38                                    ; $4C6E: $FF
    ld a, [hl]                                    ; $4C6F: $7E
    rst RST_38                                    ; $4C70: $FF
    ld a, l                                       ; $4C71: $7D
    cp $7B                                        ; $4C72: $FE $7B
    db $FC                                        ; $4C74: $FC
    ei                                            ; $4C75: $FB
    db $FD                                        ; $4C76: $FD
    rst RST_30                                    ; $4C77: $F7
    rst RST_38                                    ; $4C78: $FF
    rst RST_30                                    ; $4C79: $F7
    rst RST_38                                    ; $4C7A: $FF
    rst RST_30                                    ; $4C7B: $F7
    rst RST_38                                    ; $4C7C: $FF
    ei                                            ; $4C7D: $FB

jr_01D_4C7E:
    rst RST_38                                    ; $4C7E: $FF
    ld a, e                                       ; $4C7F: $7B
    rst RST_38                                    ; $4C80: $FF
    sbc l                                         ; $4C81: $9D
    rst RST_38                                    ; $4C82: $FF
    and b                                         ; $4C83: $A0
    rst RST_38                                    ; $4C84: $FF
    cp a                                          ; $4C85: $BF
    rst RST_38                                    ; $4C86: $FF
    ld a, b                                       ; $4C87: $78
    ld sp, hl                                     ; $4C88: $F9
    ld b, $0F                                     ; $4C89: $06 $0F
    nop                                           ; $4C8B: $00
    nop                                           ; $4C8C: $00
    nop                                           ; $4C8D: $00
    nop                                           ; $4C8E: $00
    nop                                           ; $4C8F: $00
    nop                                           ; $4C90: $00
    nop                                           ; $4C91: $00
    nop                                           ; $4C92: $00
    nop                                           ; $4C93: $00
    nop                                           ; $4C94: $00
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
    ld b, b                                       ; $4CA0: $40
    add b                                         ; $4CA1: $80
    ldh a, [rP1]                                  ; $4CA2: $F0 $00
    sbc b                                         ; $4CA4: $98
    ldh a, [$FF08]                                ; $4CA5: $F0 $08
    ldh a, [$FFCC]                                ; $4CA7: $F0 $CC
    ld hl, sp-$4C                                 ; $4CA9: $F8 $B4
    ld hl, sp-$0C                                 ; $4CAB: $F8 $F4
    ld hl, sp-$04                                 ; $4CAD: $F8 $FC
    ld hl, sp-$04                                 ; $4CAF: $F8 $FC
    ret c                                         ; $4CB1: $D8

    db $FC                                        ; $4CB2: $FC
    ret z                                         ; $4CB3: $C8

    ld hl, sp-$10                                 ; $4CB4: $F8 $F0
    ld hl, sp+$30                                 ; $4CB6: $F8 $30
    ldh a, [$FF60]                                ; $4CB8: $F0 $60
    ldh a, [rNR41]                                ; $4CBA: $F0 $20
    jr nc, jr_01D_4C7E                            ; $4CBC: $30 $C0

    ldh a, [rP1]                                  ; $4CBE: $F0 $00
    nop                                           ; $4CC0: $00
    nop                                           ; $4CC1: $00
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
    nop                                           ; $4CD6: $00
    nop                                           ; $4CD7: $00
    nop                                           ; $4CD8: $00
    nop                                           ; $4CD9: $00
    nop                                           ; $4CDA: $00
    nop                                           ; $4CDB: $00
    nop                                           ; $4CDC: $00
    nop                                           ; $4CDD: $00
    add b                                         ; $4CDE: $80
    nop                                           ; $4CDF: $00
    ld bc, $0700                                  ; $4CE0: $01 $00 $07
    ld bc, $070B                                  ; $4CE3: $01 $0B $07
    ld d, $0D                                     ; $4CE6: $16 $0D
    ld e, $0D                                     ; $4CE8: $1E $0D
    ld l, $19                                     ; $4CEA: $2E $19
    ld a, $09                                     ; $4CEC: $3E $09
    dec a                                         ; $4CEE: $3D
    rla                                           ; $4CEF: $17
    ld l, e                                       ; $4CF0: $6B
    ld a, $47                                     ; $4CF1: $3E $47
    dec a                                         ; $4CF3: $3D
    call nc, $BF7F                                ; $4CF4: $D4 $7F $BF
    ld e, d                                       ; $4CF7: $5A
    cp c                                          ; $4CF8: $B9
    halt                                          ; $4CF9: $76
    ld a, a                                       ; $4CFA: $7F
    ld sp, $0336                                  ; $4CFB: $31 $36 $03
    inc bc                                        ; $4CFE: $03
    nop                                           ; $4CFF: $00
    ccf                                           ; $4D00: $3F
    nop                                           ; $4D01: $00
    pop de                                        ; $4D02: $D1
    ccf                                           ; $4D03: $3F
    ld l, e                                       ; $4D04: $6B
    rst RST_38                                    ; $4D05: $FF
    rst RST_38                                    ; $4D06: $FF
    rst RST_28                                    ; $4D07: $EF
    rst RST_38                                    ; $4D08: $FF
    rst RST_18                                    ; $4D09: $DF
    rst RST_38                                    ; $4D0A: $FF
    adc a                                         ; $4D0B: $8F
    rst RST_18                                    ; $4D0C: $DF
    ld a, e                                       ; $4D0D: $7B
    cp a                                          ; $4D0E: $BF
    ld a, l                                       ; $4D0F: $7D
    rst RST_18                                    ; $4D10: $DF
    ld a, h                                       ; $4D11: $7C
    ld a, a                                       ; $4D12: $7F
    cp l                                          ; $4D13: $BD
    rst RST_38                                    ; $4D14: $FF
    ld a, b                                       ; $4D15: $78
    cp e                                          ; $4D16: $BB
    ld [hl], h                                    ; $4D17: $74
    halt                                          ; $4D18: $76
    ret nz                                        ; $4D19: $C0

    ldh [$FFC0], a                                ; $4D1A: $E0 $C0
    ret nz                                        ; $4D1C: $C0

    add b                                         ; $4D1D: $80
    ret nz                                        ; $4D1E: $C0

    add b                                         ; $4D1F: $80
    ldh a, [rP1]                                  ; $4D20: $F0 $00
    ld c, $F0                                     ; $4D22: $0E $F0
    ld b, c                                       ; $4D24: $41
    cp $D9                                        ; $4D25: $FE $D9
    rst RST_38                                    ; $4D27: $FF
    db $DB                                        ; $4D28: $DB
    rst RST_38                                    ; $4D29: $FF
    rst RST_38                                    ; $4D2A: $FF
    rst RST_38                                    ; $4D2B: $FF
    rst RST_38                                    ; $4D2C: $FF
    rst RST_38                                    ; $4D2D: $FF
    rst RST_38                                    ; $4D2E: $FF
    rst RST_30                                    ; $4D2F: $F7
    rst RST_38                                    ; $4D30: $FF
    dec [hl]                                      ; $4D31: $35
    rst RST_38                                    ; $4D32: $FF
    dec b                                         ; $4D33: $05
    ld e, a                                       ; $4D34: $5F
    xor l                                         ; $4D35: $AD
    ld a, a                                       ; $4D36: $7F
    add e                                         ; $4D37: $83
    rst RST_18                                    ; $4D38: $DF
    scf                                           ; $4D39: $37
    ld e, a                                       ; $4D3A: $5F
    scf                                           ; $4D3B: $37
    ld e, a                                       ; $4D3C: $5F
    dec sp                                        ; $4D3D: $3B
    cpl                                           ; $4D3E: $2F
    dec de                                        ; $4D3F: $1B
    add b                                         ; $4D40: $80
    nop                                           ; $4D41: $00
    ld h, b                                       ; $4D42: $60
    add b                                         ; $4D43: $80
    db $10                                        ; $4D44: $10
    ldh [$FFA8], a                                ; $4D45: $E0 $A8
    ldh a, [$FFA6]                                ; $4D47: $F0 $A6
    ld hl, sp-$0F                                 ; $4D49: $F8 $F1
    cp $FF                                        ; $4D4B: $FE $FF
    ld hl, sp-$02                                 ; $4D4D: $F8 $FE
    rst RST_30                                    ; $4D4F: $F7
    ld hl, sp-$11                                 ; $4D50: $F8 $EF
    di                                            ; $4D52: $F3
    rst RST_28                                    ; $4D53: $EF
    or $DF                                        ; $4D54: $F6 $DF
    rst RST_38                                    ; $4D56: $FF
    rst RST_18                                    ; $4D57: $DF
    rst RST_38                                    ; $4D58: $FF
    rst RST_18                                    ; $4D59: $DF
    rst RST_38                                    ; $4D5A: $FF
    rst RST_28                                    ; $4D5B: $EF
    rst RST_38                                    ; $4D5C: $FF
    rst RST_28                                    ; $4D5D: $EF
    rst RST_38                                    ; $4D5E: $FF
    ld [hl], a                                    ; $4D5F: $77
    ret nz                                        ; $4D60: $C0

    nop                                           ; $4D61: $00
    ld h, b                                       ; $4D62: $60
    ret nz                                        ; $4D63: $C0

    jr nz, @-$3E                                  ; $4D64: $20 $C0

    jr nc, @-$1E                                  ; $4D66: $30 $E0

    ret nc                                        ; $4D68: $D0

    ldh [$FFD0], a                                ; $4D69: $E0 $D0
    ldh [$FFF0], a                                ; $4D6B: $E0 $F0
    ldh [$FFF0], a                                ; $4D6D: $E0 $F0
    ld h, b                                       ; $4D6F: $60
    ldh a, [rNR41]                                ; $4D70: $F0 $20
    ldh [$FFC0], a                                ; $4D72: $E0 $C0
    ldh [$FFC0], a                                ; $4D74: $E0 $C0
    ret nz                                        ; $4D76: $C0

    add b                                         ; $4D77: $80
    ret nz                                        ; $4D78: $C0

    add b                                         ; $4D79: $80
    ret nz                                        ; $4D7A: $C0

    add b                                         ; $4D7B: $80
    ret nz                                        ; $4D7C: $C0

    nop                                           ; $4D7D: $00
    add b                                         ; $4D7E: $80
    nop                                           ; $4D7F: $00
    add b                                         ; $4D80: $80
    nop                                           ; $4D81: $00
    nop                                           ; $4D82: $00
    nop                                           ; $4D83: $00
    nop                                           ; $4D84: $00
    nop                                           ; $4D85: $00
    nop                                           ; $4D86: $00
    nop                                           ; $4D87: $00
    nop                                           ; $4D88: $00
    nop                                           ; $4D89: $00
    nop                                           ; $4D8A: $00
    nop                                           ; $4D8B: $00
    nop                                           ; $4D8C: $00
    nop                                           ; $4D8D: $00
    nop                                           ; $4D8E: $00
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
    rra                                           ; $4DA0: $1F
    dec c                                         ; $4DA1: $0D
    rrca                                          ; $4DA2: $0F
    ld [bc], a                                    ; $4DA3: $02
    rrca                                          ; $4DA4: $0F
    ld b, $0E                                     ; $4DA5: $06 $0E
    inc b                                         ; $4DA7: $04
    ld e, $0C                                     ; $4DA8: $1E $0C
    ld e, $0C                                     ; $4DAA: $1E $0C
    ld a, [hl]                                    ; $4DAC: $7E
    inc e                                         ; $4DAD: $1C
    cp h                                          ; $4DAE: $BC
    ld c, b                                       ; $4DAF: $48
    add sp, $10                                   ; $4DB0: $E8 $10
    jr z, jr_01D_4DC4                             ; $4DB2: $28 $10

    stop                                          ; $4DB4: $10 $00
    inc bc                                        ; $4DB6: $03
    nop                                           ; $4DB7: $00
    ld a, $03                                     ; $4DB8: $3E $03
    ld l, e                                       ; $4DBA: $6B
    ccf                                           ; $4DBB: $3F
    ccf                                           ; $4DBC: $3F
    nop                                           ; $4DBD: $00
    nop                                           ; $4DBE: $00
    nop                                           ; $4DBF: $00
    rst RST_38                                    ; $4DC0: $FF
    nop                                           ; $4DC1: $00
    ld e, a                                       ; $4DC2: $5F
    dec a                                         ; $4DC3: $3D

jr_01D_4DC4:
    ld c, a                                       ; $4DC4: $4F
    dec a                                         ; $4DC5: $3D
    ccf                                           ; $4DC6: $3F
    dec e                                         ; $4DC7: $1D
    daa                                           ; $4DC8: $27
    dec de                                        ; $4DC9: $1B
    ccf                                           ; $4DCA: $3F
    dec de                                        ; $4DCB: $1B
    ld e, e                                       ; $4DCC: $5B
    inc [hl]                                      ; $4DCD: $34
    ld d, [hl]                                    ; $4DCE: $56
    add hl, hl                                    ; $4DCF: $29
    or [hl]                                       ; $4DD0: $B6
    ld l, c                                       ; $4DD1: $69
    ld e, c                                       ; $4DD2: $59
    ldh [rSVBK], a                                ; $4DD3: $E0 $70
    ret nz                                        ; $4DD5: $C0

    ret nz                                        ; $4DD6: $C0

    nop                                           ; $4DD7: $00

jr_01D_4DD8:
    nop                                           ; $4DD8: $00
    nop                                           ; $4DD9: $00
    nop                                           ; $4DDA: $00
    nop                                           ; $4DDB: $00
    nop                                           ; $4DDC: $00
    nop                                           ; $4DDD: $00
    nop                                           ; $4DDE: $00
    nop                                           ; $4DDF: $00
    add b                                         ; $4DE0: $80
    nop                                           ; $4DE1: $00
    add b                                         ; $4DE2: $80
    nop                                           ; $4DE3: $00
    add b                                         ; $4DE4: $80
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

jr_01D_4DFA:
    nop                                           ; $4DFA: $00
    nop                                           ; $4DFB: $00
    nop                                           ; $4DFC: $00
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

jr_01D_4E0D:
    nop                                           ; $4E0D: $00
    add b                                         ; $4E0E: $80
    nop                                           ; $4E0F: $00
    ld b, b                                       ; $4E10: $40
    add b                                         ; $4E11: $80
    ld b, b                                       ; $4E12: $40
    add b                                         ; $4E13: $80
    and b                                         ; $4E14: $A0
    ret nz                                        ; $4E15: $C0

    jr nz, jr_01D_4DD8                            ; $4E16: $20 $C0

    jr jr_01D_4DFA                                ; $4E18: $18 $E0

    db $EC                                        ; $4E1A: $EC
    ld hl, sp-$3E                                 ; $4E1B: $F8 $C2
    db $FC                                        ; $4E1D: $FC
    sbc l                                         ; $4E1E: $9D
    cp $B0                                        ; $4E1F: $FE $B0
    ldh [$FF78], a                                ; $4E21: $E0 $78
    ldh a, [$FFE8]                                ; $4E23: $F0 $E8
    or b                                          ; $4E25: $B0
    db $F4                                        ; $4E26: $F4
    jr c, jr_01D_4E0D                             ; $4E27: $38 $E4

    cp b                                          ; $4E29: $B8
    ld a, [$F1BC]                                 ; $4E2A: $FA $BC $F1
    cp [hl]                                       ; $4E2D: $BE
    ldh a, [$FF7F]                                ; $4E2E: $F0 $7F
    cp $FF                                        ; $4E30: $FE $FF
    db $FC                                        ; $4E32: $FC
    rst RST_38                                    ; $4E33: $FF
    rst RST_38                                    ; $4E34: $FF
    rst RST_38                                    ; $4E35: $FF
    rst RST_38                                    ; $4E36: $FF
    rst RST_38                                    ; $4E37: $FF
    rst RST_38                                    ; $4E38: $FF
    ld a, a                                       ; $4E39: $7F
    rst RST_38                                    ; $4E3A: $FF
    ld [hl], a                                    ; $4E3B: $77
    rst RST_38                                    ; $4E3C: $FF
    or l                                          ; $4E3D: $B5
    rst RST_38                                    ; $4E3E: $FF
    or l                                          ; $4E3F: $B5
    ld a, e                                       ; $4E40: $7B
    rrca                                          ; $4E41: $0F
    inc l                                         ; $4E42: $2C
    rla                                           ; $4E43: $17
    rra                                           ; $4E44: $1F
    nop                                           ; $4E45: $00
    ld c, a                                       ; $4E46: $4F
    inc bc                                        ; $4E47: $03
    cp d                                          ; $4E48: $BA
    ld c, a                                       ; $4E49: $4F
    push af                                       ; $4E4A: $F5
    ccf                                           ; $4E4B: $3F
    rst RST_38                                    ; $4E4C: $FF
    rst RST_38                                    ; $4E4D: $FF
    rst RST_38                                    ; $4E4E: $FF
    rra                                           ; $4E4F: $1F
    rra                                           ; $4E50: $1F
    nop                                           ; $4E51: $00
    inc bc                                        ; $4E52: $03
    ld bc, $0001                                  ; $4E53: $01 $01 $00
    ld bc, $0000                                  ; $4E56: $01 $00 $00
    nop                                           ; $4E59: $00
    nop                                           ; $4E5A: $00
    nop                                           ; $4E5B: $00
    ld bc, $0100                                  ; $4E5C: $01 $00 $01
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
    nop                                           ; $4E6F: $00
    nop                                           ; $4E70: $00
    nop                                           ; $4E71: $00
    nop                                           ; $4E72: $00
    nop                                           ; $4E73: $00
    add b                                         ; $4E74: $80
    nop                                           ; $4E75: $00
    ldh a, [$FF80]                                ; $4E76: $F0 $80
    ld a, h                                       ; $4E78: $7C
    or b                                          ; $4E79: $B0
    or $C8                                        ; $4E7A: $F6 $C8
    rst RST_20                                    ; $4E7C: $E7
    jp c, $E6BF                                   ; $4E7D: $DA $BF $E6

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
    inc e                                         ; $4E90: $1C
    nop                                           ; $4E91: $00
    ld a, $1C                                     ; $4E92: $3E $1C
    ld hl, $6A1E                                  ; $4E94: $21 $1E $6A
    scf                                           ; $4E97: $37
    ld a, [hl]                                    ; $4E98: $7E
    rra                                           ; $4E99: $1F
    ld e, [hl]                                    ; $4E9A: $5E
    daa                                           ; $4E9B: $27
    scf                                           ; $4E9C: $37
    add hl, bc                                    ; $4E9D: $09
    dec d                                         ; $4E9E: $15
    ld a, [bc]                                    ; $4E9F: $0A
    ld bc, $0000                                  ; $4EA0: $01 $00 $00
    nop                                           ; $4EA3: $00
    nop                                           ; $4EA4: $00
    nop                                           ; $4EA5: $00
    dec b                                         ; $4EA6: $05
    nop                                           ; $4EA7: $00
    ld a, [bc]                                    ; $4EA8: $0A
    dec b                                         ; $4EA9: $05
    rra                                           ; $4EAA: $1F
    nop                                           ; $4EAB: $00
    ld a, [de]                                    ; $4EAC: $1A
    rrca                                          ; $4EAD: $0F
    rrca                                          ; $4EAE: $0F
    rlca                                          ; $4EAF: $07
    rlca                                          ; $4EB0: $07
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
    inc bc                                        ; $4EC0: $03
    nop                                           ; $4EC1: $00
    dec b                                         ; $4EC2: $05
    ld [bc], a                                    ; $4EC3: $02
    ld [bc], a                                    ; $4EC4: $02
    nop                                           ; $4EC5: $00
    nop                                           ; $4EC6: $00

jr_01D_4EC7:
    nop                                           ; $4EC7: $00
    nop                                           ; $4EC8: $00
    nop                                           ; $4EC9: $00
    nop                                           ; $4ECA: $00
    nop                                           ; $4ECB: $00
    rlca                                          ; $4ECC: $07
    nop                                           ; $4ECD: $00
    dec e                                         ; $4ECE: $1D
    rlca                                          ; $4ECF: $07
    ld h, $1F                                     ; $4ED0: $26 $1F
    ld a, a                                       ; $4ED2: $7F
    ccf                                           ; $4ED3: $3F
    ld e, a                                       ; $4ED4: $5F
    jr nc, jr_01D_4EC7                            ; $4ED5: $30 $F0

    ld h, b                                       ; $4ED7: $60
    and e                                         ; $4ED8: $A3
    ld b, b                                       ; $4ED9: $40
    push bc                                       ; $4EDA: $C5
    ld [bc], a                                    ; $4EDB: $02
    rlca                                          ; $4EDC: $07
    nop                                           ; $4EDD: $00
    nop                                           ; $4EDE: $00
    nop                                           ; $4EDF: $00
    rst RST_38                                    ; $4EE0: $FF
    db $10                                        ; $4EE1: $10
    ld a, d                                       ; $4EE2: $7A
    or l                                          ; $4EE3: $B5
    rst RST_38                                    ; $4EE4: $FF
    ld [bc], a                                    ; $4EE5: $02
    cpl                                           ; $4EE6: $2F
    ld e, $2F                                     ; $4EE7: $1E $2F
    ld e, $2F                                     ; $4EE9: $1E $2F
    rra                                           ; $4EEB: $1F
    rst RST_38                                    ; $4EEC: $FF
    rra                                           ; $4EED: $1F
    ld a, a                                       ; $4EEE: $7F
    db $DD                                        ; $4EEF: $DD
    cp a                                          ; $4EF0: $BF
    db $ED                                        ; $4EF1: $ED
    rst RST_18                                    ; $4EF2: $DF
    or $FF                                        ; $4EF3: $F6 $FF
    halt                                          ; $4EF5: $76
    ld a, a                                       ; $4EF6: $7F
    dec c                                         ; $4EF7: $0D
    rst RST_38                                    ; $4EF8: $FF
    dec a                                         ; $4EF9: $3D
    ccf                                           ; $4EFA: $3F
    ret c                                         ; $4EFB: $D8

    ld hl, sp+$00                                 ; $4EFC: $F8 $00
    nop                                           ; $4EFE: $00
    nop                                           ; $4EFF: $00
    rst RST_38                                    ; $4F00: $FF
    sbc $FF                                       ; $4F01: $DE $FF
    dec a                                         ; $4F03: $3D
    cp $7B                                        ; $4F04: $FE $7B
    db $FC                                        ; $4F06: $FC
    ei                                            ; $4F07: $FB
    db $FC                                        ; $4F08: $FC
    rst RST_30                                    ; $4F09: $F7
    db $FD                                        ; $4F0A: $FD
    ld [hl], a                                    ; $4F0B: $77
    db $FD                                        ; $4F0C: $FD
    ld [hl], a                                    ; $4F0D: $77
    rst RST_38                                    ; $4F0E: $FF
    or a                                          ; $4F0F: $B7
    rst RST_38                                    ; $4F10: $FF
    set 7, a                                      ; $4F11: $CB $FF
    ld sp, $F8FD                                  ; $4F13: $31 $FD $F8
    ld hl, sp-$20                                 ; $4F16: $F8 $E0
    ldh [$FF80], a                                ; $4F18: $E0 $80
    add b                                         ; $4F1A: $80
    nop                                           ; $4F1B: $00
    ld bc, $0100                                  ; $4F1C: $01 $00 $01
    nop                                           ; $4F1F: $00
    adc b                                         ; $4F20: $88
    ldh a, [$FF08]                                ; $4F21: $F0 $08
    ldh a, [rNR14]                                ; $4F23: $F0 $14
    ld hl, sp-$44                                 ; $4F25: $F8 $BC
    ld hl, sp-$04                                 ; $4F27: $F8 $FC
    ld hl, sp-$04                                 ; $4F29: $F8 $FC
    ld hl, sp-$08                                 ; $4F2B: $F8 $F8
    ldh a, [$FFF8]                                ; $4F2D: $F0 $F8
    ldh [$FFFC], a                                ; $4F2F: $E0 $FC
    ret c                                         ; $4F31: $D8

    db $FC                                        ; $4F32: $FC
    ld hl, sp-$02                                 ; $4F33: $F8 $FE
    inc e                                         ; $4F35: $1C
    ld e, $0C                                     ; $4F36: $1E $0C
    ld e, $0C                                     ; $4F38: $1E $0C
    cp $04                                        ; $4F3A: $FE $04
    ld h, $D8                                     ; $4F3C: $26 $D8
    db $FC                                        ; $4F3E: $FC
    nop                                           ; $4F3F: $00
    inc bc                                        ; $4F40: $03
    nop                                           ; $4F41: $00
    rlca                                          ; $4F42: $07
    inc bc                                        ; $4F43: $03
    rrca                                          ; $4F44: $0F
    rlca                                          ; $4F45: $07
    rrca                                          ; $4F46: $0F
    dec b                                         ; $4F47: $05
    rra                                           ; $4F48: $1F
    ld [$0D1F], sp                                ; $4F49: $08 $1F $0D
    ld e, $0F                                     ; $4F4C: $1E $0F
    scf                                           ; $4F4E: $37
    rra                                           ; $4F4F: $1F
    inc hl                                        ; $4F50: $23
    ld e, $5E                                     ; $4F51: $1E $5E
    dec a                                         ; $4F53: $3D
    rst RST_08                                    ; $4F54: $CF
    ld a, h                                       ; $4F55: $7C
    call c, $CF6B                                 ; $4F56: $DC $6B $CF
    ld a, b                                       ; $4F59: $78
    ld a, d                                       ; $4F5A: $7A
    inc d                                         ; $4F5B: $14
    inc e                                         ; $4F5C: $1C
    nop                                           ; $4F5D: $00
    nop                                           ; $4F5E: $00
    nop                                           ; $4F5F: $00
    inc bc                                        ; $4F60: $03
    nop                                           ; $4F61: $00
    inc c                                         ; $4F62: $0C
    inc bc                                        ; $4F63: $03

jr_01D_4F64:
    inc de                                        ; $4F64: $13
    rrca                                          ; $4F65: $0F
    ld h, c                                       ; $4F66: $61
    rra                                           ; $4F67: $1F
    push hl                                       ; $4F68: $E5
    ld a, a                                       ; $4F69: $7F
    rst RST_30                                    ; $4F6A: $F7
    rst RST_38                                    ; $4F6B: $FF
    ld a, a                                       ; $4F6C: $7F
    pop bc                                        ; $4F6D: $C1
    cp a                                          ; $4F6E: $BF
    xor $B7                                       ; $4F6F: $EE $B7
    rst RST_18                                    ; $4F71: $DF
    cp e                                          ; $4F72: $BB
    rst RST_18                                    ; $4F73: $DF
    ld [hl], a                                    ; $4F74: $77
    rst RST_08                                    ; $4F75: $CF
    ei                                            ; $4F76: $FB
    adc a                                         ; $4F77: $8F
    xor a                                         ; $4F78: $AF
    ld b, a                                       ; $4F79: $47
    rst RST_08                                    ; $4F7A: $CF
    ld b, $97                                     ; $4F7B: $06 $97
    ld a, [bc]                                    ; $4F7D: $0A
    rrca                                          ; $4F7E: $0F
    ld [bc], a                                    ; $4F7F: $02
    ld hl, sp+$00                                 ; $4F80: $F8 $00
    rlca                                          ; $4F82: $07
    ld hl, sp+$30                                 ; $4F83: $F8 $30
    rst RST_38                                    ; $4F85: $FF
    sbc c                                         ; $4F86: $99
    rst RST_38                                    ; $4F87: $FF
    db $FD                                        ; $4F88: $FD
    rst RST_38                                    ; $4F89: $FF
    rst RST_38                                    ; $4F8A: $FF
    rst RST_38                                    ; $4F8B: $FF
    rst RST_38                                    ; $4F8C: $FF
    rst RST_38                                    ; $4F8D: $FF
    rst RST_38                                    ; $4F8E: $FF
    db $DB                                        ; $4F8F: $DB
    rst RST_38                                    ; $4F90: $FF
    ld e, d                                       ; $4F91: $5A
    rst RST_38                                    ; $4F92: $FF
    ld [bc], a                                    ; $4F93: $02
    xor a                                         ; $4F94: $AF
    ld d, [hl]                                    ; $4F95: $56
    cp a                                          ; $4F96: $BF
    ld b, c                                       ; $4F97: $41
    rst RST_28                                    ; $4F98: $EF
    dec de                                        ; $4F99: $1B
    cpl                                           ; $4F9A: $2F
    dec de                                        ; $4F9B: $1B
    cpl                                           ; $4F9C: $2F
    dec e                                         ; $4F9D: $1D
    rla                                           ; $4F9E: $17
    dec c                                         ; $4F9F: $0D
    ret nz                                        ; $4FA0: $C0

    nop                                           ; $4FA1: $00
    jr nc, jr_01D_4F64                            ; $4FA2: $30 $C0

    adc b                                         ; $4FA4: $88
    ldh a, [$FFD4]                                ; $4FA5: $F0 $D4
    ld hl, sp-$0D                                 ; $4FA7: $F8 $F3
    db $FC                                        ; $4FA9: $FC
    ld hl, sp-$01                                 ; $4FAA: $F8 $FF
    rst RST_38                                    ; $4FAC: $FF
    db $FC                                        ; $4FAD: $FC
    rst RST_38                                    ; $4FAE: $FF
    ei                                            ; $4FAF: $FB
    db $FC                                        ; $4FB0: $FC
    rst RST_30                                    ; $4FB1: $F7
    ld sp, hl                                     ; $4FB2: $F9
    rst RST_30                                    ; $4FB3: $F7
    ei                                            ; $4FB4: $FB
    rst RST_28                                    ; $4FB5: $EF
    rst RST_38                                    ; $4FB6: $FF
    rst RST_28                                    ; $4FB7: $EF
    rst RST_38                                    ; $4FB8: $FF
    rst RST_28                                    ; $4FB9: $EF
    rst RST_38                                    ; $4FBA: $FF
    rst RST_30                                    ; $4FBB: $F7
    rst RST_38                                    ; $4FBC: $FF
    rst RST_30                                    ; $4FBD: $F7
    rst RST_38                                    ; $4FBE: $FF
    dec sp                                        ; $4FBF: $3B
    add b                                         ; $4FC0: $80
    nop                                           ; $4FC1: $00
    ldh [rP1], a                                  ; $4FC2: $E0 $00
    jr nc, @-$1E                                  ; $4FC4: $30 $E0

    db $10                                        ; $4FC6: $10
    ldh [$FF98], a                                ; $4FC7: $E0 $98
    ldh a, [rBCPS]                                ; $4FC9: $F0 $68
    ldh a, [$FFE8]                                ; $4FCB: $F0 $E8
    ldh a, [$FFF8]                                ; $4FCD: $F0 $F8
    ldh a, [$FFF8]                                ; $4FCF: $F0 $F8
    or b                                          ; $4FD1: $B0
    ld hl, sp-$70                                 ; $4FD2: $F8 $90
    ldh a, [$FFE0]                                ; $4FD4: $F0 $E0
    ldh a, [$FF60]                                ; $4FD6: $F0 $60
    ldh [$FFC0], a                                ; $4FD8: $E0 $C0
    ldh [$FFC0], a                                ; $4FDA: $E0 $C0
    ldh [$FFC0], a                                ; $4FDC: $E0 $C0
    ldh [$FF80], a                                ; $4FDE: $E0 $80
    sub l                                         ; $4FE0: $95
    dec bc                                        ; $4FE1: $0B
    rrca                                          ; $4FE2: $0F
    inc bc                                        ; $4FE3: $03
    dec d                                         ; $4FE4: $15
    dec bc                                        ; $4FE5: $0B
    rrca                                          ; $4FE6: $0F
    ld [bc], a                                    ; $4FE7: $02
    ld b, $00                                     ; $4FE8: $06 $00
    inc bc                                        ; $4FEA: $03
    nop                                           ; $4FEB: $00
    dec b                                         ; $4FEC: $05
    inc bc                                        ; $4FED: $03
    dec bc                                        ; $4FEE: $0B
    rlca                                          ; $4FEF: $07
    rrca                                          ; $4FF0: $0F
    ld b, $16                                     ; $4FF1: $06 $16
    ld [$081C], sp                                ; $4FF3: $08 $1C $08
    ld [$0000], sp                                ; $4FF6: $08 $00 $00
    nop                                           ; $4FF9: $00
    nop                                           ; $4FFA: $00
    nop                                           ; $4FFB: $00
    nop                                           ; $4FFC: $00
    nop                                           ; $4FFD: $00
    nop                                           ; $4FFE: $00
    nop                                           ; $4FFF: $00
    adc a                                         ; $5000: $8F
    ld b, $87                                     ; $5001: $06 $87
    ld bc, $038F                                  ; $5003: $01 $8F $03
    ccf                                           ; $5006: $3F
    ld a, [bc]                                    ; $5007: $0A
    rst RST_28                                    ; $5008: $EF
    ld [hl], $7F                                  ; $5009: $36 $7F
    or $7F                                        ; $500B: $F6 $7F
    adc $DF                                       ; $500D: $CE $DF
    inc h                                         ; $500F: $24
    or h                                          ; $5010: $B4
    ld c, b                                       ; $5011: $48
    ld d, h                                       ; $5012: $54
    ld [$0008], sp                                ; $5013: $08 $08 $00
    nop                                           ; $5016: $00
    nop                                           ; $5017: $00
    nop                                           ; $5018: $00
    nop                                           ; $5019: $00
    nop                                           ; $501A: $00
    nop                                           ; $501B: $00
    nop                                           ; $501C: $00
    nop                                           ; $501D: $00
    nop                                           ; $501E: $00
    nop                                           ; $501F: $00
    rst RST_38                                    ; $5020: $FF
    ld b, b                                       ; $5021: $40
    rst RST_38                                    ; $5022: $FF
    cp $FF                                        ; $5023: $FE $FF
    db $FC                                        ; $5025: $FC
    db $FD                                        ; $5026: $FD
    ldh a, [$FFF3]                                ; $5027: $F0 $F3
    add c                                         ; $5029: $81
    add e                                         ; $502A: $83
    ld bc, $0205                                  ; $502B: $01 $05 $02
    dec bc                                        ; $502E: $0B
    inc b                                         ; $502F: $04
    dec bc                                        ; $5030: $0B
    inc b                                         ; $5031: $04
    inc b                                         ; $5032: $04
    nop                                           ; $5033: $00
    nop                                           ; $5034: $00
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
    ret nz                                        ; $5040: $C0

    add b                                         ; $5041: $80
    ret nz                                        ; $5042: $C0

    nop                                           ; $5043: $00
    ld b, b                                       ; $5044: $40
    add b                                         ; $5045: $80
    ld b, b                                       ; $5046: $40
    add b                                         ; $5047: $80
    add b                                         ; $5048: $80
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
    inc bc                                        ; $5062: $03
    nop                                           ; $5063: $00
    rrca                                          ; $5064: $0F
    ld bc, $0E11                                  ; $5065: $01 $11 $0E
    add hl, bc                                    ; $5068: $09
    ld b, $1D                                     ; $5069: $06 $1D
    ld a, [bc]                                    ; $506B: $0A
    rra                                           ; $506C: $1F
    dec c                                         ; $506D: $0D
    ld e, $0F                                     ; $506E: $1E $0F
    scf                                           ; $5070: $37
    rra                                           ; $5071: $1F
    inc hl                                        ; $5072: $23
    ld e, $5E                                     ; $5073: $1E $5E
    dec a                                         ; $5075: $3D
    rst RST_08                                    ; $5076: $CF
    ld a, h                                       ; $5077: $7C
    call c, $CF6B                                 ; $5078: $DC $6B $CF
    ld a, b                                       ; $507B: $78
    ld a, d                                       ; $507C: $7A
    inc d                                         ; $507D: $14
    inc e                                         ; $507E: $1C
    nop                                           ; $507F: $00
    rlca                                          ; $5080: $07
    nop                                           ; $5081: $00
    dec de                                        ; $5082: $1B
    rlca                                          ; $5083: $07
    ld h, c                                       ; $5084: $61
    rra                                           ; $5085: $1F
    push hl                                       ; $5086: $E5
    ld a, a                                       ; $5087: $7F
    rst RST_30                                    ; $5088: $F7
    rst RST_38                                    ; $5089: $FF
    ld a, a                                       ; $508A: $7F
    pop bc                                        ; $508B: $C1
    cp a                                          ; $508C: $BF
    xor $B7                                       ; $508D: $EE $B7
    rst RST_18                                    ; $508F: $DF
    cp e                                          ; $5090: $BB
    rst RST_18                                    ; $5091: $DF
    ld [hl], a                                    ; $5092: $77
    rst RST_08                                    ; $5093: $CF
    ei                                            ; $5094: $FB
    adc a                                         ; $5095: $8F
    xor a                                         ; $5096: $AF
    ld b, a                                       ; $5097: $47
    rst RST_08                                    ; $5098: $CF
    ld b, $97                                     ; $5099: $06 $97
    ld a, [bc]                                    ; $509B: $0A
    rrca                                          ; $509C: $0F
    ld [bc], a                                    ; $509D: $02
    sub l                                         ; $509E: $95
    dec bc                                        ; $509F: $0B
    cp $00                                        ; $50A0: $FE $00
    daa                                           ; $50A2: $27
    cp $B6                                        ; $50A3: $FE $B6
    rst RST_38                                    ; $50A5: $FF
    rst RST_30                                    ; $50A6: $F7
    rst RST_38                                    ; $50A7: $FF
    rst RST_38                                    ; $50A8: $FF
    rst RST_38                                    ; $50A9: $FF
    rst RST_38                                    ; $50AA: $FF
    rst RST_38                                    ; $50AB: $FF
    rst RST_38                                    ; $50AC: $FF
    ei                                            ; $50AD: $FB
    rst RST_38                                    ; $50AE: $FF
    ld a, d                                       ; $50AF: $7A
    rst RST_38                                    ; $50B0: $FF
    ld b, d                                       ; $50B1: $42
    rst RST_28                                    ; $50B2: $EF
    ld d, $BF                                     ; $50B3: $16 $BF
    ld b, c                                       ; $50B5: $41
    xor a                                         ; $50B6: $AF
    ld e, e                                       ; $50B7: $5B
    ld l, a                                       ; $50B8: $6F
    dec de                                        ; $50B9: $1B
    cpl                                           ; $50BA: $2F
    dec e                                         ; $50BB: $1D
    rla                                           ; $50BC: $17
    dec c                                         ; $50BD: $0D
    adc a                                         ; $50BE: $8F
    ld b, $00                                     ; $50BF: $06 $00
    nop                                           ; $50C1: $00
    ret nz                                        ; $50C2: $C0

    nop                                           ; $50C3: $00
    or b                                          ; $50C4: $B0
    ret nz                                        ; $50C5: $C0

    ret z                                         ; $50C6: $C8

    ldh a, [$FFDC]                                ; $50C7: $F0 $DC
    ld hl, sp-$05                                 ; $50C9: $F8 $FB
    db $FC                                        ; $50CB: $FC
    ld hl, sp-$01                                 ; $50CC: $F8 $FF
    rst RST_38                                    ; $50CE: $FF
    db $FC                                        ; $50CF: $FC
    rst RST_38                                    ; $50D0: $FF
    ei                                            ; $50D1: $FB

jr_01D_50D2:
    db $FC                                        ; $50D2: $FC
    rst RST_30                                    ; $50D3: $F7
    ld sp, hl                                     ; $50D4: $F9
    rst RST_30                                    ; $50D5: $F7
    ei                                            ; $50D6: $FB
    rst RST_28                                    ; $50D7: $EF
    rst RST_38                                    ; $50D8: $FF
    rst RST_28                                    ; $50D9: $EF
    rst RST_38                                    ; $50DA: $FF
    rst RST_28                                    ; $50DB: $EF
    rst RST_38                                    ; $50DC: $FF
    rst RST_30                                    ; $50DD: $F7
    rst RST_38                                    ; $50DE: $FF
    rst RST_30                                    ; $50DF: $F7
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
    add b                                         ; $50EC: $80
    nop                                           ; $50ED: $00
    ldh [rP1], a                                  ; $50EE: $E0 $00
    jr nc, jr_01D_50D2                            ; $50F0: $30 $E0

    db $10                                        ; $50F2: $10
    ldh [$FF98], a                                ; $50F3: $E0 $98
    ldh a, [rBCPS]                                ; $50F5: $F0 $68
    ldh a, [$FFE8]                                ; $50F7: $F0 $E8
    ldh a, [$FFF8]                                ; $50F9: $F0 $F8
    ldh a, [$FFF8]                                ; $50FB: $F0 $F8
    or b                                          ; $50FD: $B0
    ld hl, sp-$70                                 ; $50FE: $F8 $90
    add a                                         ; $5100: $87
    ld bc, $050A                                  ; $5101: $01 $0A $05
    rlca                                          ; $5104: $07
    ld bc, $0003                                  ; $5105: $01 $03 $00
    rlca                                          ; $5108: $07
    nop                                           ; $5109: $00
    ld a, l                                       ; $510A: $7D
    rlca                                          ; $510B: $07
    rst RST_10                                    ; $510C: $D7
    ld a, a                                       ; $510D: $7F
    rst RST_38                                    ; $510E: $FF
    nop                                           ; $510F: $00
    nop                                           ; $5110: $00
    nop                                           ; $5111: $00
    nop                                           ; $5112: $00
    nop                                           ; $5113: $00
    nop                                           ; $5114: $00
    nop                                           ; $5115: $00
    nop                                           ; $5116: $00
    nop                                           ; $5117: $00
    nop                                           ; $5118: $00
    nop                                           ; $5119: $00
    nop                                           ; $511A: $00
    nop                                           ; $511B: $00
    nop                                           ; $511C: $00
    nop                                           ; $511D: $00
    nop                                           ; $511E: $00
    nop                                           ; $511F: $00
    jp $C380                                      ; $5120: $C3 $80 $C3


    add c                                         ; $5123: $81
    add e                                         ; $5124: $83
    ld bc, $033F                                  ; $5125: $01 $3F $03
    rst RST_08                                    ; $5128: $CF
    dec sp                                        ; $5129: $3B
    ld a, a                                       ; $512A: $7F
    rst RST_20                                    ; $512B: $E7
    rst RST_28                                    ; $512C: $EF
    jp nc, Jump_000_24DB                          ; $512D: $D2 $DB $24

    ld a, [hl+]                                   ; $5130: $2A
    inc b                                         ; $5131: $04
    inc b                                         ; $5132: $04
    nop                                           ; $5133: $00
    nop                                           ; $5134: $00
    nop                                           ; $5135: $00
    nop                                           ; $5136: $00
    nop                                           ; $5137: $00
    nop                                           ; $5138: $00
    nop                                           ; $5139: $00
    nop                                           ; $513A: $00
    nop                                           ; $513B: $00
    nop                                           ; $513C: $00
    nop                                           ; $513D: $00
    nop                                           ; $513E: $00
    nop                                           ; $513F: $00
    rst RST_38                                    ; $5140: $FF
    sbc l                                         ; $5141: $9D
    rst RST_38                                    ; $5142: $FF
    and b                                         ; $5143: $A0
    rst RST_38                                    ; $5144: $FF
    cp a                                          ; $5145: $BF
    rst RST_38                                    ; $5146: $FF
    ld a, [hl]                                    ; $5147: $7E
    cp $7C                                        ; $5148: $FE $7C
    db $FD                                        ; $514A: $FD
    ld [hl], b                                    ; $514B: $70
    ldh a, [c]                                    ; $514C: $F2
    pop bc                                        ; $514D: $C1
    push bc                                       ; $514E: $C5
    ld [bc], a                                    ; $514F: $02
    dec b                                         ; $5150: $05
    ld [bc], a                                    ; $5151: $02
    ld [bc], a                                    ; $5152: $02
    nop                                           ; $5153: $00
    nop                                           ; $5154: $00
    nop                                           ; $5155: $00
    nop                                           ; $5156: $00
    nop                                           ; $5157: $00
    nop                                           ; $5158: $00
    nop                                           ; $5159: $00
    nop                                           ; $515A: $00
    nop                                           ; $515B: $00
    nop                                           ; $515C: $00
    nop                                           ; $515D: $00
    nop                                           ; $515E: $00
    nop                                           ; $515F: $00
    ld hl, sp-$10                                 ; $5160: $F8 $F0
    ld hl, sp+$30                                 ; $5162: $F8 $30
    ld hl, sp+$70                                 ; $5164: $F8 $70
    ldh a, [$FF60]                                ; $5166: $F0 $60
    ldh a, [$FF60]                                ; $5168: $F0 $60
    ldh a, [$FFE0]                                ; $516A: $F0 $E0
    ldh a, [rNR41]                                ; $516C: $F0 $20
    and b                                         ; $516E: $A0
    ld b, b                                       ; $516F: $40
    and b                                         ; $5170: $A0
    ld b, b                                       ; $5171: $40
    ld b, b                                       ; $5172: $40
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
    add hl, bc                                    ; $5180: $09
    nop                                           ; $5181: $00
    ld d, $09                                     ; $5182: $16 $09
    ld d, $09                                     ; $5184: $16 $09
    dec e                                         ; $5186: $1D
    ld [bc], a                                    ; $5187: $02
    rra                                           ; $5188: $1F
    dec c                                         ; $5189: $0D
    ld a, $0D                                     ; $518A: $3E $0D
    ccf                                           ; $518C: $3F
    dec de                                        ; $518D: $1B
    ccf                                           ; $518E: $3F
    dec de                                        ; $518F: $1B
    ccf                                           ; $5190: $3F
    dec de                                        ; $5191: $1B
    ld a, a                                       ; $5192: $7F
    jr nc, jr_01D_5214                            ; $5193: $30 $7F

    ld a, $FF                                     ; $5195: $3E $FF
    ld c, a                                       ; $5197: $4F
    rst RST_38                                    ; $5198: $FF
    ld l, a                                       ; $5199: $6F
    rst RST_38                                    ; $519A: $FF
    ld a, a                                       ; $519B: $7F
    cp a                                          ; $519C: $BF
    ld a, a                                       ; $519D: $7F
    or [hl]                                       ; $519E: $B6
    ld a, a                                       ; $519F: $7F
    rrca                                          ; $51A0: $0F
    nop                                           ; $51A1: $00
    dec a                                         ; $51A2: $3D
    rrca                                          ; $51A3: $0F
    rst RST_20                                    ; $51A4: $E7
    inc a                                         ; $51A5: $3C
    xor h                                         ; $51A6: $AC
    ld [hl], b                                    ; $51A7: $70
    ret nc                                        ; $51A8: $D0

    ld h, b                                       ; $51A9: $60
    and c                                         ; $51AA: $A1
    ld b, b                                       ; $51AB: $40
    and c                                         ; $51AC: $A1
    ret nz                                        ; $51AD: $C0

    jp Jump_01D_4781                              ; $51AE: $C3 $81 $47


jr_01D_51B1:
    add e                                         ; $51B1: $83
    rst RST_00                                    ; $51B2: $C7
    add e                                         ; $51B3: $83
    daa                                           ; $51B4: $27
    jp $C2A7                                      ; $51B5: $C3 $A7 $C2


    rst RST_38                                    ; $51B8: $FF
    ld b, $FF                                     ; $51B9: $06 $FF
    db $E4                                        ; $51BB: $E4
    rst RST_38                                    ; $51BC: $FF
    ld a, e                                       ; $51BD: $7B
    rst RST_38                                    ; $51BE: $FF
    ld a, l                                       ; $51BF: $7D
    ret nz                                        ; $51C0: $C0

    nop                                           ; $51C1: $00
    ld h, b                                       ; $51C2: $60
    ret nz                                        ; $51C3: $C0

    ret nz                                        ; $51C4: $C0

    nop                                           ; $51C5: $00
    nop                                           ; $51C6: $00
    nop                                           ; $51C7: $00
    add b                                         ; $51C8: $80
    nop                                           ; $51C9: $00
    ld b, b                                       ; $51CA: $40
    add b                                         ; $51CB: $80
    ld [hl], b                                    ; $51CC: $70
    add b                                         ; $51CD: $80
    ret nc                                        ; $51CE: $D0

    jr nz, jr_01D_51B1                            ; $51CF: $20 $E0

    add b                                         ; $51D1: $80
    add b                                         ; $51D2: $80
    nop                                           ; $51D3: $00
    add b                                         ; $51D4: $80
    nop                                           ; $51D5: $00
    nop                                           ; $51D6: $00
    nop                                           ; $51D7: $00
    nop                                           ; $51D8: $00
    nop                                           ; $51D9: $00
    nop                                           ; $51DA: $00
    nop                                           ; $51DB: $00
    add b                                         ; $51DC: $80
    nop                                           ; $51DD: $00
    ld b, b                                       ; $51DE: $40
    add b                                         ; $51DF: $80
    call z, Call_01D_417F                         ; $51E0: $CC $7F $41
    ccf                                           ; $51E3: $3F
    ld h, a                                       ; $51E4: $67
    ld a, $3F                                     ; $51E5: $3E $3F
    ld bc, $0708                                  ; $51E7: $01 $08 $07
    ld b, $01                                     ; $51EA: $06 $01
    ld bc, $0000                                  ; $51EC: $01 $00 $00
    nop                                           ; $51EF: $00
    nop                                           ; $51F0: $00
    nop                                           ; $51F1: $00
    nop                                           ; $51F2: $00
    nop                                           ; $51F3: $00
    nop                                           ; $51F4: $00
    nop                                           ; $51F5: $00
    nop                                           ; $51F6: $00
    nop                                           ; $51F7: $00
    nop                                           ; $51F8: $00
    nop                                           ; $51F9: $00
    nop                                           ; $51FA: $00
    nop                                           ; $51FB: $00
    nop                                           ; $51FC: $00
    nop                                           ; $51FD: $00
    nop                                           ; $51FE: $00
    nop                                           ; $51FF: $00
    rst RST_38                                    ; $5200: $FF
    cp l                                          ; $5201: $BD
    rst RST_38                                    ; $5202: $FF
    cp [hl]                                       ; $5203: $BE
    rst RST_38                                    ; $5204: $FF
    cp [hl]                                       ; $5205: $BE
    rst RST_38                                    ; $5206: $FF
    ld a, h                                       ; $5207: $7C
    rst RST_38                                    ; $5208: $FF
    ld a, e                                       ; $5209: $7B
    rst RST_38                                    ; $520A: $FF
    ld a, [$FAFF]                                 ; $520B: $FA $FF $FA
    rst RST_38                                    ; $520E: $FF
    cp $5F                                        ; $520F: $FE $5F
    rst RST_38                                    ; $5211: $FF
    ld e, a                                       ; $5212: $5F
    rst RST_38                                    ; $5213: $FF

jr_01D_5214:
    adc l                                         ; $5214: $8D
    ld a, a                                       ; $5215: $7F
    ld l, c                                       ; $5216: $69
    rra                                           ; $5217: $1F
    jr jr_01D_5221                                ; $5218: $18 $07

    rlca                                          ; $521A: $07
    nop                                           ; $521B: $00
    nop                                           ; $521C: $00
    nop                                           ; $521D: $00
    nop                                           ; $521E: $00
    nop                                           ; $521F: $00
    and b                                         ; $5220: $A0

jr_01D_5221:
    ret nz                                        ; $5221: $C0

    and b                                         ; $5222: $A0
    ret nz                                        ; $5223: $C0

    or [hl]                                       ; $5224: $B6
    ret nz                                        ; $5225: $C0

    db $ED                                        ; $5226: $ED
    ld [de], a                                    ; $5227: $12
    xor a                                         ; $5228: $AF
    ld d, c                                       ; $5229: $51
    rst RST_38                                    ; $522A: $FF
    dec bc                                        ; $522B: $0B
    rst RST_38                                    ; $522C: $FF
    jp $FBFF                                      ; $522D: $C3 $FF $FB


    rst RST_38                                    ; $5230: $FF
    db $FD                                        ; $5231: $FD
    rst RST_38                                    ; $5232: $FF
    rst RST_38                                    ; $5233: $FF
    cp a                                          ; $5234: $BF
    rst RST_38                                    ; $5235: $FF
    cp a                                          ; $5236: $BF
    rst RST_38                                    ; $5237: $FF
    dec l                                         ; $5238: $2D
    rst RST_38                                    ; $5239: $FF
    ld [$FFFF], sp                                ; $523A: $08 $FF $FF
    nop                                           ; $523D: $00
    nop                                           ; $523E: $00
    nop                                           ; $523F: $00
    ld [hl], $1C                                  ; $5240: $36 $1C
    ccf                                           ; $5242: $3F
    jr jr_01D_52BE                                ; $5243: $18 $79

    ld [hl], $EF                                  ; $5245: $36 $EF
    dec [hl]                                      ; $5247: $35
    jp nc, $FEEF                                  ; $5248: $D2 $EF $FE

    db $EB                                        ; $524B: $EB
    db $ED                                        ; $524C: $ED
    rst RST_10                                    ; $524D: $D7
    cp e                                          ; $524E: $BB
    xor $D7                                       ; $524F: $EE $D7
    jp hl                                         ; $5251: $E9


    or a                                          ; $5252: $B7
    jp hl                                         ; $5253: $E9


    rst RST_30                                    ; $5254: $F7
    dec de                                        ; $5255: $1B
    or $BB                                        ; $5256: $F6 $BB
    db $FD                                        ; $5258: $FD
    ld a, [hl]                                    ; $5259: $7E
    ld l, [hl]                                    ; $525A: $6E
    ld hl, sp-$48                                 ; $525B: $F8 $B8
    ret nz                                        ; $525D: $C0

    ret nz                                        ; $525E: $C0

    nop                                           ; $525F: $00
    nop                                           ; $5260: $00
    nop                                           ; $5261: $00
    nop                                           ; $5262: $00
    nop                                           ; $5263: $00
    nop                                           ; $5264: $00
    nop                                           ; $5265: $00
    nop                                           ; $5266: $00
    nop                                           ; $5267: $00
    ret nz                                        ; $5268: $C0

    nop                                           ; $5269: $00
    ldh [$FFC0], a                                ; $526A: $E0 $C0
    ret nc                                        ; $526C: $D0

    ldh [$FFD0], a                                ; $526D: $E0 $D0
    and b                                         ; $526F: $A0
    or b                                          ; $5270: $B0
    ldh [rNR41], a                                ; $5271: $E0 $20
    ret nz                                        ; $5273: $C0

    ld h, b                                       ; $5274: $60
    ret nz                                        ; $5275: $C0

    ret nz                                        ; $5276: $C0

    add b                                         ; $5277: $80
    ret nz                                        ; $5278: $C0

    nop                                           ; $5279: $00
    ld b, b                                       ; $527A: $40
    add b                                         ; $527B: $80
    add b                                         ; $527C: $80
    nop                                           ; $527D: $00
    add b                                         ; $527E: $80
    nop                                           ; $527F: $00
    nop                                           ; $5280: $00
    nop                                           ; $5281: $00
    nop                                           ; $5282: $00
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
    inc e                                         ; $529E: $1C
    nop                                           ; $529F: $00
    ld [hl], b                                    ; $52A0: $70
    nop                                           ; $52A1: $00
    ld e, b                                       ; $52A2: $58
    jr nc, jr_01D_52D1                            ; $52A3: $30 $2C

    jr jr_01D_52D3                                ; $52A5: $18 $2C

    jr jr_01D_5308                                ; $52A7: $18 $5F

    jr c, jr_01D_530A                             ; $52A9: $38 $5F

    inc sp                                        ; $52AB: $33
    rst RST_38                                    ; $52AC: $FF
    ld a, a                                       ; $52AD: $7F
    cp a                                          ; $52AE: $BF
    ld a, a                                       ; $52AF: $7F
    ld d, l                                       ; $52B0: $55
    ccf                                           ; $52B1: $3F
    ccf                                           ; $52B2: $3F
    nop                                           ; $52B3: $00
    nop                                           ; $52B4: $00
    nop                                           ; $52B5: $00
    nop                                           ; $52B6: $00
    nop                                           ; $52B7: $00
    nop                                           ; $52B8: $00
    nop                                           ; $52B9: $00
    nop                                           ; $52BA: $00
    nop                                           ; $52BB: $00
    nop                                           ; $52BC: $00
    nop                                           ; $52BD: $00

jr_01D_52BE:
    nop                                           ; $52BE: $00
    nop                                           ; $52BF: $00
    inc bc                                        ; $52C0: $03
    ld bc, $0103                                  ; $52C1: $01 $03 $01
    inc bc                                        ; $52C4: $03
    ld bc, $0307                                  ; $52C5: $01 $07 $03
    rrca                                          ; $52C8: $0F
    rlca                                          ; $52C9: $07
    rrca                                          ; $52CA: $0F
    ld b, $1F                                     ; $52CB: $06 $1F
    dec bc                                        ; $52CD: $0B
    ccf                                           ; $52CE: $3F
    add hl, de                                    ; $52CF: $19
    rst RST_38                                    ; $52D0: $FF

jr_01D_52D1:
    scf                                           ; $52D1: $37
    rst RST_38                                    ; $52D2: $FF

jr_01D_52D3:
    rst RST_30                                    ; $52D3: $F7
    rst RST_38                                    ; $52D4: $FF
    rst RST_28                                    ; $52D5: $EF
    ei                                            ; $52D6: $FB
    rst RST_38                                    ; $52D7: $FF
    jp hl                                         ; $52D8: $E9


    rst RST_38                                    ; $52D9: $FF
    inc l                                         ; $52DA: $2C
    rst RST_38                                    ; $52DB: $FF
    cp $03                                        ; $52DC: $FE $03
    inc bc                                        ; $52DE: $03
    nop                                           ; $52DF: $00
    rst RST_38                                    ; $52E0: $FF
    add a                                         ; $52E1: $87
    rst RST_28                                    ; $52E2: $EF
    add $CF                                       ; $52E3: $C6 $CF
    add [hl]                                      ; $52E5: $86
    rst RST_38                                    ; $52E6: $FF
    nop                                           ; $52E7: $00
    rst RST_38                                    ; $52E8: $FF
    ld a, a                                       ; $52E9: $7F
    rst RST_38                                    ; $52EA: $FF
    rra                                           ; $52EB: $1F
    rst RST_38                                    ; $52EC: $FF
    rst RST_28                                    ; $52ED: $EF
    rst RST_38                                    ; $52EE: $FF
    rst RST_30                                    ; $52EF: $F7
    rst RST_38                                    ; $52F0: $FF
    rst RST_30                                    ; $52F1: $F7
    rst RST_38                                    ; $52F2: $FF
    ei                                            ; $52F3: $FB
    rst RST_38                                    ; $52F4: $FF
    ei                                            ; $52F5: $FB
    rst RST_28                                    ; $52F6: $EF
    ei                                            ; $52F7: $FB
    jp z, $18F7                                   ; $52F8: $CA $F7 $18

    rst RST_30                                    ; $52FB: $F7
    ld a, a                                       ; $52FC: $7F
    ldh [$FFE0], a                                ; $52FD: $E0 $E0
    nop                                           ; $52FF: $00
    adc d                                         ; $5300: $8A
    inc b                                         ; $5301: $04
    ld a, [de]                                    ; $5302: $1A
    inc b                                         ; $5303: $04
    ld l, $10                                     ; $5304: $2E $10
    ld e, $00                                     ; $5306: $1E $00

jr_01D_5308:
    adc $04                                       ; $5308: $CE $04

jr_01D_530A:
    db $FC                                        ; $530A: $FC
    ret z                                         ; $530B: $C8

    db $FD                                        ; $530C: $FD
    add sp, -$01                                  ; $530D: $E8 $FF
    call nc, $D7FF                                ; $530F: $D4 $FF $D7
    rst RST_38                                    ; $5312: $FF
    rst RST_38                                    ; $5313: $FF
    rst RST_38                                    ; $5314: $FF
    rst RST_38                                    ; $5315: $FF
    ld a, e                                       ; $5316: $7B
    rst RST_38                                    ; $5317: $FF
    ld h, d                                       ; $5318: $62
    rst RST_38                                    ; $5319: $FF
    ld bc, $FEFE                                  ; $531A: $01 $FE $FE
    nop                                           ; $531D: $00
    nop                                           ; $531E: $00
    nop                                           ; $531F: $00
    nop                                           ; $5320: $00

jr_01D_5321:
    nop                                           ; $5321: $00
    nop                                           ; $5322: $00
    nop                                           ; $5323: $00
    nop                                           ; $5324: $00
    nop                                           ; $5325: $00
    ld a, $00                                     ; $5326: $3E $00
    ld a, a                                       ; $5328: $7F
    ld a, $FE                                     ; $5329: $3E $FE
    ld a, a                                       ; $532B: $7F
    db $EB                                        ; $532C: $EB
    cp $D6                                        ; $532D: $FE $D6
    db $FD                                        ; $532F: $FD
    db $ED                                        ; $5330: $ED
    ld a, d                                       ; $5331: $7A
    rst RST_38                                    ; $5332: $FF
    ldh a, [$FFF9]                                ; $5333: $F0 $F9
    rst RST_00                                    ; $5335: $C7
    ld [hl], a                                    ; $5336: $77
    db $FD                                        ; $5337: $FD
    ld a, a                                       ; $5338: $7F
    ld hl, sp+$3F                                 ; $5339: $F8 $3F
    db $FD                                        ; $533B: $FD
    rst RST_38                                    ; $533C: $FF
    ld e, $1E                                     ; $533D: $1E $1E
    nop                                           ; $533F: $00
    nop                                           ; $5340: $00
    nop                                           ; $5341: $00
    nop                                           ; $5342: $00
    nop                                           ; $5343: $00
    nop                                           ; $5344: $00
    nop                                           ; $5345: $00
    jr c, jr_01D_5348                             ; $5346: $38 $00

jr_01D_5348:
    db $FC                                        ; $5348: $FC
    jr c, jr_01D_5321                             ; $5349: $38 $D6

    db $FC                                        ; $534B: $FC
    db $FC                                        ; $534C: $FC
    nop                                           ; $534D: $00
    xor d                                         ; $534E: $AA
    ld d, h                                       ; $534F: $54
    cp $28                                        ; $5350: $FE $28
    rst RST_38                                    ; $5352: $FF
    cp $51                                        ; $5353: $FE $51
    cp $AD                                        ; $5355: $FE $AD
    or $C2                                        ; $5357: $F6 $C2
    db $FC                                        ; $5359: $FC
    cp h                                          ; $535A: $BC
    ret nz                                        ; $535B: $C0

    ret nz                                        ; $535C: $C0

    nop                                           ; $535D: $00
    nop                                           ; $535E: $00
    nop                                           ; $535F: $00
    nop                                           ; $5360: $00
    nop                                           ; $5361: $00
    nop                                           ; $5362: $00
    nop                                           ; $5363: $00
    nop                                           ; $5364: $00
    nop                                           ; $5365: $00
    nop                                           ; $5366: $00
    nop                                           ; $5367: $00

jr_01D_5368:
    nop                                           ; $5368: $00
    nop                                           ; $5369: $00
    nop                                           ; $536A: $00
    nop                                           ; $536B: $00
    nop                                           ; $536C: $00
    nop                                           ; $536D: $00

jr_01D_536E:
    nop                                           ; $536E: $00
    nop                                           ; $536F: $00
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
    ld [de], a                                    ; $537A: $12
    nop                                           ; $537B: $00
    dec l                                         ; $537C: $2D
    ld [de], a                                    ; $537D: $12
    swap l                                        ; $537E: $CB $35
    nop                                           ; $5380: $00
    nop                                           ; $5381: $00
    nop                                           ; $5382: $00
    nop                                           ; $5383: $00
    nop                                           ; $5384: $00
    nop                                           ; $5385: $00
    nop                                           ; $5386: $00
    nop                                           ; $5387: $00
    nop                                           ; $5388: $00
    nop                                           ; $5389: $00
    nop                                           ; $538A: $00
    nop                                           ; $538B: $00
    nop                                           ; $538C: $00
    nop                                           ; $538D: $00
    nop                                           ; $538E: $00
    nop                                           ; $538F: $00
    nop                                           ; $5390: $00
    nop                                           ; $5391: $00
    nop                                           ; $5392: $00
    nop                                           ; $5393: $00
    nop                                           ; $5394: $00
    nop                                           ; $5395: $00
    nop                                           ; $5396: $00
    nop                                           ; $5397: $00
    ld c, b                                       ; $5398: $48
    nop                                           ; $5399: $00
    or h                                          ; $539A: $B4
    ld c, b                                       ; $539B: $48
    jr z, jr_01D_536E                             ; $539C: $28 $D0

    ldh a, [c]                                    ; $539E: $F2
    nop                                           ; $539F: $00
    nop                                           ; $53A0: $00
    nop                                           ; $53A1: $00
    ret nz                                        ; $53A2: $C0

    nop                                           ; $53A3: $00
    ld h, b                                       ; $53A4: $60
    ret nz                                        ; $53A5: $C0

    jr nz, jr_01D_5368                            ; $53A6: $20 $C0

    ld [hl], b                                    ; $53A8: $70
    ldh [rSVBK], a                                ; $53A9: $E0 $70
    ldh [$FFF0], a                                ; $53AB: $E0 $F0
    ldh [$FFF8], a                                ; $53AD: $E0 $F8
    ldh [$FFFC], a                                ; $53AF: $E0 $FC
    add sp, -$02                                  ; $53B1: $E8 $FE
    call c, $DCFE                                 ; $53B3: $DC $FE $DC
    rst RST_38                                    ; $53B6: $FF
    or [hl]                                       ; $53B7: $B6
    rst RST_38                                    ; $53B8: $FF
    xor $FF                                       ; $53B9: $EE $FF
    nop                                           ; $53BB: $00
    ld c, c                                       ; $53BC: $49
    ld [hl], $7F                                  ; $53BD: $36 $7F
    nop                                           ; $53BF: $00
    pop af                                        ; $53C0: $F1
    cp $FF                                        ; $53C1: $FE $FF
    rst RST_38                                    ; $53C3: $FF
    cp $FB                                        ; $53C4: $FE $FB
    ld hl, sp-$09                                 ; $53C6: $F8 $F7
    pop af                                        ; $53C8: $F1
    rst RST_28                                    ; $53C9: $EF
    di                                            ; $53CA: $F3
    rst RST_28                                    ; $53CB: $EF
    rst RST_30                                    ; $53CC: $F7
    rst RST_18                                    ; $53CD: $DF
    rst RST_30                                    ; $53CE: $F7
    rst RST_18                                    ; $53CF: $DF
    rst RST_38                                    ; $53D0: $FF
    rst RST_18                                    ; $53D1: $DF
    ei                                            ; $53D2: $FB
    rst RST_28                                    ; $53D3: $EF
    rst RST_38                                    ; $53D4: $FF
    ld l, a                                       ; $53D5: $6F
    rst RST_38                                    ; $53D6: $FF
    add a                                         ; $53D7: $87
    rst RST_38                                    ; $53D8: $FF
    ld sp, hl                                     ; $53D9: $F9
    rst RST_38                                    ; $53DA: $FF
    ldh [$FFE0], a                                ; $53DB: $E0 $E0
    nop                                           ; $53DD: $00
    nop                                           ; $53DE: $00
    nop                                           ; $53DF: $00
    inc bc                                        ; $53E0: $03
    inc bc                                        ; $53E1: $03
    inc bc                                        ; $53E2: $03
    ld bc, $0103                                  ; $53E3: $01 $03 $01
    inc bc                                        ; $53E6: $03
    ld bc, $0303                                  ; $53E7: $01 $03 $03
    inc bc                                        ; $53EA: $03
    inc bc                                        ; $53EB: $03
    inc bc                                        ; $53EC: $03
    inc bc                                        ; $53ED: $03
    inc bc                                        ; $53EE: $03
    inc bc                                        ; $53EF: $03
    inc bc                                        ; $53F0: $03
    inc bc                                        ; $53F1: $03
    inc bc                                        ; $53F2: $03
    ld bc, $0203                                  ; $53F3: $01 $03 $02
    inc bc                                        ; $53F6: $03
    ld [bc], a                                    ; $53F7: $02
    inc bc                                        ; $53F8: $03
    ld [bc], a                                    ; $53F9: $02
    inc bc                                        ; $53FA: $03
    ld bc, $0003                                  ; $53FB: $01 $03 $00
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
    nop                                           ; $540C: $00
    nop                                           ; $540D: $00
    nop                                           ; $540E: $00
    nop                                           ; $540F: $00
    nop                                           ; $5410: $00
    nop                                           ; $5411: $00
    nop                                           ; $5412: $00
    nop                                           ; $5413: $00
    add b                                         ; $5414: $80
    nop                                           ; $5415: $00
    ld h, b                                       ; $5416: $60
    add b                                         ; $5417: $80
    ld e, b                                       ; $5418: $58
    ldh [$FFC4], a                                ; $5419: $E0 $C4
    ld hl, sp-$16                                 ; $541B: $F8 $EA
    db $FC                                        ; $541D: $FC
    jp hl                                         ; $541E: $E9


    cp $00                                        ; $541F: $FE $00
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
    add b                                         ; $543E: $80
    nop                                           ; $543F: $00
    add b                                         ; $5440: $80
    nop                                           ; $5441: $00
    ldh [$FF80], a                                ; $5442: $E0 $80
    ret nc                                        ; $5444: $D0

    ldh [rBCPS], a                                ; $5445: $E0 $68
    or b                                          ; $5447: $B0
    ld a, b                                       ; $5448: $78
    or b                                          ; $5449: $B0
    ld [hl], h                                    ; $544A: $74
    sbc b                                         ; $544B: $98
    ld a, h                                       ; $544C: $7C
    sub b                                         ; $544D: $90
    cp h                                          ; $544E: $BC
    add sp, -$2A                                  ; $544F: $E8 $D6
    ld a, h                                       ; $5451: $7C
    ldh [c], a                                    ; $5452: $E2
    cp h                                          ; $5453: $BC
    dec hl                                        ; $5454: $2B
    cp $FD                                        ; $5455: $FE $FD
    ld e, d                                       ; $5457: $5A
    sbc l                                         ; $5458: $9D
    ld l, [hl]                                    ; $5459: $6E
    cp $8C                                        ; $545A: $FE $8C
    ld l, h                                       ; $545C: $6C
    ret nz                                        ; $545D: $C0

    ret nz                                        ; $545E: $C0

    nop                                           ; $545F: $00
    db $FC                                        ; $5460: $FC
    nop                                           ; $5461: $00
    dec bc                                        ; $5462: $0B
    db $FC                                        ; $5463: $FC
    ld d, [hl]                                    ; $5464: $56
    rst RST_38                                    ; $5465: $FF
    ld a, a                                       ; $5466: $7F
    rst RST_30                                    ; $5467: $F7
    rst RST_38                                    ; $5468: $FF
    ei                                            ; $5469: $FB
    rst RST_38                                    ; $546A: $FF
    pop af                                        ; $546B: $F1
    ei                                            ; $546C: $FB
    sbc $FD                                       ; $546D: $DE $FD
    cp [hl]                                       ; $546F: $BE
    ei                                            ; $5470: $FB
    ld a, $FE                                     ; $5471: $3E $FE
    dec a                                         ; $5473: $3D
    rst RST_38                                    ; $5474: $FF
    sbc [hl]                                      ; $5475: $9E
    db $DD                                        ; $5476: $DD
    ld l, $2E                                     ; $5477: $2E $2E
    inc bc                                        ; $5479: $03
    rlca                                          ; $547A: $07
    inc bc                                        ; $547B: $03
    inc bc                                        ; $547C: $03
    ld bc, $0103                                  ; $547D: $01 $03 $01
    rrca                                          ; $5480: $0F
    nop                                           ; $5481: $00
    ld [hl], b                                    ; $5482: $70
    rrca                                          ; $5483: $0F
    adc c                                         ; $5484: $89
    ld a, a                                       ; $5485: $7F
    ld c, l                                       ; $5486: $4D
    rst RST_38                                    ; $5487: $FF
    ld l, a                                       ; $5488: $6F
    rst RST_38                                    ; $5489: $FF
    rst RST_38                                    ; $548A: $FF
    rst RST_38                                    ; $548B: $FF
    rst RST_38                                    ; $548C: $FF
    rst RST_38                                    ; $548D: $FF
    rst RST_38                                    ; $548E: $FF
    rst RST_18                                    ; $548F: $DF
    rst RST_38                                    ; $5490: $FF
    ld e, [hl]                                    ; $5491: $5E
    rst RST_38                                    ; $5492: $FF
    ld h, c                                       ; $5493: $61
    db $EB                                        ; $5494: $EB
    sub h                                         ; $5495: $94
    db $FC                                        ; $5496: $FC
    add sp, -$04                                  ; $5497: $E8 $FC
    ld hl, sp-$02                                 ; $5499: $F8 $FE
    ldh a, [$FFFD]                                ; $549B: $F0 $FD
    ldh a, [c]                                    ; $549D: $F2
    cp $EF                                        ; $549E: $FE $EF
    ld bc, $0200                                  ; $54A0: $01 $00 $02
    ld bc, $0305                                  ; $54A3: $01 $05 $03
    dec c                                         ; $54A6: $0D
    rlca                                          ; $54A7: $07
    dec bc                                        ; $54A8: $0B
    rlca                                          ; $54A9: $07
    inc sp                                        ; $54AA: $33
    rrca                                          ; $54AB: $0F
    ld h, a                                       ; $54AC: $67
    ccf                                           ; $54AD: $3F
    jp $BD7F                                      ; $54AE: $C3 $7F $BD


    ld a, a                                       ; $54B1: $7F
    rst RST_38                                    ; $54B2: $FF
    rst RST_20                                    ; $54B3: $E7
    rra                                           ; $54B4: $1F
    ei                                            ; $54B5: $FB
    rlca                                          ; $54B6: $07
    db $FD                                        ; $54B7: $FD
    inc sp                                        ; $54B8: $33
    cp $DB                                        ; $54B9: $FE $DB
    cp $FF                                        ; $54BB: $FE $FF
    cp $FF                                        ; $54BD: $FE $FF
    cp $FE                                        ; $54BF: $FE $FE
    rst RST_28                                    ; $54C1: $EF
    cp $DF                                        ; $54C2: $FE $DF
    cp $DF                                        ; $54C4: $FE $DF
    db $FD                                        ; $54C6: $FD
    ld c, $7E                                     ; $54C7: $0E $7E
    inc a                                         ; $54C9: $3C
    inc a                                         ; $54CA: $3C
    db $10                                        ; $54CB: $10
    inc a                                         ; $54CC: $3C
    jr @+$3E                                      ; $54CD: $18 $3C

    jr jr_01D_54F0                                ; $54CF: $18 $1F

    inc c                                         ; $54D1: $0C
    rra                                           ; $54D2: $1F
    ld c, $1F                                     ; $54D3: $0E $1F
    ld c, $0E                                     ; $54D5: $0E $0E
    ld bc, $0003                                  ; $54D7: $01 $03 $00
    nop                                           ; $54DA: $00
    nop                                           ; $54DB: $00
    nop                                           ; $54DC: $00
    nop                                           ; $54DD: $00
    nop                                           ; $54DE: $00
    nop                                           ; $54DF: $00
    add c                                         ; $54E0: $81
    nop                                           ; $54E1: $00
    add b                                         ; $54E2: $80
    nop                                           ; $54E3: $00
    add b                                         ; $54E4: $80
    nop                                           ; $54E5: $00
    add b                                         ; $54E6: $80
    nop                                           ; $54E7: $00
    nop                                           ; $54E8: $00
    nop                                           ; $54E9: $00
    nop                                           ; $54EA: $00
    nop                                           ; $54EB: $00
    nop                                           ; $54EC: $00
    nop                                           ; $54ED: $00
    nop                                           ; $54EE: $00
    nop                                           ; $54EF: $00

jr_01D_54F0:
    nop                                           ; $54F0: $00
    nop                                           ; $54F1: $00
    add b                                         ; $54F2: $80
    nop                                           ; $54F3: $00
    ld b, b                                       ; $54F4: $40
    add b                                         ; $54F5: $80
    ret nz                                        ; $54F6: $C0

    nop                                           ; $54F7: $00
    jr nz, @-$3E                                  ; $54F8: $20 $C0

    ldh [rP1], a                                  ; $54FA: $E0 $00
    nop                                           ; $54FC: $00
    nop                                           ; $54FD: $00
    nop                                           ; $54FE: $00
    nop                                           ; $54FF: $00
    rst RST_38                                    ; $5500: $FF
    db $DD                                        ; $5501: $DD
    rst RST_38                                    ; $5502: $FF
    dec a                                         ; $5503: $3D
    rst RST_38                                    ; $5504: $FF
    ld hl, sp-$08                                 ; $5505: $F8 $F8
    ret nz                                        ; $5507: $C0

    ldh a, [$FF60]                                ; $5508: $F0 $60
    ld hl, sp+$70                                 ; $550A: $F8 $70
    db $FC                                        ; $550C: $FC
    ld a, b                                       ; $550D: $78
    ld a, d                                       ; $550E: $7A
    inc h                                         ; $550F: $24
    dec h                                         ; $5510: $25
    ld a, [de]                                    ; $5511: $1A
    dec de                                        ; $5512: $1B
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
    ld bc, $E100                                  ; $5520: $01 $00 $E1
    nop                                           ; $5523: $00
    ld e, a                                       ; $5524: $5F
    pop hl                                        ; $5525: $E1
    add $FD                                       ; $5526: $C6 $FD
    sub $FD                                       ; $5528: $D6 $FD
    rst RST_38                                    ; $552A: $FF
    ld a, l                                       ; $552B: $7D
    ld a, a                                       ; $552C: $7F
    dec e                                         ; $552D: $1D
    rra                                           ; $552E: $1F
    ld b, $07                                     ; $552F: $06 $07
    nop                                           ; $5531: $00
    ld bc, $0100                                  ; $5532: $01 $00 $01
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
    nop                                           ; $5540: $00
    nop                                           ; $5541: $00
    nop                                           ; $5542: $00
    nop                                           ; $5543: $00
    nop                                           ; $5544: $00
    nop                                           ; $5545: $00
    nop                                           ; $5546: $00
    nop                                           ; $5547: $00
    nop                                           ; $5548: $00
    nop                                           ; $5549: $00
    nop                                           ; $554A: $00
    nop                                           ; $554B: $00
    nop                                           ; $554C: $00
    nop                                           ; $554D: $00
    add b                                         ; $554E: $80
    nop                                           ; $554F: $00
    ld h, b                                       ; $5550: $60
    add b                                         ; $5551: $80
    ret c                                         ; $5552: $D8

    ldh [$FFE6], a                                ; $5553: $E0 $E6
    ld a, b                                       ; $5555: $78
    ld [hl], l                                    ; $5556: $75
    ld e, $1E                                     ; $5557: $1E $1E
    rrca                                          ; $5559: $0F
    rrca                                          ; $555A: $0F
    inc bc                                        ; $555B: $03
    inc bc                                        ; $555C: $03
    ld bc, $0001                                  ; $555D: $01 $01 $00
    nop                                           ; $5560: $00
    nop                                           ; $5561: $00
    nop                                           ; $5562: $00
    nop                                           ; $5563: $00
    nop                                           ; $5564: $00
    nop                                           ; $5565: $00
    nop                                           ; $5566: $00
    nop                                           ; $5567: $00
    nop                                           ; $5568: $00
    nop                                           ; $5569: $00
    nop                                           ; $556A: $00
    nop                                           ; $556B: $00
    nop                                           ; $556C: $00
    nop                                           ; $556D: $00
    nop                                           ; $556E: $00
    nop                                           ; $556F: $00
    nop                                           ; $5570: $00
    nop                                           ; $5571: $00
    nop                                           ; $5572: $00
    nop                                           ; $5573: $00
    nop                                           ; $5574: $00
    nop                                           ; $5575: $00
    inc c                                         ; $5576: $0C
    nop                                           ; $5577: $00
    rrca                                          ; $5578: $0F
    inc b                                         ; $5579: $04

jr_01D_557A:
    ld b, $03                                     ; $557A: $06 $03
    inc bc                                        ; $557C: $03
    ld bc, $0001                                  ; $557D: $01 $01 $00
    nop                                           ; $5580: $00
    nop                                           ; $5581: $00
    nop                                           ; $5582: $00
    nop                                           ; $5583: $00

jr_01D_5584:
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
    add b                                         ; $558E: $80
    nop                                           ; $558F: $00
    ld b, b                                       ; $5590: $40
    add b                                         ; $5591: $80
    ld b, b                                       ; $5592: $40
    add b                                         ; $5593: $80
    and b                                         ; $5594: $A0
    ret nz                                        ; $5595: $C0

    jr nz, @-$3E                                  ; $5596: $20 $C0

    jr jr_01D_557A                                ; $5598: $18 $E0

    db $EC                                        ; $559A: $EC
    ld hl, sp-$3E                                 ; $559B: $F8 $C2
    db $FC                                        ; $559D: $FC
    sbc l                                         ; $559E: $9D
    cp $E0                                        ; $559F: $FE $E0
    ret nz                                        ; $55A1: $C0

    jr nc, jr_01D_5584                            ; $55A2: $30 $E0

    ldh a, [$FFE0]                                ; $55A4: $F0 $E0
    sbc b                                         ; $55A6: $98
    ldh a, [$FFCC]                                ; $55A7: $F0 $CC
    ld hl, sp-$02                                 ; $55A9: $F8 $FE
    db $FC                                        ; $55AB: $FC
    pop af                                        ; $55AC: $F1
    ld a, [hl]                                    ; $55AD: $7E
    ldh a, [$FF7F]                                ; $55AE: $F0 $7F
    cp $BF                                        ; $55B0: $FE $BF
    db $FC                                        ; $55B2: $FC
    rst RST_38                                    ; $55B3: $FF
    rst RST_38                                    ; $55B4: $FF
    rst RST_38                                    ; $55B5: $FF
    rst RST_38                                    ; $55B6: $FF
    ld a, a                                       ; $55B7: $7F
    rst RST_38                                    ; $55B8: $FF
    ld a, a                                       ; $55B9: $7F
    rst RST_38                                    ; $55BA: $FF
    ld [hl], a                                    ; $55BB: $77
    rst RST_38                                    ; $55BC: $FF
    or l                                          ; $55BD: $B5
    rst RST_38                                    ; $55BE: $FF
    or l                                          ; $55BF: $B5
    ld h, e                                       ; $55C0: $63
    cp a                                          ; $55C1: $BF
    rst RST_38                                    ; $55C2: $FF
    dec b                                         ; $55C3: $05
    ccf                                           ; $55C4: $3F
    ld bc, $1E37                                  ; $55C5: $01 $37 $1E
    ld h, e                                       ; $55C8: $63
    ld e, $B3                                     ; $55C9: $1E $B3
    ld e, [hl]                                    ; $55CB: $5E
    rst RST_28                                    ; $55CC: $EF
    ld a, $7F                                     ; $55CD: $3E $7F
    cp l                                          ; $55CF: $BD
    rst RST_18                                    ; $55D0: $DF
    ld a, c                                       ; $55D1: $79
    cp c                                          ; $55D2: $B9
    ldh [$FF61], a                                ; $55D3: $E0 $61
    ret nz                                        ; $55D5: $C0

    ret nz                                        ; $55D6: $C0

    add b                                         ; $55D7: $80
    add b                                         ; $55D8: $80
    nop                                           ; $55D9: $00
    nop                                           ; $55DA: $00
    nop                                           ; $55DB: $00
    ld bc, $0100                                  ; $55DC: $01 $00 $01
    nop                                           ; $55DF: $00
    ld d, a                                       ; $55E0: $57
    add hl, hl                                    ; $55E1: $29
    dec l                                         ; $55E2: $2D
    ld [bc], a                                    ; $55E3: $02
    inc bc                                        ; $55E4: $03
    nop                                           ; $55E5: $00
    ld bc, $0000                                  ; $55E6: $01 $00 $00
    nop                                           ; $55E9: $00
    nop                                           ; $55EA: $00
    nop                                           ; $55EB: $00
    nop                                           ; $55EC: $00
    nop                                           ; $55ED: $00
    nop                                           ; $55EE: $00
    nop                                           ; $55EF: $00
    nop                                           ; $55F0: $00
    nop                                           ; $55F1: $00
    nop                                           ; $55F2: $00
    nop                                           ; $55F3: $00
    ld bc, $0300                                  ; $55F4: $01 $00 $03
    nop                                           ; $55F7: $00
    dec b                                         ; $55F8: $05
    ld [bc], a                                    ; $55F9: $02
    rlca                                          ; $55FA: $07
    ld bc, $0103                                  ; $55FB: $01 $03 $01
    ld bc, $0000                                  ; $55FE: $01 $00 $00
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
    inc e                                         ; $5614: $1C
    nop                                           ; $5615: $00
    ld a, $1C                                     ; $5616: $3E $1C
    ld hl, $6A1E                                  ; $5618: $21 $1E $6A
    scf                                           ; $561B: $37
    ld a, [hl]                                    ; $561C: $7E
    rra                                           ; $561D: $1F
    ld e, [hl]                                    ; $561E: $5E
    daa                                           ; $561F: $27
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
    nop                                           ; $562E: $00
    nop                                           ; $562F: $00
    nop                                           ; $5630: $00
    nop                                           ; $5631: $00
    add b                                         ; $5632: $80
    nop                                           ; $5633: $00
    ldh a, [$FF80]                                ; $5634: $F0 $80
    ld a, h                                       ; $5636: $7C
    ldh a, [$FFFE]                                ; $5637: $F0 $FE
    adc h                                         ; $5639: $8C
    rst RST_28                                    ; $563A: $EF
    sub d                                         ; $563B: $92
    cp a                                          ; $563C: $BF
    rst RST_00                                    ; $563D: $C7
    call c, $007F                                 ; $563E: $DC $7F $00
    nop                                           ; $5641: $00
    nop                                           ; $5642: $00
    nop                                           ; $5643: $00
    nop                                           ; $5644: $00
    nop                                           ; $5645: $00
    nop                                           ; $5646: $00
    nop                                           ; $5647: $00
    nop                                           ; $5648: $00
    nop                                           ; $5649: $00
    nop                                           ; $564A: $00
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
    add b                                         ; $565A: $80
    nop                                           ; $565B: $00
    ret nz                                        ; $565C: $C0

    add b                                         ; $565D: $80
    ldh [$FFC0], a                                ; $565E: $E0 $C0
    inc bc                                        ; $5660: $03
    nop                                           ; $5661: $00
    dec b                                         ; $5662: $05
    ld [bc], a                                    ; $5663: $02
    ld [bc], a                                    ; $5664: $02
    nop                                           ; $5665: $00
    nop                                           ; $5666: $00

jr_01D_5667:
    nop                                           ; $5667: $00
    nop                                           ; $5668: $00
    nop                                           ; $5669: $00
    nop                                           ; $566A: $00
    nop                                           ; $566B: $00
    rlca                                          ; $566C: $07
    nop                                           ; $566D: $00
    dec e                                         ; $566E: $1D
    rlca                                          ; $566F: $07
    ld h, $1F                                     ; $5670: $26 $1F
    ld a, a                                       ; $5672: $7F
    ccf                                           ; $5673: $3F
    ld e, a                                       ; $5674: $5F
    jr nc, jr_01D_5667                            ; $5675: $30 $F0

    ld h, b                                       ; $5677: $60
    and e                                         ; $5678: $A3
    ld b, b                                       ; $5679: $40
    push bc                                       ; $567A: $C5
    ld [bc], a                                    ; $567B: $02
    rlca                                          ; $567C: $07
    nop                                           ; $567D: $00
    nop                                           ; $567E: $00
    nop                                           ; $567F: $00
    rst RST_38                                    ; $5680: $FF
    db $10                                        ; $5681: $10
    ld a, d                                       ; $5682: $7A
    or l                                          ; $5683: $B5
    rst RST_38                                    ; $5684: $FF
    ld [bc], a                                    ; $5685: $02
    cpl                                           ; $5686: $2F
    ld e, $2F                                     ; $5687: $1E $2F
    ld e, $2F                                     ; $5689: $1E $2F
    rra                                           ; $568B: $1F
    rst RST_38                                    ; $568C: $FF
    rra                                           ; $568D: $1F
    ld a, a                                       ; $568E: $7F
    db $DD                                        ; $568F: $DD
    cp a                                          ; $5690: $BF
    db $ED                                        ; $5691: $ED
    rst RST_18                                    ; $5692: $DF
    or $FF                                        ; $5693: $F6 $FF
    halt                                          ; $5695: $76
    ld a, a                                       ; $5696: $7F
    dec c                                         ; $5697: $0D
    rst RST_38                                    ; $5698: $FF
    dec a                                         ; $5699: $3D
    ccf                                           ; $569A: $3F
    ret c                                         ; $569B: $D8

    ld hl, sp+$00                                 ; $569C: $F8 $00
    nop                                           ; $569E: $00
    nop                                           ; $569F: $00
    rst RST_38                                    ; $56A0: $FF
    sbc $FF                                       ; $56A1: $DE $FF
    dec a                                         ; $56A3: $3D
    cp $7B                                        ; $56A4: $FE $7B
    db $FC                                        ; $56A6: $FC
    ei                                            ; $56A7: $FB

jr_01D_56A8:
    db $FC                                        ; $56A8: $FC
    rst RST_30                                    ; $56A9: $F7
    db $FD                                        ; $56AA: $FD
    ld [hl], a                                    ; $56AB: $77
    db $FD                                        ; $56AC: $FD
    ld [hl], a                                    ; $56AD: $77
    rst RST_38                                    ; $56AE: $FF
    or a                                          ; $56AF: $B7
    rst RST_38                                    ; $56B0: $FF
    set 7, a                                      ; $56B1: $CB $FF
    ld sp, $F8FD                                  ; $56B3: $31 $FD $F8
    ld hl, sp-$20                                 ; $56B6: $F8 $E0
    ldh [$FF80], a                                ; $56B8: $E0 $80
    add b                                         ; $56BA: $80
    nop                                           ; $56BB: $00
    ld bc, $0100                                  ; $56BC: $01 $00 $01
    nop                                           ; $56BF: $00
    adc b                                         ; $56C0: $88
    ldh a, [$FF08]                                ; $56C1: $F0 $08
    ldh a, [rNR14]                                ; $56C3: $F0 $14
    ld hl, sp-$44                                 ; $56C5: $F8 $BC
    ld hl, sp-$04                                 ; $56C7: $F8 $FC
    ld hl, sp-$04                                 ; $56C9: $F8 $FC
    ld hl, sp-$08                                 ; $56CB: $F8 $F8
    ldh a, [$FFF8]                                ; $56CD: $F0 $F8
    ldh [$FFFC], a                                ; $56CF: $E0 $FC
    ret c                                         ; $56D1: $D8

    db $FC                                        ; $56D2: $FC
    ld hl, sp-$02                                 ; $56D3: $F8 $FE
    inc e                                         ; $56D5: $1C
    ld e, $0C                                     ; $56D6: $1E $0C
    ld e, $0C                                     ; $56D8: $1E $0C
    cp $04                                        ; $56DA: $FE $04
    ld h, $D8                                     ; $56DC: $26 $D8
    db $FC                                        ; $56DE: $FC
    nop                                           ; $56DF: $00
    nop                                           ; $56E0: $00
    nop                                           ; $56E1: $00
    ret nz                                        ; $56E2: $C0

    nop                                           ; $56E3: $00
    ld h, b                                       ; $56E4: $60
    ret nz                                        ; $56E5: $C0

    jr nz, jr_01D_56A8                            ; $56E6: $20 $C0

    ld [hl], b                                    ; $56E8: $70
    ldh [rSVBK], a                                ; $56E9: $E0 $70
    ldh [rSVBK], a                                ; $56EB: $E0 $70
    ldh [$FFF8], a                                ; $56ED: $E0 $F8
    ldh [$FFFC], a                                ; $56EF: $E0 $FC
    add sp, -$02                                  ; $56F1: $E8 $FE
    call c, $DCFE                                 ; $56F3: $DC $FE $DC
    rst RST_38                                    ; $56F6: $FF
    or [hl]                                       ; $56F7: $B6
    rst RST_38                                    ; $56F8: $FF
    xor $FF                                       ; $56F9: $EE $FF
    nop                                           ; $56FB: $00
    ld c, c                                       ; $56FC: $49
    ld [hl], $7F                                  ; $56FD: $36 $7F
    nop                                           ; $56FF: $00
    and [hl]                                      ; $5700: $A6
    ld hl, sp-$4F                                 ; $5701: $F8 $B1
    cp $F7                                        ; $5703: $FE $F7
    rst RST_38                                    ; $5705: $FF
    db $FC                                        ; $5706: $FC
    rst RST_38                                    ; $5707: $FF
    ld hl, sp-$09                                 ; $5708: $F8 $F7
    pop af                                        ; $570A: $F1
    rst RST_28                                    ; $570B: $EF
    di                                            ; $570C: $F3
    rst RST_28                                    ; $570D: $EF
    di                                            ; $570E: $F3
    rst RST_18                                    ; $570F: $DF
    rst RST_30                                    ; $5710: $F7
    rst RST_18                                    ; $5711: $DF
    rst RST_30                                    ; $5712: $F7
    rst RST_18                                    ; $5713: $DF
    rst RST_30                                    ; $5714: $F7
    rst RST_28                                    ; $5715: $EF
    ei                                            ; $5716: $FB
    ld l, a                                       ; $5717: $6F
    rst RST_38                                    ; $5718: $FF
    add a                                         ; $5719: $87
    rst RST_38                                    ; $571A: $FF
    ld sp, hl                                     ; $571B: $F9
    ld sp, hl                                     ; $571C: $F9
    ldh [$FFE0], a                                ; $571D: $E0 $E0
    nop                                           ; $571F: $00
    rst RST_38                                    ; $5720: $FF
    rst RST_38                                    ; $5721: $FF
    rst RST_38                                    ; $5722: $FF
    rst RST_38                                    ; $5723: $FF
    rst RST_38                                    ; $5724: $FF
    rst RST_30                                    ; $5725: $F7
    rst RST_38                                    ; $5726: $FF
    ld [hl], l                                    ; $5727: $75
    rst RST_38                                    ; $5728: $FF
    or l                                          ; $5729: $B5
    rst RST_38                                    ; $572A: $FF
    dec bc                                        ; $572B: $0B
    ld e, a                                       ; $572C: $5F
    and e                                         ; $572D: $A3
    rst RST_38                                    ; $572E: $FF
    dec de                                        ; $572F: $1B
    ld e, a                                       ; $5730: $5F
    dec sp                                        ; $5731: $3B
    cpl                                           ; $5732: $2F
    dec e                                         ; $5733: $1D
    ld a, a                                       ; $5734: $7F
    dec c                                         ; $5735: $0D
    rst RST_38                                    ; $5736: $FF
    ld [hl], d                                    ; $5737: $72
    cp a                                          ; $5738: $BF
    and $FF                                       ; $5739: $E6 $FF
    ld e, $9F                                     ; $573B: $1E $9F
    ld l, l                                       ; $573D: $6D
    rst RST_38                                    ; $573E: $FF
    nop                                           ; $573F: $00
    ld e, a                                       ; $5740: $5F
    rst RST_30                                    ; $5741: $F7
    cp a                                          ; $5742: $BF
    rst RST_30                                    ; $5743: $F7
    ld a, a                                       ; $5744: $7F
    ldh a, [$FFF1]                                ; $5745: $F0 $F1
    ldh [$FFE3], a                                ; $5747: $E0 $E3
    add c                                         ; $5749: $81
    sbc a                                         ; $574A: $9F
    inc bc                                        ; $574B: $03
    dec hl                                        ; $574C: $2B
    inc d                                         ; $574D: $14
    inc l                                         ; $574E: $2C
    db $10                                        ; $574F: $10
    stop                                          ; $5750: $10 $00
    nop                                           ; $5752: $00
    nop                                           ; $5753: $00
    nop                                           ; $5754: $00
    nop                                           ; $5755: $00
    rlca                                          ; $5756: $07
    nop                                           ; $5757: $00
    ld a, h                                       ; $5758: $7C
    rlca                                          ; $5759: $07
    rst RST_10                                    ; $575A: $D7
    ld a, [hl]                                    ; $575B: $7E
    ld a, [hl]                                    ; $575C: $7E
    db $FD                                        ; $575D: $FD
    rst RST_38                                    ; $575E: $FF
    nop                                           ; $575F: $00
    ld bc, $0300                                  ; $5760: $01 $00 $03
    nop                                           ; $5763: $00
    dec b                                         ; $5764: $05
    ld [bc], a                                    ; $5765: $02
    rrca                                          ; $5766: $0F
    ld bc, $0B37                                  ; $5767: $01 $37 $0B
    ld e, a                                       ; $576A: $5F
    ld h, $36                                     ; $576B: $26 $36
    inc e                                         ; $576D: $1C
    inc a                                         ; $576E: $3C
    jr jr_01D_5789                                ; $576F: $18 $18

    nop                                           ; $5771: $00
    nop                                           ; $5772: $00
    nop                                           ; $5773: $00
    nop                                           ; $5774: $00
    nop                                           ; $5775: $00
    nop                                           ; $5776: $00
    nop                                           ; $5777: $00
    nop                                           ; $5778: $00
    nop                                           ; $5779: $00
    rlca                                          ; $577A: $07
    nop                                           ; $577B: $00
    dec c                                         ; $577C: $0D
    rlca                                          ; $577D: $07
    rrca                                          ; $577E: $0F
    nop                                           ; $577F: $00
    nop                                           ; $5780: $00
    nop                                           ; $5781: $00
    nop                                           ; $5782: $00
    nop                                           ; $5783: $00
    nop                                           ; $5784: $00
    nop                                           ; $5785: $00
    jr c, jr_01D_5788                             ; $5786: $38 $00

jr_01D_5788:
    ld a, h                                       ; $5788: $7C

jr_01D_5789:
    jr c, jr_01D_57CE                             ; $5789: $38 $43

    inc a                                         ; $578B: $3C
    push de                                       ; $578C: $D5
    ld l, a                                       ; $578D: $6F
    db $FC                                        ; $578E: $FC
    ccf                                           ; $578F: $3F
    cp l                                          ; $5790: $BD
    ld c, a                                       ; $5791: $4F
    xor a                                         ; $5792: $AF
    ld d, e                                       ; $5793: $53
    ld l, e                                       ; $5794: $6B
    dec d                                         ; $5795: $15
    dec de                                        ; $5796: $1B
    inc b                                         ; $5797: $04
    ld b, $01                                     ; $5798: $06 $01
    ld bc, $0000                                  ; $579A: $01 $00 $00
    nop                                           ; $579D: $00
    nop                                           ; $579E: $00
    nop                                           ; $579F: $00
    nop                                           ; $57A0: $00
    nop                                           ; $57A1: $00
    nop                                           ; $57A2: $00
    nop                                           ; $57A3: $00
    nop                                           ; $57A4: $00
    nop                                           ; $57A5: $00
    nop                                           ; $57A6: $00
    nop                                           ; $57A7: $00
    nop                                           ; $57A8: $00
    nop                                           ; $57A9: $00
    nop                                           ; $57AA: $00
    nop                                           ; $57AB: $00
    ldh [rP1], a                                  ; $57AC: $E0 $00
    ld hl, sp-$20                                 ; $57AE: $F8 $E0
    cp $18                                        ; $57B0: $FE $18
    rst RST_18                                    ; $57B2: $DF
    ld h, $7F                                     ; $57B3: $26 $7F
    adc [hl]                                      ; $57B5: $8E
    cp d                                          ; $57B6: $BA
    rst RST_38                                    ; $57B7: $FF
    rst RST_00                                    ; $57B8: $C7
    ld a, a                                       ; $57B9: $7F
    rst RST_38                                    ; $57BA: $FF
    dec bc                                        ; $57BB: $0B

jr_01D_57BC:
    ld a, a                                       ; $57BC: $7F
    ld [bc], a                                    ; $57BD: $02
    ld l, a                                       ; $57BE: $6F
    dec a                                         ; $57BF: $3D
    nop                                           ; $57C0: $00
    nop                                           ; $57C1: $00
    nop                                           ; $57C2: $00
    nop                                           ; $57C3: $00
    nop                                           ; $57C4: $00
    nop                                           ; $57C5: $00
    nop                                           ; $57C6: $00
    nop                                           ; $57C7: $00

jr_01D_57C8:
    nop                                           ; $57C8: $00
    nop                                           ; $57C9: $00
    nop                                           ; $57CA: $00
    nop                                           ; $57CB: $00
    nop                                           ; $57CC: $00
    nop                                           ; $57CD: $00

jr_01D_57CE:
    nop                                           ; $57CE: $00
    nop                                           ; $57CF: $00
    nop                                           ; $57D0: $00
    nop                                           ; $57D1: $00
    add b                                         ; $57D2: $80
    nop                                           ; $57D3: $00
    ld [hl], b                                    ; $57D4: $70
    add b                                         ; $57D5: $80
    ld c, $F0                                     ; $57D6: $0E $F0
    pop de                                        ; $57D8: $D1
    cp $D2                                        ; $57D9: $FE $D2
    rst RST_38                                    ; $57DB: $FF
    or $FF                                        ; $57DC: $F6 $FF
    cp $FF                                        ; $57DE: $FE $FF
    nop                                           ; $57E0: $00
    nop                                           ; $57E1: $00
    nop                                           ; $57E2: $00
    nop                                           ; $57E3: $00
    nop                                           ; $57E4: $00
    nop                                           ; $57E5: $00
    nop                                           ; $57E6: $00
    nop                                           ; $57E7: $00
    nop                                           ; $57E8: $00
    nop                                           ; $57E9: $00
    nop                                           ; $57EA: $00
    nop                                           ; $57EB: $00
    nop                                           ; $57EC: $00
    nop                                           ; $57ED: $00
    nop                                           ; $57EE: $00
    nop                                           ; $57EF: $00
    nop                                           ; $57F0: $00
    nop                                           ; $57F1: $00
    nop                                           ; $57F2: $00
    nop                                           ; $57F3: $00
    nop                                           ; $57F4: $00
    nop                                           ; $57F5: $00
    nop                                           ; $57F6: $00
    nop                                           ; $57F7: $00
    ret nz                                        ; $57F8: $C0

    nop                                           ; $57F9: $00
    jr nc, jr_01D_57BC                            ; $57FA: $30 $C0

    ld c, h                                       ; $57FC: $4C
    ldh a, [$FFC2]                                ; $57FD: $F0 $C2
    db $FC                                        ; $57FF: $FC
    nop                                           ; $5800: $00
    nop                                           ; $5801: $00
    ret nz                                        ; $5802: $C0

    nop                                           ; $5803: $00
    ld h, b                                       ; $5804: $60
    ret nz                                        ; $5805: $C0

    jr nz, jr_01D_57C8                            ; $5806: $20 $C0

    ld [hl], b                                    ; $5808: $70
    ldh [rSVBK], a                                ; $5809: $E0 $70
    ldh [$FFF0], a                                ; $580B: $E0 $F0
    ldh [$FFF8], a                                ; $580D: $E0 $F8
    ldh [$FFFC], a                                ; $580F: $E0 $FC
    add sp, -$02                                  ; $5811: $E8 $FE
    call c, $DCFE                                 ; $5813: $DC $FE $DC
    rst RST_38                                    ; $5816: $FF
    or [hl]                                       ; $5817: $B6
    rst RST_38                                    ; $5818: $FF
    xor $FF                                       ; $5819: $EE $FF
    nop                                           ; $581B: $00
    ld c, c                                       ; $581C: $49
    ld [hl], $7F                                  ; $581D: $36 $7F
    nop                                           ; $581F: $00
    and [hl]                                      ; $5820: $A6
    ld hl, sp-$07                                 ; $5821: $F8 $F9
    cp $FF                                        ; $5823: $FE $FF
    rst RST_38                                    ; $5825: $FF
    cp $FB                                        ; $5826: $FE $FB
    ld hl, sp-$09                                 ; $5828: $F8 $F7
    pop af                                        ; $582A: $F1
    rst RST_28                                    ; $582B: $EF
    di                                            ; $582C: $F3
    rst RST_28                                    ; $582D: $EF
    rst RST_30                                    ; $582E: $F7
    rst RST_18                                    ; $582F: $DF
    rst RST_30                                    ; $5830: $F7
    rst RST_18                                    ; $5831: $DF
    rst RST_38                                    ; $5832: $FF
    rst RST_18                                    ; $5833: $DF
    ei                                            ; $5834: $FB
    rst RST_28                                    ; $5835: $EF
    rst RST_38                                    ; $5836: $FF
    ld l, a                                       ; $5837: $6F
    rst RST_38                                    ; $5838: $FF
    add a                                         ; $5839: $87
    rst RST_38                                    ; $583A: $FF
    pop af                                        ; $583B: $F1
    pop af                                        ; $583C: $F1
    ret nz                                        ; $583D: $C0

    ret nz                                        ; $583E: $C0

    nop                                           ; $583F: $00
    rst RST_38                                    ; $5840: $FF
    rst RST_38                                    ; $5841: $FF
    rst RST_38                                    ; $5842: $FF
    rst RST_30                                    ; $5843: $F7
    rst RST_38                                    ; $5844: $FF
    ld [hl], l                                    ; $5845: $75
    rst RST_38                                    ; $5846: $FF
    or l                                          ; $5847: $B5
    rst RST_38                                    ; $5848: $FF
    dec b                                         ; $5849: $05
    ld e, a                                       ; $584A: $5F
    xor e                                         ; $584B: $AB
    rst RST_38                                    ; $584C: $FF
    inc bc                                        ; $584D: $03
    ld e, a                                       ; $584E: $5F
    dec sp                                        ; $584F: $3B
    rst RST_18                                    ; $5850: $DF
    dec sp                                        ; $5851: $3B
    ld l, a                                       ; $5852: $6F
    db $DD                                        ; $5853: $DD
    cp a                                          ; $5854: $BF
    db $ED                                        ; $5855: $ED
    rst RST_38                                    ; $5856: $FF
    ldh a, [c]                                    ; $5857: $F2
    rst RST_38                                    ; $5858: $FF
    ld h, [hl]                                    ; $5859: $66
    rst RST_38                                    ; $585A: $FF
    ld e, $9F                                     ; $585B: $1E $9F
    ld l, l                                       ; $585D: $6D
    rst RST_38                                    ; $585E: $FF
    nop                                           ; $585F: $00
    xor a                                         ; $5860: $AF
    db $FD                                        ; $5861: $FD
    ld e, a                                       ; $5862: $5F
    db $FD                                        ; $5863: $FD
    rst RST_38                                    ; $5864: $FF
    ld hl, sp-$07                                 ; $5865: $F8 $F9
    ldh a, [rIE]                                  ; $5867: $F0 $FF
    ld bc, $142B                                  ; $5869: $01 $2B $14
    inc d                                         ; $586C: $14
    nop                                           ; $586D: $00
    rra                                           ; $586E: $1F
    nop                                           ; $586F: $00
    ld l, d                                       ; $5870: $6A
    rra                                           ; $5871: $1F
    cp a                                          ; $5872: $BF
    ld a, a                                       ; $5873: $7F
    ld a, a                                       ; $5874: $7F
    jp Jump_000_00C3                              ; $5875: $C3 $C3 $00


    nop                                           ; $5878: $00
    nop                                           ; $5879: $00

jr_01D_587A:
    ld bc, $0200                                  ; $587A: $01 $00 $02
    ld bc, $0003                                  ; $587D: $01 $03 $00
    ld d, l                                       ; $5880: $55
    xor d                                         ; $5881: $AA
    rst RST_38                                    ; $5882: $FF
    ld bc, $FFAD                                  ; $5883: $01 $AD $FF
    rst RST_38                                    ; $5886: $FF
    ld [hl], c                                    ; $5887: $71
    ld [hl], c                                    ; $5888: $71
    nop                                           ; $5889: $00
    nop                                           ; $588A: $00
    nop                                           ; $588B: $00
    nop                                           ; $588C: $00
    nop                                           ; $588D: $00
    nop                                           ; $588E: $00
    nop                                           ; $588F: $00
    nop                                           ; $5890: $00
    nop                                           ; $5891: $00
    nop                                           ; $5892: $00
    nop                                           ; $5893: $00
    ld bc, $0300                                  ; $5894: $01 $00 $03
    ld bc, $0003                                  ; $5897: $01 $03 $00
    nop                                           ; $589A: $00
    nop                                           ; $589B: $00
    nop                                           ; $589C: $00
    nop                                           ; $589D: $00
    nop                                           ; $589E: $00
    nop                                           ; $589F: $00
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
    nop                                           ; $58B4: $00
    nop                                           ; $58B5: $00
    ret nz                                        ; $58B6: $C0

    nop                                           ; $58B7: $00
    jr nc, jr_01D_587A                            ; $58B8: $30 $C0

    inc l                                         ; $58BA: $2C
    ldh a, [$FF62]                                ; $58BB: $F0 $62
    db $FC                                        ; $58BD: $FC
    push af                                       ; $58BE: $F5
    cp $00                                        ; $58BF: $FE $00
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
    ldh [rP1], a                                  ; $58D2: $E0 $00
    ld e, $E0                                     ; $58D4: $1E $E0
    ld h, c                                       ; $58D6: $61
    cp $E8                                        ; $58D7: $FE $E8
    rst RST_38                                    ; $58D9: $FF
    ei                                            ; $58DA: $FB
    ccf                                           ; $58DB: $3F
    rst RST_38                                    ; $58DC: $FF
    ld a, a                                       ; $58DD: $7F
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
    inc a                                         ; $58F0: $3C
    nop                                           ; $58F1: $00
    rst RST_38                                    ; $58F2: $FF
    inc a                                         ; $58F3: $3C
    cp $C7                                        ; $58F4: $FE $C7
    db $DB                                        ; $58F6: $DB
    cpl                                           ; $58F7: $2F
    rst RST_30                                    ; $58F8: $F7
    sbc a                                         ; $58F9: $9F
    ld c, a                                       ; $58FA: $4F
    pop af                                        ; $58FB: $F1
    rst RST_38                                    ; $58FC: $FF
    add [hl]                                      ; $58FD: $86
    db $DB                                        ; $58FE: $DB
    cpl                                           ; $58FF: $2F
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
    ld bc, $1E00                                  ; $590C: $01 $00 $1E
    ld bc, $1F21                                  ; $590F: $01 $21 $1F
    ld e, d                                       ; $5912: $5A
    scf                                           ; $5913: $37
    ld b, l                                       ; $5914: $45
    ccf                                           ; $5915: $3F
    ld a, a                                       ; $5916: $7F
    ccf                                           ; $5917: $3F
    ccf                                           ; $5918: $3F
    ld a, [bc]                                    ; $5919: $0A
    ld a, [hl+]                                   ; $591A: $2A
    dec d                                         ; $591B: $15
    rra                                           ; $591C: $1F
    nop                                           ; $591D: $00
    dec [hl]                                      ; $591E: $35
    rra                                           ; $591F: $1F
    inc bc                                        ; $5920: $03
    nop                                           ; $5921: $00
    dec a                                         ; $5922: $3D
    inc bc                                        ; $5923: $03
    ld b, e                                       ; $5924: $43
    ld a, $B5                                     ; $5925: $3E $B5
    ld l, a                                       ; $5927: $6F
    adc d                                         ; $5928: $8A
    ld a, a                                       ; $5929: $7F
    rst RST_38                                    ; $592A: $FF
    ld a, a                                       ; $592B: $7F
    ld a, a                                       ; $592C: $7F
    inc d                                         ; $592D: $14
    ccf                                           ; $592E: $3F
    ld [bc], a                                    ; $592F: $02
    ld l, e                                       ; $5930: $6B
    ccf                                           ; $5931: $3F
    ccf                                           ; $5932: $3F
    inc e                                         ; $5933: $1C
    inc e                                         ; $5934: $1C
    nop                                           ; $5935: $00
    nop                                           ; $5936: $00
    nop                                           ; $5937: $00
    nop                                           ; $5938: $00
    nop                                           ; $5939: $00
    nop                                           ; $593A: $00
    nop                                           ; $593B: $00
    nop                                           ; $593C: $00
    nop                                           ; $593D: $00
    ld a, a                                       ; $593E: $7F
    nop                                           ; $593F: $00
    ld hl, sp+$00                                 ; $5940: $F8 $00
    rst RST_38                                    ; $5942: $FF
    cp b                                          ; $5943: $B8
    cp l                                          ; $5944: $BD
    ld e, a                                       ; $5945: $5F
    scf                                           ; $5946: $37
    rst RST_18                                    ; $5947: $DF
    rst RST_28                                    ; $5948: $EF
    ccf                                           ; $5949: $3F
    sbc a                                         ; $594A: $9F
    ldh [$FFF7], a                                ; $594B: $E0 $F7
    ld e, $EB                                     ; $594D: $1E $EB
    cp a                                          ; $594F: $BF
    rst RST_10                                    ; $5950: $D7
    rst RST_38                                    ; $5951: $FF
    ld a, a                                       ; $5952: $7F
    rst RST_38                                    ; $5953: $FF
    rst RST_38                                    ; $5954: $FF
    ld a, $3E                                     ; $5955: $3E $3E
    nop                                           ; $5957: $00
    inc bc                                        ; $5958: $03
    nop                                           ; $5959: $00
    dec b                                         ; $595A: $05
    ld [bc], a                                    ; $595B: $02
    dec b                                         ; $595C: $05
    ld [bc], a                                    ; $595D: $02
    ld [bc], a                                    ; $595E: $02
    nop                                           ; $595F: $00
    ld hl, sp+$00                                 ; $5960: $F8 $00
    rlca                                          ; $5962: $07
    ld hl, sp-$58                                 ; $5963: $F8 $A8
    rst RST_38                                    ; $5965: $FF
    jp hl                                         ; $5966: $E9


    rst RST_38                                    ; $5967: $FF

jr_01D_5968:
    ei                                            ; $5968: $FB
    ld a, a                                       ; $5969: $7F
    rst RST_38                                    ; $596A: $FF
    rst RST_38                                    ; $596B: $FF
    rst RST_38                                    ; $596C: $FF
    ld a, a                                       ; $596D: $7F
    rst RST_38                                    ; $596E: $FF
    ld a, a                                       ; $596F: $7F
    rst RST_38                                    ; $5970: $FF
    ld e, $3F                                     ; $5971: $1E $3F
    ld c, $7F                                     ; $5973: $0E $7F
    ld [hl], $FF                                  ; $5975: $36 $FF
    ld h, c                                       ; $5977: $61
    ld l, e                                       ; $5978: $6B
    sub h                                         ; $5979: $94
    sbc a                                         ; $597A: $9F
    inc bc                                        ; $597B: $03
    dec bc                                        ; $597C: $0B
    rlca                                          ; $597D: $07
    dec e                                         ; $597E: $1D
    dec bc                                        ; $597F: $0B
    nop                                           ; $5980: $00
    nop                                           ; $5981: $00
    nop                                           ; $5982: $00
    nop                                           ; $5983: $00
    ldh [rP1], a                                  ; $5984: $E0 $00
    jr jr_01D_5968                                ; $5986: $18 $E0

    ld h, $F8                                     ; $5988: $26 $F8
    ld h, c                                       ; $598A: $61
    cp $F2                                        ; $598B: $FE $F2
    rst RST_38                                    ; $598D: $FF
    or $FF                                        ; $598E: $F6 $FF
    cp $FF                                        ; $5990: $FE $FF
    rst RST_38                                    ; $5992: $FF
    cp a                                          ; $5993: $BF
    rst RST_38                                    ; $5994: $FF
    cp [hl]                                       ; $5995: $BE
    cp $7D                                        ; $5996: $FE $7D
    cp $7D                                        ; $5998: $FE $7D
    cp $7B                                        ; $599A: $FE $7B
    cp $7B                                        ; $599C: $FE $7B
    rst RST_38                                    ; $599E: $FF
    cp e                                          ; $599F: $BB
    sub [hl]                                      ; $59A0: $96
    ld hl, sp-$4F                                 ; $59A1: $F8 $B1
    cp $F7                                        ; $59A3: $FE $F7
    rst RST_38                                    ; $59A5: $FF
    db $FC                                        ; $59A6: $FC
    rst RST_38                                    ; $59A7: $FF
    ld hl, sp-$09                                 ; $59A8: $F8 $F7
    pop af                                        ; $59AA: $F1
    rst RST_28                                    ; $59AB: $EF
    di                                            ; $59AC: $F3
    rst RST_28                                    ; $59AD: $EF
    di                                            ; $59AE: $F3
    rst RST_18                                    ; $59AF: $DF
    rst RST_30                                    ; $59B0: $F7
    rst RST_18                                    ; $59B1: $DF
    rst RST_38                                    ; $59B2: $FF
    rst RST_18                                    ; $59B3: $DF
    rst RST_38                                    ; $59B4: $FF
    rst RST_28                                    ; $59B5: $EF
    rst RST_38                                    ; $59B6: $FF
    ld l, a                                       ; $59B7: $6F
    rst RST_38                                    ; $59B8: $FF
    rlca                                          ; $59B9: $07
    rst RST_20                                    ; $59BA: $E7
    ld bc, $0081                                  ; $59BB: $01 $81 $00
    nop                                           ; $59BE: $00
    nop                                           ; $59BF: $00
    db $FC                                        ; $59C0: $FC
    nop                                           ; $59C1: $00
    rst RST_30                                    ; $59C2: $F7
    inc e                                         ; $59C3: $1C
    dec e                                         ; $59C4: $1D
    rlca                                          ; $59C5: $07
    ld b, $03                                     ; $59C6: $06 $03
    inc bc                                        ; $59C8: $03
    nop                                           ; $59C9: $00
    nop                                           ; $59CA: $00
    nop                                           ; $59CB: $00
    nop                                           ; $59CC: $00
    nop                                           ; $59CD: $00
    nop                                           ; $59CE: $00
    nop                                           ; $59CF: $00
    nop                                           ; $59D0: $00
    nop                                           ; $59D1: $00
    nop                                           ; $59D2: $00
    nop                                           ; $59D3: $00
    nop                                           ; $59D4: $00
    nop                                           ; $59D5: $00
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
    add e                                         ; $59E0: $83
    nop                                           ; $59E1: $00
    ld a, l                                       ; $59E2: $7D
    add e                                         ; $59E3: $83
    ld d, l                                       ; $59E4: $55
    rst RST_38                                    ; $59E5: $FF
    and a                                         ; $59E6: $A7
    cp $FE                                        ; $59E7: $FE $FE
    dec a                                         ; $59E9: $3D
    ccf                                           ; $59EA: $3F
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
    ld a, a                                       ; $5A00: $7F
    db $ED                                        ; $5A01: $ED
    rst RST_38                                    ; $5A02: $FF
    ldh a, [c]                                    ; $5A03: $F2
    rst RST_38                                    ; $5A04: $FF
    rst RST_20                                    ; $5A05: $E7
    rst RST_38                                    ; $5A06: $FF
    ld e, $9F                                     ; $5A07: $1E $9F
    ld l, h                                       ; $5A09: $6C
    cp $00                                        ; $5A0A: $FE $00
    nop                                           ; $5A0C: $00
    nop                                           ; $5A0D: $00
    nop                                           ; $5A0E: $00
    nop                                           ; $5A0F: $00
    nop                                           ; $5A10: $00
    nop                                           ; $5A11: $00
    nop                                           ; $5A12: $00
    nop                                           ; $5A13: $00
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
    nop                                           ; $5A20: $00
    nop                                           ; $5A21: $00
    ret nz                                        ; $5A22: $C0

    nop                                           ; $5A23: $00
    ld h, b                                       ; $5A24: $60
    ret nz                                        ; $5A25: $C0

    jr nz, @-$3E                                  ; $5A26: $20 $C0

    ld [hl], b                                    ; $5A28: $70
    ldh [rSVBK], a                                ; $5A29: $E0 $70
    ldh [rSVBK], a                                ; $5A2B: $E0 $70
    ldh [$FFF8], a                                ; $5A2D: $E0 $F8
    ldh [$FFFC], a                                ; $5A2F: $E0 $FC
    add sp, -$02                                  ; $5A31: $E8 $FE
    call c, $DCFE                                 ; $5A33: $DC $FE $DC
    rst RST_38                                    ; $5A36: $FF
    or [hl]                                       ; $5A37: $B6
    rst RST_38                                    ; $5A38: $FF
    xor $FF                                       ; $5A39: $EE $FF
    nop                                           ; $5A3B: $00
    ld c, c                                       ; $5A3C: $49
    ld [hl], $7F                                  ; $5A3D: $36 $7F
    nop                                           ; $5A3F: $00
    ld bc, $0100                                  ; $5A40: $01 $00 $01
    nop                                           ; $5A43: $00
    ld bc, $0000                                  ; $5A44: $01 $00 $00
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
    nop                                           ; $5A52: $00
    nop                                           ; $5A53: $00
    ld bc, $3F00                                  ; $5A54: $01 $00 $3F
    nop                                           ; $5A57: $00
    rst RST_38                                    ; $5A58: $FF
    nop                                           ; $5A59: $00
    nop                                           ; $5A5A: $00
    nop                                           ; $5A5B: $00
    nop                                           ; $5A5C: $00
    nop                                           ; $5A5D: $00
    nop                                           ; $5A5E: $00
    nop                                           ; $5A5F: $00
    ld bc, $0700                                  ; $5A60: $01 $00 $07
    ld bc, $067B                                  ; $5A63: $01 $7B $06
    add [hl]                                      ; $5A66: $86
    ld a, l                                       ; $5A67: $7D
    ld l, e                                       ; $5A68: $6B
    sbc $15                                       ; $5A69: $DE $15
    rst RST_38                                    ; $5A6B: $FF
    rst RST_38                                    ; $5A6C: $FF
    cp $FF                                        ; $5A6D: $FE $FF
    add hl, hl                                    ; $5A6F: $29
    ld a, a                                       ; $5A70: $7F
    dec b                                         ; $5A71: $05
    sub $7F                                       ; $5A72: $D6 $7F
    ld a, a                                       ; $5A74: $7F
    jr c, jr_01D_5AAF                             ; $5A75: $38 $38

    nop                                           ; $5A77: $00
    nop                                           ; $5A78: $00
    nop                                           ; $5A79: $00
    rrca                                          ; $5A7A: $0F
    nop                                           ; $5A7B: $00
    ld hl, sp+$0F                                 ; $5A7C: $F8 $0F
    or a                                          ; $5A7E: $B7
    rst RST_38                                    ; $5A7F: $FF
    ldh a, [rP1]                                  ; $5A80: $F0 $00
    rst RST_38                                    ; $5A82: $FF
    ld [hl], b                                    ; $5A83: $70
    ld a, d                                       ; $5A84: $7A
    cp a                                          ; $5A85: $BF
    ld l, a                                       ; $5A86: $6F
    cp a                                          ; $5A87: $BF
    rst RST_18                                    ; $5A88: $DF
    ld a, a                                       ; $5A89: $7F
    ccf                                           ; $5A8A: $3F
    ret nz                                        ; $5A8B: $C0

    rst RST_28                                    ; $5A8C: $EF
    dec a                                         ; $5A8D: $3D
    rst RST_10                                    ; $5A8E: $D7
    ld a, [hl]                                    ; $5A8F: $7E
    xor a                                         ; $5A90: $AF
    cp $FF                                        ; $5A91: $FE $FF
    cp $FF                                        ; $5A93: $FE $FF
    ld a, h                                       ; $5A95: $7C
    ld a, [hl]                                    ; $5A96: $7E
    ld bc, $040B                                  ; $5A97: $01 $0B $04
    db $FC                                        ; $5A9A: $FC
    nop                                           ; $5A9B: $00
    xor a                                         ; $5A9C: $AF
    ld hl, sp+$00                                 ; $5A9D: $F8 $00
    rst RST_38                                    ; $5A9F: $FF
    db $FC                                        ; $5AA0: $FC
    nop                                           ; $5AA1: $00
    inc bc                                        ; $5AA2: $03
    db $FC                                        ; $5AA3: $FC
    inc h                                         ; $5AA4: $24
    rst RST_38                                    ; $5AA5: $FF
    or [hl]                                       ; $5AA6: $B6
    rst RST_38                                    ; $5AA7: $FF
    or $FF                                        ; $5AA8: $F6 $FF
    cp $FF                                        ; $5AAA: $FE $FF
    rst RST_38                                    ; $5AAC: $FF
    db $FD                                        ; $5AAD: $FD
    rst RST_38                                    ; $5AAE: $FF

jr_01D_5AAF:
    db $FD                                        ; $5AAF: $FD
    rst RST_38                                    ; $5AB0: $FF
    dec a                                         ; $5AB1: $3D
    rst RST_38                                    ; $5AB2: $FF
    jp nz, $29D7                                  ; $5AB3: $C2 $D7 $29

    ccf                                           ; $5AB6: $3F
    dec b                                         ; $5AB7: $05
    rla                                           ; $5AB8: $17
    dec c                                         ; $5AB9: $0D
    rst RST_30                                    ; $5ABA: $F7
    ld c, $B7                                     ; $5ABB: $0E $B7
    xor $4B                                       ; $5ABD: $EE $4B
    rst RST_30                                    ; $5ABF: $F7
    add b                                         ; $5AC0: $80
    nop                                           ; $5AC1: $00
    ld h, b                                       ; $5AC2: $60
    add b                                         ; $5AC3: $80
    sbc b                                         ; $5AC4: $98
    ldh [$FFC6], a                                ; $5AC5: $E0 $C6
    ld hl, sp-$37                                 ; $5AC7: $F8 $C9
    cp $EC                                        ; $5AC9: $FE $EC
    rst RST_38                                    ; $5ACB: $FF
    db $EC                                        ; $5ACC: $EC
    ld a, a                                       ; $5ACD: $7F
    rst RST_38                                    ; $5ACE: $FF
    ld a, a                                       ; $5ACF: $7F
    cp $FF                                        ; $5AD0: $FE $FF
    db $FC                                        ; $5AD2: $FC
    ei                                            ; $5AD3: $FB
    db $FC                                        ; $5AD4: $FC
    ei                                            ; $5AD5: $FB
    db $FC                                        ; $5AD6: $FC
    rst RST_30                                    ; $5AD7: $F7
    db $FC                                        ; $5AD8: $FC
    rst RST_30                                    ; $5AD9: $F7
    db $FD                                        ; $5ADA: $FD
    rst RST_30                                    ; $5ADB: $F7
    rst RST_38                                    ; $5ADC: $FF
    ld [hl], a                                    ; $5ADD: $77
    rst RST_38                                    ; $5ADE: $FF
    dec sp                                        ; $5ADF: $3B
    add b                                         ; $5AE0: $80
    nop                                           ; $5AE1: $00
    ret nz                                        ; $5AE2: $C0

    add b                                         ; $5AE3: $80
    ld h, b                                       ; $5AE4: $60
    ret nz                                        ; $5AE5: $C0

    db $10                                        ; $5AE6: $10
    ldh [rNR23], a                                ; $5AE7: $E0 $18
    ldh a, [$FF08]                                ; $5AE9: $F0 $08
    ldh a, [$FF5C]                                ; $5AEB: $F0 $5C
    ld hl, sp-$24                                 ; $5AED: $F8 $DC
    ld hl, sp-$22                                 ; $5AEF: $F8 $DE
    ld hl, sp-$01                                 ; $5AF1: $F8 $FF
    ld a, [$FBFF]                                 ; $5AF3: $FA $FF $FB
    rst RST_38                                    ; $5AF6: $FF
    push af                                       ; $5AF7: $F5
    rst RST_38                                    ; $5AF8: $FF
    push af                                       ; $5AF9: $F5
    rst RST_38                                    ; $5AFA: $FF
    db $EB                                        ; $5AFB: $EB
    rst RST_38                                    ; $5AFC: $FF
    ld a, b                                       ; $5AFD: $78
    ld a, d                                       ; $5AFE: $7A
    dec b                                         ; $5AFF: $05
    rst RST_38                                    ; $5B00: $FF
    nop                                           ; $5B01: $00
    nop                                           ; $5B02: $00
    nop                                           ; $5B03: $00
    nop                                           ; $5B04: $00
    nop                                           ; $5B05: $00
    nop                                           ; $5B06: $00
    nop                                           ; $5B07: $00
    nop                                           ; $5B08: $00
    nop                                           ; $5B09: $00
    nop                                           ; $5B0A: $00
    nop                                           ; $5B0B: $00
    nop                                           ; $5B0C: $00
    nop                                           ; $5B0D: $00
    nop                                           ; $5B0E: $00
    nop                                           ; $5B0F: $00
    nop                                           ; $5B10: $00
    nop                                           ; $5B11: $00
    nop                                           ; $5B12: $00
    nop                                           ; $5B13: $00
    nop                                           ; $5B14: $00
    nop                                           ; $5B15: $00
    nop                                           ; $5B16: $00
    nop                                           ; $5B17: $00
    nop                                           ; $5B18: $00
    nop                                           ; $5B19: $00
    nop                                           ; $5B1A: $00
    nop                                           ; $5B1B: $00
    nop                                           ; $5B1C: $00
    nop                                           ; $5B1D: $00
    nop                                           ; $5B1E: $00
    nop                                           ; $5B1F: $00
    ld [$7F7F], a                                 ; $5B20: $EA $7F $7F
    rlca                                          ; $5B23: $07
    rlca                                          ; $5B24: $07
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
    nop                                           ; $5B39: $00
    nop                                           ; $5B3A: $00
    nop                                           ; $5B3B: $00
    nop                                           ; $5B3C: $00
    nop                                           ; $5B3D: $00
    nop                                           ; $5B3E: $00
    nop                                           ; $5B3F: $00
    rst RST_18                                    ; $5B40: $DF
    ld hl, sp-$01                                 ; $5B41: $F8 $FF
    ld sp, hl                                     ; $5B43: $F9
    rst RST_38                                    ; $5B44: $FF
    rlca                                          ; $5B45: $07
    and a                                         ; $5B46: $A7
    ld e, e                                       ; $5B47: $5B
    rst RST_38                                    ; $5B48: $FF
    nop                                           ; $5B49: $00
    nop                                           ; $5B4A: $00
    nop                                           ; $5B4B: $00
    nop                                           ; $5B4C: $00
    nop                                           ; $5B4D: $00
    nop                                           ; $5B4E: $00
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
    rst RST_38                                    ; $5B60: $FF
    jp $81F3                                      ; $5B61: $C3 $F3 $81


    pop bc                                        ; $5B64: $C1
    nop                                           ; $5B65: $00
    nop                                           ; $5B66: $00
    nop                                           ; $5B67: $00
    nop                                           ; $5B68: $00
    nop                                           ; $5B69: $00
    nop                                           ; $5B6A: $00
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
    db $FC                                        ; $5B80: $FC
    ret c                                         ; $5B81: $D8

    db $FC                                        ; $5B82: $FC
    xor b                                         ; $5B83: $A8
    cp $AC                                        ; $5B84: $FE $AC
    cp $58                                        ; $5B86: $FE $58
    ld a, [$D2C4]                                 ; $5B88: $FA $C4 $D2
    inc l                                         ; $5B8B: $2C
    cp $00                                        ; $5B8C: $FE $00
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
    nop                                           ; $5BA0: $00
    nop                                           ; $5BA1: $00
    inc bc                                        ; $5BA2: $03
    nop                                           ; $5BA3: $00
    dec a                                         ; $5BA4: $3D
    inc bc                                        ; $5BA5: $03
    ld b, e                                       ; $5BA6: $43
    ld a, $B5                                     ; $5BA7: $3E $B5
    ld l, a                                       ; $5BA9: $6F
    adc d                                         ; $5BAA: $8A
    ld a, a                                       ; $5BAB: $7F
    rst RST_38                                    ; $5BAC: $FF
    ld a, a                                       ; $5BAD: $7F
    ld a, a                                       ; $5BAE: $7F
    inc d                                         ; $5BAF: $14
    ccf                                           ; $5BB0: $3F
    ld [bc], a                                    ; $5BB1: $02
    ld l, e                                       ; $5BB2: $6B
    ccf                                           ; $5BB3: $3F
    ccf                                           ; $5BB4: $3F
    inc e                                         ; $5BB5: $1C
    inc e                                         ; $5BB6: $1C
    nop                                           ; $5BB7: $00
    nop                                           ; $5BB8: $00
    nop                                           ; $5BB9: $00
    nop                                           ; $5BBA: $00
    nop                                           ; $5BBB: $00
    nop                                           ; $5BBC: $00
    nop                                           ; $5BBD: $00
    nop                                           ; $5BBE: $00
    nop                                           ; $5BBF: $00
    ld hl, sp+$00                                 ; $5BC0: $F8 $00
    rst RST_38                                    ; $5BC2: $FF
    cp b                                          ; $5BC3: $B8
    cp l                                          ; $5BC4: $BD
    ld e, a                                       ; $5BC5: $5F
    scf                                           ; $5BC6: $37
    rst RST_18                                    ; $5BC7: $DF
    rst RST_28                                    ; $5BC8: $EF
    ccf                                           ; $5BC9: $3F
    sbc a                                         ; $5BCA: $9F
    ldh [$FFF7], a                                ; $5BCB: $E0 $F7
    ld e, $EB                                     ; $5BCD: $1E $EB
    cp a                                          ; $5BCF: $BF
    rst RST_10                                    ; $5BD0: $D7
    rst RST_38                                    ; $5BD1: $FF
    ld a, a                                       ; $5BD2: $7F
    rst RST_38                                    ; $5BD3: $FF
    rst RST_38                                    ; $5BD4: $FF
    ld a, $3E                                     ; $5BD5: $3E $3E
    nop                                           ; $5BD7: $00
    inc bc                                        ; $5BD8: $03
    nop                                           ; $5BD9: $00
    dec c                                         ; $5BDA: $0D
    ld [bc], a                                    ; $5BDB: $02
    dec [hl]                                      ; $5BDC: $35
    ld a, [bc]                                    ; $5BDD: $0A
    rst RST_10                                    ; $5BDE: $D7
    dec a                                         ; $5BDF: $3D
    nop                                           ; $5BE0: $00
    nop                                           ; $5BE1: $00
    ld hl, sp+$00                                 ; $5BE2: $F8 $00
    rlca                                          ; $5BE4: $07
    ld hl, sp-$58                                 ; $5BE5: $F8 $A8
    rst RST_38                                    ; $5BE7: $FF
    jp hl                                         ; $5BE8: $E9


    rst RST_38                                    ; $5BE9: $FF

jr_01D_5BEA:
    ei                                            ; $5BEA: $FB
    ld a, a                                       ; $5BEB: $7F
    rst RST_38                                    ; $5BEC: $FF
    rst RST_38                                    ; $5BED: $FF
    rst RST_38                                    ; $5BEE: $FF
    ld a, a                                       ; $5BEF: $7F
    rst RST_38                                    ; $5BF0: $FF
    ld a, a                                       ; $5BF1: $7F
    rst RST_38                                    ; $5BF2: $FF
    ld e, $3F                                     ; $5BF3: $1E $3F
    ld c, $7F                                     ; $5BF5: $0E $7F
    ld [hl], $FF                                  ; $5BF7: $36 $FF
    ld h, c                                       ; $5BF9: $61
    ld l, e                                       ; $5BFA: $6B
    sub h                                         ; $5BFB: $94
    rst RST_38                                    ; $5BFC: $FF
    ld h, e                                       ; $5BFD: $63
    ei                                            ; $5BFE: $FB
    rst RST_30                                    ; $5BFF: $F7
    nop                                           ; $5C00: $00
    nop                                           ; $5C01: $00
    nop                                           ; $5C02: $00
    nop                                           ; $5C03: $00
    nop                                           ; $5C04: $00
    nop                                           ; $5C05: $00
    ldh [rP1], a                                  ; $5C06: $E0 $00
    jr jr_01D_5BEA                                ; $5C08: $18 $E0

    ld h, $F8                                     ; $5C0A: $26 $F8
    ld h, c                                       ; $5C0C: $61
    cp $F2                                        ; $5C0D: $FE $F2
    rst RST_38                                    ; $5C0F: $FF
    or $FF                                        ; $5C10: $F6 $FF
    cp $FF                                        ; $5C12: $FE $FF
    rst RST_38                                    ; $5C14: $FF
    cp a                                          ; $5C15: $BF
    rst RST_38                                    ; $5C16: $FF
    cp [hl]                                       ; $5C17: $BE
    cp $7D                                        ; $5C18: $FE $7D
    cp $7D                                        ; $5C1A: $FE $7D
    cp $7B                                        ; $5C1C: $FE $7B
    cp $7B                                        ; $5C1E: $FE $7B
    inc l                                         ; $5C20: $2C
    ldh a, [$FF62]                                ; $5C21: $F0 $62
    db $FC                                        ; $5C23: $FC
    rst RST_28                                    ; $5C24: $EF
    cp $F8                                        ; $5C25: $FE $F8
    rst RST_38                                    ; $5C27: $FF
    ldh a, [$FFEF]                                ; $5C28: $F0 $EF
    ldh [c], a                                    ; $5C2A: $E2
    rst RST_18                                    ; $5C2B: $DF
    and $DF                                       ; $5C2C: $E6 $DF
    and $BF                                       ; $5C2E: $E6 $BF
    rst RST_28                                    ; $5C30: $EF
    cp a                                          ; $5C31: $BF
    rst RST_38                                    ; $5C32: $FF
    cp a                                          ; $5C33: $BF
    rst RST_38                                    ; $5C34: $FF
    rst RST_18                                    ; $5C35: $DF
    rst RST_38                                    ; $5C36: $FF
    rst RST_18                                    ; $5C37: $DF
    rst RST_38                                    ; $5C38: $FF
    rrca                                          ; $5C39: $0F
    rst RST_08                                    ; $5C3A: $CF
    inc bc                                        ; $5C3B: $03
    inc bc                                        ; $5C3C: $03
    nop                                           ; $5C3D: $00
    nop                                           ; $5C3E: $00
    nop                                           ; $5C3F: $00
    rla                                           ; $5C40: $17
    rrca                                          ; $5C41: $0F
    ccf                                           ; $5C42: $3F
    inc e                                         ; $5C43: $1C
    ld a, h                                       ; $5C44: $7C
    nop                                           ; $5C45: $00
    ldh [rP1], a                                  ; $5C46: $E0 $00
    add b                                         ; $5C48: $80
    nop                                           ; $5C49: $00
    nop                                           ; $5C4A: $00
    nop                                           ; $5C4B: $00
    nop                                           ; $5C4C: $00
    nop                                           ; $5C4D: $00
    nop                                           ; $5C4E: $00
    nop                                           ; $5C4F: $00
    nop                                           ; $5C50: $00
    nop                                           ; $5C51: $00
    nop                                           ; $5C52: $00
    nop                                           ; $5C53: $00
    nop                                           ; $5C54: $00
    nop                                           ; $5C55: $00
    nop                                           ; $5C56: $00
    nop                                           ; $5C57: $00
    nop                                           ; $5C58: $00
    nop                                           ; $5C59: $00
    nop                                           ; $5C5A: $00
    nop                                           ; $5C5B: $00
    nop                                           ; $5C5C: $00
    nop                                           ; $5C5D: $00
    nop                                           ; $5C5E: $00
    nop                                           ; $5C5F: $00
    rst RST_38                                    ; $5C60: $FF
    rst RST_38                                    ; $5C61: $FF
    rst RST_38                                    ; $5C62: $FF
    inc bc                                        ; $5C63: $03
    inc bc                                        ; $5C64: $03
    nop                                           ; $5C65: $00
    nop                                           ; $5C66: $00
    nop                                           ; $5C67: $00
    inc bc                                        ; $5C68: $03
    nop                                           ; $5C69: $00
    dec b                                         ; $5C6A: $05
    ld [bc], a                                    ; $5C6B: $02
    rlca                                          ; $5C6C: $07
    nop                                           ; $5C6D: $00
    nop                                           ; $5C6E: $00
    nop                                           ; $5C6F: $00
    nop                                           ; $5C70: $00
    nop                                           ; $5C71: $00
    nop                                           ; $5C72: $00
    nop                                           ; $5C73: $00
    nop                                           ; $5C74: $00
    nop                                           ; $5C75: $00
    nop                                           ; $5C76: $00
    nop                                           ; $5C77: $00
    nop                                           ; $5C78: $00
    nop                                           ; $5C79: $00
    nop                                           ; $5C7A: $00
    nop                                           ; $5C7B: $00
    nop                                           ; $5C7C: $00
    nop                                           ; $5C7D: $00
    nop                                           ; $5C7E: $00
    nop                                           ; $5C7F: $00
    rst RST_18                                    ; $5C80: $DF
    cp e                                          ; $5C81: $BB
    rst RST_38                                    ; $5C82: $FF
    db $DB                                        ; $5C83: $DB
    rst RST_38                                    ; $5C84: $FF
    db $E4                                        ; $5C85: $E4
    rst RST_38                                    ; $5C86: $FF
    ld c, [hl]                                    ; $5C87: $4E
    rst RST_38                                    ; $5C88: $FF
    inc a                                         ; $5C89: $3C
    ccf                                           ; $5C8A: $3F
    ret c                                         ; $5C8B: $D8

    db $FC                                        ; $5C8C: $FC
    nop                                           ; $5C8D: $00
    nop                                           ; $5C8E: $00
    nop                                           ; $5C8F: $00
    nop                                           ; $5C90: $00
    nop                                           ; $5C91: $00
    nop                                           ; $5C92: $00
    nop                                           ; $5C93: $00
    nop                                           ; $5C94: $00
    nop                                           ; $5C95: $00
    nop                                           ; $5C96: $00
    nop                                           ; $5C97: $00
    nop                                           ; $5C98: $00
    nop                                           ; $5C99: $00
    nop                                           ; $5C9A: $00
    nop                                           ; $5C9B: $00
    nop                                           ; $5C9C: $00
    nop                                           ; $5C9D: $00
    nop                                           ; $5C9E: $00
    nop                                           ; $5C9F: $00
    nop                                           ; $5CA0: $00
    nop                                           ; $5CA1: $00
    add b                                         ; $5CA2: $80
    nop                                           ; $5CA3: $00
    ret nz                                        ; $5CA4: $C0

    add b                                         ; $5CA5: $80
    ld b, b                                       ; $5CA6: $40
    add b                                         ; $5CA7: $80
    ldh [$FFC0], a                                ; $5CA8: $E0 $C0
    ldh [$FFC0], a                                ; $5CAA: $E0 $C0
    ldh [$FFC0], a                                ; $5CAC: $E0 $C0
    ldh a, [$FFC0]                                ; $5CAE: $F0 $C0
    ld hl, sp-$30                                 ; $5CB0: $F8 $D0
    db $FC                                        ; $5CB2: $FC
    cp b                                          ; $5CB3: $B8
    db $FC                                        ; $5CB4: $FC
    cp b                                          ; $5CB5: $B8
    cp $6C                                        ; $5CB6: $FE $6C
    cp $DC                                        ; $5CB8: $FE $DC
    cp $00                                        ; $5CBA: $FE $00
    sub d                                         ; $5CBC: $92
    ld l, h                                       ; $5CBD: $6C
    cp $00                                        ; $5CBE: $FE $00
    ld bc, $3F00                                  ; $5CC0: $01 $00 $3F
    nop                                           ; $5CC3: $00
    rst RST_38                                    ; $5CC4: $FF
    nop                                           ; $5CC5: $00
    nop                                           ; $5CC6: $00
    nop                                           ; $5CC7: $00
    nop                                           ; $5CC8: $00
    nop                                           ; $5CC9: $00
    nop                                           ; $5CCA: $00
    nop                                           ; $5CCB: $00
    nop                                           ; $5CCC: $00
    nop                                           ; $5CCD: $00
    nop                                           ; $5CCE: $00
    nop                                           ; $5CCF: $00
    nop                                           ; $5CD0: $00
    nop                                           ; $5CD1: $00
    nop                                           ; $5CD2: $00
    nop                                           ; $5CD3: $00
    nop                                           ; $5CD4: $00
    nop                                           ; $5CD5: $00
    nop                                           ; $5CD6: $00
    nop                                           ; $5CD7: $00
    nop                                           ; $5CD8: $00
    nop                                           ; $5CD9: $00
    nop                                           ; $5CDA: $00
    nop                                           ; $5CDB: $00
    nop                                           ; $5CDC: $00
    nop                                           ; $5CDD: $00
    nop                                           ; $5CDE: $00
    nop                                           ; $5CDF: $00
    inc bc                                        ; $5CE0: $03
    nop                                           ; $5CE1: $00
    dec a                                         ; $5CE2: $3D
    inc bc                                        ; $5CE3: $03
    ld b, e                                       ; $5CE4: $43
    ld a, $B5                                     ; $5CE5: $3E $B5
    ld l, a                                       ; $5CE7: $6F
    adc d                                         ; $5CE8: $8A
    ld a, a                                       ; $5CE9: $7F
    rst RST_38                                    ; $5CEA: $FF
    ld a, a                                       ; $5CEB: $7F
    ld a, a                                       ; $5CEC: $7F
    inc d                                         ; $5CED: $14
    ccf                                           ; $5CEE: $3F
    ld [bc], a                                    ; $5CEF: $02
    ld l, e                                       ; $5CF0: $6B
    ccf                                           ; $5CF1: $3F
    ccf                                           ; $5CF2: $3F
    inc e                                         ; $5CF3: $1C
    inc e                                         ; $5CF4: $1C
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
    ld hl, sp+$00                                 ; $5D00: $F8 $00
    rst RST_38                                    ; $5D02: $FF
    cp b                                          ; $5D03: $B8

jr_01D_5D04:
    cp l                                          ; $5D04: $BD
    ld e, a                                       ; $5D05: $5F
    scf                                           ; $5D06: $37
    rst RST_18                                    ; $5D07: $DF
    rst RST_28                                    ; $5D08: $EF
    ccf                                           ; $5D09: $3F
    sbc a                                         ; $5D0A: $9F
    ldh [$FFF7], a                                ; $5D0B: $E0 $F7
    ld e, $EB                                     ; $5D0D: $1E $EB
    cp a                                          ; $5D0F: $BF
    rst RST_10                                    ; $5D10: $D7
    rst RST_38                                    ; $5D11: $FF
    ld a, a                                       ; $5D12: $7F
    rst RST_38                                    ; $5D13: $FF
    rst RST_38                                    ; $5D14: $FF
    ld a, $3F                                     ; $5D15: $3E $3F
    nop                                           ; $5D17: $00
    dec b                                         ; $5D18: $05
    ld [bc], a                                    ; $5D19: $02
    ld [bc], a                                    ; $5D1A: $02
    nop                                           ; $5D1B: $00
    nop                                           ; $5D1C: $00
    nop                                           ; $5D1D: $00
    nop                                           ; $5D1E: $00
    nop                                           ; $5D1F: $00
    cp $00                                        ; $5D20: $FE $00
    ld bc, $92FE                                  ; $5D22: $01 $FE $92
    rst RST_38                                    ; $5D25: $FF
    db $DB                                        ; $5D26: $DB
    rst RST_38                                    ; $5D27: $FF
    ei                                            ; $5D28: $FB
    ld a, a                                       ; $5D29: $7F
    rst RST_38                                    ; $5D2A: $FF
    rst RST_38                                    ; $5D2B: $FF
    rst RST_38                                    ; $5D2C: $FF
    ld a, [hl]                                    ; $5D2D: $7E
    rst RST_38                                    ; $5D2E: $FF
    ld a, [hl]                                    ; $5D2F: $7E
    rst RST_38                                    ; $5D30: $FF
    ld e, $FF                                     ; $5D31: $1E $FF
    ld h, c                                       ; $5D33: $61
    ld l, e                                       ; $5D34: $6B
    sub h                                         ; $5D35: $94
    sbc a                                         ; $5D36: $9F
    ld [bc], a                                    ; $5D37: $02
    dec bc                                        ; $5D38: $0B
    ld b, $0B                                     ; $5D39: $06 $0B
    rlca                                          ; $5D3B: $07
    dec sp                                        ; $5D3C: $3B
    rlca                                          ; $5D3D: $07
    db $FD                                        ; $5D3E: $FD
    dec sp                                        ; $5D3F: $3B
    ret nz                                        ; $5D40: $C0

    nop                                           ; $5D41: $00
    jr nc, jr_01D_5D04                            ; $5D42: $30 $C0

    ld c, h                                       ; $5D44: $4C
    ldh a, [$FF63]                                ; $5D45: $F0 $63
    db $FC                                        ; $5D47: $FC
    ld h, h                                       ; $5D48: $64
    rst RST_38                                    ; $5D49: $FF
    or $FF                                        ; $5D4A: $F6 $FF
    or $BF                                        ; $5D4C: $F6 $BF
    rst RST_38                                    ; $5D4E: $FF
    cp a                                          ; $5D4F: $BF
    rst RST_38                                    ; $5D50: $FF
    ld a, a                                       ; $5D51: $7F
    cp $FD                                        ; $5D52: $FE $FD
    cp $FD                                        ; $5D54: $FE $FD
    cp $FB                                        ; $5D56: $FE $FB
    cp $7B                                        ; $5D58: $FE $7B
    cp $7B                                        ; $5D5A: $FE $7B
    rst RST_38                                    ; $5D5C: $FF
    cp e                                          ; $5D5D: $BB
    rst RST_38                                    ; $5D5E: $FF
    dec e                                         ; $5D5F: $1D
    ret nz                                        ; $5D60: $C0

    nop                                           ; $5D61: $00
    ld h, b                                       ; $5D62: $60
    ret nz                                        ; $5D63: $C0

    jr nc, @-$1E                                  ; $5D64: $30 $E0

    adc b                                         ; $5D66: $88
    ldh a, [$FF0C]                                ; $5D67: $F0 $0C
    ld hl, sp+$04                                 ; $5D69: $F8 $04
    ld hl, sp+$2E                                 ; $5D6B: $F8 $2E
    db $FC                                        ; $5D6D: $FC
    ld l, [hl]                                    ; $5D6E: $6E
    db $FC                                        ; $5D6F: $FC
    ld l, a                                       ; $5D70: $6F
    db $FC                                        ; $5D71: $FC
    rst RST_38                                    ; $5D72: $FF
    db $FD                                        ; $5D73: $FD
    rst RST_38                                    ; $5D74: $FF
    db $FD                                        ; $5D75: $FD
    rst RST_38                                    ; $5D76: $FF
    ld a, [$FAFF]                                 ; $5D77: $FA $FF $FA
    rst RST_38                                    ; $5D7A: $FF
    push af                                       ; $5D7B: $F5
    rst RST_38                                    ; $5D7C: $FF
    inc a                                         ; $5D7D: $3C
    dec a                                         ; $5D7E: $3D
    ld [bc], a                                    ; $5D7F: $02
    nop                                           ; $5D80: $00
    nop                                           ; $5D81: $00
    rrca                                          ; $5D82: $0F
    nop                                           ; $5D83: $00
    ld hl, sp+$0F                                 ; $5D84: $F8 $0F
    or a                                          ; $5D86: $B7
    rst RST_38                                    ; $5D87: $FF
    rst RST_38                                    ; $5D88: $FF
    nop                                           ; $5D89: $00
    nop                                           ; $5D8A: $00
    nop                                           ; $5D8B: $00
    nop                                           ; $5D8C: $00
    nop                                           ; $5D8D: $00
    nop                                           ; $5D8E: $00
    nop                                           ; $5D8F: $00
    nop                                           ; $5D90: $00
    nop                                           ; $5D91: $00
    nop                                           ; $5D92: $00
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
    rlca                                          ; $5DA0: $07
    nop                                           ; $5DA1: $00
    cp $07                                        ; $5DA2: $FE $07
    xor b                                         ; $5DA4: $A8
    rst RST_38                                    ; $5DA5: $FF
    ld [bc], a                                    ; $5DA6: $02
    rst RST_38                                    ; $5DA7: $FF
    ld l, a                                       ; $5DA8: $6F
    rst RST_38                                    ; $5DA9: $FF
    rst RST_38                                    ; $5DAA: $FF
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
    nop                                           ; $5DBB: $00
    nop                                           ; $5DBC: $00
    nop                                           ; $5DBD: $00
    nop                                           ; $5DBE: $00
    nop                                           ; $5DBF: $00
    cp a                                          ; $5DC0: $BF
    ld hl, sp-$59                                 ; $5DC1: $F8 $A7
    ld sp, hl                                     ; $5DC3: $F9
    ld a, a                                       ; $5DC4: $7F
    add a                                         ; $5DC5: $87
    and a                                         ; $5DC6: $A7
    ld e, e                                       ; $5DC7: $5B
    rst RST_38                                    ; $5DC8: $FF
    nop                                           ; $5DC9: $00
    nop                                           ; $5DCA: $00
    nop                                           ; $5DCB: $00
    nop                                           ; $5DCC: $00
    nop                                           ; $5DCD: $00
    nop                                           ; $5DCE: $00
    nop                                           ; $5DCF: $00
    nop                                           ; $5DD0: $00
    nop                                           ; $5DD1: $00
    nop                                           ; $5DD2: $00
    nop                                           ; $5DD3: $00
    nop                                           ; $5DD4: $00
    nop                                           ; $5DD5: $00
    nop                                           ; $5DD6: $00
    nop                                           ; $5DD7: $00
    nop                                           ; $5DD8: $00
    nop                                           ; $5DD9: $00
    nop                                           ; $5DDA: $00
    nop                                           ; $5DDB: $00
    nop                                           ; $5DDC: $00
    nop                                           ; $5DDD: $00
    nop                                           ; $5DDE: $00
    nop                                           ; $5DDF: $00
    rst RST_38                                    ; $5DE0: $FF
    jp $81F3                                      ; $5DE1: $C3 $F3 $81


    pop bc                                        ; $5DE4: $C1
    nop                                           ; $5DE5: $00
    nop                                           ; $5DE6: $00
    nop                                           ; $5DE7: $00
    nop                                           ; $5DE8: $00
    nop                                           ; $5DE9: $00
    nop                                           ; $5DEA: $00
    nop                                           ; $5DEB: $00
    nop                                           ; $5DEC: $00
    nop                                           ; $5DED: $00
    nop                                           ; $5DEE: $00
    nop                                           ; $5DEF: $00
    nop                                           ; $5DF0: $00
    nop                                           ; $5DF1: $00
    nop                                           ; $5DF2: $00
    nop                                           ; $5DF3: $00
    nop                                           ; $5DF4: $00
    nop                                           ; $5DF5: $00
    nop                                           ; $5DF6: $00
    nop                                           ; $5DF7: $00
    nop                                           ; $5DF8: $00
    nop                                           ; $5DF9: $00
    nop                                           ; $5DFA: $00
    nop                                           ; $5DFB: $00
    nop                                           ; $5DFC: $00
    nop                                           ; $5DFD: $00
    nop                                           ; $5DFE: $00
    nop                                           ; $5DFF: $00
    ld hl, sp-$30                                 ; $5E00: $F8 $D0
    db $FC                                        ; $5E02: $FC
    ret c                                         ; $5E03: $D8

    db $FC                                        ; $5E04: $FC
    xor b                                         ; $5E05: $A8
    cp $AC                                        ; $5E06: $FE $AC
    cp $58                                        ; $5E08: $FE $58
    ld a, [$D2C4]                                 ; $5E0A: $FA $C4 $D2
    inc l                                         ; $5E0D: $2C
    cp $00                                        ; $5E0E: $FE $00
    nop                                           ; $5E10: $00
    nop                                           ; $5E11: $00
    nop                                           ; $5E12: $00
    nop                                           ; $5E13: $00
    nop                                           ; $5E14: $00
    nop                                           ; $5E15: $00
    nop                                           ; $5E16: $00
    nop                                           ; $5E17: $00
    nop                                           ; $5E18: $00
    nop                                           ; $5E19: $00
    nop                                           ; $5E1A: $00
    nop                                           ; $5E1B: $00
    nop                                           ; $5E1C: $00
    nop                                           ; $5E1D: $00
    nop                                           ; $5E1E: $00
    nop                                           ; $5E1F: $00
    jr jr_01D_5E22                                ; $5E20: $18 $00

jr_01D_5E22:
    inc d                                         ; $5E22: $14
    ld [$0C32], sp                                ; $5E23: $08 $32 $0C
    ld c, [hl]                                    ; $5E26: $4E

Call_01D_5E27:
    jr nc, jr_01D_5E50                            ; $5E27: $30 $27

    ld a, [de]                                    ; $5E29: $1A
    ld e, $07                                     ; $5E2A: $1E $07
    rrca                                          ; $5E2C: $0F
    rlca                                          ; $5E2D: $07
    rlca                                          ; $5E2E: $07
    inc bc                                        ; $5E2F: $03
    inc bc                                        ; $5E30: $03
    ld bc, $0001                                  ; $5E31: $01 $01 $00
    nop                                           ; $5E34: $00
    nop                                           ; $5E35: $00
    nop                                           ; $5E36: $00
    nop                                           ; $5E37: $00
    ld bc, $0100                                  ; $5E38: $01 $00 $01
    nop                                           ; $5E3B: $00
    nop                                           ; $5E3C: $00
    nop                                           ; $5E3D: $00
    ld bc, $0000                                  ; $5E3E: $01 $00 $00
    nop                                           ; $5E41: $00
    inc bc                                        ; $5E42: $03
    nop                                           ; $5E43: $00
    dec a                                         ; $5E44: $3D
    inc bc                                        ; $5E45: $03
    ld b, e                                       ; $5E46: $43
    ld a, $B5                                     ; $5E47: $3E $B5
    ld l, a                                       ; $5E49: $6F

jr_01D_5E4A:
    adc d                                         ; $5E4A: $8A
    ld a, a                                       ; $5E4B: $7F
    rst RST_38                                    ; $5E4C: $FF
    ld a, a                                       ; $5E4D: $7F
    ld a, a                                       ; $5E4E: $7F
    inc d                                         ; $5E4F: $14

jr_01D_5E50:
    ld d, l                                       ; $5E50: $55
    ld a, [hl+]                                   ; $5E51: $2A
    ccf                                           ; $5E52: $3F
    nop                                           ; $5E53: $00
    ld l, e                                       ; $5E54: $6B
    ccf                                           ; $5E55: $3F
    ccf                                           ; $5E56: $3F
    inc e                                         ; $5E57: $1C
    inc e                                         ; $5E58: $1C
    nop                                           ; $5E59: $00
    nop                                           ; $5E5A: $00
    nop                                           ; $5E5B: $00
    nop                                           ; $5E5C: $00
    nop                                           ; $5E5D: $00
    nop                                           ; $5E5E: $00
    nop                                           ; $5E5F: $00
    ld a, b                                       ; $5E60: $78
    nop                                           ; $5E61: $00
    rst RST_38                                    ; $5E62: $FF
    ld a, b                                       ; $5E63: $78
    rst RST_30                                    ; $5E64: $F7
    adc a                                         ; $5E65: $8F
    and [hl]                                      ; $5E66: $A6
    ld e, e                                       ; $5E67: $5B
    rst RST_08                                    ; $5E68: $CF
    dec a                                         ; $5E69: $3D
    cp a                                          ; $5E6A: $BF
    pop hl                                        ; $5E6B: $E1
    rst RST_38                                    ; $5E6C: $FF
    inc c                                         ; $5E6D: $0C
    or a                                          ; $5E6E: $B7
    ld e, [hl]                                    ; $5E6F: $5E
    ld l, e                                       ; $5E70: $6B
    cp a                                          ; $5E71: $BF
    rst RST_10                                    ; $5E72: $D7
    ld a, a                                       ; $5E73: $7F
    ld a, a                                       ; $5E74: $7F
    rst RST_38                                    ; $5E75: $FF
    rst RST_38                                    ; $5E76: $FF
    ld a, [hl]                                    ; $5E77: $7E
    ld a, a                                       ; $5E78: $7F
    nop                                           ; $5E79: $00
    ld c, a                                       ; $5E7A: $4F
    jr nc, jr_01D_5EBC                            ; $5E7B: $30 $3F

    inc bc                                        ; $5E7D: $03
    rla                                           ; $5E7E: $17
    add hl, bc                                    ; $5E7F: $09
    nop                                           ; $5E80: $00
    nop                                           ; $5E81: $00
    nop                                           ; $5E82: $00
    nop                                           ; $5E83: $00
    add b                                         ; $5E84: $80
    nop                                           ; $5E85: $00
    ret nz                                        ; $5E86: $C0

    add b                                         ; $5E87: $80
    jr nz, jr_01D_5E4A                            ; $5E88: $20 $C0

    ld d, b                                       ; $5E8A: $50
    ldh [$FFC8], a                                ; $5E8B: $E0 $C8
    ldh a, [$FFE8]                                ; $5E8D: $F0 $E8
    ldh a, [$FFE4]                                ; $5E8F: $F0 $E4
    ld a, b                                       ; $5E91: $78
    ld a, [$F27C]                                 ; $5E92: $FA $7C $F2
    ld a, h                                       ; $5E95: $7C
    db $ED                                        ; $5E96: $ED
    cp $F9                                        ; $5E97: $FE $F9
    cp [hl]                                       ; $5E99: $BE
    pop af                                        ; $5E9A: $F1
    ld a, [hl]                                    ; $5E9B: $7E
    db $ED                                        ; $5E9C: $ED
    cp $F9                                        ; $5E9D: $FE $F9
    cp $03                                        ; $5E9F: $FE $03
    nop                                           ; $5EA1: $00
    inc c                                         ; $5EA2: $0C
    inc bc                                        ; $5EA3: $03
    di                                            ; $5EA4: $F3
    rrca                                          ; $5EA5: $0F
    cp a                                          ; $5EA6: $BF
    cp $FF                                        ; $5EA7: $FE $FF
    or $FF                                        ; $5EA9: $F6 $FF
    add l                                         ; $5EAB: $85
    add a                                         ; $5EAC: $87
    ld bc, $0103                                  ; $5EAD: $01 $03 $01
    add e                                         ; $5EB0: $83
    nop                                           ; $5EB1: $00
    ld b, e                                       ; $5EB2: $43
    add b                                         ; $5EB3: $80
    inc sp                                        ; $5EB4: $33
    pop bc                                        ; $5EB5: $C1
    rst RST_38                                    ; $5EB6: $FF
    ld sp, $DF3F                                  ; $5EB7: $31 $3F $DF
    cp a                                          ; $5EBA: $BF
    ld e, a                                       ; $5EBB: $5F

jr_01D_5EBC:
    ld a, a                                       ; $5EBC: $7F
    jr jr_01D_5ED7                                ; $5EBD: $18 $18

    nop                                           ; $5EBF: $00
    rst RST_38                                    ; $5EC0: $FF
    ld [bc], a                                    ; $5EC1: $02
    rst RST_38                                    ; $5EC2: $FF
    db $DB                                        ; $5EC3: $DB
    rst RST_38                                    ; $5EC4: $FF
    ld a, h                                       ; $5EC5: $7C
    rst RST_38                                    ; $5EC6: $FF
    rst RST_38                                    ; $5EC7: $FF
    rst RST_38                                    ; $5EC8: $FF
    rst RST_38                                    ; $5EC9: $FF
    rst RST_38                                    ; $5ECA: $FF
    rst RST_38                                    ; $5ECB: $FF
    rst RST_38                                    ; $5ECC: $FF
    rst RST_00                                    ; $5ECD: $C7
    rst RST_38                                    ; $5ECE: $FF
    add hl, sp                                    ; $5ECF: $39
    di                                            ; $5ED0: $F3
    cp $F9                                        ; $5ED1: $FE $F9
    rst RST_38                                    ; $5ED3: $FF
    db $FD                                        ; $5ED4: $FD
    rst RST_38                                    ; $5ED5: $FF
    db $F4                                        ; $5ED6: $F4

jr_01D_5ED7:
    rst RST_38                                    ; $5ED7: $FF
    ld hl, sp+$3F                                 ; $5ED8: $F8 $3F
    ld sp, hl                                     ; $5EDA: $F9
    ld a, a                                       ; $5EDB: $7F
    rst RST_20                                    ; $5EDC: $E7
    db $FC                                        ; $5EDD: $FC
    db $FC                                        ; $5EDE: $FC
    nop                                           ; $5EDF: $00
    db $FD                                        ; $5EE0: $FD
    ld a, $F9                                     ; $5EE1: $3E $F9
    cp $F1                                        ; $5EE3: $FE $F1
    ld a, [hl]                                    ; $5EE5: $7E
    ei                                            ; $5EE6: $FB
    db $FC                                        ; $5EE7: $FC
    ldh a, [c]                                    ; $5EE8: $F2
    db $FD                                        ; $5EE9: $FD
    rst RST_00                                    ; $5EEA: $C7
    ei                                            ; $5EEB: $FB
    rst RST_30                                    ; $5EEC: $F7
    ld sp, hl                                     ; $5EED: $F9
    db $EB                                        ; $5EEE: $EB
    ldh a, [$FFD3]                                ; $5EEF: $F0 $D3
    ldh [$FFAF], a                                ; $5EF1: $E0 $AF
    ld d, e                                       ; $5EF3: $53
    push hl                                       ; $5EF4: $E5
    ccf                                           ; $5EF5: $3F
    jp hl                                         ; $5EF6: $E9


    ld a, a                                       ; $5EF7: $7F
    ei                                            ; $5EF8: $FB
    ld a, a                                       ; $5EF9: $7F
    rst RST_38                                    ; $5EFA: $FF
    ld a, a                                       ; $5EFB: $7F
    rst RST_38                                    ; $5EFC: $FF
    db $FC                                        ; $5EFD: $FC
    db $FC                                        ; $5EFE: $FC
    nop                                           ; $5EFF: $00
    add b                                         ; $5F00: $80
    nop                                           ; $5F01: $00
    ld b, b                                       ; $5F02: $40
    add b                                         ; $5F03: $80
    and b                                         ; $5F04: $A0
    ret nz                                        ; $5F05: $C0

    or b                                          ; $5F06: $B0
    ldh [$FFB0], a                                ; $5F07: $E0 $B0
    ldh [rSVBK], a                                ; $5F09: $E0 $70
    ldh [$FF60], a                                ; $5F0B: $E0 $60
    ret nz                                        ; $5F0D: $C0

    ldh [$FFC0], a                                ; $5F0E: $E0 $C0
    ret nz                                        ; $5F10: $C0

    add b                                         ; $5F11: $80
    add b                                         ; $5F12: $80
    nop                                           ; $5F13: $00
    nop                                           ; $5F14: $00
    nop                                           ; $5F15: $00
    nop                                           ; $5F16: $00
    nop                                           ; $5F17: $00
    nop                                           ; $5F18: $00
    nop                                           ; $5F19: $00
    nop                                           ; $5F1A: $00
    nop                                           ; $5F1B: $00
    nop                                           ; $5F1C: $00
    nop                                           ; $5F1D: $00
    nop                                           ; $5F1E: $00
    nop                                           ; $5F1F: $00
    jr jr_01D_5F22                                ; $5F20: $18 $00

jr_01D_5F22:
    inc d                                         ; $5F22: $14
    ld [$0C32], sp                                ; $5F23: $08 $32 $0C
    ld c, [hl]                                    ; $5F26: $4E
    jr nc, jr_01D_5F4E                            ; $5F27: $30 $25

    ld a, [de]                                    ; $5F29: $1A
    ld e, $07                                     ; $5F2A: $1E $07
    rrca                                          ; $5F2C: $0F
    rlca                                          ; $5F2D: $07
    rlca                                          ; $5F2E: $07
    inc bc                                        ; $5F2F: $03
    inc bc                                        ; $5F30: $03
    ld bc, $0001                                  ; $5F31: $01 $01 $00
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
    inc bc                                        ; $5F44: $03
    nop                                           ; $5F45: $00
    cp $03                                        ; $5F46: $FE $03
    rst RST_08                                    ; $5F48: $CF
    rst RST_38                                    ; $5F49: $FF
    rst RST_38                                    ; $5F4A: $FF
    rst RST_38                                    ; $5F4B: $FF
    rst RST_38                                    ; $5F4C: $FF
    ret nz                                        ; $5F4D: $C0

jr_01D_5F4E:
    ret nz                                        ; $5F4E: $C0

    nop                                           ; $5F4F: $00
    nop                                           ; $5F50: $00
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
    inc bc                                        ; $5F60: $03
    nop                                           ; $5F61: $00
    dec a                                         ; $5F62: $3D
    inc bc                                        ; $5F63: $03
    ld b, e                                       ; $5F64: $43
    ld a, $B5                                     ; $5F65: $3E $B5
    ld l, a                                       ; $5F67: $6F
    adc d                                         ; $5F68: $8A
    ld a, a                                       ; $5F69: $7F
    rst RST_38                                    ; $5F6A: $FF
    ld a, a                                       ; $5F6B: $7F
    ld a, a                                       ; $5F6C: $7F
    inc d                                         ; $5F6D: $14
    ld d, l                                       ; $5F6E: $55
    ld a, [hl+]                                   ; $5F6F: $2A
    ccf                                           ; $5F70: $3F
    nop                                           ; $5F71: $00
    ld l, e                                       ; $5F72: $6B
    ccf                                           ; $5F73: $3F
    ccf                                           ; $5F74: $3F
    inc e                                         ; $5F75: $1C
    inc e                                         ; $5F76: $1C
    nop                                           ; $5F77: $00
    nop                                           ; $5F78: $00
    nop                                           ; $5F79: $00
    rrca                                          ; $5F7A: $0F
    nop                                           ; $5F7B: $00
    dec [hl]                                      ; $5F7C: $35
    rrca                                          ; $5F7D: $0F
    ld l, d                                       ; $5F7E: $6A
    ccf                                           ; $5F7F: $3F
    ld a, b                                       ; $5F80: $78
    nop                                           ; $5F81: $00
    rst RST_38                                    ; $5F82: $FF
    ld a, b                                       ; $5F83: $78

jr_01D_5F84:
    rst RST_30                                    ; $5F84: $F7
    adc a                                         ; $5F85: $8F
    and [hl]                                      ; $5F86: $A6
    ld e, e                                       ; $5F87: $5B
    rst RST_08                                    ; $5F88: $CF
    dec a                                         ; $5F89: $3D
    cp a                                          ; $5F8A: $BF
    pop hl                                        ; $5F8B: $E1
    rst RST_38                                    ; $5F8C: $FF
    inc c                                         ; $5F8D: $0C
    or a                                          ; $5F8E: $B7
    ld e, [hl]                                    ; $5F8F: $5E
    ld l, e                                       ; $5F90: $6B
    cp a                                          ; $5F91: $BF
    rst RST_10                                    ; $5F92: $D7
    ld a, a                                       ; $5F93: $7F
    ld a, a                                       ; $5F94: $7F
    cp $FF                                        ; $5F95: $FE $FF
    ld a, b                                       ; $5F97: $78
    ld a, c                                       ; $5F98: $79
    nop                                           ; $5F99: $00
    inc bc                                        ; $5F9A: $03
    ld bc, $03CF                                  ; $5F9B: $01 $CF $03
    ld a, a                                       ; $5F9E: $7F
    set 4, b                                      ; $5F9F: $CB $E0
    nop                                           ; $5FA1: $00
    jr jr_01D_5F84                                ; $5FA2: $18 $E0

    ld b, h                                       ; $5FA4: $44
    ld hl, sp-$2E                                 ; $5FA5: $F8 $D2
    db $FC                                        ; $5FA7: $FC
    push af                                       ; $5FA8: $F5
    cp $FC                                        ; $5FA9: $FE $FC
    rst RST_38                                    ; $5FAB: $FF
    db $FC                                        ; $5FAC: $FC
    ld a, a                                       ; $5FAD: $7F
    ld a, [$FE7F]                                 ; $5FAE: $FA $7F $FE
    ld l, a                                       ; $5FB1: $6F
    db $FC                                        ; $5FB2: $FC
    rra                                           ; $5FB3: $1F
    ei                                            ; $5FB4: $FB
    ld a, a                                       ; $5FB5: $7F
    cp $FF                                        ; $5FB6: $FE $FF
    cp $AF                                        ; $5FB8: $FE $AF
    db $FC                                        ; $5FBA: $FC
    xor a                                         ; $5FBB: $AF
    ld hl, sp+$2F                                 ; $5FBC: $F8 $2F
    db $FD                                        ; $5FBE: $FD
    ld l, [hl]                                    ; $5FBF: $6E
    rst RST_08                                    ; $5FC0: $CF
    ld a, [hl]                                    ; $5FC1: $7E
    cp a                                          ; $5FC2: $BF
    ld a, [hl]                                    ; $5FC3: $7E
    cp a                                          ; $5FC4: $BF
    ld a, l                                       ; $5FC5: $7D
    rst RST_38                                    ; $5FC6: $FF
    ld a, l                                       ; $5FC7: $7D
    rst RST_38                                    ; $5FC8: $FF
    pop hl                                        ; $5FC9: $E1
    pop af                                        ; $5FCA: $F1
    add b                                         ; $5FCB: $80
    xor c                                         ; $5FCC: $A9
    db $10                                        ; $5FCD: $10
    inc h                                         ; $5FCE: $24
    jr jr_01D_5FF0                                ; $5FCF: $18 $1F

    inc b                                         ; $5FD1: $04
    cpl                                           ; $5FD2: $2F
    rla                                           ; $5FD3: $17
    daa                                           ; $5FD4: $27
    dec de                                        ; $5FD5: $1B
    rra                                           ; $5FD6: $1F
    ld b, $0E                                     ; $5FD7: $06 $0E
    nop                                           ; $5FD9: $00
    nop                                           ; $5FDA: $00
    nop                                           ; $5FDB: $00
    nop                                           ; $5FDC: $00
    nop                                           ; $5FDD: $00
    nop                                           ; $5FDE: $00
    nop                                           ; $5FDF: $00
    ei                                            ; $5FE0: $FB
    inc [hl]                                      ; $5FE1: $34
    ld a, [$FFF5]                                 ; $5FE2: $FA $F5 $FF
    ld hl, sp-$01                                 ; $5FE5: $F8 $FF
    rst RST_38                                    ; $5FE7: $FF
    rst RST_38                                    ; $5FE8: $FF
    pop af                                        ; $5FE9: $F1
    rst RST_38                                    ; $5FEA: $FF
    xor $FC                                       ; $5FEB: $EE $FC
    rst RST_18                                    ; $5FED: $DF
    cp $BF                                        ; $5FEE: $FE $BF

jr_01D_5FF0:
    cp $7F                                        ; $5FF0: $FE $7F
    ld hl, sp-$01                                 ; $5FF2: $F8 $FF
    cp $CF                                        ; $5FF4: $FE $CF
    db $FC                                        ; $5FF6: $FC
    rst RST_18                                    ; $5FF7: $DF
    di                                            ; $5FF8: $F3
    inc a                                         ; $5FF9: $3C
    inc a                                         ; $5FFA: $3C
    nop                                           ; $5FFB: $00
    nop                                           ; $5FFC: $00
    nop                                           ; $5FFD: $00
    nop                                           ; $5FFE: $00
    nop                                           ; $5FFF: $00
    ld sp, hl                                     ; $6000: $F9
    ld c, $E2                                     ; $6001: $0E $E2
    db $FC                                        ; $6003: $FC
    ld a, [$F4FC]                                 ; $6004: $FA $FC $F4
    ld a, b                                       ; $6007: $78
    add sp, -$50                                  ; $6008: $E8 $B0
    ld a, b                                       ; $600A: $78
    ret nz                                        ; $600B: $C0

    ld l, a                                       ; $600C: $6F
    ret c                                         ; $600D: $D8

    ld h, d                                       ; $600E: $62
    rst RST_18                                    ; $600F: $DF
    ld l, c                                       ; $6010: $69
    rst RST_18                                    ; $6011: $DF
    rst RST_38                                    ; $6012: $FF
    cp a                                          ; $6013: $BF
    rst RST_38                                    ; $6014: $FF
    rra                                           ; $6015: $1F
    rra                                           ; $6016: $1F
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
    add b                                         ; $6022: $80
    nop                                           ; $6023: $00
    ld b, b                                       ; $6024: $40
    add b                                         ; $6025: $80
    ld b, b                                       ; $6026: $40
    add b                                         ; $6027: $80
    ld b, b                                       ; $6028: $40
    add b                                         ; $6029: $80
    ld b, b                                       ; $602A: $40
    add b                                         ; $602B: $80
    ld b, b                                       ; $602C: $40
    add b                                         ; $602D: $80
    add b                                         ; $602E: $80
    nop                                           ; $602F: $00
    add b                                         ; $6030: $80
    nop                                           ; $6031: $00
    add b                                         ; $6032: $80
    nop                                           ; $6033: $00
    nop                                           ; $6034: $00
    nop                                           ; $6035: $00
    nop                                           ; $6036: $00
    nop                                           ; $6037: $00
    inc bc                                        ; $6038: $03
    nop                                           ; $6039: $00
    rrca                                          ; $603A: $0F
    inc bc                                        ; $603B: $03
    dec sp                                        ; $603C: $3B
    ld c, $6E                                     ; $603D: $0E $6E
    inc a                                         ; $603F: $3C
    xor h                                         ; $6040: $AC
    ld a, b                                       ; $6041: $78
    sbc b                                         ; $6042: $98

jr_01D_6043:
    ldh a, [rSVBK]                                ; $6043: $F0 $70
    ldh [rSVBK], a                                ; $6045: $E0 $70
    ldh [$FFE0], a                                ; $6047: $E0 $E0
    ret nz                                        ; $6049: $C0

    ret nz                                        ; $604A: $C0

    nop                                           ; $604B: $00
    nop                                           ; $604C: $00
    nop                                           ; $604D: $00
    nop                                           ; $604E: $00
    nop                                           ; $604F: $00
    nop                                           ; $6050: $00
    nop                                           ; $6051: $00
    nop                                           ; $6052: $00
    nop                                           ; $6053: $00
    nop                                           ; $6054: $00
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
    ldh [rP1], a                                  ; $6060: $E0 $00
    ret nz                                        ; $6062: $C0

    add b                                         ; $6063: $80
    add b                                         ; $6064: $80
    nop                                           ; $6065: $00
    nop                                           ; $6066: $00
    nop                                           ; $6067: $00
    nop                                           ; $6068: $00
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
    inc bc                                        ; $6084: $03
    nop                                           ; $6085: $00
    ld [bc], a                                    ; $6086: $02
    ld bc, $0106                                  ; $6087: $01 $06 $01
    adc c                                         ; $608A: $89
    ld b, $C4                                     ; $608B: $06 $C4
    inc bc                                        ; $608D: $03
    jp $E100                                      ; $608E: $C3 $00 $E1


    ld b, b                                       ; $6091: $40
    ldh [rLCDC], a                                ; $6092: $E0 $40
    pop af                                        ; $6094: $F1
    ld h, b                                       ; $6095: $60
    xor $71                                       ; $6096: $EE $71
    ld a, d                                       ; $6098: $7A
    ccf                                           ; $6099: $3F
    ld a, a                                       ; $609A: $7F
    ccf                                           ; $609B: $3F
    ccf                                           ; $609C: $3F
    rrca                                          ; $609D: $0F
    rrca                                          ; $609E: $0F
    nop                                           ; $609F: $00
    jr z, jr_01D_60B2                             ; $60A0: $28 $10

    ld h, h                                       ; $60A2: $64
    jr jr_01D_6043                                ; $60A3: $18 $9E

    ld h, h                                       ; $60A5: $64
    ld c, a                                       ; $60A6: $4F
    ld [hl], $3D                                  ; $60A7: $36 $3D
    ld c, $1F                                     ; $60A9: $0E $1F
    rrca                                          ; $60AB: $0F
    rrca                                          ; $60AC: $0F
    nop                                           ; $60AD: $00
    inc d                                         ; $60AE: $14
    rrca                                          ; $60AF: $0F
    db $ED                                        ; $60B0: $ED
    rra                                           ; $60B1: $1F

jr_01D_60B2:
    xor a                                         ; $60B2: $AF
    rst RST_38                                    ; $60B3: $FF
    rst RST_38                                    ; $60B4: $FF
    cp $FE                                        ; $60B5: $FE $FE
    pop af                                        ; $60B7: $F1
    ldh a, [c]                                    ; $60B8: $F2
    ld bc, $0001                                  ; $60B9: $01 $01 $00
    ld [bc], a                                    ; $60BC: $02
    ld bc, $0001                                  ; $60BD: $01 $01 $00
    nop                                           ; $60C0: $00
    nop                                           ; $60C1: $00
    nop                                           ; $60C2: $00
    nop                                           ; $60C3: $00
    nop                                           ; $60C4: $00
    nop                                           ; $60C5: $00

jr_01D_60C6:
    inc bc                                        ; $60C6: $03
    nop                                           ; $60C7: $00
    dec a                                         ; $60C8: $3D
    inc bc                                        ; $60C9: $03
    ld b, e                                       ; $60CA: $43
    ld a, $B5                                     ; $60CB: $3E $B5
    ld l, a                                       ; $60CD: $6F
    adc d                                         ; $60CE: $8A
    ld a, a                                       ; $60CF: $7F
    rst RST_38                                    ; $60D0: $FF
    ld a, a                                       ; $60D1: $7F
    ld a, a                                       ; $60D2: $7F
    inc d                                         ; $60D3: $14
    ld d, l                                       ; $60D4: $55
    ld a, [hl+]                                   ; $60D5: $2A
    ccf                                           ; $60D6: $3F
    nop                                           ; $60D7: $00
    ld l, e                                       ; $60D8: $6B
    ccf                                           ; $60D9: $3F
    ccf                                           ; $60DA: $3F
    inc e                                         ; $60DB: $1C
    inc e                                         ; $60DC: $1C
    nop                                           ; $60DD: $00
    nop                                           ; $60DE: $00
    nop                                           ; $60DF: $00
    ld a, b                                       ; $60E0: $78
    nop                                           ; $60E1: $00
    rst RST_38                                    ; $60E2: $FF
    ld a, b                                       ; $60E3: $78
    rst RST_30                                    ; $60E4: $F7
    adc a                                         ; $60E5: $8F
    and [hl]                                      ; $60E6: $A6
    ld e, e                                       ; $60E7: $5B
    rst RST_08                                    ; $60E8: $CF
    dec a                                         ; $60E9: $3D
    cp a                                          ; $60EA: $BF
    pop hl                                        ; $60EB: $E1
    rst RST_38                                    ; $60EC: $FF
    inc c                                         ; $60ED: $0C
    or a                                          ; $60EE: $B7
    ld e, [hl]                                    ; $60EF: $5E
    ld l, e                                       ; $60F0: $6B
    cp a                                          ; $60F1: $BF
    rst RST_10                                    ; $60F2: $D7
    ld a, a                                       ; $60F3: $7F
    ld a, a                                       ; $60F4: $7F
    rst RST_38                                    ; $60F5: $FF
    rst RST_38                                    ; $60F6: $FF
    ld a, [hl]                                    ; $60F7: $7E
    ld a, a                                       ; $60F8: $7F
    nop                                           ; $60F9: $00
    ld c, a                                       ; $60FA: $4F
    jr nc, jr_01D_613C                            ; $60FB: $30 $3F

    inc bc                                        ; $60FD: $03
    rla                                           ; $60FE: $17
    add hl, bc                                    ; $60FF: $09
    add b                                         ; $6100: $80
    nop                                           ; $6101: $00
    ret nz                                        ; $6102: $C0

    add b                                         ; $6103: $80
    jr nz, jr_01D_60C6                            ; $6104: $20 $C0

    ld d, b                                       ; $6106: $50
    ldh [$FFC8], a                                ; $6107: $E0 $C8
    ldh a, [$FFE8]                                ; $6109: $F0 $E8
    ldh a, [$FFE4]                                ; $610B: $F0 $E4
    ld a, b                                       ; $610D: $78
    ld a, [$F27C]                                 ; $610E: $FA $7C $F2
    ld a, h                                       ; $6111: $7C
    db $ED                                        ; $6112: $ED
    cp $F9                                        ; $6113: $FE $F9
    cp [hl]                                       ; $6115: $BE
    pop af                                        ; $6116: $F1
    ld a, [hl]                                    ; $6117: $7E
    db $ED                                        ; $6118: $ED
    cp $F9                                        ; $6119: $FE $F9
    cp $FA                                        ; $611B: $FE $FA
    ld a, h                                       ; $611D: $7C
    ldh a, [c]                                    ; $611E: $F2
    db $FC                                        ; $611F: $FC
    rlca                                          ; $6120: $07
    nop                                           ; $6121: $00
    add hl, de                                    ; $6122: $19
    rlca                                          ; $6123: $07
    rst RST_20                                    ; $6124: $E7
    ld e, $7F                                     ; $6125: $1E $7F
    db $FD                                        ; $6127: $FD
    rst RST_38                                    ; $6128: $FF
    dec l                                         ; $6129: $2D
    cp a                                          ; $612A: $BF
    res 5, a                                      ; $612B: $CB $AF
    di                                            ; $612D: $F3
    rst RST_30                                    ; $612E: $F7
    ld a, [$FDFF]                                 ; $612F: $FA $FF $FD
    rst RST_38                                    ; $6132: $FF
    ld a, l                                       ; $6133: $7D
    ld a, a                                       ; $6134: $7F
    sbc e                                         ; $6135: $9B
    rst RST_38                                    ; $6136: $FF
    ld h, e                                       ; $6137: $63
    ld a, a                                       ; $6138: $7F
    cp [hl]                                       ; $6139: $BE
    ld a, a                                       ; $613A: $7F

jr_01D_613B:
    cp [hl]                                       ; $613B: $BE

jr_01D_613C:
    rst RST_38                                    ; $613C: $FF
    ld sp, $0031                                  ; $613D: $31 $31 $00
    rst RST_38                                    ; $6140: $FF
    inc b                                         ; $6141: $04
    rst RST_38                                    ; $6142: $FF
    or a                                          ; $6143: $B7
    rst RST_38                                    ; $6144: $FF
    ld hl, sp-$01                                 ; $6145: $F8 $FF
    rst RST_38                                    ; $6147: $FF
    rst RST_38                                    ; $6148: $FF
    rst RST_38                                    ; $6149: $FF
    rst RST_38                                    ; $614A: $FF
    rst RST_38                                    ; $614B: $FF
    rst RST_38                                    ; $614C: $FF
    adc a                                         ; $614D: $8F
    rst RST_38                                    ; $614E: $FF
    ld [hl], e                                    ; $614F: $73
    rst RST_20                                    ; $6150: $E7
    db $FD                                        ; $6151: $FD
    di                                            ; $6152: $F3
    cp $F9                                        ; $6153: $FE $F9
    cp $E9                                        ; $6155: $FE $E9
    cp $F3                                        ; $6157: $FE $F3
    ld a, [hl]                                    ; $6159: $7E
    ldh a, [c]                                    ; $615A: $F2
    db $FC                                        ; $615B: $FC
    call nz, $F8F8                                ; $615C: $C4 $F8 $F8
    nop                                           ; $615F: $00
    ldh [c], a                                    ; $6160: $E2
    db $FC                                        ; $6161: $FC
    db $F4                                        ; $6162: $F4
    ld hl, sp-$1C                                 ; $6163: $F8 $E4
    ld hl, sp-$78                                 ; $6165: $F8 $88
    ldh a, [$FFE8]                                ; $6167: $F0 $E8
    ldh a, [$FFD0]                                ; $6169: $F0 $D0
    ldh [$FFA0], a                                ; $616B: $E0 $A0
    ret nz                                        ; $616D: $C0

    ld b, b                                       ; $616E: $40
    add b                                         ; $616F: $80
    add b                                         ; $6170: $80
    nop                                           ; $6171: $00
    nop                                           ; $6172: $00
    nop                                           ; $6173: $00
    nop                                           ; $6174: $00
    nop                                           ; $6175: $00
    nop                                           ; $6176: $00
    nop                                           ; $6177: $00
    nop                                           ; $6178: $00
    nop                                           ; $6179: $00
    nop                                           ; $617A: $00
    nop                                           ; $617B: $00
    nop                                           ; $617C: $00
    nop                                           ; $617D: $00
    nop                                           ; $617E: $00
    nop                                           ; $617F: $00
    nop                                           ; $6180: $00
    nop                                           ; $6181: $00
    nop                                           ; $6182: $00
    nop                                           ; $6183: $00
    nop                                           ; $6184: $00
    nop                                           ; $6185: $00
    ld bc, $0200                                  ; $6186: $01 $00 $02
    ld bc, $0102                                  ; $6189: $01 $02 $01
    inc bc                                        ; $618C: $03
    ld bc, $0001                                  ; $618D: $01 $01 $00
    ld bc, $0000                                  ; $6190: $01 $00 $00
    nop                                           ; $6193: $00
    ld bc, $0000                                  ; $6194: $01 $00 $00
    nop                                           ; $6197: $00
    jr nc, jr_01D_619A                            ; $6198: $30 $00

jr_01D_619A:
    jr z, jr_01D_61AC                             ; $619A: $28 $10

    ld h, h                                       ; $619C: $64
    jr jr_01D_613B                                ; $619D: $18 $9C

    ld h, b                                       ; $619F: $60
    ld bc, $0F00                                  ; $61A0: $01 $00 $0F
    ld bc, $0EF7                                  ; $61A3: $01 $F7 $0E
    ld c, $F9                                     ; $61A6: $0E $F9
    rst RST_10                                    ; $61A8: $D7
    cp h                                          ; $61A9: $BC
    ld a, [hl+]                                   ; $61AA: $2A
    rst RST_38                                    ; $61AB: $FF

jr_01D_61AC:
    rst RST_38                                    ; $61AC: $FF
    db $FC                                        ; $61AD: $FC
    cp $51                                        ; $61AE: $FE $51
    ld d, l                                       ; $61B0: $55
    xor d                                         ; $61B1: $AA
    rst RST_38                                    ; $61B2: $FF
    ld bc, $FFAD                                  ; $61B3: $01 $AD $FF
    rst RST_38                                    ; $61B6: $FF
    ld [hl], c                                    ; $61B7: $71
    ld [hl], c                                    ; $61B8: $71
    nop                                           ; $61B9: $00
    nop                                           ; $61BA: $00
    nop                                           ; $61BB: $00
    rra                                           ; $61BC: $1F
    nop                                           ; $61BD: $00
    ld [hl], l                                    ; $61BE: $75
    rra                                           ; $61BF: $1F
    ldh [rP1], a                                  ; $61C0: $E0 $00
    db $FC                                        ; $61C2: $FC
    ldh [$FFDF], a                                ; $61C3: $E0 $DF
    inc a                                         ; $61C5: $3C
    sbc b                                         ; $61C6: $98
    ld l, a                                       ; $61C7: $6F
    dec a                                         ; $61C8: $3D
    rst RST_30                                    ; $61C9: $F7
    rst RST_38                                    ; $61CA: $FF
    add a                                         ; $61CB: $87
    rst RST_38                                    ; $61CC: $FF
    inc sp                                        ; $61CD: $33
    rst RST_18                                    ; $61CE: $DF
    ld a, e                                       ; $61CF: $7B
    xor a                                         ; $61D0: $AF
    db $FD                                        ; $61D1: $FD
    ld e, a                                       ; $61D2: $5F
    db $FD                                        ; $61D3: $FD
    rst RST_38                                    ; $61D4: $FF
    ld sp, hl                                     ; $61D5: $F9
    rst RST_38                                    ; $61D6: $FF
    ldh [$FFE7], a                                ; $61D7: $E0 $E7
    ld bc, $070F                                  ; $61D9: $01 $0F $07
    ccf                                           ; $61DC: $3F
    ld c, $FF                                     ; $61DD: $0E $FF
    ld l, $00                                     ; $61DF: $2E $00
    nop                                           ; $61E1: $00
    nop                                           ; $61E2: $00
    nop                                           ; $61E3: $00
    add b                                         ; $61E4: $80
    nop                                           ; $61E5: $00
    ld h, b                                       ; $61E6: $60
    add b                                         ; $61E7: $80
    db $10                                        ; $61E8: $10
    ldh [rOBP0], a                                ; $61E9: $E0 $48
    ldh a, [$FFD4]                                ; $61EB: $F0 $D4
    ld hl, sp-$0E                                 ; $61ED: $F8 $F2
    db $FC                                        ; $61EF: $FC
    ldh a, [c]                                    ; $61F0: $F2
    db $FC                                        ; $61F1: $FC
    jp hl                                         ; $61F2: $E9


    cp $F9                                        ; $61F3: $FE $F9
    cp [hl]                                       ; $61F5: $BE
    pop af                                        ; $61F6: $F1
    ld a, [hl]                                    ; $61F7: $7E
    db $ED                                        ; $61F8: $ED
    cp $F9                                        ; $61F9: $FE $F9
    cp $FA                                        ; $61FB: $FE $FA
    cp h                                          ; $61FD: $BC
    ldh a, [c]                                    ; $61FE: $F2
    cp h                                          ; $61FF: $BC
    nop                                           ; $6200: $00
    nop                                           ; $6201: $00
    nop                                           ; $6202: $00
    nop                                           ; $6203: $00
    nop                                           ; $6204: $00
    nop                                           ; $6205: $00
    ret nz                                        ; $6206: $C0

    nop                                           ; $6207: $00
    ldh [rLCDC], a                                ; $6208: $E0 $40
    ld [hl], b                                    ; $620A: $70
    jr nz, jr_01D_627B                            ; $620B: $20 $6E

    jr nc, @+$3D                                  ; $620D: $30 $3B

    ld e, $1E                                     ; $620F: $1E $1E
    rlca                                          ; $6211: $07
    rlca                                          ; $6212: $07
    ld bc, $0001                                  ; $6213: $01 $01 $00
    nop                                           ; $6216: $00
    nop                                           ; $6217: $00
    nop                                           ; $6218: $00
    nop                                           ; $6219: $00
    nop                                           ; $621A: $00
    nop                                           ; $621B: $00
    nop                                           ; $621C: $00
    nop                                           ; $621D: $00
    nop                                           ; $621E: $00
    nop                                           ; $621F: $00
    ld [bc], a                                    ; $6220: $02
    ld bc, $0001                                  ; $6221: $01 $01 $00
    nop                                           ; $6224: $00
    nop                                           ; $6225: $00
    nop                                           ; $6226: $00
    nop                                           ; $6227: $00
    nop                                           ; $6228: $00
    nop                                           ; $6229: $00
    nop                                           ; $622A: $00
    nop                                           ; $622B: $00
    inc bc                                        ; $622C: $03
    nop                                           ; $622D: $00
    db $FD                                        ; $622E: $FD
    inc bc                                        ; $622F: $03
    ld d, l                                       ; $6230: $55
    rst RST_38                                    ; $6231: $FF
    xor d                                         ; $6232: $AA
    rst RST_38                                    ; $6233: $FF
    rst RST_38                                    ; $6234: $FF
    ccf                                           ; $6235: $3F
    ccf                                           ; $6236: $3F
    nop                                           ; $6237: $00
    nop                                           ; $6238: $00
    nop                                           ; $6239: $00
    nop                                           ; $623A: $00
    nop                                           ; $623B: $00
    nop                                           ; $623C: $00
    nop                                           ; $623D: $00
    nop                                           ; $623E: $00
    nop                                           ; $623F: $00
    ld [hl], h                                    ; $6240: $74
    and e                                         ; $6241: $A3
    rst RST_28                                    ; $6242: $EF
    ld [hl], a                                    ; $6243: $77
    ei                                            ; $6244: $FB
    ld [hl], a                                    ; $6245: $77
    ld a, a                                       ; $6246: $7F
    dec sp                                        ; $6247: $3B
    ccf                                           ; $6248: $3F
    jr jr_01D_628A                                ; $6249: $18 $3F

    rlca                                          ; $624B: $07
    rst RST_18                                    ; $624C: $DF
    add hl, sp                                    ; $624D: $39
    ld l, l                                       ; $624E: $6D
    ld a, [$FBBC]                                 ; $624F: $FA $BC $FB
    rst RST_38                                    ; $6252: $FF
    db $FC                                        ; $6253: $FC
    db $FD                                        ; $6254: $FD
    ld a, [$03FC]                                 ; $6255: $FA $FC $03
    inc bc                                        ; $6258: $03
    nop                                           ; $6259: $00
    ld bc, $0000                                  ; $625A: $01 $00 $00
    nop                                           ; $625D: $00
    nop                                           ; $625E: $00
    nop                                           ; $625F: $00
    rst RST_18                                    ; $6260: $DF
    and $FF                                       ; $6261: $E6 $FF
    sbc $FF                                       ; $6263: $DE $FF
    rst RST_18                                    ; $6265: $DF

jr_01D_6266:
    rst RST_38                                    ; $6266: $FF
    ccf                                           ; $6267: $3F
    rst RST_38                                    ; $6268: $FF
    cp [hl]                                       ; $6269: $BE
    rst RST_38                                    ; $626A: $FF
    cp c                                          ; $626B: $B9
    rst RST_38                                    ; $626C: $FF
    rst RST_10                                    ; $626D: $D7
    rst RST_38                                    ; $626E: $FF
    rst RST_30                                    ; $626F: $F7
    rst RST_38                                    ; $6270: $FF
    ld l, a                                       ; $6271: $6F
    rst RST_38                                    ; $6272: $FF
    adc a                                         ; $6273: $8F
    rst RST_38                                    ; $6274: $FF
    ld sp, hl                                     ; $6275: $F9
    rst RST_38                                    ; $6276: $FF
    ld a, e                                       ; $6277: $7B
    cp $C7                                        ; $6278: $FE $C7
    rst RST_00                                    ; $627A: $C7

jr_01D_627B:
    nop                                           ; $627B: $00
    nop                                           ; $627C: $00
    nop                                           ; $627D: $00
    nop                                           ; $627E: $00
    nop                                           ; $627F: $00
    ld a, a                                       ; $6280: $7F
    add l                                         ; $6281: $85
    ld e, a                                       ; $6282: $5F
    xor l                                         ; $6283: $AD
    rst RST_38                                    ; $6284: $FF
    ld bc, $FFFC                                  ; $6285: $01 $FC $FF
    rst RST_38                                    ; $6288: $FF
    ccf                                           ; $6289: $3F

jr_01D_628A:
    cp $CF                                        ; $628A: $FE $CF
    dec e                                         ; $628C: $1D
    or $CE                                        ; $628D: $F6 $CE
    ld hl, sp-$1C                                 ; $628F: $F8 $E4
    ld hl, sp-$7C                                 ; $6291: $F8 $84
    ld hl, sp-$34                                 ; $6293: $F8 $CC
    ld hl, sp-$68                                 ; $6295: $F8 $98
    ldh a, [rSVBK]                                ; $6297: $F0 $70
    add b                                         ; $6299: $80
    add b                                         ; $629A: $80
    nop                                           ; $629B: $00
    nop                                           ; $629C: $00
    nop                                           ; $629D: $00
    nop                                           ; $629E: $00
    nop                                           ; $629F: $00
    db $10                                        ; $62A0: $10
    ldh [$FFA0], a                                ; $62A1: $E0 $A0
    ret nz                                        ; $62A3: $C0

    jr nz, jr_01D_6266                            ; $62A4: $20 $C0

    ld b, b                                       ; $62A6: $40
    add b                                         ; $62A7: $80
    ld b, b                                       ; $62A8: $40
    add b                                         ; $62A9: $80
    add b                                         ; $62AA: $80
    nop                                           ; $62AB: $00
    nop                                           ; $62AC: $00
    nop                                           ; $62AD: $00
    nop                                           ; $62AE: $00
    nop                                           ; $62AF: $00
    nop                                           ; $62B0: $00
    nop                                           ; $62B1: $00
    nop                                           ; $62B2: $00
    nop                                           ; $62B3: $00
    nop                                           ; $62B4: $00
    nop                                           ; $62B5: $00
    nop                                           ; $62B6: $00

jr_01D_62B7:
    nop                                           ; $62B7: $00
    nop                                           ; $62B8: $00
    nop                                           ; $62B9: $00
    nop                                           ; $62BA: $00
    nop                                           ; $62BB: $00
    nop                                           ; $62BC: $00
    nop                                           ; $62BD: $00
    nop                                           ; $62BE: $00
    nop                                           ; $62BF: $00
    ld bc, $0700                                  ; $62C0: $01 $00 $07
    ld bc, $060F                                  ; $62C3: $01 $0F $06
    ld d, $0C                                     ; $62C6: $16 $0C
    inc a                                         ; $62C8: $3C
    jr jr_01D_6333                                ; $62C9: $18 $68

    jr nc, @+$4A                                  ; $62CB: $30 $48

    jr nc, jr_01D_62B7                            ; $62CD: $30 $E8

    ld [hl], b                                    ; $62CF: $70
    rst RST_00                                    ; $62D0: $C7
    ld a, b                                       ; $62D1: $78
    ret nc                                        ; $62D2: $D0

    ld a, a                                       ; $62D3: $7F
    ldh a, [c]                                    ; $62D4: $F2
    ld a, a                                       ; $62D5: $7F
    halt                                          ; $62D6: $76
    ccf                                           ; $62D7: $3F
    ld a, a                                       ; $62D8: $7F
    ccf                                           ; $62D9: $3F
    ccf                                           ; $62DA: $3F
    rrca                                          ; $62DB: $0F
    rrca                                          ; $62DC: $0F
    ld bc, $0001                                  ; $62DD: $01 $01 $00
    add b                                         ; $62E0: $80
    nop                                           ; $62E1: $00
    add b                                         ; $62E2: $80
    nop                                           ; $62E3: $00
    nop                                           ; $62E4: $00
    nop                                           ; $62E5: $00
    nop                                           ; $62E6: $00
    nop                                           ; $62E7: $00
    nop                                           ; $62E8: $00
    nop                                           ; $62E9: $00
    ld bc, $0F00                                  ; $62EA: $01 $00 $0F
    ld bc, $0F7C                                  ; $62ED: $01 $7C $0F
    ldh [$FF7F], a                                ; $62F0: $E0 $7F
    dec b                                         ; $62F2: $05
    rst RST_38                                    ; $62F3: $FF
    ld c, e                                       ; $62F4: $4B
    rst RST_38                                    ; $62F5: $FF
    rst RST_18                                    ; $62F6: $DF
    rst RST_38                                    ; $62F7: $FF
    cp $FF                                        ; $62F8: $FE $FF
    rst RST_38                                    ; $62FA: $FF
    db $FD                                        ; $62FB: $FD
    rst RST_38                                    ; $62FC: $FF
    db $FD                                        ; $62FD: $FD
    rst RST_38                                    ; $62FE: $FF
    dec e                                         ; $62FF: $1D
    inc bc                                        ; $6300: $03
    nop                                           ; $6301: $00
    ld e, $03                                     ; $6302: $1E $03
    ld [hl], b                                    ; $6304: $70
    rra                                           ; $6305: $1F
    ret                                           ; $6306: $C9


    ld a, a                                       ; $6307: $7F
    dec de                                        ; $6308: $1B
    rst RST_38                                    ; $6309: $FF
    ld a, a                                       ; $630A: $7F
    rst RST_38                                    ; $630B: $FF
    rst RST_30                                    ; $630C: $F7
    rst RST_38                                    ; $630D: $FF
    rst RST_38                                    ; $630E: $FF
    rst RST_38                                    ; $630F: $FF
    rst RST_38                                    ; $6310: $FF
    rst RST_18                                    ; $6311: $DF
    rst RST_38                                    ; $6312: $FF
    call z, $F6BF                                 ; $6313: $CC $BF $F6
    ld e, a                                       ; $6316: $5F
    ld a, [$FB3F]                                 ; $6317: $FA $3F $FB
    rra                                           ; $631A: $1F
    db $FC                                        ; $631B: $FC
    xor a                                         ; $631C: $AF
    db $FC                                        ; $631D: $FC
    rst RST_18                                    ; $631E: $DF
    db $FD                                        ; $631F: $FD
    db $FC                                        ; $6320: $FC
    nop                                           ; $6321: $00
    inc bc                                        ; $6322: $03
    db $FC                                        ; $6323: $FC
    sbc h                                         ; $6324: $9C
    rst RST_38                                    ; $6325: $FF
    cp b                                          ; $6326: $B8
    rst RST_38                                    ; $6327: $FF

jr_01D_6328:
    di                                            ; $6328: $F3
    rst RST_38                                    ; $6329: $FF
    or $FD                                        ; $632A: $F6 $FD
    rst RST_28                                    ; $632C: $EF
    ei                                            ; $632D: $FB
    db $FC                                        ; $632E: $FC
    rst RST_30                                    ; $632F: $F7
    cp $B7                                        ; $6330: $FE $B7
    rst RST_38                                    ; $6332: $FF

jr_01D_6333:
    or a                                          ; $6333: $B7
    ld hl, sp-$51                                 ; $6334: $F8 $AF
    db $FC                                        ; $6336: $FC
    rst RST_08                                    ; $6337: $CF
    call c, Call_01D_5E27                         ; $6338: $DC $27 $5E
    and e                                         ; $633B: $A3

jr_01D_633C:
    ld a, a                                       ; $633C: $7F
    add c                                         ; $633D: $81
    rst RST_38                                    ; $633E: $FF
    ld b, a                                       ; $633F: $47
    nop                                           ; $6340: $00
    nop                                           ; $6341: $00
    add b                                         ; $6342: $80
    nop                                           ; $6343: $00
    ldh [$FF80], a                                ; $6344: $E0 $80
    jr nc, jr_01D_6328                            ; $6346: $30 $E0

    jr @-$0E                                      ; $6348: $18 $F0

    jr c, jr_01D_633C                             ; $634A: $38 $F0

    inc e                                         ; $634C: $1C
    ld hl, sp+$1C                                 ; $634D: $F8 $1C
    ld hl, sp+$0E                                 ; $634F: $F8 $0E
    db $FC                                        ; $6351: $FC
    ld a, [de]                                    ; $6352: $1A
    db $FC                                        ; $6353: $FC
    inc bc                                        ; $6354: $03
    cp $A7                                        ; $6355: $FE $A7
    cp $E6                                        ; $6357: $FE $E6
    db $FC                                        ; $6359: $FC
    xor $F8                                       ; $635A: $EE $F8
    cp [hl]                                       ; $635C: $BE
    ldh a, [$FF5E]                                ; $635D: $F0 $5E
    db $FC                                        ; $635F: $FC
    ld l, $FC                                     ; $6360: $2E $FC
    ld a, $FC                                     ; $6362: $3E $FC
    inc e                                         ; $6364: $1C
    ld hl, sp-$44                                 ; $6365: $F8 $BC
    ld l, b                                       ; $6367: $68
    sbc h                                         ; $6368: $9C
    ld l, b                                       ; $6369: $68
    ld hl, sp-$10                                 ; $636A: $F8 $F0
    ld hl, sp+$70                                 ; $636C: $F8 $70
    ld [hl], b                                    ; $636E: $70
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
    db $F4                                        ; $6380: $F4
    and e                                         ; $6381: $A3
    or $63                                        ; $6382: $F6 $63
    and $C3                                       ; $6384: $E6 $C3
    jp nz, Jump_000_0301                          ; $6386: $C2 $01 $03

    ld bc, $0001                                  ; $6389: $01 $01 $00
    ret nz                                        ; $638C: $C0

    nop                                           ; $638D: $00
    jr nz, @-$3E                                  ; $638E: $20 $C0

    ldh [rP1], a                                  ; $6390: $E0 $00
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
    rst RST_28                                    ; $63A0: $EF
    db $FD                                        ; $63A1: $FD
    rst RST_38                                    ; $63A2: $FF
    ld a, [hl-]                                   ; $63A3: $3A
    rst RST_38                                    ; $63A4: $FF
    ld bc, $18FF                                  ; $63A5: $01 $FF $18
    cp $1C                                        ; $63A8: $FE $1C
    rst RST_38                                    ; $63AA: $FF
    ld c, $FF                                     ; $63AB: $0E $FF
    ld [$06F9], sp                                ; $63AD: $08 $F9 $06
    ld a, a                                       ; $63B0: $7F
    nop                                           ; $63B1: $00
    nop                                           ; $63B2: $00
    nop                                           ; $63B3: $00
    nop                                           ; $63B4: $00
    nop                                           ; $63B5: $00
    nop                                           ; $63B6: $00
    nop                                           ; $63B7: $00
    nop                                           ; $63B8: $00
    nop                                           ; $63B9: $00
    nop                                           ; $63BA: $00
    nop                                           ; $63BB: $00
    nop                                           ; $63BC: $00
    nop                                           ; $63BD: $00
    nop                                           ; $63BE: $00
    nop                                           ; $63BF: $00
    rra                                           ; $63C0: $1F
    ld bc, $0001                                  ; $63C1: $01 $01 $00
    ld bc, $0000                                  ; $63C4: $01 $00 $00
    nop                                           ; $63C7: $00
    nop                                           ; $63C8: $00
    nop                                           ; $63C9: $00
    ld bc, $0100                                  ; $63CA: $01 $00 $01
    nop                                           ; $63CD: $00
    ld bc, $0000                                  ; $63CE: $01 $00 $00
    nop                                           ; $63D1: $00
    nop                                           ; $63D2: $00
    nop                                           ; $63D3: $00
    nop                                           ; $63D4: $00
    nop                                           ; $63D5: $00
    nop                                           ; $63D6: $00
    nop                                           ; $63D7: $00
    nop                                           ; $63D8: $00
    nop                                           ; $63D9: $00
    nop                                           ; $63DA: $00
    nop                                           ; $63DB: $00
    nop                                           ; $63DC: $00
    nop                                           ; $63DD: $00
    nop                                           ; $63DE: $00
    nop                                           ; $63DF: $00
    ret nz                                        ; $63E0: $C0

    add b                                         ; $63E1: $80

jr_01D_63E2:
    ldh [rLCDC], a                                ; $63E2: $E0 $40
    ldh [rLCDC], a                                ; $63E4: $E0 $40
    or b                                          ; $63E6: $B0
    ld h, b                                       ; $63E7: $60
    ld a, b                                       ; $63E8: $78
    ldh [$FF3E], a                                ; $63E9: $E0 $3E
    ld hl, sp+$7F                                 ; $63EB: $F8 $7F
    ldh [$FF60], a                                ; $63ED: $E0 $60
    ret nz                                        ; $63EF: $C0

    ldh [$FFC0], a                                ; $63F0: $E0 $C0
    ldh a, [$FF80]                                ; $63F2: $F0 $80
    ld hl, sp-$20                                 ; $63F4: $F8 $E0
    db $FC                                        ; $63F6: $FC
    nop                                           ; $63F7: $00
    nop                                           ; $63F8: $00
    nop                                           ; $63F9: $00
    nop                                           ; $63FA: $00
    nop                                           ; $63FB: $00
    nop                                           ; $63FC: $00
    nop                                           ; $63FD: $00
    add b                                         ; $63FE: $80

Call_01D_63FF:
    nop                                           ; $63FF: $00
    ld bc, $0000                                  ; $6400: $01 $00 $00
    nop                                           ; $6403: $00
    nop                                           ; $6404: $00
    nop                                           ; $6405: $00
    nop                                           ; $6406: $00
    nop                                           ; $6407: $00
    jp Jump_000_3C00                              ; $6408: $C3 $00 $3C


    jp $FF00                                      ; $640B: $C3 $00 $FF


    ld b, b                                       ; $640E: $40
    rst RST_38                                    ; $640F: $FF
    db $FD                                        ; $6410: $FD
    ld a, a                                       ; $6411: $7F
    ldh a, [$FFBF]                                ; $6412: $F0 $BF
    rst RST_38                                    ; $6414: $FF
    cp a                                          ; $6415: $BF
    rst RST_38                                    ; $6416: $FF
    ret nc                                        ; $6417: $D0

    ldh a, [$FFC0]                                ; $6418: $F0 $C0
    db $FC                                        ; $641A: $FC
    nop                                           ; $641B: $00
    inc bc                                        ; $641C: $03
    db $FC                                        ; $641D: $FC
    rst RST_38                                    ; $641E: $FF
    nop                                           ; $641F: $00
    jr nz, jr_01D_63E2                            ; $6420: $20 $C0

    ld hl, sp-$20                                 ; $6422: $F8 $E0
    adc [hl]                                      ; $6424: $8E
    ld hl, sp+$05                                 ; $6425: $F8 $05
    ld a, [$FD8E]                                 ; $6427: $FA $8E $FD
    ld b, $FD                                     ; $642A: $06 $FD
    xor $FD                                       ; $642C: $EE $FD
    rlca                                          ; $642E: $07
    db $FC                                        ; $642F: $FC
    rst RST_18                                    ; $6430: $DF
    db $FD                                        ; $6431: $FD
    adc a                                         ; $6432: $8F
    ei                                            ; $6433: $FB
    rst RST_38                                    ; $6434: $FF
    ei                                            ; $6435: $FB
    rst RST_38                                    ; $6436: $FF
    or $FF                                        ; $6437: $F6 $FF
    dec a                                         ; $6439: $3D
    ccf                                           ; $643A: $3F
    nop                                           ; $643B: $00
    add hl, bc                                    ; $643C: $09
    ld b, $0F                                     ; $643D: $06 $0F
    nop                                           ; $643F: $00
    add b                                         ; $6440: $80
    rst RST_38                                    ; $6441: $FF
    rst RST_30                                    ; $6442: $F7
    rst RST_38                                    ; $6443: $FF
    pop af                                        ; $6444: $F1
    cp a                                          ; $6445: $BF
    db $E3                                        ; $6446: $E3
    cp [hl]                                       ; $6447: $BE
    rst RST_38                                    ; $6448: $FF
    ld a, l                                       ; $6449: $7D
    rst RST_38                                    ; $644A: $FF
    ld a, l                                       ; $644B: $7D
    rst RST_38                                    ; $644C: $FF
    ld a, e                                       ; $644D: $7B
    rst RST_38                                    ; $644E: $FF
    ld a, e                                       ; $644F: $7B
    rst RST_38                                    ; $6450: $FF
    cp e                                          ; $6451: $BB
    rst RST_38                                    ; $6452: $FF
    cp l                                          ; $6453: $BD
    rst RST_38                                    ; $6454: $FF
    ld c, l                                       ; $6455: $4D
    rst RST_28                                    ; $6456: $EF
    ret nz                                        ; $6457: $C0

    ldh a, [$FFC0]                                ; $6458: $F0 $C0
    db $FC                                        ; $645A: $FC
    ldh a, [rIE]                                  ; $645B: $F0 $FF
    nop                                           ; $645D: $00
    nop                                           ; $645E: $00
    nop                                           ; $645F: $00
    rst RST_38                                    ; $6460: $FF
    ld a, a                                       ; $6461: $7F
    rst RST_38                                    ; $6462: $FF
    ld e, $3F                                     ; $6463: $1E $3F
    ld c, $7F                                     ; $6465: $0E $7F
    ld [hl], $FF                                  ; $6467: $36 $FF
    ld h, c                                       ; $6469: $61
    ld l, e                                       ; $646A: $6B
    sub h                                         ; $646B: $94
    sbc a                                         ; $646C: $9F
    inc bc                                        ; $646D: $03
    dec bc                                        ; $646E: $0B
    rlca                                          ; $646F: $07
    dec b                                         ; $6470: $05
    inc bc                                        ; $6471: $03
    inc bc                                        ; $6472: $03
    ld bc, $0001                                  ; $6473: $01 $01 $00
    inc bc                                        ; $6476: $03
    nop                                           ; $6477: $00
    ccf                                           ; $6478: $3F
    inc bc                                        ; $6479: $03
    ld d, e                                       ; $647A: $53
    dec l                                         ; $647B: $2D
    ld a, a                                       ; $647C: $7F
    nop                                           ; $647D: $00
    nop                                           ; $647E: $00
    nop                                           ; $647F: $00
    cp $18                                        ; $6480: $FE $18
    rst RST_18                                    ; $6482: $DF
    ld h, $7C                                     ; $6483: $26 $7C
    adc a                                         ; $6485: $8F
    cp d                                          ; $6486: $BA
    rst RST_38                                    ; $6487: $FF
    rst RST_00                                    ; $6488: $C7
    ld a, a                                       ; $6489: $7F
    rst RST_38                                    ; $648A: $FF
    inc bc                                        ; $648B: $03
    ccf                                           ; $648C: $3F
    inc c                                         ; $648D: $0C
    scf                                           ; $648E: $37
    ld e, $EB                                     ; $648F: $1E $EB
    rra                                           ; $6491: $1F
    ld d, a                                       ; $6492: $57
    cp a                                          ; $6493: $BF
    rst RST_38                                    ; $6494: $FF
    ld a, $FE                                     ; $6495: $3E $FE
    ld a, b                                       ; $6497: $78
    ei                                            ; $6498: $FB
    ldh [$FFE5], a                                ; $6499: $E0 $E5
    add d                                         ; $649B: $82
    push af                                       ; $649C: $F5
    jp nz, Jump_000_00FA                          ; $649D: $C2 $FA $00

    cp l                                          ; $64A0: $BD
    ld c, a                                       ; $64A1: $4F
    xor a                                         ; $64A2: $AF
    ld d, e                                       ; $64A3: $53
    ld l, e                                       ; $64A4: $6B
    dec d                                         ; $64A5: $15
    dec de                                        ; $64A6: $1B
    inc b                                         ; $64A7: $04
    ld b, $01                                     ; $64A8: $06 $01
    ld bc, $0000                                  ; $64AA: $01 $00 $00
    nop                                           ; $64AD: $00
    nop                                           ; $64AE: $00
    nop                                           ; $64AF: $00
    nop                                           ; $64B0: $00
    nop                                           ; $64B1: $00
    ld bc, $0100                                  ; $64B2: $01 $00 $01
    nop                                           ; $64B5: $00
    ld b, $01                                     ; $64B6: $06 $01
    dec bc                                        ; $64B8: $0B
    inc b                                         ; $64B9: $04
    rrca                                          ; $64BA: $0F
    inc bc                                        ; $64BB: $03
    rlca                                          ; $64BC: $07
    inc bc                                        ; $64BD: $03
    inc bc                                        ; $64BE: $03
    nop                                           ; $64BF: $00
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
    nop                                           ; $64D2: $00
    nop                                           ; $64D3: $00
    nop                                           ; $64D4: $00
    nop                                           ; $64D5: $00
    ccf                                           ; $64D6: $3F
    nop                                           ; $64D7: $00
    ld a, a                                       ; $64D8: $7F
    ccf                                           ; $64D9: $3F
    ld b, e                                       ; $64DA: $43
    inc a                                         ; $64DB: $3C
    push de                                       ; $64DC: $D5
    ld l, a                                       ; $64DD: $6F
    db $FC                                        ; $64DE: $FC
    ccf                                           ; $64DF: $3F
    nop                                           ; $64E0: $00
    nop                                           ; $64E1: $00
    nop                                           ; $64E2: $00
    nop                                           ; $64E3: $00
    nop                                           ; $64E4: $00
    nop                                           ; $64E5: $00
    nop                                           ; $64E6: $00
    nop                                           ; $64E7: $00
    nop                                           ; $64E8: $00
    nop                                           ; $64E9: $00
    nop                                           ; $64EA: $00
    nop                                           ; $64EB: $00
    nop                                           ; $64EC: $00
    nop                                           ; $64ED: $00
    nop                                           ; $64EE: $00
    nop                                           ; $64EF: $00
    nop                                           ; $64F0: $00
    nop                                           ; $64F1: $00
    nop                                           ; $64F2: $00
    nop                                           ; $64F3: $00
    nop                                           ; $64F4: $00
    nop                                           ; $64F5: $00
    rst RST_38                                    ; $64F6: $FF
    nop                                           ; $64F7: $00
    cp $F8                                        ; $64F8: $FE $F8
    ld hl, sp+$00                                 ; $64FA: $F8 $00
    ldh [rP1], a                                  ; $64FC: $E0 $00
    ld hl, sp-$20                                 ; $64FE: $F8 $E0
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
    nop                                           ; $650C: $00
    nop                                           ; $650D: $00
    nop                                           ; $650E: $00
    nop                                           ; $650F: $00
    nop                                           ; $6510: $00
    nop                                           ; $6511: $00
    rst RST_38                                    ; $6512: $FF
    nop                                           ; $6513: $00
    nop                                           ; $6514: $00
    rst RST_38                                    ; $6515: $FF
    ldh [rIE], a                                  ; $6516: $E0 $FF
    ret nz                                        ; $6518: $C0

    rst RST_38                                    ; $6519: $FF

jr_01D_651A:
    rst RST_38                                    ; $651A: $FF
    ld a, a                                       ; $651B: $7F
    db $FC                                        ; $651C: $FC
    rst RST_38                                    ; $651D: $FF
    rst RST_38                                    ; $651E: $FF
    rst RST_38                                    ; $651F: $FF
    nop                                           ; $6520: $00
    nop                                           ; $6521: $00
    nop                                           ; $6522: $00
    nop                                           ; $6523: $00
    nop                                           ; $6524: $00
    nop                                           ; $6525: $00
    nop                                           ; $6526: $00
    nop                                           ; $6527: $00
    nop                                           ; $6528: $00
    nop                                           ; $6529: $00
    nop                                           ; $652A: $00
    nop                                           ; $652B: $00
    nop                                           ; $652C: $00
    nop                                           ; $652D: $00
    nop                                           ; $652E: $00
    nop                                           ; $652F: $00
    nop                                           ; $6530: $00
    nop                                           ; $6531: $00
    db $FC                                        ; $6532: $FC
    nop                                           ; $6533: $00
    db $10                                        ; $6534: $10
    ldh [$FFE0], a                                ; $6535: $E0 $E0
    nop                                           ; $6537: $00
    jr jr_01D_651A                                ; $6538: $18 $E0

    add a                                         ; $653A: $87
    ld hl, sp+$00                                 ; $653B: $F8 $00
    rst RST_38                                    ; $653D: $FF
    ldh a, [rIE]                                  ; $653E: $F0 $FF
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
    nop                                           ; $654E: $00
    nop                                           ; $654F: $00
    nop                                           ; $6550: $00
    nop                                           ; $6551: $00
    nop                                           ; $6552: $00
    nop                                           ; $6553: $00
    nop                                           ; $6554: $00
    nop                                           ; $6555: $00
    nop                                           ; $6556: $00
    nop                                           ; $6557: $00
    nop                                           ; $6558: $00
    nop                                           ; $6559: $00
    cp $00                                        ; $655A: $FE $00
    inc c                                         ; $655C: $0C
    ldh a, [$FFF0]                                ; $655D: $F0 $F0
    nop                                           ; $655F: $00
    nop                                           ; $6560: $00
    nop                                           ; $6561: $00
    nop                                           ; $6562: $00
    nop                                           ; $6563: $00
    nop                                           ; $6564: $00
    nop                                           ; $6565: $00
    nop                                           ; $6566: $00
    nop                                           ; $6567: $00

jr_01D_6568:
    nop                                           ; $6568: $00
    nop                                           ; $6569: $00
    nop                                           ; $656A: $00
    nop                                           ; $656B: $00
    nop                                           ; $656C: $00
    nop                                           ; $656D: $00
    nop                                           ; $656E: $00
    nop                                           ; $656F: $00
    nop                                           ; $6570: $00
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
    nop                                           ; $6580: $00
    nop                                           ; $6581: $00
    ld bc, $1700                                  ; $6582: $01 $00 $17
    nop                                           ; $6585: $00
    ld a, $01                                     ; $6586: $3E $01
    ld l, d                                       ; $6588: $6A
    dec d                                         ; $6589: $15

jr_01D_658A:
    call z, $CA33                                 ; $658A: $CC $33 $CA
    dec [hl]                                      ; $658D: $35

jr_01D_658E:
    call z, $EA33                                 ; $658E: $CC $33 $EA
    dec d                                         ; $6591: $15
    ld l, [hl]                                    ; $6592: $6E
    ld de, $146B                                  ; $6593: $11 $6B $14
    push bc                                       ; $6596: $C5
    ld a, [hl-]                                   ; $6597: $3A
    jp $C13C                                      ; $6598: $C3 $3C $C1


    ld a, $C0                                     ; $659B: $3E $C0
    ccf                                           ; $659D: $3F
    ret nz                                        ; $659E: $C0

    ccf                                           ; $659F: $3F
    nop                                           ; $65A0: $00
    nop                                           ; $65A1: $00
    ret nz                                        ; $65A2: $C0

    nop                                           ; $65A3: $00
    ldh [rP1], a                                  ; $65A4: $E0 $00
    jr nc, jr_01D_6568                            ; $65A6: $30 $C0

    jr jr_01D_658A                                ; $65A8: $18 $E0

    ld e, b                                       ; $65AA: $58

jr_01D_65AB:
    and b                                         ; $65AB: $A0
    jr jr_01D_658E                                ; $65AC: $18 $E0

    jr @-$1E                                      ; $65AE: $18 $E0

    inc c                                         ; $65B0: $0C
    ldh a, [$FF2C]                                ; $65B1: $F0 $2C
    ret nc                                        ; $65B3: $D0

    ld l, h                                       ; $65B4: $6C
    sub b                                         ; $65B5: $90
    ld d, [hl]                                    ; $65B6: $56
    xor b                                         ; $65B7: $A8
    ld [hl], $C8                                  ; $65B8: $36 $C8
    sub [hl]                                      ; $65BA: $96
    ld l, b                                       ; $65BB: $68
    add [hl]                                      ; $65BC: $86
    ld a, b                                       ; $65BD: $78
    adc [hl]                                      ; $65BE: $8E
    ld [hl], b                                    ; $65BF: $70
    inc c                                         ; $65C0: $0C
    inc bc                                        ; $65C1: $03
    ld c, $01                                     ; $65C2: $0E $01
    rlca                                          ; $65C4: $07
    nop                                           ; $65C5: $00
    inc bc                                        ; $65C6: $03
    nop                                           ; $65C7: $00
    ld bc, $0300                                  ; $65C8: $01 $00 $03
    nop                                           ; $65CB: $00
    inc bc                                        ; $65CC: $03
    nop                                           ; $65CD: $00
    inc bc                                        ; $65CE: $03
    nop                                           ; $65CF: $00
    inc bc                                        ; $65D0: $03
    nop                                           ; $65D1: $00
    ld b, $01                                     ; $65D2: $06 $01
    ld b, $01                                     ; $65D4: $06 $01
    ld b, $01                                     ; $65D6: $06 $01
    ld b, $01                                     ; $65D8: $06 $01
    ld b, $01                                     ; $65DA: $06 $01
    dec c                                         ; $65DC: $0D
    ld [bc], a                                    ; $65DD: $02
    db $FD                                        ; $65DE: $FD
    ld [bc], a                                    ; $65DF: $02
    db $10                                        ; $65E0: $10
    rst RST_28                                    ; $65E1: $EF
    jr c, jr_01D_65AB                             ; $65E2: $38 $C7

    ret                                           ; $65E4: $C9


    ld [hl], $81                                  ; $65E5: $36 $81
    ld a, [hl]                                    ; $65E7: $7E
    add c                                         ; $65E8: $81
    ld a, [hl]                                    ; $65E9: $7E
    ld bc, $01FE                                  ; $65EA: $01 $FE $01
    cp $01                                        ; $65ED: $FE $01
    cp $00                                        ; $65EF: $FE $00
    rst RST_38                                    ; $65F1: $FF
    nop                                           ; $65F2: $00
    rst RST_38                                    ; $65F3: $FF
    nop                                           ; $65F4: $00
    rst RST_38                                    ; $65F5: $FF
    nop                                           ; $65F6: $00
    rst RST_38                                    ; $65F7: $FF
    nop                                           ; $65F8: $00
    rst RST_38                                    ; $65F9: $FF
    jr nz, @-$1F                                  ; $65FA: $20 $DF

    jr z, @-$27                                   ; $65FC: $28 $D7

    jr z, @-$27                                   ; $65FE: $28 $D7

    inc c                                         ; $6600: $0C
    ldh a, [$FF0C]                                ; $6601: $F0 $0C
    ldh a, [rTMA]                                 ; $6603: $F0 $06
    ld hl, sp+$06                                 ; $6605: $F8 $06
    ld hl, sp+$06                                 ; $6607: $F8 $06
    ld hl, sp+$06                                 ; $6609: $F8 $06
    ld hl, sp+$0E                                 ; $660B: $F8 $0E
    ldh a, [rNR32]                                ; $660D: $F0 $1C
    ldh [rNR52], a                                ; $660F: $E0 $26
    ret c                                         ; $6611: $D8

    ld b, $F8                                     ; $6612: $06 $F8
    db $E3                                        ; $6614: $E3
    inc e                                         ; $6615: $1C

jr_01D_6616:
    di                                            ; $6616: $F3
    inc c                                         ; $6617: $0C
    di                                            ; $6618: $F3
    inc c                                         ; $6619: $0C
    ei                                            ; $661A: $FB
    inc b                                         ; $661B: $04
    daa                                           ; $661C: $27
    ret c                                         ; $661D: $D8

    rst RST_38                                    ; $661E: $FF
    nop                                           ; $661F: $00
    ld hl, $C2DE                                  ; $6620: $21 $DE $C2
    dec a                                         ; $6623: $3D
    add h                                         ; $6624: $84
    ld a, e                                       ; $6625: $7B
    inc b                                         ; $6626: $04
    ei                                            ; $6627: $FB
    ld [$88F7], sp                                ; $6628: $08 $F7 $88
    ld [hl], a                                    ; $662B: $77
    adc b                                         ; $662C: $88
    ld [hl], a                                    ; $662D: $77
    ld c, b                                       ; $662E: $48
    or a                                          ; $662F: $B7
    inc [hl]                                      ; $6630: $34
    set 1, [hl]                                   ; $6631: $CB $CE
    ld sp, $F807                                  ; $6633: $31 $07 $F8
    rra                                           ; $6636: $1F
    ldh [$FF7C], a                                ; $6637: $E0 $7C
    add b                                         ; $6639: $80
    pop af                                        ; $663A: $F1
    nop                                           ; $663B: $00
    jp Jump_000_0300                              ; $663C: $C3 $00 $03


    nop                                           ; $663F: $00
    rst RST_28                                    ; $6640: $EF
    db $10                                        ; $6641: $10
    ld c, d                                       ; $6642: $4A
    or l                                          ; $6643: $B5
    db $FD                                        ; $6644: $FD
    ld [bc], a                                    ; $6645: $02
    pop hl                                        ; $6646: $E1
    ld e, $61                                     ; $6647: $1E $61
    ld e, $E0                                     ; $6649: $1E $E0
    rra                                           ; $664B: $1F
    ldh [$FF1F], a                                ; $664C: $E0 $1F
    ld [hl+], a                                   ; $664E: $22
    db $DD                                        ; $664F: $DD
    ld [de], a                                    ; $6650: $12
    db $ED                                        ; $6651: $ED
    add hl, bc                                    ; $6652: $09
    or $89                                        ; $6653: $F6 $89
    halt                                          ; $6655: $76
    ldh a, [c]                                    ; $6656: $F2
    dec c                                         ; $6657: $0D
    jp nz, Jump_000_273D                          ; $6658: $C2 $3D $27

    ret c                                         ; $665B: $D8

    rst RST_38                                    ; $665C: $FF
    nop                                           ; $665D: $00
    db $FC                                        ; $665E: $FC
    nop                                           ; $665F: $00
    rlca                                          ; $6660: $07
    nop                                           ; $6661: $00
    dec c                                         ; $6662: $0D
    ld [bc], a                                    ; $6663: $02
    rrca                                          ; $6664: $0F
    nop                                           ; $6665: $00
    rlca                                          ; $6666: $07
    nop                                           ; $6667: $00
    nop                                           ; $6668: $00
    nop                                           ; $6669: $00
    rlca                                          ; $666A: $07
    nop                                           ; $666B: $00
    rra                                           ; $666C: $1F
    nop                                           ; $666D: $00
    jr c, jr_01D_6677                             ; $666E: $38 $07

    ld h, b                                       ; $6670: $60
    rra                                           ; $6671: $1F
    ret nz                                        ; $6672: $C0

    ccf                                           ; $6673: $3F
    rst RST_08                                    ; $6674: $CF
    jr nc, jr_01D_6616                            ; $6675: $30 $9F

jr_01D_6677:
    ld h, b                                       ; $6677: $60
    cp a                                          ; $6678: $BF
    ld b, b                                       ; $6679: $40

jr_01D_667A:
    db $FD                                        ; $667A: $FD
    ld [bc], a                                    ; $667B: $02
    rst RST_28                                    ; $667C: $EF
    nop                                           ; $667D: $00
    rrca                                          ; $667E: $0F
    nop                                           ; $667F: $00
    ld bc, $0100                                  ; $6680: $01 $00 $01
    nop                                           ; $6683: $00
    ld bc, $0100                                  ; $6684: $01 $00 $01
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

jr_01D_669C:
    nop                                           ; $669C: $00
    nop                                           ; $669D: $00
    nop                                           ; $669E: $00
    nop                                           ; $669F: $00
    ret nz                                        ; $66A0: $C0

    nop                                           ; $66A1: $00
    ret nz                                        ; $66A2: $C0

    nop                                           ; $66A3: $00
    ret nz                                        ; $66A4: $C0

    nop                                           ; $66A5: $00
    ret nz                                        ; $66A6: $C0

    nop                                           ; $66A7: $00
    add b                                         ; $66A8: $80
    nop                                           ; $66A9: $00
    add b                                         ; $66AA: $80
    nop                                           ; $66AB: $00
    add b                                         ; $66AC: $80
    nop                                           ; $66AD: $00
    add b                                         ; $66AE: $80
    nop                                           ; $66AF: $00
    ret nz                                        ; $66B0: $C0

    nop                                           ; $66B1: $00
    ret nz                                        ; $66B2: $C0

    nop                                           ; $66B3: $00
    ret nz                                        ; $66B4: $C0

    nop                                           ; $66B5: $00
    ld h, b                                       ; $66B6: $60
    add b                                         ; $66B7: $80
    jr nc, jr_01D_667A                            ; $66B8: $30 $C0

    jr jr_01D_669C                                ; $66BA: $18 $E0

    inc c                                         ; $66BC: $0C
    ldh a, [rTMA]                                 ; $66BD: $F0 $06
    ld hl, sp-$10                                 ; $66BF: $F8 $F0
    nop                                           ; $66C1: $00
    cp $F0                                        ; $66C2: $FE $F0
    db $ED                                        ; $66C4: $ED
    ld a, $C6                                     ; $66C5: $3E $C6
    ccf                                           ; $66C7: $3F
    cp a                                          ; $66C8: $BF
    ld b, e                                       ; $66C9: $43
    ld e, a                                       ; $66CA: $5F
    xor h                                         ; $66CB: $AC
    rst RST_10                                    ; $66CC: $D7
    ld l, $6B                                     ; $66CD: $2E $6B
    sbc a                                         ; $66CF: $9F
    rst RST_10                                    ; $66D0: $D7
    ccf                                           ; $66D1: $3F
    rst RST_38                                    ; $66D2: $FF
    rst RST_38                                    ; $66D3: $FF
    ld a, a                                       ; $66D4: $7F
    cp $FF                                        ; $66D5: $FE $FF
    ld a, c                                       ; $66D7: $79
    ld a, c                                       ; $66D8: $79
    nop                                           ; $66D9: $00
    ld bc, $0000                                  ; $66DA: $01 $00 $00
    nop                                           ; $66DD: $00
    nop                                           ; $66DE: $00
    nop                                           ; $66DF: $00
    ld bc, $0100                                  ; $66E0: $01 $00 $01
    nop                                           ; $66E3: $00
    ccf                                           ; $66E4: $3F
    ld bc, $17EF                                  ; $66E5: $01 $EF $17
    ccf                                           ; $66E8: $3F
    ret nz                                        ; $66E9: $C0

    jp nz, $0201                                  ; $66EA: $C2 $01 $02

    ld bc, $0102                                  ; $66ED: $01 $02 $01
    ld a, a                                       ; $66F0: $7F
    ld bc, $7DD7                                  ; $66F1: $01 $D7 $7D
    ld l, e                                       ; $66F4: $6B
    cp $FD                                        ; $66F5: $FE $FD
    rst RST_38                                    ; $66F7: $FF
    rst RST_38                                    ; $66F8: $FF
    rlca                                          ; $66F9: $07
    rlca                                          ; $66FA: $07
    nop                                           ; $66FB: $00
    ccf                                           ; $66FC: $3F
    inc bc                                        ; $66FD: $03
    ld d, e                                       ; $66FE: $53
    dec l                                         ; $66FF: $2D
    ld a, a                                       ; $6700: $7F
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
    nop                                           ; $6718: $00
    nop                                           ; $6719: $00
    nop                                           ; $671A: $00
    nop                                           ; $671B: $00
    nop                                           ; $671C: $00
    nop                                           ; $671D: $00
    nop                                           ; $671E: $00
    nop                                           ; $671F: $00
    ld bc, $0700                                  ; $6720: $01 $00 $07
    ld bc, $067F                                  ; $6723: $01 $7F $06
    add [hl]                                      ; $6726: $86
    ld a, c                                       ; $6727: $79
    ld l, e                                       ; $6728: $6B
    call c, $FF15                                 ; $6729: $DC $15 $FF
    rst RST_38                                    ; $672C: $FF
    cp $FF                                        ; $672D: $FE $FF
    nop                                           ; $672F: $00
    ld d, l                                       ; $6730: $55
    ld a, [hl+]                                   ; $6731: $2A
    ld a, a                                       ; $6732: $7F
    nop                                           ; $6733: $00
    bit 7, a                                      ; $6734: $CB $7F
    ld a, a                                       ; $6736: $7F
    inc a                                         ; $6737: $3C
    inc a                                         ; $6738: $3C
    nop                                           ; $6739: $00
    nop                                           ; $673A: $00
    nop                                           ; $673B: $00
    nop                                           ; $673C: $00
    nop                                           ; $673D: $00
    nop                                           ; $673E: $00
    nop                                           ; $673F: $00
    nop                                           ; $6740: $00
    nop                                           ; $6741: $00
    nop                                           ; $6742: $00
    nop                                           ; $6743: $00
    nop                                           ; $6744: $00
    nop                                           ; $6745: $00
    nop                                           ; $6746: $00
    nop                                           ; $6747: $00
    ld bc, $0000                                  ; $6748: $01 $00 $00
    nop                                           ; $674B: $00
    nop                                           ; $674C: $00
    nop                                           ; $674D: $00
    nop                                           ; $674E: $00
    nop                                           ; $674F: $00
    nop                                           ; $6750: $00
    nop                                           ; $6751: $00
    ld bc, $0200                                  ; $6752: $01 $00 $02
    ld bc, $0307                                  ; $6755: $01 $07 $03
    dec b                                         ; $6758: $05
    inc bc                                        ; $6759: $03
    rrca                                          ; $675A: $0F
    ld b, $0A                                     ; $675B: $06 $0A
    inc b                                         ; $675D: $04
    inc c                                         ; $675E: $0C
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
    ld bc, $0100                                  ; $677A: $01 $00 $01
    nop                                           ; $677D: $00
    ld bc, $8000                                  ; $677E: $01 $00 $80
    nop                                           ; $6781: $00
    ld b, b                                       ; $6782: $40
    add b                                         ; $6783: $80
    and b                                         ; $6784: $A0
    ret nz                                        ; $6785: $C0

    sub b                                         ; $6786: $90
    ldh [$FFE8], a                                ; $6787: $E0 $E8
    ldh a, [$FFC6]                                ; $6789: $F0 $C6
    ld a, b                                       ; $678B: $78
    ld sp, hl                                     ; $678C: $F9
    ld a, [hl]                                    ; $678D: $7E
    ldh a, [$FF7F]                                ; $678E: $F0 $7F
    cp $FF                                        ; $6790: $FE $FF
    db $FC                                        ; $6792: $FC
    rst RST_38                                    ; $6793: $FF
    rst RST_38                                    ; $6794: $FF
    rst RST_38                                    ; $6795: $FF
    rst RST_38                                    ; $6796: $FF
    db $FD                                        ; $6797: $FD
    rst RST_38                                    ; $6798: $FF
    ld a, l                                       ; $6799: $7D
    rst RST_38                                    ; $679A: $FF
    halt                                          ; $679B: $76
    rst RST_38                                    ; $679C: $FF
    cp e                                          ; $679D: $BB
    rst RST_38                                    ; $679E: $FF
    cp l                                          ; $679F: $BD
    rst RST_38                                    ; $67A0: $FF
    add e                                         ; $67A1: $83
    rst RST_10                                    ; $67A2: $D7
    ld a, [hl+]                                   ; $67A3: $2A
    ld a, a                                       ; $67A4: $7F
    pop bc                                        ; $67A5: $C1
    rst RST_38                                    ; $67A6: $FF
    rst RST_28                                    ; $67A7: $EF
    rst RST_38                                    ; $67A8: $FF
    rst RST_28                                    ; $67A9: $EF
    rst RST_38                                    ; $67AA: $FF
    rst RST_30                                    ; $67AB: $F7

jr_01D_67AC:
    rst RST_38                                    ; $67AC: $FF
    rst RST_30                                    ; $67AD: $F7
    rst RST_38                                    ; $67AE: $FF
    db $DB                                        ; $67AF: $DB
    rst RST_38                                    ; $67B0: $FF
    call c, Call_01D_63FF                         ; $67B1: $DC $FF $63
    rst RST_38                                    ; $67B4: $FF
    ld l, a                                       ; $67B5: $6F
    rst RST_38                                    ; $67B6: $FF
    sbc $FE                                       ; $67B7: $DE $FE
    ret c                                         ; $67B9: $D8

    ld hl, sp-$80                                 ; $67BA: $F8 $80
    add b                                         ; $67BC: $80
    nop                                           ; $67BD: $00
    nop                                           ; $67BE: $00
    nop                                           ; $67BF: $00
    add b                                         ; $67C0: $80
    nop                                           ; $67C1: $00
    ld b, b                                       ; $67C2: $40
    add b                                         ; $67C3: $80
    ld b, b                                       ; $67C4: $40
    add b                                         ; $67C5: $80
    and b                                         ; $67C6: $A0
    ret nz                                        ; $67C7: $C0

    jr nz, @-$3E                                  ; $67C8: $20 $C0

    jr jr_01D_67AC                                ; $67CA: $18 $E0

    db $EC                                        ; $67CC: $EC
    ld hl, sp-$3E                                 ; $67CD: $F8 $C2
    ld a, h                                       ; $67CF: $7C
    db $DD                                        ; $67D0: $DD
    cp [hl]                                       ; $67D1: $BE
    ld hl, sp+$6F                                 ; $67D2: $F8 $6F
    ldh a, [$FFDF]                                ; $67D4: $F0 $DF
    pop hl                                        ; $67D6: $E1
    cp a                                          ; $67D7: $BF
    res 7, a                                      ; $67D8: $CB $BF
    rst RST_08                                    ; $67DA: $CF
    ld a, a                                       ; $67DB: $7F
    rst RST_18                                    ; $67DC: $DF
    ld a, a                                       ; $67DD: $7F
    rst RST_18                                    ; $67DE: $DF
    ld a, a                                       ; $67DF: $7F
    rst RST_38                                    ; $67E0: $FF
    ld a, [hl]                                    ; $67E1: $7E
    rst RST_38                                    ; $67E2: $FF
    cp l                                          ; $67E3: $BD
    rst RST_38                                    ; $67E4: $FF
    rra                                           ; $67E5: $1F
    rst RST_18                                    ; $67E6: $DF
    add c                                         ; $67E7: $81
    add c                                         ; $67E8: $81
    nop                                           ; $67E9: $00
    ld bc, $0F00                                  ; $67EA: $01 $00 $0F
    nop                                           ; $67ED: $00
    ld [de], a                                    ; $67EE: $12
    dec c                                         ; $67EF: $0D
    rra                                           ; $67F0: $1F
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
    add b                                         ; $6800: $80
    nop                                           ; $6801: $00
    add b                                         ; $6802: $80
    nop                                           ; $6803: $00
    ld b, b                                       ; $6804: $40
    add b                                         ; $6805: $80
    ret nz                                        ; $6806: $C0

    add b                                         ; $6807: $80
    ret nz                                        ; $6808: $C0

    add b                                         ; $6809: $80
    ret nz                                        ; $680A: $C0

    add b                                         ; $680B: $80
    add b                                         ; $680C: $80
    nop                                           ; $680D: $00
    add b                                         ; $680E: $80
    nop                                           ; $680F: $00
    ret nz                                        ; $6810: $C0

    add b                                         ; $6811: $80
    ret nz                                        ; $6812: $C0

    add b                                         ; $6813: $80
    ldh [$FFC0], a                                ; $6814: $E0 $C0
    ldh [$FFC0], a                                ; $6816: $E0 $C0
    ldh [$FFC0], a                                ; $6818: $E0 $C0
    ldh [rLCDC], a                                ; $681A: $E0 $40
    ld h, b                                       ; $681C: $60
    add b                                         ; $681D: $80
    ret nz                                        ; $681E: $C0

    nop                                           ; $681F: $00
    ldh a, [rP1]                                  ; $6820: $F0 $00
    cp $F0                                        ; $6822: $FE $F0
    db $ED                                        ; $6824: $ED
    ld a, $C6                                     ; $6825: $3E $C6
    ccf                                           ; $6827: $3F
    cp a                                          ; $6828: $BF
    ld b, e                                       ; $6829: $43
    ld e, a                                       ; $682A: $5F
    xor h                                         ; $682B: $AC
    rst RST_10                                    ; $682C: $D7
    ld l, $6B                                     ; $682D: $2E $6B
    sbc a                                         ; $682F: $9F
    rst RST_10                                    ; $6830: $D7
    ccf                                           ; $6831: $3F
    rst RST_38                                    ; $6832: $FF
    rst RST_38                                    ; $6833: $FF
    ld a, a                                       ; $6834: $7F
    cp $FF                                        ; $6835: $FE $FF
    ld a, c                                       ; $6837: $79
    ld a, c                                       ; $6838: $79
    nop                                           ; $6839: $00
    ld bc, $0000                                  ; $683A: $01 $00 $00
    nop                                           ; $683D: $00
    nop                                           ; $683E: $00
    nop                                           ; $683F: $00
    ld b, c                                       ; $6840: $41
    nop                                           ; $6841: $00
    and c                                         ; $6842: $A1
    ld b, b                                       ; $6843: $40
    cp a                                          ; $6844: $BF
    ld b, c                                       ; $6845: $41
    ld l, a                                       ; $6846: $6F
    rla                                           ; $6847: $17
    ccf                                           ; $6848: $3F
    nop                                           ; $6849: $00
    ld [bc], a                                    ; $684A: $02
    ld bc, $0102                                  ; $684B: $01 $02 $01
    ld [bc], a                                    ; $684E: $02
    ld bc, $017F                                  ; $684F: $01 $7F $01
    rst RST_10                                    ; $6852: $D7
    ld a, l                                       ; $6853: $7D
    ld l, e                                       ; $6854: $6B
    cp $FD                                        ; $6855: $FE $FD
    rst RST_38                                    ; $6857: $FF
    rst RST_38                                    ; $6858: $FF
    rlca                                          ; $6859: $07
    rlca                                          ; $685A: $07
    nop                                           ; $685B: $00
    ccf                                           ; $685C: $3F
    inc bc                                        ; $685D: $03
    ld d, e                                       ; $685E: $53
    dec l                                         ; $685F: $2D
    ld a, a                                       ; $6860: $7F
    nop                                           ; $6861: $00
    nop                                           ; $6862: $00
    nop                                           ; $6863: $00
    nop                                           ; $6864: $00
    nop                                           ; $6865: $00
    nop                                           ; $6866: $00
    nop                                           ; $6867: $00
    nop                                           ; $6868: $00
    nop                                           ; $6869: $00
    nop                                           ; $686A: $00
    nop                                           ; $686B: $00
    nop                                           ; $686C: $00
    nop                                           ; $686D: $00
    nop                                           ; $686E: $00
    nop                                           ; $686F: $00
    nop                                           ; $6870: $00
    nop                                           ; $6871: $00
    nop                                           ; $6872: $00
    nop                                           ; $6873: $00
    nop                                           ; $6874: $00
    nop                                           ; $6875: $00
    nop                                           ; $6876: $00
    nop                                           ; $6877: $00
    nop                                           ; $6878: $00
    nop                                           ; $6879: $00
    nop                                           ; $687A: $00
    nop                                           ; $687B: $00
    nop                                           ; $687C: $00
    nop                                           ; $687D: $00
    nop                                           ; $687E: $00
    nop                                           ; $687F: $00
    ld bc, $0700                                  ; $6880: $01 $00 $07
    ld bc, $067F                                  ; $6883: $01 $7F $06
    add [hl]                                      ; $6886: $86
    ld a, c                                       ; $6887: $79
    ld l, e                                       ; $6888: $6B
    call c, $FF15                                 ; $6889: $DC $15 $FF
    rst RST_38                                    ; $688C: $FF
    cp $FF                                        ; $688D: $FE $FF
    nop                                           ; $688F: $00
    ld d, l                                       ; $6890: $55
    ld a, [hl+]                                   ; $6891: $2A
    ld a, a                                       ; $6892: $7F
    nop                                           ; $6893: $00
    bit 7, a                                      ; $6894: $CB $7F
    ld a, a                                       ; $6896: $7F
    inc a                                         ; $6897: $3C
    inc a                                         ; $6898: $3C
    nop                                           ; $6899: $00
    nop                                           ; $689A: $00
    nop                                           ; $689B: $00
    nop                                           ; $689C: $00
    nop                                           ; $689D: $00
    nop                                           ; $689E: $00
    nop                                           ; $689F: $00
    nop                                           ; $68A0: $00
    nop                                           ; $68A1: $00
    nop                                           ; $68A2: $00
    nop                                           ; $68A3: $00
    nop                                           ; $68A4: $00
    nop                                           ; $68A5: $00
    nop                                           ; $68A6: $00
    nop                                           ; $68A7: $00
    nop                                           ; $68A8: $00
    nop                                           ; $68A9: $00
    nop                                           ; $68AA: $00
    nop                                           ; $68AB: $00
    nop                                           ; $68AC: $00
    nop                                           ; $68AD: $00
    nop                                           ; $68AE: $00
    nop                                           ; $68AF: $00
    nop                                           ; $68B0: $00
    nop                                           ; $68B1: $00
    ld bc, $0200                                  ; $68B2: $01 $00 $02
    ld bc, $0307                                  ; $68B5: $01 $07 $03
    dec b                                         ; $68B8: $05
    inc bc                                        ; $68B9: $03
    rrca                                          ; $68BA: $0F
    ld b, $0A                                     ; $68BB: $06 $0A
    inc b                                         ; $68BD: $04
    inc c                                         ; $68BE: $0C
    nop                                           ; $68BF: $00
    nop                                           ; $68C0: $00
    nop                                           ; $68C1: $00
    nop                                           ; $68C2: $00
    nop                                           ; $68C3: $00

jr_01D_68C4:
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
    ld bc, $0100                                  ; $68DA: $01 $00 $01
    nop                                           ; $68DD: $00
    ld bc, $F000                                  ; $68DE: $01 $00 $F0
    nop                                           ; $68E1: $00
    cp $F0                                        ; $68E2: $FE $F0
    db $ED                                        ; $68E4: $ED
    ld a, $C6                                     ; $68E5: $3E $C6
    ccf                                           ; $68E7: $3F
    cp a                                          ; $68E8: $BF
    ld b, e                                       ; $68E9: $43
    ld e, a                                       ; $68EA: $5F
    xor h                                         ; $68EB: $AC
    rst RST_10                                    ; $68EC: $D7
    ld l, $6B                                     ; $68ED: $2E $6B
    sbc a                                         ; $68EF: $9F
    rst RST_10                                    ; $68F0: $D7
    ccf                                           ; $68F1: $3F
    rst RST_38                                    ; $68F2: $FF
    rst RST_38                                    ; $68F3: $FF
    ld a, a                                       ; $68F4: $7F
    cp $FF                                        ; $68F5: $FE $FF
    ld a, c                                       ; $68F7: $79
    ld a, c                                       ; $68F8: $79
    nop                                           ; $68F9: $00
    ld bc, $0000                                  ; $68FA: $01 $00 $00
    nop                                           ; $68FD: $00
    nop                                           ; $68FE: $00
    nop                                           ; $68FF: $00
    ld sp, $5100                                  ; $6900: $31 $00 $51
    jr nz, jr_01D_68C4                            ; $6903: $20 $BF

    ld b, c                                       ; $6905: $41
    ld l, a                                       ; $6906: $6F
    rla                                           ; $6907: $17
    ccf                                           ; $6908: $3F
    nop                                           ; $6909: $00
    ld [bc], a                                    ; $690A: $02
    ld bc, $0102                                  ; $690B: $01 $02 $01
    ld [bc], a                                    ; $690E: $02
    ld bc, $017F                                  ; $690F: $01 $7F $01
    rst RST_10                                    ; $6912: $D7
    ld a, l                                       ; $6913: $7D
    ld l, e                                       ; $6914: $6B
    cp $FD                                        ; $6915: $FE $FD
    rst RST_38                                    ; $6917: $FF
    rst RST_38                                    ; $6918: $FF
    rlca                                          ; $6919: $07
    rlca                                          ; $691A: $07
    nop                                           ; $691B: $00
    ccf                                           ; $691C: $3F
    inc bc                                        ; $691D: $03
    ld d, e                                       ; $691E: $53
    dec l                                         ; $691F: $2D
    ld a, a                                       ; $6920: $7F
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
    nop                                           ; $692E: $00
    nop                                           ; $692F: $00
    nop                                           ; $6930: $00
    nop                                           ; $6931: $00
    nop                                           ; $6932: $00
    nop                                           ; $6933: $00
    nop                                           ; $6934: $00
    nop                                           ; $6935: $00
    nop                                           ; $6936: $00
    nop                                           ; $6937: $00
    nop                                           ; $6938: $00
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
    nop                                           ; $6948: $00
    nop                                           ; $6949: $00
    nop                                           ; $694A: $00
    nop                                           ; $694B: $00
    nop                                           ; $694C: $00
    nop                                           ; $694D: $00
    nop                                           ; $694E: $00
    nop                                           ; $694F: $00
    nop                                           ; $6950: $00
    nop                                           ; $6951: $00
    ld bc, $0200                                  ; $6952: $01 $00 $02
    ld bc, $0307                                  ; $6955: $01 $07 $03
    dec b                                         ; $6958: $05
    inc bc                                        ; $6959: $03
    rrca                                          ; $695A: $0F
    ld b, $0A                                     ; $695B: $06 $0A
    inc b                                         ; $695D: $04
    inc c                                         ; $695E: $0C
    nop                                           ; $695F: $00
    ld bc, $0700                                  ; $6960: $01 $00 $07
    ld bc, $067F                                  ; $6963: $01 $7F $06
    add [hl]                                      ; $6966: $86
    ld a, c                                       ; $6967: $79
    ld l, e                                       ; $6968: $6B
    call c, $FF15                                 ; $6969: $DC $15 $FF
    rst RST_38                                    ; $696C: $FF
    cp $FF                                        ; $696D: $FE $FF
    nop                                           ; $696F: $00
    ld d, l                                       ; $6970: $55
    ld a, [hl+]                                   ; $6971: $2A
    ld a, a                                       ; $6972: $7F
    nop                                           ; $6973: $00
    bit 7, a                                      ; $6974: $CB $7F
    ld a, a                                       ; $6976: $7F
    inc a                                         ; $6977: $3C
    inc a                                         ; $6978: $3C
    nop                                           ; $6979: $00
    nop                                           ; $697A: $00
    nop                                           ; $697B: $00
    nop                                           ; $697C: $00
    nop                                           ; $697D: $00
    nop                                           ; $697E: $00
    nop                                           ; $697F: $00
    nop                                           ; $6980: $00
    nop                                           ; $6981: $00
    nop                                           ; $6982: $00
    nop                                           ; $6983: $00
    nop                                           ; $6984: $00
    nop                                           ; $6985: $00
    nop                                           ; $6986: $00
    nop                                           ; $6987: $00
    nop                                           ; $6988: $00
    nop                                           ; $6989: $00
    nop                                           ; $698A: $00
    nop                                           ; $698B: $00
    nop                                           ; $698C: $00
    nop                                           ; $698D: $00
    nop                                           ; $698E: $00
    nop                                           ; $698F: $00
    nop                                           ; $6990: $00
    nop                                           ; $6991: $00
    nop                                           ; $6992: $00
    nop                                           ; $6993: $00
    nop                                           ; $6994: $00
    nop                                           ; $6995: $00
    nop                                           ; $6996: $00
    nop                                           ; $6997: $00
    nop                                           ; $6998: $00
    nop                                           ; $6999: $00
    ld bc, $0100                                  ; $699A: $01 $00 $01
    nop                                           ; $699D: $00
    ld bc, $0000                                  ; $699E: $01 $00 $00
    nop                                           ; $69A1: $00
    nop                                           ; $69A2: $00
    nop                                           ; $69A3: $00
    nop                                           ; $69A4: $00
    nop                                           ; $69A5: $00
    nop                                           ; $69A6: $00
    nop                                           ; $69A7: $00
    rlca                                          ; $69A8: $07
    nop                                           ; $69A9: $00
    ld a, [hl]                                    ; $69AA: $7E
    dec b                                         ; $69AB: $05
    add h                                         ; $69AC: $84
    ld a, e                                       ; $69AD: $7B
    ld l, e                                       ; $69AE: $6B
    call c, $FF15                                 ; $69AF: $DC $15 $FF
    rst RST_38                                    ; $69B2: $FF
    cp $FF                                        ; $69B3: $FE $FF
    nop                                           ; $69B5: $00
    ld d, l                                       ; $69B6: $55
    ld a, [hl+]                                   ; $69B7: $2A
    ld a, a                                       ; $69B8: $7F
    nop                                           ; $69B9: $00
    bit 7, a                                      ; $69BA: $CB $7F
    ld a, a                                       ; $69BC: $7F
    inc a                                         ; $69BD: $3C
    inc a                                         ; $69BE: $3C
    nop                                           ; $69BF: $00
    nop                                           ; $69C0: $00
    nop                                           ; $69C1: $00
    nop                                           ; $69C2: $00
    nop                                           ; $69C3: $00
    ldh a, [rP1]                                  ; $69C4: $F0 $00
    ld a, a                                       ; $69C6: $7F
    or b                                          ; $69C7: $B0
    ld a, [hl]                                    ; $69C8: $7E
    cp a                                          ; $69C9: $BF
    rst RST_00                                    ; $69CA: $C7
    ld a, a                                       ; $69CB: $7F
    cp a                                          ; $69CC: $BF
    jp $9C7F                                      ; $69CD: $C3 $7F $9C


    or a                                          ; $69D0: $B7
    ld e, [hl]                                    ; $69D1: $5E
    ld l, e                                       ; $69D2: $6B
    cp a                                          ; $69D3: $BF
    rst RST_10                                    ; $69D4: $D7
    ld a, a                                       ; $69D5: $7F
    rst RST_38                                    ; $69D6: $FF
    rst RST_38                                    ; $69D7: $FF

jr_01D_69D8:
    ld a, a                                       ; $69D8: $7F
    cp $FF                                        ; $69D9: $FE $FF
    ld a, c                                       ; $69DB: $79
    ld a, c                                       ; $69DC: $79
    nop                                           ; $69DD: $00
    ld bc, $8000                                  ; $69DE: $01 $00 $80
    nop                                           ; $69E1: $00
    ld b, b                                       ; $69E2: $40
    add b                                         ; $69E3: $80
    and b                                         ; $69E4: $A0
    ret nz                                        ; $69E5: $C0

    sub b                                         ; $69E6: $90
    ldh [$FFE8], a                                ; $69E7: $E0 $E8
    ldh a, [$FFC6]                                ; $69E9: $F0 $C6
    ld a, b                                       ; $69EB: $78
    ld sp, hl                                     ; $69EC: $F9
    ld a, [hl]                                    ; $69ED: $7E
    ldh a, [$FF7F]                                ; $69EE: $F0 $7F
    cp $FF                                        ; $69F0: $FE $FF
    db $FC                                        ; $69F2: $FC
    rst RST_38                                    ; $69F3: $FF
    rst RST_38                                    ; $69F4: $FF
    rst RST_38                                    ; $69F5: $FF
    rst RST_38                                    ; $69F6: $FF
    db $FD                                        ; $69F7: $FD
    rst RST_38                                    ; $69F8: $FF
    ld a, l                                       ; $69F9: $7D

jr_01D_69FA:
    rst RST_38                                    ; $69FA: $FF
    halt                                          ; $69FB: $76
    ld a, a                                       ; $69FC: $7F
    dec sp                                        ; $69FD: $3B
    rst RST_38                                    ; $69FE: $FF
    dec a                                         ; $69FF: $3D
    nop                                           ; $6A00: $00
    nop                                           ; $6A01: $00
    nop                                           ; $6A02: $00
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
    add b                                         ; $6A0E: $80
    nop                                           ; $6A0F: $00
    ld b, b                                       ; $6A10: $40
    add b                                         ; $6A11: $80
    ld b, b                                       ; $6A12: $40
    add b                                         ; $6A13: $80
    and b                                         ; $6A14: $A0
    ret nz                                        ; $6A15: $C0

    jr nz, jr_01D_69D8                            ; $6A16: $20 $C0

    jr jr_01D_69FA                                ; $6A18: $18 $E0

    db $EC                                        ; $6A1A: $EC
    ld hl, sp-$3E                                 ; $6A1B: $F8 $C2
    ld a, h                                       ; $6A1D: $7C
    db $DD                                        ; $6A1E: $DD
    cp [hl]                                       ; $6A1F: $BE
    ccf                                           ; $6A20: $3F
    inc b                                         ; $6A21: $04
    ld d, [hl]                                    ; $6A22: $56
    add hl, hl                                    ; $6A23: $29
    dec sp                                        ; $6A24: $3B
    ld b, $17                                     ; $6A25: $06 $17
    rrca                                          ; $6A27: $0F
    rla                                           ; $6A28: $17
    rrca                                          ; $6A29: $0F
    rla                                           ; $6A2A: $17
    rrca                                          ; $6A2B: $0F
    rst RST_38                                    ; $6A2C: $FF
    rrca                                          ; $6A2D: $0F
    cp a                                          ; $6A2E: $BF
    xor $5F                                       ; $6A2F: $EE $5F
    or $EF                                        ; $6A31: $F6 $EF
    ei                                            ; $6A33: $FB
    rst RST_38                                    ; $6A34: $FF
    dec sp                                        ; $6A35: $3B
    ccf                                           ; $6A36: $3F
    ld b, $FF                                     ; $6A37: $06 $FF
    ld e, $9F                                     ; $6A39: $1E $9F
    ld l, h                                       ; $6A3B: $6C
    db $FC                                        ; $6A3C: $FC
    nop                                           ; $6A3D: $00
    nop                                           ; $6A3E: $00
    nop                                           ; $6A3F: $00
    rst RST_38                                    ; $6A40: $FF
    dec de                                        ; $6A41: $1B
    cp a                                          ; $6A42: $BF
    ld d, [hl]                                    ; $6A43: $56
    rst RST_38                                    ; $6A44: $FF
    dec c                                         ; $6A45: $0D
    cp $7D                                        ; $6A46: $FE $7D
    cp $7B                                        ; $6A48: $FE $7B
    cp $BB                                        ; $6A4A: $FE $BB
    cp $BB                                        ; $6A4C: $FE $BB
    rst RST_38                                    ; $6A4E: $FF
    db $DB                                        ; $6A4F: $DB
    rst RST_38                                    ; $6A50: $FF
    push hl                                       ; $6A51: $E5
    rst RST_38                                    ; $6A52: $FF

jr_01D_6A53:
    jr jr_01D_6A53                                ; $6A53: $18 $FE

    ld a, h                                       ; $6A55: $7C
    db $FC                                        ; $6A56: $FC
    ldh a, [$FFF0]                                ; $6A57: $F0 $F0
    ret nz                                        ; $6A59: $C0

    ret nz                                        ; $6A5A: $C0

    nop                                           ; $6A5B: $00
    nop                                           ; $6A5C: $00
    nop                                           ; $6A5D: $00
    nop                                           ; $6A5E: $00
    nop                                           ; $6A5F: $00
    call nz, $8478                                ; $6A60: $C4 $78 $84
    ld hl, sp+$0A                                 ; $6A63: $F8 $0A
    db $FC                                        ; $6A65: $FC
    ld e, [hl]                                    ; $6A66: $5E
    db $FC                                        ; $6A67: $FC
    ld a, [hl]                                    ; $6A68: $7E
    db $FC                                        ; $6A69: $FC
    cp $FC                                        ; $6A6A: $FE $FC
    db $FC                                        ; $6A6C: $FC
    ld hl, sp-$04                                 ; $6A6D: $F8 $FC
    ldh a, [$FFFE]                                ; $6A6F: $F0 $FE
    db $EC                                        ; $6A71: $EC
    cp $FC                                        ; $6A72: $FE $FC
    rst RST_38                                    ; $6A74: $FF
    ld c, $0F                                     ; $6A75: $0E $0F
    ld b, $0F                                     ; $6A77: $06 $0F
    ld b, $7F                                     ; $6A79: $06 $7F
    ld [bc], a                                    ; $6A7B: $02
    sub e                                         ; $6A7C: $93
    ld l, h                                       ; $6A7D: $6C
    cp $00                                        ; $6A7E: $FE $00
    inc bc                                        ; $6A80: $03
    nop                                           ; $6A81: $00
    ld c, $03                                     ; $6A82: $0E $03
    inc de                                        ; $6A84: $13
    rrca                                          ; $6A85: $0F
    ccf                                           ; $6A86: $3F
    rra                                           ; $6A87: $1F
    cpl                                           ; $6A88: $2F
    jr jr_01D_6B03                                ; $6A89: $18 $78

    jr nc, jr_01D_6ADE                            ; $6A8B: $30 $51

    jr nz, jr_01D_6AF1                            ; $6A8D: $20 $62

    ld bc, $0003                                  ; $6A8F: $01 $03 $00
    nop                                           ; $6A92: $00
    nop                                           ; $6A93: $00
    nop                                           ; $6A94: $00
    nop                                           ; $6A95: $00
    nop                                           ; $6A96: $00
    nop                                           ; $6A97: $00
    nop                                           ; $6A98: $00
    nop                                           ; $6A99: $00
    nop                                           ; $6A9A: $00
    nop                                           ; $6A9B: $00
    nop                                           ; $6A9C: $00
    nop                                           ; $6A9D: $00
    nop                                           ; $6A9E: $00
    nop                                           ; $6A9F: $00
    nop                                           ; $6AA0: $00
    nop                                           ; $6AA1: $00
    nop                                           ; $6AA2: $00
    nop                                           ; $6AA3: $00
    nop                                           ; $6AA4: $00
    nop                                           ; $6AA5: $00
    nop                                           ; $6AA6: $00
    nop                                           ; $6AA7: $00
    nop                                           ; $6AA8: $00
    nop                                           ; $6AA9: $00
    nop                                           ; $6AAA: $00
    nop                                           ; $6AAB: $00
    nop                                           ; $6AAC: $00
    nop                                           ; $6AAD: $00
    nop                                           ; $6AAE: $00
    nop                                           ; $6AAF: $00
    nop                                           ; $6AB0: $00
    nop                                           ; $6AB1: $00
    nop                                           ; $6AB2: $00
    nop                                           ; $6AB3: $00
    nop                                           ; $6AB4: $00
    nop                                           ; $6AB5: $00
    nop                                           ; $6AB6: $00
    nop                                           ; $6AB7: $00
    nop                                           ; $6AB8: $00
    nop                                           ; $6AB9: $00
    ld bc, $0100                                  ; $6ABA: $01 $00 $01
    nop                                           ; $6ABD: $00
    ld bc, $C400                                  ; $6ABE: $01 $00 $C4
    ld a, b                                       ; $6AC1: $78
    add h                                         ; $6AC2: $84
    ld hl, sp+$0A                                 ; $6AC3: $F8 $0A
    db $FC                                        ; $6AC5: $FC
    ld e, [hl]                                    ; $6AC6: $5E
    db $FC                                        ; $6AC7: $FC
    ld a, [hl]                                    ; $6AC8: $7E
    db $FC                                        ; $6AC9: $FC
    cp $FC                                        ; $6ACA: $FE $FC
    db $FC                                        ; $6ACC: $FC
    ld hl, sp-$04                                 ; $6ACD: $F8 $FC
    ldh a, [$FFFE]                                ; $6ACF: $F0 $FE
    db $EC                                        ; $6AD1: $EC
    cp $FC                                        ; $6AD2: $FE $FC
    rst RST_38                                    ; $6AD4: $FF
    ld c, $0F                                     ; $6AD5: $0E $0F
    ld b, $0F                                     ; $6AD7: $06 $0F
    ld b, $7F                                     ; $6AD9: $06 $7F
    ld [bc], a                                    ; $6ADB: $02
    sub e                                         ; $6ADC: $93
    ld l, h                                       ; $6ADD: $6C

jr_01D_6ADE:
    cp $00                                        ; $6ADE: $FE $00
    rst RST_38                                    ; $6AE0: $FF
    ld a, a                                       ; $6AE1: $7F
    rst RST_38                                    ; $6AE2: $FF
    cp $FF                                        ; $6AE3: $FE $FF
    db $FD                                        ; $6AE5: $FD
    cp $7D                                        ; $6AE6: $FE $7D
    cp $7B                                        ; $6AE8: $FE $7B
    cp $BB                                        ; $6AEA: $FE $BB
    cp $BB                                        ; $6AEC: $FE $BB
    rst RST_38                                    ; $6AEE: $FF
    db $DB                                        ; $6AEF: $DB
    rst RST_38                                    ; $6AF0: $FF

jr_01D_6AF1:
    push hl                                       ; $6AF1: $E5
    rst RST_38                                    ; $6AF2: $FF

jr_01D_6AF3:
    jr jr_01D_6AF3                                ; $6AF3: $18 $FE

    ld a, h                                       ; $6AF5: $7C
    db $FC                                        ; $6AF6: $FC
    ldh a, [$FFF0]                                ; $6AF7: $F0 $F0
    ret nz                                        ; $6AF9: $C0

    ret nz                                        ; $6AFA: $C0

    nop                                           ; $6AFB: $00
    nop                                           ; $6AFC: $00
    nop                                           ; $6AFD: $00
    nop                                           ; $6AFE: $00
    nop                                           ; $6AFF: $00
    ccf                                           ; $6B00: $3F
    inc b                                         ; $6B01: $04
    ld d, a                                       ; $6B02: $57

jr_01D_6B03:
    ld a, [hl+]                                   ; $6B03: $2A
    dec sp                                        ; $6B04: $3B
    ld b, $17                                     ; $6B05: $06 $17
    rrca                                          ; $6B07: $0F
    rla                                           ; $6B08: $17
    rrca                                          ; $6B09: $0F
    rla                                           ; $6B0A: $17
    rrca                                          ; $6B0B: $0F
    rst RST_38                                    ; $6B0C: $FF
    rrca                                          ; $6B0D: $0F
    cp a                                          ; $6B0E: $BF
    xor $5F                                       ; $6B0F: $EE $5F
    or $EF                                        ; $6B11: $F6 $EF
    ei                                            ; $6B13: $FB
    rst RST_38                                    ; $6B14: $FF
    dec sp                                        ; $6B15: $3B
    ccf                                           ; $6B16: $3F
    ld b, $FF                                     ; $6B17: $06 $FF
    ld e, $9F                                     ; $6B19: $1E $9F
    ld l, h                                       ; $6B1B: $6C
    db $FC                                        ; $6B1C: $FC
    nop                                           ; $6B1D: $00
    nop                                           ; $6B1E: $00
    nop                                           ; $6B1F: $00
    nop                                           ; $6B20: $00
    nop                                           ; $6B21: $00
    nop                                           ; $6B22: $00
    nop                                           ; $6B23: $00
    nop                                           ; $6B24: $00
    nop                                           ; $6B25: $00
    nop                                           ; $6B26: $00
    nop                                           ; $6B27: $00
    nop                                           ; $6B28: $00
    nop                                           ; $6B29: $00
    nop                                           ; $6B2A: $00
    nop                                           ; $6B2B: $00
    inc bc                                        ; $6B2C: $03
    nop                                           ; $6B2D: $00
    ld c, $03                                     ; $6B2E: $0E $03
    inc de                                        ; $6B30: $13
    rrca                                          ; $6B31: $0F
    ccf                                           ; $6B32: $3F
    rra                                           ; $6B33: $1F
    cpl                                           ; $6B34: $2F
    jr jr_01D_6BAF                                ; $6B35: $18 $78

    jr nc, jr_01D_6B8A                            ; $6B37: $30 $51

    jr nz, jr_01D_6B9D                            ; $6B39: $20 $62

    ld bc, $0003                                  ; $6B3B: $01 $03 $00
    nop                                           ; $6B3E: $00
    nop                                           ; $6B3F: $00
    nop                                           ; $6B40: $00
    nop                                           ; $6B41: $00
    nop                                           ; $6B42: $00
    nop                                           ; $6B43: $00
    nop                                           ; $6B44: $00
    nop                                           ; $6B45: $00
    nop                                           ; $6B46: $00
    nop                                           ; $6B47: $00
    nop                                           ; $6B48: $00
    nop                                           ; $6B49: $00
    nop                                           ; $6B4A: $00
    nop                                           ; $6B4B: $00
    nop                                           ; $6B4C: $00
    nop                                           ; $6B4D: $00
    add b                                         ; $6B4E: $80
    nop                                           ; $6B4F: $00
    ld b, b                                       ; $6B50: $40
    add b                                         ; $6B51: $80
    ld b, b                                       ; $6B52: $40
    add b                                         ; $6B53: $80
    and b                                         ; $6B54: $A0
    ret nz                                        ; $6B55: $C0

    jr nz, @-$3E                                  ; $6B56: $20 $C0

    jr @-$1E                                      ; $6B58: $18 $E0

    db $EC                                        ; $6B5A: $EC
    ld hl, sp-$3E                                 ; $6B5B: $F8 $C2
    db $FC                                        ; $6B5D: $FC
    db $DD                                        ; $6B5E: $DD
    cp $80                                        ; $6B5F: $FE $80
    nop                                           ; $6B61: $00
    ld b, b                                       ; $6B62: $40
    add b                                         ; $6B63: $80
    and b                                         ; $6B64: $A0
    ret nz                                        ; $6B65: $C0

    sub b                                         ; $6B66: $90
    ldh [$FFE8], a                                ; $6B67: $E0 $E8
    ldh a, [$FFC6]                                ; $6B69: $F0 $C6
    ld a, b                                       ; $6B6B: $78
    ld sp, hl                                     ; $6B6C: $F9
    ld a, [hl]                                    ; $6B6D: $7E
    ldh a, [$FF7F]                                ; $6B6E: $F0 $7F
    cp $FF                                        ; $6B70: $FE $FF
    db $FC                                        ; $6B72: $FC
    rst RST_38                                    ; $6B73: $FF
    rst RST_38                                    ; $6B74: $FF
    rst RST_38                                    ; $6B75: $FF
    rst RST_38                                    ; $6B76: $FF
    db $FD                                        ; $6B77: $FD
    rst RST_38                                    ; $6B78: $FF
    scf                                           ; $6B79: $37
    ld a, a                                       ; $6B7A: $7F
    xor l                                         ; $6B7B: $AD
    rst RST_38                                    ; $6B7C: $FF
    ld e, e                                       ; $6B7D: $5B
    rst RST_38                                    ; $6B7E: $FF
    scf                                           ; $6B7F: $37
    ld a, [hl]                                    ; $6B80: $7E
    cp a                                          ; $6B81: $BF
    rst RST_00                                    ; $6B82: $C7
    ld a, a                                       ; $6B83: $7F
    cp a                                          ; $6B84: $BF
    jp $9C7F                                      ; $6B85: $C3 $7F $9C


    or a                                          ; $6B88: $B7
    ld e, [hl]                                    ; $6B89: $5E

jr_01D_6B8A:
    ld l, e                                       ; $6B8A: $6B
    cp a                                          ; $6B8B: $BF
    rst RST_10                                    ; $6B8C: $D7
    ld a, a                                       ; $6B8D: $7F
    rst RST_38                                    ; $6B8E: $FF
    rst RST_38                                    ; $6B8F: $FF
    ld a, a                                       ; $6B90: $7F
    cp $FF                                        ; $6B91: $FE $FF
    ld a, c                                       ; $6B93: $79
    ld a, c                                       ; $6B94: $79
    nop                                           ; $6B95: $00
    inc bc                                        ; $6B96: $03
    nop                                           ; $6B97: $00
    dec b                                         ; $6B98: $05
    ld [bc], a                                    ; $6B99: $02
    dec b                                         ; $6B9A: $05
    ld [bc], a                                    ; $6B9B: $02
    ld [bc], a                                    ; $6B9C: $02

jr_01D_6B9D:
    nop                                           ; $6B9D: $00
    nop                                           ; $6B9E: $00
    nop                                           ; $6B9F: $00
    nop                                           ; $6BA0: $00
    nop                                           ; $6BA1: $00
    nop                                           ; $6BA2: $00
    nop                                           ; $6BA3: $00
    nop                                           ; $6BA4: $00
    nop                                           ; $6BA5: $00
    nop                                           ; $6BA6: $00
    nop                                           ; $6BA7: $00
    rlca                                          ; $6BA8: $07
    nop                                           ; $6BA9: $00
    ld a, [hl]                                    ; $6BAA: $7E
    dec b                                         ; $6BAB: $05
    add h                                         ; $6BAC: $84
    ld a, e                                       ; $6BAD: $7B
    ld l, e                                       ; $6BAE: $6B

jr_01D_6BAF:
    call c, $FF15                                 ; $6BAF: $DC $15 $FF
    rst RST_38                                    ; $6BB2: $FF
    cp $FF                                        ; $6BB3: $FE $FF
    nop                                           ; $6BB5: $00
    ld d, l                                       ; $6BB6: $55
    ld a, [hl+]                                   ; $6BB7: $2A
    ld a, a                                       ; $6BB8: $7F
    nop                                           ; $6BB9: $00
    bit 7, a                                      ; $6BBA: $CB $7F
    ld a, a                                       ; $6BBC: $7F
    inc a                                         ; $6BBD: $3C
    inc a                                         ; $6BBE: $3C
    nop                                           ; $6BBF: $00
    nop                                           ; $6BC0: $00
    nop                                           ; $6BC1: $00
    nop                                           ; $6BC2: $00
    nop                                           ; $6BC3: $00
    nop                                           ; $6BC4: $00
    nop                                           ; $6BC5: $00
    nop                                           ; $6BC6: $00
    nop                                           ; $6BC7: $00
    nop                                           ; $6BC8: $00
    nop                                           ; $6BC9: $00
    nop                                           ; $6BCA: $00
    nop                                           ; $6BCB: $00
    nop                                           ; $6BCC: $00
    nop                                           ; $6BCD: $00
    nop                                           ; $6BCE: $00
    nop                                           ; $6BCF: $00
    nop                                           ; $6BD0: $00
    nop                                           ; $6BD1: $00
    nop                                           ; $6BD2: $00
    nop                                           ; $6BD3: $00
    nop                                           ; $6BD4: $00
    nop                                           ; $6BD5: $00
    nop                                           ; $6BD6: $00
    nop                                           ; $6BD7: $00
    nop                                           ; $6BD8: $00
    nop                                           ; $6BD9: $00
    nop                                           ; $6BDA: $00
    nop                                           ; $6BDB: $00
    ldh a, [rP1]                                  ; $6BDC: $F0 $00
    ld a, a                                       ; $6BDE: $7F
    or b                                          ; $6BDF: $B0
    nop                                           ; $6BE0: $00
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
    ld bc, $0100                                  ; $6BFA: $01 $00 $01
    nop                                           ; $6BFD: $00
    ld bc, $8800                                  ; $6BFE: $01 $00 $88
    ldh a, [$FF08]                                ; $6C01: $F0 $08
    ldh a, [rNR14]                                ; $6C03: $F0 $14
    ld hl, sp-$44                                 ; $6C05: $F8 $BC
    ld hl, sp-$04                                 ; $6C07: $F8 $FC
    ld hl, sp-$04                                 ; $6C09: $F8 $FC
    ld hl, sp-$08                                 ; $6C0B: $F8 $F8
    ldh a, [$FFFC]                                ; $6C0D: $F0 $FC
    ldh [$FFFE], a                                ; $6C0F: $E0 $FE
    db $EC                                        ; $6C11: $EC
    cp $FC                                        ; $6C12: $FE $FC
    rst RST_38                                    ; $6C14: $FF
    ld c, $0F                                     ; $6C15: $0E $0F
    ld b, $0F                                     ; $6C17: $06 $0F
    ld b, $7F                                     ; $6C19: $06 $7F
    ld [bc], a                                    ; $6C1B: $02
    sub e                                         ; $6C1C: $93
    ld l, h                                       ; $6C1D: $6C
    cp $00                                        ; $6C1E: $FE $00
    rst RST_38                                    ; $6C20: $FF
    cp $FF                                        ; $6C21: $FE $FF
    db $FD                                        ; $6C23: $FD
    cp $FB                                        ; $6C24: $FE $FB
    db $FC                                        ; $6C26: $FC
    ei                                            ; $6C27: $FB
    db $FC                                        ; $6C28: $FC
    rst RST_30                                    ; $6C29: $F7
    db $FD                                        ; $6C2A: $FD
    ld [hl], a                                    ; $6C2B: $77
    db $FD                                        ; $6C2C: $FD
    ld [hl], a                                    ; $6C2D: $77
    rst RST_38                                    ; $6C2E: $FF
    or a                                          ; $6C2F: $B7
    rst RST_38                                    ; $6C30: $FF
    set 7, a                                      ; $6C31: $CB $FF
    jr nc, @+$01                                  ; $6C33: $30 $FF

    ld a, [hl]                                    ; $6C35: $7E
    cp $F8                                        ; $6C36: $FE $F8
    ld hl, sp-$20                                 ; $6C38: $F8 $E0
    ldh [rP1], a                                  ; $6C3A: $E0 $00
    nop                                           ; $6C3C: $00
    nop                                           ; $6C3D: $00
    nop                                           ; $6C3E: $00
    nop                                           ; $6C3F: $00
    ccf                                           ; $6C40: $3F
    dec bc                                        ; $6C41: $0B
    ld e, a                                       ; $6C42: $5F
    dec h                                         ; $6C43: $25
    scf                                           ; $6C44: $37
    dec c                                         ; $6C45: $0D
    cpl                                           ; $6C46: $2F
    ld e, $2F                                     ; $6C47: $1E $2F
    ld e, $2F                                     ; $6C49: $1E $2F
    rra                                           ; $6C4B: $1F
    rst RST_28                                    ; $6C4C: $EF
    rra                                           ; $6C4D: $1F
    ld a, a                                       ; $6C4E: $7F
    rst RST_18                                    ; $6C4F: $DF
    rst RST_38                                    ; $6C50: $FF
    db $ED                                        ; $6C51: $ED
    rst RST_38                                    ; $6C52: $FF
    or $FF                                        ; $6C53: $F6 $FF
    dec de                                        ; $6C55: $1B
    rra                                           ; $6C56: $1F
    ld b, $FF                                     ; $6C57: $06 $FF
    ld e, $9F                                     ; $6C59: $1E $9F
    ld l, h                                       ; $6C5B: $6C
    db $FC                                        ; $6C5C: $FC
    nop                                           ; $6C5D: $00
    nop                                           ; $6C5E: $00
    nop                                           ; $6C5F: $00
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
    nop                                           ; $6C6A: $00
    nop                                           ; $6C6B: $00
    ld bc, $0700                                  ; $6C6C: $01 $00 $07
    ld bc, $0719                                  ; $6C6F: $01 $19 $07
    cpl                                           ; $6C72: $2F
    rra                                           ; $6C73: $1F
    ld a, a                                       ; $6C74: $7F
    jr c, jr_01D_6CCF                             ; $6C75: $38 $58

    jr nz, jr_01D_6CDA                            ; $6C77: $20 $61

    nop                                           ; $6C79: $00

jr_01D_6C7A:
    ld [bc], a                                    ; $6C7A: $02
    ld bc, $0003                                  ; $6C7B: $01 $03 $00
    nop                                           ; $6C7E: $00
    nop                                           ; $6C7F: $00
    nop                                           ; $6C80: $00
    nop                                           ; $6C81: $00
    nop                                           ; $6C82: $00
    nop                                           ; $6C83: $00
    nop                                           ; $6C84: $00
    nop                                           ; $6C85: $00
    nop                                           ; $6C86: $00
    nop                                           ; $6C87: $00
    nop                                           ; $6C88: $00
    nop                                           ; $6C89: $00
    nop                                           ; $6C8A: $00
    nop                                           ; $6C8B: $00
    nop                                           ; $6C8C: $00
    nop                                           ; $6C8D: $00
    add b                                         ; $6C8E: $80
    nop                                           ; $6C8F: $00
    ld b, b                                       ; $6C90: $40
    add b                                         ; $6C91: $80
    ld b, b                                       ; $6C92: $40
    add b                                         ; $6C93: $80
    and b                                         ; $6C94: $A0
    ret nz                                        ; $6C95: $C0

    jr nz, @-$3E                                  ; $6C96: $20 $C0

    jr jr_01D_6C7A                                ; $6C98: $18 $E0

    db $EC                                        ; $6C9A: $EC
    ld hl, sp-$3E                                 ; $6C9B: $F8 $C2
    db $FC                                        ; $6C9D: $FC
    db $DD                                        ; $6C9E: $DD
    cp $80                                        ; $6C9F: $FE $80
    nop                                           ; $6CA1: $00
    ld b, b                                       ; $6CA2: $40
    add b                                         ; $6CA3: $80
    and b                                         ; $6CA4: $A0
    ret nz                                        ; $6CA5: $C0

    sub b                                         ; $6CA6: $90
    ldh [$FFE8], a                                ; $6CA7: $E0 $E8
    ldh a, [$FFC6]                                ; $6CA9: $F0 $C6
    ld a, b                                       ; $6CAB: $78
    ld sp, hl                                     ; $6CAC: $F9
    ld a, [hl]                                    ; $6CAD: $7E
    ldh a, [$FF7F]                                ; $6CAE: $F0 $7F
    cp $FF                                        ; $6CB0: $FE $FF
    db $FC                                        ; $6CB2: $FC
    rst RST_38                                    ; $6CB3: $FF
    rst RST_38                                    ; $6CB4: $FF
    rst RST_38                                    ; $6CB5: $FF
    rst RST_38                                    ; $6CB6: $FF
    di                                            ; $6CB7: $F3
    rst RST_38                                    ; $6CB8: $FF
    rrca                                          ; $6CB9: $0F
    rst RST_38                                    ; $6CBA: $FF
    rst RST_38                                    ; $6CBB: $FF
    rst RST_38                                    ; $6CBC: $FF
    ld bc, $3FFF                                  ; $6CBD: $01 $FF $3F
    ld a, [hl]                                    ; $6CC0: $7E
    cp a                                          ; $6CC1: $BF
    rst RST_00                                    ; $6CC2: $C7
    ld a, a                                       ; $6CC3: $7F
    cp a                                          ; $6CC4: $BF
    jp $9C7F                                      ; $6CC5: $C3 $7F $9C


    or a                                          ; $6CC8: $B7
    ld e, [hl]                                    ; $6CC9: $5E
    ld l, e                                       ; $6CCA: $6B
    cp a                                          ; $6CCB: $BF
    rst RST_10                                    ; $6CCC: $D7
    ld a, a                                       ; $6CCD: $7F
    rst RST_38                                    ; $6CCE: $FF

jr_01D_6CCF:
    rst RST_38                                    ; $6CCF: $FF
    ld a, a                                       ; $6CD0: $7F
    cp $FF                                        ; $6CD1: $FE $FF
    ld a, c                                       ; $6CD3: $79
    ld a, c                                       ; $6CD4: $79
    nop                                           ; $6CD5: $00
    ld bc, $3F00                                  ; $6CD6: $01 $00 $3F
    nop                                           ; $6CD9: $00

jr_01D_6CDA:
    ld e, a                                       ; $6CDA: $5F
    inc hl                                        ; $6CDB: $23
    ld d, a                                       ; $6CDC: $57
    jr z, jr_01D_6D07                             ; $6CDD: $28 $28

    nop                                           ; $6CDF: $00
    nop                                           ; $6CE0: $00
    nop                                           ; $6CE1: $00
    nop                                           ; $6CE2: $00
    nop                                           ; $6CE3: $00
    nop                                           ; $6CE4: $00
    nop                                           ; $6CE5: $00
    nop                                           ; $6CE6: $00
    nop                                           ; $6CE7: $00
    rlca                                          ; $6CE8: $07
    nop                                           ; $6CE9: $00
    ld a, [hl]                                    ; $6CEA: $7E
    dec b                                         ; $6CEB: $05
    add h                                         ; $6CEC: $84
    ld a, e                                       ; $6CED: $7B
    ld l, e                                       ; $6CEE: $6B
    call c, $FF15                                 ; $6CEF: $DC $15 $FF
    rst RST_38                                    ; $6CF2: $FF
    cp $FF                                        ; $6CF3: $FE $FF
    nop                                           ; $6CF5: $00
    ld d, l                                       ; $6CF6: $55
    ld a, [hl+]                                   ; $6CF7: $2A
    ld a, a                                       ; $6CF8: $7F
    nop                                           ; $6CF9: $00
    bit 7, a                                      ; $6CFA: $CB $7F
    ld a, a                                       ; $6CFC: $7F
    inc a                                         ; $6CFD: $3C
    inc a                                         ; $6CFE: $3C
    nop                                           ; $6CFF: $00
    nop                                           ; $6D00: $00
    nop                                           ; $6D01: $00
    nop                                           ; $6D02: $00
    nop                                           ; $6D03: $00
    nop                                           ; $6D04: $00
    nop                                           ; $6D05: $00
    nop                                           ; $6D06: $00

jr_01D_6D07:
    nop                                           ; $6D07: $00
    nop                                           ; $6D08: $00
    nop                                           ; $6D09: $00
    nop                                           ; $6D0A: $00
    nop                                           ; $6D0B: $00
    nop                                           ; $6D0C: $00
    nop                                           ; $6D0D: $00
    nop                                           ; $6D0E: $00
    nop                                           ; $6D0F: $00
    nop                                           ; $6D10: $00
    nop                                           ; $6D11: $00
    nop                                           ; $6D12: $00
    nop                                           ; $6D13: $00
    nop                                           ; $6D14: $00
    nop                                           ; $6D15: $00
    nop                                           ; $6D16: $00
    nop                                           ; $6D17: $00
    nop                                           ; $6D18: $00
    nop                                           ; $6D19: $00
    nop                                           ; $6D1A: $00
    nop                                           ; $6D1B: $00
    ldh a, [rP1]                                  ; $6D1C: $F0 $00
    ld a, a                                       ; $6D1E: $7F
    or b                                          ; $6D1F: $B0
    nop                                           ; $6D20: $00
    nop                                           ; $6D21: $00
    nop                                           ; $6D22: $00
    nop                                           ; $6D23: $00
    nop                                           ; $6D24: $00
    nop                                           ; $6D25: $00
    nop                                           ; $6D26: $00
    nop                                           ; $6D27: $00
    nop                                           ; $6D28: $00
    nop                                           ; $6D29: $00
    nop                                           ; $6D2A: $00
    nop                                           ; $6D2B: $00
    nop                                           ; $6D2C: $00
    nop                                           ; $6D2D: $00
    nop                                           ; $6D2E: $00
    nop                                           ; $6D2F: $00
    nop                                           ; $6D30: $00
    nop                                           ; $6D31: $00
    nop                                           ; $6D32: $00
    nop                                           ; $6D33: $00
    nop                                           ; $6D34: $00
    nop                                           ; $6D35: $00
    nop                                           ; $6D36: $00
    nop                                           ; $6D37: $00
    nop                                           ; $6D38: $00
    nop                                           ; $6D39: $00
    ld bc, $0100                                  ; $6D3A: $01 $00 $01
    nop                                           ; $6D3D: $00
    ld bc, $C400                                  ; $6D3E: $01 $00 $C4
    ld a, b                                       ; $6D41: $78
    add h                                         ; $6D42: $84
    ld hl, sp+$0A                                 ; $6D43: $F8 $0A
    db $FC                                        ; $6D45: $FC
    ld e, [hl]                                    ; $6D46: $5E
    db $FC                                        ; $6D47: $FC
    ld a, [hl]                                    ; $6D48: $7E
    db $FC                                        ; $6D49: $FC
    cp $FC                                        ; $6D4A: $FE $FC
    db $FC                                        ; $6D4C: $FC
    ld hl, sp-$04                                 ; $6D4D: $F8 $FC
    ldh a, [$FFFE]                                ; $6D4F: $F0 $FE
    db $EC                                        ; $6D51: $EC
    cp $FC                                        ; $6D52: $FE $FC
    rst RST_38                                    ; $6D54: $FF
    ld c, $0F                                     ; $6D55: $0E $0F
    ld b, $0F                                     ; $6D57: $06 $0F
    ld b, $7F                                     ; $6D59: $06 $7F
    ld [bc], a                                    ; $6D5B: $02
    sub e                                         ; $6D5C: $93
    ld l, h                                       ; $6D5D: $6C
    cp $00                                        ; $6D5E: $FE $00
    rst RST_38                                    ; $6D60: $FF
    dec de                                        ; $6D61: $1B
    cp a                                          ; $6D62: $BF
    ld d, [hl]                                    ; $6D63: $56
    rst RST_38                                    ; $6D64: $FF
    dec c                                         ; $6D65: $0D
    cp $7D                                        ; $6D66: $FE $7D
    cp $7B                                        ; $6D68: $FE $7B
    cp $BB                                        ; $6D6A: $FE $BB
    cp $BB                                        ; $6D6C: $FE $BB
    rst RST_38                                    ; $6D6E: $FF
    db $DB                                        ; $6D6F: $DB
    rst RST_38                                    ; $6D70: $FF
    push hl                                       ; $6D71: $E5
    rst RST_38                                    ; $6D72: $FF

jr_01D_6D73:
    jr jr_01D_6D73                                ; $6D73: $18 $FE

    ld a, h                                       ; $6D75: $7C
    db $FC                                        ; $6D76: $FC
    ldh a, [$FFF0]                                ; $6D77: $F0 $F0
    ret nz                                        ; $6D79: $C0

    ret nz                                        ; $6D7A: $C0

    nop                                           ; $6D7B: $00
    nop                                           ; $6D7C: $00
    nop                                           ; $6D7D: $00
    nop                                           ; $6D7E: $00
    nop                                           ; $6D7F: $00
    ccf                                           ; $6D80: $3F
    inc b                                         ; $6D81: $04
    ld d, [hl]                                    ; $6D82: $56
    add hl, hl                                    ; $6D83: $29
    dec sp                                        ; $6D84: $3B
    ld b, $17                                     ; $6D85: $06 $17
    rrca                                          ; $6D87: $0F
    rla                                           ; $6D88: $17
    rrca                                          ; $6D89: $0F
    rla                                           ; $6D8A: $17
    rrca                                          ; $6D8B: $0F
    rst RST_38                                    ; $6D8C: $FF
    rrca                                          ; $6D8D: $0F
    cp a                                          ; $6D8E: $BF
    xor $5F                                       ; $6D8F: $EE $5F
    or $EF                                        ; $6D91: $F6 $EF
    ei                                            ; $6D93: $FB
    rst RST_38                                    ; $6D94: $FF
    dec sp                                        ; $6D95: $3B
    ccf                                           ; $6D96: $3F
    ld b, $FF                                     ; $6D97: $06 $FF
    ld e, $9F                                     ; $6D99: $1E $9F
    ld l, h                                       ; $6D9B: $6C
    db $FC                                        ; $6D9C: $FC
    nop                                           ; $6D9D: $00
    nop                                           ; $6D9E: $00
    nop                                           ; $6D9F: $00
    nop                                           ; $6DA0: $00
    nop                                           ; $6DA1: $00
    nop                                           ; $6DA2: $00
    nop                                           ; $6DA3: $00
    nop                                           ; $6DA4: $00
    nop                                           ; $6DA5: $00
    nop                                           ; $6DA6: $00
    nop                                           ; $6DA7: $00
    nop                                           ; $6DA8: $00
    nop                                           ; $6DA9: $00
    nop                                           ; $6DAA: $00
    nop                                           ; $6DAB: $00
    inc bc                                        ; $6DAC: $03
    nop                                           ; $6DAD: $00
    ld c, $03                                     ; $6DAE: $0E $03
    inc de                                        ; $6DB0: $13
    rrca                                          ; $6DB1: $0F
    ccf                                           ; $6DB2: $3F
    rra                                           ; $6DB3: $1F
    cpl                                           ; $6DB4: $2F
    jr jr_01D_6E2F                                ; $6DB5: $18 $78

    jr nc, jr_01D_6E0A                            ; $6DB7: $30 $51

    jr nz, jr_01D_6E1D                            ; $6DB9: $20 $62

    ld bc, $0003                                  ; $6DBB: $01 $03 $00
    nop                                           ; $6DBE: $00
    nop                                           ; $6DBF: $00
    nop                                           ; $6DC0: $00
    nop                                           ; $6DC1: $00
    nop                                           ; $6DC2: $00
    nop                                           ; $6DC3: $00
    nop                                           ; $6DC4: $00
    nop                                           ; $6DC5: $00
    nop                                           ; $6DC6: $00
    nop                                           ; $6DC7: $00
    nop                                           ; $6DC8: $00
    nop                                           ; $6DC9: $00
    nop                                           ; $6DCA: $00
    nop                                           ; $6DCB: $00
    nop                                           ; $6DCC: $00
    nop                                           ; $6DCD: $00
    add b                                         ; $6DCE: $80
    nop                                           ; $6DCF: $00
    ld b, b                                       ; $6DD0: $40
    add b                                         ; $6DD1: $80
    ld b, b                                       ; $6DD2: $40
    add b                                         ; $6DD3: $80
    and b                                         ; $6DD4: $A0
    ret nz                                        ; $6DD5: $C0

    jr nz, @-$3E                                  ; $6DD6: $20 $C0

    jr @-$1E                                      ; $6DD8: $18 $E0

    db $EC                                        ; $6DDA: $EC
    ld hl, sp-$3E                                 ; $6DDB: $F8 $C2
    ld a, h                                       ; $6DDD: $7C
    db $DD                                        ; $6DDE: $DD
    cp [hl]                                       ; $6DDF: $BE
    add b                                         ; $6DE0: $80
    nop                                           ; $6DE1: $00
    ld b, b                                       ; $6DE2: $40
    add b                                         ; $6DE3: $80
    and b                                         ; $6DE4: $A0
    ret nz                                        ; $6DE5: $C0

    sub b                                         ; $6DE6: $90
    ldh [$FFE8], a                                ; $6DE7: $E0 $E8
    ldh a, [$FFC6]                                ; $6DE9: $F0 $C6
    ld a, b                                       ; $6DEB: $78
    ld sp, hl                                     ; $6DEC: $F9
    ld a, [hl]                                    ; $6DED: $7E
    ldh a, [$FF7F]                                ; $6DEE: $F0 $7F
    cp $FF                                        ; $6DF0: $FE $FF
    db $FC                                        ; $6DF2: $FC
    rst RST_38                                    ; $6DF3: $FF
    rst RST_38                                    ; $6DF4: $FF
    rst RST_38                                    ; $6DF5: $FF
    rst RST_38                                    ; $6DF6: $FF
    db $FD                                        ; $6DF7: $FD
    rst RST_38                                    ; $6DF8: $FF
    ld a, l                                       ; $6DF9: $7D
    rst RST_38                                    ; $6DFA: $FF
    halt                                          ; $6DFB: $76
    ld a, a                                       ; $6DFC: $7F
    dec sp                                        ; $6DFD: $3B
    rst RST_38                                    ; $6DFE: $FF
    dec a                                         ; $6DFF: $3D
    ld a, [hl]                                    ; $6E00: $7E
    cp a                                          ; $6E01: $BF
    rst RST_00                                    ; $6E02: $C7
    ld a, a                                       ; $6E03: $7F
    cp a                                          ; $6E04: $BF
    jp $9C7F                                      ; $6E05: $C3 $7F $9C


    or a                                          ; $6E08: $B7
    ld e, [hl]                                    ; $6E09: $5E

jr_01D_6E0A:
    ld l, e                                       ; $6E0A: $6B
    cp a                                          ; $6E0B: $BF
    rst RST_10                                    ; $6E0C: $D7
    ld a, a                                       ; $6E0D: $7F
    rst RST_38                                    ; $6E0E: $FF
    rst RST_38                                    ; $6E0F: $FF
    ld a, a                                       ; $6E10: $7F
    cp $FF                                        ; $6E11: $FE $FF
    ld a, c                                       ; $6E13: $79
    ld a, c                                       ; $6E14: $79
    nop                                           ; $6E15: $00
    ld bc, $0000                                  ; $6E16: $01 $00 $00
    nop                                           ; $6E19: $00
    nop                                           ; $6E1A: $00
    nop                                           ; $6E1B: $00
    nop                                           ; $6E1C: $00

jr_01D_6E1D:
    nop                                           ; $6E1D: $00
    nop                                           ; $6E1E: $00
    nop                                           ; $6E1F: $00
    nop                                           ; $6E20: $00
    nop                                           ; $6E21: $00
    nop                                           ; $6E22: $00
    nop                                           ; $6E23: $00
    nop                                           ; $6E24: $00
    nop                                           ; $6E25: $00
    nop                                           ; $6E26: $00
    nop                                           ; $6E27: $00
    rlca                                          ; $6E28: $07
    nop                                           ; $6E29: $00
    ld a, [hl]                                    ; $6E2A: $7E
    dec b                                         ; $6E2B: $05
    add h                                         ; $6E2C: $84
    ld a, e                                       ; $6E2D: $7B
    ld l, e                                       ; $6E2E: $6B

jr_01D_6E2F:
    call c, $FF15                                 ; $6E2F: $DC $15 $FF
    rst RST_38                                    ; $6E32: $FF
    cp $FF                                        ; $6E33: $FE $FF
    nop                                           ; $6E35: $00
    ld d, l                                       ; $6E36: $55
    ld a, [hl+]                                   ; $6E37: $2A
    ld a, a                                       ; $6E38: $7F
    nop                                           ; $6E39: $00
    bit 7, a                                      ; $6E3A: $CB $7F
    ld a, a                                       ; $6E3C: $7F
    inc a                                         ; $6E3D: $3C
    inc a                                         ; $6E3E: $3C
    nop                                           ; $6E3F: $00
    nop                                           ; $6E40: $00
    nop                                           ; $6E41: $00
    nop                                           ; $6E42: $00
    nop                                           ; $6E43: $00
    nop                                           ; $6E44: $00
    nop                                           ; $6E45: $00
    nop                                           ; $6E46: $00
    nop                                           ; $6E47: $00
    nop                                           ; $6E48: $00
    nop                                           ; $6E49: $00
    nop                                           ; $6E4A: $00
    nop                                           ; $6E4B: $00
    nop                                           ; $6E4C: $00
    nop                                           ; $6E4D: $00
    nop                                           ; $6E4E: $00
    nop                                           ; $6E4F: $00
    nop                                           ; $6E50: $00
    nop                                           ; $6E51: $00
    nop                                           ; $6E52: $00
    nop                                           ; $6E53: $00
    nop                                           ; $6E54: $00
    nop                                           ; $6E55: $00
    nop                                           ; $6E56: $00
    nop                                           ; $6E57: $00
    nop                                           ; $6E58: $00
    nop                                           ; $6E59: $00
    nop                                           ; $6E5A: $00
    nop                                           ; $6E5B: $00
    ldh a, [rP1]                                  ; $6E5C: $F0 $00
    ld a, a                                       ; $6E5E: $7F
    or b                                          ; $6E5F: $B0
    nop                                           ; $6E60: $00
    nop                                           ; $6E61: $00
    nop                                           ; $6E62: $00
    nop                                           ; $6E63: $00
    nop                                           ; $6E64: $00
    nop                                           ; $6E65: $00
    nop                                           ; $6E66: $00
    nop                                           ; $6E67: $00
    nop                                           ; $6E68: $00
    nop                                           ; $6E69: $00
    nop                                           ; $6E6A: $00
    nop                                           ; $6E6B: $00
    nop                                           ; $6E6C: $00
    nop                                           ; $6E6D: $00
    nop                                           ; $6E6E: $00
    nop                                           ; $6E6F: $00
    nop                                           ; $6E70: $00
    nop                                           ; $6E71: $00
    nop                                           ; $6E72: $00
    nop                                           ; $6E73: $00
    nop                                           ; $6E74: $00
    nop                                           ; $6E75: $00
    nop                                           ; $6E76: $00
    nop                                           ; $6E77: $00
    nop                                           ; $6E78: $00
    nop                                           ; $6E79: $00
    ld bc, $0100                                  ; $6E7A: $01 $00 $01
    nop                                           ; $6E7D: $00
    ld bc, $C400                                  ; $6E7E: $01 $00 $C4
    ld a, b                                       ; $6E81: $78
    add h                                         ; $6E82: $84
    ld hl, sp+$0A                                 ; $6E83: $F8 $0A
    db $FC                                        ; $6E85: $FC
    ld e, [hl]                                    ; $6E86: $5E
    db $FC                                        ; $6E87: $FC
    ld a, [hl]                                    ; $6E88: $7E
    db $FC                                        ; $6E89: $FC
    cp $FC                                        ; $6E8A: $FE $FC
    db $FC                                        ; $6E8C: $FC
    ld hl, sp-$04                                 ; $6E8D: $F8 $FC
    ldh a, [$FFFE]                                ; $6E8F: $F0 $FE
    db $EC                                        ; $6E91: $EC
    cp $FC                                        ; $6E92: $FE $FC
    rst RST_38                                    ; $6E94: $FF
    ld c, $0F                                     ; $6E95: $0E $0F
    ld b, $0F                                     ; $6E97: $06 $0F
    ld b, $7F                                     ; $6E99: $06 $7F
    ld [bc], a                                    ; $6E9B: $02
    sub e                                         ; $6E9C: $93
    ld l, h                                       ; $6E9D: $6C
    cp $00                                        ; $6E9E: $FE $00
    rst RST_38                                    ; $6EA0: $FF
    dec de                                        ; $6EA1: $1B
    cp a                                          ; $6EA2: $BF
    ld d, [hl]                                    ; $6EA3: $56
    rst RST_38                                    ; $6EA4: $FF
    dec c                                         ; $6EA5: $0D
    cp $7D                                        ; $6EA6: $FE $7D
    cp $7B                                        ; $6EA8: $FE $7B
    cp $BB                                        ; $6EAA: $FE $BB
    cp $BB                                        ; $6EAC: $FE $BB
    rst RST_38                                    ; $6EAE: $FF
    db $DB                                        ; $6EAF: $DB
    rst RST_38                                    ; $6EB0: $FF
    push hl                                       ; $6EB1: $E5
    rst RST_38                                    ; $6EB2: $FF

jr_01D_6EB3:
    jr jr_01D_6EB3                                ; $6EB3: $18 $FE

    ld a, h                                       ; $6EB5: $7C
    db $FC                                        ; $6EB6: $FC
    ldh a, [$FFF0]                                ; $6EB7: $F0 $F0
    ret nz                                        ; $6EB9: $C0

    ret nz                                        ; $6EBA: $C0

    nop                                           ; $6EBB: $00
    nop                                           ; $6EBC: $00
    nop                                           ; $6EBD: $00
    nop                                           ; $6EBE: $00
    nop                                           ; $6EBF: $00
    rst RST_38                                    ; $6EC0: $FF
    inc c                                         ; $6EC1: $0C
    ld a, [hl]                                    ; $6EC2: $7E
    cp c                                          ; $6EC3: $B9
    ei                                            ; $6EC4: $FB
    ld b, $17                                     ; $6EC5: $06 $17
    rrca                                          ; $6EC7: $0F
    rla                                           ; $6EC8: $17
    rrca                                          ; $6EC9: $0F
    rla                                           ; $6ECA: $17
    rrca                                          ; $6ECB: $0F
    rst RST_38                                    ; $6ECC: $FF
    rrca                                          ; $6ECD: $0F
    cp a                                          ; $6ECE: $BF
    xor $5F                                       ; $6ECF: $EE $5F
    or $EF                                        ; $6ED1: $F6 $EF
    ei                                            ; $6ED3: $FB
    rst RST_38                                    ; $6ED4: $FF
    dec sp                                        ; $6ED5: $3B
    ccf                                           ; $6ED6: $3F
    ld b, $FF                                     ; $6ED7: $06 $FF
    ld e, $9F                                     ; $6ED9: $1E $9F
    ld l, h                                       ; $6EDB: $6C
    db $FC                                        ; $6EDC: $FC
    nop                                           ; $6EDD: $00
    nop                                           ; $6EDE: $00
    nop                                           ; $6EDF: $00
    dec b                                         ; $6EE0: $05
    ld [bc], a                                    ; $6EE1: $02
    dec b                                         ; $6EE2: $05
    ld [bc], a                                    ; $6EE3: $02
    inc bc                                        ; $6EE4: $03
    nop                                           ; $6EE5: $00
    nop                                           ; $6EE6: $00
    nop                                           ; $6EE7: $00
    nop                                           ; $6EE8: $00
    nop                                           ; $6EE9: $00
    nop                                           ; $6EEA: $00
    nop                                           ; $6EEB: $00
    inc bc                                        ; $6EEC: $03
    nop                                           ; $6EED: $00
    ld c, $03                                     ; $6EEE: $0E $03
    inc de                                        ; $6EF0: $13
    rrca                                          ; $6EF1: $0F
    ccf                                           ; $6EF2: $3F
    rra                                           ; $6EF3: $1F
    cpl                                           ; $6EF4: $2F
    jr jr_01D_6F6F                                ; $6EF5: $18 $78

    jr nc, jr_01D_6F4A                            ; $6EF7: $30 $51

    jr nz, @+$64                                  ; $6EF9: $20 $62

    ld bc, $0003                                  ; $6EFB: $01 $03 $00
    nop                                           ; $6EFE: $00
    nop                                           ; $6EFF: $00
    nop                                           ; $6F00: $00
    nop                                           ; $6F01: $00
    nop                                           ; $6F02: $00
    nop                                           ; $6F03: $00
    nop                                           ; $6F04: $00
    nop                                           ; $6F05: $00
    nop                                           ; $6F06: $00
    nop                                           ; $6F07: $00
    nop                                           ; $6F08: $00
    nop                                           ; $6F09: $00
    nop                                           ; $6F0A: $00
    nop                                           ; $6F0B: $00
    nop                                           ; $6F0C: $00
    nop                                           ; $6F0D: $00
    add b                                         ; $6F0E: $80
    nop                                           ; $6F0F: $00
    ld b, b                                       ; $6F10: $40
    add b                                         ; $6F11: $80
    ld b, b                                       ; $6F12: $40
    add b                                         ; $6F13: $80
    and b                                         ; $6F14: $A0
    ret nz                                        ; $6F15: $C0

    jr nz, @-$3E                                  ; $6F16: $20 $C0

    jr @-$1E                                      ; $6F18: $18 $E0

    db $EC                                        ; $6F1A: $EC
    ld hl, sp-$3E                                 ; $6F1B: $F8 $C2
    ld a, h                                       ; $6F1D: $7C
    db $DD                                        ; $6F1E: $DD
    cp [hl]                                       ; $6F1F: $BE
    add b                                         ; $6F20: $80
    nop                                           ; $6F21: $00
    ld b, b                                       ; $6F22: $40
    add b                                         ; $6F23: $80
    and b                                         ; $6F24: $A0
    ret nz                                        ; $6F25: $C0

    sub b                                         ; $6F26: $90
    ldh [$FFE8], a                                ; $6F27: $E0 $E8
    ldh a, [$FFC6]                                ; $6F29: $F0 $C6
    ld a, b                                       ; $6F2B: $78
    ld sp, hl                                     ; $6F2C: $F9
    ld a, [hl]                                    ; $6F2D: $7E
    ldh a, [$FF7F]                                ; $6F2E: $F0 $7F
    cp $FF                                        ; $6F30: $FE $FF
    db $FC                                        ; $6F32: $FC
    rst RST_38                                    ; $6F33: $FF
    rst RST_38                                    ; $6F34: $FF
    rst RST_38                                    ; $6F35: $FF
    rst RST_38                                    ; $6F36: $FF
    db $FD                                        ; $6F37: $FD
    rst RST_38                                    ; $6F38: $FF
    ld a, l                                       ; $6F39: $7D
    rst RST_38                                    ; $6F3A: $FF
    halt                                          ; $6F3B: $76
    rst RST_38                                    ; $6F3C: $FF
    cp e                                          ; $6F3D: $BB
    rst RST_38                                    ; $6F3E: $FF
    cp l                                          ; $6F3F: $BD
    ld a, [hl]                                    ; $6F40: $7E
    cp a                                          ; $6F41: $BF
    rst RST_00                                    ; $6F42: $C7
    ld a, a                                       ; $6F43: $7F
    cp a                                          ; $6F44: $BF
    jp $9C7F                                      ; $6F45: $C3 $7F $9C


    or a                                          ; $6F48: $B7
    ld e, [hl]                                    ; $6F49: $5E

jr_01D_6F4A:
    ld l, e                                       ; $6F4A: $6B
    cp a                                          ; $6F4B: $BF
    rst RST_10                                    ; $6F4C: $D7
    ld a, a                                       ; $6F4D: $7F
    rst RST_38                                    ; $6F4E: $FF
    rst RST_38                                    ; $6F4F: $FF
    ld a, a                                       ; $6F50: $7F
    cp $FF                                        ; $6F51: $FE $FF
    ld a, c                                       ; $6F53: $79
    ld a, c                                       ; $6F54: $79
    nop                                           ; $6F55: $00
    ld bc, $0000                                  ; $6F56: $01 $00 $00
    nop                                           ; $6F59: $00
    nop                                           ; $6F5A: $00
    nop                                           ; $6F5B: $00
    ld bc, $4100                                  ; $6F5C: $01 $00 $41
    nop                                           ; $6F5F: $00
    nop                                           ; $6F60: $00
    nop                                           ; $6F61: $00
    nop                                           ; $6F62: $00
    nop                                           ; $6F63: $00
    nop                                           ; $6F64: $00
    nop                                           ; $6F65: $00
    nop                                           ; $6F66: $00
    nop                                           ; $6F67: $00
    rlca                                          ; $6F68: $07
    nop                                           ; $6F69: $00
    ld a, [hl]                                    ; $6F6A: $7E
    dec b                                         ; $6F6B: $05
    add h                                         ; $6F6C: $84
    ld a, e                                       ; $6F6D: $7B
    ld l, e                                       ; $6F6E: $6B

jr_01D_6F6F:
    call c, $FF15                                 ; $6F6F: $DC $15 $FF
    rst RST_38                                    ; $6F72: $FF
    cp $FF                                        ; $6F73: $FE $FF
    nop                                           ; $6F75: $00
    ld d, l                                       ; $6F76: $55
    ld a, [hl+]                                   ; $6F77: $2A
    ld a, a                                       ; $6F78: $7F
    nop                                           ; $6F79: $00
    bit 7, a                                      ; $6F7A: $CB $7F
    ld a, a                                       ; $6F7C: $7F
    inc a                                         ; $6F7D: $3C
    inc a                                         ; $6F7E: $3C
    nop                                           ; $6F7F: $00
    nop                                           ; $6F80: $00
    nop                                           ; $6F81: $00
    nop                                           ; $6F82: $00
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
    ldh a, [rP1]                                  ; $6F9C: $F0 $00
    ld a, a                                       ; $6F9E: $7F
    or b                                          ; $6F9F: $B0
    nop                                           ; $6FA0: $00
    nop                                           ; $6FA1: $00
    nop                                           ; $6FA2: $00
    nop                                           ; $6FA3: $00
    nop                                           ; $6FA4: $00
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
    ld bc, $0100                                  ; $6FBA: $01 $00 $01
    nop                                           ; $6FBD: $00
    ld bc, $0700                                  ; $6FBE: $01 $00 $07
    nop                                           ; $6FC1: $00
    ld a, [hl]                                    ; $6FC2: $7E
    dec b                                         ; $6FC3: $05
    add h                                         ; $6FC4: $84
    ld a, e                                       ; $6FC5: $7B
    ld l, e                                       ; $6FC6: $6B
    call c, $FF15                                 ; $6FC7: $DC $15 $FF
    rst RST_38                                    ; $6FCA: $FF
    cp $FF                                        ; $6FCB: $FE $FF
    nop                                           ; $6FCD: $00
    ld d, l                                       ; $6FCE: $55
    ld a, [hl+]                                   ; $6FCF: $2A
    ld a, a                                       ; $6FD0: $7F
    nop                                           ; $6FD1: $00
    bit 7, a                                      ; $6FD2: $CB $7F
    ld a, a                                       ; $6FD4: $7F
    inc a                                         ; $6FD5: $3C
    inc a                                         ; $6FD6: $3C
    nop                                           ; $6FD7: $00
    nop                                           ; $6FD8: $00
    nop                                           ; $6FD9: $00
    nop                                           ; $6FDA: $00
    nop                                           ; $6FDB: $00
    inc bc                                        ; $6FDC: $03
    nop                                           ; $6FDD: $00
    dec b                                         ; $6FDE: $05
    ld [bc], a                                    ; $6FDF: $02
    ld a, a                                       ; $6FE0: $7F
    or b                                          ; $6FE1: $B0
    ld a, [hl]                                    ; $6FE2: $7E
    cp a                                          ; $6FE3: $BF
    rst RST_00                                    ; $6FE4: $C7
    ld a, a                                       ; $6FE5: $7F
    cp a                                          ; $6FE6: $BF
    jp $9C7F                                      ; $6FE7: $C3 $7F $9C


    or a                                          ; $6FEA: $B7
    ld e, [hl]                                    ; $6FEB: $5E
    ld l, e                                       ; $6FEC: $6B
    cp a                                          ; $6FED: $BF
    rst RST_10                                    ; $6FEE: $D7
    ld a, a                                       ; $6FEF: $7F
    rst RST_38                                    ; $6FF0: $FF
    rst RST_38                                    ; $6FF1: $FF
    ld a, a                                       ; $6FF2: $7F
    cp $FF                                        ; $6FF3: $FE $FF
    ld a, c                                       ; $6FF5: $79
    ld a, c                                       ; $6FF6: $79
    nop                                           ; $6FF7: $00

jr_01D_6FF8:
    ld bc, $FF00                                  ; $6FF8: $01 $00 $FF
    nop                                           ; $6FFB: $00
    rst RST_38                                    ; $6FFC: $FF
    ccf                                           ; $6FFD: $3F
    ld a, a                                       ; $6FFE: $7F
    add e                                         ; $6FFF: $83
    nop                                           ; $7000: $00
    nop                                           ; $7001: $00
    add b                                         ; $7002: $80
    nop                                           ; $7003: $00
    ld b, b                                       ; $7004: $40
    add b                                         ; $7005: $80
    and b                                         ; $7006: $A0
    ret nz                                        ; $7007: $C0

    sub b                                         ; $7008: $90
    ldh [$FFE8], a                                ; $7009: $E0 $E8
    ldh a, [$FFC6]                                ; $700B: $F0 $C6
    ld a, b                                       ; $700D: $78
    ld sp, hl                                     ; $700E: $F9
    ld a, [hl]                                    ; $700F: $7E
    ldh a, [$FF7F]                                ; $7010: $F0 $7F
    cp $FF                                        ; $7012: $FE $FF
    db $FC                                        ; $7014: $FC
    rst RST_38                                    ; $7015: $FF
    rst RST_38                                    ; $7016: $FF
    rst RST_38                                    ; $7017: $FF
    rst RST_38                                    ; $7018: $FF
    db $FD                                        ; $7019: $FD
    rst RST_38                                    ; $701A: $FF
    ld a, [hl]                                    ; $701B: $7E
    rst RST_38                                    ; $701C: $FF
    ld [hl], e                                    ; $701D: $73
    rst RST_38                                    ; $701E: $FF
    cp h                                          ; $701F: $BC
    nop                                           ; $7020: $00
    nop                                           ; $7021: $00
    nop                                           ; $7022: $00
    nop                                           ; $7023: $00
    nop                                           ; $7024: $00
    nop                                           ; $7025: $00
    nop                                           ; $7026: $00
    nop                                           ; $7027: $00
    nop                                           ; $7028: $00
    nop                                           ; $7029: $00
    nop                                           ; $702A: $00
    nop                                           ; $702B: $00
    nop                                           ; $702C: $00
    nop                                           ; $702D: $00
    add b                                         ; $702E: $80
    nop                                           ; $702F: $00
    ld b, b                                       ; $7030: $40
    add b                                         ; $7031: $80
    ld b, b                                       ; $7032: $40
    add b                                         ; $7033: $80
    and b                                         ; $7034: $A0
    ret nz                                        ; $7035: $C0

    jr nz, jr_01D_6FF8                            ; $7036: $20 $C0

    sbc b                                         ; $7038: $98
    ld h, b                                       ; $7039: $60
    db $EC                                        ; $703A: $EC
    cp b                                          ; $703B: $B8
    ldh [c], a                                    ; $703C: $E2
    call c, $BEDD                                 ; $703D: $DC $DD $BE
    ld e, b                                       ; $7040: $58
    jr nz, @+$22                                  ; $7041: $20 $20

    nop                                           ; $7043: $00
    nop                                           ; $7044: $00
    nop                                           ; $7045: $00
    nop                                           ; $7046: $00
    nop                                           ; $7047: $00
    nop                                           ; $7048: $00
    nop                                           ; $7049: $00
    nop                                           ; $704A: $00
    nop                                           ; $704B: $00
    nop                                           ; $704C: $00
    nop                                           ; $704D: $00
    ld bc, $0700                                  ; $704E: $01 $00 $07
    ld bc, $0719                                  ; $7051: $01 $19 $07
    cpl                                           ; $7054: $2F
    rra                                           ; $7055: $1F
    ld a, a                                       ; $7056: $7F
    jr c, jr_01D_70B1                             ; $7057: $38 $58

    jr nz, jr_01D_70BC                            ; $7059: $20 $61

    nop                                           ; $705B: $00
    ld [bc], a                                    ; $705C: $02
    ld bc, $0003                                  ; $705D: $01 $03 $00
    ccf                                           ; $7060: $3F
    ld [bc], a                                    ; $7061: $02
    ld b, $01                                     ; $7062: $06 $01
    rrca                                          ; $7064: $0F
    nop                                           ; $7065: $00
    rla                                           ; $7066: $17
    dec c                                         ; $7067: $0D
    cpl                                           ; $7068: $2F
    ld e, $2F                                     ; $7069: $1E $2F
    ld e, $2F                                     ; $706B: $1E $2F
    rra                                           ; $706D: $1F
    rst RST_28                                    ; $706E: $EF
    rra                                           ; $706F: $1F
    ld a, a                                       ; $7070: $7F
    rst RST_18                                    ; $7071: $DF
    rst RST_38                                    ; $7072: $FF
    db $ED                                        ; $7073: $ED
    rst RST_38                                    ; $7074: $FF
    or $FF                                        ; $7075: $F6 $FF
    dec de                                        ; $7077: $1B
    rra                                           ; $7078: $1F
    ld b, $FF                                     ; $7079: $06 $FF
    ld e, $9F                                     ; $707B: $1E $9F
    ld l, h                                       ; $707D: $6C
    db $FC                                        ; $707E: $FC
    nop                                           ; $707F: $00
    db $FD                                        ; $7080: $FD
    dec de                                        ; $7081: $1B
    cp a                                          ; $7082: $BF
    ld d, [hl]                                    ; $7083: $56
    rst RST_38                                    ; $7084: $FF
    dec c                                         ; $7085: $0D
    cp $FB                                        ; $7086: $FE $FB
    db $FC                                        ; $7088: $FC
    ei                                            ; $7089: $FB
    db $FC                                        ; $708A: $FC
    rst RST_30                                    ; $708B: $F7
    db $FD                                        ; $708C: $FD
    ld [hl], a                                    ; $708D: $77
    db $FD                                        ; $708E: $FD
    ld [hl], a                                    ; $708F: $77
    rst RST_38                                    ; $7090: $FF
    or a                                          ; $7091: $B7
    rst RST_38                                    ; $7092: $FF
    set 7, a                                      ; $7093: $CB $FF
    jr nc, @+$01                                  ; $7095: $30 $FF

    ld a, [hl]                                    ; $7097: $7E
    cp $F8                                        ; $7098: $FE $F8
    ld hl, sp-$20                                 ; $709A: $F8 $E0
    ldh [rP1], a                                  ; $709C: $E0 $00
    nop                                           ; $709E: $00
    nop                                           ; $709F: $00
    adc b                                         ; $70A0: $88
    ldh a, [$FF08]                                ; $70A1: $F0 $08
    ldh a, [rNR14]                                ; $70A3: $F0 $14
    ld hl, sp-$44                                 ; $70A5: $F8 $BC
    ld hl, sp-$04                                 ; $70A7: $F8 $FC
    ld hl, sp-$04                                 ; $70A9: $F8 $FC
    ld hl, sp-$08                                 ; $70AB: $F8 $F8
    ldh a, [$FFFC]                                ; $70AD: $F0 $FC
    ldh [$FFFE], a                                ; $70AF: $E0 $FE

jr_01D_70B1:
    db $EC                                        ; $70B1: $EC
    cp $FC                                        ; $70B2: $FE $FC
    rst RST_38                                    ; $70B4: $FF
    ld c, $0F                                     ; $70B5: $0E $0F
    ld b, $0F                                     ; $70B7: $06 $0F
    ld b, $7F                                     ; $70B9: $06 $7F
    ld [bc], a                                    ; $70BB: $02

jr_01D_70BC:
    sub e                                         ; $70BC: $93
    ld l, h                                       ; $70BD: $6C
    cp $00                                        ; $70BE: $FE $00
    nop                                           ; $70C0: $00
    nop                                           ; $70C1: $00
    nop                                           ; $70C2: $00
    nop                                           ; $70C3: $00
    nop                                           ; $70C4: $00
    nop                                           ; $70C5: $00
    nop                                           ; $70C6: $00
    nop                                           ; $70C7: $00
    nop                                           ; $70C8: $00
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
    ld bc, $0100                                  ; $70DA: $01 $00 $01
    nop                                           ; $70DD: $00
    ld bc, $0000                                  ; $70DE: $01 $00 $00
    nop                                           ; $70E1: $00
    nop                                           ; $70E2: $00
    nop                                           ; $70E3: $00
    nop                                           ; $70E4: $00
    nop                                           ; $70E5: $00
    nop                                           ; $70E6: $00
    nop                                           ; $70E7: $00
    nop                                           ; $70E8: $00
    nop                                           ; $70E9: $00
    nop                                           ; $70EA: $00
    nop                                           ; $70EB: $00
    nop                                           ; $70EC: $00
    nop                                           ; $70ED: $00
    nop                                           ; $70EE: $00
    nop                                           ; $70EF: $00
    nop                                           ; $70F0: $00
    nop                                           ; $70F1: $00

jr_01D_70F2:
    nop                                           ; $70F2: $00
    nop                                           ; $70F3: $00

jr_01D_70F4:
    nop                                           ; $70F4: $00
    nop                                           ; $70F5: $00
    nop                                           ; $70F6: $00
    nop                                           ; $70F7: $00
    nop                                           ; $70F8: $00
    nop                                           ; $70F9: $00
    nop                                           ; $70FA: $00
    nop                                           ; $70FB: $00
    nop                                           ; $70FC: $00
    nop                                           ; $70FD: $00
    ldh a, [rP1]                                  ; $70FE: $F0 $00
    rrca                                          ; $7100: $0F
    ld b, $1B                                     ; $7101: $06 $1B
    ld c, $36                                     ; $7103: $0E $36
    inc e                                         ; $7105: $1C
    ld h, [hl]                                    ; $7106: $66
    inc a                                         ; $7107: $3C
    call z, $8C78                                 ; $7108: $CC $78 $8C
    ld hl, sp+$18                                 ; $710B: $F8 $18
    ldh a, [rNR23]                                ; $710D: $F0 $18
    ldh a, [$FF30]                                ; $710F: $F0 $30
    ldh [$FF30], a                                ; $7111: $E0 $30
    ldh [$FF60], a                                ; $7113: $E0 $60
    ret nz                                        ; $7115: $C0

    ld h, b                                       ; $7116: $60
    ret nz                                        ; $7117: $C0

jr_01D_7118:
    ret nz                                        ; $7118: $C0

    add b                                         ; $7119: $80
    ret nz                                        ; $711A: $C0

    add b                                         ; $711B: $80
    add b                                         ; $711C: $80
    nop                                           ; $711D: $00
    add b                                         ; $711E: $80
    nop                                           ; $711F: $00
    jr c, jr_01D_70F2                             ; $7120: $38 $D0

    jr c, jr_01D_70F4                             ; $7122: $38 $D0

    ld a, b                                       ; $7124: $78
    or b                                          ; $7125: $B0
    ld hl, sp-$50                                 ; $7126: $F8 $B0
    ret c                                         ; $7128: $D8

    ld [hl], b                                    ; $7129: $70
    reti                                          ; $712A: $D9


    ld [hl], b                                    ; $712B: $70
    cp e                                          ; $712C: $BB
    pop de                                        ; $712D: $D1
    cp $93                                        ; $712E: $FE $93
    sbc h                                         ; $7130: $9C
    ld [hl], a                                    ; $7131: $77
    jr @+$01                                      ; $7132: $18 $FF

    sbc b                                         ; $7134: $98
    ld [hl], a                                    ; $7135: $77
    ld c, b                                       ; $7136: $48
    or a                                          ; $7137: $B7
    ld c, b                                       ; $7138: $48
    or a                                          ; $7139: $B7
    add sp, $17                                   ; $713A: $E8 $17
    sbc c                                         ; $713C: $99
    ld h, a                                       ; $713D: $67
    pop af                                        ; $713E: $F1
    rrca                                          ; $713F: $0F
    rst RST_30                                    ; $7140: $F7
    jp c, $B6EB                                   ; $7141: $DA $EB $B6

    di                                            ; $7144: $F3
    ld l, $D3                                     ; $7145: $2E $D3
    ld l, [hl]                                    ; $7147: $6E
    db $E3                                        ; $7148: $E3
    ld e, [hl]                                    ; $7149: $5E
    and e                                         ; $714A: $A3
    sbc $A3                                       ; $714B: $DE $A3
    sbc $23                                       ; $714D: $DE $23
    sbc $D3                                       ; $714F: $DE $D3
    cpl                                           ; $7151: $2F
    ld a, [hl-]                                   ; $7152: $3A
    rst RST_00                                    ; $7153: $C7
    rla                                           ; $7154: $17
    add sp, $60                                   ; $7155: $E8 $60
    sbc a                                         ; $7157: $9F
    add b                                         ; $7158: $80
    ld a, a                                       ; $7159: $7F
    inc bc                                        ; $715A: $03
    db $FC                                        ; $715B: $FC
    inc b                                         ; $715C: $04
    ei                                            ; $715D: $FB
    rlca                                          ; $715E: $07
    ld hl, sp-$01                                 ; $715F: $F8 $FF
    jr nz, jr_01D_7118                            ; $7161: $20 $B5

    ld c, d                                       ; $7163: $4A
    rst RST_18                                    ; $7164: $DF
    or b                                          ; $7165: $B0
    rst RST_38                                    ; $7166: $FF
    ld e, e                                       ; $7167: $5B
    cp a                                          ; $7168: $BF
    ld l, e                                       ; $7169: $6B
    sbc a                                         ; $716A: $9F
    ld [hl], h                                    ; $716B: $74
    adc a                                         ; $716C: $8F
    ld a, b                                       ; $716D: $78
    adc a                                         ; $716E: $8F
    ld [hl], l                                    ; $716F: $75
    ld c, d                                       ; $7170: $4A
    or a                                          ; $7171: $B7
    daa                                           ; $7172: $27
    ret c                                         ; $7173: $D8

    inc h                                         ; $7174: $24
    db $DB                                        ; $7175: $DB
    ret z                                         ; $7176: $C8

    scf                                           ; $7177: $37
    add hl, bc                                    ; $7178: $09
    or $9E                                        ; $7179: $F6 $9E
    ld h, c                                       ; $717B: $61
    ldh [$FF1F], a                                ; $717C: $E0 $1F
    nop                                           ; $717E: $00
    rst RST_38                                    ; $717F: $FF
    dec de                                        ; $7180: $1B
    ld c, $1B                                     ; $7181: $0E $1B
    dec c                                         ; $7183: $0D
    add hl, de                                    ; $7184: $19
    ld c, $18                                     ; $7185: $0E $18
    rrca                                          ; $7187: $0F
    jr jr_01D_7199                                ; $7188: $18 $0F

    jr jr_01D_719B                                ; $718A: $18 $0F

    rra                                           ; $718C: $1F
    ld [$0FF8], sp                                ; $718D: $08 $F8 $0F
    ld hl, sp-$71                                 ; $7190: $F8 $8F
    ld a, b                                       ; $7192: $78
    rst RST_28                                    ; $7193: $EF
    ld a, $D9                                     ; $7194: $3E $D9
    ld b, c                                       ; $7196: $41
    cp [hl]                                       ; $7197: $BE
    adc a                                         ; $7198: $8F

jr_01D_7199:
    ld [hl], b                                    ; $7199: $70
    inc d                                         ; $719A: $14

jr_01D_719B:
    db $EB                                        ; $719B: $EB
    rra                                           ; $719C: $1F
    ldh [rP1], a                                  ; $719D: $E0 $00
    rst RST_38                                    ; $719F: $FF
    nop                                           ; $71A0: $00
    nop                                           ; $71A1: $00
    nop                                           ; $71A2: $00
    nop                                           ; $71A3: $00
    nop                                           ; $71A4: $00
    nop                                           ; $71A5: $00
    ret nz                                        ; $71A6: $C0

    nop                                           ; $71A7: $00
    ldh a, [$FFC0]                                ; $71A8: $F0 $C0
    cp b                                          ; $71AA: $B8
    ldh a, [$FFCE]                                ; $71AB: $F0 $CE
    ld a, b                                       ; $71AD: $78
    rst RST_00                                    ; $71AE: $C7
    ld a, [hl]                                    ; $71AF: $7E
    ld h, c                                       ; $71B0: $61
    ccf                                           ; $71B1: $3F
    ld h, c                                       ; $71B2: $61
    ld a, $31                                     ; $71B3: $3E $31
    ld e, $32                                     ; $71B5: $1E $32
    dec e                                         ; $71B7: $1D
    ld a, [de]                                    ; $71B8: $1A
    dec c                                         ; $71B9: $0D
    dec de                                        ; $71BA: $1B
    inc c                                         ; $71BB: $0C
    inc c                                         ; $71BC: $0C
    rlca                                          ; $71BD: $07
    inc c                                         ; $71BE: $0C
    rlca                                          ; $71BF: $07
    nop                                           ; $71C0: $00
    nop                                           ; $71C1: $00
    nop                                           ; $71C2: $00
    nop                                           ; $71C3: $00
    nop                                           ; $71C4: $00
    nop                                           ; $71C5: $00
    nop                                           ; $71C6: $00
    nop                                           ; $71C7: $00
    nop                                           ; $71C8: $00
    nop                                           ; $71C9: $00
    nop                                           ; $71CA: $00
    nop                                           ; $71CB: $00

jr_01D_71CC:
    nop                                           ; $71CC: $00
    nop                                           ; $71CD: $00
    nop                                           ; $71CE: $00

jr_01D_71CF:
    nop                                           ; $71CF: $00
    nop                                           ; $71D0: $00
    nop                                           ; $71D1: $00
    nop                                           ; $71D2: $00
    nop                                           ; $71D3: $00
    nop                                           ; $71D4: $00
    nop                                           ; $71D5: $00
    ld [$1800], sp                                ; $71D6: $08 $00 $18
    nop                                           ; $71D9: $00
    jr c, jr_01D_71EC                             ; $71DA: $38 $10

    ld [hl], b                                    ; $71DC: $70
    jr nz, jr_01D_71CF                            ; $71DD: $20 $F0

    ld h, b                                       ; $71DF: $60
    nop                                           ; $71E0: $00
    nop                                           ; $71E1: $00
    nop                                           ; $71E2: $00
    nop                                           ; $71E3: $00
    nop                                           ; $71E4: $00
    nop                                           ; $71E5: $00
    nop                                           ; $71E6: $00
    nop                                           ; $71E7: $00
    nop                                           ; $71E8: $00
    nop                                           ; $71E9: $00
    jr nz, jr_01D_71EC                            ; $71EA: $20 $00

jr_01D_71EC:
    jr nz, jr_01D_71EE                            ; $71EC: $20 $00

jr_01D_71EE:
    ld h, b                                       ; $71EE: $60
    nop                                           ; $71EF: $00
    ld h, b                                       ; $71F0: $60
    nop                                           ; $71F1: $00
    ldh [rLCDC], a                                ; $71F2: $E0 $40
    ldh [rLCDC], a                                ; $71F4: $E0 $40
    ldh [$FFC0], a                                ; $71F6: $E0 $C0
    pop hl                                        ; $71F8: $E1
    ret nz                                        ; $71F9: $C0

    ld h, c                                       ; $71FA: $61
    ret nz                                        ; $71FB: $C0

    ld [hl], e                                    ; $71FC: $73
    ret nz                                        ; $71FD: $C0

    ld l, e                                       ; $71FE: $6B
    ret nc                                        ; $71FF: $D0

    nop                                           ; $7200: $00
    nop                                           ; $7201: $00
    nop                                           ; $7202: $00
    nop                                           ; $7203: $00
    nop                                           ; $7204: $00
    nop                                           ; $7205: $00
    add b                                         ; $7206: $80
    nop                                           ; $7207: $00
    ld b, b                                       ; $7208: $40
    add b                                         ; $7209: $80
    jr nc, jr_01D_71CC                            ; $720A: $30 $C0

    ret z                                         ; $720C: $C8

    ldh a, [$FF84]                                ; $720D: $F0 $84
    ld hl, sp-$0E                                 ; $720F: $F8 $F2
    db $FC                                        ; $7211: $FC
    ldh [c], a                                    ; $7212: $E2
    db $FC                                        ; $7213: $FC
    db $FD                                        ; $7214: $FD
    cp $F9                                        ; $7215: $FE $F9
    xor $F9                                       ; $7217: $EE $F9
    xor $FF                                       ; $7219: $EE $FF
    or l                                          ; $721B: $B5
    rst RST_38                                    ; $721C: $FF
    reti                                          ; $721D: $D9


    cp $EB                                        ; $721E: $FE $EB
    db $F4                                        ; $7220: $F4
    ld hl, sp+$3A                                 ; $7221: $F8 $3A
    db $FC                                        ; $7223: $FC
    db $FD                                        ; $7224: $FD
    ld e, $FC                                     ; $7225: $1E $FC
    rst RST_20                                    ; $7227: $E7
    cp a                                          ; $7228: $BF
    rst RST_30                                    ; $7229: $F7
    ld e, [hl]                                    ; $722A: $5E
    ei                                            ; $722B: $FB
    cp a                                          ; $722C: $BF
    ei                                            ; $722D: $FB
    rst RST_38                                    ; $722E: $FF
    ei                                            ; $722F: $FB
    rst RST_38                                    ; $7230: $FF
    rst RST_30                                    ; $7231: $F7
    rst RST_38                                    ; $7232: $FF
    rst RST_08                                    ; $7233: $CF
    rst RST_08                                    ; $7234: $CF
    rlca                                          ; $7235: $07
    rrca                                          ; $7236: $0F
    rlca                                          ; $7237: $07
    rlca                                          ; $7238: $07
    inc bc                                        ; $7239: $03
    rlca                                          ; $723A: $07
    inc bc                                        ; $723B: $03
    add e                                         ; $723C: $83
    ld bc, $81C7                                  ; $723D: $01 $C7 $81
    di                                            ; $7240: $F3
    dec l                                         ; $7241: $2D
    ld h, $DB                                     ; $7242: $26 $DB
    ld e, l                                       ; $7244: $5D
    and $AB                                       ; $7245: $E6 $AB
    db $FC                                        ; $7247: $FC
    db $FD                                        ; $7248: $FD
    ldh a, [c]                                    ; $7249: $F2
    ei                                            ; $724A: $FB
    dec b                                         ; $724B: $05
    xor [hl]                                      ; $724C: $AE
    ld d, e                                       ; $724D: $53
    rst RST_38                                    ; $724E: $FF
    rlca                                          ; $724F: $07
    ld e, e                                       ; $7250: $5B
    rst RST_38                                    ; $7251: $FF
    rst RST_38                                    ; $7252: $FF
    db $E3                                        ; $7253: $E3
    db $E3                                        ; $7254: $E3
    nop                                           ; $7255: $00
    nop                                           ; $7256: $00
    nop                                           ; $7257: $00
    ld [bc], a                                    ; $7258: $02
    nop                                           ; $7259: $00
    inc bc                                        ; $725A: $03
    nop                                           ; $725B: $00
    inc bc                                        ; $725C: $03
    ld bc, $0103                                  ; $725D: $01 $03 $01
    nop                                           ; $7260: $00
    nop                                           ; $7261: $00
    nop                                           ; $7262: $00
    nop                                           ; $7263: $00
    nop                                           ; $7264: $00
    nop                                           ; $7265: $00
    nop                                           ; $7266: $00
    nop                                           ; $7267: $00
    nop                                           ; $7268: $00
    nop                                           ; $7269: $00
    nop                                           ; $726A: $00
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
    add b                                         ; $727C: $80
    nop                                           ; $727D: $00
    ld hl, sp-$80                                 ; $727E: $F8 $80
    nop                                           ; $7280: $00
    nop                                           ; $7281: $00
    nop                                           ; $7282: $00
    nop                                           ; $7283: $00
    nop                                           ; $7284: $00
    nop                                           ; $7285: $00
    nop                                           ; $7286: $00
    nop                                           ; $7287: $00
    nop                                           ; $7288: $00
    nop                                           ; $7289: $00
    nop                                           ; $728A: $00
    nop                                           ; $728B: $00
    nop                                           ; $728C: $00
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
    rlca                                          ; $729C: $07
    nop                                           ; $729D: $00
    dec sp                                        ; $729E: $3B
    dec b                                         ; $729F: $05
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
    inc bc                                        ; $72AA: $03
    nop                                           ; $72AB: $00
    inc b                                         ; $72AC: $04
    inc bc                                        ; $72AD: $03
    dec bc                                        ; $72AE: $0B
    ld b, $08                                     ; $72AF: $06 $08
    rlca                                          ; $72B1: $07
    rrca                                          ; $72B2: $0F
    rlca                                          ; $72B3: $07
    rlca                                          ; $72B4: $07
    nop                                           ; $72B5: $00
    ld [bc], a                                    ; $72B6: $02
    ld bc, $0003                                  ; $72B7: $01 $03 $00
    ld b, $03                                     ; $72BA: $06 $03
    inc bc                                        ; $72BC: $03
    ld bc, $0001                                  ; $72BD: $01 $01 $00
    nop                                           ; $72C0: $00
    nop                                           ; $72C1: $00
    nop                                           ; $72C2: $00
    nop                                           ; $72C3: $00
    nop                                           ; $72C4: $00
    nop                                           ; $72C5: $00
    nop                                           ; $72C6: $00
    nop                                           ; $72C7: $00
    nop                                           ; $72C8: $00
    nop                                           ; $72C9: $00
    nop                                           ; $72CA: $00
    nop                                           ; $72CB: $00
    inc b                                         ; $72CC: $04
    nop                                           ; $72CD: $00
    inc bc                                        ; $72CE: $03
    nop                                           ; $72CF: $00
    inc bc                                        ; $72D0: $03
    ld bc, $0001                                  ; $72D1: $01 $01 $00
    ld bc, $0000                                  ; $72D4: $01 $00 $00
    nop                                           ; $72D7: $00
    nop                                           ; $72D8: $00
    nop                                           ; $72D9: $00
    nop                                           ; $72DA: $00
    nop                                           ; $72DB: $00
    nop                                           ; $72DC: $00
    nop                                           ; $72DD: $00
    nop                                           ; $72DE: $00
    nop                                           ; $72DF: $00
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

Call_01D_7AF8:
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
