; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01c", ROMX[$4000], BANK[$1c]

    and a                                         ; $4000: $A7
    ld a, l                                       ; $4001: $7D
    add [hl]                                      ; $4002: $86
    ld a, l                                       ; $4003: $7D
    ld b, [hl]                                    ; $4004: $46
    dec a                                         ; $4005: $3D
    call $DB7B                                    ; $4006: $CD $7B $DB
    ld a, a                                       ; $4009: $7F
    bit 7, [hl]                                   ; $400A: $CB $7E
    adc a                                         ; $400C: $8F
    ld a, [hl]                                    ; $400D: $7E
    sbc a                                         ; $400E: $9F
    ld l, l                                       ; $400F: $6D
    rst RST_18                                    ; $4010: $DF
    ld l, l                                       ; $4011: $6D
    ld b, a                                       ; $4012: $47
    inc a                                         ; $4013: $3C
    inc a                                         ; $4014: $3C
    nop                                           ; $4015: $00
    ld bc, $0200                                  ; $4016: $01 $00 $02
    ld bc, $0205                                  ; $4019: $01 $05 $02
    rlca                                          ; $401C: $07
    nop                                           ; $401D: $00
    nop                                           ; $401E: $00
    nop                                           ; $401F: $00
    di                                            ; $4020: $F3
    adc l                                         ; $4021: $8D
    jp hl                                         ; $4022: $E9


    ld b, [hl]                                    ; $4023: $46
    ld hl, sp+$47                                 ; $4024: $F8 $47
    db $DD                                        ; $4026: $DD
    ld a, [hl-]                                   ; $4027: $3A
    rst RST_08                                    ; $4028: $CF
    inc a                                         ; $4029: $3C
    rst RST_08                                    ; $402A: $CF
    cp a                                          ; $402B: $BF
    rst RST_28                                    ; $402C: $EF
    sbc a                                         ; $402D: $9F
    sub a                                         ; $402E: $97
    rrca                                          ; $402F: $0F
    sub a                                         ; $4030: $97
    ld c, $16                                     ; $4031: $0E $16
    inc c                                         ; $4033: $0C
    ld l, $1C                                     ; $4034: $2E $1C
    rst RST_38                                    ; $4036: $FF
    ld e, $9F                                     ; $4037: $1E $9F
    ld l, [hl]                                    ; $4039: $6E
    ld e, $EC                                     ; $403A: $1E $EC
    db $FC                                        ; $403C: $FC
    nop                                           ; $403D: $00
    nop                                           ; $403E: $00
    nop                                           ; $403F: $00
    jp nz, $C3BC                                  ; $4040: $C2 $BC $C3

    inc a                                         ; $4043: $3C
    and e                                         ; $4044: $A3
    dec e                                         ; $4045: $1D
    inc h                                         ; $4046: $24
    dec de                                        ; $4047: $1B
    jr @+$09                                      ; $4048: $18 $07

    sub c                                         ; $404A: $91
    rrca                                          ; $404B: $0F
    xor a                                         ; $404C: $AF
    ld e, $FF                                     ; $404D: $1E $FF
    ld sp, $077B                                  ; $404F: $31 $7B $07
    dec b                                         ; $4052: $05
    inc bc                                        ; $4053: $03
    inc bc                                        ; $4054: $03
    nop                                           ; $4055: $00
    inc bc                                        ; $4056: $03
    ld bc, $0103                                  ; $4057: $01 $03 $01
    inc bc                                        ; $405A: $03
    nop                                           ; $405B: $00
    ld [bc], a                                    ; $405C: $02
    ld bc, $0001                                  ; $405D: $01 $01 $00
    sbc l                                         ; $4060: $9D
    ld a, a                                       ; $4061: $7F
    rrca                                          ; $4062: $0F
    rst RST_38                                    ; $4063: $FF
    ld a, a                                       ; $4064: $7F
    rst RST_38                                    ; $4065: $FF
    ccf                                           ; $4066: $3F
    db $FC                                        ; $4067: $FC
    db $FC                                        ; $4068: $FC
    ldh a, [$FFF0]                                ; $4069: $F0 $F0
    ret nz                                        ; $406B: $C0

    ret nz                                        ; $406C: $C0

    nop                                           ; $406D: $00
    ret nz                                        ; $406E: $C0

    add b                                         ; $406F: $80
    ret nz                                        ; $4070: $C0

    add b                                         ; $4071: $80
    ret nz                                        ; $4072: $C0

    add b                                         ; $4073: $80
    ldh [$FFC0], a                                ; $4074: $E0 $C0
    ldh a, [$FFE0]                                ; $4076: $F0 $E0
    ldh a, [$FF60]                                ; $4078: $F0 $60
    ld l, b                                       ; $407A: $68
    sub b                                         ; $407B: $90
    inc h                                         ; $407C: $24
    ret c                                         ; $407D: $D8

    call c, RST_00                                ; $407E: $DC $00 $00
    nop                                           ; $4081: $00
    nop                                           ; $4082: $00
    nop                                           ; $4083: $00
    nop                                           ; $4084: $00
    nop                                           ; $4085: $00
    nop                                           ; $4086: $00
    nop                                           ; $4087: $00
    ld bc, $0100                                  ; $4088: $01 $00 $01
    nop                                           ; $408B: $00
    ld bc, $0000                                  ; $408C: $01 $00 $00
    nop                                           ; $408F: $00
    nop                                           ; $4090: $00
    nop                                           ; $4091: $00
    nop                                           ; $4092: $00
    nop                                           ; $4093: $00
    rrca                                          ; $4094: $0F
    nop                                           ; $4095: $00
    add hl, de                                    ; $4096: $19
    rrca                                          ; $4097: $0F
    ld [hl-], a                                   ; $4098: $32
    rra                                           ; $4099: $1F
    ld a, a                                       ; $409A: $7F
    ld de, $6EF3                                  ; $409B: $11 $F3 $6E
    or e                                          ; $409E: $B3
    ld a, [hl]                                    ; $409F: $7E
    rlca                                          ; $40A0: $07
    ld [bc], a                                    ; $40A1: $02
    rlca                                          ; $40A2: $07
    nop                                           ; $40A3: $00
    inc bc                                        ; $40A4: $03
    ld bc, $00FF                                  ; $40A5: $01 $FF $00
    rlca                                          ; $40A8: $07
    ld hl, sp-$61                                 ; $40A9: $F8 $9F
    ldh [$FFFA], a                                ; $40AB: $E0 $FA
    push de                                       ; $40AD: $D5
    rst RST_38                                    ; $40AE: $FF
    ld e, b                                       ; $40AF: $58
    rst RST_28                                    ; $40B0: $EF
    ld e, h                                       ; $40B1: $5C
    ld l, l                                       ; $40B2: $6D
    dec de                                        ; $40B3: $1B
    sbc l                                         ; $40B4: $9D
    ld h, e                                       ; $40B5: $63
    db $DD                                        ; $40B6: $DD
    and e                                         ; $40B7: $A3
    rst RST_20                                    ; $40B8: $E7
    ret nz                                        ; $40B9: $C0

    cp $E7                                        ; $40BA: $FE $E7
    cp $61                                        ; $40BC: $FE $61
    ldh a, [c]                                    ; $40BE: $F2
    xor l                                         ; $40BF: $AD
    ld [hl], l                                    ; $40C0: $75
    adc b                                         ; $40C1: $88
    sub e                                         ; $40C2: $93
    ld l, h                                       ; $40C3: $6C
    ldh a, [c]                                    ; $40C4: $F2
    sbc l                                         ; $40C5: $9D
    db $E3                                        ; $40C6: $E3
    inc a                                         ; $40C7: $3C
    cp $B1                                        ; $40C8: $FE $B1
    rst RST_38                                    ; $40CA: $FF
    dec c                                         ; $40CB: $0D
    cp a                                          ; $40CC: $BF
    ld e, l                                       ; $40CD: $5D
    rst RST_38                                    ; $40CE: $FF
    dec a                                         ; $40CF: $3D
    rst RST_10                                    ; $40D0: $D7
    ld [$6AD7], a                                 ; $40D1: $EA $D7 $6A
    rst RST_38                                    ; $40D4: $FF
    nop                                           ; $40D5: $00
    db $FD                                        ; $40D6: $FD
    ld a, b                                       ; $40D7: $78
    ld sp, hl                                     ; $40D8: $F9
    nop                                           ; $40D9: $00
    db $FC                                        ; $40DA: $FC
    ld hl, sp-$04                                 ; $40DB: $F8 $FC
    ret nz                                        ; $40DD: $C0

    call nz, Call_01C_78B8                        ; $40DE: $C4 $B8 $78
    ldh a, [$FF7C]                                ; $40E1: $F0 $7C
    ld hl, sp-$02                                 ; $40E3: $F8 $FE
    db $FC                                        ; $40E5: $FC
    cp $04                                        ; $40E6: $FE $04
    rlca                                          ; $40E8: $07
    ld a, [$FA0F]                                 ; $40E9: $FA $0F $FA
    rst RST_38                                    ; $40EC: $FF
    ld a, [$F6FF]                                 ; $40ED: $FA $FF $F6
    rst RST_38                                    ; $40F0: $FF
    and $E7                                       ; $40F1: $E6 $E7
    ld a, [de]                                    ; $40F3: $1A
    rst RST_00                                    ; $40F4: $C7
    cp b                                          ; $40F5: $B8
    rst RST_38                                    ; $40F6: $FF
    rst RST_00                                    ; $40F7: $C7
    ld hl, sp-$21                                 ; $40F8: $F8 $DF
    ldh [$FF3F], a                                ; $40FA: $E0 $3F
    rst RST_30                                    ; $40FC: $F7
    ccf                                           ; $40FD: $3F
    jp $C07F                                      ; $40FE: $C3 $7F $C0


    nop                                           ; $4101: $00
    ldh [$FFC0], a                                ; $4102: $E0 $C0
    ldh a, [$FFE0]                                ; $4104: $F0 $E0
    ld [hl], b                                    ; $4106: $70
    ldh [rSVBK], a                                ; $4107: $E0 $70
    ldh [$FFE0], a                                ; $4109: $E0 $E0
    ret nz                                        ; $410B: $C0

    ldh [$FFC0], a                                ; $410C: $E0 $C0
    ret nz                                        ; $410E: $C0

    add b                                         ; $410F: $80
    add b                                         ; $4110: $80
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
    nop                                           ; $4128: $00
    nop                                           ; $4129: $00
    nop                                           ; $412A: $00
    nop                                           ; $412B: $00
    nop                                           ; $412C: $00
    nop                                           ; $412D: $00
    nop                                           ; $412E: $00
    nop                                           ; $412F: $00
    nop                                           ; $4130: $00
    nop                                           ; $4131: $00
    nop                                           ; $4132: $00
    nop                                           ; $4133: $00
    nop                                           ; $4134: $00
    nop                                           ; $4135: $00
    nop                                           ; $4136: $00
    nop                                           ; $4137: $00
    nop                                           ; $4138: $00
    nop                                           ; $4139: $00
    ld a, [hl]                                    ; $413A: $7E
    nop                                           ; $413B: $00
    pop hl                                        ; $413C: $E1
    ld e, $E0                                     ; $413D: $1E $E0
    ld e, a                                       ; $413F: $5F
    nop                                           ; $4140: $00
    nop                                           ; $4141: $00
    nop                                           ; $4142: $00
    nop                                           ; $4143: $00
    nop                                           ; $4144: $00
    nop                                           ; $4145: $00
    nop                                           ; $4146: $00
    nop                                           ; $4147: $00
    nop                                           ; $4148: $00
    nop                                           ; $4149: $00
    nop                                           ; $414A: $00
    nop                                           ; $414B: $00
    nop                                           ; $414C: $00
    nop                                           ; $414D: $00
    nop                                           ; $414E: $00
    nop                                           ; $414F: $00
    nop                                           ; $4150: $00
    nop                                           ; $4151: $00
    nop                                           ; $4152: $00
    nop                                           ; $4153: $00
    nop                                           ; $4154: $00
    nop                                           ; $4155: $00
    nop                                           ; $4156: $00
    nop                                           ; $4157: $00
    nop                                           ; $4158: $00
    nop                                           ; $4159: $00
    nop                                           ; $415A: $00
    nop                                           ; $415B: $00
    jr jr_01C_415E                                ; $415C: $18 $00

jr_01C_415E:
    xor [hl]                                      ; $415E: $AE
    jr jr_01C_41AF                                ; $415F: $18 $4E

    dec a                                         ; $4161: $3D
    db $DD                                        ; $4162: $DD
    ld a, e                                       ; $4163: $7B
    db $D3                                        ; $4164: $D3
    ld a, a                                       ; $4165: $7F
    bit 7, [hl]                                   ; $4166: $CB $7E
    adc a                                         ; $4168: $8F
    ld a, [hl]                                    ; $4169: $7E
    sbc a                                         ; $416A: $9F
    ld l, l                                       ; $416B: $6D
    rst RST_18                                    ; $416C: $DF
    ld l, l                                       ; $416D: $6D
    ld b, a                                       ; $416E: $47
    inc a                                         ; $416F: $3C
    inc a                                         ; $4170: $3C
    nop                                           ; $4171: $00
    nop                                           ; $4172: $00
    nop                                           ; $4173: $00
    nop                                           ; $4174: $00
    nop                                           ; $4175: $00
    nop                                           ; $4176: $00
    nop                                           ; $4177: $00
    ld bc, $0200                                  ; $4178: $01 $00 $02
    ld bc, $0003                                  ; $417B: $01 $03 $00
    nop                                           ; $417E: $00
    nop                                           ; $417F: $00
    jp hl                                         ; $4180: $E9


    ld b, [hl]                                    ; $4181: $46
    db $E4                                        ; $4182: $E4
    ld b, e                                       ; $4183: $43
    db $FC                                        ; $4184: $FC
    ld b, e                                       ; $4185: $43
    xor $9D                                       ; $4186: $EE $9D
    rst RST_20                                    ; $4188: $E7
    sbc [hl]                                      ; $4189: $9E
    and a                                         ; $418A: $A7
    rra                                           ; $418B: $1F
    sub a                                         ; $418C: $97
    rrca                                          ; $418D: $0F
    dec bc                                        ; $418E: $0B
    rlca                                          ; $418F: $07
    dec bc                                        ; $4190: $0B
    rlca                                          ; $4191: $07
    dec bc                                        ; $4192: $0B
    ld b, $17                                     ; $4193: $06 $17
    ld c, $FF                                     ; $4195: $0E $FF
    rrca                                          ; $4197: $0F
    ld c, a                                       ; $4198: $4F
    or a                                          ; $4199: $B7
    adc a                                         ; $419A: $8F
    halt                                          ; $419B: $76
    cp $00                                        ; $419C: $FE $00
    nop                                           ; $419E: $00
    nop                                           ; $419F: $00
    pop hl                                        ; $41A0: $E1
    sbc $E1                                       ; $41A1: $DE $E1
    ld e, $52                                     ; $41A3: $1E $52
    adc l                                         ; $41A5: $8D
    sub h                                         ; $41A6: $94
    dec bc                                        ; $41A7: $0B
    adc e                                         ; $41A8: $8B
    rlca                                          ; $41A9: $07
    rst RST_18                                    ; $41AA: $DF
    adc h                                         ; $41AB: $8C
    rst RST_18                                    ; $41AC: $DF
    add e                                         ; $41AD: $83
    ret z                                         ; $41AE: $C8

jr_01C_41AF:
    add a                                         ; $41AF: $87
    add l                                         ; $41B0: $85
    inc bc                                        ; $41B1: $03
    ld [bc], a                                    ; $41B2: $02
    ld bc, $0001                                  ; $41B3: $01 $01 $00
    add c                                         ; $41B6: $81
    nop                                           ; $41B7: $00
    add c                                         ; $41B8: $81
    nop                                           ; $41B9: $00
    ld bc, $0100                                  ; $41BA: $01 $00 $01
    nop                                           ; $41BD: $00
    nop                                           ; $41BE: $00
    nop                                           ; $41BF: $00
    rst RST_18                                    ; $41C0: $DF
    ld a, a                                       ; $41C1: $7F
    rrca                                          ; $41C2: $0F
    rst RST_38                                    ; $41C3: $FF
    ccf                                           ; $41C4: $3F
    db $FC                                        ; $41C5: $FC
    ld a, h                                       ; $41C6: $7C
    ldh a, [$FFF0]                                ; $41C7: $F0 $F0
    add b                                         ; $41C9: $80
    ldh [rLCDC], a                                ; $41CA: $E0 $40
    ldh [$FFC0], a                                ; $41CC: $E0 $C0
    ldh [$FFC0], a                                ; $41CE: $E0 $C0
    ldh [$FFC0], a                                ; $41D0: $E0 $C0
    ldh [$FFC0], a                                ; $41D2: $E0 $C0
    ldh a, [$FF60]                                ; $41D4: $F0 $60
    ld hl, sp-$10                                 ; $41D6: $F8 $F0
    ld hl, sp-$50                                 ; $41D8: $F8 $B0
    or h                                          ; $41DA: $B4
    ld c, b                                       ; $41DB: $48
    ld [de], a                                    ; $41DC: $12
    db $EC                                        ; $41DD: $EC
    xor $00                                       ; $41DE: $EE $00
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
    rrca                                          ; $41F0: $0F
    nop                                           ; $41F1: $00
    add hl, de                                    ; $41F2: $19
    rrca                                          ; $41F3: $0F
    ld [hl-], a                                   ; $41F4: $32
    rra                                           ; $41F5: $1F
    ld a, a                                       ; $41F6: $7F
    ld de, $6EF3                                  ; $41F7: $11 $F3 $6E
    or e                                          ; $41FA: $B3
    ld a, [hl]                                    ; $41FB: $7E
    and e                                         ; $41FC: $A3
    ld a, l                                       ; $41FD: $7D
    add [hl]                                      ; $41FE: $86
    ld a, c                                       ; $41FF: $79
    inc bc                                        ; $4200: $03
    nop                                           ; $4201: $00
    ld bc, $7F00                                  ; $4202: $01 $00 $7F
    nop                                           ; $4205: $00
    add e                                         ; $4206: $83
    ld a, h                                       ; $4207: $7C
    rst RST_08                                    ; $4208: $CF
    ld [hl], b                                    ; $4209: $70
    db $FD                                        ; $420A: $FD
    ld l, d                                       ; $420B: $6A
    ld a, a                                       ; $420C: $7F
    inc l                                         ; $420D: $2C
    ld [hl], a                                    ; $420E: $77
    ld l, $B6                                     ; $420F: $2E $B6
    ld c, l                                       ; $4211: $4D
    sbc $AD                                       ; $4212: $DE $AD
    xor $C1                                       ; $4214: $EE $C1
    or $E1                                        ; $4216: $F6 $E1
    di                                            ; $4218: $F3
    ld h, b                                       ; $4219: $60
    rst RST_30                                    ; $421A: $F7
    and e                                         ; $421B: $A3
    rst RST_20                                    ; $421C: $E7
    add b                                         ; $421D: $80
    jp hl                                         ; $421E: $E9


    ld b, [hl]                                    ; $421F: $46
    ret                                           ; $4220: $C9


    ld [hl], $F9                                  ; $4221: $36 $F9
    adc $F1                                       ; $4223: $CE $F1
    ld e, $FF                                     ; $4225: $1E $FF
    ld e, b                                       ; $4227: $58
    rst RST_38                                    ; $4228: $FF
    ld b, $5F                                     ; $4229: $06 $5F
    xor [hl]                                      ; $422B: $AE
    rst RST_38                                    ; $422C: $FF
    ld e, $EB                                     ; $422D: $1E $EB
    ld [hl], l                                    ; $422F: $75
    db $EB                                        ; $4230: $EB
    or l                                          ; $4231: $B5
    rst RST_38                                    ; $4232: $FF
    cp a                                          ; $4233: $BF
    rst RST_38                                    ; $4234: $FF
    add b                                         ; $4235: $80
    cp $BC                                        ; $4236: $FE $BC
    db $FC                                        ; $4238: $FC
    nop                                           ; $4239: $00
    ld a, [hl]                                    ; $423A: $7E
    db $FC                                        ; $423B: $FC
    ld a, [hl]                                    ; $423C: $7E
    ldh [$FF62], a                                ; $423D: $E0 $62
    call c, $FE7F                                 ; $423F: $DC $7F $FE
    ld a, a                                       ; $4242: $7F
    cp $FF                                        ; $4243: $FE $FF
    inc bc                                        ; $4245: $03
    inc bc                                        ; $4246: $03
    db $FD                                        ; $4247: $FD
    add a                                         ; $4248: $87
    db $FD                                        ; $4249: $FD
    rst RST_38                                    ; $424A: $FF
    db $FD                                        ; $424B: $FD
    rst RST_38                                    ; $424C: $FF
    ei                                            ; $424D: $FB
    ei                                            ; $424E: $FB
    ld [hl], l                                    ; $424F: $75
    pop af                                        ; $4250: $F1
    ld c, $FF                                     ; $4251: $0E $FF
    ld [hl], c                                    ; $4253: $71
    cp $77                                        ; $4254: $FE $77
    ld a, b                                       ; $4256: $78
    cpl                                           ; $4257: $2F
    ld a, l                                       ; $4258: $7D
    cpl                                           ; $4259: $2F
    jr nc, jr_01C_427B                            ; $425A: $30 $1F

    daa                                           ; $425C: $27
    rra                                           ; $425D: $1F
    ld b, e                                       ; $425E: $43
    ccf                                           ; $425F: $3F
    add b                                         ; $4260: $80
    nop                                           ; $4261: $00
    add b                                         ; $4262: $80
    nop                                           ; $4263: $00
    add b                                         ; $4264: $80
    nop                                           ; $4265: $00
    add b                                         ; $4266: $80
    nop                                           ; $4267: $00
    add b                                         ; $4268: $80
    nop                                           ; $4269: $00
    add b                                         ; $426A: $80
    nop                                           ; $426B: $00
    ldh a, [rP1]                                  ; $426C: $F0 $00
    ld hl, sp-$10                                 ; $426E: $F8 $F0
    inc a                                         ; $4270: $3C
    ld hl, sp+$1C                                 ; $4271: $F8 $1C
    ld hl, sp-$24                                 ; $4273: $F8 $DC
    ld hl, sp-$08                                 ; $4275: $F8 $F8
    ldh a, [$FF78]                                ; $4277: $F0 $78
    ldh a, [$FFF0]                                ; $4279: $F0 $F0

jr_01C_427B:
    ldh [$FFE0], a                                ; $427B: $E0 $E0
    ret nz                                        ; $427D: $C0

    ret nz                                        ; $427E: $C0

    nop                                           ; $427F: $00
    nop                                           ; $4280: $00
    nop                                           ; $4281: $00
    nop                                           ; $4282: $00
    nop                                           ; $4283: $00
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
    nop                                           ; $4293: $00
    nop                                           ; $4294: $00
    nop                                           ; $4295: $00
    nop                                           ; $4296: $00
    nop                                           ; $4297: $00
    ld a, [hl]                                    ; $4298: $7E
    nop                                           ; $4299: $00
    pop hl                                        ; $429A: $E1
    ld e, $E0                                     ; $429B: $1E $E0
    ld e, a                                       ; $429D: $5F
    xor $51                                       ; $429E: $EE $51
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
    nop                                           ; $42B6: $00
    nop                                           ; $42B7: $00
    jr jr_01C_42BA                                ; $42B8: $18 $00

jr_01C_42BA:
    ld l, $18                                     ; $42BA: $2E $18
    xor a                                         ; $42BC: $AF
    ld e, $AF                                     ; $42BD: $1E $AF
    rra                                           ; $42BF: $1F
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
    add b                                         ; $42DE: $80
    nop                                           ; $42DF: $00
    db $DD                                        ; $42E0: $DD
    ld a, e                                       ; $42E1: $7B
    db $D3                                        ; $42E2: $D3
    ld a, a                                       ; $42E3: $7F
    bit 7, [hl]                                   ; $42E4: $CB $7E
    adc a                                         ; $42E6: $8F
    ld a, [hl]                                    ; $42E7: $7E
    sbc a                                         ; $42E8: $9F
    ld l, l                                       ; $42E9: $6D
    rst RST_18                                    ; $42EA: $DF
    ld l, l                                       ; $42EB: $6D
    ld b, a                                       ; $42EC: $47
    inc a                                         ; $42ED: $3C
    inc a                                         ; $42EE: $3C
    nop                                           ; $42EF: $00
    nop                                           ; $42F0: $00
    nop                                           ; $42F1: $00
    nop                                           ; $42F2: $00
    nop                                           ; $42F3: $00
    nop                                           ; $42F4: $00
    nop                                           ; $42F5: $00
    nop                                           ; $42F6: $00
    nop                                           ; $42F7: $00
    nop                                           ; $42F8: $00
    nop                                           ; $42F9: $00
    ld bc, $0100                                  ; $42FA: $01 $00 $01
    nop                                           ; $42FD: $00
    nop                                           ; $42FE: $00
    nop                                           ; $42FF: $00
    db $E4                                        ; $4300: $E4
    ld b, e                                       ; $4301: $43
    ldh [c], a                                    ; $4302: $E2
    ld b, c                                       ; $4303: $41
    adc $81                                       ; $4304: $CE $81
    rst RST_10                                    ; $4306: $D7
    adc [hl]                                      ; $4307: $8E
    sub e                                         ; $4308: $93
    rrca                                          ; $4309: $0F
    sub e                                         ; $430A: $93
    rrca                                          ; $430B: $0F
    dec bc                                        ; $430C: $0B
    rlca                                          ; $430D: $07
    dec b                                         ; $430E: $05
    inc bc                                        ; $430F: $03
    dec b                                         ; $4310: $05
    inc bc                                        ; $4311: $03
    dec b                                         ; $4312: $05
    inc bc                                        ; $4313: $03
    dec bc                                        ; $4314: $0B
    rlca                                          ; $4315: $07
    ld a, a                                       ; $4316: $7F
    rlca                                          ; $4317: $07
    and a                                         ; $4318: $A7
    ld e, e                                       ; $4319: $5B
    ld b, a                                       ; $431A: $47
    cp e                                          ; $431B: $BB
    rst RST_38                                    ; $431C: $FF
    nop                                           ; $431D: $00
    nop                                           ; $431E: $00
    nop                                           ; $431F: $00
    ldh a, [$FF6F]                                ; $4320: $F0 $6F
    ld [hl], b                                    ; $4322: $70
    adc a                                         ; $4323: $8F
    add hl, hl                                    ; $4324: $29
    add $4A                                       ; $4325: $C6 $4A
    add l                                         ; $4327: $85
    rst RST_00                                    ; $4328: $C7
    inc bc                                        ; $4329: $03
    rst RST_20                                    ; $432A: $E7
    ret nz                                        ; $432B: $C0

    rst RST_20                                    ; $432C: $E7
    jp $C3E4                                      ; $432D: $C3 $E4 $C3


    jp nz, $8181                                  ; $4330: $C2 $81 $81

    nop                                           ; $4333: $00
    add b                                         ; $4334: $80
    nop                                           ; $4335: $00
    ret nz                                        ; $4336: $C0

    add b                                         ; $4337: $80
    ret nz                                        ; $4338: $C0

    add b                                         ; $4339: $80
    add b                                         ; $433A: $80
    nop                                           ; $433B: $00
    nop                                           ; $433C: $00
    nop                                           ; $433D: $00
    nop                                           ; $433E: $00
    nop                                           ; $433F: $00
    jp $8F3F                                      ; $4340: $C3 $3F $8F


    ld a, a                                       ; $4343: $7F
    rra                                           ; $4344: $1F
    db $FC                                        ; $4345: $FC
    db $FC                                        ; $4346: $FC
    ldh [$FFF0], a                                ; $4347: $E0 $F0
    nop                                           ; $4349: $00
    ldh a, [$FFE0]                                ; $434A: $F0 $E0
    ldh a, [$FFE0]                                ; $434C: $F0 $E0
    ld [hl], b                                    ; $434E: $70
    ldh [$FFF0], a                                ; $434F: $E0 $F0
    ldh [rSVBK], a                                ; $4351: $E0 $70

jr_01C_4353:
    ldh [$FFF8], a                                ; $4353: $E0 $F8
    jr nc, jr_01C_4353                            ; $4355: $30 $FC

    ld a, b                                       ; $4357: $78
    db $FC                                        ; $4358: $FC
    ld e, b                                       ; $4359: $58
    jp c, $8924                                   ; $435A: $DA $24 $89

    halt                                          ; $435D: $76
    ld [hl], a                                    ; $435E: $77
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
    rrca                                          ; $436E: $0F
    nop                                           ; $436F: $00
    add hl, de                                    ; $4370: $19
    rrca                                          ; $4371: $0F
    ld [hl-], a                                   ; $4372: $32
    rra                                           ; $4373: $1F
    ld a, a                                       ; $4374: $7F
    ld de, $6EF3                                  ; $4375: $11 $F3 $6E
    or e                                          ; $4378: $B3
    ld a, [hl]                                    ; $4379: $7E
    and a                                         ; $437A: $A7
    ld a, c                                       ; $437B: $79
    adc [hl]                                      ; $437C: $8E
    ld a, c                                       ; $437D: $79
    ld c, d                                       ; $437E: $4A
    dec a                                         ; $437F: $3D
    nop                                           ; $4380: $00
    nop                                           ; $4381: $00
    ccf                                           ; $4382: $3F
    nop                                           ; $4383: $00
    ld b, b                                       ; $4384: $40
    ccf                                           ; $4385: $3F
    ld h, e                                       ; $4386: $63
    ld a, $7E                                     ; $4387: $3E $7E
    add hl, sp                                    ; $4389: $39
    ccf                                           ; $438A: $3F
    ld d, $7B                                     ; $438B: $16 $7B
    rla                                           ; $438D: $17
    sbc e                                         ; $438E: $9B
    ld h, [hl]                                    ; $438F: $66
    rst RST_08                                    ; $4390: $CF
    or [hl]                                       ; $4391: $B6
    rst RST_30                                    ; $4392: $F7
    ret nz                                        ; $4393: $C0

    di                                            ; $4394: $F3
    ldh [$FFF3], a                                ; $4395: $E0 $F3
    ld h, b                                       ; $4397: $60
    pop af                                        ; $4398: $F1
    and b                                         ; $4399: $A0
    db $E3                                        ; $439A: $E3
    add c                                         ; $439B: $81
    db $E3                                        ; $439C: $E3
    ld b, b                                       ; $439D: $40
    db $E4                                        ; $439E: $E4
    ld b, e                                       ; $439F: $43
    ldh a, [c]                                    ; $43A0: $F2
    dec c                                         ; $43A1: $0D
    cp $33                                        ; $43A2: $FE $33
    db $FC                                        ; $43A4: $FC
    rlca                                          ; $43A5: $07
    rst RST_38                                    ; $43A6: $FF
    nop                                           ; $43A7: $00
    xor a                                         ; $43A8: $AF
    ld d, a                                       ; $43A9: $57
    rst RST_38                                    ; $43AA: $FF
    rrca                                          ; $43AB: $0F
    push af                                       ; $43AC: $F5
    ld a, [hl-]                                   ; $43AD: $3A
    ld [hl], l                                    ; $43AE: $75
    jp c, $DF7F                                   ; $43AF: $DA $7F $DF

    ld a, a                                       ; $43B2: $7F
    rst RST_00                                    ; $43B3: $C7
    ld a, a                                       ; $43B4: $7F
    ret c                                         ; $43B5: $D8

    rst RST_38                                    ; $43B6: $FF
    ld e, $FE                                     ; $43B7: $1E $FE
    nop                                           ; $43B9: $00
    cp a                                          ; $43BA: $BF
    cp $BF                                        ; $43BB: $FE $BF
    ld [hl], b                                    ; $43BD: $70
    or c                                          ; $43BE: $B1
    ld l, [hl]                                    ; $43BF: $6E
    ld a, a                                       ; $43C0: $7F
    cp a                                          ; $43C1: $BF
    ld a, a                                       ; $43C2: $7F
    add b                                         ; $43C3: $80
    ld b, b                                       ; $43C4: $40
    cp a                                          ; $43C5: $BF
    pop hl                                        ; $43C6: $E1
    ccf                                           ; $43C7: $3F
    rst RST_38                                    ; $43C8: $FF
    cp a                                          ; $43C9: $BF
    rst RST_38                                    ; $43CA: $FF
    cp [hl]                                       ; $43CB: $BE
    cp $DD                                        ; $43CC: $FE $DD
    db $FC                                        ; $43CE: $FC
    jp $DCFF                                      ; $43CF: $C3 $FF $DC


    rst RST_38                                    ; $43D2: $FF
    cp l                                          ; $43D3: $BD
    cp [hl]                                       ; $43D4: $BE
    dec de                                        ; $43D5: $1B
    ccf                                           ; $43D6: $3F
    dec de                                        ; $43D7: $1B
    inc e                                         ; $43D8: $1C
    rlca                                          ; $43D9: $07
    add hl, de                                    ; $43DA: $19
    rlca                                          ; $43DB: $07
    db $10                                        ; $43DC: $10
    rrca                                          ; $43DD: $0F
    scf                                           ; $43DE: $37
    rra                                           ; $43DF: $1F
    ret nz                                        ; $43E0: $C0

    nop                                           ; $43E1: $00
    ret nz                                        ; $43E2: $C0

    nop                                           ; $43E3: $00
    ret nz                                        ; $43E4: $C0

    nop                                           ; $43E5: $00
    ret nz                                        ; $43E6: $C0

    add b                                         ; $43E7: $80
    ret nz                                        ; $43E8: $C0

    nop                                           ; $43E9: $00
    ld a, h                                       ; $43EA: $7C
    add b                                         ; $43EB: $80
    cp $7C                                        ; $43EC: $FE $7C
    adc a                                         ; $43EE: $8F
    cp $07                                        ; $43EF: $FE $07
    cp $77                                        ; $43F1: $FE $77
    cp $3E                                        ; $43F3: $FE $3E
    db $FC                                        ; $43F5: $FC
    sbc $FC                                       ; $43F6: $DE $FC
    db $FC                                        ; $43F8: $FC
    ld hl, sp-$08                                 ; $43F9: $F8 $F8
    ldh a, [$FFF0]                                ; $43FB: $F0 $F0
    ret nz                                        ; $43FD: $C0

    ret nz                                        ; $43FE: $C0

    nop                                           ; $43FF: $00
    nop                                           ; $4400: $00
    nop                                           ; $4401: $00
    nop                                           ; $4402: $00
    nop                                           ; $4403: $00
    nop                                           ; $4404: $00
    nop                                           ; $4405: $00
    nop                                           ; $4406: $00
    nop                                           ; $4407: $00
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
    ld a, [hl]                                    ; $4418: $7E
    nop                                           ; $4419: $00
    pop hl                                        ; $441A: $E1
    ld e, $E0                                     ; $441B: $1E $E0
    ld e, a                                       ; $441D: $5F
    xor $51                                       ; $441E: $EE $51
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
    nop                                           ; $442F: $00
    nop                                           ; $4430: $00
    nop                                           ; $4431: $00
    nop                                           ; $4432: $00
    nop                                           ; $4433: $00
    nop                                           ; $4434: $00
    nop                                           ; $4435: $00
    jr nc, jr_01C_4438                            ; $4436: $30 $00

jr_01C_4438:
    ld e, h                                       ; $4438: $5C
    jr nc, jr_01C_4499                            ; $4439: $30 $5E

    inc a                                         ; $443B: $3C
    rst RST_18                                    ; $443C: $DF
    ld a, $BF                                     ; $443D: $3E $BF
    ld a, a                                       ; $443F: $7F
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
    add b                                         ; $445A: $80
    nop                                           ; $445B: $00
    add b                                         ; $445C: $80
    nop                                           ; $445D: $00
    ret nz                                        ; $445E: $C0

    add b                                         ; $445F: $80
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
    ccf                                           ; $446C: $3F
    nop                                           ; $446D: $00
    ld [hl], b                                    ; $446E: $70
    rrca                                          ; $446F: $0F
    ld [hl], b                                    ; $4470: $70
    cpl                                           ; $4471: $2F
    ld [hl], a                                    ; $4472: $77
    jr z, jr_01C_44EE                             ; $4473: $28 $79

    ld b, $3F                                     ; $4475: $06 $3F
    add hl, de                                    ; $4477: $19
    ld a, a                                       ; $4478: $7F
    ld [bc], a                                    ; $4479: $02
    ld a, a                                       ; $447A: $7F
    add hl, bc                                    ; $447B: $09
    ld a, a                                       ; $447C: $7F
    ld bc, $55AF                                  ; $447D: $01 $AF $55
    nop                                           ; $4480: $00
    nop                                           ; $4481: $00
    nop                                           ; $4482: $00
    nop                                           ; $4483: $00
    nop                                           ; $4484: $00
    nop                                           ; $4485: $00
    nop                                           ; $4486: $00
    nop                                           ; $4487: $00
    nop                                           ; $4488: $00
    nop                                           ; $4489: $00
    nop                                           ; $448A: $00
    nop                                           ; $448B: $00
    nop                                           ; $448C: $00
    nop                                           ; $448D: $00
    adc h                                         ; $448E: $8C
    nop                                           ; $448F: $00
    ld d, a                                       ; $4490: $57
    adc h                                         ; $4491: $8C
    ld d, a                                       ; $4492: $57
    adc a                                         ; $4493: $8F
    scf                                           ; $4494: $37
    rst RST_08                                    ; $4495: $CF
    rst RST_38                                    ; $4496: $FF
    rlca                                          ; $4497: $07
    ccf                                           ; $4498: $3F

jr_01C_4499:
    di                                            ; $4499: $F3
    rst RST_38                                    ; $449A: $FF
    pop hl                                        ; $449B: $E1
    rst RST_38                                    ; $449C: $FF
    pop bc                                        ; $449D: $C1
    rst RST_38                                    ; $449E: $FF
    pop bc                                        ; $449F: $C1
    nop                                           ; $44A0: $00
    nop                                           ; $44A1: $00
    nop                                           ; $44A2: $00
    nop                                           ; $44A3: $00
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

jr_01C_44B2:
    add b                                         ; $44B2: $80
    nop                                           ; $44B3: $00
    ret nz                                        ; $44B4: $C0

    add b                                         ; $44B5: $80
    ldh [$FFC0], a                                ; $44B6: $E0 $C0
    ldh [$FFC0], a                                ; $44B8: $E0 $C0
    ldh a, [$FFE0]                                ; $44BA: $F0 $E0
    ldh a, [$FFE0]                                ; $44BC: $F0 $E0
    ldh a, [$FFE0]                                ; $44BE: $F0 $E0
    nop                                           ; $44C0: $00
    nop                                           ; $44C1: $00
    ld bc, $0700                                  ; $44C2: $01 $00 $07
    ld bc, $070B                                  ; $44C5: $01 $0B $07
    rla                                           ; $44C8: $17
    dec c                                         ; $44C9: $0D
    rra                                           ; $44CA: $1F
    add hl, bc                                    ; $44CB: $09
    ld a, [hl+]                                   ; $44CC: $2A
    dec d                                         ; $44CD: $15
    ld a, $11                                     ; $44CE: $3E $11
    dec a                                         ; $44D0: $3D
    inc bc                                        ; $44D1: $03
    ld l, a                                       ; $44D2: $6F
    ccf                                           ; $44D3: $3F
    ld e, a                                       ; $44D4: $5F
    jr c, jr_01C_44B2                             ; $44D5: $38 $DB

    ld [hl], a                                    ; $44D7: $77
    cp c                                          ; $44D8: $B9
    ld d, a                                       ; $44D9: $57
    ld a, l                                       ; $44DA: $7D
    inc sp                                        ; $44DB: $33
    dec [hl]                                      ; $44DC: $35
    inc bc                                        ; $44DD: $03
    inc bc                                        ; $44DE: $03
    nop                                           ; $44DF: $00
    rst RST_38                                    ; $44E0: $FF
    dec c                                         ; $44E1: $0D
    db $EB                                        ; $44E2: $EB
    ld d, h                                       ; $44E3: $54
    xor e                                         ; $44E4: $AB
    ld d, l                                       ; $44E5: $55
    cp a                                          ; $44E6: $BF
    ld b, b                                       ; $44E7: $40
    rst RST_38                                    ; $44E8: $FF
    ld e, a                                       ; $44E9: $5F
    rst RST_38                                    ; $44EA: $FF
    add b                                         ; $44EB: $80
    rst RST_18                                    ; $44EC: $DF
    cp [hl]                                       ; $44ED: $BE

jr_01C_44EE:
    rst RST_18                                    ; $44EE: $DF
    cp c                                          ; $44EF: $B9
    jp c, $BCB5                                   ; $44F0: $DA $B5 $BC

    ld d, e                                       ; $44F3: $53
    dec e                                         ; $44F4: $1D
    rst RST_20                                    ; $44F5: $E7
    sub b                                         ; $44F6: $90
    ld l, a                                       ; $44F7: $6F
    db $E3                                        ; $44F8: $E3
    sbc a                                         ; $44F9: $9F
    rst RST_00                                    ; $44FA: $C7
    cp a                                          ; $44FB: $BF
    cp a                                          ; $44FC: $BF
    ld a, b                                       ; $44FD: $78
    ld hl, sp-$40                                 ; $44FE: $F8 $C0
    rst RST_08                                    ; $4500: $CF
    or e                                          ; $4501: $B3
    add a                                         ; $4502: $87
    ld a, e                                       ; $4503: $7B
    rst RST_18                                    ; $4504: $DF
    jr nz, @+$01                                  ; $4505: $20 $FF

    rra                                           ; $4507: $1F
    db $E3                                        ; $4508: $E3
    ld a, a                                       ; $4509: $7F
    add c                                         ; $450A: $81
    rst RST_38                                    ; $450B: $FF
    db $DD                                        ; $450C: $DD
    rst RST_38                                    ; $450D: $FF
    rrca                                          ; $450E: $0F
    rst RST_38                                    ; $450F: $FF
    ld [hl], a                                    ; $4510: $77
    rst RST_38                                    ; $4511: $FF
    ccf                                           ; $4512: $3F
    cp $FF                                        ; $4513: $FE $FF
    db $FC                                        ; $4515: $FC
    cp $F0                                        ; $4516: $FE $F0
    rst RST_38                                    ; $4518: $FF
    adc $DF                                       ; $4519: $CE $DF
    ccf                                           ; $451B: $3F
    ld b, a                                       ; $451C: $47
    ccf                                           ; $451D: $3F
    daa                                           ; $451E: $27
    rra                                           ; $451F: $1F
    ldh a, [$FFE0]                                ; $4520: $F0 $E0
    ldh a, [$FFE0]                                ; $4522: $F0 $E0
    ldh a, [$FFE0]                                ; $4524: $F0 $E0
    ldh a, [$FF60]                                ; $4526: $F0 $60
    ldh a, [$FFA0]                                ; $4528: $F0 $A0
    ldh a, [$FFA0]                                ; $452A: $F0 $A0
    ldh a, [$FFA0]                                ; $452C: $F0 $A0
    ldh [rLCDC], a                                ; $452E: $E0 $40
    ldh [rLCDC], a                                ; $4530: $E0 $40
    ret nz                                        ; $4532: $C0

    add b                                         ; $4533: $80
    add b                                         ; $4534: $80
    nop                                           ; $4535: $00
    nop                                           ; $4536: $00
    nop                                           ; $4537: $00
    nop                                           ; $4538: $00
    nop                                           ; $4539: $00
    add b                                         ; $453A: $80
    nop                                           ; $453B: $00
    add b                                         ; $453C: $80
    nop                                           ; $453D: $00
    add b                                         ; $453E: $80
    nop                                           ; $453F: $00
    rrca                                          ; $4540: $0F
    nop                                           ; $4541: $00
    dec b                                         ; $4542: $05
    inc bc                                        ; $4543: $03
    dec b                                         ; $4544: $05
    inc bc                                        ; $4545: $03
    ccf                                           ; $4546: $3F
    inc bc                                        ; $4547: $03
    ld d, e                                       ; $4548: $53
    dec l                                         ; $4549: $2D
    and e                                         ; $454A: $A3
    ld e, l                                       ; $454B: $5D
    rst RST_38                                    ; $454C: $FF
    nop                                           ; $454D: $00
    nop                                           ; $454E: $00
    nop                                           ; $454F: $00
    nop                                           ; $4550: $00
    nop                                           ; $4551: $00
    nop                                           ; $4552: $00
    nop                                           ; $4553: $00
    nop                                           ; $4554: $00
    nop                                           ; $4555: $00
    nop                                           ; $4556: $00
    nop                                           ; $4557: $00
    nop                                           ; $4558: $00
    nop                                           ; $4559: $00
    nop                                           ; $455A: $00
    nop                                           ; $455B: $00
    nop                                           ; $455C: $00
    nop                                           ; $455D: $00
    nop                                           ; $455E: $00
    nop                                           ; $455F: $00
    ret nz                                        ; $4560: $C0

    add b                                         ; $4561: $80
    ret nz                                        ; $4562: $C0

    add b                                         ; $4563: $80
    ret nz                                        ; $4564: $C0

    add b                                         ; $4565: $80
    ldh [$FFC0], a                                ; $4566: $E0 $C0
    ldh [$FFC0], a                                ; $4568: $E0 $C0
    ret nz                                        ; $456A: $C0

    add b                                         ; $456B: $80
    add c                                         ; $456C: $81
    nop                                           ; $456D: $00
    ld bc, $0000                                  ; $456E: $01 $00 $00
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
    nop                                           ; $457C: $00
    nop                                           ; $457D: $00
    nop                                           ; $457E: $00
    nop                                           ; $457F: $00
    ld h, a                                       ; $4580: $67
    ld e, $1B                                     ; $4581: $1E $1B
    ld b, $0B                                     ; $4583: $06 $0B
    rlca                                          ; $4585: $07
    dec bc                                        ; $4586: $0B
    rlca                                          ; $4587: $07
    ld a, a                                       ; $4588: $7F
    rlca                                          ; $4589: $07
    and a                                         ; $458A: $A7
    ld e, e                                       ; $458B: $5B
    ld b, a                                       ; $458C: $47
    cp d                                          ; $458D: $BA
    cp $00                                        ; $458E: $FE $00
    nop                                           ; $4590: $00
    nop                                           ; $4591: $00
    nop                                           ; $4592: $00
    nop                                           ; $4593: $00
    nop                                           ; $4594: $00
    nop                                           ; $4595: $00
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
    add b                                         ; $45A0: $80
    nop                                           ; $45A1: $00
    ret nz                                        ; $45A2: $C0

    add b                                         ; $45A3: $80
    ret nz                                        ; $45A4: $C0

    add b                                         ; $45A5: $80
    add b                                         ; $45A6: $80
    nop                                           ; $45A7: $00
    nop                                           ; $45A8: $00
    nop                                           ; $45A9: $00
    nop                                           ; $45AA: $00
    nop                                           ; $45AB: $00
    nop                                           ; $45AC: $00
    nop                                           ; $45AD: $00
    nop                                           ; $45AE: $00
    nop                                           ; $45AF: $00
    nop                                           ; $45B0: $00
    nop                                           ; $45B1: $00
    nop                                           ; $45B2: $00
    nop                                           ; $45B3: $00
    nop                                           ; $45B4: $00
    nop                                           ; $45B5: $00
    nop                                           ; $45B6: $00
    nop                                           ; $45B7: $00
    nop                                           ; $45B8: $00
    nop                                           ; $45B9: $00
    nop                                           ; $45BA: $00
    nop                                           ; $45BB: $00
    nop                                           ; $45BC: $00
    nop                                           ; $45BD: $00
    nop                                           ; $45BE: $00
    nop                                           ; $45BF: $00
    sub a                                         ; $45C0: $97
    rrca                                          ; $45C1: $0F
    dec bc                                        ; $45C2: $0B
    rlca                                          ; $45C3: $07
    dec b                                         ; $45C4: $05
    inc bc                                        ; $45C5: $03
    dec b                                         ; $45C6: $05
    inc bc                                        ; $45C7: $03
    dec b                                         ; $45C8: $05
    inc bc                                        ; $45C9: $03
    ccf                                           ; $45CA: $3F
    inc bc                                        ; $45CB: $03
    ld d, e                                       ; $45CC: $53
    dec l                                         ; $45CD: $2D
    and e                                         ; $45CE: $A3
    ld e, l                                       ; $45CF: $5D
    rst RST_38                                    ; $45D0: $FF
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
    ld hl, sp-$30                                 ; $45E0: $F8 $D0
    ld hl, sp-$50                                 ; $45E2: $F8 $B0
    call c, $DCB8                                 ; $45E4: $DC $B8 $DC
    cp b                                          ; $45E7: $B8
    sbc $BC                                       ; $45E8: $DE $BC
    cp $DC                                        ; $45EA: $FE $DC
    db $FC                                        ; $45EC: $FC
    ret c                                         ; $45ED: $D8

    ld hl, sp-$70                                 ; $45EE: $F8 $90
    ldh a, [rP1]                                  ; $45F0: $F0 $00
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
    ld bc, $0700                                  ; $4600: $01 $00 $07
    ld bc, $070B                                  ; $4603: $01 $0B $07
    rla                                           ; $4606: $17
    dec c                                         ; $4607: $0D
    rra                                           ; $4608: $1F
    add hl, bc                                    ; $4609: $09
    ld a, [hl+]                                   ; $460A: $2A
    dec d                                         ; $460B: $15
    ld a, $11                                     ; $460C: $3E $11
    dec a                                         ; $460E: $3D
    inc bc                                        ; $460F: $03
    ld l, a                                       ; $4610: $6F
    ld a, $5F                                     ; $4611: $3E $5F
    dec a                                         ; $4613: $3D
    call c, $BF7F                                 ; $4614: $DC $7F $BF
    ld e, d                                       ; $4617: $5A
    ld a, c                                       ; $4618: $79
    ld [hl], $37                                  ; $4619: $36 $37
    ld bc, $0307                                  ; $461B: $01 $07 $03
    inc bc                                        ; $461E: $03
    nop                                           ; $461F: $00
    rst RST_38                                    ; $4620: $FF
    rlca                                          ; $4621: $07
    ld a, [$DA4D]                                 ; $4622: $FA $4D $DA
    or l                                          ; $4625: $B5
    rst RST_18                                    ; $4626: $DF
    or b                                          ; $4627: $B0
    ld e, a                                       ; $4628: $5F
    or a                                          ; $4629: $B7
    ld a, a                                       ; $462A: $7F
    ret nz                                        ; $462B: $C0

    ld l, a                                       ; $462C: $6F
    rst RST_18                                    ; $462D: $DF
    rst RST_28                                    ; $462E: $EF
    sbc b                                         ; $462F: $98
    add sp, -$69                                  ; $4630: $E8 $97
    ld a, b                                       ; $4632: $78
    and a                                         ; $4633: $A7
    pop af                                        ; $4634: $F1
    ld l, [hl]                                    ; $4635: $6E
    di                                            ; $4636: $F3
    ld l, h                                       ; $4637: $6C
    cp $C1                                        ; $4638: $FE $C1
    db $FD                                        ; $463A: $FD
    db $DB                                        ; $463B: $DB
    rst RST_28                                    ; $463C: $EF
    sub [hl]                                      ; $463D: $96
    rst RST_20                                    ; $463E: $E7
    sbc c                                         ; $463F: $99
    ei                                            ; $4640: $FB
    ld [hl], h                                    ; $4641: $74
    pop af                                        ; $4642: $F1
    ld c, $F3                                     ; $4643: $0E $F3
    ld l, h                                       ; $4645: $6C
    rst RST_38                                    ; $4646: $FF
    inc bc                                        ; $4647: $03
    db $FC                                        ; $4648: $FC
    rst RST_20                                    ; $4649: $E7
    cp $17                                        ; $464A: $FE $17
    ld hl, sp-$31                                 ; $464C: $F8 $CF
    di                                            ; $464E: $F3
    cpl                                           ; $464F: $2F
    ld h, c                                       ; $4650: $61
    sbc a                                         ; $4651: $9F
    rst RST_28                                    ; $4652: $EF
    ccf                                           ; $4653: $3F
    add a                                         ; $4654: $87
    ld a, a                                       ; $4655: $7F
    rra                                           ; $4656: $1F
    cp $3E                                        ; $4657: $FE $3E
    ld hl, sp-$08                                 ; $4659: $F8 $F8
    ret nz                                        ; $465B: $C0

    ldh a, [rP1]                                  ; $465C: $F0 $00
    ld hl, sp-$30                                 ; $465E: $F8 $D0
    ld hl, sp-$10                                 ; $4660: $F8 $F0
    ld hl, sp+$00                                 ; $4662: $F8 $00
    db $FC                                        ; $4664: $FC
    ld hl, sp+$1E                                 ; $4665: $F8 $1E
    db $FC                                        ; $4667: $FC
    ld c, $FC                                     ; $4668: $0E $FC
    xor $FC                                       ; $466A: $EE $FC
    ld a, h                                       ; $466C: $7C
    ld hl, sp-$44                                 ; $466D: $F8 $BC
    ld hl, sp-$08                                 ; $466F: $F8 $F8
    ldh a, [$FFF0]                                ; $4671: $F0 $F0
    ldh [$FFE0], a                                ; $4673: $E0 $E0
    add b                                         ; $4675: $80
    add b                                         ; $4676: $80
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
    nop                                           ; $4688: $00
    nop                                           ; $4689: $00
    nop                                           ; $468A: $00
    nop                                           ; $468B: $00
    rrca                                          ; $468C: $0F
    nop                                           ; $468D: $00
    inc e                                         ; $468E: $1C
    inc bc                                        ; $468F: $03
    inc e                                         ; $4690: $1C
    dec bc                                        ; $4691: $0B
    dec e                                         ; $4692: $1D
    ld a, [bc]                                    ; $4693: $0A
    ld e, $01                                     ; $4694: $1E $01
    rrca                                          ; $4696: $0F
    ld b, $1F                                     ; $4697: $06 $1F
    nop                                           ; $4699: $00
    ld a, a                                       ; $469A: $7F
    ld [bc], a                                    ; $469B: $02
    sbc a                                         ; $469C: $9F
    ld h, b                                       ; $469D: $60
    db $EB                                        ; $469E: $EB
    ld d, l                                       ; $469F: $55
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
    nop                                           ; $46AA: $00
    nop                                           ; $46AB: $00
    ret nz                                        ; $46AC: $C0

    nop                                           ; $46AD: $00
    inc hl                                        ; $46AE: $23
    ret nz                                        ; $46AF: $C0

    dec d                                         ; $46B0: $15
    db $E3                                        ; $46B1: $E3
    push de                                       ; $46B2: $D5
    inc hl                                        ; $46B3: $23
    ld c, l                                       ; $46B4: $4D
    or e                                          ; $46B5: $B3
    rst RST_18                                    ; $46B6: $DF
    ld h, b                                       ; $46B7: $60
    and e                                         ; $46B8: $A3
    rst RST_18                                    ; $46B9: $DF
    rst RST_08                                    ; $46BA: $CF
    cp [hl]                                       ; $46BB: $BE
    rst RST_38                                    ; $46BC: $FF
    inc a                                         ; $46BD: $3C
    rst RST_38                                    ; $46BE: $FF
    cp h                                          ; $46BF: $BC
    nop                                           ; $46C0: $00
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
    ret nz                                        ; $46D0: $C0

    nop                                           ; $46D1: $00
    ldh [$FFC0], a                                ; $46D2: $E0 $C0
    ldh a, [$FFE0]                                ; $46D4: $F0 $E0
    ld hl, sp+$70                                 ; $46D6: $F8 $70
    ld hl, sp+$30                                 ; $46D8: $F8 $30
    db $FC                                        ; $46DA: $FC

jr_01C_46DB:
    jr c, @-$02                                   ; $46DB: $38 $FC

    jr c, jr_01C_46DB                             ; $46DD: $38 $FC

    jr c, jr_01C_471F                             ; $46DF: $38 $3E

    ld de, $033D                                  ; $46E1: $11 $3D $03
    ld l, a                                       ; $46E4: $6F
    ld a, $5F                                     ; $46E5: $3E $5F
    inc a                                         ; $46E7: $3C
    db $DD                                        ; $46E8: $DD
    ld a, [hl]                                    ; $46E9: $7E
    cp a                                          ; $46EA: $BF
    ld e, d                                       ; $46EB: $5A
    ld a, c                                       ; $46EC: $79
    ld [hl], $37                                  ; $46ED: $36 $37
    ld bc, $0307                                  ; $46EF: $01 $07 $03
    inc bc                                        ; $46F2: $03
    nop                                           ; $46F3: $00
    nop                                           ; $46F4: $00
    nop                                           ; $46F5: $00
    nop                                           ; $46F6: $00
    nop                                           ; $46F7: $00
    ld bc, $0200                                  ; $46F8: $01 $00 $02
    ld bc, $0205                                  ; $46FB: $01 $05 $02
    rlca                                          ; $46FE: $07
    nop                                           ; $46FF: $00
    push af                                       ; $4700: $F5
    xor e                                         ; $4701: $AB
    rst RST_20                                    ; $4702: $E7
    sbc e                                         ; $4703: $9B
    db $E3                                        ; $4704: $E3
    inc e                                         ; $4705: $1C
    ld [hl], c                                    ; $4706: $71
    xor $3E                                       ; $4707: $EE $3E
    ldh a, [$FFBF]                                ; $4709: $F0 $BF
    ld a, [hl]                                    ; $470B: $7E
    cp a                                          ; $470C: $BF
    ld a, [hl]                                    ; $470D: $7E
    rst RST_18                                    ; $470E: $DF
    cp [hl]                                       ; $470F: $BE
    rst RST_28                                    ; $4710: $EF
    sbc [hl]                                      ; $4711: $9E
    xor [hl]                                      ; $4712: $AE
    inc e                                         ; $4713: $1C
    ld l, $1C                                     ; $4714: $2E $1C
    ld l, $1C                                     ; $4716: $2E $1C
    rst RST_38                                    ; $4718: $FF
    ld e, $9F                                     ; $4719: $1E $9F
    ld l, [hl]                                    ; $471B: $6E
    ld e, $EC                                     ; $471C: $1E $EC
    db $FC                                        ; $471E: $FC

jr_01C_471F:
    nop                                           ; $471F: $00
    add h                                         ; $4720: $84
    ld a, b                                       ; $4721: $78
    add h                                         ; $4722: $84
    ld a, b                                       ; $4723: $78
    add e                                         ; $4724: $83
    ld a, h                                       ; $4725: $7C
    ld b, d                                       ; $4726: $42
    dec a                                         ; $4727: $3D
    ld e, h                                       ; $4728: $5C
    inc hl                                        ; $4729: $23
    jr c, jr_01C_4743                             ; $472A: $38 $17

jr_01C_472C:
    ld [hl], a                                    ; $472C: $77
    cpl                                           ; $472D: $2F
    ccf                                           ; $472E: $3F
    jr jr_01C_4750                                ; $472F: $18 $1F

    rlca                                          ; $4731: $07
    rlca                                          ; $4732: $07
    nop                                           ; $4733: $00
    nop                                           ; $4734: $00
    nop                                           ; $4735: $00
    inc bc                                        ; $4736: $03
    nop                                           ; $4737: $00
    dec b                                         ; $4738: $05
    ld [bc], a                                    ; $4739: $02
    ld a, [bc]                                    ; $473A: $0A
    dec b                                         ; $473B: $05
    rrca                                          ; $473C: $0F
    nop                                           ; $473D: $00
    nop                                           ; $473E: $00
    nop                                           ; $473F: $00
    adc $3F                                       ; $4740: $CE $3F
    add a                                         ; $4742: $87

jr_01C_4743:
    ld a, a                                       ; $4743: $7F
    cp a                                          ; $4744: $BF
    rst RST_38                                    ; $4745: $FF
    rra                                           ; $4746: $1F
    cp $7E                                        ; $4747: $FE $7E
    ld hl, sp-$08                                 ; $4749: $F8 $F8
    ldh [$FFE0], a                                ; $474B: $E0 $E0
    nop                                           ; $474D: $00
    ldh [$FFC0], a                                ; $474E: $E0 $C0

jr_01C_4750:
    ld hl, sp-$20                                 ; $4750: $F8 $E0
    db $FC                                        ; $4752: $FC
    ld hl, sp-$02                                 ; $4753: $F8 $FE
    inc a                                         ; $4755: $3C
    cp $3C                                        ; $4756: $FE $3C
    inc a                                         ; $4758: $3C
    ret c                                         ; $4759: $D8

    jr c, jr_01C_472C                             ; $475A: $38 $D0

    ldh a, [rP1]                                  ; $475C: $F0 $00
    nop                                           ; $475E: $00
    nop                                           ; $475F: $00
    nop                                           ; $4760: $00
    nop                                           ; $4761: $00
    nop                                           ; $4762: $00
    nop                                           ; $4763: $00
    nop                                           ; $4764: $00
    nop                                           ; $4765: $00
    nop                                           ; $4766: $00
    nop                                           ; $4767: $00
    ld bc, $0200                                  ; $4768: $01 $00 $02
    ld bc, $0103                                  ; $476B: $01 $03 $01
    inc bc                                        ; $476E: $03
    ld bc, $0001                                  ; $476F: $01 $01 $00
    nop                                           ; $4772: $00
    nop                                           ; $4773: $00
    rlca                                          ; $4774: $07
    nop                                           ; $4775: $00
    rra                                           ; $4776: $1F
    dec b                                         ; $4777: $05
    cpl                                           ; $4778: $2F
    rra                                           ; $4779: $1F
    ld e, l                                       ; $477A: $5D
    scf                                           ; $477B: $37
    ld a, l                                       ; $477C: $7D
    daa                                           ; $477D: $27
    xor c                                         ; $477E: $A9
    ld d, a                                       ; $477F: $57
    inc e                                         ; $4780: $1C
    dec bc                                        ; $4781: $0B
    dec e                                         ; $4782: $1D
    ld a, [bc]                                    ; $4783: $0A
    ld e, $01                                     ; $4784: $1E $01
    rrca                                          ; $4786: $0F
    ld b, $FF                                     ; $4787: $06 $FF
    nop                                           ; $4789: $00
    rra                                           ; $478A: $1F
    ldh [c], a                                    ; $478B: $E2
    ld a, a                                       ; $478C: $7F
    add b                                         ; $478D: $80
    ld [$FF55], a                                 ; $478E: $EA $55 $FF
    ld h, b                                       ; $4791: $60
    cp a                                          ; $4792: $BF
    ld [hl], e                                    ; $4793: $73
    or a                                          ; $4794: $B7
    ld l, l                                       ; $4795: $6D
    rst RST_30                                    ; $4796: $F7
    adc h                                         ; $4797: $8C
    rst RST_30                                    ; $4798: $F7
    dec l                                         ; $4799: $2D
    rst RST_38                                    ; $479A: $FF
    ret nz                                        ; $479B: $C0

    rst RST_30                                    ; $479C: $F7
    rst RST_18                                    ; $479D: $DF
    rst RST_30                                    ; $479E: $F7
    ld c, $15                                     ; $479F: $0E $15
    db $E3                                        ; $47A1: $E3
    push de                                       ; $47A2: $D5
    inc hl                                        ; $47A3: $23
    ld c, l                                       ; $47A4: $4D
    or e                                          ; $47A5: $B3
    bit 6, a                                      ; $47A6: $CB $77
    adc a                                         ; $47A8: $8F
    ldh a, [$FFF8]                                ; $47A9: $F0 $F8
    rst RST_00                                    ; $47AB: $C7
    ld hl, sp+$37                                 ; $47AC: $F8 $37
    db $FC                                        ; $47AE: $FC
    ld [hl], a                                    ; $47AF: $77
    rst RST_38                                    ; $47B0: $FF
    rst RST_30                                    ; $47B1: $F7
    ld e, a                                       ; $47B2: $5F
    xor e                                         ; $47B3: $AB
    ld e, a                                       ; $47B4: $5F
    xor b                                         ; $47B5: $A8
    rst RST_38                                    ; $47B6: $FF
    inc bc                                        ; $47B7: $03
    rst RST_30                                    ; $47B8: $F7
    db $E3                                        ; $47B9: $E3
    rst RST_20                                    ; $47BA: $E7
    inc bc                                        ; $47BB: $03
    di                                            ; $47BC: $F3
    pop hl                                        ; $47BD: $E1
    di                                            ; $47BE: $F3
    nop                                           ; $47BF: $00
    ret nz                                        ; $47C0: $C0

    nop                                           ; $47C1: $00
    ldh [$FFC0], a                                ; $47C2: $E0 $C0
    ldh a, [$FFE0]                                ; $47C4: $F0 $E0
    ld hl, sp-$10                                 ; $47C6: $F8 $F0
    ld hl, sp+$10                                 ; $47C8: $F8 $10
    inc e                                         ; $47CA: $1C
    add sp, $3C                                   ; $47CB: $E8 $3C
    add sp, $7C                                   ; $47CD: $E8 $7C
    add sp, -$04                                  ; $47CF: $E8 $FC
    ret c                                         ; $47D1: $D8

    call c, $8FA8                                 ; $47D2: $DC $A8 $8F
    ld [hl], b                                    ; $47D5: $70
    cp a                                          ; $47D6: $BF
    ld c, a                                       ; $47D7: $4F
    pop af                                        ; $47D8: $F1
    cp a                                          ; $47D9: $BF
    ret nz                                        ; $47DA: $C0

    ld a, a                                       ; $47DB: $7F
    xor $7F                                       ; $47DC: $EE $7F
    add a                                         ; $47DE: $87
    rst RST_38                                    ; $47DF: $FF
    ldh [rP1], a                                  ; $47E0: $E0 $00
    ldh a, [$FFE0]                                ; $47E2: $F0 $E0
    ld a, b                                       ; $47E4: $78
    ldh a, [$FF38]                                ; $47E5: $F0 $38
    ldh a, [$FFB8]                                ; $47E7: $F0 $B8
    ldh a, [$FFF0]                                ; $47E9: $F0 $F0
    ldh [$FFF0], a                                ; $47EB: $E0 $F0
    ldh [$FFE0], a                                ; $47ED: $E0 $E0
    ret nz                                        ; $47EF: $C0

    ret nz                                        ; $47F0: $C0

    add b                                         ; $47F1: $80
    add b                                         ; $47F2: $80
    nop                                           ; $47F3: $00
    nop                                           ; $47F4: $00
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
    nop                                           ; $4818: $00
    nop                                           ; $4819: $00
    nop                                           ; $481A: $00
    nop                                           ; $481B: $00
    ld a, [hl]                                    ; $481C: $7E
    nop                                           ; $481D: $00
    pop hl                                        ; $481E: $E1
    ld e, $00                                     ; $481F: $1E $00
    nop                                           ; $4821: $00
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
    nop                                           ; $4832: $00
    nop                                           ; $4833: $00
    nop                                           ; $4834: $00
    nop                                           ; $4835: $00
    nop                                           ; $4836: $00
    nop                                           ; $4837: $00
    nop                                           ; $4838: $00
    nop                                           ; $4839: $00
    nop                                           ; $483A: $00
    nop                                           ; $483B: $00
    nop                                           ; $483C: $00
    nop                                           ; $483D: $00
    jr jr_01C_4840                                ; $483E: $18 $00

jr_01C_4840:
    di                                            ; $4840: $F3
    ld l, [hl]                                    ; $4841: $6E
    or e                                          ; $4842: $B3
    ld a, [hl]                                    ; $4843: $7E
    and a                                         ; $4844: $A7
    ld a, c                                       ; $4845: $79
    adc [hl]                                      ; $4846: $8E
    ld a, c                                       ; $4847: $79
    ld c, e                                       ; $4848: $4B
    inc a                                         ; $4849: $3C
    db $DD                                        ; $484A: $DD
    ld a, d                                       ; $484B: $7A
    db $D3                                        ; $484C: $D3
    ld a, a                                       ; $484D: $7F
    bit 7, [hl]                                   ; $484E: $CB $7E
    adc a                                         ; $4850: $8F
    ld a, [hl]                                    ; $4851: $7E
    sbc a                                         ; $4852: $9F
    ld l, l                                       ; $4853: $6D
    rst RST_18                                    ; $4854: $DF
    ld l, l                                       ; $4855: $6D
    ld b, a                                       ; $4856: $47
    inc a                                         ; $4857: $3C
    ccf                                           ; $4858: $3F
    nop                                           ; $4859: $00
    dec b                                         ; $485A: $05
    ld [bc], a                                    ; $485B: $02
    ld a, [bc]                                    ; $485C: $0A
    dec b                                         ; $485D: $05
    rrca                                          ; $485E: $0F
    nop                                           ; $485F: $00
    ei                                            ; $4860: $FB
    ld h, [hl]                                    ; $4861: $66
    rst RST_38                                    ; $4862: $FF
    and [hl]                                      ; $4863: $A6
    rst RST_38                                    ; $4864: $FF
    add b                                         ; $4865: $80
    db $E3                                        ; $4866: $E3
    inc e                                         ; $4867: $1C
    ld [hl], c                                    ; $4868: $71
    xor $3C                                       ; $4869: $EE $3C
    di                                            ; $486B: $F3
    cp [hl]                                       ; $486C: $BE
    ld a, l                                       ; $486D: $7D
    sbc [hl]                                      ; $486E: $9E
    ld a, l                                       ; $486F: $7D
    rst RST_18                                    ; $4870: $DF
    cp h                                          ; $4871: $BC
    xor [hl]                                      ; $4872: $AE
    inc e                                         ; $4873: $1C
    xor h                                         ; $4874: $AC
    jr jr_01C_48D3                                ; $4875: $18 $5C

jr_01C_4877:
    jr c, jr_01C_4877                             ; $4877: $38 $FE

    inc a                                         ; $4879: $3C
    ld a, $DC                                     ; $487A: $3E $DC
    inc a                                         ; $487C: $3C
    ret c                                         ; $487D: $D8

    ld hl, sp+$00                                 ; $487E: $F8 $00
    ld [hl], l                                    ; $4880: $75
    jp c, $DF7F                                   ; $4881: $DA $7F $DF

    ld a, a                                       ; $4884: $7F
    ret nz                                        ; $4885: $C0

    ld a, a                                       ; $4886: $7F
    sbc $FE                                       ; $4887: $DE $FE
    nop                                           ; $4889: $00
    cp a                                          ; $488A: $BF
    ld a, [hl]                                    ; $488B: $7E
    cp a                                          ; $488C: $BF
    ld [hl], b                                    ; $488D: $70
    or d                                          ; $488E: $B2
    ld l, l                                       ; $488F: $6D
    db $F4                                        ; $4890: $F4
    ld l, e                                       ; $4891: $6B
    ld a, b                                       ; $4892: $78
    rlca                                          ; $4893: $07
    rla                                           ; $4894: $17
    rrca                                          ; $4895: $0F
    ccf                                           ; $4896: $3F
    jr jr_01C_48D5                                ; $4897: $18 $3C

    inc bc                                        ; $4899: $03
    rlca                                          ; $489A: $07
    nop                                           ; $489B: $00
    rlca                                          ; $489C: $07
    inc bc                                        ; $489D: $03
    inc bc                                        ; $489E: $03
    nop                                           ; $489F: $00
    db $FC                                        ; $48A0: $FC
    adc a                                         ; $48A1: $8F
    ldh a, [$FF9F]                                ; $48A2: $F0 $9F
    cp e                                          ; $48A4: $BB
    rra                                           ; $48A5: $1F
    ld h, c                                       ; $48A6: $61
    ccf                                           ; $48A7: $3F
    ld c, [hl]                                    ; $48A8: $4E
    ccf                                           ; $48A9: $3F
    add a                                         ; $48AA: $87
    ld a, a                                       ; $48AB: $7F
    cp a                                          ; $48AC: $BF
    rst RST_38                                    ; $48AD: $FF
    rra                                           ; $48AE: $1F
    cp $7E                                        ; $48AF: $FE $7E
    ld hl, sp-$08                                 ; $48B1: $F8 $F8
    ldh [$FFF0], a                                ; $48B3: $E0 $F0
    nop                                           ; $48B5: $00
    ld a, b                                       ; $48B6: $78
    and b                                         ; $48B7: $A0
    ld a, b                                       ; $48B8: $78
    and b                                         ; $48B9: $A0
    db $F4                                        ; $48BA: $F4
    ld l, b                                       ; $48BB: $68
    db $E4                                        ; $48BC: $E4
    ret c                                         ; $48BD: $D8

    db $FC                                        ; $48BE: $FC
    nop                                           ; $48BF: $00
    nop                                           ; $48C0: $00
    nop                                           ; $48C1: $00
    nop                                           ; $48C2: $00
    nop                                           ; $48C3: $00
    nop                                           ; $48C4: $00
    nop                                           ; $48C5: $00
    nop                                           ; $48C6: $00
    nop                                           ; $48C7: $00
    nop                                           ; $48C8: $00
    nop                                           ; $48C9: $00
    nop                                           ; $48CA: $00
    nop                                           ; $48CB: $00
    nop                                           ; $48CC: $00
    nop                                           ; $48CD: $00
    nop                                           ; $48CE: $00
    nop                                           ; $48CF: $00
    nop                                           ; $48D0: $00
    nop                                           ; $48D1: $00
    nop                                           ; $48D2: $00

jr_01C_48D3:
    nop                                           ; $48D3: $00
    nop                                           ; $48D4: $00

jr_01C_48D5:
    nop                                           ; $48D5: $00
    nop                                           ; $48D6: $00
    nop                                           ; $48D7: $00
    rrca                                          ; $48D8: $0F
    nop                                           ; $48D9: $00
    add hl, de                                    ; $48DA: $19
    rrca                                          ; $48DB: $0F
    ld [hl-], a                                   ; $48DC: $32
    rra                                           ; $48DD: $1F
    ld a, a                                       ; $48DE: $7F
    ld de, $0000                                  ; $48DF: $11 $00 $00
    nop                                           ; $48E2: $00
    nop                                           ; $48E3: $00
    nop                                           ; $48E4: $00
    nop                                           ; $48E5: $00
    nop                                           ; $48E6: $00
    nop                                           ; $48E7: $00
    ld bc, $0300                                  ; $48E8: $01 $00 $03
    nop                                           ; $48EB: $00
    inc bc                                        ; $48EC: $03
    ld bc, $0103                                  ; $48ED: $01 $03 $01
    inc bc                                        ; $48F0: $03
    nop                                           ; $48F1: $00
    ld bc, $7F00                                  ; $48F2: $01 $00 $7F
    nop                                           ; $48F5: $00
    ld b, e                                       ; $48F6: $43
    inc a                                         ; $48F7: $3C
    rst RST_20                                    ; $48F8: $E7

jr_01C_48F9:
    jr c, jr_01C_48F9                             ; $48F9: $38 $FE

    or l                                          ; $48FB: $B5
    rst RST_38                                    ; $48FC: $FF
    sub $FB                                       ; $48FD: $D6 $FB
    rst RST_10                                    ; $48FF: $D7
    nop                                           ; $4900: $00
    nop                                           ; $4901: $00
    nop                                           ; $4902: $00
    nop                                           ; $4903: $00
    nop                                           ; $4904: $00
    nop                                           ; $4905: $00
    nop                                           ; $4906: $00
    nop                                           ; $4907: $00
    ld hl, sp+$00                                 ; $4908: $F8 $00
    add h                                         ; $490A: $84
    ld a, b                                       ; $490B: $78
    add d                                         ; $490C: $82
    ld a, h                                       ; $490D: $7C
    cp d                                          ; $490E: $BA
    ld b, h                                       ; $490F: $44
    ret                                           ; $4910: $C9


    ld [hl], $F9                                  ; $4911: $36 $F9
    adc $F1                                       ; $4913: $CE $F1
    ld e, $FF                                     ; $4915: $1E $FF
    ld e, c                                       ; $4917: $59
    rst RST_38                                    ; $4918: $FF
    inc bc                                        ; $4919: $03
    xor a                                         ; $491A: $AF
    ld d, a                                       ; $491B: $57
    rst RST_38                                    ; $491C: $FF
    rrca                                          ; $491D: $0F
    push af                                       ; $491E: $F5
    ld a, [hl-]                                   ; $491F: $3A
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
    jr nc, jr_01C_492E                            ; $492C: $30 $00

jr_01C_492E:
    ld e, h                                       ; $492E: $5C
    jr nc, jr_01C_498F                            ; $492F: $30 $5E

    inc a                                         ; $4931: $3C
    ld e, a                                       ; $4932: $5F
    ld a, $FF                                     ; $4933: $3E $FF
    nop                                           ; $4935: $00
    add c                                         ; $4936: $81
    ld a, [hl]                                    ; $4937: $7E
    jp $FF7E                                      ; $4938: $C3 $7E $FF


    ld a, [hl]                                    ; $493B: $7E
    rst RST_38                                    ; $493C: $FF
    ld a, h                                       ; $493D: $7C
    rst RST_38                                    ; $493E: $FF
    or e                                          ; $493F: $B3
    nop                                           ; $4940: $00
    nop                                           ; $4941: $00
    nop                                           ; $4942: $00
    nop                                           ; $4943: $00
    add b                                         ; $4944: $80
    nop                                           ; $4945: $00
    add b                                         ; $4946: $80
    nop                                           ; $4947: $00
    ret nz                                        ; $4948: $C0

    add b                                         ; $4949: $80
    ret nz                                        ; $494A: $C0

    add b                                         ; $494B: $80
    ldh [rP1], a                                  ; $494C: $E0 $00
    ldh a, [$FFE0]                                ; $494E: $F0 $E0
    ld a, b                                       ; $4950: $78
    ldh a, [$FF38]                                ; $4951: $F0 $38
    ldh a, [$FFB8]                                ; $4953: $F0 $B8
    ldh a, [$FFF0]                                ; $4955: $F0 $F0
    ldh [$FFF0], a                                ; $4957: $E0 $F0
    ldh [$FFE0], a                                ; $4959: $E0 $E0
    ret nz                                        ; $495B: $C0

    ret nz                                        ; $495C: $C0

    add b                                         ; $495D: $80
    add b                                         ; $495E: $80
    nop                                           ; $495F: $00
    ld bc, $0700                                  ; $4960: $01 $00 $07
    ld bc, $070B                                  ; $4963: $01 $0B $07
    rla                                           ; $4966: $17
    dec c                                         ; $4967: $0D
    rra                                           ; $4968: $1F
    add hl, bc                                    ; $4969: $09
    ld a, [hl+]                                   ; $496A: $2A
    dec d                                         ; $496B: $15
    ld a, $11                                     ; $496C: $3E $11
    dec a                                         ; $496E: $3D
    inc bc                                        ; $496F: $03
    ld l, a                                       ; $4970: $6F
    ld a, $47                                     ; $4971: $3E $47
    dec a                                         ; $4973: $3D
    call nc, $BF7F                                ; $4974: $D4 $7F $BF
    ld e, d                                       ; $4977: $5A
    ld a, c                                       ; $4978: $79
    ld [hl], $37                                  ; $4979: $36 $37
    ld bc, $0307                                  ; $497B: $01 $07 $03
    inc bc                                        ; $497E: $03
    nop                                           ; $497F: $00
    inc bc                                        ; $4980: $03
    nop                                           ; $4981: $00
    rlca                                          ; $4982: $07
    nop                                           ; $4983: $00
    rlca                                          ; $4984: $07
    ld [bc], a                                    ; $4985: $02
    rlca                                          ; $4986: $07
    ld [bc], a                                    ; $4987: $02
    rrca                                          ; $4988: $0F
    nop                                           ; $4989: $00
    ccf                                           ; $498A: $3F
    dec c                                         ; $498B: $0D
    rst RST_18                                    ; $498C: $DF
    jr c, @+$01                                   ; $498D: $38 $FF

jr_01C_498F:
    ld a, b                                       ; $498F: $78
    cp a                                          ; $4990: $BF
    ldh a, [$FF75]                                ; $4991: $F0 $75
    ld [$E03F], a                                 ; $4993: $EA $3F $E0
    ld a, a                                       ; $4996: $7F
    ret                                           ; $4997: $C9


    ei                                            ; $4998: $FB
    and [hl]                                      ; $4999: $A6
    ei                                            ; $499A: $FB
    or [hl]                                       ; $499B: $B6
    ld a, e                                       ; $499C: $7B
    or [hl]                                       ; $499D: $B6
    rst RST_38                                    ; $499E: $FF
    ld a, b                                       ; $499F: $78
    ld bc, $F100                                  ; $49A0: $01 $00 $F1
    nop                                           ; $49A3: $00
    add hl, bc                                    ; $49A4: $09
    ldh a, [$FF35]                                ; $49A5: $F0 $35
    ret z                                         ; $49A7: $C8

    ld d, l                                       ; $49A8: $55
    xor b                                         ; $49A9: $A8
    sub e                                         ; $49AA: $93
    ld l, h                                       ; $49AB: $6C
    di                                            ; $49AC: $F3
    sbc h                                         ; $49AD: $9C
    ldh [c], a                                    ; $49AE: $E2
    dec a                                         ; $49AF: $3D
    rst RST_38                                    ; $49B0: $FF
    or c                                          ; $49B1: $B1
    rst RST_38                                    ; $49B2: $FF
    dec c                                         ; $49B3: $0D
    ld a, a                                       ; $49B4: $7F
    cp l                                          ; $49B5: $BD
    rst RST_38                                    ; $49B6: $FF
    ld a, [hl]                                    ; $49B7: $7E
    xor a                                         ; $49B8: $AF
    rst RST_10                                    ; $49B9: $D7
    xor a                                         ; $49BA: $AF
    sub $FE                                       ; $49BB: $D6 $FE
    nop                                           ; $49BD: $00
    db $FC                                        ; $49BE: $FC
    ld hl, sp-$40                                 ; $49BF: $F8 $C0
    nop                                           ; $49C1: $00
    ld [hl], b                                    ; $49C2: $70
    ret nz                                        ; $49C3: $C0

    ld a, b                                       ; $49C4: $78
    ldh a, [$FF7C]                                ; $49C5: $F0 $7C
    ld hl, sp+$7E                                 ; $49C7: $F8 $7E
    db $E4                                        ; $49C9: $E4
    ld h, a                                       ; $49CA: $67
    sbc d                                         ; $49CB: $9A
    sbc a                                         ; $49CC: $9F
    ld a, d                                       ; $49CD: $7A
    ld a, a                                       ; $49CE: $7F
    ld a, [$F0FF]                                 ; $49CF: $FA $FF $F0
    rst RST_30                                    ; $49D2: $F7
    db $EB                                        ; $49D3: $EB
    db $EC                                        ; $49D4: $EC
    rst RST_10                                    ; $49D5: $D7
    cp $07                                        ; $49D6: $FE $07
    ld hl, sp+$6F                                 ; $49D8: $F8 $6F
    di                                            ; $49DA: $F3
    ld l, a                                       ; $49DB: $6F
    pop hl                                        ; $49DC: $E1
    ld e, a                                       ; $49DD: $5F
    rst RST_28                                    ; $49DE: $EF
    ccf                                           ; $49DF: $3F
    ld hl, sp+$00                                 ; $49E0: $F8 $00
    db $FC                                        ; $49E2: $FC
    ld hl, sp+$1E                                 ; $49E3: $F8 $1E
    db $FC                                        ; $49E5: $FC
    ld c, $FC                                     ; $49E6: $0E $FC
    xor $FC                                       ; $49E8: $EE $FC
    ld a, h                                       ; $49EA: $7C
    ld hl, sp-$44                                 ; $49EB: $F8 $BC
    ld hl, sp-$08                                 ; $49ED: $F8 $F8
    ldh a, [$FFF0]                                ; $49EF: $F0 $F0
    ldh [$FFE0], a                                ; $49F1: $E0 $E0

jr_01C_49F3:
    add b                                         ; $49F3: $80
    add b                                         ; $49F4: $80
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
    cp $73                                        ; $4A00: $FE $73
    or $C1                                        ; $4A02: $F6 $C1
    ld [$CBC5], a                                 ; $4A04: $EA $C5 $CB
    add l                                         ; $4A07: $85
    push bc                                       ; $4A08: $C5
    add d                                         ; $4A09: $82
    add h                                         ; $4A0A: $84
    inc bc                                        ; $4A0B: $03
    rra                                           ; $4A0C: $1F
    nop                                           ; $4A0D: $00
    rla                                           ; $4A0E: $17
    rrca                                          ; $4A0F: $0F
    dec bc                                        ; $4A10: $0B
    rlca                                          ; $4A11: $07
    add hl, bc                                    ; $4A12: $09
    rlca                                          ; $4A13: $07
    dec b                                         ; $4A14: $05
    inc bc                                        ; $4A15: $03
    ld [bc], a                                    ; $4A16: $02
    ld bc, $0001                                  ; $4A17: $01 $01 $00
    ld bc, $0100                                  ; $4A1A: $01 $00 $01
    nop                                           ; $4A1D: $00
    ld bc, $F800                                  ; $4A1E: $01 $00 $F8
    nop                                           ; $4A21: $00
    db $FD                                        ; $4A22: $FD
    ld hl, sp-$02                                 ; $4A23: $F8 $FE
    pop bc                                        ; $4A25: $C1
    push bc                                       ; $4A26: $C5
    cp e                                          ; $4A27: $BB
    rst RST_08                                    ; $4A28: $CF
    or [hl]                                       ; $4A29: $B6
    adc $30                                       ; $4A2A: $CE $30
    ld h, d                                       ; $4A2C: $62
    sbc h                                         ; $4A2D: $9C
    ld a, d                                       ; $4A2E: $7A
    and h                                         ; $4A2F: $A4
    cp [hl]                                       ; $4A30: $BE
    ld a, b                                       ; $4A31: $78
    sbc [hl]                                      ; $4A32: $9E
    ld a, h                                       ; $4A33: $7C
    rst RST_18                                    ; $4A34: $DF
    cp [hl]                                       ; $4A35: $BE
    rst RST_08                                    ; $4A36: $CF
    cp [hl]                                       ; $4A37: $BE
    rst RST_28                                    ; $4A38: $EF
    sbc $6E                                       ; $4A39: $DE $6E
    call c, $EC76                                 ; $4A3B: $DC $76 $EC
    halt                                          ; $4A3E: $76
    db $EC                                        ; $4A3F: $EC
    add a                                         ; $4A40: $87
    ld a, a                                       ; $4A41: $7F
    rra                                           ; $4A42: $1F
    cp $3E                                        ; $4A43: $FE $3E
    ld hl, sp-$04                                 ; $4A45: $F8 $FC
    ret nz                                        ; $4A47: $C0

    db $FC                                        ; $4A48: $FC
    jr c, @+$7A                                   ; $4A49: $38 $78

    jr nc, @+$7A                                  ; $4A4B: $30 $78

    jr nc, jr_01C_4ABF                            ; $4A4D: $30 $70

    jr nz, jr_01C_4AB1                            ; $4A4F: $20 $60

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
    rst RST_30                                    ; $4A60: $F7
    ld l, [hl]                                    ; $4A61: $6E
    rst RST_38                                    ; $4A62: $FF
    ld l, [hl]                                    ; $4A63: $6E
    rst RST_28                                    ; $4A64: $EF
    ld e, [hl]                                    ; $4A65: $5E
    cp $04                                        ; $4A66: $FE $04
    ld b, h                                       ; $4A68: $44
    jr c, jr_01C_49F3                             ; $4A69: $38 $88

    ld [hl], b                                    ; $4A6B: $70
    ldh a, [rP1]                                  ; $4A6C: $F0 $00
    nop                                           ; $4A6E: $00
    nop                                           ; $4A6F: $00
    nop                                           ; $4A70: $00
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
    ld [bc], a                                    ; $4A80: $02
    ld bc, $0102                                  ; $4A81: $01 $02 $01
    inc b                                         ; $4A84: $04
    inc bc                                        ; $4A85: $03
    add hl, bc                                    ; $4A86: $09
    ld b, $0E                                     ; $4A87: $06 $0E
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
    ld bc, $0700                                  ; $4AA0: $01 $00 $07
    ld bc, $070B                                  ; $4AA3: $01 $0B $07
    rla                                           ; $4AA6: $17
    dec c                                         ; $4AA7: $0D
    rra                                           ; $4AA8: $1F
    add hl, bc                                    ; $4AA9: $09
    ld a, [hl+]                                   ; $4AAA: $2A
    dec d                                         ; $4AAB: $15
    ld a, $11                                     ; $4AAC: $3E $11
    dec a                                         ; $4AAE: $3D
    inc bc                                        ; $4AAF: $03
    ld l, a                                       ; $4AB0: $6F

jr_01C_4AB1:
    ld a, $47                                     ; $4AB1: $3E $47
    dec a                                         ; $4AB3: $3D
    call nc, $BF7F                                ; $4AB4: $D4 $7F $BF
    ld e, d                                       ; $4AB7: $5A
    ld a, c                                       ; $4AB8: $79
    ld [hl], $37                                  ; $4AB9: $36 $37
    ld bc, $0307                                  ; $4ABB: $01 $07 $03
    inc bc                                        ; $4ABE: $03

jr_01C_4ABF:
    nop                                           ; $4ABF: $00
    rlca                                          ; $4AC0: $07
    nop                                           ; $4AC1: $00
    ld c, $01                                     ; $4AC2: $0E $01
    ld a, $05                                     ; $4AC4: $3E $05
    sbc $35                                       ; $4AC6: $DE $35
    rst RST_28                                    ; $4AC8: $EF
    ld [hl], b                                    ; $4AC9: $70
    cp a                                          ; $4ACA: $BF
    bit 7, a                                      ; $4ACB: $CB $7F
    ldh a, [$FF3F]                                ; $4ACD: $F0 $3F
    pop af                                        ; $4ACF: $F1
    ld a, a                                       ; $4AD0: $7F
    ret nz                                        ; $4AD1: $C0

    push af                                       ; $4AD2: $F5
    xor d                                         ; $4AD3: $AA
    rst RST_38                                    ; $4AD4: $FF
    and c                                         ; $4AD5: $A1
    ld a, [hl]                                    ; $4AD6: $7E
    and e                                         ; $4AD7: $A3
    or $6D                                        ; $4AD8: $F6 $6D
    ei                                            ; $4ADA: $FB
    halt                                          ; $4ADB: $76
    ei                                            ; $4ADC: $FB
    add $E7                                       ; $4ADD: $C6 $E7
    ret nz                                        ; $4ADF: $C0

    ld bc, $E200                                  ; $4AE0: $01 $00 $E2
    ld bc, $E112                                  ; $4AE3: $01 $12 $E1
    ld l, d                                       ; $4AE6: $6A
    sub c                                         ; $4AE7: $91
    xor l                                         ; $4AE8: $AD
    ld d, e                                       ; $4AE9: $53
    daa                                           ; $4AEA: $27
    ret c                                         ; $4AEB: $D8

    db $EC                                        ; $4AEC: $EC
    inc sp                                        ; $4AED: $33
    db $D3                                        ; $4AEE: $D3
    ld l, a                                       ; $4AEF: $6F
    rst RST_20                                    ; $4AF0: $E7
    ld e, a                                       ; $4AF1: $5F
    rst RST_38                                    ; $4AF2: $FF
    ld e, $FF                                     ; $4AF3: $1E $FF
    sbc $FF                                       ; $4AF5: $DE $FF
    db $EC                                        ; $4AF7: $EC
    cp a                                          ; $4AF8: $BF
    ld d, d                                       ; $4AF9: $52
    cp a                                          ; $4AFA: $BF
    ld e, h                                       ; $4AFB: $5C
    rst RST_38                                    ; $4AFC: $FF
    ld bc, $FBFC                                  ; $4AFD: $01 $FC $FB
    add b                                         ; $4B00: $80
    nop                                           ; $4B01: $00
    ldh [$FF80], a                                ; $4B02: $E0 $80
    ldh a, [$FFE0]                                ; $4B04: $F0 $E0
    ld hl, sp-$10                                 ; $4B06: $F8 $F0
    db $FC                                        ; $4B08: $FC
    ld hl, sp-$04                                 ; $4B09: $F8 $FC
    jr c, @+$01                                   ; $4B0B: $38 $FF

    cp b                                          ; $4B0D: $B8
    rst RST_38                                    ; $4B0E: $FF
    add a                                         ; $4B0F: $87
    cp b                                          ; $4B10: $B8
    ld e, a                                       ; $4B11: $5F
    ld h, b                                       ; $4B12: $60
    cp a                                          ; $4B13: $BF
    ld [hl], a                                    ; $4B14: $77
    cp a                                          ; $4B15: $BF
    jp $9D7F                                      ; $4B16: $C3 $7F $9D


    ld a, a                                       ; $4B19: $7F
    rrca                                          ; $4B1A: $0F
    rst RST_38                                    ; $4B1B: $FF
    ld a, a                                       ; $4B1C: $7F
    rst RST_38                                    ; $4B1D: $FF
    ccf                                           ; $4B1E: $3F
    db $FC                                        ; $4B1F: $FC
    ldh [c], a                                    ; $4B20: $E2
    pop bc                                        ; $4B21: $C1
    and $C1                                       ; $4B22: $E6 $C1
    jp c, Jump_000_2105                           ; $4B24: $DA $05 $21

    ld e, $62                                     ; $4B27: $1E $62
    dec e                                         ; $4B29: $1D
    cp a                                          ; $4B2A: $BF
    ld h, b                                       ; $4B2B: $60
    cp l                                          ; $4B2C: $BD
    ld a, e                                       ; $4B2D: $7B
    ld c, l                                       ; $4B2E: $4D
    dec sp                                        ; $4B2F: $3B
    ld a, $0D                                     ; $4B30: $3E $0D
    rrca                                          ; $4B32: $0F
    nop                                           ; $4B33: $00
    ld bc, $0000                                  ; $4B34: $01 $00 $00
    nop                                           ; $4B37: $00
    nop                                           ; $4B38: $00
    nop                                           ; $4B39: $00
    nop                                           ; $4B3A: $00
    nop                                           ; $4B3B: $00
    nop                                           ; $4B3C: $00
    nop                                           ; $4B3D: $00
    nop                                           ; $4B3E: $00
    nop                                           ; $4B3F: $00
    db $FC                                        ; $4B40: $FC
    inc bc                                        ; $4B41: $03
    ld hl, sp-$09                                 ; $4B42: $F8 $F7
    rst RST_30                                    ; $4B44: $F7
    adc a                                         ; $4B45: $8F
    cp a                                          ; $4B46: $BF

jr_01C_4B47:
    ld e, b                                       ; $4B47: $58
    inc a                                         ; $4B48: $3C
    ret nz                                        ; $4B49: $C0

    ld [$D0F0], sp                                ; $4B4A: $08 $F0 $D0
    jr nz, jr_01C_4B47                            ; $4B4D: $20 $F8

    ret nz                                        ; $4B4F: $C0

    db $FC                                        ; $4B50: $FC
    ld hl, sp-$04                                 ; $4B51: $F8 $FC
    ld hl, sp+$3E                                 ; $4B53: $F8 $3E
    db $FC                                        ; $4B55: $FC
    adc $3C                                       ; $4B56: $CE $3C
    ld [hl], $0C                                  ; $4B58: $36 $0C
    rla                                           ; $4B5A: $17
    ld c, $17                                     ; $4B5B: $0E $17
    rrca                                          ; $4B5D: $0F
    rra                                           ; $4B5E: $1F
    rrca                                          ; $4B5F: $0F
    ld a, a                                       ; $4B60: $7F
    ld hl, sp-$01                                 ; $4B61: $F8 $FF
    and $FE                                       ; $4B63: $E6 $FE
    inc e                                         ; $4B65: $1C
    ld a, $1C                                     ; $4B66: $3E $1C
    inc a                                         ; $4B68: $3C
    jr jr_01C_4BA7                                ; $4B69: $18 $3C

    jr jr_01C_4BA5                                ; $4B6B: $18 $38

    db $10                                        ; $4B6D: $10
    jr c, jr_01C_4B80                             ; $4B6E: $38 $10

    jr nc, jr_01C_4B72                            ; $4B70: $30 $00

jr_01C_4B72:
    nop                                           ; $4B72: $00
    nop                                           ; $4B73: $00
    nop                                           ; $4B74: $00
    nop                                           ; $4B75: $00
    nop                                           ; $4B76: $00
    nop                                           ; $4B77: $00
    nop                                           ; $4B78: $00
    nop                                           ; $4B79: $00
    nop                                           ; $4B7A: $00
    nop                                           ; $4B7B: $00
    add b                                         ; $4B7C: $80
    nop                                           ; $4B7D: $00
    add b                                         ; $4B7E: $80
    nop                                           ; $4B7F: $00

jr_01C_4B80:
    nop                                           ; $4B80: $00
    nop                                           ; $4B81: $00
    nop                                           ; $4B82: $00
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
    ret nz                                        ; $4B8E: $C0

    nop                                           ; $4B8F: $00
    ldh [$FFC0], a                                ; $4B90: $E0 $C0
    ldh a, [$FFE0]                                ; $4B92: $F0 $E0
    ld [hl], b                                    ; $4B94: $70
    ldh [rSVBK], a                                ; $4B95: $E0 $70
    ldh [$FFE0], a                                ; $4B97: $E0 $E0
    ret nz                                        ; $4B99: $C0

    ldh [$FFC0], a                                ; $4B9A: $E0 $C0
    ret nz                                        ; $4B9C: $C0

    add b                                         ; $4B9D: $80
    add b                                         ; $4B9E: $80
    nop                                           ; $4B9F: $00
    ld a, h                                       ; $4BA0: $7C
    ld [$6098], sp                                ; $4BA1: $08 $98 $60
    sub b                                         ; $4BA4: $90

jr_01C_4BA5:
    ld h, b                                       ; $4BA5: $60
    and b                                         ; $4BA6: $A0

jr_01C_4BA7:
    ld b, b                                       ; $4BA7: $40
    ret nz                                        ; $4BA8: $C0

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
    nop                                           ; $4BB3: $00
    nop                                           ; $4BB4: $00
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
    nop                                           ; $4BBF: $00
    ld [hl-], a                                   ; $4BC0: $32
    rra                                           ; $4BC1: $1F
    ld a, a                                       ; $4BC2: $7F
    ld de, $6EF3                                  ; $4BC3: $11 $F3 $6E
    or e                                          ; $4BC6: $B3
    ld a, [hl]                                    ; $4BC7: $7E
    and a                                         ; $4BC8: $A7
    ld a, c                                       ; $4BC9: $79
    adc [hl]                                      ; $4BCA: $8E
    ld a, c                                       ; $4BCB: $79
    ld c, d                                       ; $4BCC: $4A
    dec a                                         ; $4BCD: $3D
    db $DD                                        ; $4BCE: $DD
    ld a, e                                       ; $4BCF: $7B
    db $D3                                        ; $4BD0: $D3
    ld a, a                                       ; $4BD1: $7F
    bit 7, [hl]                                   ; $4BD2: $CB $7E
    adc a                                         ; $4BD4: $8F
    ld a, [hl]                                    ; $4BD5: $7E
    sbc a                                         ; $4BD6: $9F
    ld l, l                                       ; $4BD7: $6D
    rst RST_18                                    ; $4BD8: $DF
    ld l, l                                       ; $4BD9: $6D
    ld b, a                                       ; $4BDA: $47
    inc a                                         ; $4BDB: $3C
    inc a                                         ; $4BDC: $3C
    nop                                           ; $4BDD: $00
    nop                                           ; $4BDE: $00
    nop                                           ; $4BDF: $00
    rst RST_08                                    ; $4BE0: $CF
    add [hl]                                      ; $4BE1: $86
    rst RST_00                                    ; $4BE2: $C7
    add d                                         ; $4BE3: $82
    add a                                         ; $4BE4: $87
    ld [bc], a                                    ; $4BE5: $02
    add d                                         ; $4BE6: $82
    ld bc, $0304                                  ; $4BE7: $01 $04 $03
    inc b                                         ; $4BEA: $04
    inc bc                                        ; $4BEB: $03
    inc b                                         ; $4BEC: $04
    inc bc                                        ; $4BED: $03
    dec b                                         ; $4BEE: $05
    inc bc                                        ; $4BEF: $03
    dec b                                         ; $4BF0: $05
    inc bc                                        ; $4BF1: $03
    dec b                                         ; $4BF2: $05
    inc bc                                        ; $4BF3: $03
    rrca                                          ; $4BF4: $0F
    ld b, $1F                                     ; $4BF5: $06 $1F
    rrca                                          ; $4BF7: $0F
    rra                                           ; $4BF8: $1F
    dec c                                         ; $4BF9: $0D
    dec l                                         ; $4BFA: $2D
    ld [de], a                                    ; $4BFB: $12
    ld c, b                                       ; $4BFC: $48
    scf                                           ; $4BFD: $37
    ld [hl], a                                    ; $4BFE: $77
    nop                                           ; $4BFF: $00
    add a                                         ; $4C00: $87
    ld a, e                                       ; $4C01: $7B

jr_01C_4C02:
    add a                                         ; $4C02: $87
    ld a, b                                       ; $4C03: $78
    jp z, Jump_01C_7131                           ; $4C04: $CA $31 $71

    ret nz                                        ; $4C07: $C0

    ld [hl], c                                    ; $4C08: $71
    ldh [$FFF3], a                                ; $4C09: $E0 $F3
    pop hl                                        ; $4C0B: $E1
    di                                            ; $4C0C: $F3
    pop hl                                        ; $4C0D: $E1
    db $E3                                        ; $4C0E: $E3
    pop bc                                        ; $4C0F: $C1
    pop hl                                        ; $4C10: $E1
    ret nz                                        ; $4C11: $C0

    ret nz                                        ; $4C12: $C0

    add b                                         ; $4C13: $80
    add b                                         ; $4C14: $80
    nop                                           ; $4C15: $00
    add c                                         ; $4C16: $81
    nop                                           ; $4C17: $00
    add c                                         ; $4C18: $81
    nop                                           ; $4C19: $00
    add b                                         ; $4C1A: $80
    nop                                           ; $4C1B: $00
    add b                                         ; $4C1C: $80
    nop                                           ; $4C1D: $00
    nop                                           ; $4C1E: $00
    nop                                           ; $4C1F: $00
    sbc a                                         ; $4C20: $9F
    ld l, a                                       ; $4C21: $6F
    ld a, $DF                                     ; $4C22: $3E $DF
    ccf                                           ; $4C24: $3F
    rst RST_00                                    ; $4C25: $C7
    ld [hl], a                                    ; $4C26: $77
    cp e                                          ; $4C27: $BB
    rst RST_20                                    ; $4C28: $E7
    ld a, b                                       ; $4C29: $78
    db $E4                                        ; $4C2A: $E4
    ld hl, sp-$18                                 ; $4C2B: $F8 $E8
    ldh a, [$FFD0]                                ; $4C2D: $F0 $D0
    ldh [$FFD0], a                                ; $4C2F: $E0 $D0
    ldh [$FFD0], a                                ; $4C31: $E0 $D0
    ld h, b                                       ; $4C33: $60
    add sp, $70                                   ; $4C34: $E8 $70
    rst RST_38                                    ; $4C36: $FF
    ldh a, [$FFF2]                                ; $4C37: $F0 $F2
    db $ED                                        ; $4C39: $ED
    pop af                                        ; $4C3A: $F1
    ld l, [hl]                                    ; $4C3B: $6E
    ld a, a                                       ; $4C3C: $7F
    nop                                           ; $4C3D: $00
    nop                                           ; $4C3E: $00
    nop                                           ; $4C3F: $00
    jr nz, jr_01C_4C02                            ; $4C40: $20 $C0

    db $10                                        ; $4C42: $10
    ldh [$FFD8], a                                ; $4C43: $E0 $D8
    ldh a, [$FFC4]                                ; $4C45: $F0 $C4
    ld hl, sp-$0A                                 ; $4C47: $F8 $F6
    db $FC                                        ; $4C49: $FC
    ld sp, hl                                     ; $4C4A: $F9
    ld a, $3E                                     ; $4C4B: $3E $3E
    rrca                                          ; $4C4D: $0F
    rrca                                          ; $4C4E: $0F
    ld bc, $0001                                  ; $4C4F: $01 $01 $00
    nop                                           ; $4C52: $00
    nop                                           ; $4C53: $00
    nop                                           ; $4C54: $00
    nop                                           ; $4C55: $00
    nop                                           ; $4C56: $00
    nop                                           ; $4C57: $00
    add b                                         ; $4C58: $80
    nop                                           ; $4C59: $00
    ld b, b                                       ; $4C5A: $40
    add b                                         ; $4C5B: $80
    ret nz                                        ; $4C5C: $C0

    nop                                           ; $4C5D: $00
    nop                                           ; $4C5E: $00
    nop                                           ; $4C5F: $00
    add b                                         ; $4C60: $80
    nop                                           ; $4C61: $00
    ret nz                                        ; $4C62: $C0

    add b                                         ; $4C63: $80
    ret nz                                        ; $4C64: $C0

    nop                                           ; $4C65: $00
    nop                                           ; $4C66: $00
    nop                                           ; $4C67: $00
    nop                                           ; $4C68: $00
    nop                                           ; $4C69: $00
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
    nop                                           ; $4C76: $00
    nop                                           ; $4C77: $00
    nop                                           ; $4C78: $00
    nop                                           ; $4C79: $00
    nop                                           ; $4C7A: $00
    nop                                           ; $4C7B: $00
    nop                                           ; $4C7C: $00
    nop                                           ; $4C7D: $00
    nop                                           ; $4C7E: $00
    nop                                           ; $4C7F: $00
    nop                                           ; $4C80: $00
    nop                                           ; $4C81: $00
    nop                                           ; $4C82: $00
    nop                                           ; $4C83: $00
    nop                                           ; $4C84: $00
    nop                                           ; $4C85: $00
    ldh [rP1], a                                  ; $4C86: $E0 $00
    sub b                                         ; $4C88: $90
    ldh [$FFF0], a                                ; $4C89: $E0 $F0
    ldh [$FFF0], a                                ; $4C8B: $E0 $F0
    ld h, b                                       ; $4C8D: $60
    ldh [rLCDC], a                                ; $4C8E: $E0 $40
    ldh [rLCDC], a                                ; $4C90: $E0 $40
    ret nz                                        ; $4C92: $C0

    nop                                           ; $4C93: $00
    ldh a, [rP1]                                  ; $4C94: $F0 $00
    ld hl, sp-$10                                 ; $4C96: $F8 $F0
    sbc h                                         ; $4C98: $9C
    ld hl, sp-$7A                                 ; $4C99: $F8 $86
    db $FC                                        ; $4C9B: $FC
    xor $FC                                       ; $4C9C: $EE $FC
    jp Jump_01C_547E                              ; $4C9E: $C3 $7E $54


    xor b                                         ; $4CA1: $A8
    sub d                                         ; $4CA2: $92
    ld l, h                                       ; $4CA3: $6C
    ldh a, [c]                                    ; $4CA4: $F2
    sbc h                                         ; $4CA5: $9C
    db $E3                                        ; $4CA6: $E3
    inc a                                         ; $4CA7: $3C
    rst RST_38                                    ; $4CA8: $FF
    or c                                          ; $4CA9: $B1
    rst RST_38                                    ; $4CAA: $FF
    nop                                           ; $4CAB: $00
    xor e                                         ; $4CAC: $AB
    ld d, l                                       ; $4CAD: $55

jr_01C_4CAE:
    rst RST_38                                    ; $4CAE: $FF
    add e                                         ; $4CAF: $83
    ld a, [hl]                                    ; $4CB0: $7E
    rst RST_20                                    ; $4CB1: $E7
    halt                                          ; $4CB2: $76
    db $DB                                        ; $4CB3: $DB
    rst RST_30                                    ; $4CB4: $F7
    jr jr_01C_4CAE                                ; $4CB5: $18 $F7

    jp c, Jump_000_01FF                           ; $4CB7: $DA $FF $01

    rst RST_30                                    ; $4CBA: $F7
    cp $F7                                        ; $4CBB: $FE $F7
    jr c, jr_01C_4CF3                             ; $4CBD: $38 $34

    db $DB                                        ; $4CBF: $DB
    rst RST_38                                    ; $4CC0: $FF
    ld a, [$F8FF]                                 ; $4CC1: $FA $FF $F8
    ei                                            ; $4CC4: $FB
    db $FD                                        ; $4CC5: $FD
    ei                                            ; $4CC6: $FB
    inc c                                         ; $4CC7: $0C
    rra                                           ; $4CC8: $1F
    ldh [$FF1F], a                                ; $4CC9: $E0 $1F
    db $F4                                        ; $4CCB: $F4
    rst RST_38                                    ; $4CCC: $FF
    rst RST_30                                    ; $4CCD: $F7
    rst RST_38                                    ; $4CCE: $FF
    rst RST_30                                    ; $4CCF: $F7
    db $FD                                        ; $4CD0: $FD
    ld l, d                                       ; $4CD1: $6A
    db $FD                                        ; $4CD2: $FD
    ld a, [bc]                                    ; $4CD3: $0A
    rst RST_38                                    ; $4CD4: $FF
    ld [hl], b                                    ; $4CD5: $70
    rst RST_38                                    ; $4CD6: $FF
    ld sp, hl                                     ; $4CD7: $F9
    ld sp, hl                                     ; $4CD8: $F9
    ld [hl], b                                    ; $4CD9: $70
    ei                                            ; $4CDA: $FB
    ld [hl], c                                    ; $4CDB: $71
    ei                                            ; $4CDC: $FB
    ld [hl], b                                    ; $4CDD: $70
    ld a, d                                       ; $4CDE: $7A
    ld sp, $0103                                  ; $4CDF: $31 $03 $01
    rlca                                          ; $4CE2: $07
    inc bc                                        ; $4CE3: $03
    rlca                                          ; $4CE4: $07
    inc bc                                        ; $4CE5: $03
    rlca                                          ; $4CE6: $07
    nop                                           ; $4CE7: $00
    inc b                                         ; $4CE8: $04
    inc bc                                        ; $4CE9: $03
    ld a, [hl]                                    ; $4CEA: $7E
    inc bc                                        ; $4CEB: $03
    rst RST_08                                    ; $4CEC: $CF
    ld a, l                                       ; $4CED: $7D
    sub a                                         ; $4CEE: $97
    cp $FF                                        ; $4CEF: $FE $FF
    adc a                                         ; $4CF1: $8F
    sbc a                                         ; $4CF2: $9F

jr_01C_4CF3:
    ld [hl], e                                    ; $4CF3: $73
    sbc a                                         ; $4CF4: $9F
    push af                                       ; $4CF5: $F5
    ccf                                           ; $4CF6: $3F
    call z, $CA77                                 ; $4CF7: $CC $77 $CA
    ld d, a                                       ; $4CFA: $57
    ld [$DAEF], a                                 ; $4CFB: $EA $EF $DA
    sbc a                                         ; $4CFE: $9F
    ld a, [$0000]                                 ; $4CFF: $FA $00 $00
    nop                                           ; $4D02: $00
    nop                                           ; $4D03: $00
    nop                                           ; $4D04: $00
    nop                                           ; $4D05: $00
    nop                                           ; $4D06: $00
    nop                                           ; $4D07: $00
    nop                                           ; $4D08: $00
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
    ld b, $00                                     ; $4D16: $06 $00
    dec e                                         ; $4D18: $1D
    ld b, $3D                                     ; $4D19: $06 $3D
    ld e, $7D                                     ; $4D1B: $1E $7D
    ld a, $FF                                     ; $4D1D: $3E $FF
    ld a, [hl]                                    ; $4D1F: $7E
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
    nop                                           ; $4D38: $00
    nop                                           ; $4D39: $00
    db $FC                                        ; $4D3A: $FC
    nop                                           ; $4D3B: $00
    jp nz, $CD3C                                  ; $4D3C: $C2 $3C $CD

    or d                                          ; $4D3F: $B2
    nop                                           ; $4D40: $00
    nop                                           ; $4D41: $00
    nop                                           ; $4D42: $00
    nop                                           ; $4D43: $00
    nop                                           ; $4D44: $00
    nop                                           ; $4D45: $00
    nop                                           ; $4D46: $00
    nop                                           ; $4D47: $00
    rrca                                          ; $4D48: $0F
    nop                                           ; $4D49: $00
    add hl, de                                    ; $4D4A: $19
    rrca                                          ; $4D4B: $0F
    ld [hl-], a                                   ; $4D4C: $32
    rra                                           ; $4D4D: $1F
    ld a, a                                       ; $4D4E: $7F
    ld de, $6EF3                                  ; $4D4F: $11 $F3 $6E
    or e                                          ; $4D52: $B3
    ld a, [hl]                                    ; $4D53: $7E
    and a                                         ; $4D54: $A7
    ld a, c                                       ; $4D55: $79
    adc [hl]                                      ; $4D56: $8E
    ld a, c                                       ; $4D57: $79
    ld c, d                                       ; $4D58: $4A
    dec a                                         ; $4D59: $3D
    db $DD                                        ; $4D5A: $DD
    ld a, e                                       ; $4D5B: $7B
    db $D3                                        ; $4D5C: $D3
    ld a, a                                       ; $4D5D: $7F
    bit 7, [hl]                                   ; $4D5E: $CB $7E
    cp $7F                                        ; $4D60: $FE $7F
    rst RST_38                                    ; $4D62: $FF
    ld a, a                                       ; $4D63: $7F
    rst RST_38                                    ; $4D64: $FF
    ld bc, $7C83                                  ; $4D65: $01 $83 $7C
    jp $FF7E                                      ; $4D68: $C3 $7E $FF


    cp [hl]                                       ; $4D6B: $BE
    rst RST_38                                    ; $4D6C: $FF
    sbc $FF                                       ; $4D6D: $DE $FF
    db $ED                                        ; $4D6F: $ED
    rst RST_38                                    ; $4D70: $FF
    ld h, c                                       ; $4D71: $61
    rst RST_38                                    ; $4D72: $FF
    xor [hl]                                      ; $4D73: $AE
    rst RST_38                                    ; $4D74: $FF
    sbc b                                         ; $4D75: $98
    ld hl, sp+$47                                 ; $4D76: $F8 $47
    call c, $DF3B                                 ; $4D78: $DC $3B $DF
    inc a                                         ; $4D7B: $3C
    rst RST_28                                    ; $4D7C: $EF
    ld e, a                                       ; $4D7D: $5F
    rst RST_28                                    ; $4D7E: $EF
    sbc a                                         ; $4D7F: $9F
    ldh a, [c]                                    ; $4D80: $F2
    dec c                                         ; $4D81: $0D
    ld a, [hl]                                    ; $4D82: $7E
    or e                                          ; $4D83: $B3
    ld a, h                                       ; $4D84: $7C
    add a                                         ; $4D85: $87
    rst RST_38                                    ; $4D86: $FF
    ld d, $FF                                     ; $4D87: $16 $FF
    add b                                         ; $4D89: $80

jr_01C_4D8A:
    push af                                       ; $4D8A: $F5
    ld [$F0FF], a                                 ; $4D8B: $EA $FF $F0
    xor a                                         ; $4D8E: $AF
    ld e, h                                       ; $4D8F: $5C
    xor [hl]                                      ; $4D90: $AE
    ld e, e                                       ; $4D91: $5B
    cp $03                                        ; $4D92: $FE $03
    cp $7B                                        ; $4D94: $FE $7B
    ld a, [hl]                                    ; $4D96: $7E
    add e                                         ; $4D97: $83
    cpl                                           ; $4D98: $2F
    call c, $DF2F                                 ; $4D99: $DC $2F $DF
    xor a                                         ; $4D9C: $AF
    ld e, h                                       ; $4D9D: $5C
    xor h                                         ; $4D9E: $AC
    ld e, e                                       ; $4D9F: $5B
    ld b, b                                       ; $4DA0: $40
    add b                                         ; $4DA1: $80
    ld b, b                                       ; $4DA2: $40
    add b                                         ; $4DA3: $80
    ld a, h                                       ; $4DA4: $7C
    add b                                         ; $4DA5: $80
    ldh a, [c]                                    ; $4DA6: $F2
    inc a                                         ; $4DA7: $3C
    cp $1C                                        ; $4DA8: $FE $1C
    ld a, [hl]                                    ; $4DAA: $7E
    xor h                                         ; $4DAB: $AC
    db $FC                                        ; $4DAC: $FC
    ld l, b                                       ; $4DAD: $68
    call c, $D8E8                                 ; $4DAE: $DC $E8 $D8
    ld h, b                                       ; $4DB1: $60
    cp $00                                        ; $4DB2: $FE $00
    rst RST_38                                    ; $4DB4: $FF
    ld e, [hl]                                    ; $4DB5: $5E
    di                                            ; $4DB6: $F3
    ccf                                           ; $4DB7: $3F
    ldh a, [$FFBF]                                ; $4DB8: $F0 $BF
    db $FD                                        ; $4DBA: $FD
    cp a                                          ; $4DBB: $BF
    ld hl, sp+$3F                                 ; $4DBC: $F8 $3F
    ld a, a                                       ; $4DBE: $7F
    cp a                                          ; $4DBF: $BF
    add b                                         ; $4DC0: $80
    nop                                           ; $4DC1: $00
    ret nz                                        ; $4DC2: $C0

    add b                                         ; $4DC3: $80
    ret nz                                        ; $4DC4: $C0

    add b                                         ; $4DC5: $80
    ld h, b                                       ; $4DC6: $60
    ret nz                                        ; $4DC7: $C0

    jr nz, jr_01C_4D8A                            ; $4DC8: $20 $C0

    nop                                           ; $4DCA: $00
    nop                                           ; $4DCB: $00
    nop                                           ; $4DCC: $00
    nop                                           ; $4DCD: $00
    nop                                           ; $4DCE: $00
    nop                                           ; $4DCF: $00
    nop                                           ; $4DD0: $00
    nop                                           ; $4DD1: $00
    nop                                           ; $4DD2: $00
    nop                                           ; $4DD3: $00
    nop                                           ; $4DD4: $00
    nop                                           ; $4DD5: $00
    nop                                           ; $4DD6: $00
    nop                                           ; $4DD7: $00
    nop                                           ; $4DD8: $00
    nop                                           ; $4DD9: $00
    nop                                           ; $4DDA: $00
    nop                                           ; $4DDB: $00
    nop                                           ; $4DDC: $00
    nop                                           ; $4DDD: $00
    nop                                           ; $4DDE: $00
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
    ld b, $00                                     ; $4DF4: $06 $00
    dec e                                         ; $4DF6: $1D
    ld b, $3D                                     ; $4DF7: $06 $3D
    ld e, $7D                                     ; $4DF9: $1E $7D
    ld a, $FD                                     ; $4DFB: $3E $FD
    ld a, [hl]                                    ; $4DFD: $7E
    db $FD                                        ; $4DFE: $FD
    ld a, [hl]                                    ; $4DFF: $7E
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
    nop                                           ; $4E10: $00
    nop                                           ; $4E11: $00
    nop                                           ; $4E12: $00
    nop                                           ; $4E13: $00
    nop                                           ; $4E14: $00
    nop                                           ; $4E15: $00
    nop                                           ; $4E16: $00
    nop                                           ; $4E17: $00
    db $FC                                        ; $4E18: $FC
    nop                                           ; $4E19: $00
    jp nz, $CD3C                                  ; $4E1A: $C2 $3C $CD

    or d                                          ; $4E1D: $B2
    push de                                       ; $4E1E: $D5
    xor d                                         ; $4E1F: $AA
    adc a                                         ; $4E20: $8F
    ld a, [hl]                                    ; $4E21: $7E
    sbc a                                         ; $4E22: $9F
    ld l, l                                       ; $4E23: $6D
    rst RST_18                                    ; $4E24: $DF
    ld l, l                                       ; $4E25: $6D
    ld b, a                                       ; $4E26: $47
    inc a                                         ; $4E27: $3C
    dec a                                         ; $4E28: $3D
    nop                                           ; $4E29: $00
    ld [bc], a                                    ; $4E2A: $02
    ld bc, $0205                                  ; $4E2B: $01 $05 $02
    rlca                                          ; $4E2E: $07
    nop                                           ; $4E2F: $00
    nop                                           ; $4E30: $00
    nop                                           ; $4E31: $00
    nop                                           ; $4E32: $00
    nop                                           ; $4E33: $00
    nop                                           ; $4E34: $00
    nop                                           ; $4E35: $00
    nop                                           ; $4E36: $00
    nop                                           ; $4E37: $00
    nop                                           ; $4E38: $00
    nop                                           ; $4E39: $00
    nop                                           ; $4E3A: $00
    nop                                           ; $4E3B: $00
    nop                                           ; $4E3C: $00
    nop                                           ; $4E3D: $00
    nop                                           ; $4E3E: $00
    nop                                           ; $4E3F: $00
    rst RST_10                                    ; $4E40: $D7
    adc a                                         ; $4E41: $8F
    sub a                                         ; $4E42: $97
    ld c, $97                                     ; $4E43: $0E $97
    ld c, $2E                                     ; $4E45: $0E $2E
    inc e                                         ; $4E47: $1C
    rst RST_38                                    ; $4E48: $FF
    ld e, $9F                                     ; $4E49: $1E $9F
    ld l, [hl]                                    ; $4E4B: $6E
    ld e, $EC                                     ; $4E4C: $1E $EC
    db $FC                                        ; $4E4E: $FC
    nop                                           ; $4E4F: $00
    nop                                           ; $4E50: $00
    nop                                           ; $4E51: $00
    nop                                           ; $4E52: $00
    nop                                           ; $4E53: $00
    nop                                           ; $4E54: $00
    nop                                           ; $4E55: $00
    nop                                           ; $4E56: $00
    nop                                           ; $4E57: $00
    nop                                           ; $4E58: $00
    nop                                           ; $4E59: $00
    nop                                           ; $4E5A: $00
    nop                                           ; $4E5B: $00
    nop                                           ; $4E5C: $00
    nop                                           ; $4E5D: $00
    nop                                           ; $4E5E: $00
    nop                                           ; $4E5F: $00
    db $FC                                        ; $4E60: $FC
    dec de                                        ; $4E61: $1B
    inc e                                         ; $4E62: $1C
    inc bc                                        ; $4E63: $03
    ld [bc], a                                    ; $4E64: $02
    ld bc, $0102                                  ; $4E65: $01 $02 $01
    ld bc, $0100                                  ; $4E68: $01 $00 $01
    nop                                           ; $4E6B: $00
    ld bc, $0000                                  ; $4E6C: $01 $00 $00
    nop                                           ; $4E6F: $00
    nop                                           ; $4E70: $00
    nop                                           ; $4E71: $00
    nop                                           ; $4E72: $00
    nop                                           ; $4E73: $00
    nop                                           ; $4E74: $00
    nop                                           ; $4E75: $00
    nop                                           ; $4E76: $00
    nop                                           ; $4E77: $00
    nop                                           ; $4E78: $00
    nop                                           ; $4E79: $00
    nop                                           ; $4E7A: $00
    nop                                           ; $4E7B: $00
    nop                                           ; $4E7C: $00
    nop                                           ; $4E7D: $00
    nop                                           ; $4E7E: $00
    nop                                           ; $4E7F: $00
    ld a, $DF                                     ; $4E80: $3E $DF
    ccf                                           ; $4E82: $3F
    rst RST_00                                    ; $4E83: $C7
    rra                                           ; $4E84: $1F
    db $EB                                        ; $4E85: $EB
    rra                                           ; $4E86: $1F

jr_01C_4E87:
    add sp, $1E                                   ; $4E87: $E8 $1E
    add sp, -$02                                  ; $4E89: $E8 $FE
    jr jr_01C_4E87                                ; $4E8B: $18 $FA

    db $F4                                        ; $4E8D: $F4
    cp $00                                        ; $4E8E: $FE $00
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
    db $10                                        ; $4EA0: $10
    ldh [$FFD8], a                                ; $4EA1: $E0 $D8
    ldh a, [$FFC4]                                ; $4EA3: $F0 $C4
    ld hl, sp-$0A                                 ; $4EA5: $F8 $F6
    db $FC                                        ; $4EA7: $FC
    ld sp, hl                                     ; $4EA8: $F9
    ld a, $3E                                     ; $4EA9: $3E $3E
    rrca                                          ; $4EAB: $0F
    rrca                                          ; $4EAC: $0F
    ld bc, $0001                                  ; $4EAD: $01 $01 $00
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
    nop                                           ; $4EC0: $00
    nop                                           ; $4EC1: $00
    nop                                           ; $4EC2: $00
    nop                                           ; $4EC3: $00
    nop                                           ; $4EC4: $00
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
    add b                                         ; $4EDA: $80
    nop                                           ; $4EDB: $00
    ret nz                                        ; $4EDC: $C0

    add b                                         ; $4EDD: $80
    ret nz                                        ; $4EDE: $C0

    nop                                           ; $4EDF: $00
    adc a                                         ; $4EE0: $8F
    ld a, [hl]                                    ; $4EE1: $7E
    sbc a                                         ; $4EE2: $9F
    ld l, l                                       ; $4EE3: $6D
    rst RST_18                                    ; $4EE4: $DF
    ld l, l                                       ; $4EE5: $6D
    ld b, a                                       ; $4EE6: $47
    inc a                                         ; $4EE7: $3C
    inc a                                         ; $4EE8: $3C
    nop                                           ; $4EE9: $00
    nop                                           ; $4EEA: $00
    nop                                           ; $4EEB: $00
    nop                                           ; $4EEC: $00
    nop                                           ; $4EED: $00
    ld bc, $0100                                  ; $4EEE: $01 $00 $01
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
    rst RST_10                                    ; $4F00: $D7
    adc a                                         ; $4F01: $8F
    adc e                                         ; $4F02: $8B
    rlca                                          ; $4F03: $07
    adc e                                         ; $4F04: $8B
    rlca                                          ; $4F05: $07
    dec bc                                        ; $4F06: $0B
    rlca                                          ; $4F07: $07
    rla                                           ; $4F08: $17
    rrca                                          ; $4F09: $0F
    ccf                                           ; $4F0A: $3F
    rlca                                          ; $4F0B: $07
    rst RST_10                                    ; $4F0C: $D7
    dec hl                                        ; $4F0D: $2B
    daa                                           ; $4F0E: $27
    jp c, Jump_000_38C6                           ; $4F0F: $DA $C6 $38

    ld e, b                                       ; $4F12: $58
    jr nz, jr_01C_4F75                            ; $4F13: $20 $60

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
    db $FC                                        ; $4F20: $FC
    dec de                                        ; $4F21: $1B
    sbc h                                         ; $4F22: $9C
    inc bc                                        ; $4F23: $03
    add h                                         ; $4F24: $84
    inc bc                                        ; $4F25: $03
    jp nz, $C281                                  ; $4F26: $C2 $81 $C2

    add c                                         ; $4F29: $81
    pop bc                                        ; $4F2A: $C1
    add b                                         ; $4F2B: $80
    add c                                         ; $4F2C: $81
    nop                                           ; $4F2D: $00
    ld bc, $0100                                  ; $4F2E: $01 $00 $01
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

Call_01C_4F3B:
    nop                                           ; $4F3B: $00
    nop                                           ; $4F3C: $00
    nop                                           ; $4F3D: $00
    nop                                           ; $4F3E: $00
    nop                                           ; $4F3F: $00
    ld a, $DF                                     ; $4F40: $3E $DF
    ccf                                           ; $4F42: $3F
    rst RST_00                                    ; $4F43: $C7
    ccf                                           ; $4F44: $3F
    db $D3                                        ; $4F45: $D3
    ccf                                           ; $4F46: $3F
    ret c                                         ; $4F47: $D8

    inc a                                         ; $4F48: $3C

jr_01C_4F49:
    ret c                                         ; $4F49: $D8

    db $FC                                        ; $4F4A: $FC
    jr c, jr_01C_4F49                             ; $4F4B: $38 $FC

    ld [hl], b                                    ; $4F4D: $70
    ld [hl], h                                    ; $4F4E: $74
    adc b                                         ; $4F4F: $88
    inc h                                         ; $4F50: $24
    ret c                                         ; $4F51: $D8

    xor b                                         ; $4F52: $A8
    ld d, b                                       ; $4F53: $50
    ld d, b                                       ; $4F54: $50
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
    db $10                                        ; $4F60: $10
    ldh [$FFD8], a                                ; $4F61: $E0 $D8
    ldh a, [$FFC4]                                ; $4F63: $F0 $C4
    ld hl, sp-$0A                                 ; $4F65: $F8 $F6
    db $FC                                        ; $4F67: $FC
    ld sp, hl                                     ; $4F68: $F9
    ld a, $3E                                     ; $4F69: $3E $3E
    rrca                                          ; $4F6B: $0F
    rrca                                          ; $4F6C: $0F
    ld bc, $0001                                  ; $4F6D: $01 $01 $00
    nop                                           ; $4F70: $00
    nop                                           ; $4F71: $00
    nop                                           ; $4F72: $00
    nop                                           ; $4F73: $00
    nop                                           ; $4F74: $00

jr_01C_4F75:
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
    add b                                         ; $4F80: $80
    nop                                           ; $4F81: $00
    ret nz                                        ; $4F82: $C0

    add b                                         ; $4F83: $80
    ret nz                                        ; $4F84: $C0

    nop                                           ; $4F85: $00
    nop                                           ; $4F86: $00
    nop                                           ; $4F87: $00
    nop                                           ; $4F88: $00
    nop                                           ; $4F89: $00
    nop                                           ; $4F8A: $00
    nop                                           ; $4F8B: $00
    nop                                           ; $4F8C: $00
    nop                                           ; $4F8D: $00
    nop                                           ; $4F8E: $00
    nop                                           ; $4F8F: $00
    nop                                           ; $4F90: $00
    nop                                           ; $4F91: $00
    nop                                           ; $4F92: $00
    nop                                           ; $4F93: $00
    nop                                           ; $4F94: $00
    nop                                           ; $4F95: $00
    nop                                           ; $4F96: $00
    nop                                           ; $4F97: $00
    nop                                           ; $4F98: $00
    nop                                           ; $4F99: $00
    nop                                           ; $4F9A: $00
    nop                                           ; $4F9B: $00
    nop                                           ; $4F9C: $00
    nop                                           ; $4F9D: $00
    nop                                           ; $4F9E: $00
    nop                                           ; $4F9F: $00
    ld a, $19                                     ; $4FA0: $3E $19
    dec a                                         ; $4FA2: $3D
    inc de                                        ; $4FA3: $13
    ld l, a                                       ; $4FA4: $6F
    ld a, $5F                                     ; $4FA5: $3E $5F
    inc a                                         ; $4FA7: $3C
    db $DD                                        ; $4FA8: $DD
    ld a, [hl]                                    ; $4FA9: $7E
    cp a                                          ; $4FAA: $BF
    ld e, d                                       ; $4FAB: $5A
    ld a, c                                       ; $4FAC: $79
    ld [hl], $37                                  ; $4FAD: $36 $37
    ld bc, $0307                                  ; $4FAF: $01 $07 $03
    inc bc                                        ; $4FB2: $03
    nop                                           ; $4FB3: $00
    nop                                           ; $4FB4: $00
    nop                                           ; $4FB5: $00
    ld bc, $0200                                  ; $4FB6: $01 $00 $02
    ld bc, $0205                                  ; $4FB9: $01 $05 $02
    rlca                                          ; $4FBC: $07
    nop                                           ; $4FBD: $00
    nop                                           ; $4FBE: $00
    nop                                           ; $4FBF: $00
    push af                                       ; $4FC0: $F5
    xor e                                         ; $4FC1: $AB
    rst RST_20                                    ; $4FC2: $E7
    sbc e                                         ; $4FC3: $9B
    db $E3                                        ; $4FC4: $E3
    inc e                                         ; $4FC5: $1C
    ld [hl], c                                    ; $4FC6: $71
    xor $3E                                       ; $4FC7: $EE $3E
    ldh a, [$FFBF]                                ; $4FC9: $F0 $BF
    ld a, [hl]                                    ; $4FCB: $7E
    sbc a                                         ; $4FCC: $9F
    ld a, [hl]                                    ; $4FCD: $7E
    rst RST_28                                    ; $4FCE: $EF
    sbc [hl]                                      ; $4FCF: $9E
    xor $9C                                       ; $4FD0: $EE $9C
    xor [hl]                                      ; $4FD2: $AE
    inc e                                         ; $4FD3: $1C
    ld l, $1C                                     ; $4FD4: $2E $1C
    rst RST_38                                    ; $4FD6: $FF
    ld e, $9F                                     ; $4FD7: $1E $9F
    ld l, [hl]                                    ; $4FD9: $6E
    ld e, $EC                                     ; $4FDA: $1E $EC
    db $FC                                        ; $4FDC: $FC
    nop                                           ; $4FDD: $00
    nop                                           ; $4FDE: $00
    nop                                           ; $4FDF: $00
    adc b                                         ; $4FE0: $88
    ld [hl], b                                    ; $4FE1: $70
    add h                                         ; $4FE2: $84
    ld a, b                                       ; $4FE3: $78
    add l                                         ; $4FE4: $85
    ld a, b                                       ; $4FE5: $78
    ld e, [hl]                                    ; $4FE6: $5E
    ld hl, $1B3C                                  ; $4FE7: $21 $3C $1B
    jr c, jr_01C_5003                             ; $4FEA: $38 $17

    scf                                           ; $4FEC: $37
    rrca                                          ; $4FED: $0F
    rra                                           ; $4FEE: $1F
    nop                                           ; $4FEF: $00
    dec bc                                        ; $4FF0: $0B
    rlca                                          ; $4FF1: $07
    dec b                                         ; $4FF2: $05
    inc bc                                        ; $4FF3: $03
    inc bc                                        ; $4FF4: $03
    nop                                           ; $4FF5: $00
    inc bc                                        ; $4FF6: $03
    ld bc, $0103                                  ; $4FF7: $01 $03 $01
    inc bc                                        ; $4FFA: $03
    nop                                           ; $4FFB: $00
    ld [bc], a                                    ; $4FFC: $02
    ld bc, $0001                                  ; $4FFD: $01 $01 $00
    adc $3F                                       ; $5000: $CE $3F
    add a                                         ; $5002: $87

jr_01C_5003:
    ld a, a                                       ; $5003: $7F
    cp a                                          ; $5004: $BF
    rst RST_38                                    ; $5005: $FF
    rra                                           ; $5006: $1F
    cp $7E                                        ; $5007: $FE $7E
    ld hl, sp-$08                                 ; $5009: $F8 $F8
    ldh [$FFE0], a                                ; $500B: $E0 $E0
    nop                                           ; $500D: $00
    ret nz                                        ; $500E: $C0

    add b                                         ; $500F: $80
    ret nz                                        ; $5010: $C0

    add b                                         ; $5011: $80
    ret nz                                        ; $5012: $C0

    add b                                         ; $5013: $80
    ldh [$FFC0], a                                ; $5014: $E0 $C0
    ldh a, [$FFE0]                                ; $5016: $F0 $E0
    ldh a, [$FF60]                                ; $5018: $F0 $60
    ld l, b                                       ; $501A: $68
    sub b                                         ; $501B: $90
    inc h                                         ; $501C: $24
    ret c                                         ; $501D: $D8

    call c, RST_00                                ; $501E: $DC $00 $00
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
    ld bc, $0700                                  ; $5034: $01 $00 $07
    ld bc, $070B                                  ; $5037: $01 $0B $07
    rla                                           ; $503A: $17
    dec c                                         ; $503B: $0D
    rra                                           ; $503C: $1F
    add hl, bc                                    ; $503D: $09
    ld l, $19                                     ; $503E: $2E $19
    ld bc, $0300                                  ; $5040: $01 $00 $03
    nop                                           ; $5043: $00
    inc bc                                        ; $5044: $03
    nop                                           ; $5045: $00
    inc bc                                        ; $5046: $03
    nop                                           ; $5047: $00
    ld a, c                                       ; $5048: $79
    nop                                           ; $5049: $00
    add a                                         ; $504A: $87
    ld a, b                                       ; $504B: $78
    rst RST_18                                    ; $504C: $DF
    ld h, b                                       ; $504D: $60
    ld a, [$7F55]                                 ; $504E: $FA $55 $7F
    jr jr_01C_5082                                ; $5051: $18 $2F

    inc e                                         ; $5053: $1C
    db $ED                                        ; $5054: $ED
    dec de                                        ; $5055: $1B
    db $FD                                        ; $5056: $FD
    ld h, e                                       ; $5057: $63
    db $FD                                        ; $5058: $FD
    bit 7, a                                      ; $5059: $CB $7F
    ldh a, [$FF7D]                                ; $505B: $F0 $7D
    rst RST_30                                    ; $505D: $F7
    ld a, l                                       ; $505E: $7D
    jp Jump_000_36E9                              ; $505F: $C3 $E9 $36


    ld sp, hl                                     ; $5062: $F9
    add $F9                                       ; $5063: $C6 $F9
    ld d, $E2                                     ; $5065: $16 $E2
    cp l                                          ; $5067: $BD
    db $E3                                        ; $5068: $E3
    inc a                                         ; $5069: $3C
    cp $01                                        ; $506A: $FE $01
    cp $1D                                        ; $506C: $FE $1D
    cp a                                          ; $506E: $BF
    ld e, l                                       ; $506F: $5D
    rst RST_38                                    ; $5070: $FF
    dec a                                         ; $5071: $3D
    rst RST_10                                    ; $5072: $D7
    ld [$6AD7], a                                 ; $5073: $EA $D7 $6A
    rst RST_38                                    ; $5076: $FF
    nop                                           ; $5077: $00
    db $FD                                        ; $5078: $FD
    ld a, b                                       ; $5079: $78
    ld sp, hl                                     ; $507A: $F9
    nop                                           ; $507B: $00
    ld hl, sp-$10                                 ; $507C: $F8 $F0
    ld hl, sp-$80                                 ; $507E: $F8 $80
    ld [hl], b                                    ; $5080: $70
    ret nz                                        ; $5081: $C0

jr_01C_5082:
    ld a, b                                       ; $5082: $78
    ldh a, [$FF7C]                                ; $5083: $F0 $7C
    ld hl, sp-$02                                 ; $5085: $F8 $FE
    db $FC                                        ; $5087: $FC
    cp $04                                        ; $5088: $FE $04
    rlca                                          ; $508A: $07
    ld a, [$FA0F]                                 ; $508B: $FA $0F $FA
    rra                                           ; $508E: $1F
    ld a, [$F6FF]                                 ; $508F: $FA $FF $F6
    rst RST_30                                    ; $5092: $F7
    ld [$1CE3], a                                 ; $5093: $EA $E3 $1C
    rst RST_28                                    ; $5096: $EF
    db $D3                                        ; $5097: $D3
    db $FC                                        ; $5098: $FC
    rst RST_28                                    ; $5099: $EF
    ldh a, [$FFDF]                                ; $509A: $F0 $DF
    ei                                            ; $509C: $FB
    ld e, a                                       ; $509D: $5F
    pop hl                                        ; $509E: $E1
    ccf                                           ; $509F: $3F
    ldh [rP1], a                                  ; $50A0: $E0 $00
    ldh a, [$FFE0]                                ; $50A2: $F0 $E0
    ld a, b                                       ; $50A4: $78
    ldh a, [$FF38]                                ; $50A5: $F0 $38
    ldh a, [$FFB8]                                ; $50A7: $F0 $B8
    ldh a, [$FFF0]                                ; $50A9: $F0 $F0
    ldh [$FFF0], a                                ; $50AB: $E0 $F0
    ldh [$FFE0], a                                ; $50AD: $E0 $E0
    ret nz                                        ; $50AF: $C0

    ret nz                                        ; $50B0: $C0

    add b                                         ; $50B1: $80
    add b                                         ; $50B2: $80
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
    inc a                                         ; $50DA: $3C
    nop                                           ; $50DB: $00
    ld a, d                                       ; $50DC: $7A
    inc [hl]                                      ; $50DD: $34
    db $FD                                        ; $50DE: $FD
    ld h, d                                       ; $50DF: $62
    nop                                           ; $50E0: $00
    nop                                           ; $50E1: $00

jr_01C_50E2:
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
    nop                                           ; $50EE: $00
    nop                                           ; $50EF: $00
    nop                                           ; $50F0: $00
    nop                                           ; $50F1: $00
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
    ld h, b                                       ; $50FE: $60
    nop                                           ; $50FF: $00
    dec a                                         ; $5100: $3D
    inc bc                                        ; $5101: $03
    ld l, a                                       ; $5102: $6F
    ccf                                           ; $5103: $3F
    ld e, a                                       ; $5104: $5F
    jr c, jr_01C_50E2                             ; $5105: $38 $DB

    ld [hl], a                                    ; $5107: $77
    cp c                                          ; $5108: $B9
    ld d, a                                       ; $5109: $57
    ld a, l                                       ; $510A: $7D
    inc sp                                        ; $510B: $33
    dec [hl]                                      ; $510C: $35
    inc bc                                        ; $510D: $03
    inc bc                                        ; $510E: $03
    nop                                           ; $510F: $00
    inc bc                                        ; $5110: $03
    nop                                           ; $5111: $00
    ld bc, $0100                                  ; $5112: $01 $00 $01
    nop                                           ; $5115: $00
    rrca                                          ; $5116: $0F
    nop                                           ; $5117: $00
    inc d                                         ; $5118: $14
    dec bc                                        ; $5119: $0B
    jr z, jr_01C_5133                             ; $511A: $28 $17

    ccf                                           ; $511C: $3F
    nop                                           ; $511D: $00
    nop                                           ; $511E: $00
    nop                                           ; $511F: $00
    jp c, $BCB5                                   ; $5120: $DA $B5 $BC

    ld d, e                                       ; $5123: $53
    dec e                                         ; $5124: $1D
    rst RST_20                                    ; $5125: $E7
    sub b                                         ; $5126: $90
    ld l, a                                       ; $5127: $6F
    db $E3                                        ; $5128: $E3
    sbc a                                         ; $5129: $9F
    rst RST_00                                    ; $512A: $C7
    cp a                                          ; $512B: $BF
    cp a                                          ; $512C: $BF
    ld a, b                                       ; $512D: $78
    ld hl, sp-$40                                 ; $512E: $F8 $C0
    ldh a, [rNR41]                                ; $5130: $F0 $20
    ld [hl], b                                    ; $5132: $70

jr_01C_5133:
    ldh [rSVBK], a                                ; $5133: $E0 $70
    ldh [$FFF8], a                                ; $5135: $E0 $F8
    ldh a, [$FFF8]                                ; $5137: $F0 $F8
    ld [hl], b                                    ; $5139: $70
    ldh a, [$FF60]                                ; $513A: $F0 $60
    ldh [rP1], a                                  ; $513C: $E0 $00
    nop                                           ; $513E: $00
    nop                                           ; $513F: $00
    ld [hl], a                                    ; $5140: $77
    rst RST_38                                    ; $5141: $FF
    ccf                                           ; $5142: $3F
    cp $FF                                        ; $5143: $FE $FF
    db $FC                                        ; $5145: $FC
    cp $F0                                        ; $5146: $FE $F0
    rst RST_38                                    ; $5148: $FF
    call z, Call_000_3FDF                         ; $5149: $CC $DF $3F
    ld b, a                                       ; $514C: $47
    ccf                                           ; $514D: $3F
    daa                                           ; $514E: $27
    rra                                           ; $514F: $1F
    add hl, de                                    ; $5150: $19
    rlca                                          ; $5151: $07
    ld b, $01                                     ; $5152: $06 $01
    ld [bc], a                                    ; $5154: $02
    ld bc, $0102                                  ; $5155: $01 $02 $01
    rra                                           ; $5158: $1F
    ld bc, $1629                                  ; $5159: $01 $29 $16
    ld d, c                                       ; $515C: $51
    ld l, $7F                                     ; $515D: $2E $7F
    nop                                           ; $515F: $00
    ldh [rLCDC], a                                ; $5160: $E0 $40
    ret nz                                        ; $5162: $C0

    add b                                         ; $5163: $80
    add b                                         ; $5164: $80
    nop                                           ; $5165: $00
    nop                                           ; $5166: $00
    nop                                           ; $5167: $00
    nop                                           ; $5168: $00
    nop                                           ; $5169: $00
    add b                                         ; $516A: $80
    nop                                           ; $516B: $00
    ret nz                                        ; $516C: $C0

    add b                                         ; $516D: $80
    ret nz                                        ; $516E: $C0

    add b                                         ; $516F: $80
    ret nz                                        ; $5170: $C0

    add b                                         ; $5171: $80
    ldh [$FFC0], a                                ; $5172: $E0 $C0
    ldh [$FFC0], a                                ; $5174: $E0 $C0
    ldh a, [$FFE0]                                ; $5176: $F0 $E0
    ldh a, [$FFE0]                                ; $5178: $F0 $E0
    ldh [$FFC0], a                                ; $517A: $E0 $C0
    ret nz                                        ; $517C: $C0

    add b                                         ; $517D: $80
    add b                                         ; $517E: $80
    nop                                           ; $517F: $00
    rlca                                          ; $5180: $07
    nop                                           ; $5181: $00
    rlca                                          ; $5182: $07
    ld [bc], a                                    ; $5183: $02
    rlca                                          ; $5184: $07
    ld [bc], a                                    ; $5185: $02
    inc bc                                        ; $5186: $03
    nop                                           ; $5187: $00
    inc bc                                        ; $5188: $03
    ld bc, $0007                                  ; $5189: $01 $07 $00
    rlca                                          ; $518C: $07
    ld bc, $0001                                  ; $518D: $01 $01 $00
    inc bc                                        ; $5190: $03
    nop                                           ; $5191: $00
    rlca                                          ; $5192: $07
    ld bc, $051E                                  ; $5193: $01 $1E $05
    ld l, $1D                                     ; $5196: $2E $1D
    ld e, a                                       ; $5198: $5F
    dec [hl]                                      ; $5199: $35
    ld a, a                                       ; $519A: $7F
    ld h, $AB                                     ; $519B: $26 $AB
    ld d, [hl]                                    ; $519D: $56
    ei                                            ; $519E: $FB
    ld b, [hl]                                    ; $519F: $46
    inc b                                         ; $51A0: $04
    ld hl, sp+$04                                 ; $51A1: $F8 $04
    ld hl, sp-$0E                                 ; $51A3: $F8 $F2
    call c, Call_01C_5CB3                         ; $51A5: $DC $B3 $5C
    db $F4                                        ; $51A8: $F4
    db $DB                                        ; $51A9: $DB
    rst RST_28                                    ; $51AA: $EF
    scf                                           ; $51AB: $37
    rst RST_38                                    ; $51AC: $FF
    or a                                          ; $51AD: $B7
    rst RST_38                                    ; $51AE: $FF
    rlca                                          ; $51AF: $07
    rst RST_38                                    ; $51B0: $FF
    ld [hl], $AE                                  ; $51B1: $36 $AE
    ld d, c                                       ; $51B3: $51
    xor a                                         ; $51B4: $AF
    ld d, h                                       ; $51B5: $54
    rst RST_38                                    ; $51B6: $FF
    nop                                           ; $51B7: $00
    rst RST_38                                    ; $51B8: $FF
    ld a, l                                       ; $51B9: $7D
    cp $03                                        ; $51BA: $FE $03
    ld a, a                                       ; $51BC: $7F
    ei                                            ; $51BD: $FB
    ld a, h                                       ; $51BE: $7C
    rst RST_20                                    ; $51BF: $E7
    ld e, h                                       ; $51C0: $5C
    jr nc, jr_01C_5221                            ; $51C1: $30 $5E

    inc a                                         ; $51C3: $3C
    ld e, a                                       ; $51C4: $5F
    ld a, $FF                                     ; $51C5: $3E $FF
    rra                                           ; $51C7: $1F
    rst RST_38                                    ; $51C8: $FF
    rst RST_08                                    ; $51C9: $CF
    rst RST_38                                    ; $51CA: $FF
    add a                                         ; $51CB: $87
    rst RST_38                                    ; $51CC: $FF
    rlca                                          ; $51CD: $07
    rst RST_38                                    ; $51CE: $FF
    rlca                                          ; $51CF: $07
    ccf                                           ; $51D0: $3F
    rst RST_08                                    ; $51D1: $CF
    rra                                           ; $51D2: $1F
    rst RST_28                                    ; $51D3: $EF
    ld a, a                                       ; $51D4: $7F
    add e                                         ; $51D5: $83
    rst RST_38                                    ; $51D6: $FF
    ld a, l                                       ; $51D7: $7D
    adc a                                         ; $51D8: $8F
    cp $07                                        ; $51D9: $FE $07
    cp $77                                        ; $51DB: $FE $77
    cp $3F                                        ; $51DD: $FE $3F
    db $FD                                        ; $51DF: $FD
    nop                                           ; $51E0: $00
    nop                                           ; $51E1: $00
    nop                                           ; $51E2: $00
    nop                                           ; $51E3: $00
    nop                                           ; $51E4: $00
    nop                                           ; $51E5: $00
    add b                                         ; $51E6: $80
    nop                                           ; $51E7: $00
    add b                                         ; $51E8: $80
    nop                                           ; $51E9: $00
    ret nz                                        ; $51EA: $C0

    add b                                         ; $51EB: $80
    ret nz                                        ; $51EC: $C0

    add b                                         ; $51ED: $80
    ret nz                                        ; $51EE: $C0

    add b                                         ; $51EF: $80
    ret nz                                        ; $51F0: $C0

    add b                                         ; $51F1: $80
    ret nz                                        ; $51F2: $C0

    add b                                         ; $51F3: $80
    ret nz                                        ; $51F4: $C0

    add b                                         ; $51F5: $80
    ret nz                                        ; $51F6: $C0

    add b                                         ; $51F7: $80
    ret nz                                        ; $51F8: $C0

    add b                                         ; $51F9: $80
    ret nz                                        ; $51FA: $C0

    add b                                         ; $51FB: $80
    ret nz                                        ; $51FC: $C0

    add b                                         ; $51FD: $80
    add b                                         ; $51FE: $80
    nop                                           ; $51FF: $00
    nop                                           ; $5200: $00
    nop                                           ; $5201: $00
    nop                                           ; $5202: $00
    nop                                           ; $5203: $00
    nop                                           ; $5204: $00
    nop                                           ; $5205: $00
    nop                                           ; $5206: $00
    nop                                           ; $5207: $00
    nop                                           ; $5208: $00
    nop                                           ; $5209: $00
    nop                                           ; $520A: $00
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
    nop                                           ; $5218: $00
    nop                                           ; $5219: $00
    nop                                           ; $521A: $00
    nop                                           ; $521B: $00
    inc e                                         ; $521C: $1C
    nop                                           ; $521D: $00
    ldh [c], a                                    ; $521E: $E2
    inc e                                         ; $521F: $1C
    nop                                           ; $5220: $00

jr_01C_5221:
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
    nop                                           ; $5236: $00
    nop                                           ; $5237: $00
    nop                                           ; $5238: $00
    nop                                           ; $5239: $00
    nop                                           ; $523A: $00
    nop                                           ; $523B: $00
    nop                                           ; $523C: $00
    nop                                           ; $523D: $00
    inc c                                         ; $523E: $0C
    nop                                           ; $523F: $00
    ld bc, $0700                                  ; $5240: $01 $00 $07
    ld bc, $070B                                  ; $5243: $01 $0B $07
    rla                                           ; $5246: $17
    inc c                                         ; $5247: $0C
    dec e                                         ; $5248: $1D
    dec bc                                        ; $5249: $0B
    inc l                                         ; $524A: $2C
    dec de                                        ; $524B: $1B
    ld a, $19                                     ; $524C: $3E $19
    ld a, $11                                     ; $524E: $3E $11
    ld l, a                                       ; $5250: $6F
    ld a, $5F                                     ; $5251: $3E $5F
    inc a                                         ; $5253: $3C
    call c, $BF7F                                 ; $5254: $DC $7F $BF
    ld e, d                                       ; $5257: $5A
    ld a, a                                       ; $5258: $7F
    jr nc, @+$36                                  ; $5259: $30 $34

    dec bc                                        ; $525B: $0B
    jr z, jr_01C_5275                             ; $525C: $28 $17

    ccf                                           ; $525E: $3F
    nop                                           ; $525F: $00
    db $ED                                        ; $5260: $ED
    dec de                                        ; $5261: $1B
    db $FD                                        ; $5262: $FD
    ld e, e                                       ; $5263: $5B
    db $FD                                        ; $5264: $FD
    add e                                         ; $5265: $83
    adc l                                         ; $5266: $8D
    ld [hl], e                                    ; $5267: $73
    rst RST_00                                    ; $5268: $C7
    cp b                                          ; $5269: $B8
    ldh a, [c]                                    ; $526A: $F2
    call $F5FA                                    ; $526B: $CD $FA $F5
    ld a, d                                       ; $526E: $7A
    push af                                       ; $526F: $F5
    ld a, a                                       ; $5270: $7F
    pop af                                        ; $5271: $F1
    cp c                                          ; $5272: $B9
    ld [hl], b                                    ; $5273: $70
    or b                                          ; $5274: $B0

jr_01C_5275:
    ld h, b                                       ; $5275: $60
    ld [hl], b                                    ; $5276: $70
    ldh [$FFF8], a                                ; $5277: $E0 $F8
    ldh a, [$FFF8]                                ; $5279: $F0 $F8
    ld [hl], b                                    ; $527B: $70
    ldh a, [$FF60]                                ; $527C: $F0 $60
    ldh [rP1], a                                  ; $527E: $E0 $00
    rst RST_10                                    ; $5280: $D7
    ld l, d                                       ; $5281: $6A
    rst RST_38                                    ; $5282: $FF
    ld a, [hl]                                    ; $5283: $7E
    rst RST_38                                    ; $5284: $FF
    nop                                           ; $5285: $00
    db $FC                                        ; $5286: $FC
    ld a, b                                       ; $5287: $78
    ld hl, sp+$00                                 ; $5288: $F8 $00
    db $FC                                        ; $528A: $FC
    ld hl, sp-$04                                 ; $528B: $F8 $FC
    ret nz                                        ; $528D: $C0

    call nz, $C3B8                                ; $528E: $C4 $B8 $C3
    cp h                                          ; $5291: $BC
    jp nz, $243D                                  ; $5292: $C2 $3D $24

    dec de                                        ; $5295: $1B
    jr z, jr_01C_52AF                             ; $5296: $28 $17

    rla                                           ; $5298: $17
    rrca                                          ; $5299: $0F
    rra                                           ; $529A: $1F
    nop                                           ; $529B: $00
    rra                                           ; $529C: $1F
    rrca                                          ; $529D: $0F
    rrca                                          ; $529E: $0F
    nop                                           ; $529F: $00
    db $E3                                        ; $52A0: $E3
    inc e                                         ; $52A1: $1C
    rst RST_28                                    ; $52A2: $EF
    db $D3                                        ; $52A3: $D3
    db $FC                                        ; $52A4: $FC
    rst RST_28                                    ; $52A5: $EF
    ldh a, [$FF5F]                                ; $52A6: $F0 $5F
    ei                                            ; $52A8: $FB
    ld e, a                                       ; $52A9: $5F
    ld h, c                                       ; $52AA: $61
    ccf                                           ; $52AB: $3F
    ld c, [hl]                                    ; $52AC: $4E
    ccf                                           ; $52AD: $3F
    add a                                         ; $52AE: $87

jr_01C_52AF:
    ld a, a                                       ; $52AF: $7F
    cp a                                          ; $52B0: $BF
    rst RST_38                                    ; $52B1: $FF
    rra                                           ; $52B2: $1F
    cp $7E                                        ; $52B3: $FE $7E
    ld hl, sp-$08                                 ; $52B5: $F8 $F8
    ldh [$FFF0], a                                ; $52B7: $E0 $F0
    nop                                           ; $52B9: $00
    ret nc                                        ; $52BA: $D0

    and b                                         ; $52BB: $A0
    sub b                                         ; $52BC: $90
    ld h, b                                       ; $52BD: $60
    ldh a, [rP1]                                  ; $52BE: $F0 $00
    nop                                           ; $52C0: $00
    nop                                           ; $52C1: $00
    nop                                           ; $52C2: $00
    nop                                           ; $52C3: $00
    nop                                           ; $52C4: $00
    nop                                           ; $52C5: $00
    nop                                           ; $52C6: $00
    nop                                           ; $52C7: $00

jr_01C_52C8:
    nop                                           ; $52C8: $00
    nop                                           ; $52C9: $00
    ld bc, $0100                                  ; $52CA: $01 $00 $01
    nop                                           ; $52CD: $00
    inc bc                                        ; $52CE: $03
    nop                                           ; $52CF: $00
    inc bc                                        ; $52D0: $03
    nop                                           ; $52D1: $00
    inc bc                                        ; $52D2: $03
    nop                                           ; $52D3: $00
    ld a, e                                       ; $52D4: $7B
    nop                                           ; $52D5: $00
    add a                                         ; $52D6: $87
    ld a, b                                       ; $52D7: $78
    rst RST_18                                    ; $52D8: $DF
    ld h, b                                       ; $52D9: $60
    ld a, [$7F55]                                 ; $52DA: $FA $55 $7F
    jr @+$31                                      ; $52DD: $18 $2F

    inc e                                         ; $52DF: $1C
    nop                                           ; $52E0: $00
    nop                                           ; $52E1: $00
    nop                                           ; $52E2: $00
    nop                                           ; $52E3: $00
    nop                                           ; $52E4: $00
    nop                                           ; $52E5: $00
    ld a, b                                       ; $52E6: $78
    nop                                           ; $52E7: $00
    push af                                       ; $52E8: $F5
    ld l, b                                       ; $52E9: $68
    ei                                            ; $52EA: $FB
    call nz, Call_000_36E9                        ; $52EB: $C4 $E9 $36
    ld sp, hl                                     ; $52EE: $F9
    add $F9                                       ; $52EF: $C6 $F9
    ld d, $E2                                     ; $52F1: $16 $E2
    cp l                                          ; $52F3: $BD
    db $E3                                        ; $52F4: $E3
    inc a                                         ; $52F5: $3C
    cp $01                                        ; $52F6: $FE $01
    cp $1D                                        ; $52F8: $FE $1D
    cp a                                          ; $52FA: $BF
    ld e, l                                       ; $52FB: $5D
    rst RST_38                                    ; $52FC: $FF
    dec a                                         ; $52FD: $3D
    rst RST_10                                    ; $52FE: $D7
    ld [$0000], a                                 ; $52FF: $EA $00 $00
    nop                                           ; $5302: $00
    nop                                           ; $5303: $00
    nop                                           ; $5304: $00
    nop                                           ; $5305: $00
    nop                                           ; $5306: $00
    nop                                           ; $5307: $00
    ret nz                                        ; $5308: $C0

    nop                                           ; $5309: $00
    ld [hl], b                                    ; $530A: $70
    ret nz                                        ; $530B: $C0

    ld a, b                                       ; $530C: $78
    ldh a, [$FF7C]                                ; $530D: $F0 $7C
    ld hl, sp+$7E                                 ; $530F: $F8 $7E
    db $FC                                        ; $5311: $FC
    cp $FC                                        ; $5312: $FE $FC
    rst RST_38                                    ; $5314: $FF
    ld b, $07                                     ; $5315: $06 $07
    ld a, [$FA0F]                                 ; $5317: $FA $0F $FA
    rra                                           ; $531A: $1F
    ld a, [$F6FF]                                 ; $531B: $FA $FF $F6
    rst RST_30                                    ; $531E: $F7
    ld [$0000], a                                 ; $531F: $EA $00 $00
    nop                                           ; $5322: $00
    nop                                           ; $5323: $00
    nop                                           ; $5324: $00
    nop                                           ; $5325: $00
    nop                                           ; $5326: $00
    nop                                           ; $5327: $00
    nop                                           ; $5328: $00
    nop                                           ; $5329: $00
    nop                                           ; $532A: $00
    nop                                           ; $532B: $00
    ldh [rP1], a                                  ; $532C: $E0 $00
    ldh a, [$FFE0]                                ; $532E: $F0 $E0
    ld a, b                                       ; $5330: $78
    ldh a, [$FF38]                                ; $5331: $F0 $38
    ldh a, [$FFB8]                                ; $5333: $F0 $B8
    ldh a, [$FFF0]                                ; $5335: $F0 $F0
    ldh [$FFF0], a                                ; $5337: $E0 $F0
    ldh [$FFE0], a                                ; $5339: $E0 $E0
    ret nz                                        ; $533B: $C0

    ret nz                                        ; $533C: $C0

    add b                                         ; $533D: $80
    add b                                         ; $533E: $80
    nop                                           ; $533F: $00
    jr nc, jr_01C_5342                            ; $5340: $30 $00

jr_01C_5342:
    ld c, h                                       ; $5342: $4C
    jr nc, jr_01C_52C8                            ; $5343: $30 $83

    ld a, h                                       ; $5345: $7C
    halt                                          ; $5346: $76
    add hl, bc                                    ; $5347: $09
    rra                                           ; $5348: $1F
    rlca                                          ; $5349: $07
    rrca                                          ; $534A: $0F
    rlca                                          ; $534B: $07
    rlca                                          ; $534C: $07
    inc bc                                        ; $534D: $03
    rlca                                          ; $534E: $07
    nop                                           ; $534F: $00
    dec bc                                        ; $5350: $0B
    dec b                                         ; $5351: $05
    ld de, $2F0E                                  ; $5352: $11 $0E $2F
    db $10                                        ; $5355: $10
    jr nc, jr_01C_5358                            ; $5356: $30 $00

jr_01C_5358:
    nop                                           ; $5358: $00
    nop                                           ; $5359: $00
    nop                                           ; $535A: $00
    nop                                           ; $535B: $00
    nop                                           ; $535C: $00
    nop                                           ; $535D: $00
    nop                                           ; $535E: $00
    nop                                           ; $535F: $00
    add hl, bc                                    ; $5360: $09
    ld b, $37                                     ; $5361: $06 $37
    dec c                                         ; $5363: $0D
    rst RST_08                                    ; $5364: $CF
    dec a                                         ; $5365: $3D
    ccf                                           ; $5366: $3F
    cp $FF                                        ; $5367: $FE $FF
    cp $FF                                        ; $5369: $FE $FF
    add $CF                                       ; $536B: $C6 $CF
    jr c, @+$01                                   ; $536D: $38 $FF

    cp $FE                                        ; $536F: $FE $FE
    ldh [$FFF0], a                                ; $5371: $E0 $F0
    ldh [$FFE0], a                                ; $5373: $E0 $E0
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
    or e                                          ; $5380: $B3
    call $E59B                                    ; $5381: $CD $9B $E5
    adc a                                         ; $5384: $8F
    pop af                                        ; $5385: $F1
    rst RST_08                                    ; $5386: $CF
    ld a, d                                       ; $5387: $7A
    db $E3                                        ; $5388: $E3
    ld a, h                                       ; $5389: $7C
    jp hl                                         ; $538A: $E9


    ld a, a                                       ; $538B: $7F
    ld a, b                                       ; $538C: $78
    ccf                                           ; $538D: $3F
    ld a, d                                       ; $538E: $7A
    ccf                                           ; $538F: $3F
    ld a, $1F                                     ; $5390: $3E $1F
    ld a, $1F                                     ; $5392: $3E $1F
    dec e                                         ; $5394: $1D
    rrca                                          ; $5395: $0F
    rra                                           ; $5396: $1F
    rrca                                          ; $5397: $0F
    rrca                                          ; $5398: $0F
    rlca                                          ; $5399: $07
    rlca                                          ; $539A: $07
    inc bc                                        ; $539B: $03
    inc bc                                        ; $539C: $03
    nop                                           ; $539D: $00
    nop                                           ; $539E: $00
    nop                                           ; $539F: $00
    rst RST_20                                    ; $53A0: $E7
    ld e, [hl]                                    ; $53A1: $5E
    rst RST_38                                    ; $53A2: $FF
    ld b, b                                       ; $53A3: $40
    rst RST_38                                    ; $53A4: $FF
    ld d, a                                       ; $53A5: $57
    rst RST_38                                    ; $53A6: $FF
    ld d, a                                       ; $53A7: $57
    rst RST_38                                    ; $53A8: $FF
    add a                                         ; $53A9: $87
    rst RST_20                                    ; $53AA: $E7
    dec de                                        ; $53AB: $1B
    db $E3                                        ; $53AC: $E3
    call c, $E8B7                                 ; $53AD: $DC $B7 $E8
    ccf                                           ; $53B0: $3F
    ldh [$FF9F], a                                ; $53B1: $E0 $9F
    db $F4                                        ; $53B3: $F4
    sbc a                                         ; $53B4: $9F
    rst RST_30                                    ; $53B5: $F7
    sbc a                                         ; $53B6: $9F
    rst RST_30                                    ; $53B7: $F7
    ccf                                           ; $53B8: $3F
    rst RST_30                                    ; $53B9: $F7
    rst RST_38                                    ; $53BA: $FF
    ldh a, [$FFF0]                                ; $53BB: $F0 $F0
    ldh [$FFE0], a                                ; $53BD: $E0 $E0
    nop                                           ; $53BF: $00
    sbc e                                         ; $53C0: $9B
    ld [hl], h                                    ; $53C1: $74
    sbc [hl]                                      ; $53C2: $9E
    ld h, c                                       ; $53C3: $61
    ld b, c                                       ; $53C4: $41
    cp [hl]                                       ; $53C5: $BE
    ld [hl+], a                                   ; $53C6: $22
    call c, $C0BC                                 ; $53C7: $DC $BC $C0
    cp h                                          ; $53CA: $BC
    ret nz                                        ; $53CB: $C0

    ldh [c], a                                    ; $53CC: $E2

jr_01C_53CD:
    call c, Call_01C_5CFE                         ; $53CD: $DC $FE $5C
    db $FC                                        ; $53D0: $FC
    jr @-$02                                      ; $53D1: $18 $FC

    jr c, jr_01C_53CD                             ; $53D3: $38 $F8

    ldh a, [$FFF0]                                ; $53D5: $F0 $F0
    ldh [$FFE0], a                                ; $53D7: $E0 $E0
    add b                                         ; $53D9: $80
    add b                                         ; $53DA: $80
    nop                                           ; $53DB: $00
    nop                                           ; $53DC: $00
    nop                                           ; $53DD: $00
    nop                                           ; $53DE: $00
    nop                                           ; $53DF: $00
    nop                                           ; $53E0: $00
    nop                                           ; $53E1: $00
    inc c                                         ; $53E2: $0C
    nop                                           ; $53E3: $00
    rla                                           ; $53E4: $17

jr_01C_53E5:
    inc c                                         ; $53E5: $0C
    add hl, sp                                    ; $53E6: $39

jr_01C_53E7:
    rla                                           ; $53E7: $17
    ld a, $1F                                     ; $53E8: $3E $1F
    rra                                           ; $53EA: $1F
    rrca                                          ; $53EB: $0F
    ld l, a                                       ; $53EC: $6F
    rla                                           ; $53ED: $17
    db $EB                                        ; $53EE: $EB
    ld e, l                                       ; $53EF: $5D
    ei                                            ; $53F0: $FB
    ld h, [hl]                                    ; $53F1: $66
    cp $79                                        ; $53F2: $FE $79
    ld a, a                                       ; $53F4: $7F
    ld e, $7F                                     ; $53F5: $1E $7F
    rlca                                          ; $53F7: $07
    sbc a                                         ; $53F8: $9F
    ld [hl], b                                    ; $53F9: $70
    add hl, sp                                    ; $53FA: $39
    sub $F8                                       ; $53FB: $D6 $F8
    and a                                         ; $53FD: $A7
    db $EC                                        ; $53FE: $EC
    or e                                          ; $53FF: $B3
    nop                                           ; $5400: $00
    nop                                           ; $5401: $00
    nop                                           ; $5402: $00
    nop                                           ; $5403: $00
    nop                                           ; $5404: $00
    nop                                           ; $5405: $00
    ldh [rP1], a                                  ; $5406: $E0 $00
    ret c                                         ; $5408: $D8

    ld h, b                                       ; $5409: $60
    db $F4                                        ; $540A: $F4
    jr jr_01C_53E7                                ; $540B: $18 $DA

    inc l                                         ; $540D: $2C
    ld a, [hl]                                    ; $540E: $7E
    add h                                         ; $540F: $84
    sbc a                                         ; $5410: $9F
    cp $C7                                        ; $5411: $FE $C7
    cp $FF                                        ; $5413: $FE $FF
    ld sp, $0EF1                                  ; $5415: $31 $F1 $0E
    rra                                           ; $5418: $1F
    xor $FF                                       ; $5419: $EE $FF
    ld h, c                                       ; $541B: $61
    ld a, h                                       ; $541C: $7C
    xor e                                         ; $541D: $AB
    ld a, a                                       ; $541E: $7F
    xor b                                         ; $541F: $A8
    nop                                           ; $5420: $00

jr_01C_5421:
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
    ld h, b                                       ; $5430: $60
    nop                                           ; $5431: $00
    ret nc                                        ; $5432: $D0

    ld h, b                                       ; $5433: $60
    ret z                                         ; $5434: $C8

    jr nc, jr_01C_53E5                            ; $5435: $30 $AE

    ld d, b                                       ; $5437: $50
    rst RST_38                                    ; $5438: $FF
    nop                                           ; $5439: $00
    cp a                                          ; $543A: $BF
    ld b, l                                       ; $543B: $45
    rst RST_38                                    ; $543C: $FF
    add c                                         ; $543D: $81
    rst RST_18                                    ; $543E: $DF
    xor h                                         ; $543F: $AC
    nop                                           ; $5440: $00
    nop                                           ; $5441: $00
    nop                                           ; $5442: $00
    nop                                           ; $5443: $00
    nop                                           ; $5444: $00
    nop                                           ; $5445: $00
    nop                                           ; $5446: $00
    nop                                           ; $5447: $00
    nop                                           ; $5448: $00
    nop                                           ; $5449: $00
    nop                                           ; $544A: $00
    nop                                           ; $544B: $00
    nop                                           ; $544C: $00
    nop                                           ; $544D: $00
    nop                                           ; $544E: $00
    nop                                           ; $544F: $00
    nop                                           ; $5450: $00
    nop                                           ; $5451: $00
    nop                                           ; $5452: $00
    nop                                           ; $5453: $00
    ret nz                                        ; $5454: $C0

    nop                                           ; $5455: $00
    ldh [rLCDC], a                                ; $5456: $E0 $40
    ldh a, [$FF60]                                ; $5458: $F0 $60
    ldh a, [$FFA0]                                ; $545A: $F0 $A0
    ld [hl], b                                    ; $545C: $70
    add b                                         ; $545D: $80
    ret nc                                        ; $545E: $D0

    jr nz, jr_01C_5421                            ; $545F: $20 $C0

    nop                                           ; $5461: $00
    and b                                         ; $5462: $A0
    ld b, b                                       ; $5463: $40
    sbc c                                         ; $5464: $99
    ld h, b                                       ; $5465: $60
    sub a                                         ; $5466: $97
    ld l, b                                       ; $5467: $68
    ld e, h                                       ; $5468: $5C
    cpl                                           ; $5469: $2F
    ccf                                           ; $546A: $3F
    rra                                           ; $546B: $1F
    rra                                           ; $546C: $1F
    ld c, $0E                                     ; $546D: $0E $0E
    nop                                           ; $546F: $00
    nop                                           ; $5470: $00
    nop                                           ; $5471: $00
    nop                                           ; $5472: $00
    nop                                           ; $5473: $00
    nop                                           ; $5474: $00
    nop                                           ; $5475: $00
    nop                                           ; $5476: $00
    nop                                           ; $5477: $00
    inc bc                                        ; $5478: $03
    nop                                           ; $5479: $00
    rlca                                          ; $547A: $07
    inc bc                                        ; $547B: $03
    inc bc                                        ; $547C: $03
    nop                                           ; $547D: $00

Jump_01C_547E:
    nop                                           ; $547E: $00
    nop                                           ; $547F: $00
    ld h, e                                       ; $5480: $63
    sbc a                                         ; $5481: $9F
    adc a                                         ; $5482: $8F
    ld a, [hl]                                    ; $5483: $7E
    ld a, a                                       ; $5484: $7F
    cp $FE                                        ; $5485: $FE $FE
    db $FD                                        ; $5487: $FD
    rst RST_38                                    ; $5488: $FF
    jr c, jr_01C_54C6                             ; $5489: $38 $3B

    nop                                           ; $548B: $00
    inc bc                                        ; $548C: $03
    ld bc, $0001                                  ; $548D: $01 $01 $00
    nop                                           ; $5490: $00
    nop                                           ; $5491: $00
    rrca                                          ; $5492: $0F
    nop                                           ; $5493: $00
    ld hl, sp+$0F                                 ; $5494: $F8 $0F
    ld [bc], a                                    ; $5496: $02
    rst RST_38                                    ; $5497: $FF
    or $FF                                        ; $5498: $F6 $FF
    rst RST_38                                    ; $549A: $FF
    rrca                                          ; $549B: $0F
    rrca                                          ; $549C: $0F
    nop                                           ; $549D: $00
    nop                                           ; $549E: $00
    nop                                           ; $549F: $00
    adc a                                         ; $54A0: $8F
    ld [hl], l                                    ; $54A1: $75
    rrca                                          ; $54A2: $0F
    push af                                       ; $54A3: $F5
    rrca                                          ; $54A4: $0F
    push af                                       ; $54A5: $F5
    dec e                                         ; $54A6: $1D
    ldh [$FFE7], a                                ; $54A7: $E0 $E7
    nop                                           ; $54A9: $00
    rst RST_38                                    ; $54AA: $FF
    rlca                                          ; $54AB: $07
    rst RST_38                                    ; $54AC: $FF
    db $FC                                        ; $54AD: $FC
    rst RST_38                                    ; $54AE: $FF
    ld [hl], e                                    ; $54AF: $73
    push af                                       ; $54B0: $F5
    rrca                                          ; $54B1: $0F
    add b                                         ; $54B2: $80
    rst RST_38                                    ; $54B3: $FF
    ld bc, $D1FF                                  ; $54B4: $01 $FF $D1
    rst RST_38                                    ; $54B7: $FF
    reti                                          ; $54B8: $D9


    rst RST_38                                    ; $54B9: $FF
    db $DB                                        ; $54BA: $DB
    rst RST_38                                    ; $54BB: $FF
    rst RST_38                                    ; $54BC: $FF
    rst RST_38                                    ; $54BD: $FF
    rst RST_38                                    ; $54BE: $FF
    nop                                           ; $54BF: $00
    rst RST_38                                    ; $54C0: $FF
    dec de                                        ; $54C1: $1B
    sbc [hl]                                      ; $54C2: $9E
    ld a, e                                       ; $54C3: $7B
    cp $1D                                        ; $54C4: $FE $1D

jr_01C_54C6:
    cp $7D                                        ; $54C6: $FE $7D
    rst RST_38                                    ; $54C8: $FF
    ld [hl], b                                    ; $54C9: $70
    cp $AF                                        ; $54CA: $FE $AF
    cp $CF                                        ; $54CC: $FE $CF
    rst RST_38                                    ; $54CE: $FF
    ld l, a                                       ; $54CF: $6F
    ld l, a                                       ; $54D0: $6F
    sub a                                         ; $54D1: $97
    daa                                           ; $54D2: $27
    db $DB                                        ; $54D3: $DB
    cpl                                           ; $54D4: $2F
    pop de                                        ; $54D5: $D1
    cp a                                          ; $54D6: $BF
    adc $AF                                       ; $54D7: $CE $AF
    ret nz                                        ; $54D9: $C0

    ldh [$FFC0], a                                ; $54DA: $E0 $C0
    ret nz                                        ; $54DC: $C0

    nop                                           ; $54DD: $00
    nop                                           ; $54DE: $00
    nop                                           ; $54DF: $00
    db $E4                                        ; $54E0: $E4
    jr @-$1A                                      ; $54E1: $18 $E4

    ld hl, sp+$08                                 ; $54E3: $F8 $08
    ldh a, [$FF30]                                ; $54E5: $F0 $30
    ret nz                                        ; $54E7: $C0

    call c, $E220                                 ; $54E8: $DC $20 $E2
    ld a, h                                       ; $54EB: $7C
    cp $7C                                        ; $54EC: $FE $7C
    ld a, h                                       ; $54EE: $7C
    cp b                                          ; $54EF: $B8
    ld a, h                                       ; $54F0: $7C
    cp b                                          ; $54F1: $B8
    cp b                                          ; $54F2: $B8
    ret nc                                        ; $54F3: $D0

    or b                                          ; $54F4: $B0
    ret nz                                        ; $54F5: $C0

    ldh [rP1], a                                  ; $54F6: $E0 $00
    add b                                         ; $54F8: $80
    nop                                           ; $54F9: $00
    nop                                           ; $54FA: $00
    nop                                           ; $54FB: $00
    nop                                           ; $54FC: $00
    nop                                           ; $54FD: $00
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
    jr nc, jr_01C_550E                            ; $550C: $30 $00

jr_01C_550E:
    jr c, jr_01C_5520                             ; $550E: $38 $10

    ld e, a                                       ; $5510: $5F
    jr c, jr_01C_556F                             ; $5511: $38 $5C

    dec sp                                        ; $5513: $3B
    ld e, h                                       ; $5514: $5C
    dec sp                                        ; $5515: $3B
    ld e, h                                       ; $5516: $5C
    dec sp                                        ; $5517: $3B
    cp [hl]                                       ; $5518: $BE
    ld a, l                                       ; $5519: $7D
    cp a                                          ; $551A: $BF
    ld a, b                                       ; $551B: $78
    cp a                                          ; $551C: $BF
    ld a, b                                       ; $551D: $78
    cp c                                          ; $551E: $B9
    ld h, [hl]                                    ; $551F: $66

jr_01C_5520:
    nop                                           ; $5520: $00

jr_01C_5521:
    nop                                           ; $5521: $00
    nop                                           ; $5522: $00
    nop                                           ; $5523: $00
    nop                                           ; $5524: $00
    nop                                           ; $5525: $00
    nop                                           ; $5526: $00
    nop                                           ; $5527: $00
    nop                                           ; $5528: $00
    nop                                           ; $5529: $00
    nop                                           ; $552A: $00
    nop                                           ; $552B: $00
    nop                                           ; $552C: $00
    nop                                           ; $552D: $00
    nop                                           ; $552E: $00
    nop                                           ; $552F: $00
    nop                                           ; $5530: $00
    nop                                           ; $5531: $00
    ret nz                                        ; $5532: $C0

    nop                                           ; $5533: $00
    ld sp, $0CC0                                  ; $5534: $31 $C0 $0C
    pop af                                        ; $5537: $F1
    ccf                                           ; $5538: $3F
    push bc                                       ; $5539: $C5
    ld h, e                                       ; $553A: $63
    cp h                                          ; $553B: $BC
    rst RST_38                                    ; $553C: $FF
    dec a                                         ; $553D: $3D
    rst RST_38                                    ; $553E: $FF
    dec c                                         ; $553F: $0D
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
    nop                                           ; $554E: $00
    nop                                           ; $554F: $00
    nop                                           ; $5550: $00
    nop                                           ; $5551: $00
    ld a, b                                       ; $5552: $78
    nop                                           ; $5553: $00

jr_01C_5554:
    db $F4                                        ; $5554: $F4
    jr z, jr_01C_5596                             ; $5555: $28 $3F

    ret nz                                        ; $5557: $C0

    rst RST_30                                    ; $5558: $F7
    ret z                                         ; $5559: $C8

    rst RST_38                                    ; $555A: $FF
    jr nz, jr_01C_5554                            ; $555B: $20 $F7

    ld l, d                                       ; $555D: $6A
    sbc a                                         ; $555E: $9F
    ld [hl], b                                    ; $555F: $70
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

jr_01C_556F:
    nop                                           ; $556F: $00
    nop                                           ; $5570: $00
    nop                                           ; $5571: $00
    nop                                           ; $5572: $00
    nop                                           ; $5573: $00
    nop                                           ; $5574: $00
    nop                                           ; $5575: $00
    ld a, b                                       ; $5576: $78

jr_01C_5577:
    nop                                           ; $5577: $00
    db $FC                                        ; $5578: $FC
    jr nc, jr_01C_5577                            ; $5579: $30 $FC

    add b                                         ; $557B: $80
    db $E4                                        ; $557C: $E4
    cp b                                          ; $557D: $B8
    and h                                         ; $557E: $A4
    ld a, b                                       ; $557F: $78
    jr c, jr_01C_5592                             ; $5580: $38 $10

    jr c, jr_01C_5594                             ; $5582: $38 $10

    jr jr_01C_5586                                ; $5584: $18 $00

jr_01C_5586:
    nop                                           ; $5586: $00
    nop                                           ; $5587: $00
    add b                                         ; $5588: $80
    nop                                           ; $5589: $00
    ret nz                                        ; $558A: $C0

    add b                                         ; $558B: $80
    ldh [$FFC0], a                                ; $558C: $E0 $C0
    db $FC                                        ; $558E: $FC
    ldh [$FF7E], a                                ; $558F: $E0 $7E
    db $FC                                        ; $5591: $FC

jr_01C_5592:
    cp $3C                                        ; $5592: $FE $3C

jr_01C_5594:
    ld a, $1C                                     ; $5594: $3E $1C

jr_01C_5596:
    ld a, $1C                                     ; $5596: $3E $1C
    inc a                                         ; $5598: $3C
    nop                                           ; $5599: $00
    ld h, h                                       ; $559A: $64
    jr jr_01C_5521                                ; $559B: $18 $84

    ld a, b                                       ; $559D: $78
    ld hl, sp+$00                                 ; $559E: $F8 $00
    ld e, a                                       ; $55A0: $5F
    ld sp, hl                                     ; $55A1: $F9
    ld l, l                                       ; $55A2: $6D
    ld hl, sp+$6C                                 ; $55A3: $F8 $6C
    ld hl, sp+$7C                                 ; $55A5: $F8 $7C
    ld hl, sp+$78                                 ; $55A7: $F8 $78
    ldh a, [$FFF8]                                ; $55A9: $F0 $F8
    nop                                           ; $55AB: $00
    ret nz                                        ; $55AC: $C0

    nop                                           ; $55AD: $00
    and b                                         ; $55AE: $A0
    ld b, b                                       ; $55AF: $40
    db $10                                        ; $55B0: $10
    ldh [rIF], a                                  ; $55B1: $E0 $0F
    ldh a, [$FF8F]                                ; $55B3: $F0 $8F
    ld [hl], a                                    ; $55B5: $77
    ld a, a                                       ; $55B6: $7F
    rrca                                          ; $55B7: $0F
    ccf                                           ; $55B8: $3F
    rra                                           ; $55B9: $1F
    ld b, a                                       ; $55BA: $47
    ccf                                           ; $55BB: $3F
    ld a, b                                       ; $55BC: $78
    rlca                                          ; $55BD: $07
    rlca                                          ; $55BE: $07
    nop                                           ; $55BF: $00
    rst RST_38                                    ; $55C0: $FF
    nop                                           ; $55C1: $00
    adc a                                         ; $55C2: $8F
    ld [hl], a                                    ; $55C3: $77
    rlca                                          ; $55C4: $07
    ei                                            ; $55C5: $FB
    rlca                                          ; $55C6: $07
    ld a, [$E11E]                                 ; $55C7: $FA $1E $E1
    pop hl                                        ; $55CA: $E1
    nop                                           ; $55CB: $00
    ret nz                                        ; $55CC: $C0

    add b                                         ; $55CD: $80
    ldh [$FFC0], a                                ; $55CE: $E0 $C0
    ldh [$FFC0], a                                ; $55D0: $E0 $C0
    ldh [$FFC0], a                                ; $55D2: $E0 $C0
    ret nz                                        ; $55D4: $C0

    add b                                         ; $55D5: $80
    ret nz                                        ; $55D6: $C0

    add b                                         ; $55D7: $80
    ldh [$FFC0], a                                ; $55D8: $E0 $C0
    ldh [$FFC0], a                                ; $55DA: $E0 $C0
    ldh [$FFC0], a                                ; $55DC: $E0 $C0
    ret nz                                        ; $55DE: $C0

    nop                                           ; $55DF: $00
    ld a, a                                       ; $55E0: $7F
    nop                                           ; $55E1: $00
    nop                                           ; $55E2: $00
    nop                                           ; $55E3: $00
    ld bc, $3A00                                  ; $55E4: $01 $00 $3A
    ld bc, $192E                                  ; $55E7: $01 $2E $19
    cpl                                           ; $55EA: $2F
    ld e, $17                                     ; $55EB: $1E $17
    rrca                                          ; $55ED: $0F
    rla                                           ; $55EE: $17
    rrca                                          ; $55EF: $0F
    dec bc                                        ; $55F0: $0B
    rlca                                          ; $55F1: $07
    dec b                                         ; $55F2: $05
    inc bc                                        ; $55F3: $03
    inc bc                                        ; $55F4: $03
    ld bc, $0103                                  ; $55F5: $01 $03 $01
    rra                                           ; $55F8: $1F
    inc bc                                        ; $55F9: $03
    ld l, a                                       ; $55FA: $6F
    rla                                           ; $55FB: $17
    add a                                         ; $55FC: $87
    ld a, e                                       ; $55FD: $7B
    rst RST_38                                    ; $55FE: $FF
    nop                                           ; $55FF: $00
    add b                                         ; $5600: $80
    nop                                           ; $5601: $00
    add b                                         ; $5602: $80
    nop                                           ; $5603: $00
    ret nz                                        ; $5604: $C0

    add b                                         ; $5605: $80
    ret nz                                        ; $5606: $C0

    add b                                         ; $5607: $80
    ret nz                                        ; $5608: $C0

    add b                                         ; $5609: $80
    ldh [$FFC0], a                                ; $560A: $E0 $C0
    ldh [$FFC0], a                                ; $560C: $E0 $C0
    ldh [$FFC0], a                                ; $560E: $E0 $C0
    ldh a, [$FFE0]                                ; $5610: $F0 $E0
    ldh a, [$FFE0]                                ; $5612: $F0 $E0
    ldh a, [$FFE0]                                ; $5614: $F0 $E0
    ld hl, sp-$10                                 ; $5616: $F8 $F0
    ld hl, sp+$70                                 ; $5618: $F8 $70
    ld hl, sp+$70                                 ; $561A: $F8 $70
    ld a, b                                       ; $561C: $78
    jr nc, jr_01C_5697                            ; $561D: $30 $78

    jr nc, jr_01C_5621                            ; $561F: $30 $00

jr_01C_5621:
    nop                                           ; $5621: $00
    nop                                           ; $5622: $00
    nop                                           ; $5623: $00
    nop                                           ; $5624: $00
    nop                                           ; $5625: $00
    ld a, b                                       ; $5626: $78
    nop                                           ; $5627: $00
    ld e, [hl]                                    ; $5628: $5E
    jr c, jr_01C_568A                             ; $5629: $38 $5F

    ld a, $5F                                     ; $562B: $3E $5F
    ccf                                           ; $562D: $3F
    cpl                                           ; $562E: $2F
    rra                                           ; $562F: $1F
    xor a                                         ; $5630: $AF
    rra                                           ; $5631: $1F
    rst RST_38                                    ; $5632: $FF
    rlca                                          ; $5633: $07
    ccf                                           ; $5634: $3F
    di                                            ; $5635: $F3
    rst RST_38                                    ; $5636: $FF
    db $E3                                        ; $5637: $E3
    rst RST_38                                    ; $5638: $FF
    jp $C3FF                                      ; $5639: $C3 $FF $C3


    rst RST_38                                    ; $563C: $FF
    rlca                                          ; $563D: $07
    cp a                                          ; $563E: $BF
    di                                            ; $563F: $F3
    jp nz, $C13C                                  ; $5640: $C2 $3C $C1

    cp [hl]                                       ; $5643: $BE
    db $FD                                        ; $5644: $FD
    and d                                         ; $5645: $A2
    db $E4                                        ; $5646: $E4
    dec de                                        ; $5647: $1B
    db $FD                                        ; $5648: $FD
    ld h, [hl]                                    ; $5649: $66
    ld a, [$FC0D]                                 ; $564A: $FA $0D $FC
    dec hl                                        ; $564D: $2B
    rst RST_38                                    ; $564E: $FF
    inc bc                                        ; $564F: $03
    cp a                                          ; $5650: $BF
    ld e, e                                       ; $5651: $5B
    rst RST_38                                    ; $5652: $FF
    ld a, [hl-]                                   ; $5653: $3A
    sub $69                                       ; $5654: $D6 $69
    ld hl, sp+$47                                 ; $5656: $F8 $47
    ret nz                                        ; $5658: $C0

    ccf                                           ; $5659: $3F
    ld e, d                                       ; $565A: $5A
    rst RST_38                                    ; $565B: $FF
    db $DB                                        ; $565C: $DB
    rst RST_38                                    ; $565D: $FF
    ei                                            ; $565E: $FB
    rst RST_38                                    ; $565F: $FF
    ccf                                           ; $5660: $3F
    nop                                           ; $5661: $00
    rst RST_38                                    ; $5662: $FF
    ld e, $7D                                     ; $5663: $1E $7D
    ldh [c], a                                    ; $5665: $E2
    jp hl                                         ; $5666: $E9


    sub [hl]                                      ; $5667: $96
    ld [hl], e                                    ; $5668: $73
    rst RST_08                                    ; $5669: $CF
    xor a                                         ; $566A: $AF
    ld hl, sp-$01                                 ; $566B: $F8 $FF
    jp nz, Jump_000_16ED                          ; $566D: $C2 $ED $16

    ld e, d                                       ; $5670: $5A
    xor l                                         ; $5671: $AD
    rst RST_30                                    ; $5672: $F7
    inc e                                         ; $5673: $1C
    sbc $FD                                       ; $5674: $DE $FD
    cp $1D                                        ; $5676: $FE $1D
    rra                                           ; $5678: $1F
    nop                                           ; $5679: $00
    ld c, $01                                     ; $567A: $0E $01
    ld a, [hl-]                                   ; $567C: $3A
    rrca                                          ; $567D: $0F
    ld a, a                                       ; $567E: $7F
    ccf                                           ; $567F: $3F
    nop                                           ; $5680: $00
    nop                                           ; $5681: $00
    nop                                           ; $5682: $00
    nop                                           ; $5683: $00
    nop                                           ; $5684: $00
    nop                                           ; $5685: $00
    nop                                           ; $5686: $00
    nop                                           ; $5687: $00
    nop                                           ; $5688: $00
    nop                                           ; $5689: $00

jr_01C_568A:
    rrca                                          ; $568A: $0F
    nop                                           ; $568B: $00
    db $10                                        ; $568C: $10
    rrca                                          ; $568D: $0F
    dec l                                         ; $568E: $2D
    dec de                                        ; $568F: $1B
    ld [hl+], a                                   ; $5690: $22
    rra                                           ; $5691: $1F
    ccf                                           ; $5692: $3F
    rra                                           ; $5693: $1F
    rra                                           ; $5694: $1F
    dec b                                         ; $5695: $05
    dec d                                         ; $5696: $15

jr_01C_5697:
    ld a, [bc]                                    ; $5697: $0A
    rrca                                          ; $5698: $0F
    nop                                           ; $5699: $00
    ld a, [de]                                    ; $569A: $1A
    rrca                                          ; $569B: $0F
    rrca                                          ; $569C: $0F
    rlca                                          ; $569D: $07
    rlca                                          ; $569E: $07
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
    ld a, h                                       ; $56BE: $7C
    nop                                           ; $56BF: $00
    nop                                           ; $56C0: $00
    nop                                           ; $56C1: $00
    ret nz                                        ; $56C2: $C0

    nop                                           ; $56C3: $00
    ld hl, sp-$40                                 ; $56C4: $F8 $C0
    cp e                                          ; $56C6: $BB
    ldh a, [$FFCE]                                ; $56C7: $F0 $CE
    ld [hl], c                                    ; $56C9: $71
    bit 6, l                                      ; $56CA: $CB $75
    db $EB                                        ; $56CC: $EB
    dec [hl]                                      ; $56CD: $35
    ld sp, hl                                     ; $56CE: $F9
    or [hl]                                       ; $56CF: $B6
    rst RST_38                                    ; $56D0: $FF
    ret nc                                        ; $56D1: $D0

    ld hl, sp-$30                                 ; $56D2: $F8 $D0
    ld hl, sp-$30                                 ; $56D4: $F8 $D0
    ld hl, sp-$80                                 ; $56D6: $F8 $80
    add b                                         ; $56D8: $80
    nop                                           ; $56D9: $00
    nop                                           ; $56DA: $00
    nop                                           ; $56DB: $00
    nop                                           ; $56DC: $00
    nop                                           ; $56DD: $00
    nop                                           ; $56DE: $00
    nop                                           ; $56DF: $00
    ld a, $00                                     ; $56E0: $3E $00
    rst RST_38                                    ; $56E2: $FF
    ld e, $7D                                     ; $56E3: $1E $7D
    db $E3                                        ; $56E5: $E3
    jp hl                                         ; $56E6: $E9


    sub [hl]                                      ; $56E7: $96
    ld [hl], e                                    ; $56E8: $73
    rst RST_08                                    ; $56E9: $CF
    xor a                                         ; $56EA: $AF
    ld hl, sp-$01                                 ; $56EB: $F8 $FF
    jp $17ED                                      ; $56ED: $C3 $ED $17


    ld e, d                                       ; $56F0: $5A
    xor a                                         ; $56F1: $AF
    push af                                       ; $56F2: $F5
    rra                                           ; $56F3: $1F
    rst RST_18                                    ; $56F4: $DF
    rst RST_38                                    ; $56F5: $FF
    rst RST_38                                    ; $56F6: $FF
    rra                                           ; $56F7: $1F
    rra                                           ; $56F8: $1F
    nop                                           ; $56F9: $00
    nop                                           ; $56FA: $00
    nop                                           ; $56FB: $00
    nop                                           ; $56FC: $00
    nop                                           ; $56FD: $00
    nop                                           ; $56FE: $00
    nop                                           ; $56FF: $00
    nop                                           ; $5700: $00
    nop                                           ; $5701: $00
    nop                                           ; $5702: $00
    nop                                           ; $5703: $00
    rrca                                          ; $5704: $0F
    nop                                           ; $5705: $00
    db $10                                        ; $5706: $10
    rrca                                          ; $5707: $0F
    dec l                                         ; $5708: $2D
    dec de                                        ; $5709: $1B
    ld [hl+], a                                   ; $570A: $22
    rra                                           ; $570B: $1F
    ccf                                           ; $570C: $3F
    rra                                           ; $570D: $1F
    rra                                           ; $570E: $1F
    dec b                                         ; $570F: $05
    dec d                                         ; $5710: $15
    ld a, [bc]                                    ; $5711: $0A
    rrca                                          ; $5712: $0F
    nop                                           ; $5713: $00
    ld a, [de]                                    ; $5714: $1A
    rrca                                          ; $5715: $0F
    rrca                                          ; $5716: $0F
    rlca                                          ; $5717: $07
    rlca                                          ; $5718: $07
    nop                                           ; $5719: $00
    nop                                           ; $571A: $00
    nop                                           ; $571B: $00
    nop                                           ; $571C: $00
    nop                                           ; $571D: $00
    nop                                           ; $571E: $00
    nop                                           ; $571F: $00
    jr c, @+$12                                   ; $5720: $38 $10

    jr c, @+$12                                   ; $5722: $38 $10

    jr jr_01C_5726                                ; $5724: $18 $00

jr_01C_5726:
    add b                                         ; $5726: $80
    nop                                           ; $5727: $00
    ret nz                                        ; $5728: $C0

    add b                                         ; $5729: $80
    ldh [$FFC0], a                                ; $572A: $E0 $C0
    ldh a, [$FFE0]                                ; $572C: $F0 $E0
    cp $F0                                        ; $572E: $FE $F0
    ccf                                           ; $5730: $3F
    cp $FF                                        ; $5731: $FE $FF
    ld e, $1F                                     ; $5733: $1E $1F
    ld c, $0F                                     ; $5735: $0E $0F
    ld b, $0F                                     ; $5737: $06 $0F
    nop                                           ; $5739: $00
    add hl, de                                    ; $573A: $19
    ld b, $21                                     ; $573B: $06 $21
    ld e, $3E                                     ; $573D: $1E $3E
    nop                                           ; $573F: $00
    rst RST_38                                    ; $5740: $FF
    rst RST_38                                    ; $5741: $FF
    rst RST_38                                    ; $5742: $FF
    nop                                           ; $5743: $00
    ret nz                                        ; $5744: $C0

    add b                                         ; $5745: $80
    ldh [$FF80], a                                ; $5746: $E0 $80
    ret nc                                        ; $5748: $D0

    and b                                         ; $5749: $A0
    adc b                                         ; $574A: $88
    ld [hl], b                                    ; $574B: $70
    rlca                                          ; $574C: $07
    ld hl, sp-$39                                 ; $574D: $F8 $C7
    dec sp                                        ; $574F: $3B
    ccf                                           ; $5750: $3F
    rlca                                          ; $5751: $07
    rra                                           ; $5752: $1F
    rrca                                          ; $5753: $0F
    ld hl, $3E1F                                  ; $5754: $21 $1F $3E
    ld bc, $0001                                  ; $5757: $01 $01 $00
    nop                                           ; $575A: $00
    nop                                           ; $575B: $00
    nop                                           ; $575C: $00
    nop                                           ; $575D: $00
    nop                                           ; $575E: $00
    nop                                           ; $575F: $00
    ld b, a                                       ; $5760: $47
    dec sp                                        ; $5761: $3B
    add e                                         ; $5762: $83
    ld a, l                                       ; $5763: $7D
    inc bc                                        ; $5764: $03
    db $FD                                        ; $5765: $FD
    rrca                                          ; $5766: $0F
    ldh a, [$FFF0]                                ; $5767: $F0 $F0
    nop                                           ; $5769: $00
    ldh [$FFC0], a                                ; $576A: $E0 $C0
    ldh a, [$FFE0]                                ; $576C: $F0 $E0
    ldh a, [$FFE0]                                ; $576E: $F0 $E0
    ldh a, [$FFE0]                                ; $5770: $F0 $E0
    ldh a, [$FFE0]                                ; $5772: $F0 $E0
    ldh a, [$FF60]                                ; $5774: $F0 $60
    ld hl, sp-$10                                 ; $5776: $F8 $F0
    ld hl, sp-$10                                 ; $5778: $F8 $F0
    ld hl, sp-$10                                 ; $577A: $F8 $F0
    ldh a, [rP1]                                  ; $577C: $F0 $00
    nop                                           ; $577E: $00
    nop                                           ; $577F: $00
    nop                                           ; $5780: $00
    nop                                           ; $5781: $00
    nop                                           ; $5782: $00
    nop                                           ; $5783: $00
    dec c                                         ; $5784: $0D
    nop                                           ; $5785: $00
    rla                                           ; $5786: $17
    inc c                                         ; $5787: $0C
    rla                                           ; $5788: $17
    rrca                                          ; $5789: $0F
    dec bc                                        ; $578A: $0B
    rlca                                          ; $578B: $07
    dec bc                                        ; $578C: $0B
    rlca                                          ; $578D: $07
    dec b                                         ; $578E: $05
    inc bc                                        ; $578F: $03
    inc bc                                        ; $5790: $03
    ld bc, $0001                                  ; $5791: $01 $01 $00
    nop                                           ; $5794: $00
    nop                                           ; $5795: $00
    rlca                                          ; $5796: $07
    nop                                           ; $5797: $00
    dec de                                        ; $5798: $1B
    dec b                                         ; $5799: $05
    ld hl, $3F1E                                  ; $579A: $21 $1E $3F
    nop                                           ; $579D: $00
    nop                                           ; $579E: $00
    nop                                           ; $579F: $00
    add b                                         ; $57A0: $80
    nop                                           ; $57A1: $00
    add b                                         ; $57A2: $80
    nop                                           ; $57A3: $00
    ret nz                                        ; $57A4: $C0

    add b                                         ; $57A5: $80
    ret nz                                        ; $57A6: $C0

    nop                                           ; $57A7: $00
    ret nz                                        ; $57A8: $C0

    nop                                           ; $57A9: $00
    db $FC                                        ; $57AA: $FC
    ld b, b                                       ; $57AB: $40
    cp $3C                                        ; $57AC: $FE $3C
    rst RST_10                                    ; $57AE: $D7
    cp $0B                                        ; $57AF: $FE $0B
    cp $0D                                        ; $57B1: $FE $0D
    cp $4D                                        ; $57B3: $FE $4D
    cp $6F                                        ; $57B5: $FE $6F
    cp $6E                                        ; $57B7: $FE $6E
    db $FC                                        ; $57B9: $FC
    cp $C0                                        ; $57BA: $FE $C0
    ld hl, sp+$30                                 ; $57BC: $F8 $30
    ld a, b                                       ; $57BE: $78
    jr nc, jr_01C_5839                            ; $57BF: $30 $78

    nop                                           ; $57C1: $00
    ld e, [hl]                                    ; $57C2: $5E
    jr c, jr_01C_5824                             ; $57C3: $38 $5F

    ld a, $5F                                     ; $57C5: $3E $5F
    ccf                                           ; $57C7: $3F
    cpl                                           ; $57C8: $2F
    rra                                           ; $57C9: $1F
    cp a                                          ; $57CA: $BF
    nop                                           ; $57CB: $00
    ldh [$FF1F], a                                ; $57CC: $E0 $1F
    rst RST_38                                    ; $57CE: $FF
    rst RST_18                                    ; $57CF: $DF
    rst RST_38                                    ; $57D0: $FF
    rst RST_18                                    ; $57D1: $DF
    rst RST_38                                    ; $57D2: $FF
    sbc $FF                                       ; $57D3: $DE $FF
    db $EC                                        ; $57D5: $EC
    rst RST_38                                    ; $57D6: $FF
    pop hl                                        ; $57D7: $E1
    ld a, h                                       ; $57D8: $7C
    and e                                         ; $57D9: $A3
    ld [hl], e                                    ; $57DA: $73
    adc a                                         ; $57DB: $8F
    bit 7, a                                      ; $57DC: $CB $7F
    ld e, a                                       ; $57DE: $5F
    rst RST_38                                    ; $57DF: $FF
    ld [bc], a                                    ; $57E0: $02
    db $FC                                        ; $57E1: $FC
    sbc d                                         ; $57E2: $9A
    ld h, h                                       ; $57E3: $64
    jp hl                                         ; $57E4: $E9


    ld d, $C9                                     ; $57E5: $16 $C9
    ld [hl], $F1                                  ; $57E7: $36 $F1
    adc $F3                                       ; $57E9: $CE $F3
    inc e                                         ; $57EB: $1C
    sbc a                                         ; $57EC: $9F
    ld l, b                                       ; $57ED: $68
    ei                                            ; $57EE: $FB
    dec b                                         ; $57EF: $05
    rst RST_10                                    ; $57F0: $D7
    xor e                                         ; $57F1: $AB
    db $FD                                        ; $57F2: $FD
    add $ED                                       ; $57F3: $C6 $ED
    jp c, $18EF                                   ; $57F5: $DA $EF $18

    rst RST_28                                    ; $57F8: $EF
    ld e, c                                       ; $57F9: $59
    ld l, a                                       ; $57FA: $6F
    dec de                                        ; $57FB: $1B
    ccf                                           ; $57FC: $3F
    nop                                           ; $57FD: $00
    ccf                                           ; $57FE: $3F
    rlca                                          ; $57FF: $07
    inc bc                                        ; $5800: $03
    nop                                           ; $5801: $00
    inc bc                                        ; $5802: $03
    ld bc, $0103                                  ; $5803: $01 $03 $01
    ccf                                           ; $5806: $3F
    nop                                           ; $5807: $00
    rlca                                          ; $5808: $07
    ld a, [hl-]                                   ; $5809: $3A
    rrca                                          ; $580A: $0F
    inc sp                                        ; $580B: $33
    ccf                                           ; $580C: $3F
    ld a, [hl-]                                   ; $580D: $3A
    ccf                                           ; $580E: $3F
    ld a, [hl-]                                   ; $580F: $3A
    ccf                                           ; $5810: $3F
    dec de                                        ; $5811: $1B
    ld e, $01                                     ; $5812: $1E $01
    ld [bc], a                                    ; $5814: $02
    ld bc, $0001                                  ; $5815: $01 $01 $00
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

jr_01C_5824:
    nop                                           ; $5824: $00
    nop                                           ; $5825: $00
    nop                                           ; $5826: $00
    nop                                           ; $5827: $00
    nop                                           ; $5828: $00
    nop                                           ; $5829: $00
    nop                                           ; $582A: $00
    nop                                           ; $582B: $00
    nop                                           ; $582C: $00
    nop                                           ; $582D: $00
    nop                                           ; $582E: $00
    nop                                           ; $582F: $00
    nop                                           ; $5830: $00
    nop                                           ; $5831: $00
    nop                                           ; $5832: $00
    nop                                           ; $5833: $00
    nop                                           ; $5834: $00
    nop                                           ; $5835: $00
    nop                                           ; $5836: $00
    nop                                           ; $5837: $00

Call_01C_5838:
    nop                                           ; $5838: $00

jr_01C_5839:
    nop                                           ; $5839: $00
    nop                                           ; $583A: $00
    nop                                           ; $583B: $00
    ld c, $00                                     ; $583C: $0E $00
    ld [hl], c                                    ; $583E: $71
    ld c, $75                                     ; $583F: $0E $75
    rrca                                          ; $5841: $0F
    rst RST_38                                    ; $5842: $FF
    ld a, a                                       ; $5843: $7F
    rst RST_38                                    ; $5844: $FF
    nop                                           ; $5845: $00
    ld bc, $0100                                  ; $5846: $01 $00 $01
    nop                                           ; $5849: $00
    ld bc, $0000                                  ; $584A: $01 $00 $00
    nop                                           ; $584D: $00
    nop                                           ; $584E: $00
    nop                                           ; $584F: $00
    nop                                           ; $5850: $00
    nop                                           ; $5851: $00
    nop                                           ; $5852: $00
    nop                                           ; $5853: $00
    nop                                           ; $5854: $00
    nop                                           ; $5855: $00
    nop                                           ; $5856: $00
    nop                                           ; $5857: $00
    nop                                           ; $5858: $00
    nop                                           ; $5859: $00
    inc bc                                        ; $585A: $03
    nop                                           ; $585B: $00
    inc b                                         ; $585C: $04
    inc bc                                        ; $585D: $03
    rlca                                          ; $585E: $07
    nop                                           ; $585F: $00
    and [hl]                                      ; $5860: $A6
    rst RST_38                                    ; $5861: $FF
    or $FF                                        ; $5862: $F6 $FF
    rst RST_38                                    ; $5864: $FF
    nop                                           ; $5865: $00
    ret nc                                        ; $5866: $D0

    rrca                                          ; $5867: $0F
    ld [hl], b                                    ; $5868: $70
    rst RST_08                                    ; $5869: $CF
    ld a, a                                       ; $586A: $7F
    ldh a, [$FFBE]                                ; $586B: $F0 $BE
    ld a, h                                       ; $586D: $7C
    cp a                                          ; $586E: $BF
    ld a, [hl]                                    ; $586F: $7E
    ld e, a                                       ; $5870: $5F
    ld a, $2F                                     ; $5871: $3E $2F
    ld e, $1E                                     ; $5873: $1E $1E
    inc c                                         ; $5875: $0C
    ld e, $0C                                     ; $5876: $1E $0C
    rst RST_38                                    ; $5878: $FF
    ld e, $7F                                     ; $5879: $1E $7F
    cp [hl]                                       ; $587B: $BE
    ccf                                           ; $587C: $3F
    sbc $FE                                       ; $587D: $DE $FE
    nop                                           ; $587F: $00
    rrca                                          ; $5880: $0F
    rst RST_30                                    ; $5881: $F7
    rst RST_38                                    ; $5882: $FF
    nop                                           ; $5883: $00
    rst RST_10                                    ; $5884: $D7
    rst RST_38                                    ; $5885: $FF
    ld c, e                                       ; $5886: $4B
    rst RST_38                                    ; $5887: $FF
    dec c                                         ; $5888: $0D
    rst RST_38                                    ; $5889: $FF
    ld c, l                                       ; $588A: $4D
    rst RST_38                                    ; $588B: $FF
    ld l, a                                       ; $588C: $6F
    rst RST_38                                    ; $588D: $FF
    ld l, a                                       ; $588E: $6F
    cp $FF                                        ; $588F: $FE $FF
    ld bc, $FD03                                  ; $5891: $01 $03 $FD
    rrca                                          ; $5894: $0F
    ldh a, [$FFF0]                                ; $5895: $F0 $F0
    nop                                           ; $5897: $00
    ldh [$FFC0], a                                ; $5898: $E0 $C0
    ldh a, [$FFE0]                                ; $589A: $F0 $E0
    ldh a, [$FFE0]                                ; $589C: $F0 $E0
    ldh a, [$FFE0]                                ; $589E: $F0 $E0
    ldh [$FF80], a                                ; $58A0: $E0 $80
    ret nc                                        ; $58A2: $D0

    and b                                         ; $58A3: $A0
    adc b                                         ; $58A4: $88
    ld [hl], b                                    ; $58A5: $70
    rlca                                          ; $58A6: $07
    ld hl, sp-$39                                 ; $58A7: $F8 $C7
    dec sp                                        ; $58A9: $3B
    ccf                                           ; $58AA: $3F
    rlca                                          ; $58AB: $07
    rra                                           ; $58AC: $1F
    rrca                                          ; $58AD: $0F
    inc hl                                        ; $58AE: $23
    rra                                           ; $58AF: $1F
    inc a                                         ; $58B0: $3C
    inc bc                                        ; $58B1: $03
    inc bc                                        ; $58B2: $03
    nop                                           ; $58B3: $00
    nop                                           ; $58B4: $00
    nop                                           ; $58B5: $00
    nop                                           ; $58B6: $00
    nop                                           ; $58B7: $00
    nop                                           ; $58B8: $00
    nop                                           ; $58B9: $00
    nop                                           ; $58BA: $00
    nop                                           ; $58BB: $00
    nop                                           ; $58BC: $00
    nop                                           ; $58BD: $00
    nop                                           ; $58BE: $00
    nop                                           ; $58BF: $00
    ldh [rLCDC], a                                ; $58C0: $E0 $40
    ldh [rLCDC], a                                ; $58C2: $E0 $40
    ld h, b                                       ; $58C4: $60
    nop                                           ; $58C5: $00
    ret nz                                        ; $58C6: $C0

    nop                                           ; $58C7: $00
    ret nz                                        ; $58C8: $C0

    add b                                         ; $58C9: $80
    ldh [$FFC0], a                                ; $58CA: $E0 $C0
    ldh a, [$FFE0]                                ; $58CC: $F0 $E0
    cp $F0                                        ; $58CE: $FE $F0
    ccf                                           ; $58D0: $3F
    cp $FF                                        ; $58D1: $FE $FF
    ld e, $1F                                     ; $58D3: $1E $1F
    ld c, $1F                                     ; $58D5: $0E $1F
    ld c, $1E                                     ; $58D7: $0E $1E
    nop                                           ; $58D9: $00
    ld [hl-], a                                   ; $58DA: $32
    inc c                                         ; $58DB: $0C
    ld b, d                                       ; $58DC: $42
    inc a                                         ; $58DD: $3C
    ld a, h                                       ; $58DE: $7C
    nop                                           ; $58DF: $00
    rlca                                          ; $58E0: $07
    nop                                           ; $58E1: $00
    ld c, $01                                     ; $58E2: $0E $01
    ld c, $05                                     ; $58E4: $0E $05
    ld c, $05                                     ; $58E6: $0E $05
    rlca                                          ; $58E8: $07
    nop                                           ; $58E9: $00
    rlca                                          ; $58EA: $07
    inc bc                                        ; $58EB: $03
    rlca                                          ; $58EC: $07

jr_01C_58ED:
    nop                                           ; $58ED: $00
    inc c                                         ; $58EE: $0C
    inc bc                                        ; $58EF: $03
    inc de                                        ; $58F0: $13
    rrca                                          ; $58F1: $0F
    rla                                           ; $58F2: $17
    ld [$001F], sp                                ; $58F3: $08 $1F $00
    rrca                                          ; $58F6: $0F
    nop                                           ; $58F7: $00
    inc bc                                        ; $58F8: $03
    nop                                           ; $58F9: $00
    rrca                                          ; $58FA: $0F
    inc bc                                        ; $58FB: $03
    ld a, [hl-]                                   ; $58FC: $3A
    rrca                                          ; $58FD: $0F
    ret nz                                        ; $58FE: $C0

    ccf                                           ; $58FF: $3F
    ld a, $15                                     ; $5900: $3E $15
    ccf                                           ; $5902: $3F
    rla                                           ; $5903: $17
    ld e, $0B                                     ; $5904: $1E $0B
    dec de                                        ; $5906: $1B
    dec b                                         ; $5907: $05

jr_01C_5908:
    ld a, [hl-]                                   ; $5908: $3A
    rla                                           ; $5909: $17
    ld l, $19                                     ; $590A: $2E $19
    rst RST_38                                    ; $590C: $FF

jr_01C_590D:
    ld c, $0B                                     ; $590D: $0E $0B
    rst RST_30                                    ; $590F: $F7
    ld h, a                                       ; $5910: $67
    sbc b                                         ; $5911: $98
    and [hl]                                      ; $5912: $A6
    ld e, c                                       ; $5913: $59
    jr z, jr_01C_58ED                             ; $5914: $28 $D7

    db $D3                                        ; $5916: $D3
    cpl                                           ; $5917: $2F
    rst RST_38                                    ; $5918: $FF
    rrca                                          ; $5919: $0F
    ccf                                           ; $591A: $3F
    rst RST_10                                    ; $591B: $D7
    rst RST_38                                    ; $591C: $FF
    db $EB                                        ; $591D: $EB
    rst RST_38                                    ; $591E: $FF
    inc c                                         ; $591F: $0C
    cp $83                                        ; $5920: $FE $83
    db $E3                                        ; $5922: $E3
    inc e                                         ; $5923: $1C
    jr jr_01C_590D                                ; $5924: $18 $E7

    ld b, $FB                                     ; $5926: $06 $FB
    di                                            ; $5928: $F3
    db $FD                                        ; $5929: $FD
    db $FD                                        ; $592A: $FD
    cp $FD                                        ; $592B: $FE $FD
    cp $FE                                        ; $592D: $FE $FE
    rst RST_38                                    ; $592F: $FF
    cp $FF                                        ; $5930: $FE $FF
    rst RST_38                                    ; $5932: $FF
    ccf                                           ; $5933: $3F
    rst RST_38                                    ; $5934: $FF
    rst RST_08                                    ; $5935: $CF
    rst RST_28                                    ; $5936: $EF
    ld b, a                                       ; $5937: $47
    rst RST_00                                    ; $5938: $C7
    add e                                         ; $5939: $83
    jp $C181                                      ; $593A: $C3 $81 $C1


    add b                                         ; $593D: $80
    pop bc                                        ; $593E: $C1
    nop                                           ; $593F: $00
    ret nz                                        ; $5940: $C0

    add b                                         ; $5941: $80
    and b                                         ; $5942: $A0
    ret nz                                        ; $5943: $C0

    ldh [rP1], a                                  ; $5944: $E0 $00
    jr nz, jr_01C_5908                            ; $5946: $20 $C0

    sub b                                         ; $5948: $90
    ldh [$FFF0], a                                ; $5949: $E0 $F0
    ldh [$FFE8], a                                ; $594B: $E0 $E8
    ldh a, [$FFFC]                                ; $594D: $F0 $FC
    ld a, b                                       ; $594F: $78
    db $F4                                        ; $5950: $F4
    ld a, b                                       ; $5951: $78
    ld a, [hl]                                    ; $5952: $7E

jr_01C_5953:
    sbc h                                         ; $5953: $9C
    ld e, [hl]                                    ; $5954: $5E
    adc h                                         ; $5955: $8C
    rst RST_08                                    ; $5956: $CF
    add [hl]                                      ; $5957: $86
    and a                                         ; $5958: $A7
    jp nz, $C2E7                                  ; $5959: $C2 $E7 $C2

    db $E3                                        ; $595C: $E3
    ret nz                                        ; $595D: $C0

    ldh [$FFC0], a                                ; $595E: $E0 $C0
    nop                                           ; $5960: $00
    nop                                           ; $5961: $00
    nop                                           ; $5962: $00
    nop                                           ; $5963: $00
    nop                                           ; $5964: $00
    nop                                           ; $5965: $00
    nop                                           ; $5966: $00
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
    ldh [rP1], a                                  ; $5972: $E0 $00
    ret c                                         ; $5974: $D8

    ld h, b                                       ; $5975: $60
    db $F4                                        ; $5976: $F4
    jr jr_01C_5953                                ; $5977: $18 $DA

    inc l                                         ; $5979: $2C
    ld a, [hl]                                    ; $597A: $7E
    add h                                         ; $597B: $84
    sbc a                                         ; $597C: $9F
    cp $C7                                        ; $597D: $FE $C7
    db $FC                                        ; $597F: $FC
    nop                                           ; $5980: $00
    nop                                           ; $5981: $00
    nop                                           ; $5982: $00
    nop                                           ; $5983: $00
    nop                                           ; $5984: $00
    nop                                           ; $5985: $00
    nop                                           ; $5986: $00
    nop                                           ; $5987: $00
    nop                                           ; $5988: $00
    nop                                           ; $5989: $00
    nop                                           ; $598A: $00
    nop                                           ; $598B: $00
    nop                                           ; $598C: $00
    nop                                           ; $598D: $00
    inc a                                         ; $598E: $3C
    nop                                           ; $598F: $00
    ld d, a                                       ; $5990: $57
    inc l                                         ; $5991: $2C
    ld sp, hl                                     ; $5992: $F9
    ld d, a                                       ; $5993: $57
    db $FC                                        ; $5994: $FC
    ld e, a                                       ; $5995: $5F
    ld a, c                                       ; $5996: $79
    cpl                                           ; $5997: $2F
    ld l, a                                       ; $5998: $6F
    rla                                           ; $5999: $17
    db $EB                                        ; $599A: $EB
    ld e, l                                       ; $599B: $5D
    cp e                                          ; $599C: $BB
    ld h, [hl]                                    ; $599D: $66
    cp $39                                        ; $599E: $FE $39
    ld b, $00                                     ; $59A0: $06 $00
    nop                                           ; $59A2: $00
    nop                                           ; $59A3: $00
    nop                                           ; $59A4: $00
    nop                                           ; $59A5: $00
    nop                                           ; $59A6: $00
    nop                                           ; $59A7: $00
    add b                                         ; $59A8: $80
    nop                                           ; $59A9: $00
    ret nz                                        ; $59AA: $C0

    add b                                         ; $59AB: $80
    ldh [$FFC0], a                                ; $59AC: $E0 $C0
    db $FC                                        ; $59AE: $FC
    ldh [$FF7E], a                                ; $59AF: $E0 $7E
    db $FC                                        ; $59B1: $FC
    cp $3C                                        ; $59B2: $FE $3C
    ld a, $1C                                     ; $59B4: $3E $1C
    ld e, $0C                                     ; $59B6: $1E $0C
    ld e, $00                                     ; $59B8: $1E $00
    ld [hl-], a                                   ; $59BA: $32
    inc c                                         ; $59BB: $0C
    ld b, d                                       ; $59BC: $42
    inc a                                         ; $59BD: $3C
    ld a, h                                       ; $59BE: $7C
    nop                                           ; $59BF: $00
    ld a, [$FEFC]                                 ; $59C0: $FA $FC $FE
    ld a, h                                       ; $59C3: $7C
    db $FD                                        ; $59C4: $FD
    ld a, $FD                                     ; $59C5: $3E $FD
    sbc [hl]                                      ; $59C7: $9E
    sbc l                                         ; $59C8: $9D
    ld c, $DF                                     ; $59C9: $0E $DF
    adc [hl]                                      ; $59CB: $8E
    rst RST_08                                    ; $59CC: $CF
    add [hl]                                      ; $59CD: $86
    xor a                                         ; $59CE: $AF
    ld b, [hl]                                    ; $59CF: $46
    rla                                           ; $59D0: $17
    ldh [c], a                                    ; $59D1: $E2
    rrca                                          ; $59D2: $0F
    ldh a, [c]                                    ; $59D3: $F2
    adc a                                         ; $59D4: $8F
    ld [hl], d                                    ; $59D5: $72
    ld a, a                                       ; $59D6: $7F
    add hl, bc                                    ; $59D7: $09
    ccf                                           ; $59D8: $3F
    rra                                           ; $59D9: $1F
    ld b, e                                       ; $59DA: $43
    ccf                                           ; $59DB: $3F
    ld a, h                                       ; $59DC: $7C
    inc bc                                        ; $59DD: $03
    inc bc                                        ; $59DE: $03
    nop                                           ; $59DF: $00
    ld a, a                                       ; $59E0: $7F
    rrca                                          ; $59E1: $0F
    adc a                                         ; $59E2: $8F
    ld [hl], a                                    ; $59E3: $77
    rlca                                          ; $59E4: $07
    ei                                            ; $59E5: $FB
    rlca                                          ; $59E6: $07
    ld a, [$E11E]                                 ; $59E7: $FA $1E $E1
    pop hl                                        ; $59EA: $E1
    nop                                           ; $59EB: $00
    ret nz                                        ; $59EC: $C0

    add b                                         ; $59ED: $80
    ldh [$FFC0], a                                ; $59EE: $E0 $C0
    ldh [$FFC0], a                                ; $59F0: $E0 $C0
    ldh [$FFC0], a                                ; $59F2: $E0 $C0
    ldh [$FFC0], a                                ; $59F4: $E0 $C0
    ldh [$FFC0], a                                ; $59F6: $E0 $C0
    ldh a, [$FFE0]                                ; $59F8: $F0 $E0
    ldh a, [$FFE0]                                ; $59FA: $F0 $E0
    ldh a, [$FFE0]                                ; $59FC: $F0 $E0
    ldh [rP1], a                                  ; $59FE: $E0 $00
    nop                                           ; $5A00: $00
    nop                                           ; $5A01: $00
    nop                                           ; $5A02: $00
    nop                                           ; $5A03: $00
    ld bc, $1A00                                  ; $5A04: $01 $00 $1A
    ld bc, $192E                                  ; $5A07: $01 $2E $19
    cpl                                           ; $5A0A: $2F
    ld e, $17                                     ; $5A0B: $1E $17
    rrca                                          ; $5A0D: $0F
    rla                                           ; $5A0E: $17
    rrca                                          ; $5A0F: $0F
    dec bc                                        ; $5A10: $0B
    rlca                                          ; $5A11: $07
    rlca                                          ; $5A12: $07
    inc bc                                        ; $5A13: $03
    inc bc                                        ; $5A14: $03
    ld bc, $0001                                  ; $5A15: $01 $01 $00
    rrca                                          ; $5A18: $0F
    ld bc, $0B37                                  ; $5A19: $01 $37 $0B
    ld b, e                                       ; $5A1C: $43
    dec a                                         ; $5A1D: $3D
    ld a, a                                       ; $5A1E: $7F
    nop                                           ; $5A1F: $00
    ld a, $FC                                     ; $5A20: $3E $FC
    adc [hl]                                      ; $5A22: $8E
    ld hl, sp-$2A                                 ; $5A23: $F8 $D6
    ld a, h                                       ; $5A25: $7C
    ld a, a                                       ; $5A26: $7F
    or [hl]                                       ; $5A27: $B6
    cp a                                          ; $5A28: $BF
    sub $DF                                       ; $5A29: $D6 $DF
    xor $DE                                       ; $5A2B: $EE $DE
    db $EC                                        ; $5A2D: $EC
    xor $F4                                       ; $5A2E: $EE $F4
    db $EC                                        ; $5A30: $EC
    ldh a, [$FFF4]                                ; $5A31: $F0 $F4
    ld hl, sp-$0C                                 ; $5A33: $F8 $F4
    jr c, jr_01C_5A75                             ; $5A35: $38 $3E

    inc e                                         ; $5A37: $1C
    ld e, $0C                                     ; $5A38: $1E $0C
    ld e, $0C                                     ; $5A3A: $1E $0C
    ld c, $04                                     ; $5A3C: $0E $04
    ld c, $04                                     ; $5A3E: $0E $04
    ld l, $18                                     ; $5A40: $2E $18
    ld [hl], e                                    ; $5A42: $73
    ld l, $79                                     ; $5A43: $2E $79
    ld a, $33                                     ; $5A45: $3E $33
    ld e, $DF                                     ; $5A47: $1E $DF
    ld l, $D6                                     ; $5A49: $2E $D6
    cp e                                          ; $5A4B: $BB
    rst RST_38                                    ; $5A4C: $FF
    add c                                         ; $5A4D: $81
    add e                                         ; $5A4E: $83
    ld a, h                                       ; $5A4F: $7C
    db $FC                                        ; $5A50: $FC
    ccf                                           ; $5A51: $3F
    ccf                                           ; $5A52: $3F
    rst RST_18                                    ; $5A53: $DF
    rra                                           ; $5A54: $1F
    rst RST_28                                    ; $5A55: $EF
    rst RST_08                                    ; $5A56: $CF
    rst RST_30                                    ; $5A57: $F7
    rst RST_28                                    ; $5A58: $EF
    rst RST_30                                    ; $5A59: $F7
    rst RST_30                                    ; $5A5A: $F7
    ei                                            ; $5A5B: $FB
    rst RST_38                                    ; $5A5C: $FF
    ei                                            ; $5A5D: $FB
    ei                                            ; $5A5E: $FB
    db $FC                                        ; $5A5F: $FC
    pop hl                                        ; $5A60: $E1
    nop                                           ; $5A61: $00
    ld de, $C8E0                                  ; $5A62: $11 $E0 $C8
    jr nc, jr_01C_5AB6                            ; $5A65: $30 $4F

    or b                                          ; $5A67: $B0
    ld e, b                                       ; $5A68: $58
    and a                                         ; $5A69: $A7
    ldh [$FF1F], a                                ; $5A6A: $E0 $1F
    rst RST_08                                    ; $5A6C: $CF
    cp a                                          ; $5A6D: $BF
    rst RST_38                                    ; $5A6E: $FF
    rst RST_18                                    ; $5A6F: $DF
    rst RST_38                                    ; $5A70: $FF
    rst RST_18                                    ; $5A71: $DF
    rst RST_38                                    ; $5A72: $FF
    rst RST_28                                    ; $5A73: $EF
    rst RST_38                                    ; $5A74: $FF

jr_01C_5A75:
    di                                            ; $5A75: $F3
    rst RST_38                                    ; $5A76: $FF
    db $FD                                        ; $5A77: $FD
    ld a, a                                       ; $5A78: $7F
    cp $FF                                        ; $5A79: $FE $FF
    nop                                           ; $5A7B: $00
    ld a, a                                       ; $5A7C: $7F
    ccf                                           ; $5A7D: $3F
    ccf                                           ; $5A7E: $3F
    nop                                           ; $5A7F: $00
    rrca                                          ; $5A80: $0F
    nop                                           ; $5A81: $00
    inc e                                         ; $5A82: $1C
    inc bc                                        ; $5A83: $03
    inc e                                         ; $5A84: $1C
    dec bc                                        ; $5A85: $0B
    dec e                                         ; $5A86: $1D
    ld a, [bc]                                    ; $5A87: $0A
    ld c, $01                                     ; $5A88: $0E $01
    ld a, a                                       ; $5A8A: $7F
    nop                                           ; $5A8B: $00
    ld b, c                                       ; $5A8C: $41
    ld a, $E3                                     ; $5A8D: $3E $E3
    ld a, $BF                                     ; $5A8F: $3E $BF
    ld e, [hl]                                    ; $5A91: $5E
    sbc a                                         ; $5A92: $9F
    ld l, [hl]                                    ; $5A93: $6E
    adc a                                         ; $5A94: $8F
    ld [hl], c                                    ; $5A95: $71
    cp $03                                        ; $5A96: $FE $03
    inc bc                                        ; $5A98: $03
    ld bc, $0001                                  ; $5A99: $01 $01 $00
    nop                                           ; $5A9C: $00
    nop                                           ; $5A9D: $00
    nop                                           ; $5A9E: $00
    nop                                           ; $5A9F: $00
    nop                                           ; $5AA0: $00
    nop                                           ; $5AA1: $00
    nop                                           ; $5AA2: $00
    nop                                           ; $5AA3: $00
    nop                                           ; $5AA4: $00
    nop                                           ; $5AA5: $00
    inc e                                         ; $5AA6: $1C
    nop                                           ; $5AA7: $00
    cp $1C                                        ; $5AA8: $FE $1C
    ld c, a                                       ; $5AAA: $4F
    cp $27                                        ; $5AAB: $FE $27
    rst RST_38                                    ; $5AAD: $FF
    scf                                           ; $5AAE: $37
    rst RST_38                                    ; $5AAF: $FF
    scf                                           ; $5AB0: $37
    rst RST_38                                    ; $5AB1: $FF
    cp a                                          ; $5AB2: $BF
    rst RST_38                                    ; $5AB3: $FF
    cp a                                          ; $5AB4: $BF
    rst RST_38                                    ; $5AB5: $FF

jr_01C_5AB6:
    rst RST_38                                    ; $5AB6: $FF
    cp $FE                                        ; $5AB7: $FE $FE
    inc a                                         ; $5AB9: $3C
    inc a                                         ; $5ABA: $3C
    nop                                           ; $5ABB: $00
    nop                                           ; $5ABC: $00
    nop                                           ; $5ABD: $00
    nop                                           ; $5ABE: $00
    nop                                           ; $5ABF: $00
    rrca                                          ; $5AC0: $0F
    nop                                           ; $5AC1: $00
    ld hl, sp+$0F                                 ; $5AC2: $F8 $0F
    add b                                         ; $5AC4: $80
    rst RST_38                                    ; $5AC5: $FF
    dec l                                         ; $5AC6: $2D
    rst RST_38                                    ; $5AC7: $FF
    ld l, l                                       ; $5AC8: $6D
    rst RST_38                                    ; $5AC9: $FF
    db $FD                                        ; $5ACA: $FD
    rst RST_38                                    ; $5ACB: $FF
    rst RST_38                                    ; $5ACC: $FF
    rrca                                          ; $5ACD: $0F
    rrca                                          ; $5ACE: $0F
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
    nop                                           ; $5ADA: $00
    nop                                           ; $5ADB: $00
    nop                                           ; $5ADC: $00
    nop                                           ; $5ADD: $00
    nop                                           ; $5ADE: $00
    nop                                           ; $5ADF: $00
    nop                                           ; $5AE0: $00
    nop                                           ; $5AE1: $00
    nop                                           ; $5AE2: $00
    nop                                           ; $5AE3: $00
    nop                                           ; $5AE4: $00
    nop                                           ; $5AE5: $00
    nop                                           ; $5AE6: $00
    nop                                           ; $5AE7: $00
    nop                                           ; $5AE8: $00
    nop                                           ; $5AE9: $00
    nop                                           ; $5AEA: $00
    nop                                           ; $5AEB: $00
    nop                                           ; $5AEC: $00
    nop                                           ; $5AED: $00
    nop                                           ; $5AEE: $00
    nop                                           ; $5AEF: $00
    nop                                           ; $5AF0: $00
    nop                                           ; $5AF1: $00
    nop                                           ; $5AF2: $00
    nop                                           ; $5AF3: $00
    nop                                           ; $5AF4: $00
    nop                                           ; $5AF5: $00
    rlca                                          ; $5AF6: $07
    nop                                           ; $5AF7: $00
    jr c, jr_01C_5B01                             ; $5AF8: $38 $07

    ld h, c                                       ; $5AFA: $61
    ccf                                           ; $5AFB: $3F
    ccf                                           ; $5AFC: $3F
    inc bc                                        ; $5AFD: $03
    inc bc                                        ; $5AFE: $03
    nop                                           ; $5AFF: $00
    nop                                           ; $5B00: $00

jr_01C_5B01:
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
    ret nz                                        ; $5B16: $C0

    nop                                           ; $5B17: $00
    or b                                          ; $5B18: $B0
    ret nz                                        ; $5B19: $C0

    add sp, $30                                   ; $5B1A: $E8 $30
    or h                                          ; $5B1C: $B4
    ld e, b                                       ; $5B1D: $58
    db $FC                                        ; $5B1E: $FC
    ld [$0000], sp                                ; $5B1F: $08 $00 $00
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
    nop                                           ; $5B39: $00
    nop                                           ; $5B3A: $00
    nop                                           ; $5B3B: $00
    nop                                           ; $5B3C: $00
    nop                                           ; $5B3D: $00
    jr jr_01C_5B40                                ; $5B3E: $18 $00

jr_01C_5B40:
    ccf                                           ; $5B40: $3F
    nop                                           ; $5B41: $00

jr_01C_5B42:
    ld [hl], b                                    ; $5B42: $70
    rrca                                          ; $5B43: $0F
    ld [hl], b                                    ; $5B44: $70
    cpl                                           ; $5B45: $2F
    rst RST_30                                    ; $5B46: $F7
    jr z, jr_01C_5B42                             ; $5B47: $28 $F9

    add [hl]                                      ; $5B49: $86
    rst RST_38                                    ; $5B4A: $FF
    reti                                          ; $5B4B: $D9


    cp $83                                        ; $5B4C: $FE $83
    rst RST_38                                    ; $5B4E: $FF
    adc d                                         ; $5B4F: $8A
    rst RST_38                                    ; $5B50: $FF
    add b                                         ; $5B51: $80
    xor a                                         ; $5B52: $AF
    ld d, [hl]                                    ; $5B53: $56
    rst RST_38                                    ; $5B54: $FF
    add b                                         ; $5B55: $80
    ldh a, [$FFBF]                                ; $5B56: $F0 $BF
    cp a                                          ; $5B58: $BF
    ld c, a                                       ; $5B59: $4F
    cp a                                          ; $5B5A: $BF
    ld h, b                                       ; $5B5B: $60
    cp a                                          ; $5B5C: $BF
    ld h, b                                       ; $5B5D: $60
    cp a                                          ; $5B5E: $BF
    ld l, a                                       ; $5B5F: $6F
    ld a, a                                       ; $5B60: $7F
    add b                                         ; $5B61: $80
    cpl                                           ; $5B62: $2F
    rst RST_18                                    ; $5B63: $DF
    xor a                                         ; $5B64: $AF
    ld e, h                                       ; $5B65: $5C
    xor h                                         ; $5B66: $AC
    ld e, e                                       ; $5B67: $5B
    db $FC                                        ; $5B68: $FC
    dec de                                        ; $5B69: $1B
    sbc h                                         ; $5B6A: $9C
    inc bc                                        ; $5B6B: $03
    ld [bc], a                                    ; $5B6C: $02
    ld bc, $0102                                  ; $5B6D: $01 $02 $01
    add c                                         ; $5B70: $81
    nop                                           ; $5B71: $00
    add b                                         ; $5B72: $80
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
    ret nz                                        ; $5B80: $C0

    nop                                           ; $5B81: $00
    ld a, b                                       ; $5B82: $78
    ret nz                                        ; $5B83: $C0

    or [hl]                                       ; $5B84: $B6
    ld hl, sp-$23                                 ; $5B85: $F8 $DD
    and $F6                                       ; $5B87: $E6 $F6
    db $EB                                        ; $5B89: $EB
    rst RST_28                                    ; $5B8A: $EF
    pop af                                        ; $5B8B: $F1
    db $E3                                        ; $5B8C: $E3
    ccf                                           ; $5B8D: $3F
    ld a, a                                       ; $5B8E: $7F
    and e                                         ; $5B8F: $A3
    cp a                                          ; $5B90: $BF
    rrca                                          ; $5B91: $0F
    rra                                           ; $5B92: $1F
    dec c                                         ; $5B93: $0D
    ld a, a                                       ; $5B94: $7F
    ld e, $AF                                     ; $5B95: $1E $AF
    ld e, [hl]                                    ; $5B97: $5E
    rst RST_18                                    ; $5B98: $DF
    ld a, $9F                                     ; $5B99: $3E $9F
    ld a, h                                       ; $5B9B: $7C
    cp h                                          ; $5B9C: $BC
    ldh a, [rPCM34]                               ; $5B9D: $F0 $77
    ret nz                                        ; $5B9F: $C0

    ld hl, sp-$79                                 ; $5BA0: $F8 $87
    call c, Call_01C_4F3B                         ; $5BA2: $DC $3B $4F
    inc a                                         ; $5BA5: $3C
    cpl                                           ; $5BA6: $2F
    rra                                           ; $5BA7: $1F
    daa                                           ; $5BA8: $27
    rra                                           ; $5BA9: $1F
    rla                                           ; $5BAA: $17
    rrca                                          ; $5BAB: $0F
    dec bc                                        ; $5BAC: $0B
    rlca                                          ; $5BAD: $07
    dec bc                                        ; $5BAE: $0B
    ld b, $17                                     ; $5BAF: $06 $17
    ld c, $FF                                     ; $5BB1: $0E $FF
    rrca                                          ; $5BB3: $0F
    ld c, a                                       ; $5BB4: $4F
    or a                                          ; $5BB5: $B7
    adc a                                         ; $5BB6: $8F
    halt                                          ; $5BB7: $76
    cp $00                                        ; $5BB8: $FE $00
    nop                                           ; $5BBA: $00
    nop                                           ; $5BBB: $00
    nop                                           ; $5BBC: $00
    nop                                           ; $5BBD: $00
    nop                                           ; $5BBE: $00
    nop                                           ; $5BBF: $00
    rlca                                          ; $5BC0: $07
    nop                                           ; $5BC1: $00
    rrca                                          ; $5BC2: $0F
    rlca                                          ; $5BC3: $07
    dec de                                        ; $5BC4: $1B
    dec c                                         ; $5BC5: $0D
    db $10                                        ; $5BC6: $10
    rrca                                          ; $5BC7: $0F
    inc c                                         ; $5BC8: $0C
    rlca                                          ; $5BC9: $07
    rla                                           ; $5BCA: $17
    dec bc                                        ; $5BCB: $0B
    rla                                           ; $5BCC: $17
    ld [$030D], sp                                ; $5BCD: $08 $0D $03
    inc bc                                        ; $5BD0: $03
    nop                                           ; $5BD1: $00
    nop                                           ; $5BD2: $00
    nop                                           ; $5BD3: $00
    nop                                           ; $5BD4: $00
    nop                                           ; $5BD5: $00
    nop                                           ; $5BD6: $00
    nop                                           ; $5BD7: $00
    nop                                           ; $5BD8: $00
    nop                                           ; $5BD9: $00
    ld bc, $0200                                  ; $5BDA: $01 $00 $02
    ld bc, $0003                                  ; $5BDD: $01 $03 $00
    dec b                                         ; $5BE0: $05
    ld [bc], a                                    ; $5BE1: $02
    ld [bc], a                                    ; $5BE2: $02
    ld bc, $0001                                  ; $5BE3: $01 $01 $00
    nop                                           ; $5BE6: $00
    nop                                           ; $5BE7: $00
    nop                                           ; $5BE8: $00
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
    ld bc, $0200                                  ; $5BF6: $01 $00 $02
    ld bc, $0003                                  ; $5BF9: $01 $03 $00
    nop                                           ; $5BFC: $00
    nop                                           ; $5BFD: $00
    nop                                           ; $5BFE: $00
    nop                                           ; $5BFF: $00
    inc c                                         ; $5C00: $0C
    nop                                           ; $5C01: $00
    sub a                                         ; $5C02: $97
    inc c                                         ; $5C03: $0C
    ld d, a                                       ; $5C04: $57
    adc a                                         ; $5C05: $8F
    ld d, a                                       ; $5C06: $57
    adc a                                         ; $5C07: $8F
    cpl                                           ; $5C08: $2F
    rst RST_18                                    ; $5C09: $DF
    ld a, a                                       ; $5C0A: $7F
    add e                                         ; $5C0B: $83
    add e                                         ; $5C0C: $83
    ld a, l                                       ; $5C0D: $7D
    cp a                                          ; $5C0E: $BF
    ld a, [hl]                                    ; $5C0F: $7E
    ld a, a                                       ; $5C10: $7F
    pop af                                        ; $5C11: $F1
    ld hl, sp+$0F                                 ; $5C12: $F8 $0F
    add b                                         ; $5C14: $80
    rst RST_38                                    ; $5C15: $FF
    dec l                                         ; $5C16: $2D
    rst RST_38                                    ; $5C17: $FF
    ld l, l                                       ; $5C18: $6D
    rst RST_38                                    ; $5C19: $FF
    db $FD                                        ; $5C1A: $FD
    rst RST_38                                    ; $5C1B: $FF
    rst RST_38                                    ; $5C1C: $FF
    rrca                                          ; $5C1D: $0F
    rst RST_08                                    ; $5C1E: $CF
    add b                                         ; $5C1F: $80
    add a                                         ; $5C20: $87
    inc bc                                        ; $5C21: $03
    rst RST_00                                    ; $5C22: $C7
    add e                                         ; $5C23: $83
    rst RST_00                                    ; $5C24: $C7
    inc bc                                        ; $5C25: $03
    ld c, a                                       ; $5C26: $4F
    add a                                         ; $5C27: $87
    cpl                                           ; $5C28: $2F
    add $3E                                       ; $5C29: $C6 $3E
    ret nz                                        ; $5C2B: $C0

    inc e                                         ; $5C2C: $1C
    add sp, $1C                                   ; $5C2D: $E8 $1C
    add sp, $1E                                   ; $5C2F: $E8 $1E
    add sp, -$03                                  ; $5C31: $E8 $FD
    ld a, [de]                                    ; $5C33: $1A
    ld sp, hl                                     ; $5C34: $F9
    halt                                          ; $5C35: $76
    ld a, a                                       ; $5C36: $7F
    nop                                           ; $5C37: $00
    nop                                           ; $5C38: $00
    nop                                           ; $5C39: $00
    nop                                           ; $5C3A: $00
    nop                                           ; $5C3B: $00
    nop                                           ; $5C3C: $00
    nop                                           ; $5C3D: $00
    nop                                           ; $5C3E: $00
    nop                                           ; $5C3F: $00
    add b                                         ; $5C40: $80
    nop                                           ; $5C41: $00
    ret nz                                        ; $5C42: $C0

    add b                                         ; $5C43: $80
    ldh [$FFC0], a                                ; $5C44: $E0 $C0
    ldh [$FFC0], a                                ; $5C46: $E0 $C0
    ldh a, [$FFE0]                                ; $5C48: $F0 $E0
    ld hl, sp+$00                                 ; $5C4A: $F8 $00
    db $FC                                        ; $5C4C: $FC
    ld hl, sp-$12                                 ; $5C4D: $F8 $EE
    db $FC                                        ; $5C4F: $FC
    halt                                          ; $5C50: $76
    db $FC                                        ; $5C51: $FC
    halt                                          ; $5C52: $76
    db $FC                                        ; $5C53: $FC
    cp [hl]                                       ; $5C54: $BE
    db $FC                                        ; $5C55: $FC
    cp h                                          ; $5C56: $BC
    ld hl, sp-$08                                 ; $5C57: $F8 $F8
    ldh [$FFE0], a                                ; $5C59: $E0 $E0
    nop                                           ; $5C5B: $00

jr_01C_5C5C:
    ldh [$FFC0], a                                ; $5C5C: $E0 $C0
    ret nz                                        ; $5C5E: $C0

    add b                                         ; $5C5F: $80
    ret nz                                        ; $5C60: $C0

    add b                                         ; $5C61: $80
    add b                                         ; $5C62: $80
    nop                                           ; $5C63: $00
    nop                                           ; $5C64: $00
    nop                                           ; $5C65: $00
    nop                                           ; $5C66: $00
    nop                                           ; $5C67: $00
    nop                                           ; $5C68: $00
    nop                                           ; $5C69: $00
    nop                                           ; $5C6A: $00
    nop                                           ; $5C6B: $00
    nop                                           ; $5C6C: $00
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
    nop                                           ; $5C80: $00
    nop                                           ; $5C81: $00
    rlca                                          ; $5C82: $07
    nop                                           ; $5C83: $00
    ld a, c                                       ; $5C84: $79
    rlca                                          ; $5C85: $07
    rst RST_20                                    ; $5C86: $E7
    ld e, a                                       ; $5C87: $5F
    and c                                         ; $5C88: $A1
    ld e, a                                       ; $5C89: $5F
    rst RST_08                                    ; $5C8A: $CF
    ld a, a                                       ; $5C8B: $7F
    ld a, a                                       ; $5C8C: $7F
    nop                                           ; $5C8D: $00
    ld a, [hl+]                                   ; $5C8E: $2A
    dec d                                         ; $5C8F: $15
    ld [hl], l                                    ; $5C90: $75
    ld a, [bc]                                    ; $5C91: $0A
    ld l, a                                       ; $5C92: $6F
    jr nc, jr_01C_5CD0                            ; $5C93: $30 $3B

    rra                                           ; $5C95: $1F
    rra                                           ; $5C96: $1F
    nop                                           ; $5C97: $00
    nop                                           ; $5C98: $00
    nop                                           ; $5C99: $00
    nop                                           ; $5C9A: $00
    nop                                           ; $5C9B: $00
    nop                                           ; $5C9C: $00
    nop                                           ; $5C9D: $00
    nop                                           ; $5C9E: $00
    nop                                           ; $5C9F: $00
    jr nc, jr_01C_5CA2                            ; $5CA0: $30 $00

jr_01C_5CA2:
    ret c                                         ; $5CA2: $D8

    jr nc, jr_01C_5C5C                            ; $5CA3: $30 $B7

    ld hl, sp-$01                                 ; $5CA5: $F8 $FF
    rlca                                          ; $5CA7: $07
    sbc $A5                                       ; $5CA8: $DE $A5
    ei                                            ; $5CAA: $FB
    rst RST_08                                    ; $5CAB: $CF
    rst RST_20                                    ; $5CAC: $E7
    rst RST_38                                    ; $5CAD: $FF
    rst RST_38                                    ; $5CAE: $FF

jr_01C_5CAF:
    ld e, l                                       ; $5CAF: $5D
    rst RST_38                                    ; $5CB0: $FF
    dec e                                         ; $5CB1: $1D
    ld a, a                                       ; $5CB2: $7F

Call_01C_5CB3:
    sbc [hl]                                      ; $5CB3: $9E
    rst RST_38                                    ; $5CB4: $FF
    ld l, [hl]                                    ; $5CB5: $6E
    rst RST_38                                    ; $5CB6: $FF
    cp $FE                                        ; $5CB7: $FE $FE
    ld a, h                                       ; $5CB9: $7C
    ld a, h                                       ; $5CBA: $7C
    nop                                           ; $5CBB: $00
    nop                                           ; $5CBC: $00
    nop                                           ; $5CBD: $00
    nop                                           ; $5CBE: $00
    nop                                           ; $5CBF: $00
    cpl                                           ; $5CC0: $2F
    jr jr_01C_5CAF                                ; $5CC1: $18 $EC

    dec de                                        ; $5CC3: $1B
    sbc $EB                                       ; $5CC4: $DE $EB
    rra                                           ; $5CC6: $1F
    db $E3                                        ; $5CC7: $E3
    ld d, e                                       ; $5CC8: $53
    db $ED                                        ; $5CC9: $ED
    pop af                                        ; $5CCA: $F1
    xor $5F                                       ; $5CCB: $EE $5F
    ldh [$FFDF], a                                ; $5CCD: $E0 $DF
    rst RST_28                                    ; $5CCF: $EF

jr_01C_5CD0:
    rst RST_38                                    ; $5CD0: $FF
    rst RST_28                                    ; $5CD1: $EF
    rst RST_38                                    ; $5CD2: $FF
    rra                                           ; $5CD3: $1F
    ccf                                           ; $5CD4: $3F
    rra                                           ; $5CD5: $1F
    rra                                           ; $5CD6: $1F
    ld [$070B], sp                                ; $5CD7: $08 $0B $07
    add hl, bc                                    ; $5CDA: $09
    rlca                                          ; $5CDB: $07
    dec b                                         ; $5CDC: $05
    inc bc                                        ; $5CDD: $03
    inc b                                         ; $5CDE: $04
    inc bc                                        ; $5CDF: $03
    sbc $81                                       ; $5CE0: $DE $81
    rst RST_28                                    ; $5CE2: $EF
    ld b, $3F                                     ; $5CE3: $06 $3F
    ldh [$FFBF], a                                ; $5CE5: $E0 $BF
    ldh [c], a                                    ; $5CE7: $E2
    rst RST_38                                    ; $5CE8: $FF
    add sp, -$01                                  ; $5CE9: $E8 $FF
    rst RST_28                                    ; $5CEB: $EF
    rst RST_38                                    ; $5CEC: $FF
    ld l, a                                       ; $5CED: $6F
    ld a, [$FA95]                                 ; $5CEE: $FA $95 $FA
    push de                                       ; $5CF1: $D5
    rst RST_18                                    ; $5CF2: $DF
    adc a                                         ; $5CF3: $8F
    rst RST_28                                    ; $5CF4: $EF
    nop                                           ; $5CF5: $00
    rra                                           ; $5CF6: $1F
    rst RST_20                                    ; $5CF7: $E7
    add a                                         ; $5CF8: $87
    ld a, b                                       ; $5CF9: $78
    push hl                                       ; $5CFA: $E5
    sbc e                                         ; $5CFB: $9B
    push af                                       ; $5CFC: $F5
    db $EB                                        ; $5CFD: $EB

Call_01C_5CFE:
    push af                                       ; $5CFE: $F5
    db $EB                                        ; $5CFF: $EB
    ld c, b                                       ; $5D00: $48
    or b                                          ; $5D01: $B0
    ret z                                         ; $5D02: $C8

    ld [hl], b                                    ; $5D03: $70
    adc a                                         ; $5D04: $8F
    ldh a, [$FFF8]                                ; $5D05: $F0 $F8
    rst RST_00                                    ; $5D07: $C7
    rst RST_38                                    ; $5D08: $FF
    inc bc                                        ; $5D09: $03
    xor e                                         ; $5D0A: $AB
    ld d, l                                       ; $5D0B: $55
    rst RST_38                                    ; $5D0C: $FF
    add d                                         ; $5D0D: $82
    ei                                            ; $5D0E: $FB
    sbc [hl]                                      ; $5D0F: $9E
    db $DB                                        ; $5D10: $DB
    ld l, [hl]                                    ; $5D11: $6E
    sbc $6D                                       ; $5D12: $DE $6D
    call c, $DE63                                 ; $5D14: $DC $63 $DE
    ld h, a                                       ; $5D17: $67
    cp $0F                                        ; $5D18: $FE $0F
    cp $F7                                        ; $5D1A: $FE $F7
    rst RST_38                                    ; $5D1C: $FF
    add a                                         ; $5D1D: $87
    add a                                         ; $5D1E: $87
    ld a, b                                       ; $5D1F: $78
    nop                                           ; $5D20: $00
    nop                                           ; $5D21: $00
    nop                                           ; $5D22: $00
    nop                                           ; $5D23: $00
    nop                                           ; $5D24: $00
    nop                                           ; $5D25: $00
    add b                                         ; $5D26: $80
    nop                                           ; $5D27: $00
    add b                                         ; $5D28: $80
    nop                                           ; $5D29: $00
    add b                                         ; $5D2A: $80
    nop                                           ; $5D2B: $00
    nop                                           ; $5D2C: $00
    nop                                           ; $5D2D: $00
    nop                                           ; $5D2E: $00
    nop                                           ; $5D2F: $00
    ret nz                                        ; $5D30: $C0

    nop                                           ; $5D31: $00
    ld a, h                                       ; $5D32: $7C
    ret nz                                        ; $5D33: $C0

jr_01C_5D34:
    rlca                                          ; $5D34: $07
    db $FC                                        ; $5D35: $FC
    ret nc                                        ; $5D36: $D0

    rst RST_38                                    ; $5D37: $FF
    db $DB                                        ; $5D38: $DB
    rst RST_38                                    ; $5D39: $FF
    rst RST_38                                    ; $5D3A: $FF
    db $FC                                        ; $5D3B: $FC
    db $FC                                        ; $5D3C: $FC
    ret nz                                        ; $5D3D: $C0

    ret nz                                        ; $5D3E: $C0

    nop                                           ; $5D3F: $00
    ldh a, [rP1]                                  ; $5D40: $F0 $00
    jr c, jr_01C_5D34                             ; $5D42: $38 $F0

    ldh a, [$FFC0]                                ; $5D44: $F0 $C0
    ret nz                                        ; $5D46: $C0

    nop                                           ; $5D47: $00
    nop                                           ; $5D48: $00
    nop                                           ; $5D49: $00
    nop                                           ; $5D4A: $00
    nop                                           ; $5D4B: $00
    nop                                           ; $5D4C: $00
    nop                                           ; $5D4D: $00
    nop                                           ; $5D4E: $00
    nop                                           ; $5D4F: $00
    nop                                           ; $5D50: $00
    nop                                           ; $5D51: $00
    nop                                           ; $5D52: $00
    nop                                           ; $5D53: $00
    nop                                           ; $5D54: $00
    nop                                           ; $5D55: $00
    nop                                           ; $5D56: $00
    nop                                           ; $5D57: $00
    nop                                           ; $5D58: $00
    nop                                           ; $5D59: $00
    nop                                           ; $5D5A: $00
    nop                                           ; $5D5B: $00
    nop                                           ; $5D5C: $00
    nop                                           ; $5D5D: $00
    nop                                           ; $5D5E: $00
    nop                                           ; $5D5F: $00
    nop                                           ; $5D60: $00
    nop                                           ; $5D61: $00
    nop                                           ; $5D62: $00
    nop                                           ; $5D63: $00
    nop                                           ; $5D64: $00
    nop                                           ; $5D65: $00
    nop                                           ; $5D66: $00
    nop                                           ; $5D67: $00
    nop                                           ; $5D68: $00
    nop                                           ; $5D69: $00
    nop                                           ; $5D6A: $00
    nop                                           ; $5D6B: $00
    nop                                           ; $5D6C: $00
    nop                                           ; $5D6D: $00
    nop                                           ; $5D6E: $00
    nop                                           ; $5D6F: $00
    nop                                           ; $5D70: $00
    nop                                           ; $5D71: $00
    nop                                           ; $5D72: $00
    nop                                           ; $5D73: $00
    nop                                           ; $5D74: $00
    nop                                           ; $5D75: $00
    inc c                                         ; $5D76: $0C
    nop                                           ; $5D77: $00
    ld [hl-], a                                   ; $5D78: $32
    inc c                                         ; $5D79: $0C
    ld b, [hl]                                    ; $5D7A: $46
    inc a                                         ; $5D7B: $3C
    sbc [hl]                                      ; $5D7C: $9E
    ld a, h                                       ; $5D7D: $7C
    cp [hl]                                       ; $5D7E: $BE
    ld a, h                                       ; $5D7F: $7C
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
    ld a, [hl]                                    ; $5D98: $7E
    nop                                           ; $5D99: $00
    pop hl                                        ; $5D9A: $E1
    ld e, $E6                                     ; $5D9B: $1E $E6
    ld e, c                                       ; $5D9D: $59
    ld [$0055], a                                 ; $5D9E: $EA $55 $00
    nop                                           ; $5DA1: $00
    nop                                           ; $5DA2: $00
    nop                                           ; $5DA3: $00
    nop                                           ; $5DA4: $00
    nop                                           ; $5DA5: $00
    nop                                           ; $5DA6: $00
    nop                                           ; $5DA7: $00
    nop                                           ; $5DA8: $00
    nop                                           ; $5DA9: $00
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
    nop                                           ; $5DBB: $00
    add b                                         ; $5DBC: $80
    nop                                           ; $5DBD: $00
    add b                                         ; $5DBE: $80
    nop                                           ; $5DBF: $00
    rla                                           ; $5DC0: $17
    rrca                                          ; $5DC1: $0F
    dec bc                                        ; $5DC2: $0B
    rlca                                          ; $5DC3: $07
    rlca                                          ; $5DC4: $07
    ld [bc], a                                    ; $5DC5: $02
    dec bc                                        ; $5DC6: $0B
    rlca                                          ; $5DC7: $07
    ccf                                           ; $5DC8: $3F
    inc bc                                        ; $5DC9: $03
    ld d, e                                       ; $5DCA: $53
    dec l                                         ; $5DCB: $2D
    and e                                         ; $5DCC: $A3
    ld e, l                                       ; $5DCD: $5D
    rst RST_38                                    ; $5DCE: $FF
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
    db $FC                                        ; $5DE0: $FC
    dec de                                        ; $5DE1: $1B
    sbc [hl]                                      ; $5DE2: $9E
    ld bc, $81C2                                  ; $5DE3: $01 $C2 $81
    pop hl                                        ; $5DE6: $E1
    ret nz                                        ; $5DE7: $C0

    ldh [$FFC0], a                                ; $5DE8: $E0 $C0
    ret nz                                        ; $5DEA: $C0

    add b                                         ; $5DEB: $80
    add b                                         ; $5DEC: $80
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
    db $10                                        ; $5E00: $10
    ldh [rNR32], a                                ; $5E01: $E0 $1C
    ldh [$FF0E], a                                ; $5E03: $E0 $0E
    db $F4                                        ; $5E05: $F4
    ld c, $F4                                     ; $5E06: $0E $F4
    adc a                                         ; $5E08: $8F
    ld [hl], h                                    ; $5E09: $74
    ld a, [hl]                                    ; $5E0A: $7E
    dec c                                         ; $5E0B: $0D
    ld a, h                                       ; $5E0C: $7C
    dec sp                                        ; $5E0D: $3B
    ccf                                           ; $5E0E: $3F
    nop                                           ; $5E0F: $00
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
    add b                                         ; $5E20: $80
    nop                                           ; $5E21: $00
    ld b, b                                       ; $5E22: $40
    add b                                         ; $5E23: $80
    ret nz                                        ; $5E24: $C0

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
    nop                                           ; $5E3A: $00
    nop                                           ; $5E3B: $00
    nop                                           ; $5E3C: $00
    nop                                           ; $5E3D: $00
    nop                                           ; $5E3E: $00
    nop                                           ; $5E3F: $00
    ccf                                           ; $5E40: $3F
    nop                                           ; $5E41: $00
    ld [hl], b                                    ; $5E42: $70
    rrca                                          ; $5E43: $0F
    ld [hl], b                                    ; $5E44: $70
    cpl                                           ; $5E45: $2F
    ld [hl], a                                    ; $5E46: $77
    jr z, @+$7B                                   ; $5E47: $28 $79

    ld b, $3F                                     ; $5E49: $06 $3F
    add hl, de                                    ; $5E4B: $19
    cp $03                                        ; $5E4C: $FE $03
    rst RST_38                                    ; $5E4E: $FF
    jp z, $80FF                                   ; $5E4F: $CA $FF $80

    xor a                                         ; $5E52: $AF
    ld d, [hl]                                    ; $5E53: $56
    rst RST_38                                    ; $5E54: $FF
    add b                                         ; $5E55: $80
    ldh a, [$FFBF]                                ; $5E56: $F0 $BF
    cp a                                          ; $5E58: $BF
    ld c, a                                       ; $5E59: $4F
    cp a                                          ; $5E5A: $BF
    ld h, b                                       ; $5E5B: $60
    cp a                                          ; $5E5C: $BF
    ld h, b                                       ; $5E5D: $60
    cp a                                          ; $5E5E: $BF
    ld l, a                                       ; $5E5F: $6F
    ld a, a                                       ; $5E60: $7F
    add b                                         ; $5E61: $80
    cpl                                           ; $5E62: $2F
    rst RST_18                                    ; $5E63: $DF
    xor a                                         ; $5E64: $AF
    ld e, h                                       ; $5E65: $5C
    xor h                                         ; $5E66: $AC
    ld e, e                                       ; $5E67: $5B
    db $FC                                        ; $5E68: $FC
    dec de                                        ; $5E69: $1B
    sbc h                                         ; $5E6A: $9C
    inc bc                                        ; $5E6B: $03
    ld [bc], a                                    ; $5E6C: $02
    ld bc, $0102                                  ; $5E6D: $01 $02 $01
    add c                                         ; $5E70: $81
    nop                                           ; $5E71: $00
    add b                                         ; $5E72: $80
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
    inc bc                                        ; $5E80: $03
    nop                                           ; $5E81: $00
    ld a, l                                       ; $5E82: $7D
    inc bc                                        ; $5E83: $03
    rst RST_20                                    ; $5E84: $E7
    ld e, [hl]                                    ; $5E85: $5E
    and c                                         ; $5E86: $A1
    ld e, [hl]                                    ; $5E87: $5E
    rst RST_08                                    ; $5E88: $CF
    ld a, [hl]                                    ; $5E89: $7E
    ld a, a                                       ; $5E8A: $7F
    nop                                           ; $5E8B: $00
    ld a, [hl+]                                   ; $5E8C: $2A
    dec d                                         ; $5E8D: $15
    rra                                           ; $5E8E: $1F
    ld [$0738], sp                                ; $5E8F: $08 $38 $07
    ld e, h                                       ; $5E92: $5C
    dec sp                                        ; $5E93: $3B
    ld c, a                                       ; $5E94: $4F
    inc a                                         ; $5E95: $3C
    cpl                                           ; $5E96: $2F
    rra                                           ; $5E97: $1F
    daa                                           ; $5E98: $27
    rra                                           ; $5E99: $1F
    rla                                           ; $5E9A: $17
    rrca                                          ; $5E9B: $0F
    dec bc                                        ; $5E9C: $0B
    rlca                                          ; $5E9D: $07
    dec bc                                        ; $5E9E: $0B
    ld b, $17                                     ; $5E9F: $06 $17
    ld c, $FF                                     ; $5EA1: $0E $FF
    rrca                                          ; $5EA3: $0F
    ld c, a                                       ; $5EA4: $4F
    or a                                          ; $5EA5: $B7
    adc a                                         ; $5EA6: $8F
    halt                                          ; $5EA7: $76
    cp $00                                        ; $5EA8: $FE $00
    nop                                           ; $5EAA: $00
    nop                                           ; $5EAB: $00
    nop                                           ; $5EAC: $00
    nop                                           ; $5EAD: $00
    nop                                           ; $5EAE: $00
    nop                                           ; $5EAF: $00
    nop                                           ; $5EB0: $00
    nop                                           ; $5EB1: $00
    nop                                           ; $5EB2: $00
    nop                                           ; $5EB3: $00
    nop                                           ; $5EB4: $00
    nop                                           ; $5EB5: $00
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
    ld bc, $0200                                  ; $5EC0: $01 $00 $02
    ld bc, $0003                                  ; $5EC3: $01 $03 $00
    nop                                           ; $5EC6: $00
    nop                                           ; $5EC7: $00
    nop                                           ; $5EC8: $00
    nop                                           ; $5EC9: $00
    nop                                           ; $5ECA: $00
    nop                                           ; $5ECB: $00
    nop                                           ; $5ECC: $00
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
    ldh [$FFC0], a                                ; $5EE0: $E0 $C0
    ldh a, [$FFE0]                                ; $5EE2: $F0 $E0
    ld hl, sp+$70                                 ; $5EE4: $F8 $70
    ld a, h                                       ; $5EE6: $7C
    cp b                                          ; $5EE7: $B8
    cp h                                          ; $5EE8: $BC
    ret c                                         ; $5EE9: $D8

    cp $DC                                        ; $5EEA: $FE $DC
    sbc $EC                                       ; $5EEC: $DE $EC
    rst RST_38                                    ; $5EEE: $FF
    xor $FF                                       ; $5EEF: $EE $FF
    or $FF                                        ; $5EF1: $F6 $FF
    or $FF                                        ; $5EF3: $F6 $FF
    ld a, [$7AFF]                                 ; $5EF5: $FA $FF $7A
    ld a, [hl]                                    ; $5EF8: $7E
    jr c, jr_01C_5F77                             ; $5EF9: $38 $7C

    jr c, @+$3E                                   ; $5EFB: $38 $3C

    jr jr_01C_5F37                                ; $5EFD: $18 $38

    db $10                                        ; $5EFF: $10
    ld a, a                                       ; $5F00: $7F
    add e                                         ; $5F01: $83
    jp Jump_000_003C                              ; $5F02: $C3 $3C $00


    rst RST_38                                    ; $5F05: $FF
    ld a, [hl]                                    ; $5F06: $7E

jr_01C_5F07:
    rst RST_38                                    ; $5F07: $FF
    rst RST_38                                    ; $5F08: $FF
    rst RST_38                                    ; $5F09: $FF
    rst RST_38                                    ; $5F0A: $FF
    rst RST_38                                    ; $5F0B: $FF
    rst RST_38                                    ; $5F0C: $FF
    ld a, a                                       ; $5F0D: $7F
    rst RST_38                                    ; $5F0E: $FF
    sbc a                                         ; $5F0F: $9F
    rst RST_38                                    ; $5F10: $FF
    rst RST_20                                    ; $5F11: $E7
    rst RST_38                                    ; $5F12: $FF
    pop bc                                        ; $5F13: $C1
    ld sp, hl                                     ; $5F14: $F9
    jr nc, jr_01C_5F07                            ; $5F15: $30 $F0

    ldh [$FFF8], a                                ; $5F17: $E0 $F8
    nop                                           ; $5F19: $00
    db $FC                                        ; $5F1A: $FC
    ld hl, sp-$04                                 ; $5F1B: $F8 $FC
    ret nz                                        ; $5F1D: $C0

    call nz, Call_01C_7EB8                        ; $5F1E: $C4 $B8 $7E
    inc hl                                        ; $5F21: $23
    halt                                          ; $5F22: $76
    dec bc                                        ; $5F23: $0B
    ccf                                           ; $5F24: $3F
    ld [de], a                                    ; $5F25: $12
    cp $01                                        ; $5F26: $FE $01
    ccf                                           ; $5F28: $3F
    sbc $3F                                       ; $5F29: $DE $3F
    xor $FF                                       ; $5F2B: $EE $FF
    rst RST_28                                    ; $5F2D: $EF
    rst RST_38                                    ; $5F2E: $FF
    rst RST_18                                    ; $5F2F: $DF
    rst RST_38                                    ; $5F30: $FF
    ccf                                           ; $5F31: $3F
    ccf                                           ; $5F32: $3F
    rra                                           ; $5F33: $1F
    ld a, a                                       ; $5F34: $7F
    nop                                           ; $5F35: $00
    adc a                                         ; $5F36: $8F

jr_01C_5F37:
    ld [hl], e                                    ; $5F37: $73
    jp $F2BC                                      ; $5F38: $C3 $BC $F2


    call $F5FA                                    ; $5F3B: $CD $FA $F5
    ld a, d                                       ; $5F3E: $7A
    push af                                       ; $5F3F: $F5
    nop                                           ; $5F40: $00
    nop                                           ; $5F41: $00
    nop                                           ; $5F42: $00
    nop                                           ; $5F43: $00
    nop                                           ; $5F44: $00
    nop                                           ; $5F45: $00
    rrca                                          ; $5F46: $0F
    nop                                           ; $5F47: $00
    ld [$0C07], sp                                ; $5F48: $08 $07 $0C
    rlca                                          ; $5F4B: $07
    rlca                                          ; $5F4C: $07
    inc bc                                        ; $5F4D: $03
    dec bc                                        ; $5F4E: $0B
    inc b                                         ; $5F4F: $04
    ldh a, [rIF]                                  ; $5F50: $F0 $0F
    ld sp, hl                                     ; $5F52: $F9
    or $3E                                        ; $5F53: $F6 $3E
    ld hl, sp+$1F                                 ; $5F55: $F8 $1F
    ld hl, sp-$23                                 ; $5F57: $F8 $DD
    ei                                            ; $5F59: $FB
    db $FD                                        ; $5F5A: $FD
    di                                            ; $5F5B: $F3
    ld a, d                                       ; $5F5C: $7A
    pop af                                        ; $5F5D: $F1
    ldh a, [c]                                    ; $5F5E: $F2
    pop hl                                        ; $5F5F: $E1
    ld bc, $0700                                  ; $5F60: $01 $00 $07
    ld bc, $070E                                  ; $5F63: $01 $0E $07
    jr jr_01C_5F77                                ; $5F66: $18 $0F

    dec a                                         ; $5F68: $3D
    rra                                           ; $5F69: $1F
    ld [hl], b                                    ; $5F6A: $70
    ccf                                           ; $5F6B: $3F
    rst RST_00                                    ; $5F6C: $C7
    ld a, a                                       ; $5F6D: $7F
    add e                                         ; $5F6E: $83
    ld a, a                                       ; $5F6F: $7F
    ret c                                         ; $5F70: $D8

    ld hl, sp+$08                                 ; $5F71: $F8 $08
    ld hl, sp+$38                                 ; $5F73: $F8 $38
    ld hl, sp+$78                                 ; $5F75: $F8 $78

jr_01C_5F77:
    ldh a, [$FFF0]                                ; $5F77: $F0 $F0
    add b                                         ; $5F79: $80
    add b                                         ; $5F7A: $80
    nop                                           ; $5F7B: $00
    nop                                           ; $5F7C: $00
    nop                                           ; $5F7D: $00
    nop                                           ; $5F7E: $00
    nop                                           ; $5F7F: $00
    ld bc, $0100                                  ; $5F80: $01 $00 $01
    nop                                           ; $5F83: $00
    inc bc                                        ; $5F84: $03
    ld bc, $0306                                  ; $5F85: $01 $06 $03
    inc b                                         ; $5F88: $04
    inc bc                                        ; $5F89: $03
    dec bc                                        ; $5F8A: $0B
    rlca                                          ; $5F8B: $07
    rra                                           ; $5F8C: $1F
    inc c                                         ; $5F8D: $0C
    inc e                                         ; $5F8E: $1C
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
    nop                                           ; $5F9C: $00
    nop                                           ; $5F9D: $00
    nop                                           ; $5F9E: $00
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
    nop                                           ; $5FAA: $00
    nop                                           ; $5FAB: $00
    nop                                           ; $5FAC: $00
    nop                                           ; $5FAD: $00
    nop                                           ; $5FAE: $00
    nop                                           ; $5FAF: $00
    nop                                           ; $5FB0: $00
    nop                                           ; $5FB1: $00
    nop                                           ; $5FB2: $00
    nop                                           ; $5FB3: $00
    nop                                           ; $5FB4: $00
    nop                                           ; $5FB5: $00
    nop                                           ; $5FB6: $00
    nop                                           ; $5FB7: $00
    nop                                           ; $5FB8: $00
    nop                                           ; $5FB9: $00
    ld a, [hl]                                    ; $5FBA: $7E
    nop                                           ; $5FBB: $00
    pop hl                                        ; $5FBC: $E1
    ld e, $E0                                     ; $5FBD: $1E $E0
    ld e, a                                       ; $5FBF: $5F
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
    nop                                           ; $5FD6: $00
    nop                                           ; $5FD7: $00
    nop                                           ; $5FD8: $00
    nop                                           ; $5FD9: $00
    nop                                           ; $5FDA: $00
    nop                                           ; $5FDB: $00
    ld e, $00                                     ; $5FDC: $1E $00
    and e                                         ; $5FDE: $A3
    ld e, $00                                     ; $5FDF: $1E $00
    nop                                           ; $5FE1: $00
    nop                                           ; $5FE2: $00
    nop                                           ; $5FE3: $00
    nop                                           ; $5FE4: $00
    nop                                           ; $5FE5: $00
    nop                                           ; $5FE6: $00
    nop                                           ; $5FE7: $00
    nop                                           ; $5FE8: $00
    nop                                           ; $5FE9: $00
    nop                                           ; $5FEA: $00
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
    add b                                         ; $5FFE: $80
    nop                                           ; $5FFF: $00
    db $FC                                        ; $6000: $FC
    ld hl, sp-$08                                 ; $6001: $F8 $F8
    ldh [$FFE0], a                                ; $6003: $E0 $E0
    add b                                         ; $6005: $80
    add b                                         ; $6006: $80
    nop                                           ; $6007: $00
    nop                                           ; $6008: $00
    nop                                           ; $6009: $00
    ld bc, $0200                                  ; $600A: $01 $00 $02
    ld bc, $0003                                  ; $600D: $01 $03 $00
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
    cpl                                           ; $6020: $2F
    ld e, $17                                     ; $6021: $1E $17
    ld c, $0B                                     ; $6023: $0E $0B
    ld b, $17                                     ; $6025: $06 $17
    ld c, $FF                                     ; $6027: $0E $FF
    rrca                                          ; $6029: $0F
    ld c, a                                       ; $602A: $4F
    or a                                          ; $602B: $B7
    adc a                                         ; $602C: $8F
    halt                                          ; $602D: $76
    cp $00                                        ; $602E: $FE $00
    nop                                           ; $6030: $00
    nop                                           ; $6031: $00
    nop                                           ; $6032: $00
    nop                                           ; $6033: $00
    nop                                           ; $6034: $00
    nop                                           ; $6035: $00

jr_01C_6036:
    nop                                           ; $6036: $00
    nop                                           ; $6037: $00

jr_01C_6038:
    nop                                           ; $6038: $00
    nop                                           ; $6039: $00
    nop                                           ; $603A: $00
    nop                                           ; $603B: $00
    nop                                           ; $603C: $00
    nop                                           ; $603D: $00
    nop                                           ; $603E: $00
    nop                                           ; $603F: $00
    ld hl, sp+$37                                 ; $6040: $F8 $37
    jr c, @+$09                                   ; $6042: $38 $07

    inc b                                         ; $6044: $04
    inc bc                                        ; $6045: $03
    inc b                                         ; $6046: $04
    inc bc                                        ; $6047: $03
    add d                                         ; $6048: $82
    ld bc, $0083                                  ; $6049: $01 $83 $00
    ld bc, $0000                                  ; $604C: $01 $00 $00
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
    ld b, a                                       ; $6060: $47
    add d                                         ; $6061: $82
    halt                                          ; $6062: $76
    add b                                         ; $6063: $80
    jr c, jr_01C_6036                             ; $6064: $38 $D0

    jr c, jr_01C_6038                             ; $6066: $38 $D0

    inc a                                         ; $6068: $3C
    ret nc                                        ; $6069: $D0

    ld a, [$F134]                                 ; $606A: $FA $34 $F1
    xor $FF                                       ; $606D: $EE $FF
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
    rra                                           ; $6080: $1F
    nop                                           ; $6081: $00
    ld a, [bc]                                    ; $6082: $0A
    dec b                                         ; $6083: $05
    rlca                                          ; $6084: $07
    ld [bc], a                                    ; $6085: $02
    ld c, $01                                     ; $6086: $0E $01
    rla                                           ; $6088: $17
    ld c, $13                                     ; $6089: $0E $13
    rrca                                          ; $608B: $0F
    dec bc                                        ; $608C: $0B
    rlca                                          ; $608D: $07
    add hl, bc                                    ; $608E: $09
    rlca                                          ; $608F: $07
    dec b                                         ; $6090: $05
    inc bc                                        ; $6091: $03
    ld [bc], a                                    ; $6092: $02
    ld bc, $0102                                  ; $6093: $01 $02 $01
    dec b                                         ; $6096: $05
    inc bc                                        ; $6097: $03
    ccf                                           ; $6098: $3F
    inc bc                                        ; $6099: $03
    ld d, e                                       ; $609A: $53
    dec l                                         ; $609B: $2D
    and e                                         ; $609C: $A3
    ld e, l                                       ; $609D: $5D
    rst RST_38                                    ; $609E: $FF
    nop                                           ; $609F: $00
    xor $13                                       ; $60A0: $EE $13
    xor a                                         ; $60A2: $AF
    ld e, e                                       ; $60A3: $5B
    rst RST_28                                    ; $60A4: $EF
    jr jr_01C_60D6                                ; $60A5: $18 $2F

    db $DB                                        ; $60A7: $DB
    rra                                           ; $60A8: $1F
    ldh [$FFCB], a                                ; $60A9: $E0 $CB
    scf                                           ; $60AB: $37
    db $EB                                        ; $60AC: $EB
    rst RST_10                                    ; $60AD: $D7
    db $EB                                        ; $60AE: $EB
    sub $FF                                       ; $60AF: $D6 $FF
    add $E7                                       ; $60B1: $C6 $E7
    ret nz                                        ; $60B3: $C0

    ret nz                                        ; $60B4: $C0

    add b                                         ; $60B5: $80
    ret nz                                        ; $60B6: $C0

    add b                                         ; $60B7: $80
    ldh [$FFC0], a                                ; $60B8: $E0 $C0
    ldh [$FFC0], a                                ; $60BA: $E0 $C0
    ret nz                                        ; $60BC: $C0

    add b                                         ; $60BD: $80
    add b                                         ; $60BE: $80
    nop                                           ; $60BF: $00
    cp a                                          ; $60C0: $BF
    ld d, [hl]                                    ; $60C1: $56
    rst RST_38                                    ; $60C2: $FF
    di                                            ; $60C3: $F3
    ei                                            ; $60C4: $FB
    ld bc, $E1F3                                  ; $60C5: $01 $F3 $E1
    pop hl                                        ; $60C8: $E1
    nop                                           ; $60C9: $00
    pop af                                        ; $60CA: $F1
    ldh [$FFF1], a                                ; $60CB: $E0 $F1
    nop                                           ; $60CD: $00
    inc de                                        ; $60CE: $13
    pop hl                                        ; $60CF: $E1
    dec bc                                        ; $60D0: $0B
    pop af                                        ; $60D1: $F1
    rrca                                          ; $60D2: $0F
    ldh a, [$FF87]                                ; $60D3: $F0 $87
    ld a, d                                       ; $60D5: $7A

jr_01C_60D6:
    add a                                         ; $60D6: $87
    ld a, d                                       ; $60D7: $7A
    ld b, a                                       ; $60D8: $47
    ld a, [hl-]                                   ; $60D9: $3A
    ccf                                           ; $60DA: $3F
    ld b, $3E                                     ; $60DB: $06 $3E
    dec e                                         ; $60DD: $1D
    rra                                           ; $60DE: $1F
    nop                                           ; $60DF: $00
    ccf                                           ; $60E0: $3F
    sbc $FB                                       ; $60E1: $DE $FB
    ccf                                           ; $60E3: $3F
    rst RST_20                                    ; $60E4: $E7
    cp a                                          ; $60E5: $BF
    pop hl                                        ; $60E6: $E1
    cp a                                          ; $60E7: $BF
    res 7, a                                      ; $60E8: $CB $BF
    di                                            ; $60EA: $F3
    cp a                                          ; $60EB: $BF
    ldh a, [c]                                    ; $60EC: $F2
    rst RST_18                                    ; $60ED: $DF
    ld sp, hl                                     ; $60EE: $F9
    rst RST_00                                    ; $60EF: $C7
    rst RST_00                                    ; $60F0: $C7
    add c                                         ; $60F1: $81
    add c                                         ; $60F2: $81
    nop                                           ; $60F3: $00
    nop                                           ; $60F4: $00
    nop                                           ; $60F5: $00
    nop                                           ; $60F6: $00
    nop                                           ; $60F7: $00
    add b                                         ; $60F8: $80
    nop                                           ; $60F9: $00
    ld b, b                                       ; $60FA: $40
    add b                                         ; $60FB: $80
    ld b, b                                       ; $60FC: $40
    add b                                         ; $60FD: $80
    ret nz                                        ; $60FE: $C0

    nop                                           ; $60FF: $00
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
    inc bc                                        ; $6116: $03
    nop                                           ; $6117: $00
    ld a, l                                       ; $6118: $7D
    inc bc                                        ; $6119: $03
    rst RST_20                                    ; $611A: $E7
    ld e, [hl]                                    ; $611B: $5E
    and c                                         ; $611C: $A1
    ld e, [hl]                                    ; $611D: $5E
    rst RST_08                                    ; $611E: $CF
    ld a, [hl]                                    ; $611F: $7E
    nop                                           ; $6120: $00
    nop                                           ; $6121: $00
    nop                                           ; $6122: $00
    nop                                           ; $6123: $00
    nop                                           ; $6124: $00
    nop                                           ; $6125: $00
    nop                                           ; $6126: $00
    nop                                           ; $6127: $00
    ccf                                           ; $6128: $3F
    nop                                           ; $6129: $00
    ld [hl], b                                    ; $612A: $70
    rrca                                          ; $612B: $0F
    ld [hl], e                                    ; $612C: $73
    inc l                                         ; $612D: $2C
    ld [hl], l                                    ; $612E: $75
    ld a, [hl+]                                   ; $612F: $2A
    ld a, c                                       ; $6130: $79
    ld b, $3F                                     ; $6131: $06 $3F
    add hl, de                                    ; $6133: $19
    cp $03                                        ; $6134: $FE $03
    rst RST_38                                    ; $6136: $FF
    jp z, $80FF                                   ; $6137: $CA $FF $80

    xor a                                         ; $613A: $AF
    ld d, a                                       ; $613B: $57
    rst RST_38                                    ; $613C: $FF
    adc a                                         ; $613D: $8F
    ld a, [$00BD]                                 ; $613E: $FA $BD $00
    nop                                           ; $6141: $00
    nop                                           ; $6142: $00
    nop                                           ; $6143: $00
    nop                                           ; $6144: $00
    nop                                           ; $6145: $00
    nop                                           ; $6146: $00
    nop                                           ; $6147: $00
    inc c                                         ; $6148: $0C
    nop                                           ; $6149: $00
    sub a                                         ; $614A: $97
    inc c                                         ; $614B: $0C
    ld d, a                                       ; $614C: $57
    adc a                                         ; $614D: $8F
    ld d, a                                       ; $614E: $57
    adc a                                         ; $614F: $8F
    cpl                                           ; $6150: $2F
    rst RST_18                                    ; $6151: $DF
    ld a, a                                       ; $6152: $7F
    add b                                         ; $6153: $80
    add c                                         ; $6154: $81
    ld a, [hl]                                    ; $6155: $7E
    cp a                                          ; $6156: $BF
    ld a, [hl]                                    ; $6157: $7E
    rst RST_38                                    ; $6158: $FF
    ld a, [hl]                                    ; $6159: $7E
    rst RST_38                                    ; $615A: $FF
    ld a, h                                       ; $615B: $7C
    db $FC                                        ; $615C: $FC
    ld a, e                                       ; $615D: $7B
    ld hl, sp+$07                                 ; $615E: $F8 $07
    nop                                           ; $6160: $00
    nop                                           ; $6161: $00
    nop                                           ; $6162: $00
    nop                                           ; $6163: $00
    nop                                           ; $6164: $00
    nop                                           ; $6165: $00
    nop                                           ; $6166: $00
    nop                                           ; $6167: $00
    nop                                           ; $6168: $00
    nop                                           ; $6169: $00
    nop                                           ; $616A: $00
    nop                                           ; $616B: $00
    add b                                         ; $616C: $80
    nop                                           ; $616D: $00
    ret nz                                        ; $616E: $C0

    add b                                         ; $616F: $80
    ldh [$FFC0], a                                ; $6170: $E0 $C0
    ldh [$FFC0], a                                ; $6172: $E0 $C0
    ldh a, [$FFE0]                                ; $6174: $F0 $E0
    ldh a, [$FFE0]                                ; $6176: $F0 $E0
    ldh a, [$FFE0]                                ; $6178: $F0 $E0
    ldh a, [$FFE0]                                ; $617A: $F0 $E0
    ldh a, [$FF60]                                ; $617C: $F0 $60
    ld a, b                                       ; $617E: $78
    add b                                         ; $617F: $80
    add b                                         ; $6180: $80
    nop                                           ; $6181: $00
    ret nz                                        ; $6182: $C0

    add b                                         ; $6183: $80
    ret nz                                        ; $6184: $C0

    add b                                         ; $6185: $80
    ldh [$FFC0], a                                ; $6186: $E0 $C0
    ldh a, [$FFE0]                                ; $6188: $F0 $E0
    ld a, b                                       ; $618A: $78
    ldh a, [$FF5C]                                ; $618B: $F0 $5C
    ld hl, sp+$3E                                 ; $618D: $F8 $3E
    db $FC                                        ; $618F: $FC
    ld e, a                                       ; $6190: $5F
    cp $CF                                        ; $6191: $FE $CF
    ccf                                           ; $6193: $3F
    dec a                                         ; $6194: $3D
    rlca                                          ; $6195: $07
    rlca                                          ; $6196: $07
    nop                                           ; $6197: $00
    nop                                           ; $6198: $00
    nop                                           ; $6199: $00
    nop                                           ; $619A: $00
    nop                                           ; $619B: $00
    nop                                           ; $619C: $00
    nop                                           ; $619D: $00
    nop                                           ; $619E: $00
    nop                                           ; $619F: $00
    add b                                         ; $61A0: $80
    nop                                           ; $61A1: $00
    ret nz                                        ; $61A2: $C0

    add b                                         ; $61A3: $80
    ret nz                                        ; $61A4: $C0

    nop                                           ; $61A5: $00
    nop                                           ; $61A6: $00
    nop                                           ; $61A7: $00
    nop                                           ; $61A8: $00
    nop                                           ; $61A9: $00
    nop                                           ; $61AA: $00
    nop                                           ; $61AB: $00
    nop                                           ; $61AC: $00
    nop                                           ; $61AD: $00
    nop                                           ; $61AE: $00
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
    nop                                           ; $61C0: $00
    nop                                           ; $61C1: $00
    nop                                           ; $61C2: $00
    nop                                           ; $61C3: $00
    nop                                           ; $61C4: $00
    nop                                           ; $61C5: $00
    nop                                           ; $61C6: $00
    nop                                           ; $61C7: $00
    ld bc, $0300                                  ; $61C8: $01 $00 $03
    ld bc, $0306                                  ; $61CB: $01 $06 $03
    inc c                                         ; $61CE: $0C
    inc bc                                        ; $61CF: $03
    ld c, $07                                     ; $61D0: $0E $07
    jr jr_01C_61E3                                ; $61D2: $18 $0F

    ld sp, $231F                                  ; $61D4: $31 $1F $23
    rra                                           ; $61D7: $1F
    ld e, a                                       ; $61D8: $5F
    inc a                                         ; $61D9: $3C
    db $FD                                        ; $61DA: $FD
    ld h, b                                       ; $61DB: $60
    db $E3                                        ; $61DC: $E3
    ld bc, $0306                                  ; $61DD: $01 $06 $03
    rrca                                          ; $61E0: $0F
    nop                                           ; $61E1: $00
    ccf                                           ; $61E2: $3F

jr_01C_61E3:
    rrca                                          ; $61E3: $0F
    ld [hl], c                                    ; $61E4: $71
    ccf                                           ; $61E5: $3F
    ret nz                                        ; $61E6: $C0

    ld a, a                                       ; $61E7: $7F
    xor $FF                                       ; $61E8: $EE $FF
    add a                                         ; $61EA: $87
    cp $3B                                        ; $61EB: $FE $3B
    db $FD                                        ; $61ED: $FD
    rra                                           ; $61EE: $1F
    ld sp, hl                                     ; $61EF: $F9
    rst RST_38                                    ; $61F0: $FF
    ldh a, [c]                                    ; $61F1: $F2
    ld a, [hl]                                    ; $61F2: $7E
    add sp, -$08                                  ; $61F3: $E8 $F8
    ret nc                                        ; $61F5: $D0

    ld hl, sp-$50                                 ; $61F6: $F8 $B0
    ldh a, [$FF60]                                ; $61F8: $F0 $60
    or e                                          ; $61FA: $B3
    ldh [$FF3F], a                                ; $61FB: $E0 $3F
    db $E3                                        ; $61FD: $E3
    nop                                           ; $61FE: $00
    rst RST_38                                    ; $61FF: $FF
    add a                                         ; $6200: $87
    ld a, c                                       ; $6201: $79
    ret                                           ; $6202: $C9


    or b                                          ; $6203: $B0
    di                                            ; $6204: $F3
    ret nz                                        ; $6205: $C0

    db $FC                                        ; $6206: $FC
    jp $DDEE                                      ; $6207: $C3 $EE $DD


    rst RST_28                                    ; $620A: $EF
    sbc [hl]                                      ; $620B: $9E
    rst RST_10                                    ; $620C: $D7
    adc a                                         ; $620D: $8F
    sub e                                         ; $620E: $93
    ld c, $0B                                     ; $620F: $0E $0B
    dec b                                         ; $6211: $05
    ld b, $03                                     ; $6212: $06 $03
    inc c                                         ; $6214: $0C
    rlca                                          ; $6215: $07
    jr jr_01C_6227                                ; $6216: $18 $0F

    ld [hl], b                                    ; $6218: $70
    rra                                           ; $6219: $1F
    ldh [$FF7F], a                                ; $621A: $E0 $7F
    add c                                         ; $621C: $81
    rst RST_38                                    ; $621D: $FF
    nop                                           ; $621E: $00
    rst RST_38                                    ; $621F: $FF
    rst RST_38                                    ; $6220: $FF
    rst RST_38                                    ; $6221: $FF
    rst RST_38                                    ; $6222: $FF
    ld a, [$01FF]                                 ; $6223: $FA $FF $01
    ld a, a                                       ; $6226: $7F

jr_01C_6227:
    add e                                         ; $6227: $83
    ccf                                           ; $6228: $3F
    ret c                                         ; $6229: $D8

    rst RST_38                                    ; $622A: $FF
    scf                                           ; $622B: $37
    rst RST_18                                    ; $622C: $DF
    halt                                          ; $622D: $76
    sub a                                         ; $622E: $97
    db $ED                                        ; $622F: $ED
    ld a, $EB                                     ; $6230: $3E $EB
    dec a                                         ; $6232: $3D
    rst RST_00                                    ; $6233: $C7
    ld a, c                                       ; $6234: $79
    adc $73                                       ; $6235: $CE $73
    cp a                                          ; $6237: $BF
    db $E3                                        ; $6238: $E3
    rst RST_38                                    ; $6239: $FF
    call nz, $80FF                                ; $623A: $C4 $FF $80
    rst RST_38                                    ; $623D: $FF
    nop                                           ; $623E: $00
    rst RST_38                                    ; $623F: $FF
    rst RST_38                                    ; $6240: $FF
    dec sp                                        ; $6241: $3B
    rst RST_38                                    ; $6242: $FF
    inc bc                                        ; $6243: $03
    rst RST_18                                    ; $6244: $DF
    add a                                         ; $6245: $87
    cp a                                          ; $6246: $BF
    inc de                                        ; $6247: $13
    di                                            ; $6248: $F3
    ld hl, $40E3                                  ; $6249: $21 $E3 $40
    rst RST_20                                    ; $624C: $E7
    pop bc                                        ; $624D: $C1
    cp $87                                        ; $624E: $FE $87
    ld hl, sp-$71                                 ; $6250: $F8 $8F
    ldh a, [$FF1F]                                ; $6252: $F0 $1F
    pop hl                                        ; $6254: $E1
    ld a, a                                       ; $6255: $7F
    add e                                         ; $6256: $83
    cp $07                                        ; $6257: $FE $07
    db $FC                                        ; $6259: $FC
    rrca                                          ; $625A: $0F
    rst RST_38                                    ; $625B: $FF
    nop                                           ; $625C: $00
    rst RST_38                                    ; $625D: $FF
    ld bc, $FBFF                                  ; $625E: $01 $FF $FB
    or c                                          ; $6261: $B1
    rst RST_38                                    ; $6262: $FF
    or d                                          ; $6263: $B2
    cp $CC                                        ; $6264: $FE $CC
    db $FC                                        ; $6266: $FC
    sbc b                                         ; $6267: $98
    ld hl, sp+$30                                 ; $6268: $F8 $30
    ret c                                         ; $626A: $D8

    ldh a, [$FFB0]                                ; $626B: $F0 $B0
    ldh [$FF60], a                                ; $626D: $E0 $60
    ret nz                                        ; $626F: $C0

    ld h, b                                       ; $6270: $60
    ret nz                                        ; $6271: $C0

    pop bc                                        ; $6272: $C1
    add b                                         ; $6273: $80
    adc a                                         ; $6274: $8F
    ld bc, $0EFB                                  ; $6275: $01 $FB $0E
    xor $78                                       ; $6278: $EE $78
    jr @-$0E                                      ; $627A: $18 $F0

    ld [hl], b                                    ; $627C: $70
    ret nz                                        ; $627D: $C0

    ret nz                                        ; $627E: $C0

    add b                                         ; $627F: $80
    nop                                           ; $6280: $00
    nop                                           ; $6281: $00
    stop                                          ; $6282: $10 $00
    jr nz, jr_01C_6286                            ; $6284: $20 $00

jr_01C_6286:
    ld h, b                                       ; $6286: $60
    nop                                           ; $6287: $00
    ret nz                                        ; $6288: $C0

    nop                                           ; $6289: $00
    add b                                         ; $628A: $80
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
    nop                                           ; $6298: $00
    nop                                           ; $6299: $00
    jr nc, jr_01C_629C                            ; $629A: $30 $00

jr_01C_629C:
    ldh [rP1], a                                  ; $629C: $E0 $00
    ret nz                                        ; $629E: $C0

    nop                                           ; $629F: $00
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
    nop                                           ; $62B0: $00
    nop                                           ; $62B1: $00
    add b                                         ; $62B2: $80
    nop                                           ; $62B3: $00
    ret nz                                        ; $62B4: $C0

    add b                                         ; $62B5: $80
    ldh [$FFC0], a                                ; $62B6: $E0 $C0
    ldh [$FFC0], a                                ; $62B8: $E0 $C0
    ldh a, [$FFE0]                                ; $62BA: $F0 $E0
    ldh a, [$FF60]                                ; $62BC: $F0 $60
    ld sp, hl                                     ; $62BE: $F9
    ld [hl], b                                    ; $62BF: $70
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
    ld a, b                                       ; $62CC: $78
    nop                                           ; $62CD: $00
    adc [hl]                                      ; $62CE: $8E
    ld a, b                                       ; $62CF: $78
    rst RST_38                                    ; $62D0: $FF
    ld e, $1F                                     ; $62D1: $1E $1F
    rst RST_20                                    ; $62D3: $E7
    rlca                                          ; $62D4: $07
    ei                                            ; $62D5: $FB
    di                                            ; $62D6: $F3
    db $FD                                        ; $62D7: $FD
    db $FD                                        ; $62D8: $FD
    cp $FF                                        ; $62D9: $FE $FF
    cp $FE                                        ; $62DB: $FE $FE
    rst RST_38                                    ; $62DD: $FF
    rst RST_38                                    ; $62DE: $FF
    rst RST_38                                    ; $62DF: $FF
    nop                                           ; $62E0: $00
    nop                                           ; $62E1: $00
    nop                                           ; $62E2: $00
    nop                                           ; $62E3: $00
    nop                                           ; $62E4: $00
    nop                                           ; $62E5: $00
    nop                                           ; $62E6: $00
    nop                                           ; $62E7: $00
    nop                                           ; $62E8: $00
    nop                                           ; $62E9: $00
    ld hl, sp+$00                                 ; $62EA: $F8 $00
    add h                                         ; $62EC: $84
    ld a, b                                       ; $62ED: $78
    add d                                         ; $62EE: $82
    ld a, h                                       ; $62EF: $7C
    di                                            ; $62F0: $F3
    inc e                                         ; $62F1: $1C
    or [hl]                                       ; $62F2: $B6
    ld e, c                                       ; $62F3: $59
    ld hl, sp-$69                                 ; $62F4: $F8 $97
    di                                            ; $62F6: $F3
    rrca                                          ; $62F7: $0F
    rst RST_38                                    ; $62F8: $FF
    rst RST_30                                    ; $62F9: $F7
    rst RST_38                                    ; $62FA: $FF
    ld [hl], a                                    ; $62FB: $77
    rst RST_38                                    ; $62FC: $FF
    ld a, e                                       ; $62FD: $7B
    rst RST_38                                    ; $62FE: $FF
    db $FC                                        ; $62FF: $FC
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
    ld bc, $0300                                  ; $630A: $01 $00 $03
    nop                                           ; $630D: $00
    inc bc                                        ; $630E: $03
    ld bc, $0103                                  ; $630F: $01 $03 $01
    inc bc                                        ; $6312: $03
    nop                                           ; $6313: $00
    ld bc, $7F00                                  ; $6314: $01 $00 $7F
    nop                                           ; $6317: $00
    ld b, c                                       ; $6318: $41
    ld a, $61                                     ; $6319: $3E $61
    ccf                                           ; $631B: $3F
    ccf                                           ; $631C: $3F
    rra                                           ; $631D: $1F
    ld e, a                                       ; $631E: $5F
    ld h, $20                                     ; $631F: $26 $20
    rra                                           ; $6321: $1F
    ld h, b                                       ; $6322: $60
    ccf                                           ; $6323: $3F
    ld h, b                                       ; $6324: $60
    ccf                                           ; $6325: $3F
    ld b, b                                       ; $6326: $40
    ccf                                           ; $6327: $3F
    ret nz                                        ; $6328: $C0

    ld a, a                                       ; $6329: $7F
    ret nz                                        ; $632A: $C0

    ld a, a                                       ; $632B: $7F
    ret nz                                        ; $632C: $C0

    ld a, a                                       ; $632D: $7F
    ret nz                                        ; $632E: $C0

    ld a, a                                       ; $632F: $7F
    ret nz                                        ; $6330: $C0

    ld a, a                                       ; $6331: $7F
    ld h, b                                       ; $6332: $60
    ccf                                           ; $6333: $3F
    ld h, b                                       ; $6334: $60
    ccf                                           ; $6335: $3F
    ld h, b                                       ; $6336: $60
    ccf                                           ; $6337: $3F
    jr nc, jr_01C_6359                            ; $6338: $30 $1F

    jr nc, jr_01C_635B                            ; $633A: $30 $1F

    jr jr_01C_634D                                ; $633C: $18 $0F

    inc c                                         ; $633E: $0C
    rlca                                          ; $633F: $07
    inc hl                                        ; $6340: $23
    rst RST_38                                    ; $6341: $FF
    inc bc                                        ; $6342: $03
    rst RST_38                                    ; $6343: $FF
    rlca                                          ; $6344: $07
    rst RST_38                                    ; $6345: $FF
    rlca                                          ; $6346: $07
    rst RST_38                                    ; $6347: $FF
    rlca                                          ; $6348: $07
    rst RST_38                                    ; $6349: $FF
    rlca                                          ; $634A: $07
    rst RST_38                                    ; $634B: $FF
    inc bc                                        ; $634C: $03

jr_01C_634D:
    rst RST_38                                    ; $634D: $FF
    inc bc                                        ; $634E: $03
    rst RST_38                                    ; $634F: $FF
    ld bc, $01FF                                  ; $6350: $01 $FF $01
    rst RST_38                                    ; $6353: $FF
    nop                                           ; $6354: $00
    rst RST_38                                    ; $6355: $FF
    nop                                           ; $6356: $00
    rst RST_38                                    ; $6357: $FF
    nop                                           ; $6358: $00

jr_01C_6359:
    rst RST_38                                    ; $6359: $FF
    nop                                           ; $635A: $00

jr_01C_635B:
    rst RST_38                                    ; $635B: $FF
    nop                                           ; $635C: $00
    rst RST_38                                    ; $635D: $FF
    nop                                           ; $635E: $00
    rst RST_38                                    ; $635F: $FF
    ld hl, sp-$10                                 ; $6360: $F8 $F0
    ldh a, [$FFE0]                                ; $6362: $F0 $E0
    ldh [$FFC0], a                                ; $6364: $E0 $C0
    ldh [$FFC0], a                                ; $6366: $E0 $C0
    pop bc                                        ; $6368: $C1
    add b                                         ; $6369: $80
    pop bc                                        ; $636A: $C1
    add b                                         ; $636B: $80
    ret nz                                        ; $636C: $C0

    add b                                         ; $636D: $80
    ret nz                                        ; $636E: $C0

    add b                                         ; $636F: $80
    ret nz                                        ; $6370: $C0

    add b                                         ; $6371: $80
    ldh [$FFC0], a                                ; $6372: $E0 $C0
    ldh [$FFC0], a                                ; $6374: $E0 $C0
    ld [hl], b                                    ; $6376: $70
    ldh [$FF38], a                                ; $6377: $E0 $38
    ldh a, [rIF]                                  ; $6379: $F0 $0F
    ld hl, sp+$07                                 ; $637B: $F8 $07
    db $FC                                        ; $637D: $FC
    ld bc, $7FFF                                  ; $637E: $01 $FF $7F
    rrca                                          ; $6381: $0F
    rrca                                          ; $6382: $0F
    rlca                                          ; $6383: $07
    rra                                           ; $6384: $1F
    nop                                           ; $6385: $00
    db $E3                                        ; $6386: $E3
    inc e                                         ; $6387: $1C
    ld [hl], b                                    ; $6388: $70
    rst RST_28                                    ; $6389: $EF
    ld a, h                                       ; $638A: $7C
    di                                            ; $638B: $F3
    cp [hl]                                       ; $638C: $BE
    ld a, l                                       ; $638D: $7D
    sbc [hl]                                      ; $638E: $9E
    ld a, l                                       ; $638F: $7D
    ld e, a                                       ; $6390: $5F
    inc a                                         ; $6391: $3C
    ld l, $1C                                     ; $6392: $2E $1C
    ld d, $0C                                     ; $6394: $16 $0C
    rla                                           ; $6396: $17
    ld c, $FF                                     ; $6397: $0E $FF
    rrca                                          ; $6399: $0F
    ld c, a                                       ; $639A: $4F
    or a                                          ; $639B: $B7
    adc a                                         ; $639C: $8F
    halt                                          ; $639D: $76
    cp $00                                        ; $639E: $FE $00
    rst RST_38                                    ; $63A0: $FF
    ld sp, hl                                     ; $63A1: $F9
    rst RST_38                                    ; $63A2: $FF
    ldh a, [$FFFE]                                ; $63A3: $F0 $FE
    inc c                                         ; $63A5: $0C

jr_01C_63A6:
    db $FC                                        ; $63A6: $FC
    ld hl, sp-$02                                 ; $63A7: $F8 $FE
    nop                                           ; $63A9: $00
    cp a                                          ; $63AA: $BF
    ld a, [hl]                                    ; $63AB: $7E
    cp a                                          ; $63AC: $BF
    ld a, b                                       ; $63AD: $78
    cp b                                          ; $63AE: $B8
    ld [hl], a                                    ; $63AF: $77
    ldh a, [$FF6F]                                ; $63B0: $F0 $6F
    ld [hl], b                                    ; $63B2: $70
    rrca                                          ; $63B3: $0F
    ld [$0407], sp                                ; $63B4: $08 $07 $04
    inc bc                                        ; $63B7: $03
    add e                                         ; $63B8: $83
    nop                                           ; $63B9: $00
    add c                                         ; $63BA: $81
    nop                                           ; $63BB: $00
    ld bc, $0000                                  ; $63BC: $01 $00 $00
    nop                                           ; $63BF: $00
    rst RST_38                                    ; $63C0: $FF
    db $FD                                        ; $63C1: $FD
    rst RST_38                                    ; $63C2: $FF
    ld a, l                                       ; $63C3: $7D
    ld a, a                                       ; $63C4: $7F
    ld a, $3F                                     ; $63C5: $3E $3F
    ld e, $1F                                     ; $63C7: $1E $1F
    ld c, $1F                                     ; $63C9: $0E $1F
    ld c, $0F                                     ; $63CB: $0E $0F
    ld b, $8E                                     ; $63CD: $06 $8E
    inc b                                         ; $63CF: $04
    ld c, [hl]                                    ; $63D0: $4E
    add h                                         ; $63D1: $84
    ld [hl], h                                    ; $63D2: $74
    add b                                         ; $63D3: $80
    jr c, jr_01C_63A6                             ; $63D4: $38 $D0

    jr c, @-$2E                                   ; $63D6: $38 $D0

    inc a                                         ; $63D8: $3C
    ret nc                                        ; $63D9: $D0

    ld a, [$F134]                                 ; $63DA: $FA $34 $F1
    xor $FF                                       ; $63DD: $EE $FF
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
    ld bc, $0300                                  ; $63EE: $01 $00 $03
    ld bc, $0306                                  ; $63F1: $01 $06 $03
    inc c                                         ; $63F4: $0C
    rlca                                          ; $63F5: $07
    jr @+$11                                      ; $63F6: $18 $0F

    jr nc, @+$21                                  ; $63F8: $30 $1F

    ld h, b                                       ; $63FA: $60
    ccf                                           ; $63FB: $3F
    ld h, b                                       ; $63FC: $60
    ccf                                           ; $63FD: $3F
    ret nz                                        ; $63FE: $C0

    ld a, a                                       ; $63FF: $7F
    nop                                           ; $6400: $00
    nop                                           ; $6401: $00
    nop                                           ; $6402: $00
    nop                                           ; $6403: $00
    nop                                           ; $6404: $00
    nop                                           ; $6405: $00
    ld bc, $0700                                  ; $6406: $01 $00 $07
    ld bc, $071E                                  ; $6409: $01 $1E $07
    ld a, c                                       ; $640C: $79
    rra                                           ; $640D: $1F
    db $E3                                        ; $640E: $E3
    ld a, a                                       ; $640F: $7F
    add e                                         ; $6410: $83
    rst RST_38                                    ; $6411: $FF
    rlca                                          ; $6412: $07
    rst RST_38                                    ; $6413: $FF
    inc c                                         ; $6414: $0C
    rst RST_38                                    ; $6415: $FF
    nop                                           ; $6416: $00
    rst RST_38                                    ; $6417: $FF
    ld hl, $43FF                                  ; $6418: $21 $FF $43
    rst RST_38                                    ; $641B: $FF
    rlca                                          ; $641C: $07
    rst RST_38                                    ; $641D: $FF
    rlca                                          ; $641E: $07
    rst RST_38                                    ; $641F: $FF
    nop                                           ; $6420: $00
    nop                                           ; $6421: $00
    rrca                                          ; $6422: $0F
    nop                                           ; $6423: $00
    ld a, a                                       ; $6424: $7F
    rrca                                          ; $6425: $0F
    rst RST_38                                    ; $6426: $FF
    ld a, a                                       ; $6427: $7F
    rst RST_38                                    ; $6428: $FF
    rst RST_38                                    ; $6429: $FF
    rst RST_38                                    ; $642A: $FF

Call_01C_642B:
    rst RST_38                                    ; $642B: $FF
    rst RST_38                                    ; $642C: $FF
    rst RST_38                                    ; $642D: $FF
    rst RST_38                                    ; $642E: $FF
    rst RST_38                                    ; $642F: $FF
    rst RST_18                                    ; $6430: $DF
    ld hl, sp+$38                                 ; $6431: $F8 $38
    rst RST_30                                    ; $6433: $F7
    ld a, h                                       ; $6434: $7C
    rst RST_38                                    ; $6435: $FF
    cp $FF                                        ; $6436: $FE $FF
    rst RST_38                                    ; $6438: $FF
    rst RST_38                                    ; $6439: $FF
    rst RST_38                                    ; $643A: $FF
    ei                                            ; $643B: $FB
    ei                                            ; $643C: $FB
    pop af                                        ; $643D: $F1
    pop af                                        ; $643E: $F1
    ldh [rIE], a                                  ; $643F: $E0 $FF
    inc bc                                        ; $6441: $03
    rst RST_38                                    ; $6442: $FF
    rst RST_38                                    ; $6443: $FF
    rst RST_38                                    ; $6444: $FF
    rst RST_38                                    ; $6445: $FF
    rst RST_38                                    ; $6446: $FF
    rst RST_38                                    ; $6447: $FF
    rst RST_38                                    ; $6448: $FF
    rst RST_38                                    ; $6449: $FF
    rst RST_38                                    ; $644A: $FF
    ret nz                                        ; $644B: $C0

    ldh a, [$FF8F]                                ; $644C: $F0 $8F
    ldh a, [$FFAF]                                ; $644E: $F0 $AF
    cp $23                                        ; $6450: $FE $23
    halt                                          ; $6452: $76
    adc e                                         ; $6453: $8B
    ccf                                           ; $6454: $3F
    jp nc, $817E                                  ; $6455: $D2 $7E $81

    rst RST_38                                    ; $6458: $FF
    ld a, [hl]                                    ; $6459: $7E
    rst RST_38                                    ; $645A: $FF
    ld a, [hl]                                    ; $645B: $7E
    rst RST_38                                    ; $645C: $FF
    ld a, a                                       ; $645D: $7F
    rst RST_38                                    ; $645E: $FF
    ld a, a                                       ; $645F: $7F
    rst RST_38                                    ; $6460: $FF
    rst RST_38                                    ; $6461: $FF
    rst RST_38                                    ; $6462: $FF
    rst RST_38                                    ; $6463: $FF
    rst RST_38                                    ; $6464: $FF
    db $FC                                        ; $6465: $FC
    db $FC                                        ; $6466: $FC
    ldh a, [$FFF0]                                ; $6467: $F0 $F0
    ldh [$FFE0], a                                ; $6469: $E0 $E0
    add b                                         ; $646B: $80
    rst RST_00                                    ; $646C: $C7
    nop                                           ; $646D: $00
    ld d, c                                       ; $646E: $51
    adc a                                         ; $646F: $8F
    ld a, a                                       ; $6470: $7F
    add e                                         ; $6471: $83
    jp Jump_000_003C                              ; $6472: $C3 $3C $00


    rst RST_38                                    ; $6475: $FF
    ld a, [hl]                                    ; $6476: $7E
    rst RST_38                                    ; $6477: $FF
    rst RST_38                                    ; $6478: $FF
    rst RST_38                                    ; $6479: $FF
    rst RST_38                                    ; $647A: $FF
    rst RST_38                                    ; $647B: $FF
    rst RST_38                                    ; $647C: $FF
    ld a, a                                       ; $647D: $7F
    rst RST_38                                    ; $647E: $FF
    sbc a                                         ; $647F: $9F
    nop                                           ; $6480: $00
    nop                                           ; $6481: $00
    nop                                           ; $6482: $00
    nop                                           ; $6483: $00
    ret nz                                        ; $6484: $C0

    nop                                           ; $6485: $00
    ldh [$FFC0], a                                ; $6486: $E0 $C0
    ldh a, [$FFE0]                                ; $6488: $F0 $E0
    ld hl, sp+$70                                 ; $648A: $F8 $70
    ld a, h                                       ; $648C: $7C
    cp b                                          ; $648D: $B8
    cp h                                          ; $648E: $BC
    ret c                                         ; $648F: $D8

    cp $DC                                        ; $6490: $FE $DC
    sbc $EC                                       ; $6492: $DE $EC
    rst RST_38                                    ; $6494: $FF
    xor $FF                                       ; $6495: $EE $FF
    or $FF                                        ; $6497: $F6 $FF
    or $FF                                        ; $6499: $F6 $FF
    ld a, [$7AFF]                                 ; $649B: $FA $FF $7A
    ld a, [hl]                                    ; $649E: $7E
    jr c, jr_01C_64A1                             ; $649F: $38 $00

jr_01C_64A1:
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
    nop                                           ; $64AD: $00
    nop                                           ; $64AE: $00
    nop                                           ; $64AF: $00
    nop                                           ; $64B0: $00
    nop                                           ; $64B1: $00
    nop                                           ; $64B2: $00
    nop                                           ; $64B3: $00
    nop                                           ; $64B4: $00
    nop                                           ; $64B5: $00
    nop                                           ; $64B6: $00
    nop                                           ; $64B7: $00
    nop                                           ; $64B8: $00
    nop                                           ; $64B9: $00
    nop                                           ; $64BA: $00
    nop                                           ; $64BB: $00
    rlca                                          ; $64BC: $07
    nop                                           ; $64BD: $00
    rst RST_38                                    ; $64BE: $FF
    rlca                                          ; $64BF: $07
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
    nop                                           ; $64D6: $00
    nop                                           ; $64D7: $00
    cp $00                                        ; $64D8: $FE $00
    cp $FC                                        ; $64DA: $FE $FC
    db $FC                                        ; $64DC: $FC
    ldh a, [$FFF0]                                ; $64DD: $F0 $F0
    ret nz                                        ; $64DF: $C0

    rlca                                          ; $64E0: $07
    inc bc                                        ; $64E1: $03
    inc bc                                        ; $64E2: $03
    ld bc, $0007                                  ; $64E3: $01 $07 $00
    jr c, jr_01C_64EF                             ; $64E6: $38 $07

    ld e, h                                       ; $64E8: $5C
    dec sp                                        ; $64E9: $3B
    ld e, a                                       ; $64EA: $5F
    inc a                                         ; $64EB: $3C
    cpl                                           ; $64EC: $2F
    rra                                           ; $64ED: $1F
    daa                                           ; $64EE: $27

jr_01C_64EF:
    rra                                           ; $64EF: $1F
    rla                                           ; $64F0: $17
    rrca                                          ; $64F1: $0F
    dec bc                                        ; $64F2: $0B
    rlca                                          ; $64F3: $07
    dec b                                         ; $64F4: $05
    inc bc                                        ; $64F5: $03
    dec b                                         ; $64F6: $05
    inc bc                                        ; $64F7: $03
    ccf                                           ; $64F8: $3F
    inc bc                                        ; $64F9: $03
    ld d, e                                       ; $64FA: $53
    dec l                                         ; $64FB: $2D
    and e                                         ; $64FC: $A3
    ld e, l                                       ; $64FD: $5D
    rst RST_38                                    ; $64FE: $FF
    nop                                           ; $64FF: $00
    rst RST_38                                    ; $6500: $FF
    cp $FF                                        ; $6501: $FE $FF
    db $FC                                        ; $6503: $FC
    rst RST_38                                    ; $6504: $FF
    inc bc                                        ; $6505: $03
    rst RST_38                                    ; $6506: $FF
    ld a, $3F                                     ; $6507: $3E $3F
    ret nz                                        ; $6509: $C0

    cpl                                           ; $650A: $2F
    rst RST_18                                    ; $650B: $DF
    xor a                                         ; $650C: $AF
    ld e, [hl]                                    ; $650D: $5E
    xor [hl]                                      ; $650E: $AE
    ld e, l                                       ; $650F: $5D
    db $FC                                        ; $6510: $FC
    dec de                                        ; $6511: $1B
    sbc h                                         ; $6512: $9C
    inc bc                                        ; $6513: $03
    add d                                         ; $6514: $82
    ld bc, $80C1                                  ; $6515: $01 $C1 $80
    ldh [$FFC0], a                                ; $6518: $E0 $C0
    ldh [$FFC0], a                                ; $651A: $E0 $C0
    ret nz                                        ; $651C: $C0

    add b                                         ; $651D: $80
    add b                                         ; $651E: $80
    nop                                           ; $651F: $00
    rst RST_38                                    ; $6520: $FF
    ld a, a                                       ; $6521: $7F
    rst RST_38                                    ; $6522: $FF
    rra                                           ; $6523: $1F
    sbc a                                         ; $6524: $9F
    rrca                                          ; $6525: $0F
    rrca                                          ; $6526: $0F
    rlca                                          ; $6527: $07
    add a                                         ; $6528: $87
    inc bc                                        ; $6529: $03
    rst RST_00                                    ; $652A: $C7
    add e                                         ; $652B: $83
    jp $2301                                      ; $652C: $C3 $01 $23


    pop bc                                        ; $652F: $C1
    inc de                                        ; $6530: $13
    pop hl                                        ; $6531: $E1
    dec e                                         ; $6532: $1D
    ldh [$FF0E], a                                ; $6533: $E0 $0E
    db $F4                                        ; $6535: $F4
    ld c, $F4                                     ; $6536: $0E $F4
    rst RST_08                                    ; $6538: $CF
    inc [hl]                                      ; $6539: $34
    ld a, [hl]                                    ; $653A: $7E
    dec c                                         ; $653B: $0D
    ld a, h                                       ; $653C: $7C
    dec sp                                        ; $653D: $3B
    ccf                                           ; $653E: $3F
    nop                                           ; $653F: $00
    ldh a, [$FF60]                                ; $6540: $F0 $60
    ldh a, [$FF60]                                ; $6542: $F0 $60
    ldh a, [$FFA0]                                ; $6544: $F0 $A0
    ldh a, [$FFA0]                                ; $6546: $F0 $A0
    ldh [$FF80], a                                ; $6548: $E0 $80
    ret nz                                        ; $654A: $C0

    add b                                         ; $654B: $80
    ret nz                                        ; $654C: $C0

    add b                                         ; $654D: $80
    add b                                         ; $654E: $80
    nop                                           ; $654F: $00
    add b                                         ; $6550: $80
    nop                                           ; $6551: $00
    nop                                           ; $6552: $00
    nop                                           ; $6553: $00
    nop                                           ; $6554: $00
    nop                                           ; $6555: $00
    nop                                           ; $6556: $00
    nop                                           ; $6557: $00
    nop                                           ; $6558: $00
    nop                                           ; $6559: $00
    add b                                         ; $655A: $80
    nop                                           ; $655B: $00
    ld b, b                                       ; $655C: $40
    add b                                         ; $655D: $80
    ret nz                                        ; $655E: $C0

    nop                                           ; $655F: $00
    ld bc, $0F00                                  ; $6560: $01 $00 $0F
    ld bc, $001F                                  ; $6563: $01 $1F $00
    ccf                                           ; $6566: $3F
    nop                                           ; $6567: $00
    ccf                                           ; $6568: $3F
    nop                                           ; $6569: $00
    inc sp                                        ; $656A: $33
    inc c                                         ; $656B: $0C
    rla                                           ; $656C: $17
    ld [$1A27], sp                                ; $656D: $08 $27 $1A
    ld a, a                                       ; $6570: $7F
    ld [bc], a                                    ; $6571: $02
    add a                                         ; $6572: $87
    ld a, b                                       ; $6573: $78
    jp $E77D                                      ; $6574: $C3 $7D $E7


    ld a, b                                       ; $6577: $78
    rst RST_38                                    ; $6578: $FF
    ld [hl], a                                    ; $6579: $77
    ld a, a                                       ; $657A: $7F
    scf                                           ; $657B: $37
    ccf                                           ; $657C: $3F
    rla                                           ; $657D: $17
    rra                                           ; $657E: $1F
    rlca                                          ; $657F: $07
    ldh a, [$FF1F]                                ; $6580: $F0 $1F
    ld c, $FF                                     ; $6582: $0E $FF
    rst RST_20                                    ; $6584: $E7
    rst RST_38                                    ; $6585: $FF
    rst RST_30                                    ; $6586: $F7
    rst RST_38                                    ; $6587: $FF
    rst RST_38                                    ; $6588: $FF
    ld a, [hl]                                    ; $6589: $7E
    cp $08                                        ; $658A: $FE $08
    inc c                                         ; $658C: $0C
    ldh a, [rTIMA]                                ; $658D: $F0 $05
    ld hl, sp-$19                                 ; $658F: $F8 $E7
    jr c, @+$6E                                   ; $6591: $38 $6C

    or e                                          ; $6593: $B3
    ldh a, [$FF2F]                                ; $6594: $F0 $2F
    rst RST_20                                    ; $6596: $E7
    rra                                           ; $6597: $1F
    rst RST_38                                    ; $6598: $FF
    rst RST_28                                    ; $6599: $EF
    rst RST_38                                    ; $659A: $FF
    rst RST_28                                    ; $659B: $EF
    rst RST_38                                    ; $659C: $FF
    rst RST_30                                    ; $659D: $F7
    rst RST_38                                    ; $659E: $FF
    ld sp, hl                                     ; $659F: $F9
    ccf                                           ; $65A0: $3F
    db $FC                                        ; $65A1: $FC
    db $FC                                        ; $65A2: $FC
    ldh a, [$FFF0]                                ; $65A3: $F0 $F0
    ret nz                                        ; $65A5: $C0

    ret nz                                        ; $65A6: $C0

    nop                                           ; $65A7: $00
    nop                                           ; $65A8: $00
    nop                                           ; $65A9: $00
    nop                                           ; $65AA: $00
    nop                                           ; $65AB: $00
    ld [hl], b                                    ; $65AC: $70
    nop                                           ; $65AD: $00
    inc e                                         ; $65AE: $1C
    ldh a, [$FFFE]                                ; $65AF: $F0 $FE
    inc a                                         ; $65B1: $3C
    ccf                                           ; $65B2: $3F
    adc $0F                                       ; $65B3: $CE $0F
    rst RST_30                                    ; $65B5: $F7
    rst RST_20                                    ; $65B6: $E7
    ei                                            ; $65B7: $FB
    ei                                            ; $65B8: $FB
    db $FD                                        ; $65B9: $FD
    rst RST_38                                    ; $65BA: $FF
    db $FD                                        ; $65BB: $FD
    db $FD                                        ; $65BC: $FD
    cp $FF                                        ; $65BD: $FE $FF
    cp $00                                        ; $65BF: $FE $00
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
    add b                                         ; $65D4: $80
    nop                                           ; $65D5: $00
    ret nz                                        ; $65D6: $C0

    add b                                         ; $65D7: $80
    ret nz                                        ; $65D8: $C0

    add b                                         ; $65D9: $80
    ldh [$FFC0], a                                ; $65DA: $E0 $C0
    ldh [$FFC0], a                                ; $65DC: $E0 $C0
    ldh a, [$FFE0]                                ; $65DE: $F0 $E0
    nop                                           ; $65E0: $00
    nop                                           ; $65E1: $00
    nop                                           ; $65E2: $00
    nop                                           ; $65E3: $00
    nop                                           ; $65E4: $00
    nop                                           ; $65E5: $00
    nop                                           ; $65E6: $00
    nop                                           ; $65E7: $00
    nop                                           ; $65E8: $00
    nop                                           ; $65E9: $00
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
    rlca                                          ; $65FC: $07
    nop                                           ; $65FD: $00
    cp $07                                        ; $65FE: $FE $07
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
    nop                                           ; $660A: $00
    nop                                           ; $660B: $00
    nop                                           ; $660C: $00
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
    db $FC                                        ; $661C: $FC
    nop                                           ; $661D: $00
    inc l                                         ; $661E: $2C
    ld hl, sp+$1B                                 ; $661F: $F8 $1B
    rlca                                          ; $6621: $07
    dec bc                                        ; $6622: $0B
    rlca                                          ; $6623: $07
    rlca                                          ; $6624: $07
    ld [bc], a                                    ; $6625: $02
    rlca                                          ; $6626: $07
    inc bc                                        ; $6627: $03
    dec bc                                        ; $6628: $0B
    rlca                                          ; $6629: $07
    rra                                           ; $662A: $1F
    inc bc                                        ; $662B: $03
    ld l, e                                       ; $662C: $6B
    dec d                                         ; $662D: $15
    sub e                                         ; $662E: $93
    ld l, h                                       ; $662F: $6C
    ldh [c], a                                    ; $6630: $E2
    inc e                                         ; $6631: $1C
    inc l                                         ; $6632: $2C
    db $10                                        ; $6633: $10
    jr nc, jr_01C_6636                            ; $6634: $30 $00

jr_01C_6636:
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
    db $FC                                        ; $6640: $FC
    dec de                                        ; $6641: $1B
    sbc [hl]                                      ; $6642: $9E
    ld bc, $81C2                                  ; $6643: $01 $C2 $81
    pop hl                                        ; $6646: $E1
    ret nz                                        ; $6647: $C0

    ldh [$FFC0], a                                ; $6648: $E0 $C0
    ret nz                                        ; $664A: $C0

    add b                                         ; $664B: $80
    add b                                         ; $664C: $80
    nop                                           ; $664D: $00
    nop                                           ; $664E: $00
    nop                                           ; $664F: $00
    nop                                           ; $6650: $00
    nop                                           ; $6651: $00
    nop                                           ; $6652: $00
    nop                                           ; $6653: $00
    nop                                           ; $6654: $00
    nop                                           ; $6655: $00
    nop                                           ; $6656: $00
    nop                                           ; $6657: $00
    nop                                           ; $6658: $00
    nop                                           ; $6659: $00
    nop                                           ; $665A: $00
    nop                                           ; $665B: $00
    nop                                           ; $665C: $00
    nop                                           ; $665D: $00
    nop                                           ; $665E: $00
    nop                                           ; $665F: $00
    db $10                                        ; $6660: $10
    ldh [rNR10], a                                ; $6661: $E0 $10
    ldh [$FF0C], a                                ; $6663: $E0 $0C
    ldh a, [$FF0E]                                ; $6665: $F0 $0E
    db $F4                                        ; $6667: $F4
    adc a                                         ; $6668: $8F
    halt                                          ; $6669: $76
    ld a, a                                       ; $666A: $7F
    ld c, $7F                                     ; $666B: $0E $7F
    ld a, $3E                                     ; $666D: $3E $3E
    add hl, de                                    ; $666F: $19
    ld a, [de]                                    ; $6670: $1A
    dec b                                         ; $6671: $05
    add hl, bc                                    ; $6672: $09
    ld b, $04                                     ; $6673: $06 $04
    inc bc                                        ; $6675: $03
    inc bc                                        ; $6676: $03
    nop                                           ; $6677: $00
    nop                                           ; $6678: $00
    nop                                           ; $6679: $00
    nop                                           ; $667A: $00
    nop                                           ; $667B: $00
    nop                                           ; $667C: $00
    nop                                           ; $667D: $00
    nop                                           ; $667E: $00
    nop                                           ; $667F: $00
    add b                                         ; $6680: $80
    nop                                           ; $6681: $00
    ld b, b                                       ; $6682: $40
    add b                                         ; $6683: $80
    ld b, b                                       ; $6684: $40
    add b                                         ; $6685: $80
    ld b, b                                       ; $6686: $40
    add b                                         ; $6687: $80
    add b                                         ; $6688: $80
    nop                                           ; $6689: $00
    add b                                         ; $668A: $80
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

Call_01C_669B:
    nop                                           ; $669B: $00
    nop                                           ; $669C: $00
    nop                                           ; $669D: $00
    nop                                           ; $669E: $00
    nop                                           ; $669F: $00
    db $FC                                        ; $66A0: $FC
    ld hl, sp-$08                                 ; $66A1: $F8 $F8
    ldh [$FFE0], a                                ; $66A3: $E0 $E0
    add b                                         ; $66A5: $80
    add b                                         ; $66A6: $80
    nop                                           ; $66A7: $00
    nop                                           ; $66A8: $00
    nop                                           ; $66A9: $00
    nop                                           ; $66AA: $00
    nop                                           ; $66AB: $00
    nop                                           ; $66AC: $00
    nop                                           ; $66AD: $00
    nop                                           ; $66AE: $00
    nop                                           ; $66AF: $00
    ld bc, $0100                                  ; $66B0: $01 $00 $01
    nop                                           ; $66B3: $00
    nop                                           ; $66B4: $00
    nop                                           ; $66B5: $00
    nop                                           ; $66B6: $00
    nop                                           ; $66B7: $00
    nop                                           ; $66B8: $00
    nop                                           ; $66B9: $00
    nop                                           ; $66BA: $00
    nop                                           ; $66BB: $00
    nop                                           ; $66BC: $00
    nop                                           ; $66BD: $00
    nop                                           ; $66BE: $00
    nop                                           ; $66BF: $00
    cpl                                           ; $66C0: $2F
    ld e, $17                                     ; $66C1: $1E $17
    ld c, $17                                     ; $66C3: $0E $17
    ld c, $0F                                     ; $66C5: $0E $0F
    dec b                                         ; $66C7: $05
    rrca                                          ; $66C8: $0F
    rlca                                          ; $66C9: $07
    rla                                           ; $66CA: $17
    rrca                                          ; $66CB: $0F
    ccf                                           ; $66CC: $3F
    rlca                                          ; $66CD: $07
    rst RST_10                                    ; $66CE: $D7
    ld a, [hl+]                                   ; $66CF: $2A
    ld h, $D8                                     ; $66D0: $26 $D8
    call nz, Call_01C_5838                        ; $66D2: $C4 $38 $58
    jr nz, jr_01C_6737                            ; $66D5: $20 $60

    nop                                           ; $66D7: $00

jr_01C_66D8:
    nop                                           ; $66D8: $00
    nop                                           ; $66D9: $00
    nop                                           ; $66DA: $00
    nop                                           ; $66DB: $00
    nop                                           ; $66DC: $00
    nop                                           ; $66DD: $00
    nop                                           ; $66DE: $00
    nop                                           ; $66DF: $00
    ld hl, sp+$37                                 ; $66E0: $F8 $37
    jr c, jr_01C_66EB                             ; $66E2: $38 $07

    inc b                                         ; $66E4: $04
    inc bc                                        ; $66E5: $03
    add h                                         ; $66E6: $84
    inc bc                                        ; $66E7: $03
    jp nz, $C181                                  ; $66E8: $C2 $81 $C1

jr_01C_66EB:
    add b                                         ; $66EB: $80
    add c                                         ; $66EC: $81
    nop                                           ; $66ED: $00
    nop                                           ; $66EE: $00
    nop                                           ; $66EF: $00
    nop                                           ; $66F0: $00
    nop                                           ; $66F1: $00
    nop                                           ; $66F2: $00
    nop                                           ; $66F3: $00
    nop                                           ; $66F4: $00
    nop                                           ; $66F5: $00
    nop                                           ; $66F6: $00
    nop                                           ; $66F7: $00
    nop                                           ; $66F8: $00
    nop                                           ; $66F9: $00
    nop                                           ; $66FA: $00
    nop                                           ; $66FB: $00
    nop                                           ; $66FC: $00
    nop                                           ; $66FD: $00
    nop                                           ; $66FE: $00
    nop                                           ; $66FF: $00
    ld b, a                                       ; $6700: $47
    add d                                         ; $6701: $82
    ld h, [hl]                                    ; $6702: $66
    add b                                         ; $6703: $80
    jr nc, @-$3E                                  ; $6704: $30 $C0

    jr c, jr_01C_66D8                             ; $6706: $38 $D0

    inc a                                         ; $6708: $3C
    ret c                                         ; $6709: $D8

    db $FC                                        ; $670A: $FC

jr_01C_670B:
    jr c, jr_01C_670B                             ; $670B: $38 $FE

    ld hl, sp-$07                                 ; $670D: $F8 $F9
    ld h, [hl]                                    ; $670F: $66
    ld l, c                                       ; $6710: $69
    ld d, $25                                     ; $6711: $16 $25
    ld a, [de]                                    ; $6713: $1A
    ld [de], a                                    ; $6714: $12
    inc c                                         ; $6715: $0C
    inc c                                         ; $6716: $0C
    nop                                           ; $6717: $00
    nop                                           ; $6718: $00
    nop                                           ; $6719: $00
    nop                                           ; $671A: $00
    nop                                           ; $671B: $00
    nop                                           ; $671C: $00
    nop                                           ; $671D: $00
    nop                                           ; $671E: $00
    nop                                           ; $671F: $00
    ld hl, sp+$30                                 ; $6720: $F8 $30
    ld a, b                                       ; $6722: $78
    jr nc, @+$3A                                  ; $6723: $30 $38

    db $10                                        ; $6725: $10
    jr c, @+$12                                   ; $6726: $38 $10

    jr jr_01C_672A                                ; $6728: $18 $00

jr_01C_672A:
    ret nz                                        ; $672A: $C0

    nop                                           ; $672B: $00
    ldh [$FFC0], a                                ; $672C: $E0 $C0
    cp $E0                                        ; $672E: $FE $E0
    rst RST_38                                    ; $6730: $FF
    cp $2F                                        ; $6731: $FE $2F
    cp $FF                                        ; $6733: $FE $FF
    ld c, $0F                                     ; $6735: $0E $0F

jr_01C_6737:
    ld b, $0F                                     ; $6737: $06 $0F
    nop                                           ; $6739: $00
    add hl, de                                    ; $673A: $19
    ld b, $21                                     ; $673B: $06 $21
    ld e, $3E                                     ; $673D: $1E $3E
    nop                                           ; $673F: $00
    ld [hl], e                                    ; $6740: $73
    adc a                                         ; $6741: $8F
    bit 7, a                                      ; $6742: $CB $7F
    ld e, a                                       ; $6744: $5F
    rst RST_38                                    ; $6745: $FF
    rst RST_38                                    ; $6746: $FF
    rst RST_38                                    ; $6747: $FF
    rst RST_38                                    ; $6748: $FF
    nop                                           ; $6749: $00
    ret nz                                        ; $674A: $C0

    add b                                         ; $674B: $80
    ldh [rP1], a                                  ; $674C: $E0 $00
    db $10                                        ; $674E: $10
    ldh [$FF08], a                                ; $674F: $E0 $08
    ldh a, [$FF0B]                                ; $6751: $F0 $0B
    ldh a, [rTAC]                                 ; $6753: $F0 $07
    ei                                            ; $6755: $FB
    rst RST_08                                    ; $6756: $CF
    scf                                           ; $6757: $37
    ccf                                           ; $6758: $3F
    rrca                                          ; $6759: $0F
    ld e, $0F                                     ; $675A: $1E $0F
    ld hl, $3E1E                                  ; $675C: $21 $1E $3E
    nop                                           ; $675F: $00
    ccf                                           ; $6760: $3F
    nop                                           ; $6761: $00
    rst RST_30                                    ; $6762: $F7
    rra                                           ; $6763: $1F
    rla                                           ; $6764: $17
    xor $16                                       ; $6765: $EE $16
    db $ED                                        ; $6767: $ED
    ld c, $F5                                     ; $6768: $0E $F5
    cp $01                                        ; $676A: $FE $01
    add c                                         ; $676C: $81
    nop                                           ; $676D: $00
    add b                                         ; $676E: $80
    nop                                           ; $676F: $00
    add b                                         ; $6770: $80
    nop                                           ; $6771: $00
    add b                                         ; $6772: $80
    nop                                           ; $6773: $00
    ret nz                                        ; $6774: $C0

    add b                                         ; $6775: $80
    ldh [$FFC0], a                                ; $6776: $E0 $C0
    ldh [$FFC0], a                                ; $6778: $E0 $C0
    ldh [$FFC0], a                                ; $677A: $E0 $C0
    ldh [rP1], a                                  ; $677C: $E0 $00
    nop                                           ; $677E: $00
    nop                                           ; $677F: $00
    nop                                           ; $6780: $00
    nop                                           ; $6781: $00
    ld bc, $6600                                  ; $6782: $01 $00 $66
    ld bc, $67B8                                  ; $6785: $01 $B8 $67
    cp [hl]                                       ; $6788: $BE
    ld a, c                                       ; $6789: $79
    ld e, a                                       ; $678A: $5F
    ld a, $5F                                     ; $678B: $3E $5F
    ccf                                           ; $678D: $3F
    cpl                                           ; $678E: $2F
    rra                                           ; $678F: $1F
    rla                                           ; $6790: $17
    rrca                                          ; $6791: $0F
    rrca                                          ; $6792: $0F
    rlca                                          ; $6793: $07
    rlca                                          ; $6794: $07
    ld bc, $031F                                  ; $6795: $01 $1F $03
    ld l, a                                       ; $6798: $6F
    rla                                           ; $6799: $17
    add a                                         ; $679A: $87
    ld a, e                                       ; $679B: $7B
    rst RST_38                                    ; $679C: $FF
    nop                                           ; $679D: $00
    nop                                           ; $679E: $00
    nop                                           ; $679F: $00
    nop                                           ; $67A0: $00
    nop                                           ; $67A1: $00
    nop                                           ; $67A2: $00
    nop                                           ; $67A3: $00
    add b                                         ; $67A4: $80
    nop                                           ; $67A5: $00
    add b                                         ; $67A6: $80
    nop                                           ; $67A7: $00
    ret nz                                        ; $67A8: $C0

    add b                                         ; $67A9: $80
    ldh [rP1], a                                  ; $67AA: $E0 $00
    ldh [rP1], a                                  ; $67AC: $E0 $00
    db $FC                                        ; $67AE: $FC
    ld b, b                                       ; $67AF: $40
    cp $3C                                        ; $67B0: $FE $3C
    rst RST_10                                    ; $67B2: $D7
    cp $0B                                        ; $67B3: $FE $0B
    cp $0D                                        ; $67B5: $FE $0D
    cp $4D                                        ; $67B7: $FE $4D
    cp $6F                                        ; $67B9: $FE $6F
    cp $6E                                        ; $67BB: $FE $6E
    db $FC                                        ; $67BD: $FC
    cp $C0                                        ; $67BE: $FE $C0
    nop                                           ; $67C0: $00
    nop                                           ; $67C1: $00
    nop                                           ; $67C2: $00
    nop                                           ; $67C3: $00
    nop                                           ; $67C4: $00
    nop                                           ; $67C5: $00
    ld a, b                                       ; $67C6: $78
    nop                                           ; $67C7: $00
    ld e, [hl]                                    ; $67C8: $5E
    jr c, jr_01C_682A                             ; $67C9: $38 $5F

    ld a, $5F                                     ; $67CB: $3E $5F
    ccf                                           ; $67CD: $3F
    cpl                                           ; $67CE: $2F
    rra                                           ; $67CF: $1F
    ccf                                           ; $67D0: $3F
    nop                                           ; $67D1: $00
    ldh [$FF1F], a                                ; $67D2: $E0 $1F
    rst RST_38                                    ; $67D4: $FF
    rst RST_18                                    ; $67D5: $DF
    rst RST_38                                    ; $67D6: $FF
    rst RST_18                                    ; $67D7: $DF
    rst RST_38                                    ; $67D8: $FF
    sbc $FF                                       ; $67D9: $DE $FF
    db $EC                                        ; $67DB: $EC
    rst RST_38                                    ; $67DC: $FF
    pop hl                                        ; $67DD: $E1
    ld a, h                                       ; $67DE: $7C
    and e                                         ; $67DF: $A3
    jr c, jr_01C_67E2                             ; $67E0: $38 $00

jr_01C_67E2:
    call nz, $0238                                ; $67E2: $C4 $38 $02
    db $FC                                        ; $67E5: $FC
    sbc d                                         ; $67E6: $9A
    ld h, h                                       ; $67E7: $64
    jp hl                                         ; $67E8: $E9


    ld d, $C9                                     ; $67E9: $16 $C9
    ld [hl], $F1                                  ; $67EB: $36 $F1
    adc $F3                                       ; $67ED: $CE $F3
    inc e                                         ; $67EF: $1C
    sbc a                                         ; $67F0: $9F
    ld l, b                                       ; $67F1: $68
    ei                                            ; $67F2: $FB
    dec b                                         ; $67F3: $05
    rst RST_10                                    ; $67F4: $D7
    xor e                                         ; $67F5: $AB
    db $FD                                        ; $67F6: $FD
    add $ED                                       ; $67F7: $C6 $ED
    jp c, $18EF                                   ; $67F9: $DA $EF $18

    rst RST_28                                    ; $67FC: $EF
    ld e, c                                       ; $67FD: $59
    ld l, a                                       ; $67FE: $6F
    dec de                                        ; $67FF: $1B
    nop                                           ; $6800: $00
    nop                                           ; $6801: $00
    nop                                           ; $6802: $00
    nop                                           ; $6803: $00
    di                                            ; $6804: $F3
    nop                                           ; $6805: $00
    adc a                                         ; $6806: $8F
    ld [hl], c                                    ; $6807: $71
    jp $E37D                                      ; $6808: $C3 $7D $E3


    ld a, h                                       ; $680B: $7C
    rst RST_30                                    ; $680C: $F7
    ld a, d                                       ; $680D: $7A
    ld a, a                                       ; $680E: $7F
    cp e                                          ; $680F: $BB
    rst RST_38                                    ; $6810: $FF
    ld a, [de]                                    ; $6811: $1A
    rra                                           ; $6812: $1F
    ld [bc], a                                    ; $6813: $02
    rlca                                          ; $6814: $07
    inc bc                                        ; $6815: $03
    ld [bc], a                                    ; $6816: $02
    ld bc, $0102                                  ; $6817: $01 $02 $01
    ld bc, $0000                                  ; $681A: $01 $00 $00
    nop                                           ; $681D: $00
    nop                                           ; $681E: $00
    nop                                           ; $681F: $00
    add b                                         ; $6820: $80
    nop                                           ; $6821: $00
    ldh [$FF80], a                                ; $6822: $E0 $80
    ldh a, [$FF60]                                ; $6824: $F0 $60
    ld a, b                                       ; $6826: $78
    sub b                                         ; $6827: $90
    ld hl, sp+$30                                 ; $6828: $F8 $30

jr_01C_682A:
    db $EC                                        ; $682A: $EC
    ld hl, sp+$1E                                 ; $682B: $F8 $1E
    db $FC                                        ; $682D: $FC
    cp $2C                                        ; $682E: $FE $2C
    ld sp, hl                                     ; $6830: $F9
    adc $B0                                       ; $6831: $CE $B0
    rst RST_28                                    ; $6833: $EF
    ld a, h                                       ; $6834: $7C
    rst RST_28                                    ; $6835: $EF
    ld sp, hl                                     ; $6836: $F9
    xor $FE                                       ; $6837: $EE $FE
    db $DD                                        ; $6839: $DD
    db $FC                                        ; $683A: $FC
    dec sp                                        ; $683B: $3B
    rst RST_38                                    ; $683C: $FF
    ld [hl], b                                    ; $683D: $70
    ld [hl], b                                    ; $683E: $70
    nop                                           ; $683F: $00
    ldh [rP1], a                                  ; $6840: $E0 $00
    inc e                                         ; $6842: $1C
    ldh [$FF57], a                                ; $6843: $E0 $57
    cp h                                          ; $6845: $BC
    ldh [c], a                                    ; $6846: $E2
    rst RST_38                                    ; $6847: $FF
    rst RST_30                                    ; $6848: $F7
    inc a                                         ; $6849: $3C
    cp a                                          ; $684A: $BF
    ld c, h                                       ; $684B: $4C
    xor l                                         ; $684C: $AD
    ld d, [hl]                                    ; $684D: $56
    ld e, [hl]                                    ; $684E: $5E
    inc bc                                        ; $684F: $03
    dec bc                                        ; $6850: $0B
    dec b                                         ; $6851: $05
    rlca                                          ; $6852: $07
    nop                                           ; $6853: $00
    ld d, e                                       ; $6854: $53
    nop                                           ; $6855: $00
    xor [hl]                                      ; $6856: $AE
    ld d, e                                       ; $6857: $53
    db $FD                                        ; $6858: $FD
    rrca                                          ; $6859: $0F
    cp a                                          ; $685A: $BF
    rst RST_38                                    ; $685B: $FF
    rst RST_38                                    ; $685C: $FF
    rst RST_00                                    ; $685D: $C7
    rst RST_00                                    ; $685E: $C7
    nop                                           ; $685F: $00
    inc bc                                        ; $6860: $03
    nop                                           ; $6861: $00
    inc b                                         ; $6862: $04
    inc bc                                        ; $6863: $03
    dec c                                         ; $6864: $0D
    ld b, $0F                                     ; $6865: $06 $0F
    inc bc                                        ; $6867: $03
    dec bc                                        ; $6868: $0B
    inc b                                         ; $6869: $04
    ld c, $01                                     ; $686A: $0E $01
    ld [bc], a                                    ; $686C: $02
    ld bc, $0001                                  ; $686D: $01 $01 $00
    nop                                           ; $6870: $00
    nop                                           ; $6871: $00
    nop                                           ; $6872: $00
    nop                                           ; $6873: $00
    dec b                                         ; $6874: $05
    nop                                           ; $6875: $00
    ld a, [bc]                                    ; $6876: $0A
    dec b                                         ; $6877: $05
    rra                                           ; $6878: $1F
    nop                                           ; $6879: $00
    ld a, [de]                                    ; $687A: $1A
    rrca                                          ; $687B: $0F
    rrca                                          ; $687C: $0F
    rlca                                          ; $687D: $07
    rlca                                          ; $687E: $07
    nop                                           ; $687F: $00
    rra                                           ; $6880: $1F
    ld c, $0F                                     ; $6881: $0E $0F
    inc b                                         ; $6883: $04
    inc b                                         ; $6884: $04
    inc bc                                        ; $6885: $03
    inc b                                         ; $6886: $04
    inc bc                                        ; $6887: $03

jr_01C_6888:
    ld [$0807], sp                                ; $6888: $08 $07 $08
    rlca                                          ; $688B: $07
    add hl, bc                                    ; $688C: $09
    rlca                                          ; $688D: $07
    dec bc                                        ; $688E: $0B
    rlca                                          ; $688F: $07
    dec bc                                        ; $6890: $0B
    rlca                                          ; $6891: $07
    rra                                           ; $6892: $1F
    ld c, $3F                                     ; $6893: $0E $3F
    ld e, $3F                                     ; $6895: $1E $3F
    ld a, [de]                                    ; $6897: $1A
    ld e, e                                       ; $6898: $5B
    inc h                                         ; $6899: $24
    sub c                                         ; $689A: $91
    ld l, [hl]                                    ; $689B: $6E
    xor $00                                       ; $689C: $EE $00
    nop                                           ; $689E: $00
    nop                                           ; $689F: $00
    add e                                         ; $68A0: $83
    ld a, h                                       ; $68A1: $7C
    and $19                                       ; $68A2: $E6 $19
    ld a, d                                       ; $68A4: $7A
    pop hl                                        ; $68A5: $E1
    ld [hl], c                                    ; $68A6: $71
    ldh [$FFF1], a                                ; $68A7: $E0 $F1
    ldh [$FFF3], a                                ; $68A9: $E0 $F3
    pop hl                                        ; $68AB: $E1
    db $E3                                        ; $68AC: $E3
    pop bc                                        ; $68AD: $C1
    jp $8181                                      ; $68AE: $C3 $81 $81


    nop                                           ; $68B1: $00
    nop                                           ; $68B2: $00
    nop                                           ; $68B3: $00
    nop                                           ; $68B4: $00
    nop                                           ; $68B5: $00
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
    sbc a                                         ; $68C0: $9F
    ld l, a                                       ; $68C1: $6F
    rra                                           ; $68C2: $1F
    ldh [rNR41], a                                ; $68C3: $E0 $20
    ret nz                                        ; $68C5: $C0

    jr c, jr_01C_6888                             ; $68C6: $38 $C0

    ld [hl], h                                    ; $68C8: $74
    cp b                                          ; $68C9: $B8
    db $E4                                        ; $68CA: $E4
    ld a, b                                       ; $68CB: $78
    db $E4                                        ; $68CC: $E4
    ld hl, sp-$18                                 ; $68CD: $F8 $E8
    ldh a, [$FFE8]                                ; $68CF: $F0 $E8
    ldh a, [$FFF8]                                ; $68D1: $F0 $F8
    ldh a, [$FFF4]                                ; $68D3: $F0 $F4
    jr c, jr_01C_6951                             ; $68D5: $38 $7A

    inc a                                         ; $68D7: $3C
    ccf                                           ; $68D8: $3F
    inc e                                         ; $68D9: $1C
    inc a                                         ; $68DA: $3C
    dec de                                        ; $68DB: $1B
    inc a                                         ; $68DC: $3C
    dec de                                        ; $68DD: $1B
    rra                                           ; $68DE: $1F
    nop                                           ; $68DF: $00
    db $FC                                        ; $68E0: $FC
    ret nz                                        ; $68E1: $C0

    ret nz                                        ; $68E2: $C0

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
    nop                                           ; $68F2: $00
    nop                                           ; $68F3: $00
    nop                                           ; $68F4: $00
    nop                                           ; $68F5: $00
    nop                                           ; $68F6: $00
    nop                                           ; $68F7: $00
    ret nz                                        ; $68F8: $C0

    nop                                           ; $68F9: $00
    and b                                         ; $68FA: $A0
    ld b, b                                       ; $68FB: $40
    ld d, b                                       ; $68FC: $50
    and b                                         ; $68FD: $A0
    ldh a, [rP1]                                  ; $68FE: $F0 $00
    ld c, [hl]                                    ; $6900: $4E
    add hl, sp                                    ; $6901: $39
    ld e, a                                       ; $6902: $5F
    ld a, [hl-]                                   ; $6903: $3A
    sbc a                                         ; $6904: $9F
    ld a, d                                       ; $6905: $7A
    cp a                                          ; $6906: $BF
    ld a, d                                       ; $6907: $7A
    rst RST_38                                    ; $6908: $FF
    ld a, l                                       ; $6909: $7D
    cp a                                          ; $690A: $BF
    ld a, [hl]                                    ; $690B: $7E
    rst RST_38                                    ; $690C: $FF
    ld a, [hl]                                    ; $690D: $7E
    rst RST_38                                    ; $690E: $FF
    ld a, a                                       ; $690F: $7F
    cp a                                          ; $6910: $BF
    ld a, a                                       ; $6911: $7F
    ld a, a                                       ; $6912: $7F
    ccf                                           ; $6913: $3F
    ld a, a                                       ; $6914: $7F
    ccf                                           ; $6915: $3F
    ld a, a                                       ; $6916: $7F
    ld a, $7F                                     ; $6917: $3E $7F
    ld a, $3F                                     ; $6919: $3E $3F
    ld e, $3F                                     ; $691B: $1E $3F
    ld e, $1F                                     ; $691D: $1E $1F
    ld c, $3A                                     ; $691F: $0E $3A
    push de                                       ; $6921: $D5
    ld a, $D3                                     ; $6922: $3E $D3
    rst RST_38                                    ; $6924: $FF
    db $10                                        ; $6925: $10
    db $FD                                        ; $6926: $FD
    ld [de], a                                    ; $6927: $12
    ei                                            ; $6928: $FB
    inc c                                         ; $6929: $0C
    ld sp, hl                                     ; $692A: $F9
    rst RST_38                                    ; $692B: $FF
    ld sp, hl                                     ; $692C: $F9
    rst RST_38                                    ; $692D: $FF
    db $FD                                        ; $692E: $FD
    ld a, [hl]                                    ; $692F: $7E
    rst RST_38                                    ; $6930: $FF
    cp [hl]                                       ; $6931: $BE
    cp a                                          ; $6932: $BF
    nop                                           ; $6933: $00
    sbc a                                         ; $6934: $9F
    ld c, $3F                                     ; $6935: $0E $3F
    nop                                           ; $6937: $00
    ld a, a                                       ; $6938: $7F
    ccf                                           ; $6939: $3F
    ccf                                           ; $693A: $3F
    ld bc, $3D43                                  ; $693B: $01 $43 $3D
    ld b, e                                       ; $693E: $43
    dec a                                         ; $693F: $3D
    add b                                         ; $6940: $80
    nop                                           ; $6941: $00
    ld b, b                                       ; $6942: $40
    add b                                         ; $6943: $80
    ld b, b                                       ; $6944: $40
    add b                                         ; $6945: $80
    ld a, h                                       ; $6946: $7C
    add b                                         ; $6947: $80
    ldh [c], a                                    ; $6948: $E2
    inc e                                         ; $6949: $1C
    ld a, [hl]                                    ; $694A: $7E
    xor h                                         ; $694B: $AC
    sbc $34                                       ; $694C: $DE $34
    adc $34                                       ; $694E: $CE $34
    xor h                                         ; $6950: $AC

jr_01C_6951:
    ret nc                                        ; $6951: $D0

    cp b                                          ; $6952: $B8
    ret nz                                        ; $6953: $C0

    cp a                                          ; $6954: $BF
    ret z                                         ; $6955: $C8

    ldh a, [$FF9F]                                ; $6956: $F0 $9F
    ldh a, [$FF1F]                                ; $6958: $F0 $1F
    ld [hl], d                                    ; $695A: $72
    rst RST_18                                    ; $695B: $DF

jr_01C_695C:
    halt                                          ; $695C: $76
    sbc a                                         ; $695D: $9F
    ld e, [hl]                                    ; $695E: $5E
    xor a                                         ; $695F: $AF
    nop                                           ; $6960: $00
    nop                                           ; $6961: $00
    nop                                           ; $6962: $00
    nop                                           ; $6963: $00
    nop                                           ; $6964: $00
    nop                                           ; $6965: $00
    nop                                           ; $6966: $00
    nop                                           ; $6967: $00
    nop                                           ; $6968: $00
    nop                                           ; $6969: $00
    nop                                           ; $696A: $00
    nop                                           ; $696B: $00
    nop                                           ; $696C: $00
    nop                                           ; $696D: $00
    nop                                           ; $696E: $00
    nop                                           ; $696F: $00
    nop                                           ; $6970: $00
    nop                                           ; $6971: $00
    nop                                           ; $6972: $00
    nop                                           ; $6973: $00
    nop                                           ; $6974: $00
    nop                                           ; $6975: $00
    ldh a, [rP1]                                  ; $6976: $F0 $00
    rrca                                          ; $6978: $0F
    ldh a, [$FFD0]                                ; $6979: $F0 $D0
    rst RST_38                                    ; $697B: $FF
    db $DB                                        ; $697C: $DB
    rst RST_38                                    ; $697D: $FF
    rst RST_38                                    ; $697E: $FF
    db $FC                                        ; $697F: $FC
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

jr_01C_6998:
    ret nz                                        ; $6998: $C0

    nop                                           ; $6999: $00
    jr nz, jr_01C_695C                            ; $699A: $20 $C0

    ret nz                                        ; $699C: $C0

    add b                                         ; $699D: $80
    add b                                         ; $699E: $80
    nop                                           ; $699F: $00
    add hl, de                                    ; $69A0: $19
    rrca                                          ; $69A1: $0F
    dec de                                        ; $69A2: $1B
    rrca                                          ; $69A3: $0F
    dec de                                        ; $69A4: $1B
    rrca                                          ; $69A5: $0F
    rla                                           ; $69A6: $17
    rrca                                          ; $69A7: $0F
    rrca                                          ; $69A8: $0F
    rlca                                          ; $69A9: $07
    rrca                                          ; $69AA: $0F
    rlca                                          ; $69AB: $07
    rlca                                          ; $69AC: $07
    nop                                           ; $69AD: $00
    ld b, $03                                     ; $69AE: $06 $03
    rrca                                          ; $69B0: $0F
    rlca                                          ; $69B1: $07
    ld c, $07                                     ; $69B2: $0E $07
    rrca                                          ; $69B4: $0F
    nop                                           ; $69B5: $00
    ld [bc], a                                    ; $69B6: $02
    ld bc, $0102                                  ; $69B7: $01 $02 $01
    ld c, $01                                     ; $69BA: $0E $01
    ld [de], a                                    ; $69BC: $12
    dec c                                         ; $69BD: $0D
    ld [hl+], a                                   ; $69BE: $22
    dec e                                         ; $69BF: $1D
    cp h                                          ; $69C0: $BC
    ld hl, sp-$64                                 ; $69C1: $F8 $9C
    ld hl, sp-$24                                 ; $69C3: $F8 $DC
    ld hl, sp-$34                                 ; $69C5: $F8 $CC
    ld hl, sp-$08                                 ; $69C7: $F8 $F8
    ldh a, [$FFF8]                                ; $69C9: $F0 $F8
    ldh a, [$FFF0]                                ; $69CB: $F0 $F0
    nop                                           ; $69CD: $00
    ld [hl], b                                    ; $69CE: $70
    ldh [$FF38], a                                ; $69CF: $E0 $38
    ldh a, [$FF78]                                ; $69D1: $F0 $78
    ldh a, [$FFF8]                                ; $69D3: $F0 $F8
    nop                                           ; $69D5: $00
    jr nz, jr_01C_6998                            ; $69D6: $20 $C0

    ld a, $C0                                     ; $69D8: $3E $C0
    ld hl, $26DE                                  ; $69DA: $21 $DE $26
    reti                                          ; $69DD: $D9


    ld a, [hl-]                                   ; $69DE: $3A
    push bc                                       ; $69DF: $C5
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
    nop                                           ; $69EA: $00
    nop                                           ; $69EB: $00
    nop                                           ; $69EC: $00
    nop                                           ; $69ED: $00
    nop                                           ; $69EE: $00
    nop                                           ; $69EF: $00
    nop                                           ; $69F0: $00
    nop                                           ; $69F1: $00
    nop                                           ; $69F2: $00
    nop                                           ; $69F3: $00
    nop                                           ; $69F4: $00
    nop                                           ; $69F5: $00
    nop                                           ; $69F6: $00
    nop                                           ; $69F7: $00
    nop                                           ; $69F8: $00
    nop                                           ; $69F9: $00
    nop                                           ; $69FA: $00
    nop                                           ; $69FB: $00
    nop                                           ; $69FC: $00
    nop                                           ; $69FD: $00
    add b                                         ; $69FE: $80
    nop                                           ; $69FF: $00
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
    ld bc, $0300                                  ; $6A0E: $01 $00 $03
    nop                                           ; $6A11: $00
    rlca                                          ; $6A12: $07
    inc bc                                        ; $6A13: $03
    rrca                                          ; $6A14: $0F
    rlca                                          ; $6A15: $07
    dec c                                         ; $6A16: $0D
    rlca                                          ; $6A17: $07
    inc c                                         ; $6A18: $0C
    rlca                                          ; $6A19: $07
    ld [$1C07], sp                                ; $6A1A: $08 $07 $1C
    rrca                                          ; $6A1D: $0F
    jr jr_01C_6A2F                                ; $6A1E: $18 $0F

    nop                                           ; $6A20: $00
    nop                                           ; $6A21: $00
    nop                                           ; $6A22: $00
    nop                                           ; $6A23: $00
    nop                                           ; $6A24: $00
    nop                                           ; $6A25: $00
    nop                                           ; $6A26: $00
    nop                                           ; $6A27: $00
    nop                                           ; $6A28: $00
    nop                                           ; $6A29: $00
    nop                                           ; $6A2A: $00
    nop                                           ; $6A2B: $00
    ldh [rP1], a                                  ; $6A2C: $E0 $00
    sub b                                         ; $6A2E: $90

jr_01C_6A2F:
    ldh [$FFF8], a                                ; $6A2F: $E0 $F8
    jr nc, @-$16                                  ; $6A31: $30 $E8

    ret nc                                        ; $6A33: $D0

    ld hl, sp-$30                                 ; $6A34: $F8 $D0
    ld a, h                                       ; $6A36: $7C
    add sp, -$04                                  ; $6A37: $E8 $FC
    add sp, $3C                                   ; $6A39: $E8 $3C
    add sp, $7C                                   ; $6A3B: $E8 $7C
    ldh a, [rNR32]                                ; $6A3D: $F0 $1C
    ldh a, [rP1]                                  ; $6A3F: $F0 $00
    nop                                           ; $6A41: $00
    nop                                           ; $6A42: $00
    nop                                           ; $6A43: $00
    ld bc, $3A00                                  ; $6A44: $01 $00 $3A
    ld bc, $192E                                  ; $6A47: $01 $2E $19
    cpl                                           ; $6A4A: $2F
    ld e, $17                                     ; $6A4B: $1E $17
    rrca                                          ; $6A4D: $0F
    rla                                           ; $6A4E: $17
    rrca                                          ; $6A4F: $0F
    dec bc                                        ; $6A50: $0B
    rlca                                          ; $6A51: $07
    dec b                                         ; $6A52: $05
    inc bc                                        ; $6A53: $03
    inc bc                                        ; $6A54: $03
    ld bc, $0103                                  ; $6A55: $01 $03 $01
    rra                                           ; $6A58: $1F
    inc bc                                        ; $6A59: $03
    ld l, a                                       ; $6A5A: $6F
    rla                                           ; $6A5B: $17
    add a                                         ; $6A5C: $87
    ld a, e                                       ; $6A5D: $7B
    rst RST_38                                    ; $6A5E: $FF
    nop                                           ; $6A5F: $00
    ld l, a                                       ; $6A60: $6F
    ccf                                           ; $6A61: $3F
    rst RST_28                                    ; $6A62: $EF
    inc e                                         ; $6A63: $1C
    inc l                                         ; $6A64: $2C
    db $DB                                        ; $6A65: $DB
    inc e                                         ; $6A66: $1C
    db $EB                                        ; $6A67: $EB
    inc e                                         ; $6A68: $1C
    db $E3                                        ; $6A69: $E3
    ldh [c], a                                    ; $6A6A: $E2
    ld bc, $80C1                                  ; $6A6B: $01 $C1 $80
    ldh [$FFC0], a                                ; $6A6E: $E0 $C0
    ldh [$FFC0], a                                ; $6A70: $E0 $C0
    ldh [$FFC0], a                                ; $6A72: $E0 $C0
    ret nz                                        ; $6A74: $C0

    add b                                         ; $6A75: $80
    ret nz                                        ; $6A76: $C0

    add b                                         ; $6A77: $80
    ldh [$FFC0], a                                ; $6A78: $E0 $C0
    ldh [$FFC0], a                                ; $6A7A: $E0 $C0
    ldh [$FFC0], a                                ; $6A7C: $E0 $C0
    ret nz                                        ; $6A7E: $C0

    nop                                           ; $6A7F: $00
    add a                                         ; $6A80: $87
    inc bc                                        ; $6A81: $03
    rst RST_00                                    ; $6A82: $C7
    add e                                         ; $6A83: $83
    rst RST_00                                    ; $6A84: $C7
    inc bc                                        ; $6A85: $03
    ld b, a                                       ; $6A86: $47
    add e                                         ; $6A87: $83
    daa                                           ; $6A88: $27
    jp $E31F                                      ; $6A89: $C3 $1F $E3


    ld a, a                                       ; $6A8C: $7F
    sbc h                                         ; $6A8D: $9C
    rst RST_18                                    ; $6A8E: $DF
    ld a, $4F                                     ; $6A8F: $3E $4F
    ccf                                           ; $6A91: $3F
    ld b, a                                       ; $6A92: $47
    ccf                                           ; $6A93: $3F
    ld b, e                                       ; $6A94: $43
    ccf                                           ; $6A95: $3F
    ld hl, $1E1F                                  ; $6A96: $21 $1F $1E
    ld bc, $0001                                  ; $6A99: $01 $01 $00
    ld bc, $0100                                  ; $6A9C: $01 $00 $01
    nop                                           ; $6A9F: $00
    di                                            ; $6AA0: $F3
    cp a                                          ; $6AA1: $BF
    ldh a, [c]                                    ; $6AA2: $F2
    sbc a                                         ; $6AA3: $9F
    sbc c                                         ; $6AA4: $99
    rlca                                          ; $6AA5: $07
    add a                                         ; $6AA6: $87
    ld bc, $0001                                  ; $6AA7: $01 $01 $00
    nop                                           ; $6AAA: $00
    nop                                           ; $6AAB: $00
    add b                                         ; $6AAC: $80
    nop                                           ; $6AAD: $00
    add b                                         ; $6AAE: $80
    nop                                           ; $6AAF: $00
    ret nz                                        ; $6AB0: $C0

    add b                                         ; $6AB1: $80
    ret nz                                        ; $6AB2: $C0

    add b                                         ; $6AB3: $80
    ldh a, [$FFC0]                                ; $6AB4: $F0 $C0
    ld hl, sp-$10                                 ; $6AB6: $F8 $F0
    ld a, h                                       ; $6AB8: $7C
    ldh a, [$FFF2]                                ; $6AB9: $F0 $F2
    adc h                                         ; $6ABB: $8C
    sub c                                         ; $6ABC: $91
    ld l, [hl]                                    ; $6ABD: $6E
    rst RST_38                                    ; $6ABE: $FF
    nop                                           ; $6ABF: $00
    nop                                           ; $6AC0: $00
    nop                                           ; $6AC1: $00
    inc bc                                        ; $6AC2: $03
    nop                                           ; $6AC3: $00
    dec a                                         ; $6AC4: $3D
    inc bc                                        ; $6AC5: $03
    ld b, e                                       ; $6AC6: $43
    ld a, $B5                                     ; $6AC7: $3E $B5
    ld l, a                                       ; $6AC9: $6F
    adc d                                         ; $6ACA: $8A
    ld a, a                                       ; $6ACB: $7F
    rst RST_38                                    ; $6ACC: $FF
    ld a, a                                       ; $6ACD: $7F
    ld a, a                                       ; $6ACE: $7F
    inc d                                         ; $6ACF: $14
    ld d, l                                       ; $6AD0: $55
    ld a, [hl+]                                   ; $6AD1: $2A
    ccf                                           ; $6AD2: $3F
    nop                                           ; $6AD3: $00
    ld l, e                                       ; $6AD4: $6B
    ccf                                           ; $6AD5: $3F
    ccf                                           ; $6AD6: $3F
    inc e                                         ; $6AD7: $1C
    inc e                                         ; $6AD8: $1C
    nop                                           ; $6AD9: $00
    nop                                           ; $6ADA: $00
    nop                                           ; $6ADB: $00
    nop                                           ; $6ADC: $00
    nop                                           ; $6ADD: $00
    nop                                           ; $6ADE: $00
    nop                                           ; $6ADF: $00
    ld hl, sp+$00                                 ; $6AE0: $F8 $00
    rst RST_38                                    ; $6AE2: $FF
    ld a, b                                       ; $6AE3: $78
    rst RST_30                                    ; $6AE4: $F7
    adc a                                         ; $6AE5: $8F
    and [hl]                                      ; $6AE6: $A6
    ld e, e                                       ; $6AE7: $5B
    rst RST_08                                    ; $6AE8: $CF
    dec a                                         ; $6AE9: $3D
    cp a                                          ; $6AEA: $BF
    pop hl                                        ; $6AEB: $E1
    rst RST_38                                    ; $6AEC: $FF
    inc c                                         ; $6AED: $0C
    or a                                          ; $6AEE: $B7
    ld e, [hl]                                    ; $6AEF: $5E
    ld l, e                                       ; $6AF0: $6B
    cp l                                          ; $6AF1: $BD
    rst RST_10                                    ; $6AF2: $D7
    ld a, l                                       ; $6AF3: $7D
    ld a, [hl]                                    ; $6AF4: $7E
    db $FD                                        ; $6AF5: $FD
    cp $7D                                        ; $6AF6: $FE $7D
    ld a, a                                       ; $6AF8: $7F
    nop                                           ; $6AF9: $00
    nop                                           ; $6AFA: $00
    nop                                           ; $6AFB: $00
    nop                                           ; $6AFC: $00
    nop                                           ; $6AFD: $00
    nop                                           ; $6AFE: $00
    nop                                           ; $6AFF: $00
    ld [hl], b                                    ; $6B00: $70
    rrca                                          ; $6B01: $0F
    ld [hl], e                                    ; $6B02: $73
    inc l                                         ; $6B03: $2C
    push af                                       ; $6B04: $F5
    ld a, [hl+]                                   ; $6B05: $2A
    ld sp, hl                                     ; $6B06: $F9
    add [hl]                                      ; $6B07: $86
    ccf                                           ; $6B08: $3F
    reti                                          ; $6B09: $D9


    ld a, [hl]                                    ; $6B0A: $7E
    add e                                         ; $6B0B: $83
    cp $8B                                        ; $6B0C: $FE $8B
    rst RST_38                                    ; $6B0E: $FF
    nop                                           ; $6B0F: $00
    xor a                                         ; $6B10: $AF
    ld d, a                                       ; $6B11: $57
    rst RST_38                                    ; $6B12: $FF
    adc a                                         ; $6B13: $8F

jr_01C_6B14:
    ld a, [$BABD]                                 ; $6B14: $FA $BD $BA
    ld c, l                                       ; $6B17: $4D
    cp a                                          ; $6B18: $BF
    ld l, a                                       ; $6B19: $6F
    cp a                                          ; $6B1A: $BF
    ld h, b                                       ; $6B1B: $60
    cp a                                          ; $6B1C: $BF
    ld l, a                                       ; $6B1D: $6F
    ld a, a                                       ; $6B1E: $7F
    nop                                           ; $6B1F: $00
    inc c                                         ; $6B20: $0C
    nop                                           ; $6B21: $00
    sub a                                         ; $6B22: $97
    inc c                                         ; $6B23: $0C
    ld d, a                                       ; $6B24: $57
    adc a                                         ; $6B25: $8F
    ld d, a                                       ; $6B26: $57
    adc a                                         ; $6B27: $8F
    cpl                                           ; $6B28: $2F
    rst RST_18                                    ; $6B29: $DF
    cpl                                           ; $6B2A: $2F
    rst RST_18                                    ; $6B2B: $DF
    ccf                                           ; $6B2C: $3F
    ret nz                                        ; $6B2D: $C0

    ldh [$FF1F], a                                ; $6B2E: $E0 $1F
    rst RST_28                                    ; $6B30: $EF
    rst RST_18                                    ; $6B31: $DF
    rst RST_38                                    ; $6B32: $FF
    rst RST_18                                    ; $6B33: $DF
    rst RST_38                                    ; $6B34: $FF
    rst RST_18                                    ; $6B35: $DF
    rst RST_38                                    ; $6B36: $FF
    ld e, [hl]                                    ; $6B37: $5E
    cp $61                                        ; $6B38: $FE $61
    rst RST_38                                    ; $6B3A: $FF
    xor $EF                                       ; $6B3B: $EE $EF
    rlca                                          ; $6B3D: $07
    rst RST_08                                    ; $6B3E: $CF
    add a                                         ; $6B3F: $87
    add b                                         ; $6B40: $80
    nop                                           ; $6B41: $00
    ret nz                                        ; $6B42: $C0

    add b                                         ; $6B43: $80
    ldh [$FFC0], a                                ; $6B44: $E0 $C0
    ldh [$FFC0], a                                ; $6B46: $E0 $C0
    ldh a, [$FF60]                                ; $6B48: $F0 $60
    ld [hl], b                                    ; $6B4A: $70
    and b                                         ; $6B4B: $A0
    ldh a, [$FFA0]                                ; $6B4C: $F0 $A0
    ldh a, [$FFA0]                                ; $6B4E: $F0 $A0
    ldh a, [rNR41]                                ; $6B50: $F0 $20
    jr c, jr_01C_6B14                             ; $6B52: $38 $C0

    ld e, $E0                                     ; $6B54: $1E $E0
    ccf                                           ; $6B56: $3F
    sbc $FB                                       ; $6B57: $DE $FB
    ccf                                           ; $6B59: $3F
    and $BF                                       ; $6B5A: $E6 $BF
    pop hl                                        ; $6B5C: $E1
    cp a                                          ; $6B5D: $BF
    ret                                           ; $6B5E: $C9


    cp a                                          ; $6B5F: $BF
    nop                                           ; $6B60: $00
    nop                                           ; $6B61: $00
    nop                                           ; $6B62: $00
    nop                                           ; $6B63: $00
    nop                                           ; $6B64: $00
    nop                                           ; $6B65: $00
    add b                                         ; $6B66: $80
    nop                                           ; $6B67: $00
    ret nz                                        ; $6B68: $C0

    add b                                         ; $6B69: $80
    ret nz                                        ; $6B6A: $C0

    add b                                         ; $6B6B: $80
    ldh [$FFC0], a                                ; $6B6C: $E0 $C0
    or b                                          ; $6B6E: $B0
    ldh [$FF78], a                                ; $6B6F: $E0 $78
    ldh a, [$FF5C]                                ; $6B71: $F0 $5C
    ld hl, sp+$3E                                 ; $6B73: $F8 $3E
    db $FC                                        ; $6B75: $FC
    ld d, a                                       ; $6B76: $57
    cp $CF                                        ; $6B77: $FE $CF
    ccf                                           ; $6B79: $3F
    dec a                                         ; $6B7A: $3D
    rlca                                          ; $6B7B: $07
    rlca                                          ; $6B7C: $07
    nop                                           ; $6B7D: $00
    nop                                           ; $6B7E: $00
    nop                                           ; $6B7F: $00
    add b                                         ; $6B80: $80
    nop                                           ; $6B81: $00
    ret nz                                        ; $6B82: $C0

    add b                                         ; $6B83: $80
    ldh [$FFC0], a                                ; $6B84: $E0 $C0
    ldh [rP1], a                                  ; $6B86: $E0 $00
    nop                                           ; $6B88: $00
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
    nop                                           ; $6BA0: $00
    nop                                           ; $6BA1: $00
    nop                                           ; $6BA2: $00
    nop                                           ; $6BA3: $00
    nop                                           ; $6BA4: $00
    nop                                           ; $6BA5: $00
    nop                                           ; $6BA6: $00
    nop                                           ; $6BA7: $00
    nop                                           ; $6BA8: $00
    nop                                           ; $6BA9: $00
    nop                                           ; $6BAA: $00
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
    nop                                           ; $6BBC: $00
    nop                                           ; $6BBD: $00
    ccf                                           ; $6BBE: $3F
    nop                                           ; $6BBF: $00
    ld b, $03                                     ; $6BC0: $06 $03
    inc c                                         ; $6BC2: $0C
    rlca                                          ; $6BC3: $07
    add hl, de                                    ; $6BC4: $19
    rrca                                          ; $6BC5: $0F
    dec de                                        ; $6BC6: $1B
    rrca                                          ; $6BC7: $0F
    ld [hl], $1F                                  ; $6BC8: $36 $1F
    ld a, $1B                                     ; $6BCA: $3E $1B
    ld a, [hl]                                    ; $6BCC: $7E
    inc sp                                        ; $6BCD: $33
    ld a, h                                       ; $6BCE: $7C
    inc hl                                        ; $6BCF: $23
    ld h, h                                       ; $6BD0: $64
    inc bc                                        ; $6BD1: $03
    ld b, h                                       ; $6BD2: $44
    inc bc                                        ; $6BD3: $03
    inc b                                         ; $6BD4: $04
    inc bc                                        ; $6BD5: $03
    ld b, $03                                     ; $6BD6: $06 $03
    ld [bc], a                                    ; $6BD8: $02
    ld bc, $0103                                  ; $6BD9: $01 $03 $01
    ld bc, $0100                                  ; $6BDC: $01 $00 $01
    nop                                           ; $6BDF: $00
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
    inc bc                                        ; $6BEC: $03
    nop                                           ; $6BED: $00
    ld c, $03                                     ; $6BEE: $0E $03
    jr jr_01C_6C01                                ; $6BF0: $18 $0F

    ld h, b                                       ; $6BF2: $60
    rra                                           ; $6BF3: $1F
    ret nz                                        ; $6BF4: $C0

    ld a, a                                       ; $6BF5: $7F
    add b                                         ; $6BF6: $80
    rst RST_38                                    ; $6BF7: $FF
    jr nz, @+$01                                  ; $6BF8: $20 $FF

    ld b, b                                       ; $6BFA: $40
    rst RST_38                                    ; $6BFB: $FF
    ret nz                                        ; $6BFC: $C0

    rst RST_38                                    ; $6BFD: $FF
    add b                                         ; $6BFE: $80
    rst RST_38                                    ; $6BFF: $FF
    nop                                           ; $6C00: $00

jr_01C_6C01:
    nop                                           ; $6C01: $00
    nop                                           ; $6C02: $00
    nop                                           ; $6C03: $00
    nop                                           ; $6C04: $00
    nop                                           ; $6C05: $00
    rlca                                          ; $6C06: $07
    nop                                           ; $6C07: $00
    ccf                                           ; $6C08: $3F
    rlca                                          ; $6C09: $07
    ld hl, sp+$3F                                 ; $6C0A: $F8 $3F
    ret nz                                        ; $6C0C: $C0

    rst RST_38                                    ; $6C0D: $FF
    nop                                           ; $6C0E: $00
    rst RST_38                                    ; $6C0F: $FF
    inc bc                                        ; $6C10: $03
    rst RST_38                                    ; $6C11: $FF
    rlca                                          ; $6C12: $07
    rst RST_38                                    ; $6C13: $FF
    rrca                                          ; $6C14: $0F
    db $FC                                        ; $6C15: $FC
    inc e                                         ; $6C16: $1C
    ei                                            ; $6C17: $FB
    ld e, $FB                                     ; $6C18: $1E $FB
    ccf                                           ; $6C1A: $3F

jr_01C_6C1B:
    di                                            ; $6C1B: $F3
    ccf                                           ; $6C1C: $3F
    pop af                                        ; $6C1D: $F1
    dec sp                                        ; $6C1E: $3B
    pop af                                        ; $6C1F: $F1
    nop                                           ; $6C20: $00
    nop                                           ; $6C21: $00
    ld bc, $7F00                                  ; $6C22: $01 $00 $7F
    ld bc, $7FF8                                  ; $6C25: $01 $F8 $7F
    nop                                           ; $6C28: $00
    rst RST_38                                    ; $6C29: $FF
    rlca                                          ; $6C2A: $07
    rst RST_38                                    ; $6C2B: $FF
    ccf                                           ; $6C2C: $3F
    rst RST_38                                    ; $6C2D: $FF
    rst RST_38                                    ; $6C2E: $FF
    ldh [$FFF8], a                                ; $6C2F: $E0 $F8
    rst RST_00                                    ; $6C31: $C7
    ld hl, sp-$29                                 ; $6C32: $F8 $D7
    rst RST_38                                    ; $6C34: $FF
    ld de, $C53B                                  ; $6C35: $11 $3B $C5
    rra                                           ; $6C38: $1F
    jp hl                                         ; $6C39: $E9


    ccf                                           ; $6C3A: $3F
    ret nz                                        ; $6C3B: $C0

    rst RST_38                                    ; $6C3C: $FF
    cp a                                          ; $6C3D: $BF
    rst RST_38                                    ; $6C3E: $FF
    cp a                                          ; $6C3F: $BF
    rrca                                          ; $6C40: $0F
    nop                                           ; $6C41: $00
    rst RST_38                                    ; $6C42: $FF
    rrca                                          ; $6C43: $0F
    ret nz                                        ; $6C44: $C0

    rst RST_38                                    ; $6C45: $FF
    rra                                           ; $6C46: $1F
    rst RST_38                                    ; $6C47: $FF
    rst RST_38                                    ; $6C48: $FF
    cp $FE                                        ; $6C49: $FE $FE
    ld hl, sp-$08                                 ; $6C4B: $F8 $F8
    ldh [$FFE0], a                                ; $6C4D: $E0 $E0
    nop                                           ; $6C4F: $00
    ld c, a                                       ; $6C50: $4F
    add b                                         ; $6C51: $80
    jr z, jr_01C_6C1B                             ; $6C52: $28 $C7

    ccf                                           ; $6C54: $3F
    pop bc                                        ; $6C55: $C1
    ld h, c                                       ; $6C56: $61

jr_01C_6C57:
    sbc [hl]                                      ; $6C57: $9E
    add b                                         ; $6C58: $80

jr_01C_6C59:
    ld a, a                                       ; $6C59: $7F
    ccf                                           ; $6C5A: $3F

jr_01C_6C5B:
    rst RST_38                                    ; $6C5B: $FF
    rst RST_38                                    ; $6C5C: $FF
    ld a, a                                       ; $6C5D: $7F
    rst RST_38                                    ; $6C5E: $FF
    ld a, a                                       ; $6C5F: $7F
    nop                                           ; $6C60: $00
    rst RST_38                                    ; $6C61: $FF
    db $10                                        ; $6C62: $10
    rst RST_38                                    ; $6C63: $FF
    db $10                                        ; $6C64: $10
    rst RST_28                                    ; $6C65: $EF
    jr nc, jr_01C_6C57                            ; $6C66: $30 $EF

    jr c, jr_01C_6C59                             ; $6C68: $38 $EF

    jr c, jr_01C_6C5B                             ; $6C6A: $38 $EF

    inc l                                         ; $6C6C: $2C
    rst RST_00                                    ; $6C6D: $C7
    inc l                                         ; $6C6E: $2C
    rst RST_00                                    ; $6C6F: $C7
    ld h, $C3                                     ; $6C70: $26 $C3
    inc hl                                        ; $6C72: $23
    pop bc                                        ; $6C73: $C1
    and c                                         ; $6C74: $A1
    ret nz                                        ; $6C75: $C0

    ldh [rLCDC], a                                ; $6C76: $E0 $40
    ld h, b                                       ; $6C78: $60
    nop                                           ; $6C79: $00
    jr nz, jr_01C_6C7C                            ; $6C7A: $20 $00

jr_01C_6C7C:
    nop                                           ; $6C7C: $00
    nop                                           ; $6C7D: $00
    nop                                           ; $6C7E: $00
    nop                                           ; $6C7F: $00
    rst RST_20                                    ; $6C80: $E7
    jp nz, $C0E3                                  ; $6C81: $C2 $E3 $C0

    ldh [$FFC0], a                                ; $6C84: $E0 $C0
    ld [hl], b                                    ; $6C86: $70
    ldh [rSVBK], a                                ; $6C87: $E0 $70
    ldh [rSVBK], a                                ; $6C89: $E0 $70
    ldh [$FF38], a                                ; $6C8B: $E0 $38
    ldh a, [$FF38]                                ; $6C8D: $F0 $38
    ldh a, [rNR32]                                ; $6C8F: $F0 $1C
    ld hl, sp+$0F                                 ; $6C91: $F8 $0F
    ld hl, sp-$79                                 ; $6C93: $F8 $87
    db $FD                                        ; $6C95: $FD
    db $E3                                        ; $6C96: $E3
    ld a, [hl]                                    ; $6C97: $7E
    ld a, l                                       ; $6C98: $7D
    rra                                           ; $6C99: $1F
    rra                                           ; $6C9A: $1F
    rlca                                          ; $6C9B: $07
    rlca                                          ; $6C9C: $07
    nop                                           ; $6C9D: $00
    nop                                           ; $6C9E: $00
    nop                                           ; $6C9F: $00
    rst RST_38                                    ; $6CA0: $FF
    cp $FF                                        ; $6CA1: $FE $FF
    rst RST_38                                    ; $6CA3: $FF
    rst RST_38                                    ; $6CA4: $FF
    ld a, a                                       ; $6CA5: $7F
    ld a, a                                       ; $6CA6: $7F
    rra                                           ; $6CA7: $1F
    rra                                           ; $6CA8: $1F
    nop                                           ; $6CA9: $00
    rrca                                          ; $6CAA: $0F
    rlca                                          ; $6CAB: $07
    rrca                                          ; $6CAC: $0F
    nop                                           ; $6CAD: $00
    rra                                           ; $6CAE: $1F
    inc bc                                        ; $6CAF: $03
    inc hl                                        ; $6CB0: $23
    dec e                                         ; $6CB1: $1D
    ld b, e                                       ; $6CB2: $43
    dec a                                         ; $6CB3: $3D
    add c                                         ; $6CB4: $81
    ld a, [hl]                                    ; $6CB5: $7E
    and $98                                       ; $6CB6: $E6 $98
    ld hl, sp+$60                                 ; $6CB8: $F8 $60
    db $FC                                        ; $6CBA: $FC
    cp b                                          ; $6CBB: $B8
    db $FC                                        ; $6CBC: $FC
    jr @-$42                                      ; $6CBD: $18 $BC

    ld a, b                                       ; $6CBF: $78
    rst RST_38                                    ; $6CC0: $FF
    rst RST_38                                    ; $6CC1: $FF
    rst RST_38                                    ; $6CC2: $FF
    ccf                                           ; $6CC3: $3F
    rst RST_38                                    ; $6CC4: $FF
    rst RST_08                                    ; $6CC5: $CF
    rst RST_38                                    ; $6CC6: $FF
    add e                                         ; $6CC7: $83
    di                                            ; $6CC8: $F3
    ld h, c                                       ; $6CC9: $61
    pop af                                        ; $6CCA: $F1
    ret nz                                        ; $6CCB: $C0

    ld hl, sp+$30                                 ; $6CCC: $F8 $30
    db $FC                                        ; $6CCE: $FC
    ldh [$FFE2], a                                ; $6CCF: $E0 $E2
    call c, $BEC1                                 ; $6CD1: $DC $C1 $BE
    ret nz                                        ; $6CD4: $C0

    ccf                                           ; $6CD5: $3F
    jr nc, jr_01C_6CE7                            ; $6CD6: $30 $0F

    rrca                                          ; $6CD8: $0F
    nop                                           ; $6CD9: $00
    inc b                                         ; $6CDA: $04
    inc bc                                        ; $6CDB: $03
    inc bc                                        ; $6CDC: $03
    nop                                           ; $6CDD: $00
    nop                                           ; $6CDE: $00
    nop                                           ; $6CDF: $00
    cp $00                                        ; $6CE0: $FE $00
    db $FC                                        ; $6CE2: $FC
    ld hl, sp-$08                                 ; $6CE3: $F8 $F8
    ldh [$FFE0], a                                ; $6CE5: $E0 $E0

jr_01C_6CE7:
    add b                                         ; $6CE7: $80
    add b                                         ; $6CE8: $80
    nop                                           ; $6CE9: $00
    nop                                           ; $6CEA: $00
    nop                                           ; $6CEB: $00
    nop                                           ; $6CEC: $00
    nop                                           ; $6CED: $00
    nop                                           ; $6CEE: $00
    nop                                           ; $6CEF: $00
    add b                                         ; $6CF0: $80
    nop                                           ; $6CF1: $00
    ldh [$FF80], a                                ; $6CF2: $E0 $80
    ldh a, [$FFE0]                                ; $6CF4: $F0 $E0
    ld hl, sp+$70                                 ; $6CF6: $F8 $70
    ld a, h                                       ; $6CF8: $7C
    cp b                                          ; $6CF9: $B8
    ld a, $DC                                     ; $6CFA: $3E $DC
    sbc $EC                                       ; $6CFC: $DE $EC
    rst RST_38                                    ; $6CFE: $FF
    xor $BC                                       ; $6CFF: $EE $BC
    ret c                                         ; $6D01: $D8

    cp $DC                                        ; $6D02: $FE $DC
    cp $EC                                        ; $6D04: $FE $EC
    cp $EC                                        ; $6D06: $FE $EC
    rst RST_38                                    ; $6D08: $FF
    or $FF                                        ; $6D09: $F6 $FF
    or $FF                                        ; $6D0B: $F6 $FF
    ld [hl], d                                    ; $6D0D: $72
    rst RST_38                                    ; $6D0E: $FF

jr_01C_6D0F:
    ld [hl], d                                    ; $6D0F: $72
    ld a, e                                       ; $6D10: $7B
    jr nc, jr_01C_6D83                            ; $6D11: $30 $70

    jr nz, @-$0E                                  ; $6D13: $20 $F0

    jr nz, jr_01C_6D0F                            ; $6D15: $20 $F8

    ld d, b                                       ; $6D17: $50
    db $FC                                        ; $6D18: $FC
    ld hl, sp+$7E                                 ; $6D19: $F8 $7E
    db $FC                                        ; $6D1B: $FC
    rra                                           ; $6D1C: $1F
    cp $E7                                        ; $6D1D: $FE $E7
    rra                                           ; $6D1F: $1F
    ld a, $1C                                     ; $6D20: $3E $1C
    ld e, $0C                                     ; $6D22: $1E $0C
    rst RST_38                                    ; $6D24: $FF
    ld e, $7F                                     ; $6D25: $1E $7F
    cp [hl]                                       ; $6D27: $BE
    ccf                                           ; $6D28: $3F
    sbc $FE                                       ; $6D29: $DE $FE
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
    nop                                           ; $6D3A: $00
    nop                                           ; $6D3B: $00
    nop                                           ; $6D3C: $00
    nop                                           ; $6D3D: $00
    nop                                           ; $6D3E: $00
    nop                                           ; $6D3F: $00
    cp $F0                                        ; $6D40: $FE $F0
    ccf                                           ; $6D42: $3F
    cp $FF                                        ; $6D43: $FE $FF
    ld e, $1F                                     ; $6D45: $1E $1F
    ld c, $0F                                     ; $6D47: $0E $0F
    ld b, $0F                                     ; $6D49: $06 $0F
    nop                                           ; $6D4B: $00
    add hl, de                                    ; $6D4C: $19
    ld b, $21                                     ; $6D4D: $06 $21
    ld e, $3F                                     ; $6D4F: $1E $3F
    nop                                           ; $6D51: $00
    nop                                           ; $6D52: $00
    nop                                           ; $6D53: $00
    nop                                           ; $6D54: $00
    nop                                           ; $6D55: $00
    nop                                           ; $6D56: $00
    nop                                           ; $6D57: $00
    nop                                           ; $6D58: $00
    nop                                           ; $6D59: $00
    nop                                           ; $6D5A: $00
    nop                                           ; $6D5B: $00
    nop                                           ; $6D5C: $00
    nop                                           ; $6D5D: $00
    nop                                           ; $6D5E: $00
    nop                                           ; $6D5F: $00
    inc bc                                        ; $6D60: $03
    nop                                           ; $6D61: $00
    inc b                                         ; $6D62: $04
    inc bc                                        ; $6D63: $03
    rlca                                          ; $6D64: $07
    nop                                           ; $6D65: $00
    nop                                           ; $6D66: $00
    nop                                           ; $6D67: $00
    nop                                           ; $6D68: $00
    nop                                           ; $6D69: $00
    nop                                           ; $6D6A: $00
    nop                                           ; $6D6B: $00
    nop                                           ; $6D6C: $00
    nop                                           ; $6D6D: $00
    nop                                           ; $6D6E: $00
    nop                                           ; $6D6F: $00
    nop                                           ; $6D70: $00
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
    nop                                           ; $6D7B: $00
    nop                                           ; $6D7C: $00
    nop                                           ; $6D7D: $00
    nop                                           ; $6D7E: $00
    nop                                           ; $6D7F: $00
    nop                                           ; $6D80: $00
    nop                                           ; $6D81: $00
    nop                                           ; $6D82: $00

jr_01C_6D83:
    nop                                           ; $6D83: $00
    rlca                                          ; $6D84: $07
    nop                                           ; $6D85: $00
    rra                                           ; $6D86: $1F
    ld bc, $003F                                  ; $6D87: $01 $3F $00
    ccf                                           ; $6D8A: $3F
    nop                                           ; $6D8B: $00
    ccf                                           ; $6D8C: $3F
    nop                                           ; $6D8D: $00
    inc sp                                        ; $6D8E: $33
    inc c                                         ; $6D8F: $0C
    rla                                           ; $6D90: $17
    ld [$1A27], sp                                ; $6D91: $08 $27 $1A
    ld a, a                                       ; $6D94: $7F
    ld [bc], a                                    ; $6D95: $02
    add a                                         ; $6D96: $87
    ld a, b                                       ; $6D97: $78
    jp $E77D                                      ; $6D98: $C3 $7D $E7


    ld a, b                                       ; $6D9B: $78
    rst RST_38                                    ; $6D9C: $FF
    ld [hl], a                                    ; $6D9D: $77
    ld a, a                                       ; $6D9E: $7F
    scf                                           ; $6D9F: $37
    nop                                           ; $6DA0: $00
    nop                                           ; $6DA1: $00
    ccf                                           ; $6DA2: $3F
    nop                                           ; $6DA3: $00
    ldh a, [$FF3F]                                ; $6DA4: $F0 $3F
    ld c, $FF                                     ; $6DA6: $0E $FF
    rst RST_20                                    ; $6DA8: $E7
    rst RST_38                                    ; $6DA9: $FF
    rst RST_30                                    ; $6DAA: $F7
    rst RST_38                                    ; $6DAB: $FF
    rst RST_38                                    ; $6DAC: $FF
    ld a, h                                       ; $6DAD: $7C
    db $FC                                        ; $6DAE: $FC
    ld [$F009], sp                                ; $6DAF: $08 $09 $F0
    dec b                                         ; $6DB2: $05
    ld hl, sp-$19                                 ; $6DB3: $F8 $E7
    jr c, jr_01C_6E23                             ; $6DB5: $38 $6C

    or e                                          ; $6DB7: $B3
    ldh a, [$FF2F]                                ; $6DB8: $F0 $2F
    rst RST_20                                    ; $6DBA: $E7
    rra                                           ; $6DBB: $1F
    rst RST_38                                    ; $6DBC: $FF
    rst RST_28                                    ; $6DBD: $EF
    rst RST_38                                    ; $6DBE: $FF
    rst RST_28                                    ; $6DBF: $EF
    rst RST_38                                    ; $6DC0: $FF
    nop                                           ; $6DC1: $00
    push bc                                       ; $6DC2: $C5
    rst RST_38                                    ; $6DC3: $FF
    ccf                                           ; $6DC4: $3F
    db $FC                                        ; $6DC5: $FC
    db $FC                                        ; $6DC6: $FC
    ldh a, [$FFF0]                                ; $6DC7: $F0 $F0
    ret nz                                        ; $6DC9: $C0

    ret nz                                        ; $6DCA: $C0

    nop                                           ; $6DCB: $00
    nop                                           ; $6DCC: $00
    nop                                           ; $6DCD: $00
    nop                                           ; $6DCE: $00
    nop                                           ; $6DCF: $00
    ldh a, [rP1]                                  ; $6DD0: $F0 $00
    inc e                                         ; $6DD2: $1C
    ldh a, [$FFFE]                                ; $6DD3: $F0 $FE
    inc a                                         ; $6DD5: $3C
    ccf                                           ; $6DD6: $3F
    adc $0F                                       ; $6DD7: $CE $0F
    rst RST_30                                    ; $6DD9: $F7
    rst RST_20                                    ; $6DDA: $E7
    ei                                            ; $6DDB: $FB
    ei                                            ; $6DDC: $FB
    db $FD                                        ; $6DDD: $FD
    rst RST_38                                    ; $6DDE: $FF
    db $FD                                        ; $6DDF: $FD
    add b                                         ; $6DE0: $80
    nop                                           ; $6DE1: $00
    ret nz                                        ; $6DE2: $C0

    add b                                         ; $6DE3: $80
    ret nz                                        ; $6DE4: $C0

    add b                                         ; $6DE5: $80
    ldh [$FFC0], a                                ; $6DE6: $E0 $C0
    ldh [$FFC0], a                                ; $6DE8: $E0 $C0
    ldh a, [$FFE0]                                ; $6DEA: $F0 $E0
    ldh a, [$FF60]                                ; $6DEC: $F0 $60
    ldh a, [$FF60]                                ; $6DEE: $F0 $60
    ld hl, sp-$50                                 ; $6DF0: $F8 $B0
    ld hl, sp-$50                                 ; $6DF2: $F8 $B0
    ld hl, sp-$70                                 ; $6DF4: $F8 $90
    ld hl, sp-$70                                 ; $6DF6: $F8 $90
    ret c                                         ; $6DF8: $D8

    add b                                         ; $6DF9: $80
    add b                                         ; $6DFA: $80
    nop                                           ; $6DFB: $00
    add b                                         ; $6DFC: $80
    nop                                           ; $6DFD: $00
    ret nz                                        ; $6DFE: $C0

    add b                                         ; $6DFF: $80
    ccf                                           ; $6E00: $3F
    rla                                           ; $6E01: $17
    rra                                           ; $6E02: $1F
    rlca                                          ; $6E03: $07
    rlca                                          ; $6E04: $07
    inc bc                                        ; $6E05: $03
    inc bc                                        ; $6E06: $03
    nop                                           ; $6E07: $00
    nop                                           ; $6E08: $00
    nop                                           ; $6E09: $00
    nop                                           ; $6E0A: $00
    nop                                           ; $6E0B: $00
    nop                                           ; $6E0C: $00
    nop                                           ; $6E0D: $00
    nop                                           ; $6E0E: $00
    nop                                           ; $6E0F: $00
    ld bc, $1A00                                  ; $6E10: $01 $00 $1A
    ld bc, $1B2C                                  ; $6E13: $01 $2C $1B
    cpl                                           ; $6E16: $2F
    inc e                                         ; $6E17: $1C
    rla                                           ; $6E18: $17
    rrca                                          ; $6E19: $0F
    inc de                                        ; $6E1A: $13
    rrca                                          ; $6E1B: $0F
    dec bc                                        ; $6E1C: $0B
    rlca                                          ; $6E1D: $07
    dec b                                         ; $6E1E: $05
    inc bc                                        ; $6E1F: $03
    rst RST_38                                    ; $6E20: $FF
    rst RST_30                                    ; $6E21: $F7
    rst RST_38                                    ; $6E22: $FF

jr_01C_6E23:
    ld sp, hl                                     ; $6E23: $F9
    rst RST_38                                    ; $6E24: $FF
    cp $FF                                        ; $6E25: $FE $FF
    db $FC                                        ; $6E27: $FC
    rst RST_38                                    ; $6E28: $FF
    inc bc                                        ; $6E29: $03
    ld a, a                                       ; $6E2A: $7F
    ld a, $7F                                     ; $6E2B: $3E $7F
    ld bc, $1FFF                                  ; $6E2D: $01 $FF $1F
    rra                                           ; $6E30: $1F
    xor $1E                                       ; $6E31: $EE $1E
    db $ED                                        ; $6E33: $ED
    ld c, $F1                                     ; $6E34: $0E $F1
    ld sp, $C0C0                                  ; $6E36: $31 $C0 $C0
    nop                                           ; $6E39: $00
    ldh [$FFC0], a                                ; $6E3A: $E0 $C0
    ldh [$FFC0], a                                ; $6E3C: $E0 $C0
    ldh [$FFC0], a                                ; $6E3E: $E0 $C0
    db $FD                                        ; $6E40: $FD
    cp $FF                                        ; $6E41: $FE $FF
    cp $FF                                        ; $6E43: $FE $FF
    ld a, a                                       ; $6E45: $7F
    rst RST_38                                    ; $6E46: $FF
    rra                                           ; $6E47: $1F
    sbc a                                         ; $6E48: $9F
    rrca                                          ; $6E49: $0F
    adc a                                         ; $6E4A: $8F
    rlca                                          ; $6E4B: $07
    rst RST_00                                    ; $6E4C: $C7
    add e                                         ; $6E4D: $83
    rst RST_20                                    ; $6E4E: $E7
    inc bc                                        ; $6E4F: $03
    inc de                                        ; $6E50: $13
    pop hl                                        ; $6E51: $E1
    dec bc                                        ; $6E52: $0B
    pop af                                        ; $6E53: $F1
    rlca                                          ; $6E54: $07
    ld sp, hl                                     ; $6E55: $F9
    add a                                         ; $6E56: $87
    ld a, d                                       ; $6E57: $7A
    ld a, a                                       ; $6E58: $7F
    rlca                                          ; $6E59: $07
    inc hl                                        ; $6E5A: $23
    rra                                           ; $6E5B: $1F
    jr @+$09                                      ; $6E5C: $18 $07

    rlca                                          ; $6E5E: $07
    nop                                           ; $6E5F: $00
    ldh [$FFC0], a                                ; $6E60: $E0 $C0
    ldh a, [$FFE0]                                ; $6E62: $F0 $E0
    cp $F0                                        ; $6E64: $FE $F0
    ccf                                           ; $6E66: $3F
    cp $FF                                        ; $6E67: $FE $FF
    ld e, $1F                                     ; $6E69: $1E $1F
    ld c, $0F                                     ; $6E6B: $0E $0F
    ld b, $0F                                     ; $6E6D: $06 $0F
    nop                                           ; $6E6F: $00
    add hl, de                                    ; $6E70: $19
    ld b, $21                                     ; $6E71: $06 $21
    ld e, $3F                                     ; $6E73: $1E $3F
    nop                                           ; $6E75: $00
    nop                                           ; $6E76: $00
    nop                                           ; $6E77: $00
    nop                                           ; $6E78: $00
    nop                                           ; $6E79: $00
    nop                                           ; $6E7A: $00
    nop                                           ; $6E7B: $00
    nop                                           ; $6E7C: $00
    nop                                           ; $6E7D: $00
    nop                                           ; $6E7E: $00
    nop                                           ; $6E7F: $00
    inc bc                                        ; $6E80: $03
    ld bc, $0001                                  ; $6E81: $01 $01 $00
    rrca                                          ; $6E84: $0F
    ld bc, $0B37                                  ; $6E85: $01 $37 $0B
    ld b, e                                       ; $6E88: $43
    dec a                                         ; $6E89: $3D
    ld a, a                                       ; $6E8A: $7F
    nop                                           ; $6E8B: $00
    nop                                           ; $6E8C: $00
    nop                                           ; $6E8D: $00
    nop                                           ; $6E8E: $00
    nop                                           ; $6E8F: $00
    nop                                           ; $6E90: $00
    nop                                           ; $6E91: $00
    nop                                           ; $6E92: $00
    nop                                           ; $6E93: $00
    nop                                           ; $6E94: $00
    nop                                           ; $6E95: $00
    nop                                           ; $6E96: $00
    nop                                           ; $6E97: $00
    nop                                           ; $6E98: $00
    nop                                           ; $6E99: $00
    nop                                           ; $6E9A: $00
    nop                                           ; $6E9B: $00
    nop                                           ; $6E9C: $00
    nop                                           ; $6E9D: $00
    nop                                           ; $6E9E: $00
    nop                                           ; $6E9F: $00
    ldh [$FFC0], a                                ; $6EA0: $E0 $C0
    ldh [$FFC0], a                                ; $6EA2: $E0 $C0
    ldh a, [$FFE0]                                ; $6EA4: $F0 $E0
    ldh a, [$FFE0]                                ; $6EA6: $F0 $E0
    ldh a, [$FFE0]                                ; $6EA8: $F0 $E0
    ldh [rP1], a                                  ; $6EAA: $E0 $00
    nop                                           ; $6EAC: $00
    nop                                           ; $6EAD: $00
    nop                                           ; $6EAE: $00
    nop                                           ; $6EAF: $00
    nop                                           ; $6EB0: $00
    nop                                           ; $6EB1: $00
    nop                                           ; $6EB2: $00
    nop                                           ; $6EB3: $00
    nop                                           ; $6EB4: $00
    nop                                           ; $6EB5: $00
    nop                                           ; $6EB6: $00
    nop                                           ; $6EB7: $00
    nop                                           ; $6EB8: $00
    nop                                           ; $6EB9: $00
    nop                                           ; $6EBA: $00
    nop                                           ; $6EBB: $00
    nop                                           ; $6EBC: $00
    nop                                           ; $6EBD: $00
    nop                                           ; $6EBE: $00
    nop                                           ; $6EBF: $00
    nop                                           ; $6EC0: $00
    nop                                           ; $6EC1: $00
    nop                                           ; $6EC2: $00
    nop                                           ; $6EC3: $00
    nop                                           ; $6EC4: $00
    nop                                           ; $6EC5: $00
    nop                                           ; $6EC6: $00
    nop                                           ; $6EC7: $00
    nop                                           ; $6EC8: $00
    nop                                           ; $6EC9: $00
    nop                                           ; $6ECA: $00
    nop                                           ; $6ECB: $00
    nop                                           ; $6ECC: $00
    nop                                           ; $6ECD: $00
    nop                                           ; $6ECE: $00
    nop                                           ; $6ECF: $00
    nop                                           ; $6ED0: $00
    nop                                           ; $6ED1: $00
    nop                                           ; $6ED2: $00
    nop                                           ; $6ED3: $00
    nop                                           ; $6ED4: $00
    nop                                           ; $6ED5: $00
    nop                                           ; $6ED6: $00
    nop                                           ; $6ED7: $00
    nop                                           ; $6ED8: $00
    nop                                           ; $6ED9: $00

jr_01C_6EDA:
    nop                                           ; $6EDA: $00
    nop                                           ; $6EDB: $00
    add b                                         ; $6EDC: $80
    nop                                           ; $6EDD: $00
    add b                                         ; $6EDE: $80
    nop                                           ; $6EDF: $00
    nop                                           ; $6EE0: $00
    nop                                           ; $6EE1: $00
    nop                                           ; $6EE2: $00
    nop                                           ; $6EE3: $00
    nop                                           ; $6EE4: $00
    nop                                           ; $6EE5: $00
    nop                                           ; $6EE6: $00
    nop                                           ; $6EE7: $00
    nop                                           ; $6EE8: $00
    nop                                           ; $6EE9: $00
    add b                                         ; $6EEA: $80
    nop                                           ; $6EEB: $00
    ld hl, sp-$80                                 ; $6EEC: $F8 $80
    db $FC                                        ; $6EEE: $FC
    ld hl, sp-$04                                 ; $6EEF: $F8 $FC
    ld hl, sp-$04                                 ; $6EF1: $F8 $FC
    ld a, b                                       ; $6EF3: $78
    ld a, [hl]                                    ; $6EF4: $7E
    jr c, jr_01C_6F31                             ; $6EF5: $38 $3A

    inc d                                         ; $6EF7: $14
    ld [de], a                                    ; $6EF8: $12
    inc c                                         ; $6EF9: $0C
    add hl, bc                                    ; $6EFA: $09
    ld b, $05                                     ; $6EFB: $06 $05
    ld [bc], a                                    ; $6EFD: $02
    ld [bc], a                                    ; $6EFE: $02
    nop                                           ; $6EFF: $00
    add b                                         ; $6F00: $80
    nop                                           ; $6F01: $00
    add b                                         ; $6F02: $80
    nop                                           ; $6F03: $00
    ld b, b                                       ; $6F04: $40
    add b                                         ; $6F05: $80
    inc a                                         ; $6F06: $3C
    ret nz                                        ; $6F07: $C0

    ld a, [hl]                                    ; $6F08: $7E
    cp h                                          ; $6F09: $BC
    rst RST_38                                    ; $6F0A: $FF
    ld a, [hl]                                    ; $6F0B: $7E
    rst RST_38                                    ; $6F0C: $FF
    cp $BF                                        ; $6F0D: $FE $BF
    ld a, a                                       ; $6F0F: $7F
    add a                                         ; $6F10: $87
    ld a, a                                       ; $6F11: $7F
    db $FC                                        ; $6F12: $FC
    add e                                         ; $6F13: $83
    jp $A080                                      ; $6F14: $C3 $80 $A0


    ld b, b                                       ; $6F17: $40
    jr nz, jr_01C_6EDA                            ; $6F18: $20 $C0

    and b                                         ; $6F1A: $A0
    ld b, b                                       ; $6F1B: $40
    and b                                         ; $6F1C: $A0
    ld b, b                                       ; $6F1D: $40
    ld b, b                                       ; $6F1E: $40
    nop                                           ; $6F1F: $00
    push bc                                       ; $6F20: $C5
    rst RST_38                                    ; $6F21: $FF
    ld b, [hl]                                    ; $6F22: $46
    rst RST_38                                    ; $6F23: $FF
    ld b, $FF                                     ; $6F24: $06 $FF
    dec de                                        ; $6F26: $1B
    rst RST_38                                    ; $6F27: $FF
    cp e                                          ; $6F28: $BB
    cp $FE                                        ; $6F29: $FE $FE
    ld sp, hl                                     ; $6F2B: $F9
    ld hl, sp+$07                                 ; $6F2C: $F8 $07
    inc e                                         ; $6F2E: $1C
    db $E3                                        ; $6F2F: $E3
    db $E3                                        ; $6F30: $E3

jr_01C_6F31:
    nop                                           ; $6F31: $00
    rst RST_20                                    ; $6F32: $E7
    ret nz                                        ; $6F33: $C0

    rst RST_38                                    ; $6F34: $FF
    rst RST_20                                    ; $6F35: $E7
    rst RST_38                                    ; $6F36: $FF
    rst RST_38                                    ; $6F37: $FF
    adc a                                         ; $6F38: $8F
    rst RST_38                                    ; $6F39: $FF
    ld a, a                                       ; $6F3A: $7F
    add e                                         ; $6F3B: $83
    add e                                         ; $6F3C: $83
    ld bc, $0001                                  ; $6F3D: $01 $01 $00
    ccf                                           ; $6F40: $3F
    call c, $C33D                                 ; $6F41: $DC $3D $C3
    db $FD                                        ; $6F44: $FD
    adc a                                         ; $6F45: $8F
    db $E4                                        ; $6F46: $E4
    ld a, a                                       ; $6F47: $7F
    add hl, hl                                    ; $6F48: $29
    rst RST_38                                    ; $6F49: $FF
    db $FD                                        ; $6F4A: $FD
    rst RST_38                                    ; $6F4B: $FF
    rst RST_38                                    ; $6F4C: $FF
    nop                                           ; $6F4D: $00
    ld h, h                                       ; $6F4E: $64
    inc bc                                        ; $6F4F: $03
    add hl, bc                                    ; $6F50: $09
    ld b, $17                                     ; $6F51: $06 $17
    add hl, bc                                    ; $6F53: $09
    cpl                                           ; $6F54: $2F
    rla                                           ; $6F55: $17
    cpl                                           ; $6F56: $2F
    rla                                           ; $6F57: $17
    rra                                           ; $6F58: $1F
    rrca                                          ; $6F59: $0F
    inc a                                         ; $6F5A: $3C
    rra                                           ; $6F5B: $1F
    jr nz, jr_01C_6F7D                            ; $6F5C: $20 $1F

    ccf                                           ; $6F5E: $3F
    nop                                           ; $6F5F: $00
    ld a, [de]                                    ; $6F60: $1A
    dec b                                         ; $6F61: $05
    inc c                                         ; $6F62: $0C
    inc bc                                        ; $6F63: $03
    rrca                                          ; $6F64: $0F
    inc b                                         ; $6F65: $04
    db $FD                                        ; $6F66: $FD
    ld [bc], a                                    ; $6F67: $02
    db $FD                                        ; $6F68: $FD
    ld a, d                                       ; $6F69: $7A
    rst RST_30                                    ; $6F6A: $F7
    adc c                                         ; $6F6B: $89
    and a                                         ; $6F6C: $A7
    ld e, b                                       ; $6F6D: $58
    rst RST_08                                    ; $6F6E: $CF
    dec a                                         ; $6F6F: $3D
    cp a                                          ; $6F70: $BF
    pop hl                                        ; $6F71: $E1
    rst RST_38                                    ; $6F72: $FF
    inc c                                         ; $6F73: $0C
    or a                                          ; $6F74: $B7
    ld e, h                                       ; $6F75: $5C
    ld a, l                                       ; $6F76: $7D
    and e                                         ; $6F77: $A3
    rst RST_38                                    ; $6F78: $FF
    ld e, a                                       ; $6F79: $5F
    ld a, a                                       ; $6F7A: $7F
    ret nz                                        ; $6F7B: $C0

    rst RST_38                                    ; $6F7C: $FF

jr_01C_6F7D:
    ld a, [hl]                                    ; $6F7D: $7E
    ld a, [hl]                                    ; $6F7E: $7E
    nop                                           ; $6F7F: $00
    nop                                           ; $6F80: $00
    nop                                           ; $6F81: $00
    nop                                           ; $6F82: $00
    nop                                           ; $6F83: $00
    nop                                           ; $6F84: $00
    nop                                           ; $6F85: $00
    nop                                           ; $6F86: $00
    nop                                           ; $6F87: $00
    inc bc                                        ; $6F88: $03
    nop                                           ; $6F89: $00
    dec a                                         ; $6F8A: $3D
    inc bc                                        ; $6F8B: $03
    ld b, e                                       ; $6F8C: $43
    ld a, $B5                                     ; $6F8D: $3E $B5
    ld l, a                                       ; $6F8F: $6F
    adc d                                         ; $6F90: $8A
    ld a, a                                       ; $6F91: $7F
    rst RST_38                                    ; $6F92: $FF
    ld a, a                                       ; $6F93: $7F
    ld a, a                                       ; $6F94: $7F
    inc d                                         ; $6F95: $14
    ld d, l                                       ; $6F96: $55
    ld a, [hl+]                                   ; $6F97: $2A
    ccf                                           ; $6F98: $3F
    nop                                           ; $6F99: $00
    ld l, e                                       ; $6F9A: $6B
    ccf                                           ; $6F9B: $3F
    ccf                                           ; $6F9C: $3F
    inc e                                         ; $6F9D: $1C
    inc e                                         ; $6F9E: $1C
    nop                                           ; $6F9F: $00
    nop                                           ; $6FA0: $00
    nop                                           ; $6FA1: $00
    nop                                           ; $6FA2: $00
    nop                                           ; $6FA3: $00
    nop                                           ; $6FA4: $00
    nop                                           ; $6FA5: $00
    ld bc, $0100                                  ; $6FA6: $01 $00 $01
    nop                                           ; $6FA9: $00
    nop                                           ; $6FAA: $00
    nop                                           ; $6FAB: $00
    ld a, $00                                     ; $6FAC: $3E $00
    pop bc                                        ; $6FAE: $C1
    ld a, $CC                                     ; $6FAF: $3E $CC
    inc sp                                        ; $6FB1: $33
    call nc, Call_01C_642B                        ; $6FB2: $D4 $2B $64
    dec de                                        ; $6FB5: $1B
    ld a, l                                       ; $6FB6: $7D
    ld [hl+], a                                   ; $6FB7: $22
    ld [$EA15], a                                 ; $6FB8: $EA $15 $EA
    push de                                       ; $6FBB: $D5
    cp a                                          ; $6FBC: $BF
    ld c, b                                       ; $6FBD: $48
    ccf                                           ; $6FBE: $3F
    add $1F                                       ; $6FBF: $C6 $1F
    nop                                           ; $6FC1: $00
    ld h, b                                       ; $6FC2: $60
    rra                                           ; $6FC3: $1F
    sbc a                                         ; $6FC4: $9F
    ld a, a                                       ; $6FC5: $7F
    ld a, a                                       ; $6FC6: $7F
    rst RST_38                                    ; $6FC7: $FF
    ld a, a                                       ; $6FC8: $7F
    rst RST_38                                    ; $6FC9: $FF
    cp a                                          ; $6FCA: $BF
    ld a, a                                       ; $6FCB: $7F
    ld e, a                                       ; $6FCC: $5F
    ccf                                           ; $6FCD: $3F
    ld e, a                                       ; $6FCE: $5F
    ccf                                           ; $6FCF: $3F
    rst RST_38                                    ; $6FD0: $FF
    ld b, $5F                                     ; $6FD1: $06 $5F
    cp b                                          ; $6FD3: $B8
    cp a                                          ; $6FD4: $BF
    ld h, h                                       ; $6FD5: $64
    ld h, a                                       ; $6FD6: $67
    reti                                          ; $6FD7: $D9


    ld b, c                                       ; $6FD8: $41
    cp h                                          ; $6FD9: $BC
    ld b, b                                       ; $6FDA: $40
    cp a                                          ; $6FDB: $BF
    inc sp                                        ; $6FDC: $33
    call z, Call_000_33FD                         ; $6FDD: $CC $FD $33
    rst RST_38                                    ; $6FE0: $FF
    rst RST_38                                    ; $6FE1: $FF
    rst RST_38                                    ; $6FE2: $FF
    rst RST_38                                    ; $6FE3: $FF
    rst RST_38                                    ; $6FE4: $FF
    rst RST_38                                    ; $6FE5: $FF
    rst RST_38                                    ; $6FE6: $FF
    rst RST_38                                    ; $6FE7: $FF

jr_01C_6FE8:
    rst RST_38                                    ; $6FE8: $FF
    add b                                         ; $6FE9: $80
    rst RST_38                                    ; $6FEA: $FF
    nop                                           ; $6FEB: $00
    rst RST_38                                    ; $6FEC: $FF
    nop                                           ; $6FED: $00
    rrca                                          ; $6FEE: $0F
    nop                                           ; $6FEF: $00
    add b                                         ; $6FF0: $80
    nop                                           ; $6FF1: $00
    ret nz                                        ; $6FF2: $C0

    add b                                         ; $6FF3: $80
    ldh a, [rP1]                                  ; $6FF4: $F0 $00
    jr jr_01C_6FE8                                ; $6FF6: $18 $F0

    call z, Call_000_2CF8                         ; $6FF8: $CC $F8 $2C
    ld hl, sp+$34                                 ; $6FFB: $F8 $34
    ld hl, sp+$34                                 ; $6FFD: $F8 $34
    ld hl, sp+$00                                 ; $6FFF: $F8 $00
    nop                                           ; $7001: $00
    nop                                           ; $7002: $00
    nop                                           ; $7003: $00
    nop                                           ; $7004: $00
    nop                                           ; $7005: $00
    nop                                           ; $7006: $00
    nop                                           ; $7007: $00
    add b                                         ; $7008: $80
    nop                                           ; $7009: $00
    ldh [$FF80], a                                ; $700A: $E0 $80
    ld hl, sp-$20                                 ; $700C: $F8 $E0
    db $FC                                        ; $700E: $FC
    ld hl, sp-$02                                 ; $700F: $F8 $FE
    db $FC                                        ; $7011: $FC
    rst RST_38                                    ; $7012: $FF
    ld a, $FF                                     ; $7013: $3E $FF
    ld b, $F7                                     ; $7015: $06 $F7
    nop                                           ; $7017: $00
    ld hl, sp+$00                                 ; $7018: $F8 $00
    ld hl, sp+$00                                 ; $701A: $F8 $00
    inc a                                         ; $701C: $3C
    nop                                           ; $701D: $00
    inc e                                         ; $701E: $1C
    nop                                           ; $701F: $00
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
    ldh [rP1], a                                  ; $703A: $E0 $00
    ld e, $E0                                     ; $703C: $1E $E0
    pop hl                                        ; $703E: $E1
    cp $E0                                        ; $703F: $FE $E0
    ccf                                           ; $7041: $3F
    ldh [$FF7F], a                                ; $7042: $E0 $7F
    ret nz                                        ; $7044: $C0

    ld a, a                                       ; $7045: $7F
    ret nz                                        ; $7046: $C0

    ld a, a                                       ; $7047: $7F
    ret nz                                        ; $7048: $C0

    ld a, a                                       ; $7049: $7F
    ret nz                                        ; $704A: $C0

    ld a, a                                       ; $704B: $7F
    ret nz                                        ; $704C: $C0

    ld a, a                                       ; $704D: $7F
    ret nz                                        ; $704E: $C0

    ld a, a                                       ; $704F: $7F
    ret nz                                        ; $7050: $C0

    ld a, a                                       ; $7051: $7F
    ret nz                                        ; $7052: $C0

    ld a, a                                       ; $7053: $7F
    ret nz                                        ; $7054: $C0

    ld a, a                                       ; $7055: $7F
    ldh [$FF7F], a                                ; $7056: $E0 $7F
    ldh [$FF3F], a                                ; $7058: $E0 $3F
    ld a, b                                       ; $705A: $78
    ccf                                           ; $705B: $3F
    ccf                                           ; $705C: $3F
    rrca                                          ; $705D: $0F
    rra                                           ; $705E: $1F
    nop                                           ; $705F: $00
    inc c                                         ; $7060: $0C
    rst RST_38                                    ; $7061: $FF
    ld c, $FF                                     ; $7062: $0E $FF
    ld e, $FB                                     ; $7064: $1E $FB
    ld e, $F3                                     ; $7066: $1E $F3
    ld a, $F3                                     ; $7068: $3E $F3
    cp $E3                                        ; $706A: $FE $E3
    or $83                                        ; $706C: $F6 $83
    add $03                                       ; $706E: $C6 $03
    ld c, $03                                     ; $7070: $0E $03
    ld e, $07                                     ; $7072: $1E $07
    inc e                                         ; $7074: $1C
    rrca                                          ; $7075: $0F
    jr c, jr_01C_7087                             ; $7076: $38 $0F

    ld a, b                                       ; $7078: $78
    rra                                           ; $7079: $1F
    ld [hl], b                                    ; $707A: $70
    ccf                                           ; $707B: $3F
    ld h, b                                       ; $707C: $60
    ccf                                           ; $707D: $3F
    ld h, b                                       ; $707E: $60
    ccf                                           ; $707F: $3F
    nop                                           ; $7080: $00
    rst RST_38                                    ; $7081: $FF
    nop                                           ; $7082: $00
    rst RST_38                                    ; $7083: $FF
    nop                                           ; $7084: $00
    rst RST_38                                    ; $7085: $FF
    inc bc                                        ; $7086: $03

jr_01C_7087:
    rst RST_38                                    ; $7087: $FF
    inc bc                                        ; $7088: $03
    rst RST_38                                    ; $7089: $FF
    inc bc                                        ; $708A: $03
    rst RST_38                                    ; $708B: $FF
    inc bc                                        ; $708C: $03
    rst RST_38                                    ; $708D: $FF
    rlca                                          ; $708E: $07
    rst RST_38                                    ; $708F: $FF
    rlca                                          ; $7090: $07
    db $FD                                        ; $7091: $FD
    rrca                                          ; $7092: $0F
    db $FC                                        ; $7093: $FC
    rra                                           ; $7094: $1F
    ld hl, sp+$1D                                 ; $7095: $F8 $1D
    ldh a, [rNR24]                                ; $7097: $F0 $19
    ldh a, [rNR24]                                ; $7099: $F0 $19
    ldh a, [rNR24]                                ; $709B: $F0 $19
    ldh a, [$FF38]                                ; $709D: $F0 $38
    ldh a, [rP1]                                  ; $709F: $F0 $00
    rst RST_38                                    ; $70A1: $FF
    nop                                           ; $70A2: $00
    rst RST_38                                    ; $70A3: $FF
    nop                                           ; $70A4: $00
    rst RST_38                                    ; $70A5: $FF
    nop                                           ; $70A6: $00
    rst RST_38                                    ; $70A7: $FF
    nop                                           ; $70A8: $00
    rst RST_38                                    ; $70A9: $FF
    ld bc, $03FF                                  ; $70AA: $01 $FF $03
    rst RST_38                                    ; $70AD: $FF
    inc bc                                        ; $70AE: $03
    rst RST_38                                    ; $70AF: $FF
    inc bc                                        ; $70B0: $03
    rst RST_38                                    ; $70B1: $FF
    add e                                         ; $70B2: $83
    rst RST_38                                    ; $70B3: $FF
    add c                                         ; $70B4: $81
    rst RST_38                                    ; $70B5: $FF
    add b                                         ; $70B6: $80
    rst RST_38                                    ; $70B7: $FF
    add b                                         ; $70B8: $80
    rst RST_38                                    ; $70B9: $FF
    ret nz                                        ; $70BA: $C0

    rst RST_38                                    ; $70BB: $FF
    ldh [$FF7F], a                                ; $70BC: $E0 $7F
    rst RST_38                                    ; $70BE: $FF
    ccf                                           ; $70BF: $3F
    rlca                                          ; $70C0: $07
    cp $03                                        ; $70C1: $FE $03
    rst RST_38                                    ; $70C3: $FF
    ld bc, $00FF                                  ; $70C4: $01 $FF $00
    rst RST_38                                    ; $70C7: $FF
    nop                                           ; $70C8: $00
    rst RST_38                                    ; $70C9: $FF
    ret nz                                        ; $70CA: $C0

    rst RST_38                                    ; $70CB: $FF
    ldh a, [rIE]                                  ; $70CC: $F0 $FF
    db $FC                                        ; $70CE: $FC
    rra                                           ; $70CF: $1F
    rst RST_38                                    ; $70D0: $FF
    rlca                                          ; $70D1: $07
    rst RST_38                                    ; $70D2: $FF
    add b                                         ; $70D3: $80
    ld hl, sp-$20                                 ; $70D4: $F8 $E0
    inc a                                         ; $70D6: $3C
    ldh a, [rNR32]                                ; $70D7: $F0 $1C
    ld hl, sp+$0C                                 ; $70D9: $F8 $0C
    ld hl, sp+$0C                                 ; $70DB: $F8 $0C
    ld hl, sp-$04                                 ; $70DD: $F8 $FC
    ld hl, sp+$00                                 ; $70DF: $F8 $00
    nop                                           ; $70E1: $00
    nop                                           ; $70E2: $00
    nop                                           ; $70E3: $00
    nop                                           ; $70E4: $00
    nop                                           ; $70E5: $00
    nop                                           ; $70E6: $00
    nop                                           ; $70E7: $00
    nop                                           ; $70E8: $00
    nop                                           ; $70E9: $00
    add b                                         ; $70EA: $80
    nop                                           ; $70EB: $00
    ret nz                                        ; $70EC: $C0

    nop                                           ; $70ED: $00
    ldh [$FF80], a                                ; $70EE: $E0 $80
    ldh a, [$FFC0]                                ; $70F0: $F0 $C0
    ld a, b                                       ; $70F2: $78
    ldh [$FF38], a                                ; $70F3: $E0 $38
    ldh a, [rNR32]                                ; $70F5: $F0 $1C
    ld hl, sp+$0C                                 ; $70F7: $F8 $0C
    ld hl, sp-$74                                 ; $70F9: $F8 $8C
    ld hl, sp-$04                                 ; $70FB: $F8 $FC
    ld hl, sp-$08                                 ; $70FD: $F8 $F8
    nop                                           ; $70FF: $00
    ldh [$FF7F], a                                ; $7100: $E0 $7F
    ret nz                                        ; $7102: $C0

    ld a, a                                       ; $7103: $7F
    ret nz                                        ; $7104: $C0

    ld a, a                                       ; $7105: $7F
    ret nz                                        ; $7106: $C0

    ld a, a                                       ; $7107: $7F
    ret nz                                        ; $7108: $C0

    rst RST_38                                    ; $7109: $FF
    nop                                           ; $710A: $00
    rst RST_38                                    ; $710B: $FF
    nop                                           ; $710C: $00
    rst RST_38                                    ; $710D: $FF
    nop                                           ; $710E: $00
    rst RST_38                                    ; $710F: $FF
    nop                                           ; $7110: $00
    rst RST_38                                    ; $7111: $FF
    nop                                           ; $7112: $00
    rst RST_38                                    ; $7113: $FF
    nop                                           ; $7114: $00
    rst RST_38                                    ; $7115: $FF
    nop                                           ; $7116: $00
    rst RST_38                                    ; $7117: $FF
    nop                                           ; $7118: $00
    rst RST_38                                    ; $7119: $FF
    nop                                           ; $711A: $00
    rst RST_38                                    ; $711B: $FF
    nop                                           ; $711C: $00
    rst RST_38                                    ; $711D: $FF
    inc b                                         ; $711E: $04
    rst RST_38                                    ; $711F: $FF
    nop                                           ; $7120: $00
    rst RST_38                                    ; $7121: $FF
    nop                                           ; $7122: $00
    rst RST_38                                    ; $7123: $FF
    nop                                           ; $7124: $00
    rst RST_38                                    ; $7125: $FF
    nop                                           ; $7126: $00
    rst RST_38                                    ; $7127: $FF
    nop                                           ; $7128: $00
    rst RST_38                                    ; $7129: $FF
    nop                                           ; $712A: $00
    rst RST_38                                    ; $712B: $FF
    nop                                           ; $712C: $00
    rst RST_38                                    ; $712D: $FF
    nop                                           ; $712E: $00
    rst RST_38                                    ; $712F: $FF
    nop                                           ; $7130: $00

Jump_01C_7131:
    rst RST_38                                    ; $7131: $FF
    nop                                           ; $7132: $00
    rst RST_38                                    ; $7133: $FF
    nop                                           ; $7134: $00
    rst RST_38                                    ; $7135: $FF
    nop                                           ; $7136: $00
    rst RST_38                                    ; $7137: $FF
    nop                                           ; $7138: $00
    rst RST_38                                    ; $7139: $FF
    nop                                           ; $713A: $00
    rst RST_38                                    ; $713B: $FF
    nop                                           ; $713C: $00
    rst RST_38                                    ; $713D: $FF
    nop                                           ; $713E: $00
    rst RST_38                                    ; $713F: $FF
    inc e                                         ; $7140: $1C
    ld hl, sp+$0F                                 ; $7141: $F8 $0F
    ld hl, sp+$0F                                 ; $7143: $F8 $0F
    rst RST_38                                    ; $7145: $FF
    nop                                           ; $7146: $00
    rst RST_38                                    ; $7147: $FF
    nop                                           ; $7148: $00
    rst RST_38                                    ; $7149: $FF
    nop                                           ; $714A: $00
    rst RST_38                                    ; $714B: $FF
    nop                                           ; $714C: $00
    rst RST_38                                    ; $714D: $FF
    nop                                           ; $714E: $00
    rst RST_38                                    ; $714F: $FF
    nop                                           ; $7150: $00
    rst RST_38                                    ; $7151: $FF
    nop                                           ; $7152: $00
    rst RST_38                                    ; $7153: $FF
    nop                                           ; $7154: $00
    rst RST_38                                    ; $7155: $FF
    nop                                           ; $7156: $00
    rst RST_38                                    ; $7157: $FF
    nop                                           ; $7158: $00
    rst RST_38                                    ; $7159: $FF
    nop                                           ; $715A: $00
    rst RST_38                                    ; $715B: $FF
    nop                                           ; $715C: $00
    rst RST_38                                    ; $715D: $FF
    nop                                           ; $715E: $00
    rst RST_38                                    ; $715F: $FF
    nop                                           ; $7160: $00
    nop                                           ; $7161: $00
    ret nz                                        ; $7162: $C0

    nop                                           ; $7163: $00
    ldh [$FF80], a                                ; $7164: $E0 $80
    ldh [$FFC0], a                                ; $7166: $E0 $C0
    ld h, b                                       ; $7168: $60
    ret nz                                        ; $7169: $C0

    ld h, b                                       ; $716A: $60
    ret nz                                        ; $716B: $C0

    ld h, b                                       ; $716C: $60
    ret nz                                        ; $716D: $C0

    ldh [$FFC0], a                                ; $716E: $E0 $C0
    ldh [$FFC0], a                                ; $7170: $E0 $C0
    ldh a, [$FFC0]                                ; $7172: $F0 $C0
    ld a, b                                       ; $7174: $78
    ldh [$FF3C], a                                ; $7175: $E0 $3C
    ldh a, [rNR32]                                ; $7177: $F0 $1C
    ld hl, sp+$0E                                 ; $7179: $F8 $0E
    ld hl, sp+$0E                                 ; $717B: $F8 $0E
    db $FC                                        ; $717D: $FC
    rlca                                          ; $717E: $07
    db $FC                                        ; $717F: $FC
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
    nop                                           ; $718A: $00
    nop                                           ; $718B: $00
    nop                                           ; $718C: $00
    nop                                           ; $718D: $00
    nop                                           ; $718E: $00
    nop                                           ; $718F: $00
    nop                                           ; $7190: $00
    nop                                           ; $7191: $00
    nop                                           ; $7192: $00
    nop                                           ; $7193: $00
    nop                                           ; $7194: $00
    nop                                           ; $7195: $00
    rlca                                          ; $7196: $07
    nop                                           ; $7197: $00
    rra                                           ; $7198: $1F
    inc bc                                        ; $7199: $03
    ld a, $0F                                     ; $719A: $3E $0F
    ld a, b                                       ; $719C: $78
    rra                                           ; $719D: $1F
    ld [hl], b                                    ; $719E: $70
    ccf                                           ; $719F: $3F
    nop                                           ; $71A0: $00
    nop                                           ; $71A1: $00
    nop                                           ; $71A2: $00
    nop                                           ; $71A3: $00
    nop                                           ; $71A4: $00
    nop                                           ; $71A5: $00
    nop                                           ; $71A6: $00
    nop                                           ; $71A7: $00
    nop                                           ; $71A8: $00
    nop                                           ; $71A9: $00
    nop                                           ; $71AA: $00
    nop                                           ; $71AB: $00
    nop                                           ; $71AC: $00
    nop                                           ; $71AD: $00
    nop                                           ; $71AE: $00
    nop                                           ; $71AF: $00
    nop                                           ; $71B0: $00
    nop                                           ; $71B1: $00
    inc bc                                        ; $71B2: $03
    nop                                           ; $71B3: $00
    rrca                                          ; $71B4: $0F
    ld bc, $071F                                  ; $71B5: $01 $1F $07
    inc a                                         ; $71B8: $3C
    rrca                                          ; $71B9: $0F
    ld a, b                                       ; $71BA: $78
    rra                                           ; $71BB: $1F
    ld [hl], b                                    ; $71BC: $70
    ccf                                           ; $71BD: $3F
    ldh [$FF3F], a                                ; $71BE: $E0 $3F
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
    nop                                           ; $71CC: $00
    nop                                           ; $71CD: $00
    nop                                           ; $71CE: $00
    nop                                           ; $71CF: $00
    nop                                           ; $71D0: $00
    nop                                           ; $71D1: $00
    ldh a, [rP1]                                  ; $71D2: $F0 $00
    ld hl, sp-$20                                 ; $71D4: $F8 $E0
    ccf                                           ; $71D6: $3F
    ldh a, [$FF1F]                                ; $71D7: $F0 $1F
    rst RST_38                                    ; $71D9: $FF
    nop                                           ; $71DA: $00
    rst RST_38                                    ; $71DB: $FF
    nop                                           ; $71DC: $00
    rst RST_38                                    ; $71DD: $FF
    nop                                           ; $71DE: $00
    rst RST_38                                    ; $71DF: $FF
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
    nop                                           ; $71EA: $00
    nop                                           ; $71EB: $00
    nop                                           ; $71EC: $00
    nop                                           ; $71ED: $00
    nop                                           ; $71EE: $00
    nop                                           ; $71EF: $00
    nop                                           ; $71F0: $00
    nop                                           ; $71F1: $00
    nop                                           ; $71F2: $00
    nop                                           ; $71F3: $00
    nop                                           ; $71F4: $00
    nop                                           ; $71F5: $00
    ldh [rP1], a                                  ; $71F6: $E0 $00
    ldh a, [$FFC0]                                ; $71F8: $F0 $C0
    ld a, b                                       ; $71FA: $78
    ldh [$FF38], a                                ; $71FB: $E0 $38
    ldh a, [rNR32]                                ; $71FD: $F0 $1C
    ldh a, [rP1]                                  ; $71FF: $F0 $00
    nop                                           ; $7201: $00
    nop                                           ; $7202: $00
    nop                                           ; $7203: $00
    nop                                           ; $7204: $00
    nop                                           ; $7205: $00
    nop                                           ; $7206: $00
    nop                                           ; $7207: $00
    nop                                           ; $7208: $00
    nop                                           ; $7209: $00
    jr nc, jr_01C_720C                            ; $720A: $30 $00

jr_01C_720C:
    ld a, h                                       ; $720C: $7C
    jr nc, jr_01C_7252                            ; $720D: $30 $43

    inc a                                         ; $720F: $3C
    pop de                                        ; $7210: $D1
    ld l, a                                       ; $7211: $6F
    db $F4                                        ; $7212: $F4
    ccf                                           ; $7213: $3F
    cp e                                          ; $7214: $BB
    ld c, a                                       ; $7215: $4F
    ld l, [hl]                                    ; $7216: $6E
    rla                                           ; $7217: $17
    cpl                                           ; $7218: $2F

jr_01C_7219:
    inc de                                        ; $7219: $13
    dec de                                        ; $721A: $1B
    inc b                                         ; $721B: $04
    ld b, $01                                     ; $721C: $06 $01
    ld bc, $E000                                  ; $721E: $01 $00 $E0
    nop                                           ; $7221: $00
    ld a, b                                       ; $7222: $78
    ldh [$FFFC], a                                ; $7223: $E0 $FC
    ret c                                         ; $7225: $D8

    cp $8C                                        ; $7226: $FE $8C
    ei                                            ; $7228: $FB
    call c, $FD77                                 ; $7229: $DC $77 $FD
    jp z, $FC7D                                   ; $722C: $CA $7D $FC

    ld b, e                                       ; $722F: $43
    ld d, [hl]                                    ; $7230: $56
    dec sp                                        ; $7231: $3B
    rst RST_08                                    ; $7232: $CF
    ld a, l                                       ; $7233: $7D
    xor [hl]                                      ; $7234: $AE
    ld a, l                                       ; $7235: $7D
    sbc a                                         ; $7236: $9F
    db $FD                                        ; $7237: $FD
    cp a                                          ; $7238: $BF
    db $FC                                        ; $7239: $FC
    ld a, h                                       ; $723A: $7C
    ld hl, sp-$08                                 ; $723B: $F8 $F8
    ret nz                                        ; $723D: $C0

    ret nz                                        ; $723E: $C0

    nop                                           ; $723F: $00
    nop                                           ; $7240: $00
    nop                                           ; $7241: $00
    nop                                           ; $7242: $00
    nop                                           ; $7243: $00
    nop                                           ; $7244: $00
    nop                                           ; $7245: $00
    nop                                           ; $7246: $00
    nop                                           ; $7247: $00
    nop                                           ; $7248: $00
    nop                                           ; $7249: $00
    nop                                           ; $724A: $00
    nop                                           ; $724B: $00
    ret nz                                        ; $724C: $C0

    nop                                           ; $724D: $00
    rst RST_28                                    ; $724E: $EF
    ret nz                                        ; $724F: $C0

    jr c, jr_01C_7219                             ; $7250: $38 $C7

jr_01C_7252:
    inc l                                         ; $7252: $2C
    rst RST_10                                    ; $7253: $D7
    xor a                                         ; $7254: $AF
    rst RST_10                                    ; $7255: $D7
    ld h, a                                       ; $7256: $67
    db $DB                                        ; $7257: $DB
    cp a                                          ; $7258: $BF
    pop bc                                        ; $7259: $C1
    pop hl                                        ; $725A: $E1
    ret nz                                        ; $725B: $C0

    ldh [$FFC0], a                                ; $725C: $E0 $C0
    ret nz                                        ; $725E: $C0

    nop                                           ; $725F: $00
    nop                                           ; $7260: $00
    nop                                           ; $7261: $00
    nop                                           ; $7262: $00
    nop                                           ; $7263: $00
    ccf                                           ; $7264: $3F
    nop                                           ; $7265: $00
    ld [hl], b                                    ; $7266: $70
    rrca                                          ; $7267: $0F
    ld [hl], b                                    ; $7268: $70
    cpl                                           ; $7269: $2F
    ld a, [hl]                                    ; $726A: $7E
    add hl, hl                                    ; $726B: $29
    ld sp, hl                                     ; $726C: $F9
    ld b, $7F                                     ; $726D: $06 $7F
    sbc b                                         ; $726F: $98
    cp $A3                                        ; $7270: $FE $A3
    di                                            ; $7272: $F3
    xor l                                         ; $7273: $AD
    rst RST_38                                    ; $7274: $FF
    xor h                                         ; $7275: $AC
    cp $B1                                        ; $7276: $FE $B1
    rst RST_18                                    ; $7278: $DF
    jr c, jr_01C_72A8                             ; $7279: $38 $2D

    dec de                                        ; $727B: $1B
    dec e                                         ; $727C: $1D
    inc bc                                        ; $727D: $03
    dec b                                         ; $727E: $05
    inc bc                                        ; $727F: $03
    jr c, jr_01C_7282                             ; $7280: $38 $00

jr_01C_7282:
    ld l, $18                                     ; $7282: $2E $18
    cpl                                           ; $7284: $2F
    ld e, $AF                                     ; $7285: $1E $AF
    rra                                           ; $7287: $1F
    ld d, a                                       ; $7288: $57
    adc a                                         ; $7289: $8F
    ld d, a                                       ; $728A: $57
    adc h                                         ; $728B: $8C
    inc a                                         ; $728C: $3C
    jp $DB3F                                      ; $728D: $C3 $3F $DB


    ld a, a                                       ; $7290: $7F
    sbc e                                         ; $7291: $9B
    rst RST_38                                    ; $7292: $FF
    dec de                                        ; $7293: $1B
    ld a, a                                       ; $7294: $7F
    cp l                                          ; $7295: $BD
    rst RST_38                                    ; $7296: $FF
    ld a, h                                       ; $7297: $7C
    xor a                                         ; $7298: $AF
    call nc, $53AE                                ; $7299: $D4 $AE $53
    ld sp, hl                                     ; $729C: $F9
    rrca                                          ; $729D: $0F
    db $EB                                        ; $729E: $EB
    ccf                                           ; $729F: $3F
    nop                                           ; $72A0: $00
    nop                                           ; $72A1: $00
    nop                                           ; $72A2: $00
    nop                                           ; $72A3: $00
    nop                                           ; $72A4: $00
    nop                                           ; $72A5: $00
    add b                                         ; $72A6: $80
    nop                                           ; $72A7: $00

jr_01C_72A8:
    ret nz                                        ; $72A8: $C0

    add b                                         ; $72A9: $80
    ldh [rP1], a                                  ; $72AA: $E0 $00
    db $10                                        ; $72AC: $10
    ldh [$FFF7], a                                ; $72AD: $E0 $F7
    ldh [$FFF9], a                                ; $72AF: $E0 $F9
    rst RST_20                                    ; $72B1: $E7
    ld hl, sp-$21                                 ; $72B2: $F8 $DF
    add sp, -$41                                  ; $72B4: $E8 $BF
    db $E4                                        ; $72B6: $E4
    ld a, a                                       ; $72B7: $7F
    add l                                         ; $72B8: $85
    rst RST_38                                    ; $72B9: $FF
    daa                                           ; $72BA: $27
    rst RST_38                                    ; $72BB: $FF
    scf                                           ; $72BC: $37
    rst RST_38                                    ; $72BD: $FF
    ld a, a                                       ; $72BE: $7F
    cp $00                                        ; $72BF: $FE $00
    nop                                           ; $72C1: $00

jr_01C_72C2:
    nop                                           ; $72C2: $00
    nop                                           ; $72C3: $00

jr_01C_72C4:
    nop                                           ; $72C4: $00
    nop                                           ; $72C5: $00
    nop                                           ; $72C6: $00
    nop                                           ; $72C7: $00
    nop                                           ; $72C8: $00
    nop                                           ; $72C9: $00
    nop                                           ; $72CA: $00
    nop                                           ; $72CB: $00
    ldh [rP1], a                                  ; $72CC: $E0 $00
    jr nc, @-$1E                                  ; $72CE: $30 $E0

    jr jr_01C_72C2                                ; $72D0: $18 $F0

    jr jr_01C_72C4                                ; $72D2: $18 $F0

    adc h                                         ; $72D4: $8C
    ld hl, sp-$54                                 ; $72D5: $F8 $AC
    ld hl, sp-$14                                 ; $72D7: $F8 $EC
    ld hl, sp-$08                                 ; $72D9: $F8 $F8
    ldh a, [$FFF0]                                ; $72DB: $F0 $F0
    ret nz                                        ; $72DD: $C0

    ret nz                                        ; $72DE: $C0

    nop                                           ; $72DF: $00
    inc bc                                        ; $72E0: $03
    nop                                           ; $72E1: $00
    dec b                                         ; $72E2: $05
    ld [bc], a                                    ; $72E3: $02
    dec de                                        ; $72E4: $1B
    dec b                                         ; $72E5: $05
    dec l                                         ; $72E6: $2D
    inc de                                        ; $72E7: $13
    dec de                                        ; $72E8: $1B
    rrca                                          ; $72E9: $0F
    rra                                           ; $72EA: $1F
    ld c, $0E                                     ; $72EB: $0E $0E
    nop                                           ; $72ED: $00
    nop                                           ; $72EE: $00
    nop                                           ; $72EF: $00
    nop                                           ; $72F0: $00
    nop                                           ; $72F1: $00
    nop                                           ; $72F2: $00
    nop                                           ; $72F3: $00
    nop                                           ; $72F4: $00
    nop                                           ; $72F5: $00
    nop                                           ; $72F6: $00

jr_01C_72F7:
    nop                                           ; $72F7: $00
    nop                                           ; $72F8: $00
    nop                                           ; $72F9: $00
    nop                                           ; $72FA: $00
    nop                                           ; $72FB: $00
    nop                                           ; $72FC: $00
    nop                                           ; $72FD: $00
    nop                                           ; $72FE: $00
    nop                                           ; $72FF: $00
    ld bc, $0200                                  ; $7300: $01 $00 $02
    ld bc, $0334                                  ; $7303: $01 $34 $03
    ld e, h                                       ; $7306: $5C
    inc sp                                        ; $7307: $33
    ld b, a                                       ; $7308: $47
    inc a                                         ; $7309: $3C
    cpl                                           ; $730A: $2F
    rra                                           ; $730B: $1F
    inc hl                                        ; $730C: $23
    rra                                           ; $730D: $1F
    rla                                           ; $730E: $17
    rrca                                          ; $730F: $0F
    dec bc                                        ; $7310: $0B
    rlca                                          ; $7311: $07
    rlca                                          ; $7312: $07
    inc bc                                        ; $7313: $03
    inc bc                                        ; $7314: $03
    ld bc, $031F                                  ; $7315: $01 $1F $03
    ld l, a                                       ; $7318: $6F
    rla                                           ; $7319: $17
    add a                                         ; $731A: $87
    ld a, e                                       ; $731B: $7B
    rst RST_38                                    ; $731C: $FF
    nop                                           ; $731D: $00
    nop                                           ; $731E: $00
    nop                                           ; $731F: $00
    ld a, a                                       ; $7320: $7F
    rrca                                          ; $7321: $0F
    ccf                                           ; $7322: $3F
    nop                                           ; $7323: $00
    ld a, a                                       ; $7324: $7F
    rra                                           ; $7325: $1F
    sbc a                                         ; $7326: $9F
    ld l, a                                       ; $7327: $6F
    rrca                                          ; $7328: $0F
    or $0E                                        ; $7329: $F6 $0E
    push af                                       ; $732B: $F5
    inc a                                         ; $732C: $3C
    jp Jump_000_00C3                              ; $732D: $C3 $C3 $00


    add b                                         ; $7330: $80
    nop                                           ; $7331: $00
    ret nz                                        ; $7332: $C0

    add b                                         ; $7333: $80
    ret nz                                        ; $7334: $C0

    add b                                         ; $7335: $80
    ret nz                                        ; $7336: $C0

    add b                                         ; $7337: $80
    ret nz                                        ; $7338: $C0

    add b                                         ; $7339: $80
    ret nz                                        ; $733A: $C0

    add b                                         ; $733B: $80

jr_01C_733C:
    ldh [$FFC0], a                                ; $733C: $E0 $C0
    ldh [$FFC0], a                                ; $733E: $E0 $C0
    rst RST_38                                    ; $7340: $FF
    cp $FE                                        ; $7341: $FE $FE
    nop                                           ; $7343: $00
    sbc [hl]                                      ; $7344: $9E
    inc c                                         ; $7345: $0C
    adc [hl]                                      ; $7346: $8E
    inc b                                         ; $7347: $04
    ld c, [hl]                                    ; $7348: $4E
    add h                                         ; $7349: $84
    ld h, $C0                                     ; $734A: $26 $C0
    ld e, $E0                                     ; $734C: $1E $E0
    rra                                           ; $734E: $1F
    xor $FF                                       ; $734F: $EE $FF
    rra                                           ; $7351: $1F
    ld a, a                                       ; $7352: $7F
    ccf                                           ; $7353: $3F
    add a                                         ; $7354: $87
    ld a, a                                       ; $7355: $7F
    ld hl, sp+$07                                 ; $7356: $F8 $07
    rlca                                          ; $7358: $07
    nop                                           ; $7359: $00
    nop                                           ; $735A: $00
    nop                                           ; $735B: $00
    nop                                           ; $735C: $00
    nop                                           ; $735D: $00
    nop                                           ; $735E: $00
    nop                                           ; $735F: $00
    add b                                         ; $7360: $80
    nop                                           ; $7361: $00
    ret nz                                        ; $7362: $C0

    add b                                         ; $7363: $80
    ld hl, sp-$40                                 ; $7364: $F8 $C0
    db $FC                                        ; $7366: $FC
    ld hl, sp-$04                                 ; $7367: $F8 $FC
    ld a, b                                       ; $7369: $78
    ld a, h                                       ; $736A: $7C
    jr c, jr_01C_73A9                             ; $736B: $38 $3C

    jr jr_01C_73AB                                ; $736D: $18 $3C

    nop                                           ; $736F: $00
    ld h, h                                       ; $7370: $64
    jr jr_01C_72F7                                ; $7371: $18 $84

    ld a, b                                       ; $7373: $78
    ld hl, sp+$00                                 ; $7374: $F8 $00
    nop                                           ; $7376: $00
    nop                                           ; $7377: $00
    nop                                           ; $7378: $00
    nop                                           ; $7379: $00
    nop                                           ; $737A: $00
    nop                                           ; $737B: $00
    nop                                           ; $737C: $00
    nop                                           ; $737D: $00
    nop                                           ; $737E: $00
    nop                                           ; $737F: $00
    ldh [$FFC0], a                                ; $7380: $E0 $C0
    ret nz                                        ; $7382: $C0

    nop                                           ; $7383: $00
    nop                                           ; $7384: $00
    nop                                           ; $7385: $00
    nop                                           ; $7386: $00
    nop                                           ; $7387: $00
    nop                                           ; $7388: $00
    nop                                           ; $7389: $00
    nop                                           ; $738A: $00
    nop                                           ; $738B: $00
    nop                                           ; $738C: $00
    nop                                           ; $738D: $00
    nop                                           ; $738E: $00
    nop                                           ; $738F: $00
    nop                                           ; $7390: $00
    nop                                           ; $7391: $00
    nop                                           ; $7392: $00
    nop                                           ; $7393: $00
    nop                                           ; $7394: $00
    nop                                           ; $7395: $00
    nop                                           ; $7396: $00
    nop                                           ; $7397: $00
    nop                                           ; $7398: $00
    nop                                           ; $7399: $00
    nop                                           ; $739A: $00
    nop                                           ; $739B: $00
    nop                                           ; $739C: $00
    nop                                           ; $739D: $00
    nop                                           ; $739E: $00
    nop                                           ; $739F: $00
    nop                                           ; $73A0: $00
    nop                                           ; $73A1: $00
    nop                                           ; $73A2: $00
    nop                                           ; $73A3: $00
    nop                                           ; $73A4: $00
    nop                                           ; $73A5: $00
    nop                                           ; $73A6: $00
    nop                                           ; $73A7: $00
    nop                                           ; $73A8: $00

jr_01C_73A9:
    nop                                           ; $73A9: $00
    nop                                           ; $73AA: $00

jr_01C_73AB:
    nop                                           ; $73AB: $00
    nop                                           ; $73AC: $00
    nop                                           ; $73AD: $00
    nop                                           ; $73AE: $00
    nop                                           ; $73AF: $00
    jr nc, jr_01C_73B2                            ; $73B0: $30 $00

jr_01C_73B2:
    ld c, b                                       ; $73B2: $48
    jr nc, jr_01C_733C                            ; $73B3: $30 $87

    ld a, b                                       ; $73B5: $78
    add c                                         ; $73B6: $81
    ld a, [hl]                                    ; $73B7: $7E
    add c                                         ; $73B8: $81
    ld a, [hl]                                    ; $73B9: $7E
    add a                                         ; $73BA: $87
    ld a, b                                       ; $73BB: $78
    ld c, b                                       ; $73BC: $48
    jr nc, jr_01C_73EF                            ; $73BD: $30 $30

    nop                                           ; $73BF: $00
    ret c                                         ; $73C0: $D8

    xor a                                         ; $73C1: $AF
    call c, $BFA7                                 ; $73C2: $DC $A7 $BF
    ld h, e                                       ; $73C5: $63
    ld a, e                                       ; $73C6: $7B
    push hl                                       ; $73C7: $E5
    ld a, c                                       ; $73C8: $79
    sub $F9                                       ; $73C9: $D6 $F9
    rst RST_10                                    ; $73CB: $D7
    push af                                       ; $73CC: $F5
    and e                                         ; $73CD: $A3
    ldh a, [c]                                    ; $73CE: $F2
    and c                                         ; $73CF: $A1
    ldh [c], a                                    ; $73D0: $E2
    add c                                         ; $73D1: $81
    add d                                         ; $73D2: $82
    ld bc, $0305                                  ; $73D3: $01 $05 $03
    rrca                                          ; $73D6: $0F
    rlca                                          ; $73D7: $07
    ccf                                           ; $73D8: $3F
    inc bc                                        ; $73D9: $03
    ld d, e                                       ; $73DA: $53
    dec l                                         ; $73DB: $2D
    and e                                         ; $73DC: $A3
    ld e, l                                       ; $73DD: $5D
    rst RST_38                                    ; $73DE: $FF
    nop                                           ; $73DF: $00
    nop                                           ; $73E0: $00
    rst RST_38                                    ; $73E1: $FF
    nop                                           ; $73E2: $00
    rst RST_38                                    ; $73E3: $FF
    nop                                           ; $73E4: $00
    rst RST_38                                    ; $73E5: $FF
    ret nz                                        ; $73E6: $C0

    rst RST_38                                    ; $73E7: $FF
    ldh a, [$FF7F]                                ; $73E8: $F0 $7F
    db $FC                                        ; $73EA: $FC
    sbc a                                         ; $73EB: $9F
    rst RST_38                                    ; $73EC: $FF
    db $E3                                        ; $73ED: $E3
    di                                            ; $73EE: $F3

jr_01C_73EF:
    ldh [$FFE1], a                                ; $73EF: $E0 $E1
    ret nz                                        ; $73F1: $C0

    ret nz                                        ; $73F2: $C0

    add b                                         ; $73F3: $80
    ret nz                                        ; $73F4: $C0

    add b                                         ; $73F5: $80
    ret nz                                        ; $73F6: $C0

    add b                                         ; $73F7: $80
    ldh [$FFC0], a                                ; $73F8: $E0 $C0
    ldh [$FFC0], a                                ; $73FA: $E0 $C0
    ret nz                                        ; $73FC: $C0

    nop                                           ; $73FD: $00
    nop                                           ; $73FE: $00
    nop                                           ; $73FF: $00
    nop                                           ; $7400: $00
    rst RST_38                                    ; $7401: $FF
    nop                                           ; $7402: $00
    rst RST_38                                    ; $7403: $FF
    nop                                           ; $7404: $00
    rst RST_38                                    ; $7405: $FF
    nop                                           ; $7406: $00
    rst RST_38                                    ; $7407: $FF
    nop                                           ; $7408: $00
    rst RST_38                                    ; $7409: $FF
    add b                                         ; $740A: $80
    rst RST_38                                    ; $740B: $FF
    ld hl, sp+$7F                                 ; $740C: $F8 $7F
    ld a, a                                       ; $740E: $7F
    add a                                         ; $740F: $87
    rst RST_38                                    ; $7410: $FF
    jr c, jr_01C_7441                             ; $7411: $38 $2E

    inc e                                         ; $7413: $1C
    rra                                           ; $7414: $1F
    ld c, $1F                                     ; $7415: $0E $1F
    rrca                                          ; $7417: $0F
    rra                                           ; $7418: $1F
    dec c                                         ; $7419: $0D
    dec c                                         ; $741A: $0D
    ld [bc], a                                    ; $741B: $02
    ld [$0F07], sp                                ; $741C: $08 $07 $0F
    nop                                           ; $741F: $00
    nop                                           ; $7420: $00
    rst RST_38                                    ; $7421: $FF
    nop                                           ; $7422: $00
    rst RST_38                                    ; $7423: $FF
    nop                                           ; $7424: $00
    rst RST_38                                    ; $7425: $FF
    nop                                           ; $7426: $00
    rst RST_38                                    ; $7427: $FF
    nop                                           ; $7428: $00
    rst RST_38                                    ; $7429: $FF
    nop                                           ; $742A: $00
    rst RST_38                                    ; $742B: $FF
    nop                                           ; $742C: $00
    rst RST_38                                    ; $742D: $FF
    add b                                         ; $742E: $80
    rst RST_38                                    ; $742F: $FF
    rst RST_38                                    ; $7430: $FF
    rst RST_38                                    ; $7431: $FF
    rst RST_38                                    ; $7432: $FF
    nop                                           ; $7433: $00
    nop                                           ; $7434: $00
    nop                                           ; $7435: $00
    add b                                         ; $7436: $80
    nop                                           ; $7437: $00
    add b                                         ; $7438: $80
    nop                                           ; $7439: $00
    ld b, b                                       ; $743A: $40
    add b                                         ; $743B: $80
    and b                                         ; $743C: $A0
    ld b, b                                       ; $743D: $40
    ldh [rP1], a                                  ; $743E: $E0 $00
    add b                                         ; $7440: $80

jr_01C_7441:
    nop                                           ; $7441: $00
    ret nz                                        ; $7442: $C0

    add b                                         ; $7443: $80
    ld h, b                                       ; $7444: $60
    ret nz                                        ; $7445: $C0

    ldh a, [$FFE0]                                ; $7446: $F0 $E0
    cp b                                          ; $7448: $B8
    ldh a, [$FF7C]                                ; $7449: $F0 $7C
    ld hl, sp+$2E                                 ; $744B: $F8 $2E
    db $FC                                        ; $744D: $FC
    rra                                           ; $744E: $1F
    cp $03                                        ; $744F: $FE $03
    rst RST_38                                    ; $7451: $FF
    ld bc, $00FF                                  ; $7452: $01 $FF $00
    rst RST_38                                    ; $7455: $FF
    inc bc                                        ; $7456: $03
    rst RST_38                                    ; $7457: $FF
    rrca                                          ; $7458: $0F
    cp $7E                                        ; $7459: $FE $7E
    ld hl, sp-$08                                 ; $745B: $F8 $F8
    ret nz                                        ; $745D: $C0

    ret nz                                        ; $745E: $C0

    nop                                           ; $745F: $00
    ld b, $03                                     ; $7460: $06 $03
    ld c, $03                                     ; $7462: $0E $03
    rra                                           ; $7464: $1F
    dec b                                         ; $7465: $05
    dec a                                         ; $7466: $3D
    ld a, [de]                                    ; $7467: $1A
    inc l                                         ; $7468: $2C
    rra                                           ; $7469: $1F
    add hl, hl                                    ; $746A: $29
    rra                                           ; $746B: $1F
    ld hl, $111F                                  ; $746C: $21 $1F $11
    rrca                                          ; $746F: $0F
    inc sp                                        ; $7470: $33
    ld e, $36                                     ; $7471: $1E $36
    rra                                           ; $7473: $1F
    ld [hl-], a                                   ; $7474: $32
    rra                                           ; $7475: $1F
    inc hl                                        ; $7476: $23
    rra                                           ; $7477: $1F
    daa                                           ; $7478: $27
    dec de                                        ; $7479: $1B
    scf                                           ; $747A: $37
    dec de                                        ; $747B: $1B
    ld de, $0F0F                                  ; $747C: $11 $0F $0F
    nop                                           ; $747F: $00
    nop                                           ; $7480: $00
    nop                                           ; $7481: $00
    ld b, b                                       ; $7482: $40
    nop                                           ; $7483: $00
    ld h, b                                       ; $7484: $60
    nop                                           ; $7485: $00
    ld h, b                                       ; $7486: $60
    nop                                           ; $7487: $00
    ld [hl], b                                    ; $7488: $70
    jr nz, jr_01C_74FB                            ; $7489: $20 $70

    jr nz, jr_01C_7505                            ; $748B: $20 $78

    jr nc, @+$6A                                  ; $748D: $30 $68

    jr nc, jr_01C_74FD                            ; $748F: $30 $6C

    jr c, jr_01C_74B9                             ; $7491: $38 $26

    inc e                                         ; $7493: $1C
    inc sp                                        ; $7494: $33
    ld e, $31                                     ; $7495: $1E $31
    rra                                           ; $7497: $1F
    jr jr_01C_74A9                                ; $7498: $18 $0F

    jr jr_01C_74AB                                ; $749A: $18 $0F

    inc c                                         ; $749C: $0C
    rlca                                          ; $749D: $07
    inc c                                         ; $749E: $0C
    rlca                                          ; $749F: $07
    ld bc, $0000                                  ; $74A0: $01 $00 $00
    nop                                           ; $74A3: $00
    ccf                                           ; $74A4: $3F
    nop                                           ; $74A5: $00
    ld b, c                                       ; $74A6: $41
    ld a, $7F                                     ; $74A7: $3E $7F

jr_01C_74A9:
    jr c, jr_01C_74A9                             ; $74A9: $38 $FE

jr_01C_74AB:
    dec [hl]                                      ; $74AB: $35
    rst RST_38                                    ; $74AC: $FF
    sub [hl]                                      ; $74AD: $96
    ld a, e                                       ; $74AE: $7B
    add $3E                                       ; $74AF: $C6 $3E
    pop af                                        ; $74B1: $F1
    rrca                                          ; $74B2: $0F
    cp $03                                        ; $74B3: $FE $03
    rst RST_38                                    ; $74B5: $FF
    nop                                           ; $74B6: $00
    rst RST_38                                    ; $74B7: $FF
    nop                                           ; $74B8: $00

jr_01C_74B9:
    rst RST_38                                    ; $74B9: $FF
    add b                                         ; $74BA: $80
    rst RST_38                                    ; $74BB: $FF
    ret nz                                        ; $74BC: $C0

    ld a, a                                       ; $74BD: $7F
    ldh [$FF3F], a                                ; $74BE: $E0 $3F
    db $FC                                        ; $74C0: $FC
    ld h, a                                       ; $74C1: $67
    ld hl, sp+$0F                                 ; $74C2: $F8 $0F
    ei                                            ; $74C4: $FB
    inc l                                         ; $74C5: $2C
    rst RST_38                                    ; $74C6: $FF
    inc bc                                        ; $74C7: $03
    cp a                                          ; $74C8: $BF
    ld e, a                                       ; $74C9: $5F
    rst RST_38                                    ; $74CA: $FF
    ccf                                           ; $74CB: $3F
    db $EB                                        ; $74CC: $EB
    push af                                       ; $74CD: $F5
    db $EB                                        ; $74CE: $EB
    dec [hl]                                      ; $74CF: $35
    rst RST_38                                    ; $74D0: $FF
    cp a                                          ; $74D1: $BF
    rst RST_38                                    ; $74D2: $FF
    nop                                           ; $74D3: $00
    cp $C0                                        ; $74D4: $FE $C0
    rra                                           ; $74D6: $1F
    cp $01                                        ; $74D7: $FE $01
    rst RST_38                                    ; $74D9: $FF
    nop                                           ; $74DA: $00
    rst RST_38                                    ; $74DB: $FF
    nop                                           ; $74DC: $00
    rst RST_38                                    ; $74DD: $FF
    nop                                           ; $74DE: $00
    rst RST_38                                    ; $74DF: $FF
    cp a                                          ; $74E0: $BF
    ld a, a                                       ; $74E1: $7F
    rst RST_38                                    ; $74E2: $FF
    ld bc, $7E81                                  ; $74E3: $01 $81 $7E
    cp a                                          ; $74E6: $BF
    ld a, [hl]                                    ; $74E7: $7E
    rst RST_38                                    ; $74E8: $FF
    ld a, [hl]                                    ; $74E9: $7E
    rst RST_38                                    ; $74EA: $FF
    ld a, h                                       ; $74EB: $7C
    db $FC                                        ; $74EC: $FC
    ld a, e                                       ; $74ED: $7B
    ld hl, sp-$79                                 ; $74EE: $F8 $87
    db $FC                                        ; $74F0: $FC
    dec sp                                        ; $74F1: $3B
    ccf                                           ; $74F2: $3F
    inc e                                         ; $74F3: $1C
    ccf                                           ; $74F4: $3F
    ld de, $0FFE                                  ; $74F5: $11 $FE $0F
    ldh a, [rIE]                                  ; $74F8: $F0 $FF
    nop                                           ; $74FA: $00

jr_01C_74FB:
    rst RST_38                                    ; $74FB: $FF
    nop                                           ; $74FC: $00

jr_01C_74FD:
    rst RST_38                                    ; $74FD: $FF
    nop                                           ; $74FE: $00
    rst RST_38                                    ; $74FF: $FF
    add b                                         ; $7500: $80
    nop                                           ; $7501: $00
    ret nz                                        ; $7502: $C0

    add b                                         ; $7503: $80
    ret nz                                        ; $7504: $C0

jr_01C_7505:
    add b                                         ; $7505: $80
    ret nz                                        ; $7506: $C0

    add b                                         ; $7507: $80
    ret nz                                        ; $7508: $C0

    add b                                         ; $7509: $80
    ret nz                                        ; $750A: $C0

    add b                                         ; $750B: $80
    ldh [rP1], a                                  ; $750C: $E0 $00
    ld a, b                                       ; $750E: $78
    add b                                         ; $750F: $80
    cp $78                                        ; $7510: $FE $78
    rst RST_28                                    ; $7512: $EF
    cp $9B                                        ; $7513: $FE $9B
    cp $03                                        ; $7515: $FE $03
    rst RST_38                                    ; $7517: $FF
    ld b, $FF                                     ; $7518: $06 $FF
    dec b                                         ; $751A: $05
    rst RST_38                                    ; $751B: $FF
    add hl, bc                                    ; $751C: $09
    rst RST_38                                    ; $751D: $FF
    nop                                           ; $751E: $00
    rst RST_38                                    ; $751F: $FF
    nop                                           ; $7520: $00
    nop                                           ; $7521: $00
    nop                                           ; $7522: $00
    nop                                           ; $7523: $00
    nop                                           ; $7524: $00
    nop                                           ; $7525: $00
    nop                                           ; $7526: $00
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
    ld a, [hl]                                    ; $7536: $7E
    nop                                           ; $7537: $00
    pop hl                                        ; $7538: $E1
    ld e, $E6                                     ; $7539: $1E $E6
    ld e, c                                       ; $753B: $59
    ld [$F255], a                                 ; $753C: $EA $55 $F2
    dec c                                         ; $753F: $0D
    nop                                           ; $7540: $00
    nop                                           ; $7541: $00
    nop                                           ; $7542: $00
    nop                                           ; $7543: $00
    nop                                           ; $7544: $00
    nop                                           ; $7545: $00
    nop                                           ; $7546: $00
    nop                                           ; $7547: $00
    nop                                           ; $7548: $00
    nop                                           ; $7549: $00
    nop                                           ; $754A: $00
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
    jr jr_01C_7558                                ; $7556: $18 $00

jr_01C_7558:
    ld l, $18                                     ; $7558: $2E $18
    xor a                                         ; $755A: $AF
    ld e, $AF                                     ; $755B: $1E $AF
    rra                                           ; $755D: $1F
    ld e, a                                       ; $755E: $5F
    cp a                                          ; $755F: $BF
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
    add b                                         ; $757C: $80
    nop                                           ; $757D: $00
    ret nz                                        ; $757E: $C0

    add b                                         ; $757F: $80
    add b                                         ; $7580: $80
    nop                                           ; $7581: $00
    ret nz                                        ; $7582: $C0

    add b                                         ; $7583: $80
    ret nz                                        ; $7584: $C0

    add b                                         ; $7585: $80
    add b                                         ; $7586: $80
    nop                                           ; $7587: $00
    nop                                           ; $7588: $00
    nop                                           ; $7589: $00
    nop                                           ; $758A: $00
    nop                                           ; $758B: $00
    nop                                           ; $758C: $00
    nop                                           ; $758D: $00
    nop                                           ; $758E: $00
    nop                                           ; $758F: $00
    nop                                           ; $7590: $00
    nop                                           ; $7591: $00
    nop                                           ; $7592: $00
    nop                                           ; $7593: $00
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
    ccf                                           ; $75A0: $3F
    nop                                           ; $75A1: $00
    ld b, b                                       ; $75A2: $40
    ccf                                           ; $75A3: $3F
    adc b                                         ; $75A4: $88
    ld [hl], a                                    ; $75A5: $77
    adc [hl]                                      ; $75A6: $8E
    ld [hl], c                                    ; $75A7: $71
    cp c                                          ; $75A8: $B9
    ld b, [hl]                                    ; $75A9: $46
    adc [hl]                                      ; $75AA: $8E
    ld [hl], c                                    ; $75AB: $71
    sbc c                                         ; $75AC: $99
    ld h, [hl]                                    ; $75AD: $66
    xor c                                         ; $75AE: $A9
    ld d, [hl]                                    ; $75AF: $56
    sbc d                                         ; $75B0: $9A
    ld h, l                                       ; $75B1: $65
    ld b, b                                       ; $75B2: $40
    ccf                                           ; $75B3: $3F
    jr c, jr_01C_75BD                             ; $75B4: $38 $07

    inc b                                         ; $75B6: $04
    inc bc                                        ; $75B7: $03
    ld [bc], a                                    ; $75B8: $02
    ld bc, $0001                                  ; $75B9: $01 $01 $00
    nop                                           ; $75BC: $00

jr_01C_75BD:
    nop                                           ; $75BD: $00
    nop                                           ; $75BE: $00
    nop                                           ; $75BF: $00
    rst RST_38                                    ; $75C0: $FF
    nop                                           ; $75C1: $00
    nop                                           ; $75C2: $00
    rst RST_38                                    ; $75C3: $FF
    db $10                                        ; $75C4: $10
    rst RST_28                                    ; $75C5: $EF
    halt                                          ; $75C6: $76
    adc c                                         ; $75C7: $89
    add hl, de                                    ; $75C8: $19
    and $91                                       ; $75C9: $E6 $91
    ld l, [hl]                                    ; $75CB: $6E
    ld sp, $51CE                                  ; $75CC: $31 $CE $51
    xor [hl]                                      ; $75CF: $AE
    ld [de], a                                    ; $75D0: $12
    db $ED                                        ; $75D1: $ED
    nop                                           ; $75D2: $00
    rst RST_38                                    ; $75D3: $FF
    ld a, a                                       ; $75D4: $7F
    add b                                         ; $75D5: $80
    ld b, b                                       ; $75D6: $40
    add b                                         ; $75D7: $80
    ld b, b                                       ; $75D8: $40
    add b                                         ; $75D9: $80
    ld b, b                                       ; $75DA: $40
    add b                                         ; $75DB: $80
    ret nz                                        ; $75DC: $C0

    nop                                           ; $75DD: $00
    nop                                           ; $75DE: $00
    nop                                           ; $75DF: $00
    rst RST_38                                    ; $75E0: $FF
    nop                                           ; $75E1: $00
    nop                                           ; $75E2: $00
    rst RST_38                                    ; $75E3: $FF
    ld c, b                                       ; $75E4: $48
    or a                                          ; $75E5: $B7
    ld c, e                                       ; $75E6: $4B
    or h                                          ; $75E7: $B4
    ld c, c                                       ; $75E8: $49
    or [hl]                                       ; $75E9: $B6
    add hl, hl                                    ; $75EA: $29
    sub $09                                       ; $75EB: $D6 $09
    or $12                                        ; $75ED: $F6 $12
    db $ED                                        ; $75EF: $ED
    ld h, d                                       ; $75F0: $62
    sbc l                                         ; $75F1: $9D
    nop                                           ; $75F2: $00
    rst RST_38                                    ; $75F3: $FF
    rst RST_38                                    ; $75F4: $FF
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
    db $FC                                        ; $7600: $FC
    nop                                           ; $7601: $00
    ld [bc], a                                    ; $7602: $02
    db $FC                                        ; $7603: $FC
    sub l                                         ; $7604: $95
    ld l, d                                       ; $7605: $6A
    push af                                       ; $7606: $F5
    ld a, [bc]                                    ; $7607: $0A
    ld bc, $71FE                                  ; $7608: $01 $FE $71
    adc [hl]                                      ; $760B: $8E
    ld bc, $01FE                                  ; $760C: $01 $FE $01
    cp $71                                        ; $760F: $FE $71
    adc [hl]                                      ; $7611: $8E
    ld [bc], a                                    ; $7612: $02
    db $FC                                        ; $7613: $FC
    db $FC                                        ; $7614: $FC
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
    ld bc, $0100                                  ; $7620: $01 $00 $01
    nop                                           ; $7623: $00
    ld bc, $0000                                  ; $7624: $01 $00 $00
    nop                                           ; $7627: $00
    nop                                           ; $7628: $00
    nop                                           ; $7629: $00
    ld bc, $0F00                                  ; $762A: $01 $00 $0F
    nop                                           ; $762D: $00
    add hl, de                                    ; $762E: $19
    rrca                                          ; $762F: $0F
    ld [hl-], a                                   ; $7630: $32
    rra                                           ; $7631: $1F
    ld a, a                                       ; $7632: $7F
    ld de, $6EF3                                  ; $7633: $11 $F3 $6E
    or e                                          ; $7636: $B3
    ld a, [hl]                                    ; $7637: $7E
    and a                                         ; $7638: $A7
    ld a, l                                       ; $7639: $7D
    add [hl]                                      ; $763A: $86
    ld a, l                                       ; $763B: $7D
    ld b, [hl]                                    ; $763C: $46
    dec a                                         ; $763D: $3D
    call $E77B                                    ; $763E: $CD $7B $E7
    ret nz                                        ; $7641: $C0

    cp $67                                        ; $7642: $FE $67
    cp $A1                                        ; $7644: $FE $A1
    ldh a, [c]                                    ; $7646: $F2
    adc l                                         ; $7647: $8D
    di                                            ; $7648: $F3
    ld c, l                                       ; $7649: $4D
    jp hl                                         ; $764A: $E9


    ld b, [hl]                                    ; $764B: $46
    ld hl, sp+$07                                 ; $764C: $F8 $07
    db $DD                                        ; $764E: $DD
    ld a, [hl-]                                   ; $764F: $3A
    rst RST_08                                    ; $7650: $CF
    cp h                                          ; $7651: $BC
    rst RST_08                                    ; $7652: $CF
    cp a                                          ; $7653: $BF
    xor a                                         ; $7654: $AF
    rra                                           ; $7655: $1F
    sub a                                         ; $7656: $97
    rrca                                          ; $7657: $0F
    rla                                           ; $7658: $17
    ld c, $16                                     ; $7659: $0E $16
    inc c                                         ; $765B: $0C
    ld l, $1C                                     ; $765C: $2E $1C
    ld a, [hl]                                    ; $765E: $7E
    inc a                                         ; $765F: $3C
    ld hl, sp+$00                                 ; $7660: $F8 $00
    db $FC                                        ; $7662: $FC
    ld hl, sp-$04                                 ; $7663: $F8 $FC
    ret nz                                        ; $7665: $C0

    call nz, $C2B8                                ; $7666: $C4 $B8 $C2
    cp h                                          ; $7669: $BC
    jp nz, $AF3C                                  ; $766A: $C2 $3C $AF

    db $10                                        ; $766D: $10
    rla                                           ; $766E: $17

jr_01C_766F:
    rrca                                          ; $766F: $0F
    inc de                                        ; $7670: $13
    rrca                                          ; $7671: $0F
    sub e                                         ; $7672: $93
    rrca                                          ; $7673: $0F
    sub c                                         ; $7674: $91
    rrca                                          ; $7675: $0F
    sub c                                         ; $7676: $91
    rrca                                          ; $7677: $0F
    ld [$0707], sp                                ; $7678: $08 $07 $07
    ld bc, $0001                                  ; $767B: $01 $01 $00
    nop                                           ; $767E: $00
    nop                                           ; $767F: $00
    ld a, [hl]                                    ; $7680: $7E
    dec sp                                        ; $7681: $3B
    ld a, h                                       ; $7682: $7C
    dec sp                                        ; $7683: $3B
    ld a, a                                       ; $7684: $7F
    dec sp                                        ; $7685: $3B
    ld a, a                                       ; $7686: $7F
    add hl, sp                                    ; $7687: $39
    ld a, c                                       ; $7688: $79
    jr nc, jr_01C_7703                            ; $7689: $30 $78

    jr nc, jr_01C_76FD                            ; $768B: $30 $70

    jr nz, jr_01C_766F                            ; $768D: $20 $E0

    nop                                           ; $768F: $00
    ret nz                                        ; $7690: $C0

    add b                                         ; $7691: $80
    ldh [$FFC0], a                                ; $7692: $E0 $C0
    ldh [$FFC0], a                                ; $7694: $E0 $C0
    ldh [$FFC0], a                                ; $7696: $E0 $C0
    ldh [$FFC0], a                                ; $7698: $E0 $C0
    ldh a, [$FFE0]                                ; $769A: $F0 $E0
    ld [hl], b                                    ; $769C: $70
    ldh [$FFF8], a                                ; $769D: $E0 $F8
    ld [hl], b                                    ; $769F: $70
    nop                                           ; $76A0: $00
    nop                                           ; $76A1: $00
    nop                                           ; $76A2: $00
    nop                                           ; $76A3: $00
    nop                                           ; $76A4: $00
    nop                                           ; $76A5: $00
    add b                                         ; $76A6: $80
    nop                                           ; $76A7: $00
    ldh [rP1], a                                  ; $76A8: $E0 $00
    ld hl, sp-$20                                 ; $76AA: $F8 $E0
    cp h                                          ; $76AC: $BC
    ld hl, sp+$6C                                 ; $76AD: $F8 $6C
    ld hl, sp+$1E                                 ; $76AF: $F8 $1E
    db $FC                                        ; $76B1: $FC
    sbc e                                         ; $76B2: $9B
    cp $37                                        ; $76B3: $FE $37
    rst RST_38                                    ; $76B5: $FF
    dec h                                         ; $76B6: $25
    rst RST_38                                    ; $76B7: $FF
    sub e                                         ; $76B8: $93
    ld a, a                                       ; $76B9: $7F
    ld [hl], l                                    ; $76BA: $75
    rra                                           ; $76BB: $1F
    inc e                                         ; $76BC: $1C
    inc bc                                        ; $76BD: $03
    inc bc                                        ; $76BE: $03
    nop                                           ; $76BF: $00
    add b                                         ; $76C0: $80
    nop                                           ; $76C1: $00
    ret nz                                        ; $76C2: $C0

    add b                                         ; $76C3: $80
    ldh [$FFC0], a                                ; $76C4: $E0 $C0
    ld [hl], b                                    ; $76C6: $70
    ldh [$FFF8], a                                ; $76C7: $E0 $F8
    ldh a, [$FFDC]                                ; $76C9: $F0 $DC
    ld a, b                                       ; $76CB: $78
    ld a, [hl]                                    ; $76CC: $7E
    inc c                                         ; $76CD: $0C
    ld c, $00                                     ; $76CE: $0E $00
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
    inc bc                                        ; $76E0: $03
    nop                                           ; $76E1: $00
    rlca                                          ; $76E2: $07
    nop                                           ; $76E3: $00
    rlca                                          ; $76E4: $07
    ld [bc], a                                    ; $76E5: $02
    rlca                                          ; $76E6: $07
    ld [bc], a                                    ; $76E7: $02
    rlca                                          ; $76E8: $07
    nop                                           ; $76E9: $00
    inc bc                                        ; $76EA: $03
    ld bc, $00FF                                  ; $76EB: $01 $FF $00
    rlca                                          ; $76EE: $07
    ld hl, sp-$01                                 ; $76EF: $F8 $FF
    ldh [$FFFA], a                                ; $76F1: $E0 $FA
    push de                                       ; $76F3: $D5
    rst RST_38                                    ; $76F4: $FF
    ld e, b                                       ; $76F5: $58
    rst RST_28                                    ; $76F6: $EF
    dec de                                        ; $76F7: $1B
    dec hl                                        ; $76F8: $2B
    call nc, Call_01C_669B                        ; $76F9: $D4 $9B $66
    db $EB                                        ; $76FC: $EB

jr_01C_76FD:
    add [hl]                                      ; $76FD: $86
    db $EB                                        ; $76FE: $EB
    add $F0                                       ; $76FF: $C6 $F0
    nop                                           ; $7701: $00
    add hl, bc                                    ; $7702: $09

jr_01C_7703:
    ldh a, [$FF35]                                ; $7703: $F0 $35
    ret z                                         ; $7705: $C8

    ld d, l                                       ; $7706: $55
    xor b                                         ; $7707: $A8
    sub d                                         ; $7708: $92
    ld l, l                                       ; $7709: $6D
    ldh a, [c]                                    ; $770A: $F2
    sbc l                                         ; $770B: $9D
    db $E3                                        ; $770C: $E3
    inc a                                         ; $770D: $3C
    xor $B1                                       ; $770E: $EE $B1
    cp $0D                                        ; $7710: $FE $0D
    rst RST_38                                    ; $7712: $FF
    ld a, l                                       ; $7713: $7D
    rst RST_38                                    ; $7714: $FF
    db $FD                                        ; $7715: $FD
    xor a                                         ; $7716: $AF
    push de                                       ; $7717: $D5
    xor a                                         ; $7718: $AF
    sub $FF                                       ; $7719: $D6 $FF
    db $FC                                        ; $771B: $FC
    db $FC                                        ; $771C: $FC
    nop                                           ; $771D: $00
    ld hl, sp-$10                                 ; $771E: $F8 $F0
    ret nz                                        ; $7720: $C0

    nop                                           ; $7721: $00
    ld [hl], b                                    ; $7722: $70
    ret nz                                        ; $7723: $C0

    ld a, b                                       ; $7724: $78
    ldh a, [$FF7C]                                ; $7725: $F0 $7C
    ld hl, sp-$02                                 ; $7727: $F8 $FE
    db $FC                                        ; $7729: $FC
    cp $FC                                        ; $772A: $FE $FC
    rst RST_38                                    ; $772C: $FF
    ld b, $07                                     ; $772D: $06 $07
    ld a, [$FAFF]                                 ; $772F: $FA $FF $FA
    rst RST_38                                    ; $7732: $FF
    ld a, [$F2FF]                                 ; $7733: $FA $FF $F2
    di                                            ; $7736: $F3
    db $EC                                        ; $7737: $EC
    pop hl                                        ; $7738: $E1
    ld e, $F3                                     ; $7739: $1E $F3
    db $ED                                        ; $773B: $ED
    rst RST_38                                    ; $773C: $FF
    ld [hl], e                                    ; $773D: $73
    cp $7B                                        ; $773E: $FE $7B
    rst RST_38                                    ; $7740: $FF
    ld e, $9F                                     ; $7741: $1E $9F
    ld l, [hl]                                    ; $7743: $6E
    ld e, $E8                                     ; $7744: $1E $E8
    ld hl, sp+$00                                 ; $7746: $F8 $00
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
    db $FC                                        ; $7760: $FC
    ld a, b                                       ; $7761: $78
    db $FC                                        ; $7762: $FC
    ld l, b                                       ; $7763: $68
    ld l, d                                       ; $7764: $6A
    inc d                                         ; $7765: $14
    ld b, l                                       ; $7766: $45
    ld a, [hl-]                                   ; $7767: $3A
    ld a, a                                       ; $7768: $7F
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
    nop                                           ; $777C: $00
    nop                                           ; $777D: $00
    nop                                           ; $777E: $00
    nop                                           ; $777F: $00
    db $DB                                        ; $7780: $DB
    ld a, a                                       ; $7781: $7F
    bit 7, [hl]                                   ; $7782: $CB $7E
    adc a                                         ; $7784: $8F
    ld a, [hl]                                    ; $7785: $7E
    sbc a                                         ; $7786: $9F
    ld l, l                                       ; $7787: $6D
    rst RST_18                                    ; $7788: $DF
    ld l, l                                       ; $7789: $6D
    ld b, a                                       ; $778A: $47
    inc a                                         ; $778B: $3C
    inc a                                         ; $778C: $3C
    nop                                           ; $778D: $00
    nop                                           ; $778E: $00
    nop                                           ; $778F: $00
    nop                                           ; $7790: $00
    nop                                           ; $7791: $00
    ld bc, $0200                                  ; $7792: $01 $00 $02
    ld bc, $0205                                  ; $7795: $01 $05 $02
    rlca                                          ; $7798: $07
    nop                                           ; $7799: $00
    nop                                           ; $779A: $00
    nop                                           ; $779B: $00
    nop                                           ; $779C: $00
    nop                                           ; $779D: $00
    nop                                           ; $779E: $00
    nop                                           ; $779F: $00
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

Call_01C_78B8:
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

Call_01C_7EB8:
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
