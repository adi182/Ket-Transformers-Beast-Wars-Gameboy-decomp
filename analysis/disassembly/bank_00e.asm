; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00e", ROMX[$4000], BANK[$e]

    nop                                           ; $4000: $00
    nop                                           ; $4001: $00
    nop                                           ; $4002: $00
    nop                                           ; $4003: $00
    nop                                           ; $4004: $00
    nop                                           ; $4005: $00
    nop                                           ; $4006: $00
    nop                                           ; $4007: $00
    nop                                           ; $4008: $00
    nop                                           ; $4009: $00
    nop                                           ; $400A: $00
    nop                                           ; $400B: $00
    ldh [rP1], a                                  ; $400C: $E0 $00
    ret c                                         ; $400E: $D8

    ld h, b                                       ; $400F: $60

jr_00E_4010:
    halt                                          ; $4010: $76
    jr jr_00E_4010                                ; $4011: $18 $FD

    ld b, $D7                                     ; $4013: $06 $D7
    ld a, c                                       ; $4015: $79
    ld a, l                                       ; $4016: $7D
    ld b, $D7                                     ; $4017: $06 $D7
    ld a, c                                       ; $4019: $79
    db $FD                                        ; $401A: $FD
    rlca                                          ; $401B: $07
    rlca                                          ; $401C: $07
    ld bc, $0001                                  ; $401D: $01 $01 $00
    nop                                           ; $4020: $00
    nop                                           ; $4021: $00
    nop                                           ; $4022: $00
    nop                                           ; $4023: $00
    add b                                         ; $4024: $80
    nop                                           ; $4025: $00
    pop af                                        ; $4026: $F1
    add b                                         ; $4027: $80
    pop de                                        ; $4028: $D1
    ldh [rNR12], a                                ; $4029: $E0 $12
    pop hl                                        ; $402B: $E1
    pop de                                        ; $402C: $D1
    ldh [$FF8B], a                                ; $402D: $E0 $8B
    ldh a, [rIE]                                  ; $402F: $F0 $FF
    pop bc                                        ; $4031: $C1
    rst RST_08                                    ; $4032: $CF
    ld [hl], $87                                  ; $4033: $36 $87
    ld a, d                                       ; $4035: $7A
    add a                                         ; $4036: $87
    ld a, d                                       ; $4037: $7A
    add a                                         ; $4038: $87
    ld a, d                                       ; $4039: $7A
    ld c, e                                       ; $403A: $4B
    inc [hl]                                      ; $403B: $34
    ld sp, $0B0E                                  ; $403C: $31 $0E $0B
    dec b                                         ; $403F: $05
    jr nz, jr_00E_4042                            ; $4040: $20 $00

jr_00E_4042:
    ld d, b                                       ; $4042: $50
    db $20, $88                                   ; $4043: $20 $88
    ld [hl], b                                    ; $4045: $70
    inc h                                         ; $4046: $24
    ld hl, sp+$66                                 ; $4047: $F8 $66
    ld hl, sp-$05                                 ; $4049: $F8 $FB
    ld b, h                                       ; $404B: $44
    ld c, l                                       ; $404C: $4D
    or b                                          ; $404D: $B0
    rst RST_38                                    ; $404E: $FF
    ld c, b                                       ; $404F: $48
    rst RST_38                                    ; $4050: $FF
    ld d, $FE                                     ; $4051: $16 $FE
    ld d, l                                       ; $4053: $55
    rst RST_38                                    ; $4054: $FF
    nop                                           ; $4055: $00
    rra                                           ; $4056: $1F
    db $EC                                        ; $4057: $EC
    rra                                           ; $4058: $1F
    pop hl                                        ; $4059: $E1
    rst RST_38                                    ; $405A: $FF
    rrca                                          ; $405B: $0F
    di                                            ; $405C: $F3
    cp $CE                                        ; $405D: $FE $CE
    db $FD                                        ; $405F: $FD
    nop                                           ; $4060: $00
    nop                                           ; $4061: $00
    inc bc                                        ; $4062: $03
    nop                                           ; $4063: $00
    ld c, $03                                     ; $4064: $0E $03
    dec sp                                        ; $4066: $3B
    inc c                                         ; $4067: $0C
    xor $33                                       ; $4068: $EE $33
    ld a, e                                       ; $406A: $7B
    db $EC                                        ; $406B: $EC
    ld e, $F1                                     ; $406C: $1E $F1
    rst RST_38                                    ; $406E: $FF
    inc h                                         ; $406F: $24
    daa                                           ; $4070: $27
    ret c                                         ; $4071: $D8

    ld [hl], a                                    ; $4072: $77
    cp [hl]                                       ; $4073: $BE
    or $78                                        ; $4074: $F6 $78
    rst RST_38                                    ; $4076: $FF
    ld a, [hl]                                    ; $4077: $7E
    cp $60                                        ; $4078: $FE $60
    ld sp, hl                                     ; $407A: $F9
    ld b, $0F                                     ; $407B: $06 $0F
    ld bc, $078F                                  ; $407D: $01 $8F $07
    ret nz                                        ; $4080: $C0

    nop                                           ; $4081: $00
    ret nz                                        ; $4082: $C0

    add b                                         ; $4083: $80
    add b                                         ; $4084: $80
    nop                                           ; $4085: $00
    ret nz                                        ; $4086: $C0

    nop                                           ; $4087: $00
    ret nz                                        ; $4088: $C0

    add b                                         ; $4089: $80
    add b                                         ; $408A: $80
    nop                                           ; $408B: $00
    ret nz                                        ; $408C: $C0

    add b                                         ; $408D: $80
    ret nz                                        ; $408E: $C0

    nop                                           ; $408F: $00
    nop                                           ; $4090: $00
    nop                                           ; $4091: $00
    nop                                           ; $4092: $00
    nop                                           ; $4093: $00
    nop                                           ; $4094: $00
    nop                                           ; $4095: $00
    nop                                           ; $4096: $00
    nop                                           ; $4097: $00
    nop                                           ; $4098: $00
    nop                                           ; $4099: $00
    ldh [rP1], a                                  ; $409A: $E0 $00
    ldh [$FFC0], a                                ; $409C: $E0 $C0
    ld [hl], b                                    ; $409E: $70
    ret nz                                        ; $409F: $C0

    rlca                                          ; $40A0: $07
    ld bc, $0103                                  ; $40A1: $01 $03 $01
    inc bc                                        ; $40A4: $03
    nop                                           ; $40A5: $00
    ld bc, $0100                                  ; $40A6: $01 $00 $01
    nop                                           ; $40A9: $00
    ld bc, $0100                                  ; $40AA: $01 $00 $01
    nop                                           ; $40AD: $00
    inc bc                                        ; $40AE: $03
    ld bc, $0307                                  ; $40AF: $01 $07 $03
    ld b, $03                                     ; $40B2: $06 $03
    rlca                                          ; $40B4: $07
    inc bc                                        ; $40B5: $03
    ld b, $03                                     ; $40B6: $06 $03
    rlca                                          ; $40B8: $07
    inc bc                                        ; $40B9: $03
    rrca                                          ; $40BA: $0F
    ld [bc], a                                    ; $40BB: $02
    ld a, [de]                                    ; $40BC: $1A
    inc c                                         ; $40BD: $0C

jr_00E_40BE:
    ld [hl], $1C                                  ; $40BE: $36 $1C
    cp $F3                                        ; $40C0: $FE $F3
    rst RST_38                                    ; $40C2: $FF
    call $2BFF                                    ; $40C3: $CD $FF $2B
    rst RST_38                                    ; $40C6: $FF
    ret z                                         ; $40C7: $C8

    db $DD                                        ; $40C8: $DD
    ld a, [hl+]                                   ; $40C9: $2A
    add hl, de                                    ; $40CA: $19
    and $AB                                       ; $40CB: $E6 $AB
    ld b, l                                       ; $40CD: $45
    rst RST_08                                    ; $40CE: $CF
    add e                                         ; $40CF: $83
    adc $87                                       ; $40D0: $CE $87
    ld a, a                                       ; $40D2: $7F
    rst RST_08                                    ; $40D3: $CF
    db $FD                                        ; $40D4: $FD
    adc $DF                                       ; $40D5: $CE $DF
    adc [hl]                                      ; $40D7: $8E
    adc [hl]                                      ; $40D8: $8E
    inc b                                         ; $40D9: $04
    rrca                                          ; $40DA: $0F
    inc b                                         ; $40DB: $04
    rrca                                          ; $40DC: $0F
    dec b                                         ; $40DD: $05
    rrca                                          ; $40DE: $0F
    inc bc                                        ; $40DF: $03
    call z, Call_00E_7987                         ; $40E0: $CC $87 $79
    rst RST_08                                    ; $40E3: $CF
    ld a, a                                       ; $40E4: $7F
    call c, $D0FC                                 ; $40E5: $DC $FC $D0
    ldh a, [rP1]                                  ; $40E8: $F0 $00
    add b                                         ; $40EA: $80
    nop                                           ; $40EB: $00
    ret nz                                        ; $40EC: $C0

    add b                                         ; $40ED: $80
    ret nz                                        ; $40EE: $C0

    add b                                         ; $40EF: $80
    ld b, b                                       ; $40F0: $40
    add b                                         ; $40F1: $80
    add b                                         ; $40F2: $80
    nop                                           ; $40F3: $00
    nop                                           ; $40F4: $00
    nop                                           ; $40F5: $00
    nop                                           ; $40F6: $00
    nop                                           ; $40F7: $00
    add b                                         ; $40F8: $80
    nop                                           ; $40F9: $00
    ld b, b                                       ; $40FA: $40
    add b                                         ; $40FB: $80
    jr nz, jr_00E_40BE                            ; $40FC: $20 $C0

    ret nc                                        ; $40FE: $D0

    ldh [$FFF0], a                                ; $40FF: $E0 $F0
    and b                                         ; $4101: $A0
    ldh [rLCDC], a                                ; $4102: $E0 $40
    ret nz                                        ; $4104: $C0

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
    ld h, d                                       ; $4120: $62
    inc a                                         ; $4121: $3C
    rst RST_38                                    ; $4122: $FF
    ld a, [hl]                                    ; $4123: $7E
    rst RST_38                                    ; $4124: $FF
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
    nop                                           ; $413A: $00
    nop                                           ; $413B: $00
    nop                                           ; $413C: $00
    nop                                           ; $413D: $00
    nop                                           ; $413E: $00
    nop                                           ; $413F: $00
    rst RST_38                                    ; $4140: $FF
    ld a, a                                       ; $4141: $7F
    rst RST_38                                    ; $4142: $FF
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
    nop                                           ; $415C: $00
    nop                                           ; $415D: $00
    nop                                           ; $415E: $00
    nop                                           ; $415F: $00
    add b                                         ; $4160: $80
    nop                                           ; $4161: $00
    add b                                         ; $4162: $80
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
    nop                                           ; $4178: $00
    nop                                           ; $4179: $00
    nop                                           ; $417A: $00
    nop                                           ; $417B: $00
    nop                                           ; $417C: $00
    nop                                           ; $417D: $00
    nop                                           ; $417E: $00
    nop                                           ; $417F: $00
    ccf                                           ; $4180: $3F
    ld bc, $3D6A                                  ; $4181: $01 $6A $3D
    ld a, [hl]                                    ; $4184: $7E
    inc bc                                        ; $4185: $03
    add [hl]                                      ; $4186: $86

jr_00E_4187:
    ld bc, $86FB                                  ; $4187: $01 $FB $86
    xor [hl]                                      ; $418A: $AE
    ld a, c                                       ; $418B: $79
    ld a, h                                       ; $418C: $7C
    inc bc                                        ; $418D: $03
    inc b                                         ; $418E: $04
    inc bc                                        ; $418F: $03
    inc b                                         ; $4190: $04
    inc bc                                        ; $4191: $03
    ld [bc], a                                    ; $4192: $02
    ld bc, $0001                                  ; $4193: $01 $01 $00
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
    adc e                                         ; $41A0: $8B
    rlca                                          ; $41A1: $07
    sub a                                         ; $41A2: $97
    ld a, [bc]                                    ; $41A3: $0A
    adc d                                         ; $41A4: $8A
    dec b                                         ; $41A5: $05
    ld e, a                                       ; $41A6: $5F
    add d                                         ; $41A7: $82
    rst RST_38                                    ; $41A8: $FF
    ld [$B27F], sp                                ; $41A9: $08 $7F $B2
    ccf                                           ; $41AC: $3F
    ret nc                                        ; $41AD: $D0

    jr c, jr_00E_4187                             ; $41AE: $38 $D7

    jr c, @-$27                                   ; $41B0: $38 $D7

    ld e, a                                       ; $41B2: $5F
    and b                                         ; $41B3: $A0
    adc a                                         ; $41B4: $8F
    ld [hl], a                                    ; $41B5: $77
    ld e, [hl]                                    ; $41B6: $5E
    cpl                                           ; $41B7: $2F
    ccf                                           ; $41B8: $3F
    rrca                                          ; $41B9: $0F
    rra                                           ; $41BA: $1F
    ld c, $1F                                     ; $41BB: $0E $1F
    ld bc, $060F                                  ; $41BD: $01 $0F $06
    ld [hl], $C0                                  ; $41C0: $36 $C0
    db $DB                                        ; $41C2: $DB
    inc h                                         ; $41C3: $24
    ld l, c                                       ; $41C4: $69
    add a                                         ; $41C5: $87
    rst RST_38                                    ; $41C6: $FF
    ld b, b                                       ; $41C7: $40
    ld sp, hl                                     ; $41C8: $F9
    or [hl]                                       ; $41C9: $B6
    di                                            ; $41CA: $F3
    xor l                                         ; $41CB: $AD
    rst RST_38                                    ; $41CC: $FF
    inc bc                                        ; $41CD: $03
    rst RST_38                                    ; $41CE: $FF
    ld h, e                                       ; $41CF: $63
    rst RST_38                                    ; $41D0: $FF
    dec bc                                        ; $41D1: $0B
    rst RST_38                                    ; $41D2: $FF
    ld a, b                                       ; $41D3: $78
    sbc b                                         ; $41D4: $98
    ldh a, [$FF78]                                ; $41D5: $F0 $78
    ldh [$FFF4], a                                ; $41D7: $E0 $F4
    adc b                                         ; $41D9: $88
    or $1C                                        ; $41DA: $F6 $1C
    ei                                            ; $41DC: $FB
    ld l, [hl]                                    ; $41DD: $6E
    ei                                            ; $41DE: $FB
    ld e, [hl]                                    ; $41DF: $5E
    inc c                                         ; $41E0: $0C
    nop                                           ; $41E1: $00
    ret nz                                        ; $41E2: $C0

    nop                                           ; $41E3: $00
    ld h, b                                       ; $41E4: $60

jr_00E_41E5:
    add b                                         ; $41E5: $80
    ldh a, [rNR41]                                ; $41E6: $F0 $20
    jr c, @-$3E                                   ; $41E8: $38 $C0

    cp b                                          ; $41EA: $B8
    ldh a, [$FFB0]                                ; $41EB: $F0 $B0
    ret nz                                        ; $41ED: $C0

    ld hl, sp-$10                                 ; $41EE: $F8 $F0
    ldh a, [rP1]                                  ; $41F0: $F0 $00
    sub b                                         ; $41F2: $90
    ld h, b                                       ; $41F3: $60
    ld e, [hl]                                    ; $41F4: $5E

jr_00E_41F5:
    jr nz, @+$01                                  ; $41F5: $20 $FF

    inc e                                         ; $41F7: $1C
    ei                                            ; $41F8: $FB
    ld a, h                                       ; $41F9: $7C
    rst RST_20                                    ; $41FA: $E7
    ld a, d                                       ; $41FB: $7A
    adc $F4                                       ; $41FC: $CE $F4
    db $FC                                        ; $41FE: $FC
    ldh [rP1], a                                  ; $41FF: $E0 $00
    nop                                           ; $4201: $00
    nop                                           ; $4202: $00
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
    rra                                           ; $420E: $1F
    nop                                           ; $420F: $00
    dec [hl]                                      ; $4210: $35
    rra                                           ; $4211: $1F
    ld e, a                                       ; $4212: $5F
    jr nz, jr_00E_41F5                            ; $4213: $20 $E0

    ld b, b                                       ; $4215: $40
    rst RST_00                                    ; $4216: $C7
    nop                                           ; $4217: $00
    dec c                                         ; $4218: $0D
    rlca                                          ; $4219: $07
    rrca                                          ; $421A: $0F
    nop                                           ; $421B: $00
    jr nc, jr_00E_421E                            ; $421C: $30 $00

jr_00E_421E:
    ccf                                           ; $421E: $3F
    stop                                          ; $421F: $10 $00
    nop                                           ; $4221: $00
    nop                                           ; $4222: $00
    nop                                           ; $4223: $00
    nop                                           ; $4224: $00
    nop                                           ; $4225: $00
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
    add b                                         ; $423A: $80
    nop                                           ; $423B: $00
    ld b, b                                       ; $423C: $40
    add b                                         ; $423D: $80
    pop hl                                        ; $423E: $E1
    ld b, b                                       ; $423F: $40
    nop                                           ; $4240: $00
    nop                                           ; $4241: $00
    nop                                           ; $4242: $00
    nop                                           ; $4243: $00
    nop                                           ; $4244: $00
    nop                                           ; $4245: $00
    nop                                           ; $4246: $00
    nop                                           ; $4247: $00
    nop                                           ; $4248: $00
    nop                                           ; $4249: $00
    nop                                           ; $424A: $00
    nop                                           ; $424B: $00
    nop                                           ; $424C: $00
    nop                                           ; $424D: $00
    nop                                           ; $424E: $00
    nop                                           ; $424F: $00
    nop                                           ; $4250: $00
    nop                                           ; $4251: $00
    nop                                           ; $4252: $00
    nop                                           ; $4253: $00
    nop                                           ; $4254: $00
    nop                                           ; $4255: $00
    nop                                           ; $4256: $00
    nop                                           ; $4257: $00
    jr nz, jr_00E_425A                            ; $4258: $20 $00

jr_00E_425A:
    ld d, b                                       ; $425A: $50
    jr nz, jr_00E_41E5                            ; $425B: $20 $88

    ld [hl], b                                    ; $425D: $70
    inc h                                         ; $425E: $24
    ld hl, sp+$00                                 ; $425F: $F8 $00
    nop                                           ; $4261: $00
    nop                                           ; $4262: $00
    nop                                           ; $4263: $00
    nop                                           ; $4264: $00
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
    ld a, $00                                     ; $427A: $3E $00
    ld d, l                                       ; $427C: $55
    ld a, $FF                                     ; $427D: $3E $FF
    ld b, c                                       ; $427F: $41
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
    nop                                           ; $4298: $00
    nop                                           ; $4299: $00
    nop                                           ; $429A: $00
    nop                                           ; $429B: $00
    nop                                           ; $429C: $00
    nop                                           ; $429D: $00
    add b                                         ; $429E: $80
    nop                                           ; $429F: $00
    ld bc, $0100                                  ; $42A0: $01 $00 $01
    nop                                           ; $42A3: $00
    ld bc, $0100                                  ; $42A4: $01 $00 $01
    nop                                           ; $42A7: $00
    inc bc                                        ; $42A8: $03
    ld bc, $0307                                  ; $42A9: $01 $07 $03
    ld b, $03                                     ; $42AC: $06 $03
    rlca                                          ; $42AE: $07
    inc bc                                        ; $42AF: $03
    ld b, $03                                     ; $42B0: $06 $03
    rlca                                          ; $42B2: $07
    inc bc                                        ; $42B3: $03
    rrca                                          ; $42B4: $0F
    ld [bc], a                                    ; $42B5: $02
    ld a, [de]                                    ; $42B6: $1A
    inc c                                         ; $42B7: $0C

jr_00E_42B8:
    ld [hl], $1C                                  ; $42B8: $36 $1C
    ld h, d                                       ; $42BA: $62
    inc a                                         ; $42BB: $3C
    rst RST_38                                    ; $42BC: $FF
    ld a, [hl]                                    ; $42BD: $7E
    rst RST_38                                    ; $42BE: $FF
    nop                                           ; $42BF: $00
    rst RST_18                                    ; $42C0: $DF
    jr z, jr_00E_42E0                             ; $42C1: $28 $1D

    ld [$E619], a                                 ; $42C3: $EA $19 $E6
    xor e                                         ; $42C6: $AB
    ld b, l                                       ; $42C7: $45
    rst RST_08                                    ; $42C8: $CF
    add e                                         ; $42C9: $83
    adc $87                                       ; $42CA: $CE $87
    ld a, a                                       ; $42CC: $7F
    rst RST_08                                    ; $42CD: $CF
    db $FD                                        ; $42CE: $FD
    adc $DF                                       ; $42CF: $CE $DF
    adc [hl]                                      ; $42D1: $8E
    adc [hl]                                      ; $42D2: $8E

jr_00E_42D3:
    inc b                                         ; $42D3: $04
    rrca                                          ; $42D4: $0F
    inc b                                         ; $42D5: $04
    rrca                                          ; $42D6: $0F
    dec b                                         ; $42D7: $05
    rrca                                          ; $42D8: $0F
    inc bc                                        ; $42D9: $03
    rrca                                          ; $42DA: $0F
    rlca                                          ; $42DB: $07
    rrca                                          ; $42DC: $0F
    nop                                           ; $42DD: $00
    nop                                           ; $42DE: $00
    nop                                           ; $42DF: $00

jr_00E_42E0:
    db $FC                                        ; $42E0: $FC
    ret nc                                        ; $42E1: $D0

    ldh a, [rP1]                                  ; $42E2: $F0 $00
    add b                                         ; $42E4: $80
    nop                                           ; $42E5: $00
    ret nz                                        ; $42E6: $C0

    add b                                         ; $42E7: $80
    ret nz                                        ; $42E8: $C0

    add b                                         ; $42E9: $80
    ld b, b                                       ; $42EA: $40
    add b                                         ; $42EB: $80
    add b                                         ; $42EC: $80
    nop                                           ; $42ED: $00
    nop                                           ; $42EE: $00
    nop                                           ; $42EF: $00
    nop                                           ; $42F0: $00
    nop                                           ; $42F1: $00
    add b                                         ; $42F2: $80
    nop                                           ; $42F3: $00
    ld b, b                                       ; $42F4: $40
    add b                                         ; $42F5: $80
    jr nz, jr_00E_42B8                            ; $42F6: $20 $C0

    ret nc                                        ; $42F8: $D0

    ldh [$FFF8], a                                ; $42F9: $E0 $F8
    ldh a, [$FFF8]                                ; $42FB: $F0 $F8
    nop                                           ; $42FD: $00
    nop                                           ; $42FE: $00
    nop                                           ; $42FF: $00
    ld bc, $0200                                  ; $4300: $01 $00 $02
    ld bc, $020F                                  ; $4303: $01 $0F $02
    ld a, [de]                                    ; $4306: $1A
    inc c                                         ; $4307: $0C
    inc e                                         ; $4308: $1C
    nop                                           ; $4309: $00
    nop                                           ; $430A: $00
    nop                                           ; $430B: $00
    rlca                                          ; $430C: $07
    nop                                           ; $430D: $00
    ld b, $03                                     ; $430E: $06 $03
    inc bc                                        ; $4310: $03
    nop                                           ; $4311: $00
    nop                                           ; $4312: $00
    nop                                           ; $4313: $00
    nop                                           ; $4314: $00
    nop                                           ; $4315: $00
    ld sp, $3900                                  ; $4316: $31 $00 $39
    db $10                                        ; $4319: $10
    add hl, hl                                    ; $431A: $29
    db $10                                        ; $431B: $10
    ccf                                           ; $431C: $3F
    ld de, $0E15                                  ; $431D: $11 $15 $0E
    add b                                         ; $4320: $80
    nop                                           ; $4321: $00
    ret nz                                        ; $4322: $C0

    add b                                         ; $4323: $80

jr_00E_4324:
    and b                                         ; $4324: $A0
    ld b, b                                       ; $4325: $40
    ldh [rLCDC], a                                ; $4326: $E0 $40
    ldh [rLCDC], a                                ; $4328: $E0 $40
    ldh a, [$FF60]                                ; $432A: $F0 $60
    pop de                                        ; $432C: $D1
    ldh [$FF91], a                                ; $432D: $E0 $91
    ld h, b                                       ; $432F: $60

jr_00E_4330:
    jp nc, $D1E1                                  ; $4330: $D2 $E1 $D1

    jr nz, jr_00E_4330                            ; $4333: $20 $FB

    ld b, b                                       ; $4335: $40
    ld c, a                                       ; $4336: $4F
    or c                                          ; $4337: $B1
    add a                                         ; $4338: $87
    ld a, d                                       ; $4339: $7A
    add a                                         ; $433A: $87
    ld a, d                                       ; $433B: $7A

Jump_00E_433C:
    add a                                         ; $433C: $87
    ld a, d                                       ; $433D: $7A
    ld c, e                                       ; $433E: $4B
    inc [hl]                                      ; $433F: $34
    nop                                           ; $4340: $00
    nop                                           ; $4341: $00
    nop                                           ; $4342: $00
    nop                                           ; $4343: $00
    nop                                           ; $4344: $00
    nop                                           ; $4345: $00
    jr nz, jr_00E_4348                            ; $4346: $20 $00

jr_00E_4348:
    ld d, b                                       ; $4348: $50
    jr nz, jr_00E_42D3                            ; $4349: $20 $88

    ld [hl], b                                    ; $434B: $70
    dec h                                         ; $434C: $25
    ld hl, sp+$67                                 ; $434D: $F8 $67
    ld hl, sp-$05                                 ; $434F: $F8 $FB
    ld b, h                                       ; $4351: $44
    ld c, l                                       ; $4352: $4D
    or b                                          ; $4353: $B0
    rst RST_38                                    ; $4354: $FF
    ld c, b                                       ; $4355: $48
    rst RST_38                                    ; $4356: $FF
    ld d, $FE                                     ; $4357: $16 $FE
    ld d, l                                       ; $4359: $55
    rst RST_38                                    ; $435A: $FF
    nop                                           ; $435B: $00
    rra                                           ; $435C: $1F
    pop hl                                        ; $435D: $E1
    rst RST_38                                    ; $435E: $FF
    rrca                                          ; $435F: $0F
    nop                                           ; $4360: $00
    nop                                           ; $4361: $00
    nop                                           ; $4362: $00
    nop                                           ; $4363: $00
    jr nc, jr_00E_4366                            ; $4364: $30 $00

jr_00E_4366:
    ld l, [hl]                                    ; $4366: $6E
    jr nc, jr_00E_4324                            ; $4367: $30 $BB

    ld c, [hl]                                    ; $4369: $4E
    xor a                                         ; $436A: $AF
    ld b, b                                       ; $436B: $40
    ld h, b                                       ; $436C: $60
    add b                                         ; $436D: $80
    ld a, h                                       ; $436E: $7C
    ldh [$FF2C], a                                ; $436F: $E0 $2C
    ld hl, sp-$02                                 ; $4371: $F8 $FE
    inc h                                         ; $4373: $24
    ld h, $D8                                     ; $4374: $26 $D8
    ld [hl], a                                    ; $4376: $77
    cp [hl]                                       ; $4377: $BE
    rst RST_30                                    ; $4378: $F7
    ld a, b                                       ; $4379: $78
    rst RST_38                                    ; $437A: $FF
    ld a, [hl]                                    ; $437B: $7E
    cp $60                                        ; $437C: $FE $60
    ldh a, [c]                                    ; $437E: $F2
    inc c                                         ; $437F: $0C
    db $E3                                        ; $4380: $E3
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
    nop                                           ; $4396: $00
    nop                                           ; $4397: $00
    nop                                           ; $4398: $00
    nop                                           ; $4399: $00
    nop                                           ; $439A: $00
    nop                                           ; $439B: $00
    nop                                           ; $439C: $00
    nop                                           ; $439D: $00
    nop                                           ; $439E: $00
    nop                                           ; $439F: $00
    rra                                           ; $43A0: $1F
    rst RST_28                                    ; $43A1: $EF
    cp h                                          ; $43A2: $BC
    ld e, a                                       ; $43A3: $5F
    ld a, a                                       ; $43A4: $7F
    rra                                           ; $43A5: $1F
    ccf                                           ; $43A6: $3F
    inc e                                         ; $43A7: $1C
    ccf                                           ; $43A8: $3F
    ld [bc], a                                    ; $43A9: $02
    rra                                           ; $43AA: $1F
    inc c                                         ; $43AB: $0C
    dec e                                         ; $43AC: $1D
    ld [bc], a                                    ; $43AD: $02
    add hl, bc                                    ; $43AE: $09
    ld b, $11                                     ; $43AF: $06 $11
    ld c, $11                                     ; $43B1: $0E $11
    ld c, $1A                                     ; $43B3: $0E $1A
    inc b                                         ; $43B5: $04
    inc a                                         ; $43B6: $3C
    jr jr_00E_4435                                ; $43B7: $18 $7C

    jr c, jr_00E_4422                             ; $43B9: $38 $67

    inc a                                         ; $43BB: $3C
    ld a, a                                       ; $43BC: $7F

jr_00E_43BD:
    inc a                                         ; $43BD: $3C
    ld l, l                                       ; $43BE: $6D
    jr c, jr_00E_43F1                             ; $43BF: $38 $30

    ldh [$FFE1], a                                ; $43C1: $E0 $E1
    ret nz                                        ; $43C3: $C0

    ld sp, hl                                     ; $43C4: $F9
    jr nz, jr_00E_4434                            ; $43C5: $20 $6D

    sbc b                                         ; $43C7: $98
    rst RST_28                                    ; $43C8: $EF
    dec a                                         ; $43C9: $3D
    rst RST_30                                    ; $43CA: $F7
    db $DD                                        ; $43CB: $DD
    rst RST_30                                    ; $43CC: $F7
    cp l                                          ; $43CD: $BD
    rst RST_38                                    ; $43CE: $FF
    adc b                                         ; $43CF: $88
    call c, $98A0                                 ; $43D0: $DC $A0 $98
    ld h, b                                       ; $43D3: $60
    cp h                                          ; $43D4: $BC
    ld e, b                                       ; $43D5: $58
    db $FC                                        ; $43D6: $FC
    jr c, jr_00E_43BD                             ; $43D7: $38 $E4

    ld a, b                                       ; $43D9: $78
    ld hl, sp-$10                                 ; $43DA: $F8 $F0
    ret nc                                        ; $43DC: $D0

    ldh [$FFF0], a                                ; $43DD: $E0 $F0
    ldh [$FFBC], a                                ; $43DF: $E0 $BC
    ld b, b                                       ; $43E1: $40
    cp $38                                        ; $43E2: $FE $38
    or $F8                                        ; $43E4: $F6 $F8
    adc $F4                                       ; $43E6: $CE $F4
    sbc h                                         ; $43E8: $9C
    add sp, -$48                                  ; $43E9: $E8 $B8
    ret nz                                        ; $43EB: $C0

    ret nz                                        ; $43EC: $C0

    add b                                         ; $43ED: $80
    add b                                         ; $43EE: $80
    nop                                           ; $43EF: $00
    nop                                           ; $43F0: $00

jr_00E_43F1:
    nop                                           ; $43F1: $00
    nop                                           ; $43F2: $00
    nop                                           ; $43F3: $00
    nop                                           ; $43F4: $00
    nop                                           ; $43F5: $00
    nop                                           ; $43F6: $00
    nop                                           ; $43F7: $00
    nop                                           ; $43F8: $00
    nop                                           ; $43F9: $00
    nop                                           ; $43FA: $00
    nop                                           ; $43FB: $00
    nop                                           ; $43FC: $00
    nop                                           ; $43FD: $00
    nop                                           ; $43FE: $00
    nop                                           ; $43FF: $00
    rlca                                          ; $4400: $07
    inc bc                                        ; $4401: $03
    rrca                                          ; $4402: $0F
    ld [bc], a                                    ; $4403: $02
    ld a, [de]                                    ; $4404: $1A
    inc c                                         ; $4405: $0C

jr_00E_4406:
    ld [hl], $1C                                  ; $4406: $36 $1C
    ld h, d                                       ; $4408: $62
    inc a                                         ; $4409: $3C
    rst RST_38                                    ; $440A: $FF
    ld a, [hl]                                    ; $440B: $7E
    rst RST_38                                    ; $440C: $FF
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
    adc [hl]                                      ; $4420: $8E
    inc b                                         ; $4421: $04

jr_00E_4422:
    rrca                                          ; $4422: $0F
    inc b                                         ; $4423: $04
    rrca                                          ; $4424: $0F
    dec b                                         ; $4425: $05
    rrca                                          ; $4426: $0F
    inc bc                                        ; $4427: $03
    rrca                                          ; $4428: $0F
    rlca                                          ; $4429: $07
    rrca                                          ; $442A: $0F
    nop                                           ; $442B: $00
    nop                                           ; $442C: $00
    nop                                           ; $442D: $00
    nop                                           ; $442E: $00
    nop                                           ; $442F: $00
    nop                                           ; $4430: $00
    nop                                           ; $4431: $00
    nop                                           ; $4432: $00
    nop                                           ; $4433: $00

jr_00E_4434:
    nop                                           ; $4434: $00

jr_00E_4435:
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
    add b                                         ; $4440: $80
    nop                                           ; $4441: $00
    ld b, b                                       ; $4442: $40
    add b                                         ; $4443: $80
    jr nz, jr_00E_4406                            ; $4444: $20 $C0

    ret nc                                        ; $4446: $D0

    ldh [$FFF8], a                                ; $4447: $E0 $F8
    ldh a, [$FFF8]                                ; $4449: $F0 $F8
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
    nop                                           ; $445A: $00
    nop                                           ; $445B: $00
    nop                                           ; $445C: $00
    nop                                           ; $445D: $00
    nop                                           ; $445E: $00
    nop                                           ; $445F: $00
    rst RST_10                                    ; $4460: $D7
    dec sp                                        ; $4461: $3B
    inc a                                         ; $4462: $3C
    rlca                                          ; $4463: $07
    ld l, [hl]                                    ; $4464: $6E
    inc sp                                        ; $4465: $33
    cp h                                          ; $4466: $BC

jr_00E_4467:
    ld c, a                                       ; $4467: $4F
    rst RST_08                                    ; $4468: $CF

jr_00E_4469:
    add [hl]                                      ; $4469: $86
    ld b, [hl]                                    ; $446A: $46
    add c                                         ; $446B: $81
    call nz, $C483                                ; $446C: $C4 $83 $C4
    inc bc                                        ; $446F: $03
    inc b                                         ; $4470: $04
    inc bc                                        ; $4471: $03
    ld [bc], a                                    ; $4472: $02
    ld bc, $0001                                  ; $4473: $01 $01 $00
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
    adc e                                         ; $4480: $8B
    rlca                                          ; $4481: $07
    sub a                                         ; $4482: $97
    ld a, [bc]                                    ; $4483: $0A
    adc d                                         ; $4484: $8A
    dec b                                         ; $4485: $05
    ld e, a                                       ; $4486: $5F
    add d                                         ; $4487: $82
    rst RST_38                                    ; $4488: $FF
    ld [$B27F], sp                                ; $4489: $08 $7F $B2
    ccf                                           ; $448C: $3F
    ret nc                                        ; $448D: $D0

    jr c, jr_00E_4467                             ; $448E: $38 $D7

    jr c, jr_00E_4469                             ; $4490: $38 $D7

    ld e, a                                       ; $4492: $5F
    and b                                         ; $4493: $A0
    adc a                                         ; $4494: $8F
    ld [hl], a                                    ; $4495: $77
    ld e, [hl]                                    ; $4496: $5E
    cpl                                           ; $4497: $2F
    ccf                                           ; $4498: $3F
    rrca                                          ; $4499: $0F
    rra                                           ; $449A: $1F
    ld c, $1F                                     ; $449B: $0E $1F
    ld bc, $060F                                  ; $449D: $01 $0F $06
    inc [hl]                                      ; $44A0: $34
    jp Jump_000_27D8                              ; $44A1: $C3 $D8 $27


    ld l, c                                       ; $44A4: $69
    add a                                         ; $44A5: $87
    rst RST_38                                    ; $44A6: $FF
    ld b, c                                       ; $44A7: $41
    ld sp, hl                                     ; $44A8: $F9
    or [hl]                                       ; $44A9: $B6
    di                                            ; $44AA: $F3
    xor l                                         ; $44AB: $AD
    rst RST_38                                    ; $44AC: $FF
    inc bc                                        ; $44AD: $03
    rst RST_38                                    ; $44AE: $FF
    ld h, e                                       ; $44AF: $63
    rst RST_38                                    ; $44B0: $FF
    dec bc                                        ; $44B1: $0B
    rst RST_38                                    ; $44B2: $FF
    ld a, b                                       ; $44B3: $78
    sbc b                                         ; $44B4: $98
    ldh a, [$FF78]                                ; $44B5: $F0 $78
    ldh [$FFF4], a                                ; $44B7: $E0 $F4
    adc b                                         ; $44B9: $88
    or $1C                                        ; $44BA: $F6 $1C
    ei                                            ; $44BC: $FB
    ld l, [hl]                                    ; $44BD: $6E
    ei                                            ; $44BE: $FB
    ld e, [hl]                                    ; $44BF: $5E
    db $EC                                        ; $44C0: $EC
    sbc b                                         ; $44C1: $98
    cp b                                          ; $44C2: $B8
    ldh [$FFE0], a                                ; $44C3: $E0 $E0
    add b                                         ; $44C5: $80
    ret nc                                        ; $44C6: $D0

    jr nz, jr_00E_4501                            ; $44C7: $20 $38

    ret nz                                        ; $44C9: $C0

    cp h                                          ; $44CA: $BC
    ldh a, [$FFBC]                                ; $44CB: $F0 $BC
    ret z                                         ; $44CD: $C8

    ld hl, sp-$10                                 ; $44CE: $F8 $F0
    ldh a, [rP1]                                  ; $44D0: $F0 $00
    sub b                                         ; $44D2: $90
    ld h, b                                       ; $44D3: $60
    ld e, [hl]                                    ; $44D4: $5E
    jr nz, @+$01                                  ; $44D5: $20 $FF

    inc e                                         ; $44D7: $1C
    ei                                            ; $44D8: $FB
    ld a, h                                       ; $44D9: $7C
    rst RST_20                                    ; $44DA: $E7
    ld a, d                                       ; $44DB: $7A
    adc $F4                                       ; $44DC: $CE $F4
    db $FC                                        ; $44DE: $FC
    ldh [rTMA], a                                 ; $44DF: $E0 $06
    nop                                           ; $44E1: $00
    ld c, $04                                     ; $44E2: $0E $04
    inc d                                         ; $44E4: $14
    ld [$1038], sp                                ; $44E5: $08 $38 $10
    inc l                                         ; $44E8: $2C
    jr jr_00E_4506                                ; $44E9: $18 $1B

    inc b                                         ; $44EB: $04
    rst RST_30                                    ; $44EC: $F7
    inc bc                                        ; $44ED: $03
    rst RST_18                                    ; $44EE: $DF
    ld [hl], c                                    ; $44EF: $71
    ld [hl], l                                    ; $44F0: $75
    ld c, $0F                                     ; $44F1: $0E $0F
    ld bc, $0C1B                                  ; $44F3: $01 $1B $0C
    cpl                                           ; $44F6: $2F
    inc de                                        ; $44F7: $13
    ld [hl], e                                    ; $44F8: $73
    ld hl, $2051                                  ; $44F9: $21 $51 $20
    ld [hl], c                                    ; $44FC: $71
    jr nz, jr_00E_4530                            ; $44FD: $20 $31

    nop                                           ; $44FF: $00
    nop                                           ; $4500: $00

jr_00E_4501:
    nop                                           ; $4501: $00
    nop                                           ; $4502: $00
    nop                                           ; $4503: $00
    nop                                           ; $4504: $00
    nop                                           ; $4505: $00

jr_00E_4506:
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
    add c                                         ; $451C: $81
    nop                                           ; $451D: $00
    jp nz, $0081                                  ; $451E: $C2 $81 $00

    nop                                           ; $4521: $00
    nop                                           ; $4522: $00
    nop                                           ; $4523: $00
    nop                                           ; $4524: $00
    nop                                           ; $4525: $00
    nop                                           ; $4526: $00
    nop                                           ; $4527: $00
    nop                                           ; $4528: $00
    nop                                           ; $4529: $00
    nop                                           ; $452A: $00
    nop                                           ; $452B: $00
    nop                                           ; $452C: $00
    nop                                           ; $452D: $00
    nop                                           ; $452E: $00
    nop                                           ; $452F: $00

jr_00E_4530:
    nop                                           ; $4530: $00
    nop                                           ; $4531: $00
    nop                                           ; $4532: $00
    nop                                           ; $4533: $00
    nop                                           ; $4534: $00
    nop                                           ; $4535: $00
    nop                                           ; $4536: $00
    nop                                           ; $4537: $00
    ld b, b                                       ; $4538: $40
    nop                                           ; $4539: $00
    and b                                         ; $453A: $A0
    ld b, b                                       ; $453B: $40
    db $10                                        ; $453C: $10
    ldh [rOBP0], a                                ; $453D: $E0 $48
    ldh a, [rP1]                                  ; $453F: $F0 $00
    nop                                           ; $4541: $00
    nop                                           ; $4542: $00
    nop                                           ; $4543: $00
    nop                                           ; $4544: $00
    nop                                           ; $4545: $00
    nop                                           ; $4546: $00
    nop                                           ; $4547: $00
    nop                                           ; $4548: $00
    nop                                           ; $4549: $00
    nop                                           ; $454A: $00
    nop                                           ; $454B: $00
    nop                                           ; $454C: $00
    nop                                           ; $454D: $00
    nop                                           ; $454E: $00
    nop                                           ; $454F: $00
    nop                                           ; $4550: $00
    nop                                           ; $4551: $00
    nop                                           ; $4552: $00
    nop                                           ; $4553: $00
    jr nc, jr_00E_4556                            ; $4554: $30 $00

jr_00E_4556:
    jr c, jr_00E_4568                             ; $4556: $38 $10

    inc d                                         ; $4558: $14
    ld [$081C], sp                                ; $4559: $08 $1C $08
    ld l, b                                       ; $455C: $68
    db $10                                        ; $455D: $10
    rst RST_30                                    ; $455E: $F7
    ld h, b                                       ; $455F: $60
    rst RST_20                                    ; $4560: $E7
    rra                                           ; $4561: $1F
    rst RST_38                                    ; $4562: $FF
    ld a, a                                       ; $4563: $7F
    rst RST_38                                    ; $4564: $FF
    db $FC                                        ; $4565: $FC
    db $FD                                        ; $4566: $FD
    nop                                           ; $4567: $00

jr_00E_4568:
    rrca                                          ; $4568: $0F
    inc b                                         ; $4569: $04
    rrca                                          ; $456A: $0F
    rlca                                          ; $456B: $07
    inc b                                         ; $456C: $04
    inc bc                                        ; $456D: $03
    rlca                                          ; $456E: $07
    inc bc                                        ; $456F: $03
    ld b, $03                                     ; $4570: $06 $03
    inc bc                                        ; $4572: $03
    ld bc, $010B                                  ; $4573: $01 $0B $01
    rla                                           ; $4576: $17
    add hl, bc                                    ; $4577: $09
    daa                                           ; $4578: $27
    dec e                                         ; $4579: $1D
    ld e, a                                       ; $457A: $5F
    ld a, $FF                                     ; $457B: $3E $FF
    ld a, a                                       ; $457D: $7F
    rst RST_38                                    ; $457E: $FF
    nop                                           ; $457F: $00
    db $FC                                        ; $4580: $FC
    ld [$708C], sp                                ; $4581: $08 $8C $70
    ld a, [bc]                                    ; $4584: $0A
    db $F4                                        ; $4585: $F4
    ld de, $37EE                                  ; $4586: $11 $EE $37
    ret                                           ; $4589: $C9


    rst RST_38                                    ; $458A: $FF
    rlca                                          ; $458B: $07
    db $FD                                        ; $458C: $FD
    rst RST_08                                    ; $458D: $CF
    rst RST_28                                    ; $458E: $EF
    pop bc                                        ; $458F: $C1
    pop bc                                        ; $4590: $C1
    add b                                         ; $4591: $80
    ret nz                                        ; $4592: $C0

    add b                                         ; $4593: $80
    add b                                         ; $4594: $80
    nop                                           ; $4595: $00
    add b                                         ; $4596: $80
    nop                                           ; $4597: $00
    add c                                         ; $4598: $81
    nop                                           ; $4599: $00
    inc bc                                        ; $459A: $03
    ld bc, $0083                                  ; $459B: $01 $83 $00
    add b                                         ; $459E: $80
    nop                                           ; $459F: $00
    rrca                                          ; $45A0: $0F
    inc bc                                        ; $45A1: $03
    inc bc                                        ; $45A2: $03
    ld bc, $0001                                  ; $45A3: $01 $01 $00
    add b                                         ; $45A6: $80
    nop                                           ; $45A7: $00
    ret nz                                        ; $45A8: $C0

    add b                                         ; $45A9: $80
    ldh [$FFC0], a                                ; $45AA: $E0 $C0
    ldh [$FFC0], a                                ; $45AC: $E0 $C0
    ld [hl], b                                    ; $45AE: $70
    ldh [$FFF0], a                                ; $45AF: $E0 $F0

jr_00E_45B1:
    ld h, b                                       ; $45B1: $60
    ld a, b                                       ; $45B2: $78
    jr nc, jr_00E_45B1                            ; $45B3: $30 $FC

    ld b, b                                       ; $45B5: $40
    cp $7C                                        ; $45B6: $FE $7C
    cp $F8                                        ; $45B8: $FE $F8
    ld hl, sp-$20                                 ; $45BA: $F8 $E0
    ldh [rP1], a                                  ; $45BC: $E0 $00
    nop                                           ; $45BE: $00
    nop                                           ; $45BF: $00
    nop                                           ; $45C0: $00
    nop                                           ; $45C1: $00
    nop                                           ; $45C2: $00
    nop                                           ; $45C3: $00
    nop                                           ; $45C4: $00
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
    jr nc, jr_00E_45D2                            ; $45D0: $30 $00

jr_00E_45D2:
    ld l, b                                       ; $45D2: $68
    db $10                                        ; $45D3: $10
    cp a                                          ; $45D4: $BF

jr_00E_45D5:
    ld e, b                                       ; $45D5: $58
    rst RST_38                                    ; $45D6: $FF
    dec sp                                        ; $45D7: $3B
    cp a                                          ; $45D8: $BF
    ld d, a                                       ; $45D9: $57
    rst RST_38                                    ; $45DA: $FF
    jr nc, jr_00E_45D5                            ; $45DB: $30 $F8

    ld d, b                                       ; $45DD: $50

jr_00E_45DE:
    ld [hl], b                                    ; $45DE: $70
    nop                                           ; $45DF: $00
    ld [hl], d                                    ; $45E0: $72
    ld bc, $316E                                  ; $45E1: $01 $6E $31
    ld a, $0B                                     ; $45E4: $3E $0B
    ld a, a                                       ; $45E6: $7F
    ld b, $6E                                     ; $45E7: $06 $6E
    add hl, sp                                    ; $45E9: $39
    ccf                                           ; $45EA: $3F
    ld [bc], a                                    ; $45EB: $02
    ld l, a                                       ; $45EC: $6F
    inc [hl]                                      ; $45ED: $34
    ld a, a                                       ; $45EE: $7F
    ld [bc], a                                    ; $45EF: $02
    rra                                           ; $45F0: $1F
    nop                                           ; $45F1: $00
    ld a, $0D                                     ; $45F2: $3E $0D
    inc l                                         ; $45F4: $2C
    inc de                                        ; $45F5: $13
    inc l                                         ; $45F6: $2C
    inc de                                        ; $45F7: $13
    ld a, $0D                                     ; $45F8: $3E $0D
    rra                                           ; $45FA: $1F
    nop                                           ; $45FB: $00
    jr c, jr_00E_4615                             ; $45FC: $38 $17

    rst RST_18                                    ; $45FE: $DF
    jr c, jr_00E_4621                             ; $45FF: $38 $20

    ret nz                                        ; $4601: $C0

    db $10                                        ; $4602: $10
    ldh [rNR22], a                                ; $4603: $E0 $17
    ldh [$FF8D], a                                ; $4605: $E0 $8D
    ld [hl], e                                    ; $4607: $73
    ld a, h                                       ; $4608: $7C
    add e                                         ; $4609: $83
    db $FD                                        ; $460A: $FD
    ld d, e                                       ; $460B: $53
    ei                                            ; $460C: $FB
    or h                                          ; $460D: $B4
    db $FC                                        ; $460E: $FC
    or e                                          ; $460F: $B3
    ld hl, sp+$07                                 ; $4610: $F8 $07
    ld a, b                                       ; $4612: $78
    or a                                          ; $4613: $B7
    ld a, b                                       ; $4614: $78

jr_00E_4615:
    or a                                          ; $4615: $B7
    ld a, h                                       ; $4616: $7C
    cp e                                          ; $4617: $BB
    ld a, a                                       ; $4618: $7F
    cp b                                          ; $4619: $B8

jr_00E_461A:
    ld hl, sp+$00                                 ; $461A: $F8 $00
    jr nc, jr_00E_45DE                            ; $461C: $30 $C0

    ret nz                                        ; $461E: $C0

    nop                                           ; $461F: $00
    scf                                           ; $4620: $37

jr_00E_4621:
    inc c                                         ; $4621: $0C
    rst RST_18                                    ; $4622: $DF
    jr nc, jr_00E_461A                            ; $4623: $30 $F5

    rst RST_08                                    ; $4625: $CF
    rst RST_18                                    ; $4626: $DF
    or b                                          ; $4627: $B0
    ld [hl], l                                    ; $4628: $75
    rst RST_08                                    ; $4629: $CF
    rst RST_18                                    ; $462A: $DF
    ldh a, [$FFF0]                                ; $462B: $F0 $F0
    ret nz                                        ; $462D: $C0

jr_00E_462E:
    ret nz                                        ; $462E: $C0

    nop                                           ; $462F: $00
    ld b, b                                       ; $4630: $40
    add b                                         ; $4631: $80
    ld b, b                                       ; $4632: $40
    add b                                         ; $4633: $80
    ld b, b                                       ; $4634: $40
    add b                                         ; $4635: $80
    and e                                         ; $4636: $A3
    ld b, b                                       ; $4637: $40
    rra                                           ; $4638: $1F
    ldh [c], a                                    ; $4639: $E2
    sbc a                                         ; $463A: $9F
    ld l, l                                       ; $463B: $6D
    ld a, a                                       ; $463C: $7F
    ld e, $73                                     ; $463D: $1E $73
    ld a, $00                                     ; $463F: $3E $00
    nop                                           ; $4641: $00
    ld h, b                                       ; $4642: $60
    nop                                           ; $4643: $00
    ldh [rLCDC], a                                ; $4644: $E0 $40
    ldh a, [$FFA0]                                ; $4646: $F0 $A0
    ldh a, [$FFC0]                                ; $4648: $F0 $C0
    ld [hl], b                                    ; $464A: $70
    ret nz                                        ; $464B: $C0

    jr nc, jr_00E_462E                            ; $464C: $30 $E0

    or b                                          ; $464E: $B0
    ldh [$FFD0], a                                ; $464F: $E0 $D0
    ldh [$FFF8], a                                ; $4651: $E0 $F8
    ld [hl], b                                    ; $4653: $70
    ld a, [hl]                                    ; $4654: $7E
    jr nz, jr_00E_4696                            ; $4655: $20 $3F

    ld e, $7D                                     ; $4657: $1E $7D
    ld a, $71                                     ; $4659: $3E $71
    ld e, $3E                                     ; $465B: $1E $3E
    inc c                                         ; $465D: $0C
    inc c                                         ; $465E: $0C
    nop                                           ; $465F: $00
    nop                                           ; $4660: $00
    nop                                           ; $4661: $00
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
    ld [$1400], sp                                ; $467C: $08 $00 $14
    ld [$0000], sp                                ; $467F: $08 $00 $00
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
    nop                                           ; $468C: $00
    nop                                           ; $468D: $00
    nop                                           ; $468E: $00
    nop                                           ; $468F: $00
    jr c, jr_00E_4692                             ; $4690: $38 $00

jr_00E_4692:
    ret c                                         ; $4692: $D8

    jr nc, @+$72                                  ; $4693: $30 $70

    ret nz                                        ; $4695: $C0

jr_00E_4696:
    ld hl, sp+$00                                 ; $4696: $F8 $00
    ld e, b                                       ; $4698: $58
    ldh a, [$FFF0]                                ; $4699: $F0 $F0
    nop                                           ; $469B: $00
    ld e, b                                       ; $469C: $58
    ldh a, [$FFF8]                                ; $469D: $F0 $F8
    nop                                           ; $469F: $00
    inc b                                         ; $46A0: $04
    nop                                           ; $46A1: $00
    ld a, [bc]                                    ; $46A2: $0A

jr_00E_46A3:
    inc b                                         ; $46A3: $04
    ld de, $110E                                  ; $46A4: $11 $0E $11
    ld c, $30                                     ; $46A7: $0E $30
    rra                                           ; $46A9: $1F
    add hl, sp                                    ; $46AA: $39
    ld b, $6F                                     ; $46AB: $06 $6F
    ld de, $267F                                  ; $46AD: $11 $7F $26
    ccf                                           ; $46B0: $3F
    inc d                                         ; $46B1: $14
    ccf                                           ; $46B2: $3F
    dec d                                         ; $46B3: $15
    ld a, a                                       ; $46B4: $7F

jr_00E_46B5:
    nop                                           ; $46B5: $00
    xor $55                                       ; $46B6: $EE $55
    adc $35                                       ; $46B8: $CE $35
    adc $35                                       ; $46BA: $CE $35
    rst RST_28                                    ; $46BC: $EF
    ld d, [hl]                                    ; $46BD: $56
    ld a, a                                       ; $46BE: $7F
    nop                                           ; $46BF: $00
    inc e                                         ; $46C0: $1C
    nop                                           ; $46C1: $00

jr_00E_46C2:
    inc l                                         ; $46C2: $2C
    jr jr_00E_473D                                ; $46C3: $18 $78

    jr nz, jr_00E_4723                            ; $46C5: $20 $5C

    jr nz, jr_00E_46B5                            ; $46C7: $20 $EC

    jr jr_00E_46A3                                ; $46C9: $18 $D8

    jr nz, @-$12                                  ; $46CB: $20 $EC

    sbc b                                         ; $46CD: $98
    call c, $D0A0                                 ; $46CE: $DC $A0 $D0
    and b                                         ; $46D1: $A0
    ldh a, [rP1]                                  ; $46D2: $F0 $00
    jr nc, jr_00E_4696                            ; $46D4: $30 $C0

    db $10                                        ; $46D6: $10
    ldh [rNR10], a                                ; $46D7: $E0 $10
    ldh [rNR10], a                                ; $46D9: $E0 $10
    ldh [rNR41], a                                ; $46DB: $E0 $20
    ret nz                                        ; $46DD: $C0

    ldh [rP1], a                                  ; $46DE: $E0 $00
    ld hl, $1F1E                                  ; $46E0: $21 $1E $1F
    nop                                           ; $46E3: $00
    rra                                           ; $46E4: $1F
    ld [$051B], sp                                ; $46E5: $08 $1B $05
    inc de                                        ; $46E8: $13
    dec c                                         ; $46E9: $0D
    ld [de], a                                    ; $46EA: $12
    dec c                                         ; $46EB: $0D
    ld [de], a                                    ; $46EC: $12
    dec c                                         ; $46ED: $0D
    ld a, d                                       ; $46EE: $7A
    dec b                                         ; $46EF: $05
    ld a, a                                       ; $46F0: $7F
    add hl, sp                                    ; $46F1: $39
    cpl                                           ; $46F2: $2F
    dec e                                         ; $46F3: $1D
    dec de                                        ; $46F4: $1B
    dec c                                         ; $46F5: $0D
    rrca                                          ; $46F6: $0F
    dec b                                         ; $46F7: $05
    rra                                           ; $46F8: $1F
    nop                                           ; $46F9: $00
    cpl                                           ; $46FA: $2F
    dec d                                         ; $46FB: $15
    ld c, a                                       ; $46FC: $4F
    dec [hl]                                      ; $46FD: $35
    cp a                                          ; $46FE: $BF
    ld a, c                                       ; $46FF: $79
    jr nz, jr_00E_46C2                            ; $4700: $20 $C0

    jr nz, @-$3E                                  ; $4702: $20 $C0

    ldh [rP1], a                                  ; $4704: $E0 $00
    ldh a, [$FFE0]                                ; $4706: $F0 $E0
    ld a, h                                       ; $4708: $7C
    ldh [$FF7C], a                                ; $4709: $E0 $7C
    add sp, -$08                                  ; $470B: $E8 $F8
    ret nc                                        ; $470D: $D0

    ldh a, [$FFC0]                                ; $470E: $F0 $C0
    ldh [$FF80], a                                ; $4710: $E0 $80
    ret nz                                        ; $4712: $C0

    add b                                         ; $4713: $80
    add b                                         ; $4714: $80
    nop                                           ; $4715: $00
    add b                                         ; $4716: $80
    nop                                           ; $4717: $00
    ret nz                                        ; $4718: $C0

    nop                                           ; $4719: $00
    ret nz                                        ; $471A: $C0

    add b                                         ; $471B: $80
    ldh a, [$FFC0]                                ; $471C: $F0 $C0
    ld hl, sp-$10                                 ; $471E: $F8 $F0
    cp $7D                                        ; $4720: $FE $7D
    rst RST_38                                    ; $4722: $FF

jr_00E_4723:
    ld bc, $0307                                  ; $4723: $01 $07 $03
    rlca                                          ; $4726: $07
    nop                                           ; $4727: $00
    nop                                           ; $4728: $00
    nop                                           ; $4729: $00
    nop                                           ; $472A: $00
    nop                                           ; $472B: $00
    nop                                           ; $472C: $00
    nop                                           ; $472D: $00
    nop                                           ; $472E: $00
    nop                                           ; $472F: $00
    nop                                           ; $4730: $00
    nop                                           ; $4731: $00
    nop                                           ; $4732: $00

jr_00E_4733:
    nop                                           ; $4733: $00
    nop                                           ; $4734: $00
    nop                                           ; $4735: $00
    nop                                           ; $4736: $00
    nop                                           ; $4737: $00
    nop                                           ; $4738: $00
    nop                                           ; $4739: $00
    nop                                           ; $473A: $00
    nop                                           ; $473B: $00
    nop                                           ; $473C: $00

jr_00E_473D:
    nop                                           ; $473D: $00
    nop                                           ; $473E: $00
    nop                                           ; $473F: $00
    db $FC                                        ; $4740: $FC
    ld h, b                                       ; $4741: $60
    ldh a, [$FF80]                                ; $4742: $F0 $80
    ldh [$FFC0], a                                ; $4744: $E0 $C0
    ret nz                                        ; $4746: $C0

    nop                                           ; $4747: $00
    nop                                           ; $4748: $00
    nop                                           ; $4749: $00
    nop                                           ; $474A: $00
    nop                                           ; $474B: $00
    nop                                           ; $474C: $00
    nop                                           ; $474D: $00
    nop                                           ; $474E: $00
    nop                                           ; $474F: $00
    nop                                           ; $4750: $00
    nop                                           ; $4751: $00
    nop                                           ; $4752: $00
    nop                                           ; $4753: $00
    nop                                           ; $4754: $00
    nop                                           ; $4755: $00
    nop                                           ; $4756: $00
    nop                                           ; $4757: $00
    nop                                           ; $4758: $00
    nop                                           ; $4759: $00
    nop                                           ; $475A: $00
    nop                                           ; $475B: $00
    nop                                           ; $475C: $00
    nop                                           ; $475D: $00
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
    jr c, jr_00E_4774                             ; $4772: $38 $00

jr_00E_4774:
    ld l, h                                       ; $4774: $6C
    jr jr_00E_4733                                ; $4775: $18 $BC

    ld h, b                                       ; $4777: $60
    cp a                                          ; $4778: $BF
    ld h, b                                       ; $4779: $60
    cp $6F                                        ; $477A: $FE $6F
    rst RST_38                                    ; $477C: $FF
    ld [hl], e                                    ; $477D: $73
    ld [hl], e                                    ; $477E: $73
    nop                                           ; $477F: $00
    rst RST_38                                    ; $4780: $FF
    ccf                                           ; $4781: $3F
    ccf                                           ; $4782: $3F
    rlca                                          ; $4783: $07
    rra                                           ; $4784: $1F
    ld [$000E], sp                                ; $4785: $08 $0E $00

jr_00E_4788:
    rrca                                          ; $4788: $0F
    ld b, $07                                     ; $4789: $06 $07
    inc bc                                        ; $478B: $03
    ld b, $03                                     ; $478C: $06 $03
    inc bc                                        ; $478E: $03
    ld bc, $0102                                  ; $478F: $01 $02 $01
    inc bc                                        ; $4792: $03
    ld bc, $010B                                  ; $4793: $01 $0B $01
    rla                                           ; $4796: $17
    add hl, bc                                    ; $4797: $09
    daa                                           ; $4798: $27
    add hl, de                                    ; $4799: $19
    ld e, a                                       ; $479A: $5F
    ld a, $FF                                     ; $479B: $3E $FF
    ld a, a                                       ; $479D: $7F
    rst RST_38                                    ; $479E: $FF
    nop                                           ; $479F: $00
    rst RST_18                                    ; $47A0: $DF
    nop                                           ; $47A1: $00
    cp a                                          ; $47A2: $BF
    ld [$2B5C], sp                                ; $47A3: $08 $5C $2B
    adc h                                         ; $47A6: $8C
    ld [hl], e                                    ; $47A7: $73
    adc h                                         ; $47A8: $8C
    ld [hl], e                                    ; $47A9: $73
    ldh a, [c]                                    ; $47AA: $F2
    add c                                         ; $47AB: $81
    ld [hl], e                                    ; $47AC: $73
    ldh [$FFF7], a                                ; $47AD: $E0 $F7
    db $E3                                        ; $47AF: $E3
    db $E3                                        ; $47B0: $E3
    pop bc                                        ; $47B1: $C1
    pop bc                                        ; $47B2: $C1
    add b                                         ; $47B3: $80
    ret nz                                        ; $47B4: $C0

    add b                                         ; $47B5: $80
    add b                                         ; $47B6: $80
    nop                                           ; $47B7: $00
    add b                                         ; $47B8: $80
    nop                                           ; $47B9: $00
    nop                                           ; $47BA: $00
    nop                                           ; $47BB: $00
    add b                                         ; $47BC: $80
    nop                                           ; $47BD: $00
    add b                                         ; $47BE: $80
    nop                                           ; $47BF: $00
    add e                                         ; $47C0: $83
    ld bc, $0081                                  ; $47C1: $01 $81 $00
    ld b, b                                       ; $47C4: $40
    add b                                         ; $47C5: $80
    jr nz, jr_00E_4788                            ; $47C6: $20 $C0

    ld [hl], b                                    ; $47C8: $70
    add b                                         ; $47C9: $80
    ld hl, sp+$70                                 ; $47CA: $F8 $70
    db $FC                                        ; $47CC: $FC
    ld hl, sp+$3C                                 ; $47CD: $F8 $3C
    ld hl, sp-$12                                 ; $47CF: $F8 $EE
    inc a                                         ; $47D1: $3C

jr_00E_47D2:
    ld a, $1C                                     ; $47D2: $3E $1C
    rra                                           ; $47D4: $1F
    ld b, $17                                     ; $47D5: $06 $17
    ld [$0F17], sp                                ; $47D7: $08 $17 $0F
    cpl                                           ; $47DA: $2F
    rra                                           ; $47DB: $1F
    ld a, a                                       ; $47DC: $7F
    inc a                                         ; $47DD: $3C
    ld a, h                                       ; $47DE: $7C
    nop                                           ; $47DF: $00
    ldh [$FFC0], a                                ; $47E0: $E0 $C0
    ldh [$FFC0], a                                ; $47E2: $E0 $C0
    ldh a, [$FFE0]                                ; $47E4: $F0 $E0
    ldh a, [$FF60]                                ; $47E6: $F0 $60
    ld a, h                                       ; $47E8: $7C

jr_00E_47E9:
    jr nz, jr_00E_47E9                            ; $47E9: $20 $FE

    inc e                                         ; $47EB: $1C
    cp $40                                        ; $47EC: $FE $40
    cp $2C                                        ; $47EE: $FE $2C
    ld a, h                                       ; $47F0: $7C
    jr c, jr_00E_482B                             ; $47F1: $38 $38

    nop                                           ; $47F3: $00
    nop                                           ; $47F4: $00
    nop                                           ; $47F5: $00
    nop                                           ; $47F6: $00
    nop                                           ; $47F7: $00
    add b                                         ; $47F8: $80
    nop                                           ; $47F9: $00
    ret nz                                        ; $47FA: $C0

    add b                                         ; $47FB: $80
    ret nz                                        ; $47FC: $C0

jr_00E_47FD:
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
    ld bc, $0300                                  ; $4812: $01 $00 $03
    nop                                           ; $4815: $00
    inc bc                                        ; $4816: $03
    nop                                           ; $4817: $00
    inc bc                                        ; $4818: $03
    nop                                           ; $4819: $00
    cp $01                                        ; $481A: $FE $01
    inc e                                         ; $481C: $1C
    ei                                            ; $481D: $FB
    cp $FD                                        ; $481E: $FE $FD
    db $E4                                        ; $4820: $E4
    jr jr_00E_47FD                                ; $4821: $18 $DA

    ld h, h                                       ; $4823: $64
    ld a, d                                       ; $4824: $7A
    inc d                                         ; $4825: $14
    push af                                       ; $4826: $F5
    ld a, [bc]                                    ; $4827: $0A
    rst RST_10                                    ; $4828: $D7
    ld a, b                                       ; $4829: $78
    halt                                          ; $482A: $76

jr_00E_482B:
    ld [$6AD5], sp                                ; $482B: $08 $D5 $6A
    push af                                       ; $482E: $F5
    ld a, [de]                                    ; $482F: $1A
    rst RST_30                                    ; $4830: $F7
    jr jr_00E_47D2                                ; $4831: $18 $9F

    ld l, b                                       ; $4833: $68
    rrca                                          ; $4834: $0F
    di                                            ; $4835: $F3

jr_00E_4836:
    rrca                                          ; $4836: $0F
    di                                            ; $4837: $F3
    rrca                                          ; $4838: $0F
    di                                            ; $4839: $F3
    sbc a                                         ; $483A: $9F
    ld l, e                                       ; $483B: $6B
    ld a, a                                       ; $483C: $7F
    add b                                         ; $483D: $80
    add d                                         ; $483E: $82
    ld a, h                                       ; $483F: $7C
    dec c                                         ; $4840: $0D
    inc bc                                        ; $4841: $03
    rla                                           ; $4842: $17
    inc c                                         ; $4843: $0C
    ccf                                           ; $4844: $3F
    db $10                                        ; $4845: $10
    ld e, l                                       ; $4846: $5D
    daa                                           ; $4847: $27
    ld [hl], e                                    ; $4848: $73
    inc a                                         ; $4849: $3C
    ld e, l                                       ; $484A: $5D
    inc sp                                        ; $484B: $33
    sub a                                         ; $484C: $97
    ld l, h                                       ; $484D: $6C
    cp h                                          ; $484E: $BC
    ld [hl], b                                    ; $484F: $70
    ret nc                                        ; $4850: $D0

    jr nz, jr_00E_4836                            ; $4851: $20 $E3

    add b                                         ; $4853: $80
    rst RST_18                                    ; $4854: $DF
    and d                                         ; $4855: $A2
    rst RST_18                                    ; $4856: $DF
    xor l                                         ; $4857: $AD
    rst RST_38                                    ; $4858: $FF
    ld e, $7F                                     ; $4859: $1E $7F
    ld a, $7F                                     ; $485B: $3E $7F
    rra                                           ; $485D: $1F
    rra                                           ; $485E: $1F
    rrca                                          ; $485F: $0F
    ldh [rP1], a                                  ; $4860: $E0 $00
    ld h, b                                       ; $4862: $60
    ret nz                                        ; $4863: $C0

    ret nz                                        ; $4864: $C0

    nop                                           ; $4865: $00
    ldh [rP1], a                                  ; $4866: $E0 $00
    ld h, b                                       ; $4868: $60
    ret nz                                        ; $4869: $C0

    ret nz                                        ; $486A: $C0

    nop                                           ; $486B: $00
    ld h, b                                       ; $486C: $60
    ret nz                                        ; $486D: $C0

    ldh [rP1], a                                  ; $486E: $E0 $00
    nop                                           ; $4870: $00
    nop                                           ; $4871: $00
    nop                                           ; $4872: $00

jr_00E_4873:
    nop                                           ; $4873: $00
    ret nz                                        ; $4874: $C0

    nop                                           ; $4875: $00
    ret nz                                        ; $4876: $C0

    add b                                         ; $4877: $80
    ldh [rLCDC], a                                ; $4878: $E0 $40
    ldh [$FF80], a                                ; $487A: $E0 $80
    ldh [$FF80], a                                ; $487C: $E0 $80
    ldh [$FFC0], a                                ; $487E: $E0 $C0
    nop                                           ; $4880: $00
    nop                                           ; $4881: $00
    nop                                           ; $4882: $00
    nop                                           ; $4883: $00
    nop                                           ; $4884: $00
    nop                                           ; $4885: $00
    nop                                           ; $4886: $00
    nop                                           ; $4887: $00
    nop                                           ; $4888: $00
    nop                                           ; $4889: $00
    nop                                           ; $488A: $00
    nop                                           ; $488B: $00
    nop                                           ; $488C: $00
    nop                                           ; $488D: $00
    nop                                           ; $488E: $00
    nop                                           ; $488F: $00
    nop                                           ; $4890: $00
    nop                                           ; $4891: $00
    nop                                           ; $4892: $00
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
    ld b, $00                                     ; $489E: $06 $00
    nop                                           ; $48A0: $00
    nop                                           ; $48A1: $00
    nop                                           ; $48A2: $00
    nop                                           ; $48A3: $00
    nop                                           ; $48A4: $00
    nop                                           ; $48A5: $00
    nop                                           ; $48A6: $00
    nop                                           ; $48A7: $00
    nop                                           ; $48A8: $00
    nop                                           ; $48A9: $00
    nop                                           ; $48AA: $00
    nop                                           ; $48AB: $00
    ldh [rP1], a                                  ; $48AC: $E0 $00
    ret c                                         ; $48AE: $D8

    ld h, b                                       ; $48AF: $60

jr_00E_48B0:
    halt                                          ; $48B0: $76
    jr jr_00E_48B0                                ; $48B1: $18 $FD

    ld b, $D7                                     ; $48B3: $06 $D7
    ld a, c                                       ; $48B5: $79
    ld a, l                                       ; $48B6: $7D
    ld b, $D7                                     ; $48B7: $06 $D7
    ld a, c                                       ; $48B9: $79
    db $FD                                        ; $48BA: $FD
    rlca                                          ; $48BB: $07
    rlca                                          ; $48BC: $07
    ld bc, $0001                                  ; $48BD: $01 $01 $00
    nop                                           ; $48C0: $00
    nop                                           ; $48C1: $00
    nop                                           ; $48C2: $00
    nop                                           ; $48C3: $00
    nop                                           ; $48C4: $00
    nop                                           ; $48C5: $00
    nop                                           ; $48C6: $00
    nop                                           ; $48C7: $00
    add b                                         ; $48C8: $80
    nop                                           ; $48C9: $00
    pop af                                        ; $48CA: $F1
    add b                                         ; $48CB: $80
    pop de                                        ; $48CC: $D1
    ldh [rNR12], a                                ; $48CD: $E0 $12
    pop hl                                        ; $48CF: $E1
    pop de                                        ; $48D0: $D1
    ldh [$FF8B], a                                ; $48D1: $E0 $8B
    ldh a, [rIE]                                  ; $48D3: $F0 $FF
    pop bc                                        ; $48D5: $C1
    rst RST_08                                    ; $48D6: $CF
    ld [hl], $87                                  ; $48D7: $36 $87
    ld a, d                                       ; $48D9: $7A
    add a                                         ; $48DA: $87
    ld a, d                                       ; $48DB: $7A
    add a                                         ; $48DC: $87
    ld a, d                                       ; $48DD: $7A
    ld c, e                                       ; $48DE: $4B
    inc [hl]                                      ; $48DF: $34
    nop                                           ; $48E0: $00
    nop                                           ; $48E1: $00
    nop                                           ; $48E2: $00
    nop                                           ; $48E3: $00
    nop                                           ; $48E4: $00
    nop                                           ; $48E5: $00
    jr nz, jr_00E_48E8                            ; $48E6: $20 $00

jr_00E_48E8:
    ld d, b                                       ; $48E8: $50
    jr nz, jr_00E_4873                            ; $48E9: $20 $88

    ld [hl], b                                    ; $48EB: $70
    inc h                                         ; $48EC: $24
    ld hl, sp+$66                                 ; $48ED: $F8 $66
    ld hl, sp-$05                                 ; $48EF: $F8 $FB
    ld b, h                                       ; $48F1: $44
    ld c, l                                       ; $48F2: $4D
    or b                                          ; $48F3: $B0
    rst RST_38                                    ; $48F4: $FF
    ld c, b                                       ; $48F5: $48
    rst RST_38                                    ; $48F6: $FF
    ld d, $FE                                     ; $48F7: $16 $FE
    ld d, l                                       ; $48F9: $55
    rst RST_38                                    ; $48FA: $FF
    nop                                           ; $48FB: $00
    rra                                           ; $48FC: $1F
    db $EC                                        ; $48FD: $EC
    rra                                           ; $48FE: $1F
    pop hl                                        ; $48FF: $E1
    nop                                           ; $4900: $00
    nop                                           ; $4901: $00
    nop                                           ; $4902: $00
    nop                                           ; $4903: $00
    nop                                           ; $4904: $00
    nop                                           ; $4905: $00
    nop                                           ; $4906: $00
    nop                                           ; $4907: $00
    inc bc                                        ; $4908: $03
    nop                                           ; $4909: $00
    ld c, $03                                     ; $490A: $0E $03
    dec sp                                        ; $490C: $3B
    inc c                                         ; $490D: $0C
    xor $33                                       ; $490E: $EE $33
    ld a, e                                       ; $4910: $7B
    db $EC                                        ; $4911: $EC
    ld e, $F1                                     ; $4912: $1E $F1
    rst RST_38                                    ; $4914: $FF
    inc h                                         ; $4915: $24
    daa                                           ; $4916: $27
    ret c                                         ; $4917: $D8

    ld [hl], a                                    ; $4918: $77
    cp [hl]                                       ; $4919: $BE
    or $78                                        ; $491A: $F6 $78
    rst RST_38                                    ; $491C: $FF
    ld a, [hl]                                    ; $491D: $7E
    cp $61                                        ; $491E: $FE $61
    nop                                           ; $4920: $00
    nop                                           ; $4921: $00
    nop                                           ; $4922: $00
    nop                                           ; $4923: $00
    nop                                           ; $4924: $00
    nop                                           ; $4925: $00
    ret nz                                        ; $4926: $C0

    nop                                           ; $4927: $00
    ret nz                                        ; $4928: $C0

    add b                                         ; $4929: $80
    add b                                         ; $492A: $80
    nop                                           ; $492B: $00
    ret nz                                        ; $492C: $C0

    nop                                           ; $492D: $00
    ret nz                                        ; $492E: $C0

    add b                                         ; $492F: $80
    add b                                         ; $4930: $80
    nop                                           ; $4931: $00
    ret nz                                        ; $4932: $C0

    add b                                         ; $4933: $80
    ret nz                                        ; $4934: $C0

    nop                                           ; $4935: $00
    nop                                           ; $4936: $00
    nop                                           ; $4937: $00
    nop                                           ; $4938: $00
    nop                                           ; $4939: $00
    nop                                           ; $493A: $00
    nop                                           ; $493B: $00
    nop                                           ; $493C: $00
    nop                                           ; $493D: $00
    add b                                         ; $493E: $80
    nop                                           ; $493F: $00
    cpl                                           ; $4940: $2F
    ret nc                                        ; $4941: $D0

    rst RST_00                                    ; $4942: $C7
    dec sp                                        ; $4943: $3B
    cpl                                           ; $4944: $2F
    rla                                           ; $4945: $17
    rra                                           ; $4946: $1F
    rlca                                          ; $4947: $07
    rrca                                          ; $4948: $0F
    rlca                                          ; $4949: $07
    rlca                                          ; $494A: $07
    nop                                           ; $494B: $00
    rlca                                          ; $494C: $07
    inc bc                                        ; $494D: $03
    dec bc                                        ; $494E: $0B
    inc b                                         ; $494F: $04
    db $10                                        ; $4950: $10
    rrca                                          ; $4951: $0F
    dec sp                                        ; $4952: $3B
    inc b                                         ; $4953: $04

jr_00E_4954:
    ld a, a                                       ; $4954: $7F
    ld bc, $227F                                  ; $4955: $01 $7F $22
    ccf                                           ; $4958: $3F
    inc e                                         ; $4959: $1C
    inc e                                         ; $495A: $1C
    nop                                           ; $495B: $00
    nop                                           ; $495C: $00
    nop                                           ; $495D: $00
    nop                                           ; $495E: $00
    nop                                           ; $495F: $00
    rst RST_38                                    ; $4960: $FF
    inc a                                         ; $4961: $3C
    adc $F9                                       ; $4962: $CE $F9
    dec a                                         ; $4964: $3D
    ldh a, [c]                                    ; $4965: $F2
    ei                                            ; $4966: $FB
    push bc                                       ; $4967: $C5
    rst RST_30                                    ; $4968: $F7
    dec hl                                        ; $4969: $2B
    rst RST_30                                    ; $496A: $F7
    xor e                                         ; $496B: $AB
    rst RST_30                                    ; $496C: $F7
    dec hl                                        ; $496D: $2B
    ld a, a                                       ; $496E: $7F
    and d                                         ; $496F: $A2
    rst RST_38                                    ; $4970: $FF
    dec b                                         ; $4971: $05
    rst RST_30                                    ; $4972: $F7
    and c                                         ; $4973: $A1
    rst RST_30                                    ; $4974: $F7
    ld b, e                                       ; $4975: $43
    rst RST_28                                    ; $4976: $EF
    rst RST_00                                    ; $4977: $C7
    rst RST_28                                    ; $4978: $EF
    nop                                           ; $4979: $00
    nop                                           ; $497A: $00
    nop                                           ; $497B: $00
    nop                                           ; $497C: $00
    nop                                           ; $497D: $00
    nop                                           ; $497E: $00
    nop                                           ; $497F: $00
    jp hl                                         ; $4980: $E9


    ld d, $FE                                     ; $4981: $16 $FE
    ld l, a                                       ; $4983: $6F
    rst RST_38                                    ; $4984: $FF
    rst RST_28                                    ; $4985: $EF
    sbc a                                         ; $4986: $9F
    rst RST_28                                    ; $4987: $EF
    rst RST_38                                    ; $4988: $FF
    ret nz                                        ; $4989: $C0

    ld b, b                                       ; $498A: $40
    add b                                         ; $498B: $80
    add b                                         ; $498C: $80
    nop                                           ; $498D: $00
    add b                                         ; $498E: $80
    nop                                           ; $498F: $00
    ld b, b                                       ; $4990: $40
    add b                                         ; $4991: $80
    jr nz, jr_00E_4954                            ; $4992: $20 $C0

    ret nc                                        ; $4994: $D0

    ldh [$FFF8], a                                ; $4995: $E0 $F8
    ldh a, [$FFF8]                                ; $4997: $F0 $F8
    nop                                           ; $4999: $00
    nop                                           ; $499A: $00
    nop                                           ; $499B: $00
    nop                                           ; $499C: $00
    nop                                           ; $499D: $00
    nop                                           ; $499E: $00
    nop                                           ; $499F: $00
    ld [hl], $00                                  ; $49A0: $36 $00
    jp c, $FE24                                   ; $49A2: $DA $24 $FE

    sbc h                                         ; $49A5: $9C

jr_00E_49A6:
    db $FD                                        ; $49A6: $FD
    sbc $FF                                       ; $49A7: $DE $FF
    inc a                                         ; $49A9: $3C
    db $FC                                        ; $49AA: $FC
    nop                                           ; $49AB: $00
    nop                                           ; $49AC: $00
    nop                                           ; $49AD: $00
    nop                                           ; $49AE: $00
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
    ld [hl], b                                    ; $49C0: $70
    nop                                           ; $49C1: $00
    ld l, h                                       ; $49C2: $6C
    jr nc, @+$3D                                  ; $49C3: $30 $3B

    inc c                                         ; $49C5: $0C

jr_00E_49C6:
    ld a, [hl]                                    ; $49C6: $7E
    inc bc                                        ; $49C7: $03
    ld l, e                                       ; $49C8: $6B
    inc a                                         ; $49C9: $3C
    ld a, $03                                     ; $49CA: $3E $03
    ld l, e                                       ; $49CC: $6B
    inc a                                         ; $49CD: $3C

jr_00E_49CE:
    ld a, [hl]                                    ; $49CE: $7E
    inc bc                                        ; $49CF: $03
    inc bc                                        ; $49D0: $03
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
    ld bc, $0200                                  ; $49E2: $01 $00 $02
    ld bc, $0304                                  ; $49E5: $01 $04 $03
    push bc                                       ; $49E8: $C5
    inc bc                                        ; $49E9: $03
    ei                                            ; $49EA: $FB
    push bc                                       ; $49EB: $C5
    db $ED                                        ; $49EC: $ED
    ld [hl], d                                    ; $49ED: $72
    adc a                                         ; $49EE: $8F
    pop af                                        ; $49EF: $F1
    rst RST_28                                    ; $49F0: $EF
    db $F4                                        ; $49F1: $F4
    rst RST_30                                    ; $49F2: $F7
    ret                                           ; $49F3: $C9


jr_00E_49F4:
    rst RST_18                                    ; $49F4: $DF
    jr nz, jr_00E_49A6                            ; $49F5: $20 $AF

    ld d, [hl]                                    ; $49F7: $56

jr_00E_49F8:
    and [hl]                                      ; $49F8: $A6
    ld e, c                                       ; $49F9: $59

jr_00E_49FA:
    and [hl]                                      ; $49FA: $A6
    ld e, c                                       ; $49FB: $59
    and [hl]                                      ; $49FC: $A6
    ld e, c                                       ; $49FD: $59
    ld l, a                                       ; $49FE: $6F
    ld d, $80                                     ; $49FF: $16 $80
    nop                                           ; $4A01: $00
    ld b, b                                       ; $4A02: $40
    add b                                         ; $4A03: $80
    jr nz, jr_00E_49C6                            ; $4A04: $20 $C0

    sub b                                         ; $4A06: $90
    ldh [$FF98], a                                ; $4A07: $E0 $98
    ldh [$FFE8], a                                ; $4A09: $E0 $E8
    db $10                                        ; $4A0B: $10
    jr nc, jr_00E_49CE                            ; $4A0C: $30 $C0

jr_00E_4A0E:
    db $FC                                        ; $4A0E: $FC
    jr nz, jr_00E_4A0E                            ; $4A0F: $20 $FD

    ld e, b                                       ; $4A11: $58
    rst RST_38                                    ; $4A12: $FF
    ld d, b                                       ; $4A13: $50
    cp $05                                        ; $4A14: $FE $05
    inc a                                         ; $4A16: $3C
    db $DB                                        ; $4A17: $DB
    inc a                                         ; $4A18: $3C
    db $DB                                        ; $4A19: $DB
    inc a                                         ; $4A1A: $3C
    db $DB                                        ; $4A1B: $DB
    inc a                                         ; $4A1C: $3C
    db $DB                                        ; $4A1D: $DB
    ld a, $D9                                     ; $4A1E: $3E $D9
    ld b, $01                                     ; $4A20: $06 $01
    dec de                                        ; $4A22: $1B
    ld b, $FE                                     ; $4A23: $06 $FE
    add hl, de                                    ; $4A25: $19
    cp e                                          ; $4A26: $BB
    halt                                          ; $4A27: $76
    adc [hl]                                      ; $4A28: $8E
    ld a, c                                       ; $4A29: $79
    cp e                                          ; $4A2A: $BB
    ld a, [hl]                                    ; $4A2B: $7E
    ld e, $F8                                     ; $4A2C: $1E $F8
    ld hl, sp+$30                                 ; $4A2E: $F8 $30
    ld [hl], b                                    ; $4A30: $70
    add b                                         ; $4A31: $80
    jr nz, jr_00E_49F4                            ; $4A32: $20 $C0

    jr nz, @-$3E                                  ; $4A34: $20 $C0

    jr nz, jr_00E_49F8                            ; $4A36: $20 $C0

    jr nz, jr_00E_49FA                            ; $4A38: $20 $C0

    ld b, b                                       ; $4A3A: $40
    add b                                         ; $4A3B: $80
    ret nz                                        ; $4A3C: $C0

    nop                                           ; $4A3D: $00
    ld b, b                                       ; $4A3E: $40
    add b                                         ; $4A3F: $80
    nop                                           ; $4A40: $00
    nop                                           ; $4A41: $00
    nop                                           ; $4A42: $00
    nop                                           ; $4A43: $00
    nop                                           ; $4A44: $00
    nop                                           ; $4A45: $00
    nop                                           ; $4A46: $00
    nop                                           ; $4A47: $00
    nop                                           ; $4A48: $00
    nop                                           ; $4A49: $00
    nop                                           ; $4A4A: $00
    nop                                           ; $4A4B: $00
    nop                                           ; $4A4C: $00
    nop                                           ; $4A4D: $00
    nop                                           ; $4A4E: $00
    nop                                           ; $4A4F: $00
    jr c, jr_00E_4A52                             ; $4A50: $38 $00

jr_00E_4A52:
    ret c                                         ; $4A52: $D8

    jr nc, jr_00E_4AC5                            ; $4A53: $30 $70

    ret nz                                        ; $4A55: $C0

    ld hl, sp+$00                                 ; $4A56: $F8 $00
    ld e, b                                       ; $4A58: $58
    ldh a, [$FFF0]                                ; $4A59: $F0 $F0
    nop                                           ; $4A5B: $00
    ld e, b                                       ; $4A5C: $58
    ldh a, [$FFF8]                                ; $4A5D: $F0 $F8
    nop                                           ; $4A5F: $00
    ld a, a                                       ; $4A60: $7F
    nop                                           ; $4A61: $00
    ld c, h                                       ; $4A62: $4C
    inc sp                                        ; $4A63: $33
    ld c, a                                       ; $4A64: $4F
    inc sp                                        ; $4A65: $33
    ei                                            ; $4A66: $FB
    dec b                                         ; $4A67: $05
    ei                                            ; $4A68: $FB
    ld [hl], l                                    ; $4A69: $75
    db $DB                                        ; $4A6A: $DB
    ld [hl], l                                    ; $4A6B: $75
    db $DB                                        ; $4A6C: $DB
    ld [hl], l                                    ; $4A6D: $75
    sbc e                                         ; $4A6E: $9B
    ld h, l                                       ; $4A6F: $65
    cp c                                          ; $4A70: $B9
    ld b, [hl]                                    ; $4A71: $46
    cp l                                          ; $4A72: $BD
    ld e, d                                       ; $4A73: $5A
    rst RST_38                                    ; $4A74: $FF
    ld e, h                                       ; $4A75: $5C
    rst RST_20                                    ; $4A76: $E7
    ld e, [hl]                                    ; $4A77: $5E
    rst RST_38                                    ; $4A78: $FF
    ld c, [hl]                                    ; $4A79: $4E
    ei                                            ; $4A7A: $FB
    ld c, [hl]                                    ; $4A7B: $4E
    rst RST_38                                    ; $4A7C: $FF
    ld b, $FF                                     ; $4A7D: $06 $FF
    ld h, [hl]                                    ; $4A7F: $66
    ei                                            ; $4A80: $FB
    nop                                           ; $4A81: $00
    ld [de], a                                    ; $4A82: $12
    pop hl                                        ; $4A83: $E1
    ldh [c], a                                    ; $4A84: $E2
    pop bc                                        ; $4A85: $C1
    rst RST_20                                    ; $4A86: $E7
    nop                                           ; $4A87: $00
    sub a                                         ; $4A88: $97
    ld h, e                                       ; $4A89: $63
    sub [hl]                                      ; $4A8A: $96
    ld h, e                                       ; $4A8B: $63
    sub [hl]                                      ; $4A8C: $96
    ld h, e                                       ; $4A8D: $63
    sub h                                         ; $4A8E: $94
    ld h, e                                       ; $4A8F: $63
    dec d                                         ; $4A90: $15
    db $E3                                        ; $4A91: $E3
    ld [hl], l                                    ; $4A92: $75
    add e                                         ; $4A93: $83
    rst RST_30                                    ; $4A94: $F7
    ld h, e                                       ; $4A95: $63
    rst RST_38                                    ; $4A96: $FF
    di                                            ; $4A97: $F3
    sbc a                                         ; $4A98: $9F
    ldh a, [c]                                    ; $4A99: $F2
    rst RST_38                                    ; $4A9A: $FF
    ldh a, [c]                                    ; $4A9B: $F2
    sbc a                                         ; $4A9C: $9F
    ldh a, [rIE]                                  ; $4A9D: $F0 $FF
    rst RST_30                                    ; $4A9F: $F7
    ld b, b                                       ; $4AA0: $40
    add b                                         ; $4AA1: $80
    ret nz                                        ; $4AA2: $C0

    nop                                           ; $4AA3: $00
    ldh [$FFC0], a                                ; $4AA4: $E0 $C0
    ld hl, sp-$40                                 ; $4AA6: $F8 $C0
    ld hl, sp-$30                                 ; $4AA8: $F8 $D0
    ld hl, sp-$50                                 ; $4AAA: $F8 $B0
    ldh a, [$FFA0]                                ; $4AAC: $F0 $A0
    ldh [$FF80], a                                ; $4AAE: $E0 $80
    ret nz                                        ; $4AB0: $C0

    nop                                           ; $4AB1: $00
    add b                                         ; $4AB2: $80
    nop                                           ; $4AB3: $00
    nop                                           ; $4AB4: $00
    nop                                           ; $4AB5: $00
    nop                                           ; $4AB6: $00
    nop                                           ; $4AB7: $00
    nop                                           ; $4AB8: $00
    nop                                           ; $4AB9: $00
    add b                                         ; $4ABA: $80
    nop                                           ; $4ABB: $00
    add b                                         ; $4ABC: $80
    nop                                           ; $4ABD: $00
    add b                                         ; $4ABE: $80
    nop                                           ; $4ABF: $00
    rst RST_38                                    ; $4AC0: $FF
    ld [hl], d                                    ; $4AC1: $72
    rst RST_38                                    ; $4AC2: $FF
    ld [hl], d                                    ; $4AC3: $72
    rst RST_38                                    ; $4AC4: $FF

jr_00E_4AC5:
    ld h, d                                       ; $4AC5: $62
    rst RST_30                                    ; $4AC6: $F7

jr_00E_4AC7:
    ld h, c                                       ; $4AC7: $61
    ld [hl], a                                    ; $4AC8: $77
    inc hl                                        ; $4AC9: $23
    ld a, a                                       ; $4ACA: $7F
    rlca                                          ; $4ACB: $07
    inc de                                        ; $4ACC: $13
    rrca                                          ; $4ACD: $0F
    dec bc                                        ; $4ACE: $0B
    rlca                                          ; $4ACF: $07
    dec bc                                        ; $4AD0: $0B
    rlca                                          ; $4AD1: $07
    rlca                                          ; $4AD2: $07
    inc bc                                        ; $4AD3: $03
    inc bc                                        ; $4AD4: $03
    ld bc, $0001                                  ; $4AD5: $01 $01 $00
    nop                                           ; $4AD8: $00
    nop                                           ; $4AD9: $00
    nop                                           ; $4ADA: $00
    nop                                           ; $4ADB: $00
    nop                                           ; $4ADC: $00
    nop                                           ; $4ADD: $00
    nop                                           ; $4ADE: $00
    nop                                           ; $4ADF: $00
    rst RST_38                                    ; $4AE0: $FF
    ld l, a                                       ; $4AE1: $6F
    rst RST_38                                    ; $4AE2: $FF
    ld l, a                                       ; $4AE3: $6F
    ld a, a                                       ; $4AE4: $7F
    ld l, $FF                                     ; $4AE5: $2E $FF
    ld h, $FE                                     ; $4AE7: $26 $FE
    inc b                                         ; $4AE9: $04
    sbc $70                                       ; $4AEA: $DE $70
    call c, $DC78                                 ; $4AEC: $DC $78 $DC
    ld a, b                                       ; $4AEF: $78
    call c, $D878                                 ; $4AF0: $DC $78 $D8
    ld [hl], b                                    ; $4AF3: $70
    ret c                                         ; $4AF4: $D8

    jr nc, jr_00E_4AC7                            ; $4AF5: $30 $D0

    jr nz, jr_00E_4B69                            ; $4AF7: $20 $70

    nop                                           ; $4AF9: $00
    nop                                           ; $4AFA: $00
    nop                                           ; $4AFB: $00
    nop                                           ; $4AFC: $00
    nop                                           ; $4AFD: $00
    nop                                           ; $4AFE: $00
    nop                                           ; $4AFF: $00
    ldh [rP1], a                                  ; $4B00: $E0 $00
    ret c                                         ; $4B02: $D8

    ld h, b                                       ; $4B03: $60

jr_00E_4B04:
    halt                                          ; $4B04: $76
    jr jr_00E_4B04                                ; $4B05: $18 $FD

    ld b, $D7                                     ; $4B07: $06 $D7
    ld a, c                                       ; $4B09: $79
    ld a, l                                       ; $4B0A: $7D
    ld b, $D7                                     ; $4B0B: $06 $D7
    ld a, c                                       ; $4B0D: $79
    rst RST_38                                    ; $4B0E: $FF
    ld bc, $103F                                  ; $4B0F: $01 $3F $10
    add hl, sp                                    ; $4B12: $39
    ld d, $7A                                     ; $4B13: $16 $7A
    dec [hl]                                      ; $4B15: $35
    ld l, [hl]                                    ; $4B16: $6E
    add hl, sp                                    ; $4B17: $39
    ld c, a                                       ; $4B18: $4F
    inc a                                         ; $4B19: $3C
    ld e, h                                       ; $4B1A: $5C
    jr c, jr_00E_4B79                             ; $4B1B: $38 $5C

    jr c, jr_00E_4B97                             ; $4B1D: $38 $78

    jr nc, jr_00E_4B21                            ; $4B1F: $30 $00

jr_00E_4B21:
    nop                                           ; $4B21: $00
    inc b                                         ; $4B22: $04
    nop                                           ; $4B23: $00
    ld a, [bc]                                    ; $4B24: $0A
    inc b                                         ; $4B25: $04

jr_00E_4B26:
    sub c                                         ; $4B26: $91
    ld c, $E4                                     ; $4B27: $0E $E4
    sbc a                                         ; $4B29: $9F
    db $EC                                        ; $4B2A: $EC
    rst RST_18                                    ; $4B2B: $DF
    ld e, a                                       ; $4B2C: $5F
    xor b                                         ; $4B2D: $A8
    jp hl                                         ; $4B2E: $E9


    sub $FF                                       ; $4B2F: $D6 $FF
    add hl, bc                                    ; $4B31: $09
    ld a, a                                       ; $4B32: $7F
    and d                                         ; $4B33: $A2
    ld a, a                                       ; $4B34: $7F
    adc d                                         ; $4B35: $8A
    ld a, a                                       ; $4B36: $7F
    and b                                         ; $4B37: $A0
    ld a, a                                       ; $4B38: $7F
    sbc [hl]                                      ; $4B39: $9E
    sbc $21                                       ; $4B3A: $DE $21
    ld c, h                                       ; $4B3C: $4C
    inc sp                                        ; $4B3D: $33
    ld c, h                                       ; $4B3E: $4C
    inc sp                                        ; $4B3F: $33
    nop                                           ; $4B40: $00
    nop                                           ; $4B41: $00
    nop                                           ; $4B42: $00
    nop                                           ; $4B43: $00
    ld bc, $0F00                                  ; $4B44: $01 $00 $0F
    ld bc, $078B                                  ; $4B47: $01 $8B $07
    ret z                                         ; $4B4A: $C8

jr_00E_4B4B:
    rlca                                          ; $4B4B: $07
    ld d, e                                       ; $4B4C: $53
    adc a                                         ; $4B4D: $8F
    sub c                                         ; $4B4E: $91
    rrca                                          ; $4B4F: $0F
    rst RST_20                                    ; $4B50: $E7
    jr jr_00E_4B4B                                ; $4B51: $18 $F8

    rst RST_00                                    ; $4B53: $C7
    ldh a, [$FFAF]                                ; $4B54: $F0 $AF
    ldh a, [rIF]                                  ; $4B56: $F0 $0F
    ld hl, sp+$37                                 ; $4B58: $F8 $37
    ld a, a                                       ; $4B5A: $7F
    cp b                                          ; $4B5B: $B8
    ld a, h                                       ; $4B5C: $7C
    cp b                                          ; $4B5D: $B8
    ld a, h                                       ; $4B5E: $7C
    or b                                          ; $4B5F: $B0
    rlca                                          ; $4B60: $07
    nop                                           ; $4B61: $00
    dec de                                        ; $4B62: $1B
    ld b, $6E                                     ; $4B63: $06 $6E
    jr jr_00E_4B26                                ; $4B65: $18 $BF

    ld h, b                                       ; $4B67: $60
    db $EB                                        ; $4B68: $EB

jr_00E_4B69:
    sbc [hl]                                      ; $4B69: $9E
    cp [hl]                                       ; $4B6A: $BE
    ld h, b                                       ; $4B6B: $60
    db $EB                                        ; $4B6C: $EB
    sbc [hl]                                      ; $4B6D: $9E
    cp a                                          ; $4B6E: $BF
    ldh [$FFE0], a                                ; $4B6F: $E0 $E0
    add b                                         ; $4B71: $80
    cp [hl]                                       ; $4B72: $BE
    nop                                           ; $4B73: $00
    rst RST_38                                    ; $4B74: $FF
    ld c, $4F                                     ; $4B75: $0E $4F
    or [hl]                                       ; $4B77: $B6
    ld c, a                                       ; $4B78: $4F

jr_00E_4B79:
    or [hl]                                       ; $4B79: $B6
    cp $0C                                        ; $4B7A: $FE $0C
    ld a, [hl]                                    ; $4B7C: $7E
    inc a                                         ; $4B7D: $3C
    ld l, h                                       ; $4B7E: $6C
    jr c, jr_00E_4BF9                             ; $4B7F: $38 $78

    jr nc, jr_00E_4BF6                            ; $4B81: $30 $73

    jr nz, jr_00E_4C04                            ; $4B83: $20 $7F

    inc bc                                        ; $4B85: $03
    ld a, l                                       ; $4B86: $7D
    dec sp                                        ; $4B87: $3B
    ld a, [hl]                                    ; $4B88: $7E
    dec a                                         ; $4B89: $3D
    ccf                                           ; $4B8A: $3F
    ld e, $1E                                     ; $4B8B: $1E $1E
    nop                                           ; $4B8D: $00
    nop                                           ; $4B8E: $00
    nop                                           ; $4B8F: $00
    nop                                           ; $4B90: $00

jr_00E_4B91:
    nop                                           ; $4B91: $00
    nop                                           ; $4B92: $00
    nop                                           ; $4B93: $00
    nop                                           ; $4B94: $00
    nop                                           ; $4B95: $00
    nop                                           ; $4B96: $00

jr_00E_4B97:
    nop                                           ; $4B97: $00
    nop                                           ; $4B98: $00
    nop                                           ; $4B99: $00
    nop                                           ; $4B9A: $00
    nop                                           ; $4B9B: $00
    nop                                           ; $4B9C: $00
    nop                                           ; $4B9D: $00
    nop                                           ; $4B9E: $00
    nop                                           ; $4B9F: $00
    ccf                                           ; $4BA0: $3F
    nop                                           ; $4BA1: $00
    ld a, h                                       ; $4BA2: $7C
    inc bc                                        ; $4BA3: $03
    add a                                         ; $4BA4: $87
    ld a, e                                       ; $4BA5: $7B
    add a                                         ; $4BA6: $87
    ld a, d                                       ; $4BA7: $7A
    and $99                                       ; $4BA8: $E6 $99
    db $FC                                        ; $4BAA: $FC
    ld h, e                                       ; $4BAB: $63
    ld a, b                                       ; $4BAC: $78
    rla                                           ; $4BAD: $17
    inc e                                         ; $4BAE: $1C
    inc bc                                        ; $4BAF: $03
    ccf                                           ; $4BB0: $3F
    db $10                                        ; $4BB1: $10
    ccf                                           ; $4BB2: $3F
    ld de, $1E3F                                  ; $4BB3: $11 $3F $1E
    rra                                           ; $4BB6: $1F
    ld c, $0E                                     ; $4BB7: $0E $0E
    nop                                           ; $4BB9: $00
    nop                                           ; $4BBA: $00

jr_00E_4BBB:
    nop                                           ; $4BBB: $00
    nop                                           ; $4BBC: $00
    nop                                           ; $4BBD: $00
    nop                                           ; $4BBE: $00
    nop                                           ; $4BBF: $00
    ldh a, [rP1]                                  ; $4BC0: $F0 $00
    jr nz, @-$3E                                  ; $4BC2: $20 $C0

    rst RST_38                                    ; $4BC4: $FF
    ret nz                                        ; $4BC5: $C0

    di                                            ; $4BC6: $F3
    rra                                           ; $4BC7: $1F
    ld [hl], a                                    ; $4BC8: $77
    cp a                                          ; $4BC9: $BF
    ld [hl], a                                    ; $4BCA: $77
    sbc [hl]                                      ; $4BCB: $9E
    ld a, [hl]                                    ; $4BCC: $7E
    adc h                                         ; $4BCD: $8C
    db $FC                                        ; $4BCE: $FC
    ld b, b                                       ; $4BCF: $40
    ld hl, sp-$70                                 ; $4BD0: $F8 $90
    db $FC                                        ; $4BD2: $FC
    jr c, jr_00E_4B91                             ; $4BD3: $38 $BC

    ld a, b                                       ; $4BD5: $78
    ld c, h                                       ; $4BD6: $4C
    jr c, jr_00E_4C05                             ; $4BD7: $38 $2C

    jr jr_00E_4BF7                                ; $4BD9: $18 $1C

    nop                                           ; $4BDB: $00
    nop                                           ; $4BDC: $00
    nop                                           ; $4BDD: $00
    nop                                           ; $4BDE: $00
    nop                                           ; $4BDF: $00
    ld l, h                                       ; $4BE0: $6C
    jr c, jr_00E_4BBB                             ; $4BE1: $38 $D8

    ld [hl], b                                    ; $4BE3: $70
    ldh a, [$FF60]                                ; $4BE4: $F0 $60
    ldh [$FFC0], a                                ; $4BE6: $E0 $C0
    ret nz                                        ; $4BE8: $C0

    nop                                           ; $4BE9: $00
    add b                                         ; $4BEA: $80
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

jr_00E_4BF6:
    nop                                           ; $4BF6: $00

jr_00E_4BF7:
    nop                                           ; $4BF7: $00
    nop                                           ; $4BF8: $00

jr_00E_4BF9:
    nop                                           ; $4BF9: $00
    nop                                           ; $4BFA: $00
    nop                                           ; $4BFB: $00
    nop                                           ; $4BFC: $00
    nop                                           ; $4BFD: $00
    nop                                           ; $4BFE: $00
    nop                                           ; $4BFF: $00
    db $FC                                        ; $4C00: $FC
    nop                                           ; $4C01: $00
    and $7C                                       ; $4C02: $E6 $7C

jr_00E_4C04:
    ld a, a                                       ; $4C04: $7F

jr_00E_4C05:
    ld e, $3F                                     ; $4C05: $1E $3F
    dec e                                         ; $4C07: $1D
    ld a, a                                       ; $4C08: $7F
    jr nz, jr_00E_4C8A                            ; $4C09: $20 $7F

    ld bc, $0001                                  ; $4C0B: $01 $01 $00
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
    nop                                           ; $4C2A: $00
    nop                                           ; $4C2B: $00
    nop                                           ; $4C2C: $00
    nop                                           ; $4C2D: $00
    nop                                           ; $4C2E: $00
    nop                                           ; $4C2F: $00
    rlca                                          ; $4C30: $07
    nop                                           ; $4C31: $00
    db $EB                                        ; $4C32: $EB
    rlca                                          ; $4C33: $07
    sbc a                                         ; $4C34: $9F
    ldh [$FFE3], a                                ; $4C35: $E0 $E3
    ld a, a                                       ; $4C37: $7F
    rst RST_38                                    ; $4C38: $FF
    sbc a                                         ; $4C39: $9F
    rst RST_38                                    ; $4C3A: $FF
    rlca                                          ; $4C3B: $07
    rlca                                          ; $4C3C: $07
    ld bc, $0001                                  ; $4C3D: $01 $01 $00
    inc b                                         ; $4C40: $04
    nop                                           ; $4C41: $00
    ld a, [bc]                                    ; $4C42: $0A
    inc b                                         ; $4C43: $04
    ld de, $110E                                  ; $4C44: $11 $0E $11
    ld c, $B0                                     ; $4C47: $0E $B0
    rra                                           ; $4C49: $1F
    cp c                                          ; $4C4A: $B9
    ld b, $EF                                     ; $4C4B: $06 $EF
    ld de, $A6FF                                  ; $4C4D: $11 $FF $A6
    rst RST_38                                    ; $4C50: $FF
    add b                                         ; $4C51: $80
    adc c                                         ; $4C52: $89
    halt                                          ; $4C53: $76
    sub b                                         ; $4C54: $90
    ld l, a                                       ; $4C55: $6F
    ret nc                                        ; $4C56: $D0

    cpl                                           ; $4C57: $2F
    ld [hl], b                                    ; $4C58: $70
    rrca                                          ; $4C59: $0F
    ld c, c                                       ; $4C5A: $49
    ld [hl], $2F                                  ; $4C5B: $36 $2F
    db $10                                        ; $4C5D: $10
    ld h, $19                                     ; $4C5E: $26 $19
    rlca                                          ; $4C60: $07
    nop                                           ; $4C61: $00
    dec de                                        ; $4C62: $1B
    ld b, $1E                                     ; $4C63: $06 $1E
    ld [$102F], sp                                ; $4C65: $08 $2F $10
    dec hl                                        ; $4C68: $2B
    ld e, $AE                                     ; $4C69: $1E $AE
    db $10                                        ; $4C6B: $10
    cp e                                          ; $4C6C: $BB
    ld e, $DF                                     ; $4C6D: $1E $DF
    or b                                          ; $4C6F: $B0
    ret c                                         ; $4C70: $D8

    or b                                          ; $4C71: $B0
    ret nc                                        ; $4C72: $D0

    and b                                         ; $4C73: $A0
    ldh a, [rLCDC]                                ; $4C74: $F0 $40
    ldh a, [$FF60]                                ; $4C76: $F0 $60
    ldh a, [$FF60]                                ; $4C78: $F0 $60
    ldh a, [$FF60]                                ; $4C7A: $F0 $60
    ldh a, [$FF80]                                ; $4C7C: $F0 $80
    sub b                                         ; $4C7E: $90
    ld h, b                                       ; $4C7F: $60
    ld sp, $F7CE                                  ; $4C80: $31 $CE $F7
    add hl, bc                                    ; $4C83: $09
    rra                                           ; $4C84: $1F
    ld b, $06                                     ; $4C85: $06 $06
    ld bc, $0102                                  ; $4C87: $01 $02 $01

jr_00E_4C8A:
    ld bc, $0000                                  ; $4C8A: $01 $00 $00
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
    ret nz                                        ; $4CA0: $C0

    nop                                           ; $4CA1: $00
    ldh a, [rP1]                                  ; $4CA2: $F0 $00
    ld a, h                                       ; $4CA4: $7C
    add b                                         ; $4CA5: $80
    rra                                           ; $4CA6: $1F
    db $EC                                        ; $4CA7: $EC
    rra                                           ; $4CA8: $1F
    db $E3                                        ; $4CA9: $E3
    sbc a                                         ; $4CAA: $9F
    ld l, l                                       ; $4CAB: $6D
    ld a, a                                       ; $4CAC: $7F
    ld e, $6F                                     ; $4CAD: $1E $6F
    ccf                                           ; $4CAF: $3F
    db $EB                                        ; $4CB0: $EB
    ld a, a                                       ; $4CB1: $7F
    rst RST_38                                    ; $4CB2: $FF
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
    jr nc, jr_00E_4CC2                            ; $4CC0: $30 $00

jr_00E_4CC2:
    ldh a, [rNR41]                                ; $4CC2: $F0 $20
    ld hl, sp-$50                                 ; $4CC4: $F8 $B0
    ld hl, sp+$70                                 ; $4CC6: $F8 $70
    db $FC                                        ; $4CC8: $FC
    ld l, b                                       ; $4CC9: $68
    cp $94                                        ; $4CCA: $FE $94
    cp $D8                                        ; $4CCC: $FE $D8
    db $FC                                        ; $4CCE: $FC
    jr jr_00E_4D4F                                ; $4CCF: $18 $7E

    inc a                                         ; $4CD1: $3C
    sbc [hl]                                      ; $4CD2: $9E
    ld a, h                                       ; $4CD3: $7C
    rst RST_28                                    ; $4CD4: $EF
    ld e, $1F                                     ; $4CD5: $1E $1F
    ld b, $07                                     ; $4CD7: $06 $07
    nop                                           ; $4CD9: $00
    nop                                           ; $4CDA: $00
    nop                                           ; $4CDB: $00
    nop                                           ; $4CDC: $00
    nop                                           ; $4CDD: $00
    nop                                           ; $4CDE: $00
    nop                                           ; $4CDF: $00
    inc bc                                        ; $4CE0: $03
    nop                                           ; $4CE1: $00
    inc bc                                        ; $4CE2: $03
    ld bc, $0103                                  ; $4CE3: $01 $03 $01
    rlca                                          ; $4CE6: $07
    inc bc                                        ; $4CE7: $03
    rlca                                          ; $4CE8: $07
    inc bc                                        ; $4CE9: $03
    rlca                                          ; $4CEA: $07
    inc bc                                        ; $4CEB: $03
    rrca                                          ; $4CEC: $0F
    ld bc, $0C7B                                  ; $4CED: $01 $7B $0C
    ld l, a                                       ; $4CF0: $6F
    add hl, sp                                    ; $4CF1: $39
    rst RST_30                                    ; $4CF2: $F7
    add hl, de                                    ; $4CF3: $19
    bit 6, c                                      ; $4CF4: $CB $71
    ld l, e                                       ; $4CF6: $6B
    ld sp, $60D1                                  ; $4CF7: $31 $D1 $60
    pop hl                                        ; $4CFA: $E1
    nop                                           ; $4CFB: $00
    nop                                           ; $4CFC: $00
    nop                                           ; $4CFD: $00
    nop                                           ; $4CFE: $00

Jump_00E_4CFF:
    nop                                           ; $4CFF: $00
    inc bc                                        ; $4D00: $03
    nop                                           ; $4D01: $00
    ld c, $01                                     ; $4D02: $0E $01
    ld a, $05                                     ; $4D04: $3E $05
    add $39                                       ; $4D06: $C6 $39
    ldh a, [c]                                    ; $4D08: $F2
    adc l                                         ; $4D09: $8D
    db $FD                                        ; $4D0A: $FD
    ret nz                                        ; $4D0B: $C0

    rst RST_08                                    ; $4D0C: $CF
    or h                                          ; $4D0D: $B4
    add h                                         ; $4D0E: $84
    ld a, e                                       ; $4D0F: $7B
    add h                                         ; $4D10: $84
    ld a, e                                       ; $4D11: $7B
    add h                                         ; $4D12: $84
    ld a, e                                       ; $4D13: $7B
    swap h                                        ; $4D14: $CB $34
    cp $88                                        ; $4D16: $FE $88
    db $FC                                        ; $4D18: $FC

jr_00E_4D19:
    jr z, jr_00E_4D19                             ; $4D19: $28 $FE

    ld h, h                                       ; $4D1B: $64
    or $88                                        ; $4D1C: $F6 $88
    sbc h                                         ; $4D1E: $9C
    ld h, b                                       ; $4D1F: $60
    ld b, $00                                     ; $4D20: $06 $00
    ld h, a                                       ; $4D22: $67
    ld [bc], a                                    ; $4D23: $02
    ld d, a                                       ; $4D24: $57
    ld [hl+], a                                   ; $4D25: $22
    ld l, [hl]                                    ; $4D26: $6E
    scf                                           ; $4D27: $37
    ld a, [hl]                                    ; $4D28: $7E
    scf                                           ; $4D29: $37
    ld a, a                                       ; $4D2A: $7F
    scf                                           ; $4D2B: $37
    ld a, a                                       ; $4D2C: $7F
    cpl                                           ; $4D2D: $2F
    rst RST_38                                    ; $4D2E: $FF
    jr z, jr_00E_4DAF                             ; $4D2F: $28 $7E

    sub h                                         ; $4D31: $94
    ld a, $CC                                     ; $4D32: $3E $CC
    ld a, $CC                                     ; $4D34: $3E $CC
    ld a, $DC                                     ; $4D36: $3E $DC
    inc [hl]                                      ; $4D38: $34
    ret c                                         ; $4D39: $D8

    db $FC                                        ; $4D3A: $FC

jr_00E_4D3B:
    jr jr_00E_4D3B                                ; $4D3B: $18 $FE

    ld h, h                                       ; $4D3D: $64
    cp $78                                        ; $4D3E: $FE $78
    inc c                                         ; $4D40: $0C
    ld hl, sp-$78                                 ; $4D41: $F8 $88
    ld [hl], b                                    ; $4D43: $70
    adc b                                         ; $4D44: $88
    ld [hl], b                                    ; $4D45: $70
    ld d, b                                       ; $4D46: $50
    jr nz, jr_00E_4D69                            ; $4D47: $20 $20

    nop                                           ; $4D49: $00
    nop                                           ; $4D4A: $00
    nop                                           ; $4D4B: $00
    nop                                           ; $4D4C: $00
    nop                                           ; $4D4D: $00
    nop                                           ; $4D4E: $00

jr_00E_4D4F:
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
    nop                                           ; $4D5E: $00
    nop                                           ; $4D5F: $00
    rst RST_38                                    ; $4D60: $FF
    halt                                          ; $4D61: $76
    ld sp, hl                                     ; $4D62: $F9
    xor $FE                                       ; $4D63: $EE $FE
    jr nc, jr_00E_4DA3                            ; $4D65: $30 $3C

    nop                                           ; $4D67: $00
    nop                                           ; $4D68: $00

jr_00E_4D69:
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
    nop                                           ; $4D80: $00
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
    add b                                         ; $4D96: $80
    nop                                           ; $4D97: $00
    add b                                         ; $4D98: $80
    nop                                           ; $4D99: $00
    ld b, b                                       ; $4D9A: $40
    add b                                         ; $4D9B: $80
    ld b, b                                       ; $4D9C: $40
    add b                                         ; $4D9D: $80
    ret nz                                        ; $4D9E: $C0

    nop                                           ; $4D9F: $00
    nop                                           ; $4DA0: $00
    nop                                           ; $4DA1: $00
    nop                                           ; $4DA2: $00

jr_00E_4DA3:
    nop                                           ; $4DA3: $00
    nop                                           ; $4DA4: $00
    nop                                           ; $4DA5: $00
    nop                                           ; $4DA6: $00
    nop                                           ; $4DA7: $00
    rlca                                          ; $4DA8: $07
    nop                                           ; $4DA9: $00
    add hl, de                                    ; $4DAA: $19
    ld b, $67                                     ; $4DAB: $06 $67
    ld e, $FF                                     ; $4DAD: $1E $FF

jr_00E_4DAF:
    ld a, [hl]                                    ; $4DAF: $7E
    rst RST_38                                    ; $4DB0: $FF
    ld e, $1F                                     ; $4DB1: $1E $1F
    inc bc                                        ; $4DB3: $03
    cpl                                           ; $4DB4: $2F
    inc e                                         ; $4DB5: $1C
    ld e, a                                       ; $4DB6: $5F
    ccf                                           ; $4DB7: $3F
    ld a, a                                       ; $4DB8: $7F
    nop                                           ; $4DB9: $00
    ld bc, $0100                                  ; $4DBA: $01 $00 $01
    nop                                           ; $4DBD: $00
    ld bc, $0000                                  ; $4DBE: $01 $00 $00
    nop                                           ; $4DC1: $00
    nop                                           ; $4DC2: $00
    nop                                           ; $4DC3: $00
    di                                            ; $4DC4: $F3
    nop                                           ; $4DC5: $00
    rst RST_38                                    ; $4DC6: $FF
    ldh a, [c]                                    ; $4DC7: $F2
    rst RST_30                                    ; $4DC8: $F7
    ld a, l                                       ; $4DC9: $7D
    rst RST_38                                    ; $4DCA: $FF
    sbc l                                         ; $4DCB: $9D
    rst RST_38                                    ; $4DCC: $FF
    inc bc                                        ; $4DCD: $03
    add a                                         ; $4DCE: $87
    ld a, e                                       ; $4DCF: $7B
    rlca                                          ; $4DD0: $07
    ld hl, sp+$0C                                 ; $4DD1: $F8 $0C
    di                                            ; $4DD3: $F3
    db $F4                                        ; $4DD4: $F4
    inc bc                                        ; $4DD5: $03
    rst RST_28                                    ; $4DD6: $EF
    ld d, h                                       ; $4DD7: $54
    call z, Call_00E_5833                         ; $4DD8: $CC $33 $58
    daa                                           ; $4DDB: $27
    ld e, b                                       ; $4DDC: $58
    daa                                           ; $4DDD: $27
    inc a                                         ; $4DDE: $3C
    dec bc                                        ; $4DDF: $0B
    nop                                           ; $4DE0: $00
    nop                                           ; $4DE1: $00
    ret nz                                        ; $4DE2: $C0

    nop                                           ; $4DE3: $00
    and b                                         ; $4DE4: $A0
    ret nz                                        ; $4DE5: $C0

    or b                                          ; $4DE6: $B0
    ret nz                                        ; $4DE7: $C0

    ldh a, [rLCDC]                                ; $4DE8: $F0 $40
    ldh a, [$FFA0]                                ; $4DEA: $F0 $A0
    ldh a, [$FFE0]                                ; $4DEC: $F0 $E0
    ldh [$FFC0], a                                ; $4DEE: $E0 $C0
    ldh [rLCDC], a                                ; $4DF0: $E0 $40
    ld b, b                                       ; $4DF2: $40
    add b                                         ; $4DF3: $80
    ld l, h                                       ; $4DF4: $6C
    add b                                         ; $4DF5: $80
    cp a                                          ; $4DF6: $BF
    ld c, b                                       ; $4DF7: $48
    ld a, e                                       ; $4DF8: $7B
    or l                                          ; $4DF9: $B5
    ld a, $C1                                     ; $4DFA: $3E $C1
    inc a                                         ; $4DFC: $3C
    db $DB                                        ; $4DFD: $DB
    ld a, h                                       ; $4DFE: $7C
    adc e                                         ; $4DFF: $8B
    rst RST_38                                    ; $4E00: $FF
    ld [hl], b                                    ; $4E01: $70
    rst RST_38                                    ; $4E02: $FF
    ld a, [hl]                                    ; $4E03: $7E
    rst RST_38                                    ; $4E04: $FF
    inc e                                         ; $4E05: $1C
    ld e, $01                                     ; $4E06: $1E $01
    inc bc                                        ; $4E08: $03
    ld bc, $0001                                  ; $4E09: $01 $01 $00
    ld bc, $0100                                  ; $4E0C: $01 $00 $01
    nop                                           ; $4E0F: $00
    nop                                           ; $4E10: $00
    nop                                           ; $4E11: $00
    nop                                           ; $4E12: $00
    nop                                           ; $4E13: $00
    nop                                           ; $4E14: $00
    nop                                           ; $4E15: $00
    nop                                           ; $4E16: $00
    nop                                           ; $4E17: $00
    nop                                           ; $4E18: $00
    nop                                           ; $4E19: $00
    nop                                           ; $4E1A: $00
    nop                                           ; $4E1B: $00

jr_00E_4E1C:
    nop                                           ; $4E1C: $00
    nop                                           ; $4E1D: $00
    nop                                           ; $4E1E: $00
    nop                                           ; $4E1F: $00
    ei                                            ; $4E20: $FB
    sub h                                         ; $4E21: $94
    db $FC                                        ; $4E22: $FC
    ldh a, [$FFF0]                                ; $4E23: $F0 $F0
    nop                                           ; $4E25: $00
    ret nz                                        ; $4E26: $C0

    nop                                           ; $4E27: $00
    or b                                          ; $4E28: $B0
    ret nz                                        ; $4E29: $C0

    ld c, b                                       ; $4E2A: $48
    ldh a, [$FFD4]                                ; $4E2B: $F0 $D4
    cp b                                          ; $4E2D: $B8
    db $FC                                        ; $4E2E: $FC
    jr z, @+$6E                                   ; $4E2F: $28 $6C

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
    nop                                           ; $4E52: $00
    nop                                           ; $4E53: $00
    nop                                           ; $4E54: $00
    nop                                           ; $4E55: $00
    nop                                           ; $4E56: $00
    nop                                           ; $4E57: $00
    ret nz                                        ; $4E58: $C0

    nop                                           ; $4E59: $00
    jr nz, jr_00E_4E1C                            ; $4E5A: $20 $C0

    db $10                                        ; $4E5C: $10
    ldh [rNR41], a                                ; $4E5D: $E0 $20
    ret nz                                        ; $4E5F: $C0

    ld bc, $0100                                  ; $4E60: $01 $00 $01
    nop                                           ; $4E63: $00
    inc bc                                        ; $4E64: $03
    nop                                           ; $4E65: $00
    ld [bc], a                                    ; $4E66: $02
    ld bc, $03E4                                  ; $4E67: $01 $E4 $03
    reti                                          ; $4E6A: $D9


    ld h, a                                       ; $4E6B: $67
    ld a, e                                       ; $4E6C: $7B
    rla                                           ; $4E6D: $17
    rst RST_30                                    ; $4E6E: $F7
    ld a, [bc]                                    ; $4E6F: $0A
    jp c, Jump_00E_7F75                           ; $4E70: $DA $75 $7F

    ld [bc], a                                    ; $4E73: $02
    rst RST_18                                    ; $4E74: $DF
    ld l, b                                       ; $4E75: $68
    rst RST_38                                    ; $4E76: $FF
    ld [bc], a                                    ; $4E77: $02
    ccf                                           ; $4E78: $3F
    nop                                           ; $4E79: $00
    ld e, h                                       ; $4E7A: $5C
    dec hl                                        ; $4E7B: $2B
    ld c, b                                       ; $4E7C: $48
    scf                                           ; $4E7D: $37
    ld c, b                                       ; $4E7E: $48
    scf                                           ; $4E7F: $37
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
    inc c                                         ; $4E8A: $0C

jr_00E_4E8B:
    nop                                           ; $4E8B: $00
    inc e                                         ; $4E8C: $1C
    ld [$1C2E], sp                                ; $4E8D: $08 $2E $1C
    ld l, $1C                                     ; $4E90: $2E $1C
    ld e, [hl]                                    ; $4E92: $5E
    inc a                                         ; $4E93: $3C
    ld a, [hl]                                    ; $4E94: $7E
    inc a                                         ; $4E95: $3C
    ld a, h                                       ; $4E96: $7C
    jr jr_00E_4F15                                ; $4E97: $18 $7C

    jr nz, jr_00E_4E8B                            ; $4E99: $20 $F0

    ld h, b                                       ; $4E9B: $60
    ldh a, [$FF60]                                ; $4E9C: $F0 $60
    ldh [$FFC0], a                                ; $4E9E: $E0 $C0
    nop                                           ; $4EA0: $00
    nop                                           ; $4EA1: $00
    nop                                           ; $4EA2: $00
    nop                                           ; $4EA3: $00
    nop                                           ; $4EA4: $00
    nop                                           ; $4EA5: $00
    nop                                           ; $4EA6: $00
    nop                                           ; $4EA7: $00
    nop                                           ; $4EA8: $00
    nop                                           ; $4EA9: $00
    nop                                           ; $4EAA: $00
    nop                                           ; $4EAB: $00
    nop                                           ; $4EAC: $00
    nop                                           ; $4EAD: $00
    ld b, $00                                     ; $4EAE: $06 $00
    ld c, $04                                     ; $4EB0: $0E $04
    rla                                           ; $4EB2: $17
    ld c, $17                                     ; $4EB3: $0E $17
    ld c, $2F                                     ; $4EB5: $0E $2F
    ld [de], a                                    ; $4EB7: $12
    ccf                                           ; $4EB8: $3F
    ld [de], a                                    ; $4EB9: $12
    ld a, $0C                                     ; $4EBA: $3E $0C
    ld a, $10                                     ; $4EBC: $3E $10
    ld a, b                                       ; $4EBE: $78
    jr nc, jr_00E_4F22                            ; $4EBF: $30 $61

    ret nz                                        ; $4EC1: $C0

    pop hl                                        ; $4EC2: $E1
    ret nz                                        ; $4EC3: $C0

    ldh [c], a                                    ; $4EC4: $E2
    ld b, c                                       ; $4EC5: $41
    ld b, d                                       ; $4EC6: $42
    add c                                         ; $4EC7: $81
    daa                                           ; $4EC8: $27
    jp $C337                                      ; $4EC9: $C3 $37 $C3


    rst RST_10                                    ; $4ECC: $D7
    jr nz, jr_00E_4F43                            ; $4ECD: $20 $74

    add e                                         ; $4ECF: $83
    ld hl, sp+$47                                 ; $4ED0: $F8 $47
    db $FC                                        ; $4ED2: $FC

jr_00E_4ED3:
    or e                                          ; $4ED3: $B3
    di                                            ; $4ED4: $F3
    xor h                                         ; $4ED5: $AC
    pop hl                                        ; $4ED6: $E1
    ld e, $E1                                     ; $4ED7: $1E $E1
    ld e, [hl]                                    ; $4ED9: $5E
    pop hl                                        ; $4EDA: $E1
    ld e, [hl]                                    ; $4EDB: $5E
    ldh a, [c]                                    ; $4EDC: $F2
    ld l, h                                       ; $4EDD: $6C
    db $FC                                        ; $4EDE: $FC
    ld [hl], b                                    ; $4EDF: $70
    ld a, b                                       ; $4EE0: $78
    jr nc, jr_00E_4ED3                            ; $4EE1: $30 $F0

    ld h, b                                       ; $4EE3: $60
    or b                                          ; $4EE4: $B0
    ld h, b                                       ; $4EE5: $60
    ld [hl], b                                    ; $4EE6: $70
    ldh [rSVBK], a                                ; $4EE7: $E0 $70
    ldh [$FF73], a                                ; $4EE9: $E0 $73
    ret nz                                        ; $4EEB: $C0

jr_00E_4EEC:
    db $FD                                        ; $4EEC: $FD
    db $D3                                        ; $4EED: $D3
    rst RST_38                                    ; $4EEE: $FF
    call nc, $D0FF                                ; $4EEF: $D4 $FF $D0
    db $FD                                        ; $4EF2: $FD
    add a                                         ; $4EF3: $87
    rst RST_18                                    ; $4EF4: $DF
    jr nc, jr_00E_4EEC                            ; $4EF5: $30 $F5

    ld c, a                                       ; $4EF7: $4F
    rst RST_18                                    ; $4EF8: $DF
    ld [hl], b                                    ; $4EF9: $70
    ldh a, [$FFC0]                                ; $4EFA: $F0 $C0
    ret nz                                        ; $4EFC: $C0

    add b                                         ; $4EFD: $80
    add b                                         ; $4EFE: $80
    nop                                           ; $4EFF: $00
    dec b                                         ; $4F00: $05
    ld [bc], a                                    ; $4F01: $02
    inc bc                                        ; $4F02: $03
    nop                                           ; $4F03: $00
    nop                                           ; $4F04: $00
    nop                                           ; $4F05: $00
    dec sp                                        ; $4F06: $3B
    nop                                           ; $4F07: $00
    ccf                                           ; $4F08: $3F
    jr jr_00E_4F4A                                ; $4F09: $18 $3F

    rra                                           ; $4F0B: $1F
    dec de                                        ; $4F0C: $1B
    rrca                                          ; $4F0D: $0F
    ld e, $01                                     ; $4F0E: $1E $01
    dec a                                         ; $4F10: $3D
    ld a, [de]                                    ; $4F11: $1A
    ld a, $1D                                     ; $4F12: $3E $1D
    daa                                           ; $4F14: $27

jr_00E_4F15:
    ld e, $3F                                     ; $4F15: $1E $3F
    ld e, $2F                                     ; $4F17: $1E $2F
    ld e, $3E                                     ; $4F19: $1E $3E
    inc e                                         ; $4F1B: $1C
    inc a                                         ; $4F1C: $3C
    jr jr_00E_4F5B                                ; $4F1D: $18 $3C

    jr @-$2F                                      ; $4F1F: $18 $CF

    or a                                          ; $4F21: $B7

jr_00E_4F22:
    rst RST_38                                    ; $4F22: $FF
    nop                                           ; $4F23: $00
    add d                                         ; $4F24: $82
    ld a, h                                       ; $4F25: $7C
    db $FC                                        ; $4F26: $FC
    nop                                           ; $4F27: $00
    jr c, @-$3E                                   ; $4F28: $38 $C0

    adc b                                         ; $4F2A: $88
    ld [hl], b                                    ; $4F2B: $70
    ret z                                         ; $4F2C: $C8

    or b                                          ; $4F2D: $B0
    db $FC                                        ; $4F2E: $FC
    ret z                                         ; $4F2F: $C8

    db $FC                                        ; $4F30: $FC
    ld l, b                                       ; $4F31: $68
    cp $1C                                        ; $4F32: $FE $1C
    ld e, [hl]                                    ; $4F34: $5E
    inc a                                         ; $4F35: $3C
    ld l, $1C                                     ; $4F36: $2E $1C
    rla                                           ; $4F38: $17
    ld c, $0F                                     ; $4F39: $0E $0F
    ld b, $07                                     ; $4F3B: $06 $07
    nop                                           ; $4F3D: $00
    nop                                           ; $4F3E: $00
    nop                                           ; $4F3F: $00
    ld a, $04                                     ; $4F40: $3E $04
    cpl                                           ; $4F42: $2F

jr_00E_4F43:
    ld [de], a                                    ; $4F43: $12
    cpl                                           ; $4F44: $2F
    ld e, $2E                                     ; $4F45: $1E $2E
    inc e                                         ; $4F47: $1C
    ld a, $1C                                     ; $4F48: $3E $1C

jr_00E_4F4A:
    ld a, h                                       ; $4F4A: $7C
    jr c, jr_00E_4FC5                             ; $4F4B: $38 $78

    jr nc, jr_00E_4FBF                            ; $4F4D: $30 $70

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

jr_00E_4F5B:
    nop                                           ; $4F5B: $00
    nop                                           ; $4F5C: $00
    nop                                           ; $4F5D: $00
    nop                                           ; $4F5E: $00
    nop                                           ; $4F5F: $00
    nop                                           ; $4F60: $00
    nop                                           ; $4F61: $00
    nop                                           ; $4F62: $00
    nop                                           ; $4F63: $00
    nop                                           ; $4F64: $00
    nop                                           ; $4F65: $00
    nop                                           ; $4F66: $00
    nop                                           ; $4F67: $00
    nop                                           ; $4F68: $00
    nop                                           ; $4F69: $00
    nop                                           ; $4F6A: $00
    nop                                           ; $4F6B: $00
    nop                                           ; $4F6C: $00
    nop                                           ; $4F6D: $00
    nop                                           ; $4F6E: $00
    nop                                           ; $4F6F: $00
    add b                                         ; $4F70: $80
    nop                                           ; $4F71: $00
    add b                                         ; $4F72: $80
    nop                                           ; $4F73: $00
    nop                                           ; $4F74: $00
    nop                                           ; $4F75: $00
    add b                                         ; $4F76: $80
    nop                                           ; $4F77: $00
    add b                                         ; $4F78: $80
    nop                                           ; $4F79: $00
    nop                                           ; $4F7A: $00
    nop                                           ; $4F7B: $00
    add b                                         ; $4F7C: $80
    nop                                           ; $4F7D: $00
    add b                                         ; $4F7E: $80
    nop                                           ; $4F7F: $00
    ld l, $14                                     ; $4F80: $2E $14
    rra                                           ; $4F82: $1F
    inc b                                         ; $4F83: $04
    rra                                           ; $4F84: $1F
    inc c                                         ; $4F85: $0C
    ccf                                           ; $4F86: $3F
    db $10                                        ; $4F87: $10
    dec sp                                        ; $4F88: $3B
    rrca                                          ; $4F89: $0F
    inc a                                         ; $4F8A: $3C
    rla                                           ; $4F8B: $17
    ld e, $03                                     ; $4F8C: $1E $03
    inc bc                                        ; $4F8E: $03
    ld bc, $0001                                  ; $4F8F: $01 $01 $00
    nop                                           ; $4F92: $00
    nop                                           ; $4F93: $00
    rrca                                          ; $4F94: $0F
    nop                                           ; $4F95: $00
    rra                                           ; $4F96: $1F
    ld c, $F3                                     ; $4F97: $0E $F3
    rra                                           ; $4F99: $1F
    db $FD                                        ; $4F9A: $FD
    ld l, a                                       ; $4F9B: $6F
    ld a, a                                       ; $4F9C: $7F
    rra                                           ; $4F9D: $1F
    rra                                           ; $4F9E: $1F
    inc c                                         ; $4F9F: $0C
    ld [bc], a                                    ; $4FA0: $02
    nop                                           ; $4FA1: $00
    push bc                                       ; $4FA2: $C5
    ld [bc], a                                    ; $4FA3: $02
    cp b                                          ; $4FA4: $B8
    rst RST_00                                    ; $4FA5: $C7
    ld a, [$FE27]                                 ; $4FA6: $FA $27 $FE
    dec bc                                        ; $4FA9: $0B
    rst RST_38                                    ; $4FAA: $FF
    ldh [$FFFE], a                                ; $4FAB: $E0 $FE
    sbc l                                         ; $4FAD: $9D
    rst RST_38                                    ; $4FAE: $FF
    and h                                         ; $4FAF: $A4
    cp $D5                                        ; $4FB0: $FE $D5
    db $FC                                        ; $4FB2: $FC
    dec hl                                        ; $4FB3: $2B
    ld a, h                                       ; $4FB4: $7C
    sbc e                                         ; $4FB5: $9B
    cp [hl]                                       ; $4FB6: $BE
    ld b, c                                       ; $4FB7: $41
    db $FD                                        ; $4FB8: $FD
    ld a, [hl-]                                   ; $4FB9: $3A
    rst RST_38                                    ; $4FBA: $FF
    ld c, h                                       ; $4FBB: $4C
    rst RST_38                                    ; $4FBC: $FF
    ld c, b                                       ; $4FBD: $48
    rst RST_38                                    ; $4FBE: $FF

jr_00E_4FBF:
    ld a, h                                       ; $4FBF: $7C
    nop                                           ; $4FC0: $00
    nop                                           ; $4FC1: $00
    nop                                           ; $4FC2: $00
    nop                                           ; $4FC3: $00
    add b                                         ; $4FC4: $80

jr_00E_4FC5:
    nop                                           ; $4FC5: $00
    ld b, e                                       ; $4FC6: $43
    add b                                         ; $4FC7: $80
    ld l, a                                       ; $4FC8: $6F
    add e                                         ; $4FC9: $83
    xor a                                         ; $4FCA: $AF
    ld b, [hl]                                    ; $4FCB: $46
    pop af                                        ; $4FCC: $F1
    rrca                                          ; $4FCD: $0F
    rst RST_30                                    ; $4FCE: $F7
    adc a                                         ; $4FCF: $8F
    di                                            ; $4FD0: $F3
    ld c, a                                       ; $4FD1: $4F
    ld c, a                                       ; $4FD2: $4F
    or [hl]                                       ; $4FD3: $B6
    add [hl]                                      ; $4FD4: $86
    ld a, b                                       ; $4FD5: $78
    add h                                         ; $4FD6: $84
    ld a, b                                       ; $4FD7: $78
    add h                                         ; $4FD8: $84
    ld a, b                                       ; $4FD9: $78
    ret z                                         ; $4FDA: $C8

    or b                                          ; $4FDB: $B0
    ldh a, [$FFC0]                                ; $4FDC: $F0 $C0
    ldh [rP1], a                                  ; $4FDE: $E0 $00
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
    ld c, $00                                     ; $4FEE: $0E $00
    ld [hl], $0C                                  ; $4FF0: $36 $0C
    call c, Call_00E_7E30                         ; $4FF2: $DC $30 $7E
    ret nz                                        ; $4FF5: $C0

    sub $3C                                       ; $4FF6: $D6 $3C
    ld a, h                                       ; $4FF8: $7C
    ret nz                                        ; $4FF9: $C0

    sub $3C                                       ; $4FFA: $D6 $3C
    ld a, [hl]                                    ; $4FFC: $7E
    ret nz                                        ; $4FFD: $C0

    ret nz                                        ; $4FFE: $C0

    nop                                           ; $4FFF: $00
    inc bc                                        ; $5000: $03
    nop                                           ; $5001: $00
    ld bc, $0100                                  ; $5002: $01 $00 $01
    nop                                           ; $5005: $00
    inc bc                                        ; $5006: $03
    ld bc, $0102                                  ; $5007: $01 $02 $01
    inc bc                                        ; $500A: $03
    ld bc, $0102                                  ; $500B: $01 $02 $01

jr_00E_500E:
    inc bc                                        ; $500E: $03
    ld bc, $030F                                  ; $500F: $01 $0F $03
    rla                                           ; $5012: $17
    ld a, [bc]                                    ; $5013: $0A
    rla                                           ; $5014: $17
    inc c                                         ; $5015: $0C
    cpl                                           ; $5016: $2F
    rra                                           ; $5017: $1F
    ld e, a                                       ; $5018: $5F
    inc a                                         ; $5019: $3C
    db $FC                                        ; $501A: $FC
    ld a, b                                       ; $501B: $78
    ld hl, sp+$00                                 ; $501C: $F8 $00
    nop                                           ; $501E: $00
    nop                                           ; $501F: $00
    rra                                           ; $5020: $1F
    nop                                           ; $5021: $00
    add a                                         ; $5022: $87
    inc bc                                        ; $5023: $03
    db $DB                                        ; $5024: $DB
    add l                                         ; $5025: $85
    db $E3                                        ; $5026: $E3
    sbc h                                         ; $5027: $9C
    ld h, d                                       ; $5028: $62
    db $DD                                        ; $5029: $DD
    cp $E1                                        ; $502A: $FE $E1
    ldh a, [c]                                    ; $502C: $F2
    pop hl                                        ; $502D: $E1
    rst RST_20                                    ; $502E: $E7
    add d                                         ; $502F: $82
    add a                                         ; $5030: $87
    inc bc                                        ; $5031: $03
    inc bc                                        ; $5032: $03
    ld bc, $0001                                  ; $5033: $01 $01 $00
    add b                                         ; $5036: $80
    nop                                           ; $5037: $00
    add b                                         ; $5038: $80
    nop                                           ; $5039: $00
    nop                                           ; $503A: $00
    nop                                           ; $503B: $00
    nop                                           ; $503C: $00
    nop                                           ; $503D: $00
    nop                                           ; $503E: $00
    nop                                           ; $503F: $00
    db $10                                        ; $5040: $10
    ldh [$FFE0], a                                ; $5041: $E0 $E0
    ret nz                                        ; $5043: $C0

    ldh [rP1], a                                  ; $5044: $E0 $00
    db $10                                        ; $5046: $10
    ldh [rNR10], a                                ; $5047: $E0 $10
    ldh [rNR41], a                                ; $5049: $E0 $20
    ret nz                                        ; $504B: $C0

    jr nc, jr_00E_500E                            ; $504C: $30 $C0

    ld hl, sp+$30                                 ; $504E: $F8 $30
    db $FC                                        ; $5050: $FC
    add sp, -$02                                  ; $5051: $E8 $FE
    call z, $1CEF                                 ; $5053: $CC $EF $1C
    rra                                           ; $5056: $1F
    ld bc, $0F1B                                  ; $5057: $01 $1B $0F
    inc sp                                        ; $505A: $33
    ld e, $6F                                     ; $505B: $1E $6F
    ld a, $7F                                     ; $505D: $3E $7F
    nop                                           ; $505F: $00
    add b                                         ; $5060: $80
    nop                                           ; $5061: $00
    add b                                         ; $5062: $80
    nop                                           ; $5063: $00
    add b                                         ; $5064: $80
    nop                                           ; $5065: $00
    nop                                           ; $5066: $00
    nop                                           ; $5067: $00
    nop                                           ; $5068: $00
    nop                                           ; $5069: $00
    nop                                           ; $506A: $00
    nop                                           ; $506B: $00
    nop                                           ; $506C: $00
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
    nop                                           ; $508E: $00
    nop                                           ; $508F: $00
    nop                                           ; $5090: $00
    nop                                           ; $5091: $00
    nop                                           ; $5092: $00
    nop                                           ; $5093: $00
    nop                                           ; $5094: $00
    nop                                           ; $5095: $00
    nop                                           ; $5096: $00
    nop                                           ; $5097: $00
    nop                                           ; $5098: $00
    nop                                           ; $5099: $00
    nop                                           ; $509A: $00
    nop                                           ; $509B: $00
    ld b, $00                                     ; $509C: $06 $00
    dec e                                         ; $509E: $1D
    ld [bc], a                                    ; $509F: $02
    rra                                           ; $50A0: $1F
    ld c, $F3                                     ; $50A1: $0E $F3
    rra                                           ; $50A3: $1F
    db $FD                                        ; $50A4: $FD
    ld l, a                                       ; $50A5: $6F
    ld a, a                                       ; $50A6: $7F
    rra                                           ; $50A7: $1F
    rra                                           ; $50A8: $1F
    inc c                                         ; $50A9: $0C
    dec c                                         ; $50AA: $0D
    inc bc                                        ; $50AB: $03
    rlca                                          ; $50AC: $07
    inc bc                                        ; $50AD: $03
    ld [bc], a                                    ; $50AE: $02
    ld bc, $0001                                  ; $50AF: $01 $01 $00

jr_00E_50B2:
    ld bc, $0200                                  ; $50B2: $01 $00 $02
    ld bc, $0304                                  ; $50B5: $01 $04 $03
    dec bc                                        ; $50B8: $0B
    rlca                                          ; $50B9: $07
    rra                                           ; $50BA: $1F
    rrca                                          ; $50BB: $0F
    rra                                           ; $50BC: $1F
    nop                                           ; $50BD: $00
    nop                                           ; $50BE: $00
    nop                                           ; $50BF: $00
    cp [hl]                                       ; $50C0: $BE
    ld b, c                                       ; $50C1: $41
    db $FD                                        ; $50C2: $FD
    ld a, [hl-]                                   ; $50C3: $3A
    rst RST_38                                    ; $50C4: $FF
    ld c, h                                       ; $50C5: $4C
    rst RST_38                                    ; $50C6: $FF
    ld c, b                                       ; $50C7: $48
    rst RST_38                                    ; $50C8: $FF
    ld a, h                                       ; $50C9: $7C
    db $FC                                        ; $50CA: $FC
    add e                                         ; $50CB: $83
    rst RST_28                                    ; $50CC: $EF
    call nc, $D6EF                                ; $50CD: $D4 $EF $D6
    xor $D5                                       ; $50D0: $EE $D5
    cp $45                                        ; $50D2: $FE $45
    rst RST_38                                    ; $50D4: $FF
    and b                                         ; $50D5: $A0
    rst RST_28                                    ; $50D6: $EF
    add l                                         ; $50D7: $85
    rst RST_28                                    ; $50D8: $EF
    jp nz, $E3F7                                  ; $50D9: $C2 $F7 $E3

    rst RST_30                                    ; $50DC: $F7
    nop                                           ; $50DD: $00
    nop                                           ; $50DE: $00
    nop                                           ; $50DF: $00
    add h                                         ; $50E0: $84
    ld a, b                                       ; $50E1: $78
    add h                                         ; $50E2: $84
    ld a, b                                       ; $50E3: $78
    ret z                                         ; $50E4: $C8

    or b                                          ; $50E5: $B0
    ldh a, [$FFC0]                                ; $50E6: $F0 $C0
    ldh [rP1], a                                  ; $50E8: $E0 $00
    add b                                         ; $50EA: $80
    nop                                           ; $50EB: $00
    add b                                         ; $50EC: $80
    nop                                           ; $50ED: $00
    ret nz                                        ; $50EE: $C0

    nop                                           ; $50EF: $00
    jr nz, jr_00E_50B2                            ; $50F0: $20 $C0

    db $10                                        ; $50F2: $10
    ldh [$FF08], a                                ; $50F3: $E0 $08
    ldh a, [$FFDC]                                ; $50F5: $F0 $DC

jr_00E_50F7:
    jr nz, jr_00E_50F7                            ; $50F7: $20 $FE

    add b                                         ; $50F9: $80
    cp $44                                        ; $50FA: $FE $44
    db $FC                                        ; $50FC: $FC
    jr c, jr_00E_5137                             ; $50FD: $38 $38

    nop                                           ; $50FF: $00
    nop                                           ; $5100: $00
    nop                                           ; $5101: $00
    nop                                           ; $5102: $00
    nop                                           ; $5103: $00
    nop                                           ; $5104: $00
    nop                                           ; $5105: $00
    jr nc, jr_00E_5108                            ; $5106: $30 $00

jr_00E_5108:
    add sp, $10                                   ; $5108: $E8 $10
    cp b                                          ; $510A: $B8
    ld d, b                                       ; $510B: $50
    ld a, a                                       ; $510C: $7F
    db $10                                        ; $510D: $10
    ld a, [hl]                                    ; $510E: $7E
    inc sp                                        ; $510F: $33
    rst RST_38                                    ; $5110: $FF
    ld b, b                                       ; $5111: $40
    rst RST_28                                    ; $5112: $EF
    inc a                                         ; $5113: $3C
    di                                            ; $5114: $F3
    ld e, a                                       ; $5115: $5F
    ld a, e                                       ; $5116: $7B
    ld c, $0F                                     ; $5117: $0E $0F
    ld b, $07                                     ; $5119: $06 $07
    inc bc                                        ; $511B: $03
    inc bc                                        ; $511C: $03
    nop                                           ; $511D: $00
    dec a                                         ; $511E: $3D
    ld [bc], a                                    ; $511F: $02
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
    ld [$1400], sp                                ; $512A: $08 $00 $14
    ld [$1CE2], sp                                ; $512D: $08 $E2 $1C
    jp hl                                         ; $5130: $E9


    sbc [hl]                                      ; $5131: $9E
    ld sp, hl                                     ; $5132: $F9
    ld l, $FE                                     ; $5133: $2E $FE
    add c                                         ; $5135: $81
    ei                                            ; $5136: $FB

jr_00E_5137:
    ld [hl], h                                    ; $5137: $74
    rst RST_38                                    ; $5138: $FF
    sub d                                         ; $5139: $92
    ei                                            ; $513A: $FB
    ld d, l                                       ; $513B: $55
    pop af                                        ; $513C: $F1
    xor [hl]                                      ; $513D: $AE
    ldh a, [c]                                    ; $513E: $F2
    ld l, l                                       ; $513F: $6D

jr_00E_5140:
    nop                                           ; $5140: $00
    nop                                           ; $5141: $00
    nop                                           ; $5142: $00
    nop                                           ; $5143: $00
    nop                                           ; $5144: $00
    nop                                           ; $5145: $00
    nop                                           ; $5146: $00
    nop                                           ; $5147: $00
    nop                                           ; $5148: $00
    nop                                           ; $5149: $00
    nop                                           ; $514A: $00
    nop                                           ; $514B: $00
    nop                                           ; $514C: $00
    nop                                           ; $514D: $00
    inc bc                                        ; $514E: $03
    nop                                           ; $514F: $00
    dec c                                         ; $5150: $0D
    inc bc                                        ; $5151: $03
    cp a                                          ; $5152: $BF
    inc c                                         ; $5153: $0C
    cp l                                          ; $5154: $BD
    dec de                                        ; $5155: $1B
    rst RST_00                                    ; $5156: $C7
    inc a                                         ; $5157: $3C
    db $DD                                        ; $5158: $DD
    ccf                                           ; $5159: $3F
    rst RST_08                                    ; $515A: $CF
    inc a                                         ; $515B: $3C
    inc a                                         ; $515C: $3C
    ret c                                         ; $515D: $D8

    jr jr_00E_5140                                ; $515E: $18 $E0

    nop                                           ; $5160: $00
    nop                                           ; $5161: $00
    nop                                           ; $5162: $00
    nop                                           ; $5163: $00
    nop                                           ; $5164: $00
    nop                                           ; $5165: $00
    nop                                           ; $5166: $00
    nop                                           ; $5167: $00
    nop                                           ; $5168: $00
    nop                                           ; $5169: $00
    nop                                           ; $516A: $00
    nop                                           ; $516B: $00
    nop                                           ; $516C: $00
    nop                                           ; $516D: $00
    nop                                           ; $516E: $00
    nop                                           ; $516F: $00
    jr c, jr_00E_5172                             ; $5170: $38 $00

jr_00E_5172:
    ret c                                         ; $5172: $D8

    jr nc, @+$72                                  ; $5173: $30 $70

    ret nz                                        ; $5175: $C0

    ld hl, sp+$00                                 ; $5176: $F8 $00
    ld e, b                                       ; $5178: $58
    ldh a, [$FFF0]                                ; $5179: $F0 $F0
    nop                                           ; $517B: $00
    ld e, b                                       ; $517C: $58
    ldh a, [$FFF8]                                ; $517D: $F0 $F8
    nop                                           ; $517F: $00
    inc c                                         ; $5180: $0C
    nop                                           ; $5181: $00
    ld a, [hl-]                                   ; $5182: $3A
    inc b                                         ; $5183: $04
    cpl                                           ; $5184: $2F
    inc d                                         ; $5185: $14
    rra                                           ; $5186: $1F
    inc c                                         ; $5187: $0C
    ccf                                           ; $5188: $3F
    db $10                                        ; $5189: $10
    dec sp                                        ; $518A: $3B
    rrca                                          ; $518B: $0F
    inc a                                         ; $518C: $3C
    rla                                           ; $518D: $17
    ld e, $03                                     ; $518E: $1E $03
    inc bc                                        ; $5190: $03
    ld bc, $0001                                  ; $5191: $01 $01 $00
    nop                                           ; $5194: $00
    nop                                           ; $5195: $00
    rrca                                          ; $5196: $0F
    nop                                           ; $5197: $00
    rra                                           ; $5198: $1F
    ld c, $F3                                     ; $5199: $0E $F3
    rra                                           ; $519B: $1F
    db $FD                                        ; $519C: $FD
    ld l, a                                       ; $519D: $6F
    ld a, a                                       ; $519E: $7F
    add hl, de                                    ; $519F: $19
    nop                                           ; $51A0: $00
    nop                                           ; $51A1: $00
    ld [bc], a                                    ; $51A2: $02
    nop                                           ; $51A3: $00
    push bc                                       ; $51A4: $C5
    ld [bc], a                                    ; $51A5: $02
    cp b                                          ; $51A6: $B8
    rst RST_00                                    ; $51A7: $C7
    ld a, [$FE27]                                 ; $51A8: $FA $27 $FE
    dec bc                                        ; $51AB: $0B
    rst RST_38                                    ; $51AC: $FF
    ldh [$FFFE], a                                ; $51AD: $E0 $FE
    sbc l                                         ; $51AF: $9D
    rst RST_38                                    ; $51B0: $FF
    and h                                         ; $51B1: $A4
    cp $D5                                        ; $51B2: $FE $D5
    db $FC                                        ; $51B4: $FC
    dec hl                                        ; $51B5: $2B
    ld a, h                                       ; $51B6: $7C
    sbc e                                         ; $51B7: $9B
    cp [hl]                                       ; $51B8: $BE
    ld b, c                                       ; $51B9: $41
    db $FD                                        ; $51BA: $FD
    ld a, [hl-]                                   ; $51BB: $3A
    rst RST_38                                    ; $51BC: $FF
    ld c, h                                       ; $51BD: $4C
    rst RST_38                                    ; $51BE: $FF
    ld c, b                                       ; $51BF: $48
    nop                                           ; $51C0: $00
    nop                                           ; $51C1: $00
    nop                                           ; $51C2: $00
    nop                                           ; $51C3: $00
    nop                                           ; $51C4: $00
    nop                                           ; $51C5: $00
    add b                                         ; $51C6: $80
    nop                                           ; $51C7: $00
    ld b, e                                       ; $51C8: $43
    add b                                         ; $51C9: $80
    ld l, a                                       ; $51CA: $6F
    add e                                         ; $51CB: $83
    xor a                                         ; $51CC: $AF
    ld b, [hl]                                    ; $51CD: $46
    pop af                                        ; $51CE: $F1
    rrca                                          ; $51CF: $0F
    rst RST_30                                    ; $51D0: $F7
    adc a                                         ; $51D1: $8F
    di                                            ; $51D2: $F3
    ld c, a                                       ; $51D3: $4F
    ld c, a                                       ; $51D4: $4F
    or [hl]                                       ; $51D5: $B6
    add [hl]                                      ; $51D6: $86
    ld a, b                                       ; $51D7: $78
    add h                                         ; $51D8: $84
    ld a, b                                       ; $51D9: $78
    add h                                         ; $51DA: $84
    ld a, b                                       ; $51DB: $78
    ret z                                         ; $51DC: $C8

    or b                                          ; $51DD: $B0
    ldh a, [$FFC0]                                ; $51DE: $F0 $C0
    nop                                           ; $51E0: $00
    nop                                           ; $51E1: $00
    ld c, $00                                     ; $51E2: $0E $00
    ld [hl], $0C                                  ; $51E4: $36 $0C
    call c, Call_00E_7E30                         ; $51E6: $DC $30 $7E
    ret nz                                        ; $51E9: $C0

    sub $3C                                       ; $51EA: $D6 $3C
    ld a, h                                       ; $51EC: $7C
    ret nz                                        ; $51ED: $C0

    sub $3C                                       ; $51EE: $D6 $3C
    ld a, [hl]                                    ; $51F0: $7E
    ret nz                                        ; $51F1: $C0

    ret nz                                        ; $51F2: $C0

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
    rrca                                          ; $5200: $0F
    dec b                                         ; $5201: $05
    rlca                                          ; $5202: $07
    inc bc                                        ; $5203: $03
    inc b                                         ; $5204: $04
    inc bc                                        ; $5205: $03
    rlca                                          ; $5206: $07
    inc bc                                        ; $5207: $03
    dec b                                         ; $5208: $05
    inc bc                                        ; $5209: $03

jr_00E_520A:
    rlca                                          ; $520A: $07
    inc bc                                        ; $520B: $03
    rrca                                          ; $520C: $0F
    inc bc                                        ; $520D: $03
    rra                                           ; $520E: $1F
    ld a, [bc]                                    ; $520F: $0A
    rra                                           ; $5210: $1F
    ld [$1E2F], sp                                ; $5211: $08 $2F $1E
    cpl                                           ; $5214: $2F
    rra                                           ; $5215: $1F
    ld e, a                                       ; $5216: $5F
    inc a                                         ; $5217: $3C
    ld a, h                                       ; $5218: $7C
    jr c, @-$06                                   ; $5219: $38 $F8

    ld h, b                                       ; $521B: $60
    ldh [rP1], a                                  ; $521C: $E0 $00
    nop                                           ; $521E: $00
    nop                                           ; $521F: $00
    rst RST_38                                    ; $5220: $FF
    ld a, $FE                                     ; $5221: $3E $FE
    ld bc, $BAC7                                  ; $5223: $01 $C7 $BA
    rst RST_20                                    ; $5226: $E7
    db $DB                                        ; $5227: $DB
    rst RST_30                                    ; $5228: $F7
    jp z, $82CF                                   ; $5229: $CA $CF $82

    add e                                         ; $522C: $83
    nop                                           ; $522D: $00
    ld bc, $0300                                  ; $522E: $01 $00 $03
    ld bc, $0003                                  ; $5231: $01 $03 $00
    add a                                         ; $5234: $87
    inc bc                                        ; $5235: $03
    add a                                         ; $5236: $87
    inc bc                                        ; $5237: $03
    rlca                                          ; $5238: $07
    inc bc                                        ; $5239: $03
    inc bc                                        ; $523A: $03
    ld bc, $0103                                  ; $523B: $01 $03 $01
    ld bc, $F000                                  ; $523E: $01 $00 $F0
    nop                                           ; $5241: $00
    ld b, b                                       ; $5242: $40
    add b                                         ; $5243: $80
    ret nz                                        ; $5244: $C0

    nop                                           ; $5245: $00
    ret nz                                        ; $5246: $C0

    nop                                           ; $5247: $00
    jr nz, jr_00E_520A                            ; $5248: $20 $C0

    db $10                                        ; $524A: $10
    ldh [rNR10], a                                ; $524B: $E0 $10
    ldh [$FF98], a                                ; $524D: $E0 $98
    ld h, b                                       ; $524F: $60
    db $FC                                        ; $5250: $FC
    ld [$78FC], sp                                ; $5251: $08 $FC $78
    db $FC                                        ; $5254: $FC
    ld a, b                                       ; $5255: $78
    ld a, b                                       ; $5256: $78
    add b                                         ; $5257: $80
    ld h, b                                       ; $5258: $60
    ret nz                                        ; $5259: $C0

    ld h, b                                       ; $525A: $60
    ret nz                                        ; $525B: $C0

    ret nz                                        ; $525C: $C0

    add b                                         ; $525D: $80
    ret nz                                        ; $525E: $C0

    nop                                           ; $525F: $00
    ld bc, $0100                                  ; $5260: $01 $00 $01
    nop                                           ; $5263: $00
    ld bc, $0100                                  ; $5264: $01 $00 $01
    nop                                           ; $5267: $00
    ld bc, $0700                                  ; $5268: $01 $00 $07
    ld bc, $050B                                  ; $526B: $01 $0B $05
    dec bc                                        ; $526E: $0B
    ld b, $17                                     ; $526F: $06 $17
    rrca                                          ; $5271: $0F
    cpl                                           ; $5272: $2F
    ld e, $7E                                     ; $5273: $1E $7E
    inc a                                         ; $5275: $3C
    ld a, h                                       ; $5276: $7C
    nop                                           ; $5277: $00
    nop                                           ; $5278: $00
    nop                                           ; $5279: $00
    nop                                           ; $527A: $00
    nop                                           ; $527B: $00
    nop                                           ; $527C: $00
    nop                                           ; $527D: $00
    nop                                           ; $527E: $00
    nop                                           ; $527F: $00
    inc b                                         ; $5280: $04
    inc bc                                        ; $5281: $03
    dec b                                         ; $5282: $05
    ld [bc], a                                    ; $5283: $02
    inc bc                                        ; $5284: $03
    nop                                           ; $5285: $00
    inc bc                                        ; $5286: $03
    ld bc, $00C1                                  ; $5287: $01 $C1 $00
    rst RST_20                                    ; $528A: $E7
    ld b, b                                       ; $528B: $40
    ei                                            ; $528C: $FB
    push bc                                       ; $528D: $C5
    ld sp, $F9EE                                  ; $528E: $31 $EE $F9
    or $7F                                        ; $5291: $F6 $7F
    ldh a, [$FFF1]                                ; $5293: $F0 $F1
    ret nz                                        ; $5295: $C0

jr_00E_5296:
    pop bc                                        ; $5296: $C1
    add b                                         ; $5297: $80
    add e                                         ; $5298: $83
    ld bc, $0183                                  ; $5299: $01 $83 $01
    pop bc                                        ; $529C: $C1
    add b                                         ; $529D: $80
    ret nz                                        ; $529E: $C0

    nop                                           ; $529F: $00
    di                                            ; $52A0: $F3
    inc c                                         ; $52A1: $0C
    ld a, [$FCF4]                                 ; $52A2: $FA $F4 $FC
    adc b                                         ; $52A5: $88
    adc b                                         ; $52A6: $88
    ld [hl], b                                    ; $52A7: $70
    ld [$10F0], sp                                ; $52A8: $08 $F0 $10
    ldh [rNR23], a                                ; $52AB: $E0 $18
    ldh [$FFFC], a                                ; $52AD: $E0 $FC

jr_00E_52AF:
    jr jr_00E_52AF                                ; $52AF: $18 $FE

    db $F4                                        ; $52B1: $F4
    rst RST_38                                    ; $52B2: $FF
    and $F7                                       ; $52B3: $E6 $F7
    ld c, $0F                                     ; $52B5: $0E $0F
    nop                                           ; $52B7: $00
    dec c                                         ; $52B8: $0D
    rlca                                          ; $52B9: $07
    add hl, de                                    ; $52BA: $19
    rrca                                          ; $52BB: $0F
    scf                                           ; $52BC: $37
    rra                                           ; $52BD: $1F
    ccf                                           ; $52BE: $3F
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
    ld h, b                                       ; $52D4: $60
    nop                                           ; $52D5: $00
    cp b                                          ; $52D6: $B8
    ld b, b                                       ; $52D7: $40
    ld h, [hl]                                    ; $52D8: $66
    jr c, jr_00E_5296                             ; $52D9: $38 $BB

    ld e, [hl]                                    ; $52DB: $5E
    rst RST_38                                    ; $52DC: $FF
    dec c                                         ; $52DD: $0D
    rrca                                          ; $52DE: $0F
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
    add b                                         ; $52EE: $80
    nop                                           ; $52EF: $00
    ldh [$FF80], a                                ; $52F0: $E0 $80
    cp $C0                                        ; $52F2: $FE $C0
    pop bc                                        ; $52F4: $C1
    ld a, $FF                                     ; $52F5: $3E $FF
    ld c, c                                       ; $52F7: $49
    rst RST_38                                    ; $52F8: $FF
    dec d                                         ; $52F9: $15

jr_00E_52FA:
    ccf                                           ; $52FA: $3F
    nop                                           ; $52FB: $00
    rrca                                          ; $52FC: $0F
    inc b                                         ; $52FD: $04
    ld b, $01                                     ; $52FE: $06 $01
    nop                                           ; $5300: $00
    nop                                           ; $5301: $00
    nop                                           ; $5302: $00
    nop                                           ; $5303: $00
    nop                                           ; $5304: $00
    nop                                           ; $5305: $00
    nop                                           ; $5306: $00
    nop                                           ; $5307: $00
    inc bc                                        ; $5308: $03
    nop                                           ; $5309: $00
    dec c                                         ; $530A: $0D
    inc bc                                        ; $530B: $03
    rst RST_38                                    ; $530C: $FF
    nop                                           ; $530D: $00
    jp $F77E                                      ; $530E: $C3 $7E $F7


    cp $FF                                        ; $5311: $FE $FF
    ld a, [hl]                                    ; $5313: $7E
    ld a, [hl]                                    ; $5314: $7E
    cp l                                          ; $5315: $BD
    rst RST_38                                    ; $5316: $FF
    inc c                                         ; $5317: $0C
    rst RST_28                                    ; $5318: $EF
    jp nc, Jump_000_01FF                          ; $5319: $D2 $FF $01

    rst RST_38                                    ; $531C: $FF
    ld b, $07                                     ; $531D: $06 $07
    ei                                            ; $531F: $FB
    nop                                           ; $5320: $00
    nop                                           ; $5321: $00
    nop                                           ; $5322: $00
    nop                                           ; $5323: $00
    nop                                           ; $5324: $00

jr_00E_5325:
    nop                                           ; $5325: $00
    ret nz                                        ; $5326: $C0

    nop                                           ; $5327: $00
    and b                                         ; $5328: $A0
    ld b, b                                       ; $5329: $40
    ld d, b                                       ; $532A: $50
    and b                                         ; $532B: $A0
    ret z                                         ; $532C: $C8

    jr nc, jr_00E_52FA                            ; $532D: $30 $CB

    or b                                          ; $532F: $B0
    db $FD                                        ; $5330: $FD
    inc bc                                        ; $5331: $03
    adc e                                         ; $5332: $8B
    halt                                          ; $5333: $76
    rlca                                          ; $5334: $07
    ei                                            ; $5335: $FB
    rlca                                          ; $5336: $07
    ei                                            ; $5337: $FB
    adc a                                         ; $5338: $8F
    ld [hl], h                                    ; $5339: $74
    db $FC                                        ; $533A: $FC
    add b                                         ; $533B: $80
    ret nz                                        ; $533C: $C0

    nop                                           ; $533D: $00
    add b                                         ; $533E: $80
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
    nop                                           ; $534A: $00
    nop                                           ; $534B: $00
    nop                                           ; $534C: $00
    nop                                           ; $534D: $00
    ld c, $00                                     ; $534E: $0E $00
    ld [hl], $0C                                  ; $5350: $36 $0C
    call c, Call_00E_7E30                         ; $5352: $DC $30 $7E
    ret nz                                        ; $5355: $C0

    sub $3C                                       ; $5356: $D6 $3C
    ld a, h                                       ; $5358: $7C
    ret nz                                        ; $5359: $C0

    sub $3C                                       ; $535A: $D6 $3C
    ld a, [hl]                                    ; $535C: $7E
    ret nz                                        ; $535D: $C0

    ret nz                                        ; $535E: $C0

    nop                                           ; $535F: $00
    add b                                         ; $5360: $80
    nop                                           ; $5361: $00
    ret nz                                        ; $5362: $C0

    add b                                         ; $5363: $80
    ret nz                                        ; $5364: $C0

    add b                                         ; $5365: $80
    ret nz                                        ; $5366: $C0

    nop                                           ; $5367: $00
    add b                                         ; $5368: $80
    nop                                           ; $5369: $00
    add b                                         ; $536A: $80
    nop                                           ; $536B: $00
    nop                                           ; $536C: $00
    nop                                           ; $536D: $00
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
    nop                                           ; $537A: $00
    nop                                           ; $537B: $00
    nop                                           ; $537C: $00
    nop                                           ; $537D: $00
    nop                                           ; $537E: $00
    nop                                           ; $537F: $00
    jr nc, jr_00E_5382                            ; $5380: $30 $00

jr_00E_5382:
    ld [hl], b                                    ; $5382: $70
    jr nz, jr_00E_5325                            ; $5383: $20 $A0

    ld b, b                                       ; $5385: $40
    pop hl                                        ; $5386: $E1
    ld b, b                                       ; $5387: $40
    and a                                         ; $5388: $A7
    ld b, c                                       ; $5389: $41
    rst RST_28                                    ; $538A: $EF
    ld b, a                                       ; $538B: $47
    ld a, a                                       ; $538C: $7F
    rrca                                          ; $538D: $0F
    sbc a                                         ; $538E: $9F
    ld l, [hl]                                    ; $538F: $6E
    rst RST_18                                    ; $5390: $DF
    ld l, l                                       ; $5391: $6D
    ld a, a                                       ; $5392: $7F
    dec bc                                        ; $5393: $0B
    inc a                                         ; $5394: $3C
    dec bc                                        ; $5395: $0B
    ld a, a                                       ; $5396: $7F
    daa                                           ; $5397: $27
    and [hl]                                      ; $5398: $A6
    ld b, e                                       ; $5399: $43
    db $E3                                        ; $539A: $E3
    ld b, b                                       ; $539B: $40
    pop bc                                        ; $539C: $C1
    nop                                           ; $539D: $00
    ld bc, $0100                                  ; $539E: $01 $00 $01
    nop                                           ; $53A1: $00
    inc bc                                        ; $53A2: $03
    ld bc, $0207                                  ; $53A3: $01 $07 $02
    rlca                                          ; $53A6: $07
    ld bc, $071F                                  ; $53A7: $01 $1F $07
    add hl, sp                                    ; $53AA: $39
    rra                                           ; $53AB: $1F
    ld h, a                                       ; $53AC: $67
    ccf                                           ; $53AD: $3F
    rst RST_38                                    ; $53AE: $FF
    ld a, b                                       ; $53AF: $78
    ld sp, hl                                     ; $53B0: $F9
    ld b, [hl]                                    ; $53B1: $46
    db $E4                                        ; $53B2: $E4
    rra                                           ; $53B3: $1F
    call z, Call_00E_5F3F                         ; $53B4: $CC $3F $5F
    inc l                                         ; $53B7: $2C
    db $EC                                        ; $53B8: $EC
    inc de                                        ; $53B9: $13
    ld a, a                                       ; $53BA: $7F
    add h                                         ; $53BB: $84
    ld a, a                                       ; $53BC: $7F
    or [hl]                                       ; $53BD: $B6
    ld a, a                                       ; $53BE: $7F
    adc d                                         ; $53BF: $8A
    inc bc                                        ; $53C0: $03
    nop                                           ; $53C1: $00
    inc bc                                        ; $53C2: $03
    ld bc, $0081                                  ; $53C3: $01 $81 $00
    pop bc                                        ; $53C6: $C1
    add b                                         ; $53C7: $80
    pop hl                                        ; $53C8: $E1
    nop                                           ; $53C9: $00
    pop hl                                        ; $53CA: $E1
    ret nz                                        ; $53CB: $C0

    and $C1                                       ; $53CC: $E6 $C1
    rst RST_38                                    ; $53CE: $FF
    add $EE                                       ; $53CF: $C6 $EE
    sbc l                                         ; $53D1: $9D
    db $D3                                        ; $53D2: $D3
    ld l, $8E                                     ; $53D3: $2E $8E
    ld [hl], a                                    ; $53D5: $77
    rst RST_18                                    ; $53D6: $DF
    ld h, $66                                     ; $53D7: $26 $66
    sbc b                                         ; $53D9: $98
    ld b, d                                       ; $53DA: $42
    cp h                                          ; $53DB: $BC
    ldh [c], a                                    ; $53DC: $E2
    inc e                                         ; $53DD: $1C
    ldh a, [c]                                    ; $53DE: $F2
    call z, RST_00                                ; $53DF: $CC $00 $00
    add b                                         ; $53E2: $80
    nop                                           ; $53E3: $00
    ld b, b                                       ; $53E4: $40
    add b                                         ; $53E5: $80
    call z, Call_00E_5C80                         ; $53E6: $CC $80 $5C
    adc b                                         ; $53E9: $88
    add sp, -$70                                  ; $53EA: $E8 $90
    ldh a, [rNR41]                                ; $53EC: $F0 $20
    and b                                         ; $53EE: $A0

jr_00E_53EF:
    ld b, b                                       ; $53EF: $40
    ld hl, sp-$80                                 ; $53F0: $F8 $80
    xor h                                         ; $53F2: $AC
    ld a, b                                       ; $53F3: $78
    db $FC                                        ; $53F4: $FC
    add b                                         ; $53F5: $80
    add b                                         ; $53F6: $80
    nop                                           ; $53F7: $00
    jr nc, jr_00E_53FA                            ; $53F8: $30 $00

jr_00E_53FA:
    ld [hl], b                                    ; $53FA: $70
    jr nz, jr_00E_546D                            ; $53FB: $20 $70

    jr nz, jr_00E_53EF                            ; $53FD: $20 $F0

    ld h, b                                       ; $53FF: $60
    sbc a                                         ; $5400: $9F
    ld h, b                                       ; $5401: $60
    rrca                                          ; $5402: $0F
    ldh a, [$FF3F]                                ; $5403: $F0 $3F
    call z, $AE5F                                 ; $5405: $CC $5F $AE
    di                                            ; $5408: $F3
    ld e, $7F                                     ; $5409: $1E $7F
    ld e, $1B                                     ; $540B: $1E $1B
    ld c, $0F                                     ; $540D: $0E $0F
    ld b, $07                                     ; $540F: $06 $07
    ld [bc], a                                    ; $5411: $02
    inc bc                                        ; $5412: $03
    ld bc, $0306                                  ; $5413: $01 $06 $03
    ld b, $03                                     ; $5416: $06 $03
    rlca                                          ; $5418: $07
    inc bc                                        ; $5419: $03
    inc bc                                        ; $541A: $03
    ld bc, $0001                                  ; $541B: $01 $01 $00
    nop                                           ; $541E: $00
    nop                                           ; $541F: $00
    push de                                       ; $5420: $D5
    xor b                                         ; $5421: $A8
    adc e                                         ; $5422: $8B
    ld [hl], c                                    ; $5423: $71
    rrca                                          ; $5424: $0F
    pop af                                        ; $5425: $F1
    rst RST_38                                    ; $5426: $FF
    dec b                                         ; $5427: $05
    rst RST_38                                    ; $5428: $FF
    inc a                                         ; $5429: $3C
    call z, Call_000_3CF8                         ; $542A: $CC $F8 $3C
    ldh a, [$FFFE]                                ; $542D: $F0 $FE
    ret z                                         ; $542F: $C8

    db $FD                                        ; $5430: $FD
    ld a, [de]                                    ; $5431: $1A
    cp c                                          ; $5432: $B9
    ld d, [hl]                                    ; $5433: $56
    ld sp, hl                                     ; $5434: $F9
    ld d, $D1                                     ; $5435: $16 $D1
    adc [hl]                                      ; $5437: $8E
    cp $C0                                        ; $5438: $FE $C0
    ld a, a                                       ; $543A: $7F
    adc $7F                                       ; $543B: $CE $7F
    sbc $72                                       ; $543D: $DE $72
    call c, $E0F0                                 ; $543F: $DC $F0 $E0
    ldh a, [$FFE0]                                ; $5442: $F0 $E0
    ldh [$FFC0], a                                ; $5444: $E0 $C0
    ret nz                                        ; $5446: $C0

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
    nop                                           ; $5454: $00
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
    ld a, a                                       ; $5460: $7F
    ld l, $3A                                     ; $5461: $2E $3A

jr_00E_5463:
    inc c                                         ; $5463: $0C
    inc a                                         ; $5464: $3C
    jr jr_00E_5463                                ; $5465: $18 $FC

    db $10                                        ; $5467: $10
    db $F4                                        ; $5468: $F4
    ld l, b                                       ; $5469: $68
    ld [hl], h                                    ; $546A: $74
    jr c, jr_00E_54A7                             ; $546B: $38 $3A

jr_00E_546D:
    inc e                                         ; $546D: $1C
    ld a, $1C                                     ; $546E: $3E $1C
    ccf                                           ; $5470: $3F
    ld e, $1F                                     ; $5471: $1E $1F
    nop                                           ; $5473: $00
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
    ld bc, $0100                                  ; $548A: $01 $00 $01
    nop                                           ; $548D: $00
    inc bc                                        ; $548E: $03
    ld bc, $0102                                  ; $548F: $01 $02 $01
    rrca                                          ; $5492: $0F
    inc bc                                        ; $5493: $03
    rla                                           ; $5494: $17
    ld a, [bc]                                    ; $5495: $0A
    rla                                           ; $5496: $17
    inc c                                         ; $5497: $0C
    cpl                                           ; $5498: $2F
    rra                                           ; $5499: $1F
    ld e, a                                       ; $549A: $5F
    inc a                                         ; $549B: $3C
    db $FC                                        ; $549C: $FC
    ld a, b                                       ; $549D: $78
    ld hl, sp+$00                                 ; $549E: $F8 $00
    ld [bc], a                                    ; $54A0: $02
    ld bc, $0102                                  ; $54A1: $01 $02 $01
    ld h, c                                       ; $54A4: $61
    nop                                           ; $54A5: $00
    pop af                                        ; $54A6: $F1

jr_00E_54A7:
    ld h, b                                       ; $54A7: $60
    db $FC                                        ; $54A8: $FC
    ldh [$FF33], a                                ; $54A9: $E0 $33
    db $EC                                        ; $54AB: $EC
    ld hl, sp-$09                                 ; $54AC: $F8 $F7
    ld hl, sp-$09                                 ; $54AE: $F8 $F7
    ld sp, hl                                     ; $54B0: $F9
    add [hl]                                      ; $54B1: $86
    add a                                         ; $54B2: $87
    nop                                           ; $54B3: $00
    nop                                           ; $54B4: $00
    nop                                           ; $54B5: $00
    add b                                         ; $54B6: $80
    nop                                           ; $54B7: $00
    add b                                         ; $54B8: $80
    nop                                           ; $54B9: $00
    nop                                           ; $54BA: $00
    nop                                           ; $54BB: $00
    nop                                           ; $54BC: $00
    nop                                           ; $54BD: $00
    nop                                           ; $54BE: $00
    nop                                           ; $54BF: $00
    ld a, a                                       ; $54C0: $7F
    add [hl]                                      ; $54C1: $86
    rst RST_30                                    ; $54C2: $F7
    ld l, c                                       ; $54C3: $69
    rst RST_38                                    ; $54C4: $FF
    nop                                           ; $54C5: $00
    rst RST_38                                    ; $54C6: $FF
    add e                                         ; $54C7: $83
    add e                                         ; $54C8: $83
    ld a, l                                       ; $54C9: $7D
    ld sp, hl                                     ; $54CA: $F9
    ld b, $FD                                     ; $54CB: $06 $FD
    ld a, d                                       ; $54CD: $7A
    cp $44                                        ; $54CE: $FE $44
    call nz, $C4B8                                ; $54D0: $C4 $B8 $C4
    jr c, jr_00E_551C                             ; $54D3: $38 $47

    jr c, jr_00E_5526                             ; $54D5: $38 $4F

    ld [hl-], a                                   ; $54D7: $32
    cp a                                          ; $54D8: $BF
    ld b, l                                       ; $54D9: $45
    cp a                                          ; $54DA: $BF
    ld a, l                                       ; $54DB: $7D
    ld a, a                                       ; $54DC: $7F
    dec sp                                        ; $54DD: $3B
    ccf                                           ; $54DE: $3F
    nop                                           ; $54DF: $00
    add e                                         ; $54E0: $83
    ld a, l                                       ; $54E1: $7D
    add e                                         ; $54E2: $83
    ld a, l                                       ; $54E3: $7D
    rst RST_00                                    ; $54E4: $C7
    cp d                                          ; $54E5: $BA
    cp $40                                        ; $54E6: $FE $40
    ldh [$FF80], a                                ; $54E8: $E0 $80
    ret nz                                        ; $54EA: $C0

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
    add b                                         ; $54F8: $80
    nop                                           ; $54F9: $00

Call_00E_54FA:
    ret nz                                        ; $54FA: $C0

    add b                                         ; $54FB: $80
    ldh [$FFC0], a                                ; $54FC: $E0 $C0
    ldh [rP1], a                                  ; $54FE: $E0 $00
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
    nop                                           ; $550E: $00
    nop                                           ; $550F: $00
    nop                                           ; $5510: $00
    nop                                           ; $5511: $00
    nop                                           ; $5512: $00
    nop                                           ; $5513: $00
    jr nc, jr_00E_5516                            ; $5514: $30 $00

jr_00E_5516:
    ld e, h                                       ; $5516: $5C
    jr nz, jr_00E_554C                            ; $5517: $20 $33

    inc e                                         ; $5519: $1C
    ld e, l                                       ; $551A: $5D
    cpl                                           ; $551B: $2F

jr_00E_551C:
    ld a, a                                       ; $551C: $7F
    ld b, $07                                     ; $551D: $06 $07
    nop                                           ; $551F: $00
    nop                                           ; $5520: $00
    nop                                           ; $5521: $00
    nop                                           ; $5522: $00
    nop                                           ; $5523: $00
    nop                                           ; $5524: $00
    nop                                           ; $5525: $00

jr_00E_5526:
    nop                                           ; $5526: $00
    nop                                           ; $5527: $00
    nop                                           ; $5528: $00
    nop                                           ; $5529: $00
    nop                                           ; $552A: $00
    nop                                           ; $552B: $00
    nop                                           ; $552C: $00
    nop                                           ; $552D: $00
    ret nz                                        ; $552E: $C0

    nop                                           ; $552F: $00
    ldh a, [$FFC0]                                ; $5530: $F0 $C0
    rst RST_38                                    ; $5532: $FF
    ld h, b                                       ; $5533: $60

jr_00E_5534:
    ld h, b                                       ; $5534: $60
    rra                                           ; $5535: $1F
    ld a, a                                       ; $5536: $7F
    inc h                                         ; $5537: $24
    ld a, a                                       ; $5538: $7F
    ld a, [bc]                                    ; $5539: $0A
    rra                                           ; $553A: $1F
    nop                                           ; $553B: $00
    rlca                                          ; $553C: $07
    ld [bc], a                                    ; $553D: $02
    inc bc                                        ; $553E: $03
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

jr_00E_554C:
    jr nc, jr_00E_554E                            ; $554C: $30 $00

jr_00E_554E:
    ld [hl], b                                    ; $554E: $70
    jr nz, jr_00E_55A1                            ; $554F: $20 $50

    jr nz, jr_00E_5534                            ; $5551: $20 $E1

    ld b, b                                       ; $5553: $40
    and [hl]                                      ; $5554: $A6
    ld b, c                                       ; $5555: $41
    rst RST_38                                    ; $5556: $FF
    add b                                         ; $5557: $80
    pop hl                                        ; $5558: $E1
    cp a                                          ; $5559: $BF
    ei                                            ; $555A: $FB
    ld a, a                                       ; $555B: $7F
    rst RST_38                                    ; $555C: $FF
    ccf                                           ; $555D: $3F
    ccf                                           ; $555E: $3F
    sbc $00                                       ; $555F: $DE $00
    nop                                           ; $5561: $00
    nop                                           ; $5562: $00
    nop                                           ; $5563: $00
    nop                                           ; $5564: $00
    nop                                           ; $5565: $00
    nop                                           ; $5566: $00
    nop                                           ; $5567: $00
    nop                                           ; $5568: $00

jr_00E_5569:
    nop                                           ; $5569: $00
    nop                                           ; $556A: $00
    nop                                           ; $556B: $00
    ld bc, $0100                                  ; $556C: $01 $00 $01
    nop                                           ; $556F: $00
    nop                                           ; $5570: $00
    nop                                           ; $5571: $00
    ldh [rP1], a                                  ; $5572: $E0 $00
    ret nc                                        ; $5574: $D0

    and b                                         ; $5575: $A0
    xor b                                         ; $5576: $A8
    ld d, b                                       ; $5577: $50
    db $E4                                        ; $5578: $E4
    jr @-$19                                      ; $5579: $18 $E5

    ld e, b                                       ; $557B: $58
    cp $01                                        ; $557C: $FE $01
    ld b, l                                       ; $557E: $45
    cp e                                          ; $557F: $BB
    nop                                           ; $5580: $00
    nop                                           ; $5581: $00
    nop                                           ; $5582: $00
    nop                                           ; $5583: $00
    nop                                           ; $5584: $00
    nop                                           ; $5585: $00
    add b                                         ; $5586: $80
    nop                                           ; $5587: $00

Call_00E_5588:
    ret nz                                        ; $5588: $C0

    add b                                         ; $5589: $80
    and b                                         ; $558A: $A0
    ld b, b                                       ; $558B: $40
    ld [hl], b                                    ; $558C: $70
    jr nz, @+$58                                  ; $558D: $20 $56

    jr nz, jr_00E_560F                            ; $558F: $20 $7E

    inc h                                         ; $5591: $24
    or h                                          ; $5592: $B4
    ld c, b                                       ; $5593: $48
    ld hl, sp+$50                                 ; $5594: $F8 $50
    ret nc                                        ; $5596: $D0

    and b                                         ; $5597: $A0
    ld hl, sp+$40                                 ; $5598: $F8 $40
    db $EC                                        ; $559A: $EC
    sbc b                                         ; $559B: $98
    cp h                                          ; $559C: $BC
    ldh [$FFF8], a                                ; $559D: $E0 $F8
    nop                                           ; $559F: $00
    nop                                           ; $55A0: $00

jr_00E_55A1:
    nop                                           ; $55A1: $00
    nop                                           ; $55A2: $00
    nop                                           ; $55A3: $00
    inc b                                         ; $55A4: $04
    nop                                           ; $55A5: $00
    dec bc                                        ; $55A6: $0B
    inc b                                         ; $55A7: $04
    inc de                                        ; $55A8: $13
    dec c                                         ; $55A9: $0D
    cpl                                           ; $55AA: $2F
    ld e, $7F                                     ; $55AB: $1E $7F
    ccf                                           ; $55AD: $3F
    rst RST_38                                    ; $55AE: $FF
    ld [hl], b                                    ; $55AF: $70
    ldh a, [rP1]                                  ; $55B0: $F0 $00
    nop                                           ; $55B2: $00
    nop                                           ; $55B3: $00
    nop                                           ; $55B4: $00
    nop                                           ; $55B5: $00
    nop                                           ; $55B6: $00
    nop                                           ; $55B7: $00
    nop                                           ; $55B8: $00
    nop                                           ; $55B9: $00
    rlca                                          ; $55BA: $07
    nop                                           ; $55BB: $00
    rrca                                          ; $55BC: $0F
    ld b, $1C                                     ; $55BD: $06 $1C
    rrca                                          ; $55BF: $0F
    ld c, $00                                     ; $55C0: $0E $00
    ccf                                           ; $55C2: $3F
    inc c                                         ; $55C3: $0C
    ld l, [hl]                                    ; $55C4: $6E
    dec a                                         ; $55C5: $3D
    xor [hl]                                      ; $55C6: $AE
    ld a, l                                       ; $55C7: $7D
    cp $FD                                        ; $55C8: $FE $FD
    db $FD                                        ; $55CA: $FD
    jr jr_00E_5569                                ; $55CB: $18 $9C

    nop                                           ; $55CD: $00
    adc a                                         ; $55CE: $8F
    nop                                           ; $55CF: $00
    ld e, $0D                                     ; $55D0: $1E $0D
    ld a, $1D                                     ; $55D2: $3E $1D
    cpl                                           ; $55D4: $2F
    ld e, $77                                     ; $55D5: $1E $77
    ld a, $DF                                     ; $55D7: $3E $DF
    ld a, [hl]                                    ; $55D9: $7E
    cp $F0                                        ; $55DA: $FE $F0
    ldh a, [$FFC0]                                ; $55DC: $F0 $C0
    ret nz                                        ; $55DE: $C0

    nop                                           ; $55DF: $00
    ld bc, $C200                                  ; $55E0: $01 $00 $C2
    ld bc, $C033                                  ; $55E3: $01 $33 $C0
    rra                                           ; $55E6: $1F
    pop hl                                        ; $55E7: $E1
    ld a, e                                       ; $55E8: $7B
    sub h                                         ; $55E9: $94
    ld a, [$FA75]                                 ; $55EA: $FA $75 $FA
    dec d                                         ; $55ED: $15
    dec de                                        ; $55EE: $1B
    db $E4                                        ; $55EF: $E4
    dec de                                        ; $55F0: $1B
    push hl                                       ; $55F1: $E5
    rla                                           ; $55F2: $17
    pop hl                                        ; $55F3: $E1
    ld h, e                                       ; $55F4: $63
    add c                                         ; $55F5: $81
    add c                                         ; $55F6: $81
    nop                                           ; $55F7: $00
    ld bc, $0000                                  ; $55F8: $01 $00 $00
    nop                                           ; $55FB: $00
    nop                                           ; $55FC: $00
    nop                                           ; $55FD: $00
    nop                                           ; $55FE: $00
    nop                                           ; $55FF: $00
    ldh [rP1], a                                  ; $5600: $E0 $00
    db $10                                        ; $5602: $10
    ldh [$FF3B], a                                ; $5603: $E0 $3B
    ret nz                                        ; $5605: $C0

    db $FC                                        ; $5606: $FC
    dec hl                                        ; $5607: $2B
    ld a, $C1                                     ; $5608: $3E $C1
    rra                                           ; $560A: $1F
    db $EC                                        ; $560B: $EC
    inc e                                         ; $560C: $1C
    db $E3                                        ; $560D: $E3
    db $FC                                        ; $560E: $FC

jr_00E_560F:
    dec bc                                        ; $560F: $0B
    rst RST_38                                    ; $5610: $FF
    ldh [rIE], a                                  ; $5611: $E0 $FF
    adc h                                         ; $5613: $8C
    adc a                                         ; $5614: $8F
    ld [hl], h                                    ; $5615: $74
    ld b, $F8                                     ; $5616: $06 $F8
    dec b                                         ; $5618: $05
    ld a, [$7788]                                 ; $5619: $FA $88 $77
    ld a, b                                       ; $561C: $78
    rlca                                          ; $561D: $07
    ccf                                           ; $561E: $3F
    jr jr_00E_5621                                ; $561F: $18 $00

jr_00E_5621:
    nop                                           ; $5621: $00
    ld bc, $BF00                                  ; $5622: $01 $00 $BF
    nop                                           ; $5625: $00
    rst RST_38                                    ; $5626: $FF
    rra                                           ; $5627: $1F
    sbc a                                         ; $5628: $9F
    ld l, a                                       ; $5629: $6F
    rst RST_08                                    ; $562A: $CF
    db $F4                                        ; $562B: $F4
    db $E4                                        ; $562C: $E4
    ld a, b                                       ; $562D: $78
    adc b                                         ; $562E: $88
    ld [hl], b                                    ; $562F: $70
    sub b                                         ; $5630: $90
    ld h, b                                       ; $5631: $60
    ld h, b                                       ; $5632: $60
    add b                                         ; $5633: $80
    ret nz                                        ; $5634: $C0

    nop                                           ; $5635: $00
    nop                                           ; $5636: $00
    nop                                           ; $5637: $00
    ldh [rP1], a                                  ; $5638: $E0 $00
    ld hl, sp+$60                                 ; $563A: $F8 $60
    and $78                                       ; $563C: $E6 $78
    pop af                                        ; $563E: $F1
    cp $00                                        ; $563F: $FE $00
    nop                                           ; $5641: $00
    ldh [rP1], a                                  ; $5642: $E0 $00
    ldh a, [$FF60]                                ; $5644: $F0 $60
    ld hl, sp-$50                                 ; $5646: $F8 $B0
    db $FC                                        ; $5648: $FC
    jr c, @-$02                                   ; $5649: $38 $FC

    ld e, b                                       ; $564B: $58
    ld a, h                                       ; $564C: $7C
    jr z, jr_00E_5677                             ; $564D: $28 $28

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
    add b                                         ; $565E: $80
    nop                                           ; $565F: $00
    ld h, a                                       ; $5660: $67
    ld a, $CF                                     ; $5661: $3E $CF
    ld a, [hl]                                    ; $5663: $7E
    cp [hl]                                       ; $5664: $BE
    ld a, b                                       ; $5665: $78
    ld hl, sp+$00                                 ; $5666: $F8 $00
    nop                                           ; $5668: $00
    nop                                           ; $5669: $00
    nop                                           ; $566A: $00
    nop                                           ; $566B: $00
    nop                                           ; $566C: $00
    nop                                           ; $566D: $00
    nop                                           ; $566E: $00
    nop                                           ; $566F: $00
    nop                                           ; $5670: $00
    nop                                           ; $5671: $00
    nop                                           ; $5672: $00
    nop                                           ; $5673: $00
    nop                                           ; $5674: $00
    nop                                           ; $5675: $00
    nop                                           ; $5676: $00

jr_00E_5677:
    nop                                           ; $5677: $00
    nop                                           ; $5678: $00
    nop                                           ; $5679: $00
    nop                                           ; $567A: $00
    nop                                           ; $567B: $00
    nop                                           ; $567C: $00
    nop                                           ; $567D: $00
    nop                                           ; $567E: $00
    nop                                           ; $567F: $00
    rst RST_38                                    ; $5680: $FF
    ld [hl], e                                    ; $5681: $73
    ld d, a                                       ; $5682: $57
    jr z, @+$81                                   ; $5683: $28 $7F

    dec hl                                        ; $5685: $2B
    cpl                                           ; $5686: $2F
    db $10                                        ; $5687: $10
    ccf                                           ; $5688: $3F
    dec d                                         ; $5689: $15
    dec hl                                        ; $568A: $2B
    inc d                                         ; $568B: $14
    ccf                                           ; $568C: $3F
    inc d                                         ; $568D: $14
    ld [hl], $00                                  ; $568E: $36 $00
    nop                                           ; $5690: $00
    nop                                           ; $5691: $00
    nop                                           ; $5692: $00
    nop                                           ; $5693: $00
    nop                                           ; $5694: $00
    nop                                           ; $5695: $00
    nop                                           ; $5696: $00
    nop                                           ; $5697: $00
    nop                                           ; $5698: $00
    nop                                           ; $5699: $00
    nop                                           ; $569A: $00
    nop                                           ; $569B: $00
    nop                                           ; $569C: $00
    nop                                           ; $569D: $00
    nop                                           ; $569E: $00
    nop                                           ; $569F: $00
    rst RST_30                                    ; $56A0: $F7
    db $FC                                        ; $56A1: $FC
    rst RST_38                                    ; $56A2: $FF
    dec a                                         ; $56A3: $3D
    rst RST_38                                    ; $56A4: $FF
    add l                                         ; $56A5: $85
    add a                                         ; $56A6: $87
    ld bc, $0183                                  ; $56A7: $01 $83 $01
    ld b, e                                       ; $56AA: $43
    add c                                         ; $56AB: $81
    pop bc                                        ; $56AC: $C1
    add b                                         ; $56AD: $80
    pop bc                                        ; $56AE: $C1
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
    ret nz                                        ; $56C0: $C0

    nop                                           ; $56C1: $00
    ldh [$FFC0], a                                ; $56C2: $E0 $C0
    ldh [$FFC0], a                                ; $56C4: $E0 $C0
    ldh a, [rNR41]                                ; $56C6: $F0 $20
    ldh a, [rNR41]                                ; $56C8: $F0 $20
    ldh a, [$FFE0]                                ; $56CA: $F0 $E0
    ldh [$FF80], a                                ; $56CC: $E0 $80
    ret nz                                        ; $56CE: $C0

    nop                                           ; $56CF: $00
    nop                                           ; $56D0: $00
    nop                                           ; $56D1: $00
    nop                                           ; $56D2: $00
    nop                                           ; $56D3: $00
    nop                                           ; $56D4: $00
    nop                                           ; $56D5: $00
    nop                                           ; $56D6: $00
    nop                                           ; $56D7: $00
    nop                                           ; $56D8: $00
    nop                                           ; $56D9: $00
    nop                                           ; $56DA: $00
    nop                                           ; $56DB: $00
    nop                                           ; $56DC: $00
    nop                                           ; $56DD: $00
    nop                                           ; $56DE: $00
    nop                                           ; $56DF: $00
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
    ret nz                                        ; $56EC: $C0

    nop                                           ; $56ED: $00
    ldh a, [rLCDC]                                ; $56EE: $F0 $40
    db $EC                                        ; $56F0: $EC
    ld [hl], b                                    ; $56F1: $70
    ld [hl], e                                    ; $56F2: $73
    inc a                                         ; $56F3: $3C
    ld a, l                                       ; $56F4: $7D
    ld a, $3F                                     ; $56F5: $3E $3F
    inc e                                         ; $56F7: $1C
    rra                                           ; $56F8: $1F
    inc c                                         ; $56F9: $0C
    ld e, $0D                                     ; $56FA: $1E $0D
    rra                                           ; $56FC: $1F
    inc bc                                        ; $56FD: $03
    rlca                                          ; $56FE: $07
    nop                                           ; $56FF: $00
    nop                                           ; $5700: $00
    nop                                           ; $5701: $00
    ld bc, $0300                                  ; $5702: $01 $00 $03
    ld bc, $0103                                  ; $5705: $01 $03 $01
    inc bc                                        ; $5708: $03
    ld bc, $0304                                  ; $5709: $01 $04 $03
    rlca                                          ; $570C: $07
    inc bc                                        ; $570D: $03
    dec b                                         ; $570E: $05
    inc bc                                        ; $570F: $03
    rlca                                          ; $5710: $07
    nop                                           ; $5711: $00
    dec de                                        ; $5712: $1B
    rlca                                          ; $5713: $07
    db $EB                                        ; $5714: $EB
    ld e, $FF                                     ; $5715: $1E $FF
    cp $FF                                        ; $5717: $FE $FF
    ld e, $3F                                     ; $5719: $1E $3F
    pop hl                                        ; $571B: $E1
    rst RST_38                                    ; $571C: $FF
    rst RST_30                                    ; $571D: $F7
    rst RST_38                                    ; $571E: $FF
    nop                                           ; $571F: $00
    nop                                           ; $5720: $00
    nop                                           ; $5721: $00
    add b                                         ; $5722: $80
    nop                                           ; $5723: $00
    add b                                         ; $5724: $80
    nop                                           ; $5725: $00
    add b                                         ; $5726: $80
    nop                                           ; $5727: $00
    ldh a, [$FF80]                                ; $5728: $F0 $80
    ret z                                         ; $572A: $C8

    or b                                          ; $572B: $B0
    call nz, $E3B8                                ; $572C: $C4 $B8 $E3
    call c, $91EE                                 ; $572F: $DC $EE $91
    cp $0D                                        ; $5732: $FE $0D
    ld c, $F1                                     ; $5734: $0E $F1
    ccf                                           ; $5736: $3F
    ret z                                         ; $5737: $C8

    db $FC                                        ; $5738: $FC
    dec sp                                        ; $5739: $3B
    db $FC                                        ; $573A: $FC
    ei                                            ; $573B: $FB
    rst RST_38                                    ; $573C: $FF
    ld hl, sp-$04                                 ; $573D: $F8 $FC
    nop                                           ; $573F: $00
    nop                                           ; $5740: $00
    nop                                           ; $5741: $00
    nop                                           ; $5742: $00
    nop                                           ; $5743: $00
    nop                                           ; $5744: $00
    nop                                           ; $5745: $00
    nop                                           ; $5746: $00
    nop                                           ; $5747: $00
    ld a, b                                       ; $5748: $78
    nop                                           ; $5749: $00
    db $FC                                        ; $574A: $FC

jr_00E_574B:
    ld c, b                                       ; $574B: $48
    adc $30                                       ; $574C: $CE $30
    add a                                         ; $574E: $87
    ld a, d                                       ; $574F: $7A
    add a                                         ; $5750: $87
    ld a, b                                       ; $5751: $78
    rst RST_38                                    ; $5752: $FF
    inc bc                                        ; $5753: $03
    rst RST_38                                    ; $5754: $FF
    ld b, b                                       ; $5755: $40
    rst RST_00                                    ; $5756: $C7
    ld a, [hl-]                                   ; $5757: $3A
    add e                                         ; $5758: $83
    ld a, h                                       ; $5759: $7C
    add e                                         ; $575A: $83
    ld a, l                                       ; $575B: $7D
    rst RST_00                                    ; $575C: $C7
    add hl, sp                                    ; $575D: $39
    add hl, sp                                    ; $575E: $39
    nop                                           ; $575F: $00
    nop                                           ; $5760: $00
    nop                                           ; $5761: $00
    inc e                                         ; $5762: $1C
    nop                                           ; $5763: $00
    ld [hl], $1C                                  ; $5764: $36 $1C
    ld e, [hl]                                    ; $5766: $5E
    jr nz, jr_00E_57D9                            ; $5767: $20 $70

    jr nz, jr_00E_574B                            ; $5769: $20 $E0

    ld b, b                                       ; $576B: $40
    rst RST_28                                    ; $576C: $EF
    nop                                           ; $576D: $00
    ld a, [hl-]                                   ; $576E: $3A
    rst RST_00                                    ; $576F: $C7
    and a                                         ; $5770: $A7
    ld e, b                                       ; $5771: $58
    ldh a, [c]                                    ; $5772: $F2
    inc a                                         ; $5773: $3C
    add hl, sp                                    ; $5774: $39
    sbc $23                                       ; $5775: $DE $23
    call c, Call_000_18E7                         ; $5777: $DC $E7 $18
    sbc $21                                       ; $577A: $DE $21
    ei                                            ; $577C: $FB
    ld c, $FF                                     ; $577D: $0E $FF
    nop                                           ; $577F: $00
    add b                                         ; $5780: $80
    nop                                           ; $5781: $00
    ret nz                                        ; $5782: $C0

    add b                                         ; $5783: $80
    ret nz                                        ; $5784: $C0

    nop                                           ; $5785: $00
    nop                                           ; $5786: $00
    nop                                           ; $5787: $00
    ret nz                                        ; $5788: $C0

    nop                                           ; $5789: $00
    and b                                         ; $578A: $A0
    ret nz                                        ; $578B: $C0

    ldh a, [rNR41]                                ; $578C: $F0 $20
    or b                                          ; $578E: $B0
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
    inc bc                                        ; $57A4: $03
    ld bc, $0102                                  ; $57A5: $01 $02 $01
    inc bc                                        ; $57A8: $03
    ld bc, $0102                                  ; $57A9: $01 $02 $01
    inc bc                                        ; $57AC: $03
    ld bc, $030F                                  ; $57AD: $01 $0F $03
    rla                                           ; $57B0: $17
    ld a, [bc]                                    ; $57B1: $0A
    rla                                           ; $57B2: $17
    inc c                                         ; $57B3: $0C
    cpl                                           ; $57B4: $2F
    rra                                           ; $57B5: $1F
    ld e, a                                       ; $57B6: $5F
    inc a                                         ; $57B7: $3C
    db $FC                                        ; $57B8: $FC
    ld a, b                                       ; $57B9: $78
    ld hl, sp+$00                                 ; $57BA: $F8 $00
    nop                                           ; $57BC: $00
    nop                                           ; $57BD: $00
    nop                                           ; $57BE: $00
    nop                                           ; $57BF: $00
    inc de                                        ; $57C0: $13
    inc c                                         ; $57C1: $0C
    inc de                                        ; $57C2: $13
    inc c                                         ; $57C3: $0C
    rla                                           ; $57C4: $17
    dec bc                                        ; $57C5: $0B
    rrca                                          ; $57C6: $0F
    nop                                           ; $57C7: $00
    add d                                         ; $57C8: $82
    ld bc, $83DF                                  ; $57C9: $01 $DF $83
    rst RST_30                                    ; $57CC: $F7
    adc c                                         ; $57CD: $89
    ld h, e                                       ; $57CE: $63
    db $DD                                        ; $57CF: $DD
    di                                            ; $57D0: $F3
    db $ED                                        ; $57D1: $ED
    db $FD                                        ; $57D2: $FD
    ldh [$FFE0], a                                ; $57D3: $E0 $E0
    add b                                         ; $57D5: $80
    add b                                         ; $57D6: $80
    nop                                           ; $57D7: $00
    nop                                           ; $57D8: $00

jr_00E_57D9:
    nop                                           ; $57D9: $00
    nop                                           ; $57DA: $00
    nop                                           ; $57DB: $00
    add b                                         ; $57DC: $80
    nop                                           ; $57DD: $00
    add b                                         ; $57DE: $80
    nop                                           ; $57DF: $00
    sub b                                         ; $57E0: $90
    ld h, b                                       ; $57E1: $60
    adc b                                         ; $57E2: $88
    ld [hl], b                                    ; $57E3: $70
    adc b                                         ; $57E4: $88
    ld [hl], b                                    ; $57E5: $70
    ld e, b                                       ; $57E6: $58
    jr nz, jr_00E_5825                            ; $57E7: $20 $3C

    jr @+$40                                      ; $57E9: $18 $3E

    inc e                                         ; $57EB: $1C
    ld h, [hl]                                    ; $57EC: $66
    inc a                                         ; $57ED: $3C
    ld a, [hl]                                    ; $57EE: $7E
    inc a                                         ; $57EF: $3C
    ld [hl], $1C                                  ; $57F0: $36 $1C
    ld e, $0C                                     ; $57F2: $1E $0C
    rrca                                          ; $57F4: $0F
    inc b                                         ; $57F5: $04
    dec b                                         ; $57F6: $05
    inc bc                                        ; $57F7: $03
    ld b, $03                                     ; $57F8: $06 $03
    inc b                                         ; $57FA: $04
    inc bc                                        ; $57FB: $03
    rrca                                          ; $57FC: $0F
    rlca                                          ; $57FD: $07
    rrca                                          ; $57FE: $0F
    nop                                           ; $57FF: $00
    add b                                         ; $5800: $80
    nop                                           ; $5801: $00
    ret nz                                        ; $5802: $C0

    add b                                         ; $5803: $80
    ld h, b                                       ; $5804: $60
    ret nz                                        ; $5805: $C0

    ldh a, [$FFE0]                                ; $5806: $F0 $E0
    ldh a, [rP1]                                  ; $5808: $F0 $00
    nop                                           ; $580A: $00
    nop                                           ; $580B: $00
    nop                                           ; $580C: $00
    nop                                           ; $580D: $00
    nop                                           ; $580E: $00
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
    ld c, b                                       ; $5820: $48
    ldh a, [$FFCC]                                ; $5821: $F0 $CC
    ldh a, [$FFF4]                                ; $5823: $F0 $F4

jr_00E_5825:
    ld [$A0D9], sp                                ; $5825: $08 $D9 $A0
    cp $91                                        ; $5828: $FE $91
    cp $81                                        ; $582A: $FE $81
    and d                                         ; $582C: $A2
    ld e, l                                       ; $582D: $5D
    pop bc                                        ; $582E: $C1
    ld a, $C1                                     ; $582F: $3E $C1
    cp [hl]                                       ; $5831: $BE
    inc hl                                        ; $5832: $23

Call_00E_5833:
    call c, $E21F                                 ; $5833: $DC $1F $E2
    sbc [hl]                                      ; $5836: $9E
    ld l, h                                       ; $5837: $6C
    db $FC                                        ; $5838: $FC
    nop                                           ; $5839: $00
    ld [$F0F0], sp                                ; $583A: $08 $F0 $F0
    ret nz                                        ; $583D: $C0

    ldh [rP1], a                                  ; $583E: $E0 $00
    nop                                           ; $5840: $00
    nop                                           ; $5841: $00
    nop                                           ; $5842: $00
    nop                                           ; $5843: $00
    ld bc, $0100                                  ; $5844: $01 $00 $01
    nop                                           ; $5847: $00
    inc bc                                        ; $5848: $03
    ld bc, $0183                                  ; $5849: $01 $83 $01
    ld h, a                                       ; $584C: $67
    add d                                         ; $584D: $82
    or $01                                        ; $584E: $F6 $01
    ld l, [hl]                                    ; $5850: $6E
    or l                                          ; $5851: $B5
    rst RST_38                                    ; $5852: $FF
    ld b, b                                       ; $5853: $40
    ldh a, [$FF5F]                                ; $5854: $F0 $5F
    db $FD                                        ; $5856: $FD
    ccf                                           ; $5857: $3F
    rst RST_38                                    ; $5858: $FF
    rra                                           ; $5859: $1F
    rra                                           ; $585A: $1F
    rrca                                          ; $585B: $0F
    rra                                           ; $585C: $1F
    inc bc                                        ; $585D: $03
    rla                                           ; $585E: $17
    ld [$0000], sp                                ; $585F: $08 $00 $00
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
    nop                                           ; $586E: $00
    nop                                           ; $586F: $00
    nop                                           ; $5870: $00
    nop                                           ; $5871: $00
    ld bc, $0100                                  ; $5872: $01 $00 $01
    nop                                           ; $5875: $00
    rrca                                          ; $5876: $0F
    nop                                           ; $5877: $00
    db $10                                        ; $5878: $10
    rrca                                          ; $5879: $0F
    ccf                                           ; $587A: $3F
    ld [de], a                                    ; $587B: $12
    ccf                                           ; $587C: $3F
    dec b                                         ; $587D: $05
    rrca                                          ; $587E: $0F
    nop                                           ; $587F: $00
    nop                                           ; $5880: $00
    nop                                           ; $5881: $00
    nop                                           ; $5882: $00
    nop                                           ; $5883: $00
    nop                                           ; $5884: $00
    nop                                           ; $5885: $00

jr_00E_5886:
    nop                                           ; $5886: $00
    nop                                           ; $5887: $00
    ld bc, $0100                                  ; $5888: $01 $00 $01
    nop                                           ; $588B: $00
    ld bc, $0100                                  ; $588C: $01 $00 $01
    nop                                           ; $588F: $00
    inc e                                         ; $5890: $1C
    nop                                           ; $5891: $00
    ld h, [hl]                                    ; $5892: $66
    inc e                                         ; $5893: $1C
    sbc a                                         ; $5894: $9F
    ld a, [hl]                                    ; $5895: $7E
    ccf                                           ; $5896: $3F

jr_00E_5897:
    cp $7F                                        ; $5897: $FE $7F
    di                                            ; $5899: $F3
    di                                            ; $589A: $F3
    and c                                         ; $589B: $A1
    or c                                          ; $589C: $B1
    ld b, b                                       ; $589D: $40
    db $10                                        ; $589E: $10
    ldh [$FF60], a                                ; $589F: $E0 $60
    nop                                           ; $58A1: $00
    or b                                          ; $58A2: $B0
    ld b, b                                       ; $58A3: $40
    jr nc, jr_00E_5886                            ; $58A4: $30 $E0

    ld a, b                                       ; $58A6: $78
    ldh a, [$FFF8]                                ; $58A7: $F0 $F8
    sub b                                         ; $58A9: $90
    ld hl, sp-$70                                 ; $58AA: $F8 $90
    ld hl, sp+$70                                 ; $58AC: $F8 $70
    ldh a, [$FF60]                                ; $58AE: $F0 $60
    ld [hl], b                                    ; $58B0: $70
    nop                                           ; $58B1: $00
    ld [hl], b                                    ; $58B2: $70
    jr nz, @-$0E                                  ; $58B3: $20 $F0

    jr nz, jr_00E_5897                            ; $58B5: $20 $E0

    ret nz                                        ; $58B7: $C0

    jp Jump_000_0D00                              ; $58B8: $C3 $00 $0D


    inc bc                                        ; $58BB: $03
    scf                                           ; $58BC: $37
    inc c                                         ; $58BD: $0C
    ld a, l                                       ; $58BE: $7D
    inc sp                                        ; $58BF: $33
    rst RST_30                                    ; $58C0: $F7
    ld l, h                                       ; $58C1: $6C
    dec e                                         ; $58C2: $1D
    di                                            ; $58C3: $F3
    ld [hl], a                                    ; $58C4: $77
    db $FC                                        ; $58C5: $FC
    inc a                                         ; $58C6: $3C
    ldh a, [rSVBK]                                ; $58C7: $F0 $70
    ldh [$FFE0], a                                ; $58C9: $E0 $E0
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
    nop                                           ; $58DE: $00
    nop                                           ; $58DF: $00
    ret nz                                        ; $58E0: $C0

    nop                                           ; $58E1: $00
    ld b, b                                       ; $58E2: $40
    add b                                         ; $58E3: $80
    add b                                         ; $58E4: $80
    nop                                           ; $58E5: $00
    ret nz                                        ; $58E6: $C0

    nop                                           ; $58E7: $00
    ld b, b                                       ; $58E8: $40
    add b                                         ; $58E9: $80
    add b                                         ; $58EA: $80
    nop                                           ; $58EB: $00
    ld b, b                                       ; $58EC: $40
    add b                                         ; $58ED: $80
    add b                                         ; $58EE: $80
    nop                                           ; $58EF: $00
    nop                                           ; $58F0: $00
    nop                                           ; $58F1: $00
    nop                                           ; $58F2: $00
    nop                                           ; $58F3: $00
    nop                                           ; $58F4: $00
    nop                                           ; $58F5: $00
    nop                                           ; $58F6: $00
    nop                                           ; $58F7: $00
    nop                                           ; $58F8: $00
    nop                                           ; $58F9: $00
    nop                                           ; $58FA: $00
    nop                                           ; $58FB: $00
    nop                                           ; $58FC: $00
    nop                                           ; $58FD: $00
    nop                                           ; $58FE: $00
    nop                                           ; $58FF: $00
    add b                                         ; $5900: $80
    nop                                           ; $5901: $00
    ld h, b                                       ; $5902: $60
    add b                                         ; $5903: $80
    ld hl, sp+$60                                 ; $5904: $F8 $60
    ld [hl], h                                    ; $5906: $74
    cp b                                          ; $5907: $B8
    push bc                                       ; $5908: $C5
    ld a, b                                       ; $5909: $78
    ld [hl], d                                    ; $590A: $72
    db $FC                                        ; $590B: $FC
    rst RST_28                                    ; $590C: $EF
    ld [hl], b                                    ; $590D: $70
    ld [hl], e                                    ; $590E: $73
    inc l                                         ; $590F: $2C
    pop hl                                        ; $5910: $E1
    ld e, $21                                     ; $5911: $1E $21
    sbc $21                                       ; $5913: $DE $21
    sbc $F3                                       ; $5915: $DE $F3
    dec c                                         ; $5917: $0D
    rrca                                          ; $5918: $0F
    ld bc, $0001                                  ; $5919: $01 $01 $00
    nop                                           ; $591C: $00
    nop                                           ; $591D: $00
    nop                                           ; $591E: $00
    nop                                           ; $591F: $00
    nop                                           ; $5920: $00
    nop                                           ; $5921: $00
    dec c                                         ; $5922: $0D
    nop                                           ; $5923: $00
    ld e, $0D                                     ; $5924: $1E $0D
    rra                                           ; $5926: $1F
    ld c, $13                                     ; $5927: $0E $13
    rrca                                          ; $5929: $0F
    rrca                                          ; $592A: $0F
    rlca                                          ; $592B: $07
    dec b                                         ; $592C: $05
    inc bc                                        ; $592D: $03
    inc bc                                        ; $592E: $03
    nop                                           ; $592F: $00
    nop                                           ; $5930: $00
    nop                                           ; $5931: $00
    ld bc, $0200                                  ; $5932: $01 $00 $02
    ld bc, $0305                                  ; $5935: $01 $05 $03
    rrca                                          ; $5938: $0F

jr_00E_5939:
    rlca                                          ; $5939: $07
    rrca                                          ; $593A: $0F
    nop                                           ; $593B: $00
    nop                                           ; $593C: $00
    nop                                           ; $593D: $00
    nop                                           ; $593E: $00
    nop                                           ; $593F: $00
    jr c, jr_00E_5942                             ; $5940: $38 $00

jr_00E_5942:
    ld [hl], $18                                  ; $5942: $36 $18
    dec e                                         ; $5944: $1D
    ld b, $3F                                     ; $5945: $06 $3F
    ld bc, $1E35                                  ; $5947: $01 $35 $1E
    rra                                           ; $594A: $1F
    ld bc, $1E35                                  ; $594B: $01 $35 $1E
    ccf                                           ; $594E: $3F
    ld bc, $0C37                                  ; $594F: $01 $37 $0C
    ld e, a                                       ; $5952: $5F
    jr nz, @+$01                                  ; $5953: $20 $FF

    ld e, $7F                                     ; $5955: $1E $7F
    cp $FF                                        ; $5957: $FE $FF
    cp $FF                                        ; $5959: $FE $FF
    cp $FF                                        ; $595B: $FE $FF
    nop                                           ; $595D: $00
    nop                                           ; $595E: $00
    nop                                           ; $595F: $00
    ld bc, $1E00                                  ; $5960: $01 $00 $1E
    ld bc, $1FE1                                  ; $5963: $01 $E1 $1F
    rst RST_38                                    ; $5966: $FF
    ld a, a                                       ; $5967: $7F
    rst RST_38                                    ; $5968: $FF
    add b                                         ; $5969: $80
    add b                                         ; $596A: $80
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
    nop                                           ; $598E: $00
    nop                                           ; $598F: $00
    nop                                           ; $5990: $00
    nop                                           ; $5991: $00
    nop                                           ; $5992: $00
    nop                                           ; $5993: $00
    nop                                           ; $5994: $00
    nop                                           ; $5995: $00
    rrca                                          ; $5996: $0F
    nop                                           ; $5997: $00
    ld sp, $6F0F                                  ; $5998: $31 $0F $6F
    ccf                                           ; $599B: $3F
    ld a, a                                       ; $599C: $7F
    ld c, $0E                                     ; $599D: $0E $0E
    nop                                           ; $599F: $00
    stop                                          ; $59A0: $10 $00
    jr z, jr_00E_59B4                             ; $59A2: $28 $10

    ld b, h                                       ; $59A4: $44
    jr c, jr_00E_5939                             ; $59A5: $38 $92

    ld a, h                                       ; $59A7: $7C
    or e                                          ; $59A8: $B3
    ld a, h                                       ; $59A9: $7C
    ld a, l                                       ; $59AA: $7D
    and d                                         ; $59AB: $A2
    and a                                         ; $59AC: $A7
    ld e, c                                       ; $59AD: $59
    rst RST_38                                    ; $59AE: $FF
    inc h                                         ; $59AF: $24
    rst RST_38                                    ; $59B0: $FF
    adc e                                         ; $59B1: $8B
    rst RST_38                                    ; $59B2: $FF
    ld a, [hl+]                                   ; $59B3: $2A

jr_00E_59B4:
    rst RST_38                                    ; $59B4: $FF
    nop                                           ; $59B5: $00
    rst RST_08                                    ; $59B6: $CF
    or [hl]                                       ; $59B7: $B6
    add $B9                                       ; $59B8: $C6 $B9
    add $B9                                       ; $59BA: $C6 $B9
    rst RST_08                                    ; $59BC: $CF
    ld [hl], $FF                                  ; $59BD: $36 $FF
    nop                                           ; $59BF: $00

jr_00E_59C0:
    nop                                           ; $59C0: $00
    nop                                           ; $59C1: $00
    inc bc                                        ; $59C2: $03
    nop                                           ; $59C3: $00
    dec c                                         ; $59C4: $0D
    inc bc                                        ; $59C5: $03
    scf                                           ; $59C6: $37
    inc c                                         ; $59C7: $0C
    rst RST_18                                    ; $59C8: $DF
    jr nc, jr_00E_59C0                            ; $59C9: $30 $F5

    rst RST_08                                    ; $59CB: $CF
    rst RST_18                                    ; $59CC: $DF
    or b                                          ; $59CD: $B0
    push af                                       ; $59CE: $F5
    ld c, a                                       ; $59CF: $4F
    rst RST_18                                    ; $59D0: $DF
    ld [hl], b                                    ; $59D1: $70
    or $40                                        ; $59D2: $F6 $40
    push bc                                       ; $59D4: $C5
    ld [bc], a                                    ; $59D5: $02
    ld b, l                                       ; $59D6: $45
    add e                                         ; $59D7: $83
    ld c, e                                       ; $59D8: $4B
    add a                                         ; $59D9: $87
    ld c, a                                       ; $59DA: $4F
    add a                                         ; $59DB: $87
    ld a, a                                       ; $59DC: $7F
    adc b                                         ; $59DD: $88
    db $FC                                        ; $59DE: $FC
    ld a, b                                       ; $59DF: $78
    nop                                           ; $59E0: $00
    nop                                           ; $59E1: $00
    nop                                           ; $59E2: $00
    nop                                           ; $59E3: $00
    nop                                           ; $59E4: $00
    nop                                           ; $59E5: $00
    add b                                         ; $59E6: $80
    nop                                           ; $59E7: $00

jr_00E_59E8:
    add b                                         ; $59E8: $80
    nop                                           ; $59E9: $00
    nop                                           ; $59EA: $00
    nop                                           ; $59EB: $00
    add b                                         ; $59EC: $80
    nop                                           ; $59ED: $00
    add b                                         ; $59EE: $80
    nop                                           ; $59EF: $00
    nop                                           ; $59F0: $00
    nop                                           ; $59F1: $00
    add b                                         ; $59F2: $80
    nop                                           ; $59F3: $00
    ldh [rP1], a                                  ; $59F4: $E0 $00
    and b                                         ; $59F6: $A0
    ld b, b                                       ; $59F7: $40
    ldh [rLCDC], a                                ; $59F8: $E0 $40
    ret nz                                        ; $59FA: $C0

    add b                                         ; $59FB: $80
    ret nz                                        ; $59FC: $C0

    add b                                         ; $59FD: $80
    add b                                         ; $59FE: $80
    nop                                           ; $59FF: $00
    ccf                                           ; $5A00: $3F
    ld e, $DF                                     ; $5A01: $1E $DF
    inc l                                         ; $5A03: $2C
    inc e                                         ; $5A04: $1C
    db $EB                                        ; $5A05: $EB
    inc e                                         ; $5A06: $1C
    db $EB                                        ; $5A07: $EB
    cp [hl]                                       ; $5A08: $BE
    ld b, c                                       ; $5A09: $41
    pop bc                                        ; $5A0A: $C1
    add b                                         ; $5A0B: $80
    ldh [$FFC0], a                                ; $5A0C: $E0 $C0
    ldh [$FFC0], a                                ; $5A0E: $E0 $C0
    ldh a, [$FFE0]                                ; $5A10: $F0 $E0
    ldh a, [$FF60]                                ; $5A12: $F0 $60
    ld [hl], b                                    ; $5A14: $70
    and b                                         ; $5A15: $A0
    ld [hl], b                                    ; $5A16: $70
    ret nz                                        ; $5A17: $C0

    ld hl, sp-$20                                 ; $5A18: $F8 $E0
    ld hl, sp-$10                                 ; $5A1A: $F8 $F0
    ld hl, sp+$00                                 ; $5A1C: $F8 $00
    nop                                           ; $5A1E: $00
    nop                                           ; $5A1F: $00
    ld hl, sp-$10                                 ; $5A20: $F8 $F0
    ldh a, [$FF60]                                ; $5A22: $F0 $60
    ld h, b                                       ; $5A24: $60
    add b                                         ; $5A25: $80
    jr nz, jr_00E_59E8                            ; $5A26: $20 $C0

    ld a, b                                       ; $5A28: $78
    add b                                         ; $5A29: $80
    db $FC                                        ; $5A2A: $FC
    ld a, b                                       ; $5A2B: $78
    db $EC                                        ; $5A2C: $EC
    ld a, b                                       ; $5A2D: $78
    sbc $7C                                       ; $5A2E: $DE $7C
    halt                                          ; $5A30: $76
    inc a                                         ; $5A31: $3C
    ccf                                           ; $5A32: $3F
    ld c, $0F                                     ; $5A33: $0E $0F
    ld [bc], a                                    ; $5A35: $02
    inc bc                                        ; $5A36: $03
    ld bc, $0001                                  ; $5A37: $01 $01 $00
    ld bc, $0300                                  ; $5A3A: $01 $00 $03
    ld bc, $0003                                  ; $5A3D: $01 $03 $00
    add b                                         ; $5A40: $80
    nop                                           ; $5A41: $00
    ld h, b                                       ; $5A42: $60
    add b                                         ; $5A43: $80
    or b                                          ; $5A44: $B0
    ldh [$FF98], a                                ; $5A45: $E0 $98
    ldh a, [$FFFC]                                ; $5A47: $F0 $FC
    ld hl, sp-$04                                 ; $5A49: $F8 $FC
    nop                                           ; $5A4B: $00
    nop                                           ; $5A4C: $00
    nop                                           ; $5A4D: $00
    nop                                           ; $5A4E: $00
    nop                                           ; $5A4F: $00
    nop                                           ; $5A50: $00
    nop                                           ; $5A51: $00
    nop                                           ; $5A52: $00
    nop                                           ; $5A53: $00
    nop                                           ; $5A54: $00
    nop                                           ; $5A55: $00
    nop                                           ; $5A56: $00
    nop                                           ; $5A57: $00
    nop                                           ; $5A58: $00
    nop                                           ; $5A59: $00
    nop                                           ; $5A5A: $00
    nop                                           ; $5A5B: $00
    nop                                           ; $5A5C: $00
    nop                                           ; $5A5D: $00
    nop                                           ; $5A5E: $00
    nop                                           ; $5A5F: $00
    ret z                                         ; $5A60: $C8

    or b                                          ; $5A61: $B0
    ldh a, [$FFC0]                                ; $5A62: $F0 $C0
    ld h, b                                       ; $5A64: $60
    ret nz                                        ; $5A65: $C0

    db $ED                                        ; $5A66: $ED
    ret nz                                        ; $5A67: $C0

    sbc $8D                                       ; $5A68: $DE $8D
    sbc a                                         ; $5A6A: $9F
    ld c, $13                                     ; $5A6B: $0E $13
    rrca                                          ; $5A6D: $0F
    rrca                                          ; $5A6E: $0F
    rlca                                          ; $5A6F: $07
    dec b                                         ; $5A70: $05
    inc bc                                        ; $5A71: $03
    inc bc                                        ; $5A72: $03
    nop                                           ; $5A73: $00
    nop                                           ; $5A74: $00
    nop                                           ; $5A75: $00
    ld bc, $0200                                  ; $5A76: $01 $00 $02
    ld bc, $0305                                  ; $5A79: $01 $05 $03
    rrca                                          ; $5A7C: $0F
    rlca                                          ; $5A7D: $07
    rrca                                          ; $5A7E: $0F
    nop                                           ; $5A7F: $00
    nop                                           ; $5A80: $00
    nop                                           ; $5A81: $00
    nop                                           ; $5A82: $00
    nop                                           ; $5A83: $00
    nop                                           ; $5A84: $00
    nop                                           ; $5A85: $00
    add b                                         ; $5A86: $80
    nop                                           ; $5A87: $00
    ld h, b                                       ; $5A88: $60
    add b                                         ; $5A89: $80
    ld hl, sp+$60                                 ; $5A8A: $F8 $60
    ld [hl], l                                    ; $5A8C: $75
    cp b                                          ; $5A8D: $B8
    call nz, Call_00E_7378                        ; $5A8E: $C4 $78 $73
    db $FC                                        ; $5A91: $FC
    db $ED                                        ; $5A92: $ED
    ld [hl], d                                    ; $5A93: $72
    ld [hl], e                                    ; $5A94: $73
    inc l                                         ; $5A95: $2C
    ld hl, $211E                                  ; $5A96: $21 $1E $21
    ld e, $21                                     ; $5A99: $1E $21
    ld e, $33                                     ; $5A9B: $1E $33
    dec c                                         ; $5A9D: $0D
    call RST_30                                   ; $5A9E: $CD $30 $00
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
    jr c, jr_00E_5AB0                             ; $5AAE: $38 $00

jr_00E_5AB0:
    ld [hl], $18                                  ; $5AB0: $36 $18
    dec e                                         ; $5AB2: $1D
    ld b, $3F                                     ; $5AB3: $06 $3F
    ld bc, $1E35                                  ; $5AB5: $01 $35 $1E
    rra                                           ; $5AB8: $1F
    ld bc, $1E35                                  ; $5AB9: $01 $35 $1E
    ccf                                           ; $5ABC: $3F
    ld bc, $0001                                  ; $5ABD: $01 $01 $00
    inc bc                                        ; $5AC0: $03
    nop                                           ; $5AC1: $00
    rrca                                          ; $5AC2: $0F
    ld bc, $050F                                  ; $5AC3: $01 $0F $05
    rra                                           ; $5AC6: $1F
    dec bc                                        ; $5AC7: $0B
    inc d                                         ; $5AC8: $14
    dec bc                                        ; $5AC9: $0B
    dec e                                         ; $5ACA: $1D
    rlca                                          ; $5ACB: $07
    dec de                                        ; $5ACC: $1B
    rlca                                          ; $5ACD: $07
    rra                                           ; $5ACE: $1F
    ld c, $1E                                     ; $5ACF: $0E $1E
    inc c                                         ; $5AD1: $0C
    inc a                                         ; $5AD2: $3C
    jr jr_00E_5B0D                                ; $5AD3: $18 $38

    db $10                                        ; $5AD5: $10
    ldh a, [rNR41]                                ; $5AD6: $F0 $20
    ld h, b                                       ; $5AD8: $60
    ret nz                                        ; $5AD9: $C0

    ldh [$FFC0], a                                ; $5ADA: $E0 $C0
    ret nz                                        ; $5ADC: $C0

    nop                                           ; $5ADD: $00
    add b                                         ; $5ADE: $80
    nop                                           ; $5ADF: $00
    ld bc, $0600                                  ; $5AE0: $01 $00 $06
    ld bc, $0709                                  ; $5AE3: $01 $09 $07
    rra                                           ; $5AE6: $1F
    rrca                                          ; $5AE7: $0F
    rra                                           ; $5AE8: $1F
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
    nop                                           ; $5B00: $00
    nop                                           ; $5B01: $00
    nop                                           ; $5B02: $00
    nop                                           ; $5B03: $00
    nop                                           ; $5B04: $00
    nop                                           ; $5B05: $00
    nop                                           ; $5B06: $00
    nop                                           ; $5B07: $00
    nop                                           ; $5B08: $00
    nop                                           ; $5B09: $00
    ld bc, $0100                                  ; $5B0A: $01 $00 $01

jr_00E_5B0D:
    nop                                           ; $5B0D: $00
    ld bc, $0F00                                  ; $5B0E: $01 $00 $0F
    ld bc, $0D1B                                  ; $5B11: $01 $1B $0D
    ccf                                           ; $5B14: $3F
    nop                                           ; $5B15: $00
    ld [hl], c                                    ; $5B16: $71
    ld e, $FF                                     ; $5B17: $1E $FF
    ld a, a                                       ; $5B19: $7F
    rst RST_38                                    ; $5B1A: $FF
    rrca                                          ; $5B1B: $0F
    rrca                                          ; $5B1C: $0F
    ld bc, $0001                                  ; $5B1D: $01 $01 $00
    nop                                           ; $5B20: $00
    nop                                           ; $5B21: $00
    jr nc, jr_00E_5B24                            ; $5B22: $30 $00

jr_00E_5B24:
    ld a, h                                       ; $5B24: $7C
    jr nz, @-$02                                  ; $5B25: $20 $FC

    ld e, b                                       ; $5B27: $58

jr_00E_5B28:
    db $FC                                        ; $5B28: $FC
    jr c, jr_00E_5B78                             ; $5B29: $38 $4D

    cp b                                          ; $5B2B: $B8

jr_00E_5B2C:
    rst RST_38                                    ; $5B2C: $FF
    cp b                                          ; $5B2D: $B8
    db $DD                                        ; $5B2E: $DD
    ld a, d                                       ; $5B2F: $7A
    ld sp, hl                                     ; $5B30: $F9
    halt                                          ; $5B31: $76
    pop af                                        ; $5B32: $F1
    ld l, [hl]                                    ; $5B33: $6E
    pop af                                        ; $5B34: $F1
    adc $D3                                       ; $5B35: $CE $D3
    adc h                                         ; $5B37: $8C
    adc a                                         ; $5B38: $8F
    ld [bc], a                                    ; $5B39: $02
    adc a                                         ; $5B3A: $8F
    rlca                                          ; $5B3B: $07
    rst RST_08                                    ; $5B3C: $CF
    add b                                         ; $5B3D: $80
    ret nz                                        ; $5B3E: $C0

    nop                                           ; $5B3F: $00
    ld bc, $0300                                  ; $5B40: $01 $00 $03
    ld bc, $0307                                  ; $5B43: $01 $07 $03
    ld c, $01                                     ; $5B46: $0E $01
    dec c                                         ; $5B48: $0D
    ld [bc], a                                    ; $5B49: $02
    ccf                                           ; $5B4A: $3F
    inc c                                         ; $5B4B: $0C
    rst RST_18                                    ; $5B4C: $DF
    dec hl                                        ; $5B4D: $2B
    rra                                           ; $5B4E: $1F
    ld [$927F], a                                 ; $5B4F: $EA $7F $92
    rst RST_38                                    ; $5B52: $FF
    ld [hl], b                                    ; $5B53: $70
    di                                            ; $5B54: $F3
    ld l, h                                       ; $5B55: $6C
    ld h, c                                       ; $5B56: $61
    sbc [hl]                                      ; $5B57: $9E
    ld h, c                                       ; $5B58: $61
    sbc [hl]                                      ; $5B59: $9E
    ld hl, $33DE                                  ; $5B5A: $21 $DE $33
    call z, $02FD                                 ; $5B5D: $CC $FD $02
    ld h, b                                       ; $5B60: $60
    nop                                           ; $5B61: $00
    and b                                         ; $5B62: $A0
    ld b, b                                       ; $5B63: $40
    jr nz, @-$3E                                  ; $5B64: $20 $C0

    jr nz, jr_00E_5B28                            ; $5B66: $20 $C0

    jr nz, @-$3E                                  ; $5B68: $20 $C0

    jr nz, jr_00E_5B2C                            ; $5B6A: $20 $C0

    rst RST_20                                    ; $5B6C: $E7
    nop                                           ; $5B6D: $00
    db $FD                                        ; $5B6E: $FD
    ld b, a                                       ; $5B6F: $47
    ei                                            ; $5B70: $FB
    sbc h                                         ; $5B71: $9C
    rst RST_28                                    ; $5B72: $EF
    or d                                          ; $5B73: $B2
    rst RST_38                                    ; $5B74: $FF
    ld c, h                                       ; $5B75: $4C
    db $FD                                        ; $5B76: $FD
    ccf                                           ; $5B77: $3F

jr_00E_5B78:
    di                                            ; $5B78: $F3
    db $FC                                        ; $5B79: $FC
    adc d                                         ; $5B7A: $8A
    ld a, a                                       ; $5B7B: $7F
    add a                                         ; $5B7C: $87
    ld a, b                                       ; $5B7D: $78
    ld a, [$C40C]                                 ; $5B7E: $FA $0C $C4
    jr c, jr_00E_5BEA                             ; $5B81: $38 $67

    jr jr_00E_5C04                                ; $5B83: $18 $7F

    ld b, $7F                                     ; $5B85: $06 $7F
    ld e, $77                                     ; $5B87: $1E $77
    ld e, $67                                     ; $5B89: $1E $67
    ld e, $67                                     ; $5B8B: $1E $67
    dec e                                         ; $5B8D: $1D
    ld l, a                                       ; $5B8E: $6F
    inc e                                         ; $5B8F: $1C
    ld l, [hl]                                    ; $5B90: $6E
    inc e                                         ; $5B91: $1C
    ld a, h                                       ; $5B92: $7C
    jr jr_00E_5C11                                ; $5B93: $18 $7C

    jr jr_00E_5C13                                ; $5B95: $18 $7C

    jr jr_00E_5C11                                ; $5B97: $18 $78

    db $10                                        ; $5B99: $10
    jr c, @+$12                                   ; $5B9A: $38 $10

    jr c, jr_00E_5B9E                             ; $5B9C: $38 $00

jr_00E_5B9E:
    nop                                           ; $5B9E: $00
    nop                                           ; $5B9F: $00
    call c, Call_00E_78E0                         ; $5BA0: $DC $E0 $78
    sub b                                         ; $5BA3: $90
    ld hl, sp+$60                                 ; $5BA4: $F8 $60
    xor $F8                                       ; $5BA6: $EE $F8
    sbc e                                         ; $5BA8: $9B
    and $57                                       ; $5BA9: $E6 $57
    ld hl, sp+$3E                                 ; $5BAB: $F8 $3E
    call nz, Call_00E_60D6                        ; $5BAD: $C4 $D6 $60
    ld a, b                                       ; $5BB0: $78
    db $10                                        ; $5BB1: $10
    jr jr_00E_5BB4                                ; $5BB2: $18 $00

jr_00E_5BB4:
    nop                                           ; $5BB4: $00
    nop                                           ; $5BB5: $00
    ret nz                                        ; $5BB6: $C0

    nop                                           ; $5BB7: $00
    ret nz                                        ; $5BB8: $C0

    add b                                         ; $5BB9: $80
    ret nz                                        ; $5BBA: $C0

    add b                                         ; $5BBB: $80
    ret nz                                        ; $5BBC: $C0

    add b                                         ; $5BBD: $80
    add b                                         ; $5BBE: $80
    nop                                           ; $5BBF: $00
    nop                                           ; $5BC0: $00
    nop                                           ; $5BC1: $00
    nop                                           ; $5BC2: $00
    nop                                           ; $5BC3: $00
    nop                                           ; $5BC4: $00
    nop                                           ; $5BC5: $00
    nop                                           ; $5BC6: $00
    nop                                           ; $5BC7: $00
    nop                                           ; $5BC8: $00
    nop                                           ; $5BC9: $00
    nop                                           ; $5BCA: $00
    nop                                           ; $5BCB: $00
    nop                                           ; $5BCC: $00
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
    add b                                         ; $5BDE: $80
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

jr_00E_5BEA:
    nop                                           ; $5BEA: $00
    nop                                           ; $5BEB: $00
    inc bc                                        ; $5BEC: $03
    nop                                           ; $5BED: $00

jr_00E_5BEE:
    rrca                                          ; $5BEE: $0F
    inc bc                                        ; $5BEF: $03
    rra                                           ; $5BF0: $1F
    rrca                                          ; $5BF1: $0F
    ccf                                           ; $5BF2: $3F
    ld e, $7F                                     ; $5BF3: $1E $7F
    jr nc, jr_00E_5BEE                            ; $5BF5: $30 $F7

    ld b, c                                       ; $5BF7: $41
    rst RST_08                                    ; $5BF8: $CF
    rlca                                          ; $5BF9: $07
    rra                                           ; $5BFA: $1F
    rrca                                          ; $5BFB: $0F
    ccf                                           ; $5BFC: $3F
    db $10                                        ; $5BFD: $10
    jr nc, jr_00E_5C00                            ; $5BFE: $30 $00

jr_00E_5C00:
    nop                                           ; $5C00: $00
    nop                                           ; $5C01: $00
    nop                                           ; $5C02: $00
    nop                                           ; $5C03: $00

jr_00E_5C04:
    rlca                                          ; $5C04: $07
    nop                                           ; $5C05: $00
    ccf                                           ; $5C06: $3F
    rlca                                          ; $5C07: $07
    db $FC                                        ; $5C08: $FC
    ccf                                           ; $5C09: $3F
    ldh a, [rIE]                                  ; $5C0A: $F0 $FF
    ret nz                                        ; $5C0C: $C0

    rst RST_38                                    ; $5C0D: $FF
    rst RST_38                                    ; $5C0E: $FF
    rst RST_38                                    ; $5C0F: $FF
    rst RST_38                                    ; $5C10: $FF

jr_00E_5C11:
    rra                                           ; $5C11: $1F
    db $FC                                        ; $5C12: $FC

jr_00E_5C13:
    ld a, a                                       ; $5C13: $7F
    ldh a, [rIE]                                  ; $5C14: $F0 $FF
    db $FC                                        ; $5C16: $FC
    rst RST_38                                    ; $5C17: $FF
    rst RST_38                                    ; $5C18: $FF
    rlca                                          ; $5C19: $07
    rra                                           ; $5C1A: $1F
    ld c, $3F                                     ; $5C1B: $0E $3F
    db $10                                        ; $5C1D: $10
    ld sp, $0F00                                  ; $5C1E: $31 $00 $0F
    nop                                           ; $5C21: $00
    ldh a, [rIF]                                  ; $5C22: $F0 $0F
    nop                                           ; $5C24: $00
    rst RST_38                                    ; $5C25: $FF
    nop                                           ; $5C26: $00
    rst RST_38                                    ; $5C27: $FF
    ld bc, $00FE                                  ; $5C28: $01 $FE $00
    rst RST_38                                    ; $5C2B: $FF
    nop                                           ; $5C2C: $00
    rst RST_38                                    ; $5C2D: $FF
    ret nz                                        ; $5C2E: $C0

    rst RST_38                                    ; $5C2F: $FF
    nop                                           ; $5C30: $00
    rst RST_38                                    ; $5C31: $FF
    nop                                           ; $5C32: $00
    rst RST_38                                    ; $5C33: $FF
    nop                                           ; $5C34: $00
    rst RST_38                                    ; $5C35: $FF
    rlca                                          ; $5C36: $07
    ld hl, sp-$03                                 ; $5C37: $F8 $FD
    rst RST_00                                    ; $5C39: $C7
    rst RST_38                                    ; $5C3A: $FF
    rlca                                          ; $5C3B: $07
    rst RST_00                                    ; $5C3C: $C7
    dec sp                                        ; $5C3D: $3B
    jp $FEBC                                      ; $5C3E: $C3 $BC $FE


    nop                                           ; $5C41: $00
    ld [bc], a                                    ; $5C42: $02
    db $FC                                        ; $5C43: $FC
    inc e                                         ; $5C44: $1C
    ldh [$FF60], a                                ; $5C45: $E0 $60
    add b                                         ; $5C47: $80
    rst RST_38                                    ; $5C48: $FF
    nop                                           ; $5C49: $00
    ld bc, $06FE                                  ; $5C4A: $01 $FE $06
    ld hl, sp+$18                                 ; $5C4D: $F8 $18
    ldh [$FF7F], a                                ; $5C4F: $E0 $7F
    add b                                         ; $5C51: $80
    ld bc, $3EFE                                  ; $5C52: $01 $FE $3E
    ret nz                                        ; $5C55: $C0

    ld hl, sp+$20                                 ; $5C56: $F8 $20
    ld a, b                                       ; $5C58: $78
    ret nc                                        ; $5C59: $D0

    ld a, b                                       ; $5C5A: $78
    ldh [$FFF0], a                                ; $5C5B: $E0 $F0
    ldh [$FFF0], a                                ; $5C5D: $E0 $F0
    nop                                           ; $5C5F: $00
    ld bc, $0300                                  ; $5C60: $01 $00 $03
    ld bc, $0103                                  ; $5C63: $01 $03 $01
    dec b                                         ; $5C66: $05
    inc bc                                        ; $5C67: $03
    dec b                                         ; $5C68: $05
    inc bc                                        ; $5C69: $03
    add hl, bc                                    ; $5C6A: $09

jr_00E_5C6B:
    rlca                                          ; $5C6B: $07
    dec bc                                        ; $5C6C: $0B
    rlca                                          ; $5C6D: $07
    dec de                                        ; $5C6E: $1B
    rrca                                          ; $5C6F: $0F
    rra                                           ; $5C70: $1F
    ld c, $3F                                     ; $5C71: $0E $3F
    inc e                                         ; $5C73: $1C
    ld a, $18                                     ; $5C74: $3E $18
    ld a, h                                       ; $5C76: $7C
    jr nc, jr_00E_5CF1                            ; $5C77: $30 $78

    jr nz, jr_00E_5C6B                            ; $5C79: $20 $F0

    ld b, b                                       ; $5C7B: $40
    ldh [rP1], a                                  ; $5C7C: $E0 $00
    nop                                           ; $5C7E: $00
    nop                                           ; $5C7F: $00

Call_00E_5C80:
    ld a, b                                       ; $5C80: $78
    scf                                           ; $5C81: $37
    ld a, a                                       ; $5C82: $7F
    jr nz, jr_00E_5CA6                            ; $5C83: $20 $21

    ld e, $27                                     ; $5C85: $1E $27
    add hl, de                                    ; $5C87: $19
    ccf                                           ; $5C88: $3F
    ld bc, $0639                                  ; $5C89: $01 $39 $06
    jr nc, jr_00E_5C9D                            ; $5C8C: $30 $0F

    db $10                                        ; $5C8E: $10
    rrca                                          ; $5C8F: $0F
    db $10                                        ; $5C90: $10
    rrca                                          ; $5C91: $0F
    add hl, hl                                    ; $5C92: $29
    ld d, $C7                                     ; $5C93: $16 $C7
    jr c, @-$33                                   ; $5C95: $38 $CB

    or [hl]                                       ; $5C97: $B6
    di                                            ; $5C98: $F3
    rst RST_08                                    ; $5C99: $CF
    di                                            ; $5C9A: $F3
    rst RST_28                                    ; $5C9B: $EF
    db $FD                                        ; $5C9C: $FD

jr_00E_5C9D:
    rst RST_10                                    ; $5C9D: $D7
    ld sp, hl                                     ; $5C9E: $F9
    or a                                          ; $5C9F: $B7
    ld b, b                                       ; $5CA0: $40
    add b                                         ; $5CA1: $80
    ldh [rP1], a                                  ; $5CA2: $E0 $00
    sub b                                         ; $5CA4: $90
    ld h, b                                       ; $5CA5: $60

jr_00E_5CA6:
    ret nc                                        ; $5CA6: $D0

    and b                                         ; $5CA7: $A0
    ret z                                         ; $5CA8: $C8

    or b                                          ; $5CA9: $B0
    ld hl, sp-$40                                 ; $5CAA: $F8 $C0
    cp $38                                        ; $5CAC: $FE $38
    rst RST_38                                    ; $5CAE: $FF
    ld [$75FB], sp                                ; $5CAF: $08 $FB $75
    db $FD                                        ; $5CB2: $FD
    inc de                                        ; $5CB3: $13
    ld hl, sp+$67                                 ; $5CB4: $F8 $67
    ld a, b                                       ; $5CB6: $78
    sub a                                         ; $5CB7: $97
    rst RST_38                                    ; $5CB8: $FF
    ld h, b                                       ; $5CB9: $60
    cp b                                          ; $5CBA: $B8
    ld [hl], b                                    ; $5CBB: $70
    ret c                                         ; $5CBC: $D8

    or b                                          ; $5CBD: $B0
    ret c                                         ; $5CBE: $D8

    or b                                          ; $5CBF: $B0
    cp $45                                        ; $5CC0: $FE $45
    db $EB                                        ; $5CC2: $EB
    dec b                                         ; $5CC3: $05
    sbc l                                         ; $5CC4: $9D
    ld a, [bc]                                    ; $5CC5: $0A
    rra                                           ; $5CC6: $1F
    ld [bc], a                                    ; $5CC7: $02

jr_00E_5CC8:
    ld b, $00                                     ; $5CC8: $06 $00
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
    ld hl, sp+$50                                 ; $5CE0: $F8 $50
    add sp, $10                                   ; $5CE2: $E8 $10
    jr c, jr_00E_5CF6                             ; $5CE4: $38 $10

    jr jr_00E_5CE8                                ; $5CE6: $18 $00

jr_00E_5CE8:
    nop                                           ; $5CE8: $00
    nop                                           ; $5CE9: $00
    nop                                           ; $5CEA: $00
    nop                                           ; $5CEB: $00
    nop                                           ; $5CEC: $00
    nop                                           ; $5CED: $00
    nop                                           ; $5CEE: $00
    nop                                           ; $5CEF: $00
    nop                                           ; $5CF0: $00

jr_00E_5CF1:
    nop                                           ; $5CF1: $00
    nop                                           ; $5CF2: $00
    nop                                           ; $5CF3: $00
    nop                                           ; $5CF4: $00
    nop                                           ; $5CF5: $00

jr_00E_5CF6:
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
    add b                                         ; $5D00: $80
    nop                                           ; $5D01: $00
    ret nz                                        ; $5D02: $C0

    add b                                         ; $5D03: $80
    ld b, b                                       ; $5D04: $40
    add b                                         ; $5D05: $80
    jr nz, jr_00E_5CC8                            ; $5D06: $20 $C0

    ldh [rP1], a                                  ; $5D08: $E0 $00
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
    ccf                                           ; $5D20: $3F
    rrca                                          ; $5D21: $0F
    rst RST_38                                    ; $5D22: $FF
    ccf                                           ; $5D23: $3F
    cp $7F                                        ; $5D24: $FE $7F
    rst RST_38                                    ; $5D26: $FF
    ld a, a                                       ; $5D27: $7F
    rst RST_38                                    ; $5D28: $FF
    ld a, a                                       ; $5D29: $7F
    rst RST_38                                    ; $5D2A: $FF
    ld a, a                                       ; $5D2B: $7F
    cp $7F                                        ; $5D2C: $FE $7F
    ld a, a                                       ; $5D2E: $7F
    ccf                                           ; $5D2F: $3F
    ld a, a                                       ; $5D30: $7F
    ccf                                           ; $5D31: $3F
    ld a, h                                       ; $5D32: $7C
    ccf                                           ; $5D33: $3F
    jr c, jr_00E_5D55                             ; $5D34: $38 $1F

    ccf                                           ; $5D36: $3F
    rra                                           ; $5D37: $1F
    ld e, $0F                                     ; $5D38: $1E $0F
    inc e                                         ; $5D3A: $1C
    rrca                                          ; $5D3B: $0F
    rrca                                          ; $5D3C: $0F
    rlca                                          ; $5D3D: $07
    rlca                                          ; $5D3E: $07
    nop                                           ; $5D3F: $00
    pop hl                                        ; $5D40: $E1
    cp $80                                        ; $5D41: $FE $80
    rst RST_38                                    ; $5D43: $FF
    nop                                           ; $5D44: $00
    rst RST_38                                    ; $5D45: $FF
    ldh a, [rIE]                                  ; $5D46: $F0 $FF
    rst RST_00                                    ; $5D48: $C7
    ld hl, sp+$1F                                 ; $5D49: $F8 $1F
    ldh [rP1], a                                  ; $5D4B: $E0 $00
    rst RST_38                                    ; $5D4D: $FF
    jp Jump_000_0EFC                              ; $5D4E: $C3 $FC $0E


    pop af                                        ; $5D51: $F1
    ld bc, $3FFE                                  ; $5D52: $01 $FE $3F

jr_00E_5D55:
    ret nz                                        ; $5D55: $C0

    ld bc, $07FE                                  ; $5D56: $01 $FE $07
    ld hl, sp+$1C                                 ; $5D59: $F8 $1C
    ldh [$FF03], a                                ; $5D5B: $E0 $03
    db $FC                                        ; $5D5D: $FC
    rst RST_38                                    ; $5D5E: $FF
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
    nop                                           ; $5D76: $00
    nop                                           ; $5D77: $00
    nop                                           ; $5D78: $00
    nop                                           ; $5D79: $00
    rlca                                          ; $5D7A: $07
    nop                                           ; $5D7B: $00
    ccf                                           ; $5D7C: $3F
    rlca                                          ; $5D7D: $07
    rst RST_38                                    ; $5D7E: $FF
    ccf                                           ; $5D7F: $3F
    nop                                           ; $5D80: $00
    nop                                           ; $5D81: $00
    nop                                           ; $5D82: $00
    nop                                           ; $5D83: $00
    nop                                           ; $5D84: $00
    nop                                           ; $5D85: $00

jr_00E_5D86:
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
    inc bc                                        ; $5D96: $03
    nop                                           ; $5D97: $00
    ld a, a                                       ; $5D98: $7F
    inc bc                                        ; $5D99: $03
    db $FC                                        ; $5D9A: $FC
    ld a, a                                       ; $5D9B: $7F
    pop hl                                        ; $5D9C: $E1
    cp $86                                        ; $5D9D: $FE $86
    ld hl, sp-$80                                 ; $5D9F: $F8 $80
    nop                                           ; $5DA1: $00
    ld a, b                                       ; $5DA2: $78
    add b                                         ; $5DA3: $80
    jr jr_00E_5D86                                ; $5DA4: $18 $E0

    ldh [rP1], a                                  ; $5DA6: $E0 $00
    nop                                           ; $5DA8: $00
    nop                                           ; $5DA9: $00
    ld e, $00                                     ; $5DAA: $1E $00
    ld l, a                                       ; $5DAC: $6F
    ld e, $EF                                     ; $5DAD: $1E $EF
    ld a, h                                       ; $5DAF: $7C
    ld a, h                                       ; $5DB0: $7C
    ei                                            ; $5DB1: $FB
    db $FC                                        ; $5DB2: $FC
    ei                                            ; $5DB3: $FB
    cp $F9                                        ; $5DB4: $FE $F9
    ld sp, hl                                     ; $5DB6: $F9
    ld b, $FF                                     ; $5DB7: $06 $FF
    ldh a, [$FFF0]                                ; $5DB9: $F0 $F0
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
    ldh a, [rP1]                                  ; $5DD6: $F0 $00
    ldh a, [$FFE0]                                ; $5DD8: $F0 $E0
    ld h, b                                       ; $5DDA: $60
    add b                                         ; $5DDB: $80
    add b                                         ; $5DDC: $80
    nop                                           ; $5DDD: $00
    nop                                           ; $5DDE: $00
    nop                                           ; $5DDF: $00
    ld h, a                                       ; $5DE0: $67
    jr jr_00E_5E48                                ; $5DE1: $18 $65

    dec de                                        ; $5DE3: $1B
    ld h, h                                       ; $5DE4: $64
    dec de                                        ; $5DE5: $1B
    rst RST_38                                    ; $5DE6: $FF
    ld b, b                                       ; $5DE7: $40
    rst RST_38                                    ; $5DE8: $FF
    inc a                                         ; $5DE9: $3C
    rst RST_28                                    ; $5DEA: $EF

jr_00E_5DEB:
    dec a                                         ; $5DEB: $3D
    rst RST_08                                    ; $5DEC: $CF
    dec a                                         ; $5DED: $3D
    rst RST_08                                    ; $5DEE: $CF

jr_00E_5DEF:
    ld a, [hl-]                                   ; $5DEF: $3A
    sbc $38                                       ; $5DF0: $DE $38
    call c, $F838                                 ; $5DF2: $DC $38 $F8
    jr nc, jr_00E_5DEF                            ; $5DF5: $30 $F8

    jr nc, @-$06                                  ; $5DF7: $30 $F8

    jr nc, jr_00E_5DEB                            ; $5DF9: $30 $F0

    jr nz, jr_00E_5E6D                            ; $5DFB: $20 $70

    jr nz, jr_00E_5E6F                            ; $5DFD: $20 $70

    nop                                           ; $5DFF: $00
    pop hl                                        ; $5E00: $E1
    ld e, [hl]                                    ; $5E01: $5E
    or $28                                        ; $5E02: $F6 $28
    ld hl, sp-$20                                 ; $5E04: $F8 $E0
    db $FC                                        ; $5E06: $FC
    jr @-$04                                      ; $5E07: $18 $FA

    call z, $F2BF                                 ; $5E09: $CC $BF $F2
    rra                                           ; $5E0C: $1F
    ld hl, sp-$16                                 ; $5E0D: $F8 $EA
    or h                                          ; $5E0F: $B4
    cp $54                                        ; $5E10: $FE $54
    or l                                          ; $5E12: $B5
    ld c, d                                       ; $5E13: $4A
    rst RST_38                                    ; $5E14: $FF
    ld c, d                                       ; $5E15: $4A
    ld l, a                                       ; $5E16: $6F
    nop                                           ; $5E17: $00
    nop                                           ; $5E18: $00
    nop                                           ; $5E19: $00
    nop                                           ; $5E1A: $00
    nop                                           ; $5E1B: $00
    nop                                           ; $5E1C: $00
    nop                                           ; $5E1D: $00
    nop                                           ; $5E1E: $00
    nop                                           ; $5E1F: $00
    nop                                           ; $5E20: $00
    nop                                           ; $5E21: $00
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
    ld hl, sp+$00                                 ; $5E2C: $F8 $00
    adc h                                         ; $5E2E: $8C
    ld [hl], b                                    ; $5E2F: $70
    db $FC                                        ; $5E30: $FC
    nop                                           ; $5E31: $00
    rst RST_38                                    ; $5E32: $FF
    ret z                                         ; $5E33: $C8

    rst RST_08                                    ; $5E34: $CF
    or e                                          ; $5E35: $B3
    add a                                         ; $5E36: $87
    ld a, b                                       ; $5E37: $78
    add a                                         ; $5E38: $87
    ld a, c                                       ; $5E39: $79
    add a                                         ; $5E3A: $87
    ld a, b                                       ; $5E3B: $78
    rst RST_08                                    ; $5E3C: $CF
    or d                                          ; $5E3D: $B2
    rst RST_38                                    ; $5E3E: $FF
    add e                                         ; $5E3F: $83
    nop                                           ; $5E40: $00
    nop                                           ; $5E41: $00
    nop                                           ; $5E42: $00
    nop                                           ; $5E43: $00
    nop                                           ; $5E44: $00
    nop                                           ; $5E45: $00
    nop                                           ; $5E46: $00
    nop                                           ; $5E47: $00

jr_00E_5E48:
    nop                                           ; $5E48: $00
    nop                                           ; $5E49: $00
    nop                                           ; $5E4A: $00
    nop                                           ; $5E4B: $00
    nop                                           ; $5E4C: $00
    nop                                           ; $5E4D: $00
    ld bc, $0100                                  ; $5E4E: $01 $00 $01
    nop                                           ; $5E51: $00
    rra                                           ; $5E52: $1F
    nop                                           ; $5E53: $00
    ld a, l                                       ; $5E54: $7D
    ld a, [de]                                    ; $5E55: $1A
    dec e                                         ; $5E56: $1D
    ld l, d                                       ; $5E57: $6A
    dec e                                         ; $5E58: $1D
    ld l, d                                       ; $5E59: $6A
    dec e                                         ; $5E5A: $1D
    ld l, d                                       ; $5E5B: $6A
    ld a, a                                       ; $5E5C: $7F
    nop                                           ; $5E5D: $00
    ld h, c                                       ; $5E5E: $61
    nop                                           ; $5E5F: $00
    nop                                           ; $5E60: $00
    nop                                           ; $5E61: $00
    nop                                           ; $5E62: $00
    nop                                           ; $5E63: $00
    nop                                           ; $5E64: $00
    nop                                           ; $5E65: $00
    nop                                           ; $5E66: $00
    nop                                           ; $5E67: $00
    nop                                           ; $5E68: $00
    nop                                           ; $5E69: $00
    nop                                           ; $5E6A: $00
    nop                                           ; $5E6B: $00
    nop                                           ; $5E6C: $00

jr_00E_5E6D:
    nop                                           ; $5E6D: $00
    nop                                           ; $5E6E: $00

jr_00E_5E6F:
    nop                                           ; $5E6F: $00
    nop                                           ; $5E70: $00
    nop                                           ; $5E71: $00
    nop                                           ; $5E72: $00
    nop                                           ; $5E73: $00
    nop                                           ; $5E74: $00
    nop                                           ; $5E75: $00
    ret nz                                        ; $5E76: $C0

    nop                                           ; $5E77: $00
    ldh a, [$FF80]                                ; $5E78: $F0 $80
    cp h                                          ; $5E7A: $BC
    ld d, b                                       ; $5E7B: $50
    ldh [c], a                                    ; $5E7C: $E2
    inc e                                         ; $5E7D: $1C
    pop bc                                        ; $5E7E: $C1
    cp [hl]                                       ; $5E7F: $BE
    ld e, $00                                     ; $5E80: $1E $00
    ld l, a                                       ; $5E82: $6F
    ld e, $EF                                     ; $5E83: $1E $EF
    ld a, h                                       ; $5E85: $7C
    ld a, h                                       ; $5E86: $7C
    ei                                            ; $5E87: $FB
    db $FC                                        ; $5E88: $FC
    ei                                            ; $5E89: $FB
    cp $F9                                        ; $5E8A: $FE $F9
    ld sp, hl                                     ; $5E8C: $F9
    ld b, $FF                                     ; $5E8D: $06 $FF
    ldh a, [$FFF0]                                ; $5E8F: $F0 $F0
    nop                                           ; $5E91: $00
    nop                                           ; $5E92: $00
    nop                                           ; $5E93: $00
    nop                                           ; $5E94: $00
    nop                                           ; $5E95: $00
    nop                                           ; $5E96: $00
    nop                                           ; $5E97: $00
    nop                                           ; $5E98: $00
    nop                                           ; $5E99: $00
    nop                                           ; $5E9A: $00
    nop                                           ; $5E9B: $00
    nop                                           ; $5E9C: $00
    nop                                           ; $5E9D: $00
    nop                                           ; $5E9E: $00
    nop                                           ; $5E9F: $00
    add b                                         ; $5EA0: $80
    nop                                           ; $5EA1: $00
    ld b, b                                       ; $5EA2: $40
    add b                                         ; $5EA3: $80
    ld hl, $FFC0                                  ; $5EA4: $21 $C0 $FF
    pop hl                                        ; $5EA7: $E1
    rst RST_38                                    ; $5EA8: $FF
    rst RST_18                                    ; $5EA9: $DF
    rst RST_38                                    ; $5EAA: $FF
    jp Jump_00E_4CFF                              ; $5EAB: $C3 $FF $4C


    rst RST_38                                    ; $5EAE: $FF
    jr nz, jr_00E_5F21                            ; $5EAF: $20 $70

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
    nop                                           ; $5EC0: $00
    nop                                           ; $5EC1: $00
    nop                                           ; $5EC2: $00
    nop                                           ; $5EC3: $00
    nop                                           ; $5EC4: $00
    nop                                           ; $5EC5: $00
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
    ld b, $00                                     ; $5ED0: $06 $00
    rlca                                          ; $5ED2: $07
    ld [bc], a                                    ; $5ED3: $02
    ld b, $03                                     ; $5ED4: $06 $03
    rlca                                          ; $5ED6: $07
    inc bc                                        ; $5ED7: $03
    inc bc                                        ; $5ED8: $03
    ld bc, $0103                                  ; $5ED9: $01 $03 $01
    ld bc, $0100                                  ; $5EDC: $01 $00 $01
    nop                                           ; $5EDF: $00
    dec b                                         ; $5EE0: $05
    ld [bc], a                                    ; $5EE1: $02
    inc b                                         ; $5EE2: $04
    inc bc                                        ; $5EE3: $03
    inc b                                         ; $5EE4: $04
    inc bc                                        ; $5EE5: $03
    dec b                                         ; $5EE6: $05
    ld [bc], a                                    ; $5EE7: $02
    inc bc                                        ; $5EE8: $03
    nop                                           ; $5EE9: $00
    ld bc, $0300                                  ; $5EEA: $01 $00 $03

jr_00E_5EED:
    ld bc, $0003                                  ; $5EED: $01 $03 $00
    inc b                                         ; $5EF0: $04
    inc bc                                        ; $5EF1: $03
    ld [$1007], sp                                ; $5EF2: $08 $07 $10
    rrca                                          ; $5EF5: $0F
    dec sp                                        ; $5EF6: $3B
    inc b                                         ; $5EF7: $04

jr_00E_5EF8:
    ld a, a                                       ; $5EF8: $7F
    ld bc, $227F                                  ; $5EF9: $01 $7F $22
    ccf                                           ; $5EFC: $3F
    inc e                                         ; $5EFD: $1C
    inc e                                         ; $5EFE: $1C
    nop                                           ; $5EFF: $00
    ldh a, [$FF2F]                                ; $5F00: $F0 $2F
    ret z                                         ; $5F02: $C8

    scf                                           ; $5F03: $37
    rst RST_00                                    ; $5F04: $C7
    jr c, jr_00E_5EED                             ; $5F05: $38 $E6

    reti                                          ; $5F07: $D9


    db $FD                                        ; $5F08: $FD
    ld [bc], a                                    ; $5F09: $02
    ei                                            ; $5F0A: $FB
    dec b                                         ; $5F0B: $05
    rst RST_30                                    ; $5F0C: $F7
    db $EB                                        ; $5F0D: $EB
    rst RST_30                                    ; $5F0E: $F7
    ld l, e                                       ; $5F0F: $6B
    ld [hl], a                                    ; $5F10: $77
    xor e                                         ; $5F11: $AB
    ld a, a                                       ; $5F12: $7F
    and d                                         ; $5F13: $A2
    rst RST_38                                    ; $5F14: $FF
    dec b                                         ; $5F15: $05
    rst RST_30                                    ; $5F16: $F7
    and c                                         ; $5F17: $A1
    rst RST_30                                    ; $5F18: $F7
    ld b, e                                       ; $5F19: $43
    rst RST_28                                    ; $5F1A: $EF
    rst RST_00                                    ; $5F1B: $C7
    rst RST_28                                    ; $5F1C: $EF
    nop                                           ; $5F1D: $00
    nop                                           ; $5F1E: $00
    nop                                           ; $5F1F: $00
    ld b, b                                       ; $5F20: $40

jr_00E_5F21:
    add b                                         ; $5F21: $80
    ret nz                                        ; $5F22: $C0

    nop                                           ; $5F23: $00
    ldh [rP1], a                                  ; $5F24: $E0 $00
    ldh a, [$FF60]                                ; $5F26: $F0 $60
    ldh a, [$FFE0]                                ; $5F28: $F0 $E0
    sub b                                         ; $5F2A: $90
    ldh [$FFE0], a                                ; $5F2B: $E0 $E0
    ret nz                                        ; $5F2D: $C0

    ld b, b                                       ; $5F2E: $40
    add b                                         ; $5F2F: $80
    add b                                         ; $5F30: $80
    nop                                           ; $5F31: $00
    add b                                         ; $5F32: $80
    nop                                           ; $5F33: $00
    ld b, b                                       ; $5F34: $40
    add b                                         ; $5F35: $80
    jr nz, jr_00E_5EF8                            ; $5F36: $20 $C0

    ret nc                                        ; $5F38: $D0

    ldh [$FFF8], a                                ; $5F39: $E0 $F8
    ldh a, [$FFF8]                                ; $5F3B: $F0 $F8
    nop                                           ; $5F3D: $00
    nop                                           ; $5F3E: $00

Call_00E_5F3F:
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
    ld b, $00                                     ; $5F4C: $06 $00
    dec b                                         ; $5F4E: $05
    ld [bc], a                                    ; $5F4F: $02
    ccf                                           ; $5F50: $3F
    nop                                           ; $5F51: $00

jr_00E_5F52:
    ld b, c                                       ; $5F52: $41
    ld a, $FF                                     ; $5F53: $3E $FF
    ld c, c                                       ; $5F55: $49
    rst RST_38                                    ; $5F56: $FF
    dec d                                         ; $5F57: $15
    ccf                                           ; $5F58: $3F
    nop                                           ; $5F59: $00
    inc bc                                        ; $5F5A: $03
    nop                                           ; $5F5B: $00
    nop                                           ; $5F5C: $00
    nop                                           ; $5F5D: $00
    nop                                           ; $5F5E: $00
    nop                                           ; $5F5F: $00
    nop                                           ; $5F60: $00
    nop                                           ; $5F61: $00
    ld bc, $0200                                  ; $5F62: $01 $00 $02
    ld bc, $0304                                  ; $5F65: $01 $04 $03
    dec b                                         ; $5F68: $05
    inc bc                                        ; $5F69: $03
    rrca                                          ; $5F6A: $0F
    ld b, $0E                                     ; $5F6B: $06 $0E
    dec b                                         ; $5F6D: $05
    sbc h                                         ; $5F6E: $9C
    dec bc                                        ; $5F6F: $0B
    reti                                          ; $5F70: $D9


jr_00E_5F71:
    rlca                                          ; $5F71: $07
    cp e                                          ; $5F72: $BB
    rst RST_10                                    ; $5F73: $D7
    rst RST_38                                    ; $5F74: $FF
    nop                                           ; $5F75: $00
    jp $F77E                                      ; $5F76: $C3 $7E $F7


    cp $FF                                        ; $5F79: $FE $FF
    ld a, [hl]                                    ; $5F7B: $7E
    ld a, [hl]                                    ; $5F7C: $7E
    dec a                                         ; $5F7D: $3D
    ld a, a                                       ; $5F7E: $7F
    inc c                                         ; $5F7F: $0C
    ld [hl], e                                    ; $5F80: $73
    ld bc, $719B                                  ; $5F81: $01 $9B $71
    ld a, l                                       ; $5F84: $7D
    ld hl, sp-$03                                 ; $5F85: $F8 $FD
    ld hl, sp-$01                                 ; $5F87: $F8 $FF
    call z, $87CF                                 ; $5F89: $CC $CF $87
    rst RST_00                                    ; $5F8C: $C7
    nop                                           ; $5F8D: $00
    ld b, b                                       ; $5F8E: $40
    add b                                         ; $5F8F: $80
    jr nz, jr_00E_5F52                            ; $5F90: $20 $C0

    ld sp, $D3C0                                  ; $5F92: $31 $C0 $D3
    ld hl, $8364                                  ; $5F95: $21 $64 $83
    ld sp, hl                                     ; $5F98: $F9
    ld b, a                                       ; $5F99: $47
    ld hl, sp+$07                                 ; $5F9A: $F8 $07
    adc c                                         ; $5F9C: $89
    ld [hl], a                                    ; $5F9D: $77
    rlca                                          ; $5F9E: $07
    ld hl, sp-$20                                 ; $5F9F: $F8 $E0
    ret nz                                        ; $5FA1: $C0

    ret nz                                        ; $5FA2: $C0

    add b                                         ; $5FA3: $80
    ret nz                                        ; $5FA4: $C0

    nop                                           ; $5FA5: $00
    ret nz                                        ; $5FA6: $C0

    add b                                         ; $5FA7: $80

jr_00E_5FA8:
    ret nz                                        ; $5FA8: $C0

    add b                                         ; $5FA9: $80
    add e                                         ; $5FAA: $83
    nop                                           ; $5FAB: $00
    dec c                                         ; $5FAC: $0D
    ld [bc], a                                    ; $5FAD: $02
    ld [hl], $0C                                  ; $5FAE: $36 $0C
    rst RST_18                                    ; $5FB0: $DF
    jr nc, jr_00E_5FA8                            ; $5FB1: $30 $F5

    adc $DE                                       ; $5FB3: $CE $DE
    or b                                          ; $5FB5: $B0
    ld [hl], l                                    ; $5FB6: $75
    adc $DE                                       ; $5FB7: $CE $DE
    ldh a, [$FFF0]                                ; $5FB9: $F0 $F0
    ret nz                                        ; $5FBB: $C0

    ret nz                                        ; $5FBC: $C0

    add b                                         ; $5FBD: $80
    add b                                         ; $5FBE: $80
    nop                                           ; $5FBF: $00
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
    jr nc, jr_00E_5FD6                            ; $5FD4: $30 $00

jr_00E_5FD6:
    ld e, b                                       ; $5FD6: $58
    jr nz, jr_00E_5F71                            ; $5FD7: $20 $98

    ld [hl], b                                    ; $5FD9: $70
    cp h                                          ; $5FDA: $BC
    ld a, b                                       ; $5FDB: $78
    db $FC                                        ; $5FDC: $FC
    ld c, b                                       ; $5FDD: $48
    db $FC                                        ; $5FDE: $FC
    ld c, b                                       ; $5FDF: $48
    rra                                           ; $5FE0: $1F
    nop                                           ; $5FE1: $00
    ld h, e                                       ; $5FE2: $63
    ld e, $DF                                     ; $5FE3: $1E $DF
    ld a, a                                       ; $5FE5: $7F
    rst RST_38                                    ; $5FE6: $FF
    inc e                                         ; $5FE7: $1C
    inc e                                         ; $5FE8: $1C
    nop                                           ; $5FE9: $00
    nop                                           ; $5FEA: $00
    nop                                           ; $5FEB: $00
    nop                                           ; $5FEC: $00

jr_00E_5FED:
    nop                                           ; $5FED: $00
    nop                                           ; $5FEE: $00
    nop                                           ; $5FEF: $00
    nop                                           ; $5FF0: $00
    nop                                           ; $5FF1: $00
    nop                                           ; $5FF2: $00

jr_00E_5FF3:
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
    inc bc                                        ; $6000: $03
    nop                                           ; $6001: $00
    inc a                                         ; $6002: $3C
    inc bc                                        ; $6003: $03
    jp $FF3F                                      ; $6004: $C3 $3F $FF


    rst RST_38                                    ; $6007: $FF
    rst RST_38                                    ; $6008: $FF
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
    nop                                           ; $6020: $00
    nop                                           ; $6021: $00
    ld [hl], b                                    ; $6022: $70
    nop                                           ; $6023: $00
    ld l, h                                       ; $6024: $6C
    jr nc, jr_00E_6062                            ; $6025: $30 $3B

    inc c                                         ; $6027: $0C
    ld a, [hl]                                    ; $6028: $7E
    inc bc                                        ; $6029: $03
    ld l, e                                       ; $602A: $6B
    inc a                                         ; $602B: $3C
    ld a, $03                                     ; $602C: $3E $03
    ld l, e                                       ; $602E: $6B
    inc a                                         ; $602F: $3C
    ld a, [hl]                                    ; $6030: $7E
    inc bc                                        ; $6031: $03
    ld l, a                                       ; $6032: $6F
    jr jr_00E_5FF3                                ; $6033: $18 $BE

    ld b, b                                       ; $6035: $40
    rst RST_38                                    ; $6036: $FF
    inc a                                         ; $6037: $3C
    cp $FD                                        ; $6038: $FE $FD
    cp $FD                                        ; $603A: $FE $FD
    rst RST_38                                    ; $603C: $FF
    db $FC                                        ; $603D: $FC
    cp $00                                        ; $603E: $FE $00
    nop                                           ; $6040: $00
    nop                                           ; $6041: $00
    nop                                           ; $6042: $00
    nop                                           ; $6043: $00
    ret nz                                        ; $6044: $C0

    nop                                           ; $6045: $00
    pop af                                        ; $6046: $F1
    ret nz                                        ; $6047: $C0

jr_00E_6048:
    jp hl                                         ; $6048: $E9


    ld [hl], b                                    ; $6049: $70
    adc d                                         ; $604A: $8A
    pop af                                        ; $604B: $F1
    push hl                                       ; $604C: $E5
    ld hl, sp-$21                                 ; $604D: $F8 $DF
    ldh [$FFE7], a                                ; $604F: $E0 $E7
    ld e, c                                       ; $6051: $59
    jp Jump_00E_433C                              ; $6052: $C3 $3C $43


    cp h                                          ; $6055: $BC
    ld b, e                                       ; $6056: $43
    cp l                                          ; $6057: $BD
    rst RST_20                                    ; $6058: $E7
    dec de                                        ; $6059: $1B
    rra                                           ; $605A: $1F
    inc bc                                        ; $605B: $03
    inc bc                                        ; $605C: $03
    nop                                           ; $605D: $00
    ld bc, $2000                                  ; $605E: $01 $00 $20
    nop                                           ; $6061: $00

jr_00E_6062:
    ld d, b                                       ; $6062: $50
    jr nz, jr_00E_5FED                            ; $6063: $20 $88

    ld [hl], b                                    ; $6065: $70
    inc h                                         ; $6066: $24
    ld hl, sp+$67                                 ; $6067: $F8 $67
    ld hl, sp-$05                                 ; $6069: $F8 $FB
    ld b, l                                       ; $606B: $45
    ld c, a                                       ; $606C: $4F
    or e                                          ; $606D: $B3
    rst RST_38                                    ; $606E: $FF
    ld c, b                                       ; $606F: $48
    rst RST_38                                    ; $6070: $FF
    ld d, $FF                                     ; $6071: $16 $FF
    ld d, h                                       ; $6073: $54
    rst RST_38                                    ; $6074: $FF
    nop                                           ; $6075: $00
    sbc [hl]                                      ; $6076: $9E
    ld l, l                                       ; $6077: $6D
    adc h                                         ; $6078: $8C
    ld [hl], e                                    ; $6079: $73
    adc h                                         ; $607A: $8C
    ld [hl], e                                    ; $607B: $73
    sbc [hl]                                      ; $607C: $9E
    ld l, l                                       ; $607D: $6D
    rst RST_38                                    ; $607E: $FF
    nop                                           ; $607F: $00
    nop                                           ; $6080: $00
    nop                                           ; $6081: $00
    rlca                                          ; $6082: $07
    nop                                           ; $6083: $00
    dec de                                        ; $6084: $1B
    ld b, $6E                                     ; $6085: $06 $6E
    jr jr_00E_6048                                ; $6087: $18 $BF

    ld h, b                                       ; $6089: $60
    db $EB                                        ; $608A: $EB
    sbc [hl]                                      ; $608B: $9E
    cp [hl]                                       ; $608C: $BE
    ld h, b                                       ; $608D: $60
    db $EB                                        ; $608E: $EB
    sbc [hl]                                      ; $608F: $9E
    cp a                                          ; $6090: $BF
    ldh [$FFED], a                                ; $6091: $E0 $ED
    add b                                         ; $6093: $80
    adc e                                         ; $6094: $8B
    inc b                                         ; $6095: $04
    adc e                                         ; $6096: $8B
    rlca                                          ; $6097: $07
    sub a                                         ; $6098: $97
    rrca                                          ; $6099: $0F
    cp a                                          ; $609A: $BF

jr_00E_609B:
    ld c, $FE                                     ; $609B: $0E $FE
    jr nc, jr_00E_609B                            ; $609D: $30 $FC

    jr c, jr_00E_60C0                             ; $609F: $38 $1F

    nop                                           ; $60A1: $00
    ccf                                           ; $60A2: $3F
    ld e, $3F                                     ; $60A3: $1E $3F
    ld [bc], a                                    ; $60A5: $02
    inc hl                                        ; $60A6: $23
    inc e                                         ; $60A7: $1C
    inc hl                                        ; $60A8: $23
    inc e                                         ; $60A9: $1C
    ld b, e                                       ; $60AA: $43
    inc a                                         ; $60AB: $3C
    ld b, a                                       ; $60AC: $47
    ld a, [hl-]                                   ; $60AD: $3A
    rst RST_38                                    ; $60AE: $FF
    ld [bc], a                                    ; $60AF: $02
    rst RST_38                                    ; $60B0: $FF
    inc b                                         ; $60B1: $04
    cp $7C                                        ; $60B2: $FE $7C
    ld a, h                                       ; $60B4: $7C
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

jr_00E_60C0:
    sbc c                                         ; $60C0: $99
    ld l, [hl]                                    ; $60C1: $6E
    ccf                                           ; $60C2: $3F
    sbc $3E                                       ; $60C3: $DE $3E
    rst RST_18                                    ; $60C5: $DF
    ccf                                           ; $60C6: $3F
    rst RST_08                                    ; $60C7: $CF
    rst RST_08                                    ; $60C8: $CF
    rlca                                          ; $60C9: $07
    rlca                                          ; $60CA: $07
    inc bc                                        ; $60CB: $03
    inc bc                                        ; $60CC: $03
    nop                                           ; $60CD: $00
    inc bc                                        ; $60CE: $03
    ld bc, $0307                                  ; $60CF: $01 $07 $03
    rlca                                          ; $60D2: $07
    nop                                           ; $60D3: $00
    nop                                           ; $60D4: $00
    nop                                           ; $60D5: $00

Call_00E_60D6:
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
    add b                                         ; $60E0: $80
    nop                                           ; $60E1: $00
    add b                                         ; $60E2: $80
    nop                                           ; $60E3: $00
    ret nz                                        ; $60E4: $C0

    nop                                           ; $60E5: $00
    and b                                         ; $60E6: $A0
    ld b, b                                       ; $60E7: $40
    sub b                                         ; $60E8: $90
    ldh [$FFE8], a                                ; $60E9: $E0 $E8
    ldh a, [$FFFC]                                ; $60EB: $F0 $FC
    ld hl, sp-$04                                 ; $60ED: $F8 $FC
    nop                                           ; $60EF: $00
    nop                                           ; $60F0: $00
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
    ret nz                                        ; $6116: $C0

    nop                                           ; $6117: $00
    ld b, b                                       ; $6118: $40
    add b                                         ; $6119: $80
    ret nz                                        ; $611A: $C0

    add b                                         ; $611B: $80
    add b                                         ; $611C: $80
    nop                                           ; $611D: $00
    add b                                         ; $611E: $80
    nop                                           ; $611F: $00
    inc bc                                        ; $6120: $03
    ld bc, $0001                                  ; $6121: $01 $01 $00
    ld bc, $0300                                  ; $6124: $01 $00 $03
    ld bc, $0107                                  ; $6127: $01 $07 $01
    dec bc                                        ; $612A: $0B
    dec b                                         ; $612B: $05
    inc de                                        ; $612C: $13
    inc c                                         ; $612D: $0C
    ld h, c                                       ; $612E: $61
    ld e, $B3                                     ; $612F: $1E $B3
    ld c, l                                       ; $6131: $4D
    cp a                                          ; $6132: $BF
    ld [hl], d                                    ; $6133: $72
    ld a, a                                       ; $6134: $7F
    jr c, jr_00E_6173                             ; $6135: $38 $3C

    nop                                           ; $6137: $00
    nop                                           ; $6138: $00
    nop                                           ; $6139: $00
    nop                                           ; $613A: $00
    nop                                           ; $613B: $00
    nop                                           ; $613C: $00
    nop                                           ; $613D: $00
    nop                                           ; $613E: $00
    nop                                           ; $613F: $00
    rst RST_38                                    ; $6140: $FF
    ld b, $07                                     ; $6141: $06 $07
    ei                                            ; $6143: $FB
    di                                            ; $6144: $F3
    inc c                                         ; $6145: $0C
    ld a, [$FCF4]                                 ; $6146: $FA $F4 $FC
    adc b                                         ; $6149: $88
    adc b                                         ; $614A: $88
    ld [hl], b                                    ; $614B: $70
    adc h                                         ; $614C: $8C
    ld [hl], b                                    ; $614D: $70
    adc [hl]                                      ; $614E: $8E
    ld [hl], h                                    ; $614F: $74
    sbc [hl]                                      ; $6150: $9E
    ld h, h                                       ; $6151: $64
    ld a, a                                       ; $6152: $7F
    adc d                                         ; $6153: $8A
    ld a, a                                       ; $6154: $7F
    ei                                            ; $6155: $FB
    rst RST_38                                    ; $6156: $FF
    ld [hl], a                                    ; $6157: $77
    ld a, a                                       ; $6158: $7F
    nop                                           ; $6159: $00
    nop                                           ; $615A: $00
    nop                                           ; $615B: $00
    nop                                           ; $615C: $00
    nop                                           ; $615D: $00
    nop                                           ; $615E: $00
    nop                                           ; $615F: $00
    db $FC                                        ; $6160: $FC
    add b                                         ; $6161: $80
    ret nz                                        ; $6162: $C0

    nop                                           ; $6163: $00
    add b                                         ; $6164: $80
    nop                                           ; $6165: $00
    nop                                           ; $6166: $00
    nop                                           ; $6167: $00
    nop                                           ; $6168: $00
    nop                                           ; $6169: $00
    nop                                           ; $616A: $00
    nop                                           ; $616B: $00
    nop                                           ; $616C: $00
    nop                                           ; $616D: $00
    nop                                           ; $616E: $00
    nop                                           ; $616F: $00
    nop                                           ; $6170: $00
    nop                                           ; $6171: $00
    nop                                           ; $6172: $00

jr_00E_6173:
    nop                                           ; $6173: $00
    add b                                         ; $6174: $80
    nop                                           ; $6175: $00
    ret nz                                        ; $6176: $C0

    add b                                         ; $6177: $80
    ret nz                                        ; $6178: $C0

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
    ret nz                                        ; $6186: $C0

    nop                                           ; $6187: $00
    ldh [rLCDC], a                                ; $6188: $E0 $40
    ld d, b                                       ; $618A: $50
    jr nz, jr_00E_61C5                            ; $618B: $20 $38

    db $10                                        ; $618D: $10
    dec hl                                        ; $618E: $2B
    db $10                                        ; $618F: $10
    ccf                                           ; $6190: $3F
    ld [de], a                                    ; $6191: $12
    ld e, d                                       ; $6192: $5A
    inc h                                         ; $6193: $24
    db $FC                                        ; $6194: $FC
    jr z, jr_00E_61FF                             ; $6195: $28 $68

    ret nc                                        ; $6197: $D0

    db $FC                                        ; $6198: $FC
    and b                                         ; $6199: $A0
    or $CC                                        ; $619A: $F6 $CC
    sbc $F0                                       ; $619C: $DE $F0
    db $FC                                        ; $619E: $FC
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
    ldh a, [rP1]                                  ; $61AC: $F0 $00
    ld l, b                                       ; $61AE: $68
    ret nc                                        ; $61AF: $D0

    call nc, $F228                                ; $61B0: $D4 $28 $F2
    adc h                                         ; $61B3: $8C
    ldh a, [c]                                    ; $61B4: $F2
    xor h                                         ; $61B5: $AC
    rst RST_38                                    ; $61B6: $FF
    add b                                         ; $61B7: $80
    and d                                         ; $61B8: $A2
    ld e, l                                       ; $61B9: $5D
    pop bc                                        ; $61BA: $C1
    ld a, $C1                                     ; $61BB: $3E $C1
    cp [hl]                                       ; $61BD: $BE
    db $E3                                        ; $61BE: $E3
    ld e, l                                       ; $61BF: $5D
    nop                                           ; $61C0: $00
    nop                                           ; $61C1: $00
    nop                                           ; $61C2: $00
    nop                                           ; $61C3: $00
    nop                                           ; $61C4: $00

jr_00E_61C5:
    nop                                           ; $61C5: $00
    jr jr_00E_61C8                                ; $61C6: $18 $00

jr_00E_61C8:
    jr c, jr_00E_61DA                             ; $61C8: $38 $10

    jr z, @+$12                                   ; $61CA: $28 $10

    ldh a, [rNR41]                                ; $61CC: $F0 $20
    ld d, e                                       ; $61CE: $53
    and b                                         ; $61CF: $A0
    rst RST_38                                    ; $61D0: $FF
    ld b, b                                       ; $61D1: $40
    ldh a, [$FF5F]                                ; $61D2: $F0 $5F
    db $FD                                        ; $61D4: $FD
    ccf                                           ; $61D5: $3F
    rst RST_38                                    ; $61D6: $FF
    rra                                           ; $61D7: $1F
    sbc a                                         ; $61D8: $9F
    ld l, a                                       ; $61D9: $6F

jr_00E_61DA:
    ccf                                           ; $61DA: $3F
    jp $B47B                                      ; $61DB: $C3 $7B $B4


    rst RST_38                                    ; $61DE: $FF
    nop                                           ; $61DF: $00
    nop                                           ; $61E0: $00
    nop                                           ; $61E1: $00
    nop                                           ; $61E2: $00
    nop                                           ; $61E3: $00
    nop                                           ; $61E4: $00
    nop                                           ; $61E5: $00
    nop                                           ; $61E6: $00
    nop                                           ; $61E7: $00
    add b                                         ; $61E8: $80
    nop                                           ; $61E9: $00
    ldh [$FF80], a                                ; $61EA: $E0 $80
    ld hl, sp+$60                                 ; $61EC: $F8 $60
    rst RST_38                                    ; $61EE: $FF
    jr nc, jr_00E_6221                            ; $61EF: $30 $30

    rrca                                          ; $61F1: $0F
    ccf                                           ; $61F2: $3F
    ld [de], a                                    ; $61F3: $12
    ccf                                           ; $61F4: $3F
    dec b                                         ; $61F5: $05
    rrca                                          ; $61F6: $0F
    nop                                           ; $61F7: $00
    inc bc                                        ; $61F8: $03
    ld bc, $0001                                  ; $61F9: $01 $01 $00
    ld bc, $0100                                  ; $61FC: $01 $00 $01

jr_00E_61FF:
    nop                                           ; $61FF: $00
    nop                                           ; $6200: $00
    nop                                           ; $6201: $00
    nop                                           ; $6202: $00
    nop                                           ; $6203: $00
    nop                                           ; $6204: $00
    nop                                           ; $6205: $00
    nop                                           ; $6206: $00
    nop                                           ; $6207: $00
    nop                                           ; $6208: $00
    nop                                           ; $6209: $00
    nop                                           ; $620A: $00
    nop                                           ; $620B: $00
    nop                                           ; $620C: $00
    nop                                           ; $620D: $00
    nop                                           ; $620E: $00
    nop                                           ; $620F: $00
    nop                                           ; $6210: $00
    nop                                           ; $6211: $00
    nop                                           ; $6212: $00
    nop                                           ; $6213: $00
    jr jr_00E_6216                                ; $6214: $18 $00

jr_00E_6216:
    ld l, $10                                     ; $6216: $2E $10
    add hl, de                                    ; $6218: $19
    ld c, $2E                                     ; $6219: $0E $2E
    rla                                           ; $621B: $17
    ccf                                           ; $621C: $3F
    inc bc                                        ; $621D: $03
    inc bc                                        ; $621E: $03
    nop                                           ; $621F: $00
    rrca                                          ; $6220: $0F

jr_00E_6221:
    nop                                           ; $6221: $00
    ld [hl], $09                                  ; $6222: $36 $09
    ld e, b                                       ; $6224: $58
    daa                                           ; $6225: $27
    and b                                         ; $6226: $A0
    ld e, a                                       ; $6227: $5F
    rst RST_38                                    ; $6228: $FF
    nop                                           ; $6229: $00
    nop                                           ; $622A: $00
    nop                                           ; $622B: $00
    nop                                           ; $622C: $00
    nop                                           ; $622D: $00
    nop                                           ; $622E: $00
    nop                                           ; $622F: $00
    nop                                           ; $6230: $00
    nop                                           ; $6231: $00
    nop                                           ; $6232: $00
    nop                                           ; $6233: $00
    nop                                           ; $6234: $00
    nop                                           ; $6235: $00
    nop                                           ; $6236: $00
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
    ret nz                                        ; $6248: $C0

    nop                                           ; $6249: $00
    ccf                                           ; $624A: $3F
    ret nz                                        ; $624B: $C0

    rra                                           ; $624C: $1F
    ldh [$FF2A], a                                ; $624D: $E0 $2A
    rst RST_18                                    ; $624F: $DF
    rst RST_38                                    ; $6250: $FF
    nop                                           ; $6251: $00
    nop                                           ; $6252: $00
    nop                                           ; $6253: $00
    nop                                           ; $6254: $00
    nop                                           ; $6255: $00
    nop                                           ; $6256: $00
    nop                                           ; $6257: $00
    nop                                           ; $6258: $00
    nop                                           ; $6259: $00
    inc bc                                        ; $625A: $03
    nop                                           ; $625B: $00
    rlca                                          ; $625C: $07
    inc bc                                        ; $625D: $03
    rlca                                          ; $625E: $07
    nop                                           ; $625F: $00
    dec [hl]                                      ; $6260: $35
    ld e, $3F                                     ; $6261: $1E $3F
    ld bc, $0001                                  ; $6263: $01 $01 $00
    nop                                           ; $6266: $00
    nop                                           ; $6267: $00
    rst RST_38                                    ; $6268: $FF
    nop                                           ; $6269: $00
    rst RST_38                                    ; $626A: $FF
    nop                                           ; $626B: $00
    xor d                                         ; $626C: $AA
    rst RST_38                                    ; $626D: $FF
    rst RST_38                                    ; $626E: $FF
    nop                                           ; $626F: $00
    inc b                                         ; $6270: $04
    inc bc                                        ; $6271: $03
    add hl, bc                                    ; $6272: $09
    rlca                                          ; $6273: $07
    dec de                                        ; $6274: $1B
    rrca                                          ; $6275: $0F
    rst RST_38                                    ; $6276: $FF
    rra                                           ; $6277: $1F
    rst RST_38                                    ; $6278: $FF
    db $EC                                        ; $6279: $EC
    db $FC                                        ; $627A: $FC
    or b                                          ; $627B: $B0
    ld hl, sp+$00                                 ; $627C: $F8 $00
    nop                                           ; $627E: $00
    nop                                           ; $627F: $00
    rst RST_00                                    ; $6280: $C7
    ld a, b                                       ; $6281: $78
    ld a, a                                       ; $6282: $7F
    ldh [c], a                                    ; $6283: $E2
    rst RST_28                                    ; $6284: $EF
    ld d, h                                       ; $6285: $54
    ld l, a                                       ; $6286: $6F
    db $10                                        ; $6287: $10
    rst RST_38                                    ; $6288: $FF
    rlca                                          ; $6289: $07
    rst RST_38                                    ; $628A: $FF
    nop                                           ; $628B: $00
    xor b                                         ; $628C: $A8
    rst RST_38                                    ; $628D: $FF
    rst RST_38                                    ; $628E: $FF
    nop                                           ; $628F: $00
    rst RST_38                                    ; $6290: $FF
    ret nz                                        ; $6291: $C0

    pop af                                        ; $6292: $F1
    ldh [$FFF1], a                                ; $6293: $E0 $F1
    ret nz                                        ; $6295: $C0

    jp Jump_000_1F01                              ; $6296: $C3 $01 $1F


    ld bc, $1D6F                                  ; $6299: $01 $6F $1D
    rst RST_38                                    ; $629C: $FF
    halt                                          ; $629D: $76
    cp $00                                        ; $629E: $FE $00
    rst RST_38                                    ; $62A0: $FF
    sub b                                         ; $62A1: $90
    rst RST_38                                    ; $62A2: $FF
    inc l                                         ; $62A3: $2C
    db $FC                                        ; $62A4: $FC
    xor e                                         ; $62A5: $AB
    ld hl, sp+$07                                 ; $62A6: $F8 $07
    ld hl, sp-$09                                 ; $62A8: $F8 $F7
    ld hl, sp+$37                                 ; $62AA: $F8 $37
    ld [hl], h                                    ; $62AC: $74
    adc e                                         ; $62AD: $8B
    ei                                            ; $62AE: $FB
    ld [hl], h                                    ; $62AF: $74
    cp [hl]                                       ; $62B0: $BE
    ld a, c                                       ; $62B1: $79
    ld a, $F9                                     ; $62B2: $3E $F9
    ld a, [hl]                                    ; $62B4: $7E
    pop af                                        ; $62B5: $F1
    rst RST_38                                    ; $62B6: $FF
    db $EC                                        ; $62B7: $EC
    rst RST_38                                    ; $62B8: $FF
    ret c                                         ; $62B9: $D8

    ei                                            ; $62BA: $FB
    ld sp, $00F1                                  ; $62BB: $31 $F1 $00
    nop                                           ; $62BE: $00
    nop                                           ; $62BF: $00
    ld [hl], a                                    ; $62C0: $77
    db $FC                                        ; $62C1: $FC
    inc a                                         ; $62C2: $3C
    ldh a, [$FFF0]                                ; $62C3: $F0 $F0
    ld h, b                                       ; $62C5: $60
    ld h, b                                       ; $62C6: $60
    add b                                         ; $62C7: $80
    ld b, b                                       ; $62C8: $40
    add b                                         ; $62C9: $80
    ld b, b                                       ; $62CA: $40
    add b                                         ; $62CB: $80
    add b                                         ; $62CC: $80
    nop                                           ; $62CD: $00
    ret nz                                        ; $62CE: $C0

    nop                                           ; $62CF: $00
    ld b, b                                       ; $62D0: $40
    add b                                         ; $62D1: $80
    ld a, c                                       ; $62D2: $79
    add b                                         ; $62D3: $80
    ccf                                           ; $62D4: $3F
    ret c                                         ; $62D5: $D8

    ccf                                           ; $62D6: $3F
    sbc $3F                                       ; $62D7: $DE $3F
    rst RST_18                                    ; $62D9: $DF
    rst RST_30                                    ; $62DA: $F7
    jr c, @-$03                                   ; $62DB: $38 $FB

    pop af                                        ; $62DD: $F1
    di                                            ; $62DE: $F3
    nop                                           ; $62DF: $00
    ldh [rP1], a                                  ; $62E0: $E0 $00
    nop                                           ; $62E2: $00
    nop                                           ; $62E3: $00
    nop                                           ; $62E4: $00
    nop                                           ; $62E5: $00
    nop                                           ; $62E6: $00
    nop                                           ; $62E7: $00
    nop                                           ; $62E8: $00
    nop                                           ; $62E9: $00
    nop                                           ; $62EA: $00
    nop                                           ; $62EB: $00
    nop                                           ; $62EC: $00
    nop                                           ; $62ED: $00
    nop                                           ; $62EE: $00
    nop                                           ; $62EF: $00
    ret nz                                        ; $62F0: $C0

    nop                                           ; $62F1: $00
    ldh [$FFC0], a                                ; $62F2: $E0 $C0
    ldh [rLCDC], a                                ; $62F4: $E0 $40
    ldh a, [$FF60]                                ; $62F6: $F0 $60
    ldh a, [$FF60]                                ; $62F8: $F0 $60
    ldh a, [rNR41]                                ; $62FA: $F0 $20
    ldh a, [$FFE0]                                ; $62FC: $F0 $E0
    ldh a, [rP1]                                  ; $62FE: $F0 $00
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
    ldh [rP1], a                                  ; $6314: $E0 $00
    ret c                                         ; $6316: $D8

    ld h, b                                       ; $6317: $60

jr_00E_6318:
    halt                                          ; $6318: $76
    jr jr_00E_6318                                ; $6319: $18 $FD

    ld b, $D7                                     ; $631B: $06 $D7
    ld a, c                                       ; $631D: $79
    ld a, l                                       ; $631E: $7D
    ld b, $00                                     ; $631F: $06 $00
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
    nop                                           ; $632C: $00
    nop                                           ; $632D: $00
    nop                                           ; $632E: $00
    nop                                           ; $632F: $00
    nop                                           ; $6330: $00
    nop                                           ; $6331: $00
    ld bc, $0200                                  ; $6332: $01 $00 $02
    ld bc, $0304                                  ; $6335: $01 $04 $03
    add hl, bc                                    ; $6338: $09
    rlca                                          ; $6339: $07
    adc e                                         ; $633A: $8B
    rlca                                          ; $633B: $07
    rst RST_30                                    ; $633C: $F7
    adc d                                         ; $633D: $8A
    jp c, Jump_000_00E5                           ; $633E: $DA $E5 $00

    nop                                           ; $6341: $00
    nop                                           ; $6342: $00
    nop                                           ; $6343: $00
    nop                                           ; $6344: $00
    nop                                           ; $6345: $00
    nop                                           ; $6346: $00
    nop                                           ; $6347: $00
    nop                                           ; $6348: $00
    nop                                           ; $6349: $00
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
    add b                                         ; $6354: $80
    nop                                           ; $6355: $00
    ld b, b                                       ; $6356: $40
    add b                                         ; $6357: $80
    jr nz, @-$3E                                  ; $6358: $20 $C0

    scf                                           ; $635A: $37
    ret nz                                        ; $635B: $C0

    push de                                       ; $635C: $D5
    inc hl                                        ; $635D: $23
    ld h, h                                       ; $635E: $64
    add e                                         ; $635F: $83
    nop                                           ; $6360: $00
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

jr_00E_6370:
    nop                                           ; $6370: $00
    nop                                           ; $6371: $00
    inc bc                                        ; $6372: $03
    nop                                           ; $6373: $00
    dec c                                         ; $6374: $0D
    inc bc                                        ; $6375: $03
    scf                                           ; $6376: $37
    inc c                                         ; $6377: $0C
    rst RST_18                                    ; $6378: $DF
    jr nc, jr_00E_6370                            ; $6379: $30 $F5

    rst RST_08                                    ; $637B: $CF
    rst RST_18                                    ; $637C: $DF
    or b                                          ; $637D: $B0
    ld [hl], l                                    ; $637E: $75
    rst RST_08                                    ; $637F: $CF
    nop                                           ; $6380: $00
    nop                                           ; $6381: $00
    nop                                           ; $6382: $00
    nop                                           ; $6383: $00
    nop                                           ; $6384: $00
    nop                                           ; $6385: $00
    nop                                           ; $6386: $00
    nop                                           ; $6387: $00
    nop                                           ; $6388: $00
    nop                                           ; $6389: $00
    nop                                           ; $638A: $00
    nop                                           ; $638B: $00
    nop                                           ; $638C: $00
    nop                                           ; $638D: $00
    nop                                           ; $638E: $00
    nop                                           ; $638F: $00
    nop                                           ; $6390: $00
    nop                                           ; $6391: $00
    add b                                         ; $6392: $80
    nop                                           ; $6393: $00
    add b                                         ; $6394: $80
    nop                                           ; $6395: $00
    nop                                           ; $6396: $00
    nop                                           ; $6397: $00
    add b                                         ; $6398: $80
    nop                                           ; $6399: $00
    add b                                         ; $639A: $80
    nop                                           ; $639B: $00
    nop                                           ; $639C: $00
    nop                                           ; $639D: $00
    add b                                         ; $639E: $80
    nop                                           ; $639F: $00
    ld b, $00                                     ; $63A0: $06 $00
    rra                                           ; $63A2: $1F
    inc b                                         ; $63A3: $04
    daa                                           ; $63A4: $27
    dec e                                         ; $63A5: $1D
    ld c, a                                       ; $63A6: $4F
    ld a, $FF                                     ; $63A7: $3E $FF
    ld a, a                                       ; $63A9: $7F
    rst RST_38                                    ; $63AA: $FF
    nop                                           ; $63AB: $00
    nop                                           ; $63AC: $00
    nop                                           ; $63AD: $00
    nop                                           ; $63AE: $00
    nop                                           ; $63AF: $00
    nop                                           ; $63B0: $00
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
    ld b, $03                                     ; $63C0: $06 $03
    rlca                                          ; $63C2: $07
    nop                                           ; $63C3: $00
    nop                                           ; $63C4: $00
    nop                                           ; $63C5: $00
    nop                                           ; $63C6: $00
    nop                                           ; $63C7: $00
    nop                                           ; $63C8: $00
    nop                                           ; $63C9: $00
    nop                                           ; $63CA: $00
    nop                                           ; $63CB: $00
    nop                                           ; $63CC: $00
    nop                                           ; $63CD: $00
    rlca                                          ; $63CE: $07
    nop                                           ; $63CF: $00
    rra                                           ; $63D0: $1F
    rlca                                          ; $63D1: $07
    ld a, e                                       ; $63D2: $7B
    rra                                           ; $63D3: $1F
    db $EB                                        ; $63D4: $EB
    ld a, a                                       ; $63D5: $7F
    rst RST_38                                    ; $63D6: $FF
    rst RST_38                                    ; $63D7: $FF
    rst RST_38                                    ; $63D8: $FF
    ld c, $8E                                     ; $63D9: $0E $8E
    nop                                           ; $63DB: $00
    add b                                         ; $63DC: $80
    nop                                           ; $63DD: $00
    nop                                           ; $63DE: $00
    nop                                           ; $63DF: $00
    cp b                                          ; $63E0: $B8
    rst RST_08                                    ; $63E1: $CF
    xor $3F                                       ; $63E2: $EE $3F
    inc a                                         ; $63E4: $3C
    rrca                                          ; $63E5: $0F
    ld c, $03                                     ; $63E6: $0E $03
    inc bc                                        ; $63E8: $03
    nop                                           ; $63E9: $00
    inc bc                                        ; $63EA: $03
    ld bc, $0001                                  ; $63EB: $01 $01 $00
    ld [bc], a                                    ; $63EE: $02
    ld bc, $01FE                                  ; $63EF: $01 $FE $01
    rst RST_00                                    ; $63F2: $C7
    cp d                                          ; $63F3: $BA
    rst RST_00                                    ; $63F4: $C7
    cp b                                          ; $63F5: $B8
    sbc a                                         ; $63F6: $9F
    ld h, b                                       ; $63F7: $60
    rst RST_38                                    ; $63F8: $FF
    nop                                           ; $63F9: $00
    ccf                                           ; $63FA: $3F
    nop                                           ; $63FB: $00
    rra                                           ; $63FC: $1F
    nop                                           ; $63FD: $00
    rlca                                          ; $63FE: $07
    nop                                           ; $63FF: $00
    sub [hl]                                      ; $6400: $96
    rrca                                          ; $6401: $0F
    rst RST_28                                    ; $6402: $EF
    inc d                                         ; $6403: $14
    ld [hl], h                                    ; $6404: $74
    xor e                                         ; $6405: $AB
    rst RST_38                                    ; $6406: $FF
    inc b                                         ; $6407: $04
    rst RST_08                                    ; $6408: $CF
    or c                                          ; $6409: $B1
    add a                                         ; $640A: $87
    ld a, b                                       ; $640B: $78
    adc a                                         ; $640C: $8F
    ld [hl], c                                    ; $640D: $71
    sub a                                         ; $640E: $97
    ld l, e                                       ; $640F: $6B
    ld d, a                                       ; $6410: $57
    xor e                                         ; $6411: $AB
    or a                                          ; $6412: $B7
    ld c, e                                       ; $6413: $4B
    rst RST_38                                    ; $6414: $FF
    nop                                           ; $6415: $00
    rst RST_38                                    ; $6416: $FF
    ld de, $1CEF                                  ; $6417: $11 $EF $1C
    xor $3C                                       ; $641A: $EE $3C
    cp $78                                        ; $641C: $FE $78
    ld hl, sp+$00                                 ; $641E: $F8 $00
    ld a, a                                       ; $6420: $7F
    add b                                         ; $6421: $80
    xor e                                         ; $6422: $AB
    ld e, [hl]                                    ; $6423: $5E
    rst RST_38                                    ; $6424: $FF
    nop                                           ; $6425: $00
    ei                                            ; $6426: $FB
    adc h                                         ; $6427: $8C
    rst RST_38                                    ; $6428: $FF
    ld h, d                                       ; $6429: $62
    rst RST_38                                    ; $642A: $FF
    ld e, $E6                                     ; $642B: $1E $E6
    db $FC                                        ; $642D: $FC
    sbc h                                         ; $642E: $9C
    ld hl, sp-$08                                 ; $642F: $F8 $F8
    ldh [$FFFC], a                                ; $6431: $E0 $FC
    sbc b                                         ; $6433: $98
    ld a, [$FD5C]                                 ; $6434: $FA $5C $FD
    sbc [hl]                                      ; $6437: $9E
    cp a                                          ; $6438: $BF
    ld [bc], a                                    ; $6439: $02
    ld a, a                                       ; $643A: $7F
    inc e                                         ; $643B: $1C
    rst RST_38                                    ; $643C: $FF
    halt                                          ; $643D: $76
    rst RST_38                                    ; $643E: $FF
    nop                                           ; $643F: $00
    nop                                           ; $6440: $00
    nop                                           ; $6441: $00
    nop                                           ; $6442: $00
    nop                                           ; $6443: $00
    nop                                           ; $6444: $00
    nop                                           ; $6445: $00
    nop                                           ; $6446: $00
    nop                                           ; $6447: $00
    nop                                           ; $6448: $00
    nop                                           ; $6449: $00
    nop                                           ; $644A: $00
    nop                                           ; $644B: $00
    nop                                           ; $644C: $00
    nop                                           ; $644D: $00
    nop                                           ; $644E: $00
    nop                                           ; $644F: $00
    nop                                           ; $6450: $00
    nop                                           ; $6451: $00
    nop                                           ; $6452: $00
    nop                                           ; $6453: $00
    ldh [rP1], a                                  ; $6454: $E0 $00
    ret c                                         ; $6456: $D8

    ld h, b                                       ; $6457: $60

jr_00E_6458:
    halt                                          ; $6458: $76
    jr jr_00E_6458                                ; $6459: $18 $FD

    ld b, $D7                                     ; $645B: $06 $D7
    ld a, c                                       ; $645D: $79
    ld a, l                                       ; $645E: $7D
    ld b, $00                                     ; $645F: $06 $00
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
    add b                                         ; $647A: $80
    nop                                           ; $647B: $00
    pop hl                                        ; $647C: $E1
    add b                                         ; $647D: $80
    jp nc, Jump_000_00E1                          ; $647E: $D2 $E1 $00

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
    nop                                           ; $6492: $00
    nop                                           ; $6493: $00
    nop                                           ; $6494: $00
    nop                                           ; $6495: $00
    nop                                           ; $6496: $00
    nop                                           ; $6497: $00
    ld b, b                                       ; $6498: $40
    nop                                           ; $6499: $00
    and b                                         ; $649A: $A0
    ld b, b                                       ; $649B: $40
    inc de                                        ; $649C: $13
    ldh [rKEY1], a                                ; $649D: $E0 $4D
    di                                            ; $649F: $F3
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
    nop                                           ; $64AD: $00
    ldh [rP1], a                                  ; $64AE: $E0 $00
    ld h, c                                       ; $64B0: $61
    ret nz                                        ; $64B1: $C0

    rst RST_00                                    ; $64B2: $C7
    ld bc, $06E9                                  ; $64B3: $01 $E9 $06
    ld a, l                                       ; $64B6: $7D
    rst RST_08                                    ; $64B7: $CF
    db $FD                                        ; $64B8: $FD
    ld e, $7F                                     ; $64B9: $1E $7F
    sbc a                                         ; $64BB: $9F
    rst RST_38                                    ; $64BC: $FF
    ld e, b                                       ; $64BD: $58
    ld hl, sp-$40                                 ; $64BE: $F8 $C0
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
    add b                                         ; $64D2: $80
    nop                                           ; $64D3: $00
    add b                                         ; $64D4: $80
    nop                                           ; $64D5: $00
    ret nz                                        ; $64D6: $C0

    nop                                           ; $64D7: $00
    ret nz                                        ; $64D8: $C0

    add b                                         ; $64D9: $80
    add b                                         ; $64DA: $80
    nop                                           ; $64DB: $00
    ret nz                                        ; $64DC: $C0

    add b                                         ; $64DD: $80

jr_00E_64DE:
    add b                                         ; $64DE: $80
    nop                                           ; $64DF: $00
    add b                                         ; $64E0: $80
    nop                                           ; $64E1: $00
    ret nz                                        ; $64E2: $C0

    nop                                           ; $64E3: $00
    ret nz                                        ; $64E4: $C0

    add b                                         ; $64E5: $80
    ldh [$FFC0], a                                ; $64E6: $E0 $C0
    ldh [rLCDC], a                                ; $64E8: $E0 $40
    ldh [rLCDC], a                                ; $64EA: $E0 $40
    ldh [$FFC0], a                                ; $64EC: $E0 $C0
    ret nz                                        ; $64EE: $C0

    add b                                         ; $64EF: $80
    ret nz                                        ; $64F0: $C0

    nop                                           ; $64F1: $00
    ret nz                                        ; $64F2: $C0

    add b                                         ; $64F3: $80

jr_00E_64F4:
    ret nz                                        ; $64F4: $C0

    add b                                         ; $64F5: $80
    add e                                         ; $64F6: $83
    nop                                           ; $64F7: $00
    dec c                                         ; $64F8: $0D
    ld [bc], a                                    ; $64F9: $02
    ld [hl], $0C                                  ; $64FA: $36 $0C
    rst RST_18                                    ; $64FC: $DF
    jr nc, jr_00E_64F4                            ; $64FD: $30 $F5

    adc $01                                       ; $64FF: $CE $01
    nop                                           ; $6501: $00
    ld [bc], a                                    ; $6502: $02
    ld bc, $0304                                  ; $6503: $01 $04 $03
    dec b                                         ; $6506: $05
    inc bc                                        ; $6507: $03
    rlca                                          ; $6508: $07
    ld [bc], a                                    ; $6509: $02
    rlca                                          ; $650A: $07
    ld [bc], a                                    ; $650B: $02
    ld [hl], e                                    ; $650C: $73
    ld bc, $719B                                  ; $650D: $01 $9B $71
    ld a, l                                       ; $6510: $7D
    ld hl, sp-$03                                 ; $6511: $F8 $FD
    ld hl, sp-$01                                 ; $6513: $F8 $FF
    call z, $87CF                                 ; $6515: $CC $CF $87
    rst RST_00                                    ; $6518: $C7
    nop                                           ; $6519: $00
    ld b, b                                       ; $651A: $40
    add b                                         ; $651B: $80
    jr nz, jr_00E_64DE                            ; $651C: $20 $C0

    ld sp, $01C0                                  ; $651E: $31 $C0 $01
    nop                                           ; $6521: $00
    ld [bc], a                                    ; $6522: $02
    ld bc, $0304                                  ; $6523: $01 $04 $03
    dec b                                         ; $6526: $05
    inc bc                                        ; $6527: $03
    rrca                                          ; $6528: $0F
    ld b, $0E                                     ; $6529: $06 $0E
    dec b                                         ; $652B: $05
    sbc h                                         ; $652C: $9C
    dec bc                                        ; $652D: $0B
    reti                                          ; $652E: $D9


    rlca                                          ; $652F: $07
    cp e                                          ; $6530: $BB
    rst RST_10                                    ; $6531: $D7
    rst RST_38                                    ; $6532: $FF
    nop                                           ; $6533: $00
    jp $F77E                                      ; $6534: $C3 $7E $F7


    cp $FF                                        ; $6537: $FE $FF
    ld a, [hl]                                    ; $6539: $7E
    ld a, [hl]                                    ; $653A: $7E
    dec a                                         ; $653B: $3D
    ld a, a                                       ; $653C: $7F
    inc c                                         ; $653D: $0C
    ld e, a                                       ; $653E: $5F
    jr nz, jr_00E_6547                            ; $653F: $20 $06

    nop                                           ; $6541: $00
    dec b                                         ; $6542: $05
    ld [bc], a                                    ; $6543: $02
    ccf                                           ; $6544: $3F
    nop                                           ; $6545: $00
    ld b, c                                       ; $6546: $41

jr_00E_6547:
    ld a, $FF                                     ; $6547: $3E $FF
    ld c, c                                       ; $6549: $49
    rst RST_38                                    ; $654A: $FF
    dec d                                         ; $654B: $15
    ccf                                           ; $654C: $3F
    nop                                           ; $654D: $00
    inc bc                                        ; $654E: $03
    nop                                           ; $654F: $00
    nop                                           ; $6550: $00
    nop                                           ; $6551: $00
    nop                                           ; $6552: $00
    nop                                           ; $6553: $00
    nop                                           ; $6554: $00
    nop                                           ; $6555: $00
    inc c                                         ; $6556: $0C
    nop                                           ; $6557: $00
    ld e, $0C                                     ; $6558: $1E $0C
    rra                                           ; $655A: $1F
    ld c, $1F                                     ; $655B: $0E $1F
    ld c, $09                                     ; $655D: $0E $09
    rlca                                          ; $655F: $07

jr_00E_6560:
    sbc $B0                                       ; $6560: $DE $B0
    ld [hl], l                                    ; $6562: $75
    adc $DE                                       ; $6563: $CE $DE
    ldh a, [$FFF0]                                ; $6565: $F0 $F0
    ret nz                                        ; $6567: $C0

    ret nz                                        ; $6568: $C0

    add b                                         ; $6569: $80
    add b                                         ; $656A: $80
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
    nop                                           ; $657E: $00
    nop                                           ; $657F: $00
    db $D3                                        ; $6580: $D3
    ld hl, $8364                                  ; $6581: $21 $64 $83
    ld sp, hl                                     ; $6584: $F9
    ld b, a                                       ; $6585: $47
    ld a, b                                       ; $6586: $78
    add a                                         ; $6587: $87
    adc c                                         ; $6588: $89
    ld [hl], a                                    ; $6589: $77
    rlca                                          ; $658A: $07
    ld hl, sp+$04                                 ; $658B: $F8 $04
    ld hl, sp-$74                                 ; $658D: $F8 $8C
    ld [hl], b                                    ; $658F: $70
    ld a, h                                       ; $6590: $7C
    adc b                                         ; $6591: $88
    ld a, b                                       ; $6592: $78
    add b                                         ; $6593: $80
    ret nc                                        ; $6594: $D0

    jr nz, jr_00E_65F7                            ; $6595: $20 $60

    add b                                         ; $6597: $80
    add b                                         ; $6598: $80
    nop                                           ; $6599: $00
    ld b, b                                       ; $659A: $40
    add b                                         ; $659B: $80
    jr nz, @-$3E                                  ; $659C: $20 $C0

    jr nz, jr_00E_6560                            ; $659E: $20 $C0

    ld c, h                                       ; $65A0: $4C
    inc sp                                        ; $65A1: $33
    ld c, h                                       ; $65A2: $4C
    inc sp                                        ; $65A3: $33
    cp $0D                                        ; $65A4: $FE $0D
    rra                                           ; $65A6: $1F
    ldh [$FF8E], a                                ; $65A7: $E0 $8E
    ld [hl], c                                    ; $65A9: $71
    rst RST_08                                    ; $65AA: $CF
    or [hl]                                       ; $65AB: $B6
    adc $B5                                       ; $65AC: $CE $B5
    cp [hl]                                       ; $65AE: $BE
    dec b                                         ; $65AF: $05
    ld b, $01                                     ; $65B0: $06 $01
    inc bc                                        ; $65B2: $03
    nop                                           ; $65B3: $00
    rlca                                          ; $65B4: $07
    ld [bc], a                                    ; $65B5: $02
    rlca                                          ; $65B6: $07
    nop                                           ; $65B7: $00
    rrca                                          ; $65B8: $0F
    ld b, $0E                                     ; $65B9: $06 $0E
    rlca                                          ; $65BB: $07
    ld c, $07                                     ; $65BC: $0E $07
    ld b, $03                                     ; $65BE: $06 $03
    rrca                                          ; $65C0: $0F
    rlca                                          ; $65C1: $07
    dec bc                                        ; $65C2: $0B
    rlca                                          ; $65C3: $07
    rrca                                          ; $65C4: $0F
    rlca                                          ; $65C5: $07
    rra                                           ; $65C6: $1F
    ld b, $3E                                     ; $65C7: $06 $3E
    inc d                                         ; $65C9: $14
    ld a, $10                                     ; $65CA: $3E $10
    ld e, [hl]                                    ; $65CC: $5E
    inc a                                         ; $65CD: $3C
    ld e, a                                       ; $65CE: $5F
    ld a, $BF                                     ; $65CF: $3E $BF
    ld a, b                                       ; $65D1: $78
    ld hl, sp+$70                                 ; $65D2: $F8 $70
    ldh a, [$FFC0]                                ; $65D4: $F0 $C0
    ret nz                                        ; $65D6: $C0

    nop                                           ; $65D7: $00
    nop                                           ; $65D8: $00
    nop                                           ; $65D9: $00
    nop                                           ; $65DA: $00
    nop                                           ; $65DB: $00
    nop                                           ; $65DC: $00
    nop                                           ; $65DD: $00
    nop                                           ; $65DE: $00
    nop                                           ; $65DF: $00
    ld h, [hl]                                    ; $65E0: $66
    jr @+$01                                      ; $65E1: $18 $FF

    ld b, d                                       ; $65E3: $42
    rst RST_38                                    ; $65E4: $FF
    ld e, $FF                                     ; $65E5: $1E $FF
    sbc $DE                                       ; $65E7: $DE $DE
    ldh [$FFD8], a                                ; $65E9: $E0 $D8
    ldh a, [$FFD8]                                ; $65EB: $F0 $D8
    ld [hl], b                                    ; $65ED: $70
    ldh a, [$FF60]                                ; $65EE: $F0 $60
    ld [hl], b                                    ; $65F0: $70
    nop                                           ; $65F1: $00
    nop                                           ; $65F2: $00
    nop                                           ; $65F3: $00
    nop                                           ; $65F4: $00
    nop                                           ; $65F5: $00
    nop                                           ; $65F6: $00

jr_00E_65F7:
    nop                                           ; $65F7: $00
    nop                                           ; $65F8: $00
    nop                                           ; $65F9: $00
    nop                                           ; $65FA: $00
    nop                                           ; $65FB: $00
    nop                                           ; $65FC: $00
    nop                                           ; $65FD: $00
    nop                                           ; $65FE: $00
    nop                                           ; $65FF: $00
    ld bc, $0100                                  ; $6600: $01 $00 $01
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
    nop                                           ; $661C: $00
    nop                                           ; $661D: $00
    nop                                           ; $661E: $00
    nop                                           ; $661F: $00
    nop                                           ; $6620: $00
    nop                                           ; $6621: $00
    nop                                           ; $6622: $00
    nop                                           ; $6623: $00
    ldh [rP1], a                                  ; $6624: $E0 $00
    ret c                                         ; $6626: $D8

    ld h, b                                       ; $6627: $60

jr_00E_6628:
    halt                                          ; $6628: $76
    jr jr_00E_6628                                ; $6629: $18 $FD

    ld b, $D7                                     ; $662B: $06 $D7
    ld a, c                                       ; $662D: $79
    ld a, l                                       ; $662E: $7D
    ld b, $D7                                     ; $662F: $06 $D7
    ld a, c                                       ; $6631: $79
    db $FD                                        ; $6632: $FD
    rlca                                          ; $6633: $07
    rlca                                          ; $6634: $07
    ld bc, $0001                                  ; $6635: $01 $01 $00
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
    nop                                           ; $6642: $00
    nop                                           ; $6643: $00
    nop                                           ; $6644: $00
    nop                                           ; $6645: $00
    nop                                           ; $6646: $00
    nop                                           ; $6647: $00
    ld bc, $8200                                  ; $6648: $01 $00 $82
    ld bc, $81F2                                  ; $664B: $01 $F2 $81
    push de                                       ; $664E: $D5
    ldh [c], a                                    ; $664F: $E2
    ld [de], a                                    ; $6650: $12
    pop hl                                        ; $6651: $E1
    rst RST_10                                    ; $6652: $D7
    ldh [$FF8F], a                                ; $6653: $E0 $8F
    di                                            ; $6655: $F3
    rst RST_38                                    ; $6656: $FF
    call nz, $1BE7                                ; $6657: $C4 $E7 $1B
    ld b, e                                       ; $665A: $43
    dec a                                         ; $665B: $3D
    ld b, e                                       ; $665C: $43
    dec a                                         ; $665D: $3D
    ld b, e                                       ; $665E: $43
    dec a                                         ; $665F: $3D
    nop                                           ; $6660: $00
    nop                                           ; $6661: $00
    nop                                           ; $6662: $00
    nop                                           ; $6663: $00
    ld b, b                                       ; $6664: $40
    nop                                           ; $6665: $00
    and b                                         ; $6666: $A0
    ld b, b                                       ; $6667: $40
    inc de                                        ; $6668: $13
    ldh [rWY], a                                  ; $6669: $E0 $4A
    pop af                                        ; $666B: $F1
    add $F9                                       ; $666C: $C6 $F9
    or $C9                                        ; $666E: $F6 $C9
    adc $31                                       ; $6670: $CE $31
    rst RST_38                                    ; $6672: $FF
    ld c, h                                       ; $6673: $4C
    cp $69                                        ; $6674: $FE $69
    rst RST_38                                    ; $6676: $FF
    and b                                         ; $6677: $A0
    cp $0D                                        ; $6678: $FE $0D
    adc h                                         ; $667A: $8C
    ld [hl], e                                    ; $667B: $73
    adc h                                         ; $667C: $8C
    ld [hl], e                                    ; $667D: $73
    sbc [hl]                                      ; $667E: $9E
    ld l, l                                       ; $667F: $6D
    ld bc, $0600                                  ; $6680: $01 $00 $06

jr_00E_6683:
    ld bc, $061B                                  ; $6683: $01 $1B $06
    ld l, a                                       ; $6686: $6F
    jr jr_00E_6683                                ; $6687: $18 $FA

    ld h, a                                       ; $6689: $67
    rst RST_28                                    ; $668A: $EF
    ret c                                         ; $668B: $D8

    ld a, [hl-]                                   ; $668C: $3A
    rst RST_20                                    ; $668D: $E7
    rst RST_28                                    ; $668E: $EF
    ld hl, sp+$78                                 ; $668F: $F8 $78
    ldh [$FFE0], a                                ; $6691: $E0 $E0
    ld b, b                                       ; $6693: $40
    ld a, b                                       ; $6694: $78
    add b                                         ; $6695: $80
    ld a, h                                       ; $6696: $7C
    xor b                                         ; $6697: $A8
    cp $34                                        ; $6698: $FE $34
    cp $14                                        ; $669A: $FE $14
    cp $24                                        ; $669C: $FE $24
    cp $18                                        ; $669E: $FE $18
    ret nz                                        ; $66A0: $C0

    nop                                           ; $66A1: $00
    ret nz                                        ; $66A2: $C0

    add b                                         ; $66A3: $80
    add b                                         ; $66A4: $80
    nop                                           ; $66A5: $00
    ret nz                                        ; $66A6: $C0

    nop                                           ; $66A7: $00
    ret nz                                        ; $66A8: $C0

    add b                                         ; $66A9: $80
    add b                                         ; $66AA: $80
    nop                                           ; $66AB: $00
    ret nz                                        ; $66AC: $C0

    add b                                         ; $66AD: $80
    ret nz                                        ; $66AE: $C0

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
    nop                                           ; $66BA: $00
    nop                                           ; $66BB: $00
    nop                                           ; $66BC: $00
    nop                                           ; $66BD: $00
    nop                                           ; $66BE: $00
    nop                                           ; $66BF: $00
    ld bc, $0100                                  ; $66C0: $01 $00 $01
    nop                                           ; $66C3: $00
    inc bc                                        ; $66C4: $03
    ld bc, $0207                                  ; $66C5: $01 $07 $02
    ld c, $04                                     ; $66C8: $0E $04
    ld d, $0C                                     ; $66CA: $16 $0C
    ld l, $1C                                     ; $66CC: $2E $1C
    ld e, h                                       ; $66CE: $5C
    jr c, @-$06                                   ; $66CF: $38 $F8

    ld h, b                                       ; $66D1: $60
    ldh [rP1], a                                  ; $66D2: $E0 $00
    nop                                           ; $66D4: $00
    nop                                           ; $66D5: $00
    nop                                           ; $66D6: $00
    nop                                           ; $66D7: $00
    nop                                           ; $66D8: $00
    nop                                           ; $66D9: $00
    nop                                           ; $66DA: $00
    nop                                           ; $66DB: $00
    nop                                           ; $66DC: $00
    nop                                           ; $66DD: $00
    nop                                           ; $66DE: $00
    nop                                           ; $66DF: $00
    ld a, [hl-]                                   ; $66E0: $3A
    ld bc, $2B7C                                  ; $66E1: $01 $7C $2B
    ld a, h                                       ; $66E4: $7C
    dec hl                                        ; $66E5: $2B
    rst RST_28                                    ; $66E6: $EF
    ld e, h                                       ; $66E7: $5C
    rst RST_28                                    ; $66E8: $EF
    ld e, [hl]                                    ; $66E9: $5E
    sbc $3C                                       ; $66EA: $DE $3C
    call c, $B838                                 ; $66EC: $DC $38 $B8
    ld [hl], b                                    ; $66EF: $70
    ldh a, [$FF60]                                ; $66F0: $F0 $60
    ldh [$FFC0], a                                ; $66F2: $E0 $C0
    ret nz                                        ; $66F4: $C0

    add b                                         ; $66F5: $80
    add b                                         ; $66F6: $80
    nop                                           ; $66F7: $00
    nop                                           ; $66F8: $00
    nop                                           ; $66F9: $00
    nop                                           ; $66FA: $00
    nop                                           ; $66FB: $00
    nop                                           ; $66FC: $00
    nop                                           ; $66FD: $00
    nop                                           ; $66FE: $00
    nop                                           ; $66FF: $00
    sbc a                                         ; $6700: $9F
    ld h, b                                       ; $6701: $60
    ld h, h                                       ; $6702: $64
    add e                                         ; $6703: $83
    add d                                         ; $6704: $82
    ld bc, $0003                                  ; $6705: $01 $03 $00
    inc b                                         ; $6708: $04
    inc bc                                        ; $6709: $03
    ld [$0807], sp                                ; $670A: $08 $07 $08
    rlca                                          ; $670D: $07
    add hl, de                                    ; $670E: $19
    ld b, $3F                                     ; $670F: $06 $3F
    db $10                                        ; $6711: $10
    ccf                                           ; $6712: $3F
    ld e, $3F                                     ; $6713: $1E $3F
    ld e, $1E                                     ; $6715: $1E $1E
    ld bc, $0306                                  ; $6717: $01 $06 $03
    ld b, $03                                     ; $671A: $06 $03
    inc bc                                        ; $671C: $03
    ld bc, $0003                                  ; $671D: $01 $03 $00
    rst RST_38                                    ; $6720: $FF
    nop                                           ; $6721: $00
    ld sp, $E3CE                                  ; $6722: $31 $CE $E3
    dec e                                         ; $6725: $1D
    rst RST_20                                    ; $6726: $E7
    db $DB                                        ; $6727: $DB
    rst RST_20                                    ; $6728: $E7
    ld e, e                                       ; $6729: $5B
    ei                                            ; $672A: $FB
    ld b, c                                       ; $672B: $41
    pop bc                                        ; $672C: $C1
    nop                                           ; $672D: $00
    add b                                         ; $672E: $80
    nop                                           ; $672F: $00
    ret nz                                        ; $6730: $C0

    add b                                         ; $6731: $80
    ret nz                                        ; $6732: $C0

    nop                                           ; $6733: $00
    pop hl                                        ; $6734: $E1
    ret nz                                        ; $6735: $C0

    pop hl                                        ; $6736: $E1
    ret nz                                        ; $6737: $C0

    ldh [$FFC0], a                                ; $6738: $E0 $C0
    ret nz                                        ; $673A: $C0

    add b                                         ; $673B: $80
    ret nz                                        ; $673C: $C0

    add b                                         ; $673D: $80
    add b                                         ; $673E: $80
    nop                                           ; $673F: $00
    ld hl, sp-$20                                 ; $6740: $F8 $E0
    ldh a, [$FFE0]                                ; $6742: $F0 $E0
    jr nz, @-$3E                                  ; $6744: $20 $C0

    ldh [$FFC0], a                                ; $6746: $E0 $C0
    and b                                         ; $6748: $A0
    ret nz                                        ; $6749: $C0

    ldh [$FFC0], a                                ; $674A: $E0 $C0
    ldh a, [$FFC0]                                ; $674C: $F0 $C0
    ld hl, sp+$50                                 ; $674E: $F8 $50
    ld hl, sp+$10                                 ; $6750: $F8 $10
    db $F4                                        ; $6752: $F4
    ld a, b                                       ; $6753: $78
    db $F4                                        ; $6754: $F4
    ld hl, sp-$06                                 ; $6755: $F8 $FA
    inc a                                         ; $6757: $3C
    ld a, $1C                                     ; $6758: $3E $1C
    rra                                           ; $675A: $1F
    ld b, $07                                     ; $675B: $06 $07
    nop                                           ; $675D: $00
    nop                                           ; $675E: $00
    nop                                           ; $675F: $00
    nop                                           ; $6760: $00
    nop                                           ; $6761: $00
    nop                                           ; $6762: $00
    nop                                           ; $6763: $00
    ldh [rP1], a                                  ; $6764: $E0 $00
    ret c                                         ; $6766: $D8

    ld h, b                                       ; $6767: $60

jr_00E_6768:
    halt                                          ; $6768: $76
    jr jr_00E_6768                                ; $6769: $18 $FD

    ld b, $D7                                     ; $676B: $06 $D7
    ld a, c                                       ; $676D: $79
    ld a, l                                       ; $676E: $7D
    ld b, $D7                                     ; $676F: $06 $D7
    ld a, c                                       ; $6771: $79
    db $FD                                        ; $6772: $FD
    rlca                                          ; $6773: $07
    rlca                                          ; $6774: $07
    ld bc, $0001                                  ; $6775: $01 $01 $00
    ld bc, $0100                                  ; $6778: $01 $00 $01
    nop                                           ; $677B: $00
    ld bc, $0100                                  ; $677C: $01 $00 $01
    nop                                           ; $677F: $00
    nop                                           ; $6780: $00
    nop                                           ; $6781: $00
    inc b                                         ; $6782: $04
    nop                                           ; $6783: $00
    ld a, [bc]                                    ; $6784: $0A
    inc b                                         ; $6785: $04

jr_00E_6786:
    ld de, $240E                                  ; $6786: $11 $0E $24
    rra                                           ; $6789: $1F
    xor h                                         ; $678A: $AC
    rra                                           ; $678B: $1F
    rst RST_18                                    ; $678C: $DF
    xor b                                         ; $678D: $A8
    jp hl                                         ; $678E: $E9


    sub $7F                                       ; $678F: $D6 $7F
    adc c                                         ; $6791: $89
    rst RST_38                                    ; $6792: $FF
    and d                                         ; $6793: $A2
    rst RST_38                                    ; $6794: $FF
    adc d                                         ; $6795: $8A
    rst RST_38                                    ; $6796: $FF
    ld [hl], b                                    ; $6797: $70
    rst RST_38                                    ; $6798: $FF
    nop                                           ; $6799: $00

jr_00E_679A:
    ld a, c                                       ; $679A: $79
    or [hl]                                       ; $679B: $B6
    ld sp, $33CE                                  ; $679C: $31 $CE $33
    call z, RST_00                                ; $679F: $CC $00 $00
    nop                                           ; $67A2: $00
    nop                                           ; $67A3: $00
    nop                                           ; $67A4: $00
    nop                                           ; $67A5: $00
    ld bc, $8F00                                  ; $67A6: $01 $00 $8F
    ld bc, $07CB                                  ; $67A9: $01 $CB $07
    ld c, b                                       ; $67AC: $48
    add a                                         ; $67AD: $87
    adc e                                         ; $67AE: $8B
    rlca                                          ; $67AF: $07
    pop af                                        ; $67B0: $F1
    rrca                                          ; $67B1: $0F
    rst RST_38                                    ; $67B2: $FF
    jp $98E7                                      ; $67B3: $C3 $E7 $98


    jp $C23C                                      ; $67B6: $C3 $3C $C2


    cp l                                          ; $67B9: $BD
    jp nz, $E7BD                                  ; $67BA: $C2 $BD $E7

    ret c                                         ; $67BD: $D8

    cp $03                                        ; $67BE: $FE $03
    rlca                                          ; $67C0: $07
    nop                                           ; $67C1: $00
    dec de                                        ; $67C2: $1B
    ld b, $6E                                     ; $67C3: $06 $6E
    jr jr_00E_6786                                ; $67C5: $18 $BF

    ld h, b                                       ; $67C7: $60
    db $EB                                        ; $67C8: $EB
    sbc [hl]                                      ; $67C9: $9E
    cp [hl]                                       ; $67CA: $BE
    ld h, b                                       ; $67CB: $60
    db $EB                                        ; $67CC: $EB
    sbc [hl]                                      ; $67CD: $9E
    cp a                                          ; $67CE: $BF
    ldh [$FFE0], a                                ; $67CF: $E0 $E0
    add b                                         ; $67D1: $80
    add b                                         ; $67D2: $80
    nop                                           ; $67D3: $00
    nop                                           ; $67D4: $00
    nop                                           ; $67D5: $00
    ret nz                                        ; $67D6: $C0

    nop                                           ; $67D7: $00
    jr nc, jr_00E_679A                            ; $67D8: $30 $C0

    ld hl, sp+$30                                 ; $67DA: $F8 $30
    ld e, $F0                                     ; $67DC: $1E $F0
    ld a, $EC                                     ; $67DE: $3E $EC
    nop                                           ; $67E0: $00
    nop                                           ; $67E1: $00
    inc bc                                        ; $67E2: $03
    nop                                           ; $67E3: $00
    inc a                                         ; $67E4: $3C
    inc bc                                        ; $67E5: $03
    ld c, a                                       ; $67E6: $4F
    scf                                           ; $67E7: $37
    rst RST_38                                    ; $67E8: $FF
    ld a, b                                       ; $67E9: $78
    rst RST_38                                    ; $67EA: $FF
    ld bc, $0307                                  ; $67EB: $01 $07 $03
    rlca                                          ; $67EE: $07
    inc bc                                        ; $67EF: $03
    inc b                                         ; $67F0: $04
    inc bc                                        ; $67F1: $03
    rlca                                          ; $67F2: $07
    inc bc                                        ; $67F3: $03
    dec bc                                        ; $67F4: $0B
    rlca                                          ; $67F5: $07
    rrca                                          ; $67F6: $0F
    rlca                                          ; $67F7: $07
    rra                                           ; $67F8: $1F
    ld c, $DE                                     ; $67F9: $0E $DE
    inc c                                         ; $67FB: $0C
    db $FC                                        ; $67FC: $FC
    ld e, b                                       ; $67FD: $58
    cp $40                                        ; $67FE: $FE $40
    sbc $2D                                       ; $6800: $DE $2D
    ld a, a                                       ; $6802: $7F
    ret nz                                        ; $6803: $C0

    rst RST_38                                    ; $6804: $FF
    xor $EF                                       ; $6805: $EE $EF
    push de                                       ; $6807: $D5
    rst RST_08                                    ; $6808: $CF
    or l                                          ; $6809: $B5
    adc a                                         ; $680A: $8F
    ld [hl], h                                    ; $680B: $74
    adc a                                         ; $680C: $8F
    ld [hl], b                                    ; $680D: $70
    sub a                                         ; $680E: $97
    ld h, b                                       ; $680F: $60
    rst RST_20                                    ; $6810: $E7
    add b                                         ; $6811: $80
    rst RST_28                                    ; $6812: $EF
    ret nz                                        ; $6813: $C0

    rst RST_08                                    ; $6814: $CF
    add b                                         ; $6815: $80
    adc [hl]                                      ; $6816: $8E
    nop                                           ; $6817: $00
    nop                                           ; $6818: $00
    nop                                           ; $6819: $00
    nop                                           ; $681A: $00
    nop                                           ; $681B: $00
    nop                                           ; $681C: $00

jr_00E_681D:
    nop                                           ; $681D: $00
    nop                                           ; $681E: $00
    nop                                           ; $681F: $00
    rst RST_38                                    ; $6820: $FF
    dec sp                                        ; $6821: $3B
    rst RST_38                                    ; $6822: $FF
    call c, Call_000_00FE                         ; $6823: $DC $FE $00
    sbc b                                         ; $6826: $98
    ldh a, [$FFF0]                                ; $6827: $F0 $F0
    ldh [$FFF0], a                                ; $6829: $E0 $F0
    jr nz, jr_00E_681D                            ; $682B: $20 $F0

    nop                                           ; $682D: $00
    ldh a, [rP1]                                  ; $682E: $F0 $00
    ldh [rP1], a                                  ; $6830: $E0 $00
    ldh [rP1], a                                  ; $6832: $E0 $00
    ret nz                                        ; $6834: $C0

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
    ld e, a                                       ; $6840: $5F
    ld a, $5E                                     ; $6841: $3E $5E
    inc a                                         ; $6843: $3C
    cp h                                          ; $6844: $BC
    ld a, b                                       ; $6845: $78
    cp b                                          ; $6846: $B8
    ld [hl], b                                    ; $6847: $70
    ldh a, [$FF60]                                ; $6848: $F0 $60
    ldh [rLCDC], a                                ; $684A: $E0 $40
    ret nz                                        ; $684C: $C0

jr_00E_684D:
    nop                                           ; $684D: $00
    nop                                           ; $684E: $00
    nop                                           ; $684F: $00
    nop                                           ; $6850: $00
    nop                                           ; $6851: $00
    nop                                           ; $6852: $00
    nop                                           ; $6853: $00
    nop                                           ; $6854: $00
    nop                                           ; $6855: $00
    nop                                           ; $6856: $00
    nop                                           ; $6857: $00
    nop                                           ; $6858: $00
    nop                                           ; $6859: $00
    nop                                           ; $685A: $00
    nop                                           ; $685B: $00
    nop                                           ; $685C: $00
    nop                                           ; $685D: $00
    nop                                           ; $685E: $00
    nop                                           ; $685F: $00
    rst RST_38                                    ; $6860: $FF
    ld hl, sp-$02                                 ; $6861: $F8 $FE
    inc e                                         ; $6863: $1C
    inc e                                         ; $6864: $1C
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
    ldh [rP1], a                                  ; $688C: $E0 $00
    ret c                                         ; $688E: $D8

    ld h, b                                       ; $688F: $60

jr_00E_6890:
    halt                                          ; $6890: $76
    jr jr_00E_6890                                ; $6891: $18 $FD

    ld b, $D7                                     ; $6893: $06 $D7
    ld a, c                                       ; $6895: $79
    ld a, l                                       ; $6896: $7D
    ld b, $D7                                     ; $6897: $06 $D7
    ld a, c                                       ; $6899: $79
    db $FD                                        ; $689A: $FD
    rlca                                          ; $689B: $07
    rlca                                          ; $689C: $07
    ld bc, $0001                                  ; $689D: $01 $01 $00
    nop                                           ; $68A0: $00
    nop                                           ; $68A1: $00
    nop                                           ; $68A2: $00
    nop                                           ; $68A3: $00
    add b                                         ; $68A4: $80
    nop                                           ; $68A5: $00
    pop af                                        ; $68A6: $F1
    add b                                         ; $68A7: $80
    pop de                                        ; $68A8: $D1
    ldh [rNR12], a                                ; $68A9: $E0 $12
    pop hl                                        ; $68AB: $E1
    pop de                                        ; $68AC: $D1
    ldh [$FF8B], a                                ; $68AD: $E0 $8B
    ldh a, [rIE]                                  ; $68AF: $F0 $FF
    pop bc                                        ; $68B1: $C1
    rst RST_08                                    ; $68B2: $CF
    ld [hl], $87                                  ; $68B3: $36 $87
    ld a, d                                       ; $68B5: $7A
    add a                                         ; $68B6: $87
    ld a, d                                       ; $68B7: $7A
    add a                                         ; $68B8: $87
    ld a, d                                       ; $68B9: $7A
    ld c, e                                       ; $68BA: $4B
    inc [hl]                                      ; $68BB: $34
    ld sp, $0B0E                                  ; $68BC: $31 $0E $0B
    dec b                                         ; $68BF: $05
    jr nz, jr_00E_68C2                            ; $68C0: $20 $00

jr_00E_68C2:
    ld d, b                                       ; $68C2: $50
    jr nz, jr_00E_684D                            ; $68C3: $20 $88

    ld [hl], b                                    ; $68C5: $70
    inc h                                         ; $68C6: $24
    ld hl, sp+$66                                 ; $68C7: $F8 $66
    ld hl, sp-$05                                 ; $68C9: $F8 $FB
    ld b, h                                       ; $68CB: $44
    ld c, l                                       ; $68CC: $4D
    or b                                          ; $68CD: $B0
    rst RST_38                                    ; $68CE: $FF
    ld c, b                                       ; $68CF: $48
    rst RST_38                                    ; $68D0: $FF
    ld d, $FE                                     ; $68D1: $16 $FE
    ld d, l                                       ; $68D3: $55
    rst RST_38                                    ; $68D4: $FF
    nop                                           ; $68D5: $00
    rra                                           ; $68D6: $1F
    db $EC                                        ; $68D7: $EC
    rra                                           ; $68D8: $1F
    pop hl                                        ; $68D9: $E1
    rst RST_38                                    ; $68DA: $FF
    rrca                                          ; $68DB: $0F
    di                                            ; $68DC: $F3
    cp $CE                                        ; $68DD: $FE $CE
    db $FC                                        ; $68DF: $FC
    nop                                           ; $68E0: $00
    nop                                           ; $68E1: $00
    inc bc                                        ; $68E2: $03
    nop                                           ; $68E3: $00
    ld c, $03                                     ; $68E4: $0E $03
    dec sp                                        ; $68E6: $3B
    inc c                                         ; $68E7: $0C
    xor $33                                       ; $68E8: $EE $33
    ld a, e                                       ; $68EA: $7B
    db $EC                                        ; $68EB: $EC
    ld e, $F1                                     ; $68EC: $1E $F1
    rst RST_38                                    ; $68EE: $FF
    inc h                                         ; $68EF: $24
    daa                                           ; $68F0: $27
    ret c                                         ; $68F1: $D8

    ld [hl], a                                    ; $68F2: $77
    cp [hl]                                       ; $68F3: $BE
    rst RST_30                                    ; $68F4: $F7
    ld a, b                                       ; $68F5: $78
    rst RST_38                                    ; $68F6: $FF
    ld a, [hl]                                    ; $68F7: $7E
    rst RST_38                                    ; $68F8: $FF
    ld h, c                                       ; $68F9: $61
    rst RST_38                                    ; $68FA: $FF
    rrca                                          ; $68FB: $0F
    rra                                           ; $68FC: $1F
    nop                                           ; $68FD: $00
    nop                                           ; $68FE: $00
    nop                                           ; $68FF: $00
    ret nz                                        ; $6900: $C0

    nop                                           ; $6901: $00
    ret nz                                        ; $6902: $C0

    add b                                         ; $6903: $80
    add b                                         ; $6904: $80
    nop                                           ; $6905: $00
    ret nz                                        ; $6906: $C0

    nop                                           ; $6907: $00
    ret nz                                        ; $6908: $C0

    add b                                         ; $6909: $80
    add b                                         ; $690A: $80
    nop                                           ; $690B: $00
    ret nz                                        ; $690C: $C0

    add b                                         ; $690D: $80
    ret nz                                        ; $690E: $C0

    nop                                           ; $690F: $00
    nop                                           ; $6910: $00
    nop                                           ; $6911: $00
    nop                                           ; $6912: $00
    nop                                           ; $6913: $00
    ld [hl], $00                                  ; $6914: $36 $00
    jp c, $FE24                                   ; $6916: $DA $24 $FE

    sbc h                                         ; $6919: $9C
    db $FD                                        ; $691A: $FD
    sbc $FF                                       ; $691B: $DE $FF
    inc a                                         ; $691D: $3C
    db $FC                                        ; $691E: $FC
    nop                                           ; $691F: $00
    rrca                                          ; $6920: $0F
    ld bc, $0D13                                  ; $6921: $01 $13 $0D
    ld hl, $611E                                  ; $6924: $21 $1E $61
    ld e, $FF                                     ; $6927: $1E $FF
    ld h, b                                       ; $6929: $60
    rst RST_38                                    ; $692A: $FF
    ld a, [hl]                                    ; $692B: $7E
    cp $78                                        ; $692C: $FE $78
    ld a, b                                       ; $692E: $78
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
    db $FC                                        ; $6940: $FC
    ldh a, [$FFF2]                                ; $6941: $F0 $F2
    call z, $2EF1                                 ; $6943: $CC $F1 $2E
    ldh a, [$FFCF]                                ; $6946: $F0 $CF
    ld sp, hl                                     ; $6948: $F9
    ld d, $FF                                     ; $6949: $16 $FF
    ld [hl], b                                    ; $694B: $70
    ld sp, hl                                     ; $694C: $F9
    ld [hl], b                                    ; $694D: $70
    ld a, b                                       ; $694E: $78
    jr nc, jr_00E_69C1                            ; $694F: $30 $70

    jr nz, @+$22                                  ; $6951: $20 $20

    nop                                           ; $6953: $00
    nop                                           ; $6954: $00
    nop                                           ; $6955: $00
    nop                                           ; $6956: $00
    nop                                           ; $6957: $00
    nop                                           ; $6958: $00
    nop                                           ; $6959: $00
    nop                                           ; $695A: $00
    nop                                           ; $695B: $00
    nop                                           ; $695C: $00
    nop                                           ; $695D: $00
    nop                                           ; $695E: $00
    nop                                           ; $695F: $00
    add b                                         ; $6960: $80
    nop                                           ; $6961: $00
    ldh a, [rP1]                                  ; $6962: $F0 $00
    ld hl, sp-$10                                 ; $6964: $F8 $F0
    cp h                                          ; $6966: $BC
    ld hl, sp-$52                                 ; $6967: $F8 $AE
    db $FC                                        ; $6969: $FC
    rst RST_38                                    ; $696A: $FF
    ld a, [hl]                                    ; $696B: $7E
    ld a, a                                       ; $696C: $7F
    rra                                           ; $696D: $1F
    rra                                           ; $696E: $1F
    nop                                           ; $696F: $00
    inc bc                                        ; $6970: $03
    ld bc, $0001                                  ; $6971: $01 $01 $00
    nop                                           ; $6974: $00
    nop                                           ; $6975: $00
    nop                                           ; $6976: $00
    nop                                           ; $6977: $00
    nop                                           ; $6978: $00
    nop                                           ; $6979: $00
    nop                                           ; $697A: $00
    nop                                           ; $697B: $00
    nop                                           ; $697C: $00
    nop                                           ; $697D: $00
    nop                                           ; $697E: $00

jr_00E_697F:
    nop                                           ; $697F: $00
    ldh a, [rP1]                                  ; $6980: $F0 $00
    ld hl, sp+$70                                 ; $6982: $F8 $70
    adc h                                         ; $6984: $8C
    ld hl, sp-$34                                 ; $6985: $F8 $CC
    ld hl, sp-$04                                 ; $6987: $F8 $FC
    ld a, b                                       ; $6989: $78
    ld a, h                                       ; $698A: $7C
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
    nop                                           ; $699A: $00
    nop                                           ; $699B: $00
    nop                                           ; $699C: $00
    nop                                           ; $699D: $00
    nop                                           ; $699E: $00
    nop                                           ; $699F: $00
    nop                                           ; $69A0: $00
    nop                                           ; $69A1: $00
    nop                                           ; $69A2: $00
    nop                                           ; $69A3: $00
    nop                                           ; $69A4: $00
    nop                                           ; $69A5: $00
    nop                                           ; $69A6: $00
    nop                                           ; $69A7: $00
    inc sp                                        ; $69A8: $33
    nop                                           ; $69A9: $00
    ld a, e                                       ; $69AA: $7B
    ld sp, $315A                                  ; $69AB: $31 $5A $31
    ld e, l                                       ; $69AE: $5D
    jr c, jr_00E_6A2F                             ; $69AF: $38 $7E

    jr c, jr_00E_6A32                             ; $69B1: $38 $7F

    ld [hl-], a                                   ; $69B3: $32
    cp a                                          ; $69B4: $BF
    ld l, h                                       ; $69B5: $6C
    rst RST_38                                    ; $69B6: $FF
    rrca                                          ; $69B7: $0F
    inc c                                         ; $69B8: $0C
    rlca                                          ; $69B9: $07
    ld b, $03                                     ; $69BA: $06 $03
    inc bc                                        ; $69BC: $03
    ld bc, $0001                                  ; $69BD: $01 $01 $00
    ld h, b                                       ; $69C0: $60

jr_00E_69C1:
    nop                                           ; $69C1: $00
    ld [hl], b                                    ; $69C2: $70
    jr nz, @+$52                                  ; $69C3: $20 $50

    jr nz, jr_00E_697F                            ; $69C5: $20 $B8

    db $10                                        ; $69C7: $10
    xor b                                         ; $69C8: $A8
    db $10                                        ; $69C9: $10
    call c, $B488                                 ; $69CA: $DC $88 $B4
    ld c, b                                       ; $69CD: $48
    cp $24                                        ; $69CE: $FE $24
    db $EB                                        ; $69D0: $EB
    ld d, $FB                                     ; $69D1: $16 $FB
    adc a                                         ; $69D3: $8F
    rst RST_38                                    ; $69D4: $FF
    rst RST_30                                    ; $69D5: $F7
    ld a, a                                       ; $69D6: $7F
    di                                            ; $69D7: $F3
    ld [hl], a                                    ; $69D8: $77
    add sp, -$1E                                  ; $69D9: $E8 $E2
    db $DD                                        ; $69DB: $DD
    db $E4                                        ; $69DC: $E4
    ld e, e                                       ; $69DD: $5B
    ld [hl], h                                    ; $69DE: $74
    dec bc                                        ; $69DF: $0B
    ld [bc], a                                    ; $69E0: $02
    nop                                           ; $69E1: $00
    dec b                                         ; $69E2: $05
    ld [bc], a                                    ; $69E3: $02
    ld [$9207], sp                                ; $69E4: $08 $07 $92
    rrca                                          ; $69E7: $0F
    sub [hl]                                      ; $69E8: $96
    rrca                                          ; $69E9: $0F
    xor a                                         ; $69EA: $AF
    inc d                                         ; $69EB: $14
    db $F4                                        ; $69EC: $F4
    dec bc                                        ; $69ED: $0B
    ld a, a                                       ; $69EE: $7F
    add h                                         ; $69EF: $84
    ccf                                           ; $69F0: $3F
    pop de                                        ; $69F1: $D1
    ccf                                           ; $69F2: $3F
    push bc                                       ; $69F3: $C5
    ccf                                           ; $69F4: $3F
    ret z                                         ; $69F5: $C8

    ld a, a                                       ; $69F6: $7F
    or a                                          ; $69F7: $B7
    rst RST_38                                    ; $69F8: $FF
    jr nc, jr_00E_6A73                            ; $69F9: $30 $78

    rla                                           ; $69FB: $17
    ld a, b                                       ; $69FC: $78
    rla                                           ; $69FD: $17
    jr c, @+$09                                   ; $69FE: $38 $07

    ld bc, $0100                                  ; $6A00: $01 $00 $01
    nop                                           ; $6A03: $00
    inc bc                                        ; $6A04: $03
    ld bc, $0102                                  ; $6A05: $01 $02 $01
    rlca                                          ; $6A08: $07
    ld [bc], a                                    ; $6A09: $02
    dec c                                         ; $6A0A: $0D
    ld b, $9D                                     ; $6A0B: $06 $9D
    rrca                                          ; $6A0D: $0F
    ld e, a                                       ; $6A0E: $5F
    adc a                                         ; $6A0F: $8F
    ld e, a                                       ; $6A10: $5F
    adc h                                         ; $6A11: $8C
    cp a                                          ; $6A12: $BF
    ld e, b                                       ; $6A13: $58

jr_00E_6A14:
    cp $01                                        ; $6A14: $FE $01
    db $F4                                        ; $6A16: $F4
    adc e                                         ; $6A17: $8B
    ldh a, [c]                                    ; $6A18: $F2
    ld l, l                                       ; $6A19: $6D
    ldh [c], a                                    ; $6A1A: $E2
    ld e, l                                       ; $6A1B: $5D
    di                                            ; $6A1C: $F3
    inc l                                         ; $6A1D: $2C
    db $FC                                        ; $6A1E: $FC
    ldh a, [rP1]                                  ; $6A1F: $F0 $00
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
    nop                                           ; $6A2C: $00
    nop                                           ; $6A2D: $00
    nop                                           ; $6A2E: $00

jr_00E_6A2F:
    nop                                           ; $6A2F: $00
    nop                                           ; $6A30: $00
    nop                                           ; $6A31: $00

jr_00E_6A32:
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
    ld h, b                                       ; $6A3E: $60
    nop                                           ; $6A3F: $00
    nop                                           ; $6A40: $00
    nop                                           ; $6A41: $00
    nop                                           ; $6A42: $00
    nop                                           ; $6A43: $00
    nop                                           ; $6A44: $00
    nop                                           ; $6A45: $00
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
    ret nz                                        ; $6A50: $C0

    nop                                           ; $6A51: $00
    jr nz, jr_00E_6A14                            ; $6A52: $20 $C0

    ld h, b                                       ; $6A54: $60
    ret nz                                        ; $6A55: $C0

    ldh [$FFC0], a                                ; $6A56: $E0 $C0
    ldh [$FFC0], a                                ; $6A58: $E0 $C0
    ret nc                                        ; $6A5A: $D0

    and b                                         ; $6A5B: $A0
    ldh a, [rP1]                                  ; $6A5C: $F0 $00
    add b                                         ; $6A5E: $80
    nop                                           ; $6A5F: $00
    inc c                                         ; $6A60: $0C
    inc bc                                        ; $6A61: $03
    ld [bc], a                                    ; $6A62: $02
    ld bc, $0001                                  ; $6A63: $01 $01 $00
    nop                                           ; $6A66: $00
    nop                                           ; $6A67: $00
    nop                                           ; $6A68: $00
    nop                                           ; $6A69: $00
    nop                                           ; $6A6A: $00
    nop                                           ; $6A6B: $00
    nop                                           ; $6A6C: $00

jr_00E_6A6D:
    nop                                           ; $6A6D: $00

jr_00E_6A6E:
    nop                                           ; $6A6E: $00

jr_00E_6A6F:
    nop                                           ; $6A6F: $00
    nop                                           ; $6A70: $00
    nop                                           ; $6A71: $00
    rlca                                          ; $6A72: $07

jr_00E_6A73:
    nop                                           ; $6A73: $00
    rrca                                          ; $6A74: $0F
    rlca                                          ; $6A75: $07
    dec c                                         ; $6A76: $0D
    rlca                                          ; $6A77: $07
    ld e, $0F                                     ; $6A78: $1E $0F
    dec de                                        ; $6A7A: $1B
    rrca                                          ; $6A7B: $0F
    ccf                                           ; $6A7C: $3F
    inc e                                         ; $6A7D: $1C
    ld a, h                                       ; $6A7E: $7C
    db $10                                        ; $6A7F: $10
    cpl                                           ; $6A80: $2F
    db $10                                        ; $6A81: $10
    ld a, a                                       ; $6A82: $7F
    ld c, $8E                                     ; $6A83: $0E $8E
    ld [hl], l                                    ; $6A85: $75
    adc [hl]                                      ; $6A86: $8E
    ld [hl], l                                    ; $6A87: $75
    db $DD                                        ; $6A88: $DD
    and b                                         ; $6A89: $A0
    ldh [$FF80], a                                ; $6A8A: $E0 $80
    ret nz                                        ; $6A8C: $C0

    add b                                         ; $6A8D: $80
    add b                                         ; $6A8E: $80
    nop                                           ; $6A8F: $00
    nop                                           ; $6A90: $00
    nop                                           ; $6A91: $00
    nop                                           ; $6A92: $00
    nop                                           ; $6A93: $00
    nop                                           ; $6A94: $00
    nop                                           ; $6A95: $00
    nop                                           ; $6A96: $00
    nop                                           ; $6A97: $00
    nop                                           ; $6A98: $00

jr_00E_6A99:
    nop                                           ; $6A99: $00
    nop                                           ; $6A9A: $00
    nop                                           ; $6A9B: $00
    nop                                           ; $6A9C: $00
    nop                                           ; $6A9D: $00
    nop                                           ; $6A9E: $00
    nop                                           ; $6A9F: $00
    ld hl, sp-$40                                 ; $6AA0: $F8 $C0
    ret z                                         ; $6AA2: $C8

    jr nc, jr_00E_6A6D                            ; $6AA3: $30 $C8

    jr nc, jr_00E_6A6F                            ; $6AA5: $30 $C8

    jr nc, jr_00E_6A99                            ; $6AA7: $30 $F0

    nop                                           ; $6AA9: $00
    ret nz                                        ; $6AAA: $C0

    nop                                           ; $6AAB: $00
    jr nz, jr_00E_6A6E                            ; $6AAC: $20 $C0

    db $10                                        ; $6AAE: $10
    ldh [$FF3C], a                                ; $6AAF: $E0 $3C
    ret nz                                        ; $6AB1: $C0

    cp $3C                                        ; $6AB2: $FE $3C
    halt                                          ; $6AB4: $76
    inc a                                         ; $6AB5: $3C
    ld l, a                                       ; $6AB6: $6F
    ld a, $3B                                     ; $6AB7: $3E $3B
    ld e, $1F                                     ; $6AB9: $1E $1F
    rlca                                          ; $6ABB: $07
    rlca                                          ; $6ABC: $07
    ld bc, $0001                                  ; $6ABD: $01 $01 $00
    ldh [rLCDC], a                                ; $6AC0: $E0 $40
    xor h                                         ; $6AC2: $AC
    ld b, b                                       ; $6AC3: $40
    call c, Call_00E_5588                         ; $6AC4: $DC $88 $55
    adc b                                         ; $6AC7: $88
    cp c                                          ; $6AC8: $B9
    db $10                                        ; $6AC9: $10
    rst RST_10                                    ; $6ACA: $D7
    ld hl, $45FF                                  ; $6ACB: $21 $FF $45
    ld [hl], a                                    ; $6ACE: $77
    sbc b                                         ; $6ACF: $98
    ld e, a                                       ; $6AD0: $5F
    db $E3                                        ; $6AD1: $E3
    rst RST_38                                    ; $6AD2: $FF
    rra                                           ; $6AD3: $1F
    rst RST_20                                    ; $6AD4: $E7
    cp $8E                                        ; $6AD5: $FE $8E
    db $FC                                        ; $6AD7: $FC
    db $FC                                        ; $6AD8: $FC
    ld a, b                                       ; $6AD9: $78
    ld a, b                                       ; $6ADA: $78
    or b                                          ; $6ADB: $B0
    ld [hl], b                                    ; $6ADC: $70
    and b                                         ; $6ADD: $A0
    ldh [rP1], a                                  ; $6ADE: $E0 $00
    ret nz                                        ; $6AE0: $C0

    add b                                         ; $6AE1: $80
    ldh [$FF80], a                                ; $6AE2: $E0 $80
    ret c                                         ; $6AE4: $D8

    ld h, b                                       ; $6AE5: $60
    ld l, h                                       ; $6AE6: $6C
    jr c, jr_00E_6B4F                             ; $6AE7: $38 $66

    inc a                                         ; $6AE9: $3C
    rst RST_38                                    ; $6AEA: $FF
    ld a, [hl]                                    ; $6AEB: $7E

jr_00E_6AEC:
    rst RST_38                                    ; $6AEC: $FF
    nop                                           ; $6AED: $00
    nop                                           ; $6AEE: $00
    nop                                           ; $6AEF: $00
    nop                                           ; $6AF0: $00
    nop                                           ; $6AF1: $00
    nop                                           ; $6AF2: $00
    nop                                           ; $6AF3: $00
    nop                                           ; $6AF4: $00
    nop                                           ; $6AF5: $00
    nop                                           ; $6AF6: $00
    nop                                           ; $6AF7: $00
    nop                                           ; $6AF8: $00
    nop                                           ; $6AF9: $00
    nop                                           ; $6AFA: $00
    nop                                           ; $6AFB: $00
    nop                                           ; $6AFC: $00
    nop                                           ; $6AFD: $00
    nop                                           ; $6AFE: $00
    nop                                           ; $6AFF: $00
    dec de                                        ; $6B00: $1B
    ld b, $36                                     ; $6B01: $06 $36
    inc e                                         ; $6B03: $1C
    ld h, [hl]                                    ; $6B04: $66
    inc a                                         ; $6B05: $3C
    rst RST_38                                    ; $6B06: $FF
    ld a, [hl]                                    ; $6B07: $7E
    rst RST_38                                    ; $6B08: $FF
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
    nop                                           ; $6B24: $00
    nop                                           ; $6B25: $00
    nop                                           ; $6B26: $00
    nop                                           ; $6B27: $00
    nop                                           ; $6B28: $00
    nop                                           ; $6B29: $00
    nop                                           ; $6B2A: $00
    nop                                           ; $6B2B: $00
    add b                                         ; $6B2C: $80
    nop                                           ; $6B2D: $00
    ld h, b                                       ; $6B2E: $60
    add b                                         ; $6B2F: $80
    db $FC                                        ; $6B30: $FC
    ld h, b                                       ; $6B31: $60
    ld [hl], h                                    ; $6B32: $74
    cp b                                          ; $6B33: $B8
    call nz, Call_00E_7478                        ; $6B34: $C4 $78 $74
    ld hl, sp-$1D                                 ; $6B37: $F8 $E3
    ld a, h                                       ; $6B39: $7C
    ld a, a                                       ; $6B3A: $7F
    ld sp, $023F                                  ; $6B3B: $31 $3F $02
    sub e                                         ; $6B3E: $93
    dec c                                         ; $6B3F: $0D
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
    nop                                           ; $6B4E: $00

jr_00E_6B4F:
    nop                                           ; $6B4F: $00
    nop                                           ; $6B50: $00
    nop                                           ; $6B51: $00
    stop                                          ; $6B52: $10 $00
    jr z, jr_00E_6B66                             ; $6B54: $28 $10

    ld b, h                                       ; $6B56: $44
    jr c, jr_00E_6AEC                             ; $6B57: $38 $93

    ld a, h                                       ; $6B59: $7C
    or e                                          ; $6B5A: $B3
    ld a, h                                       ; $6B5B: $7C
    ld [hl], c                                    ; $6B5C: $71
    cp [hl]                                       ; $6B5D: $BE
    cp c                                          ; $6B5E: $B9
    ld b, [hl]                                    ; $6B5F: $46
    nop                                           ; $6B60: $00
    nop                                           ; $6B61: $00
    nop                                           ; $6B62: $00
    nop                                           ; $6B63: $00
    nop                                           ; $6B64: $00
    nop                                           ; $6B65: $00

jr_00E_6B66:
    nop                                           ; $6B66: $00
    nop                                           ; $6B67: $00
    nop                                           ; $6B68: $00
    nop                                           ; $6B69: $00
    ld bc, $0600                                  ; $6B6A: $01 $00 $06
    ld bc, $061B                                  ; $6B6D: $01 $1B $06
    cp $19                                        ; $6B70: $FE $19
    cp e                                          ; $6B72: $BB
    halt                                          ; $6B73: $76
    adc [hl]                                      ; $6B74: $8E
    ld a, c                                       ; $6B75: $79
    cp e                                          ; $6B76: $BB
    ld a, [hl]                                    ; $6B77: $7E
    rra                                           ; $6B78: $1F
    ld hl, sp-$01                                 ; $6B79: $F8 $FF
    ld sp, $86FF                                  ; $6B7B: $31 $FF $86
    rst RST_18                                    ; $6B7E: $DF
    rrca                                          ; $6B7F: $0F
    pop bc                                        ; $6B80: $C1
    ld a, a                                       ; $6B81: $7F
    ret nz                                        ; $6B82: $C0

    ld a, a                                       ; $6B83: $7F
    ld h, b                                       ; $6B84: $60
    ccf                                           ; $6B85: $3F
    ld h, b                                       ; $6B86: $60
    ccf                                           ; $6B87: $3F
    jr nc, jr_00E_6BA9                            ; $6B88: $30 $1F

    jr jr_00E_6B9B                                ; $6B8A: $18 $0F

    inc c                                         ; $6B8C: $0C
    rlca                                          ; $6B8D: $07
    rlca                                          ; $6B8E: $07
    inc bc                                        ; $6B8F: $03
    rlca                                          ; $6B90: $07
    nop                                           ; $6B91: $00
    dec bc                                        ; $6B92: $0B
    inc b                                         ; $6B93: $04
    rla                                           ; $6B94: $17
    dec c                                         ; $6B95: $0D
    cpl                                           ; $6B96: $2F
    inc e                                         ; $6B97: $1C
    ld b, a                                       ; $6B98: $47
    ld a, $FF                                     ; $6B99: $3E $FF

jr_00E_6B9B:
    ld a, a                                       ; $6B9B: $7F
    rst RST_38                                    ; $6B9C: $FF
    nop                                           ; $6B9D: $00
    nop                                           ; $6B9E: $00
    nop                                           ; $6B9F: $00
    ldh a, [$FF8F]                                ; $6BA0: $F0 $8F
    ld a, b                                       ; $6BA2: $78
    rst RST_20                                    ; $6BA3: $E7
    rra                                           ; $6BA4: $1F
    ld hl, sp+$07                                 ; $6BA5: $F8 $07
    rst RST_38                                    ; $6BA7: $FF
    nop                                           ; $6BA8: $00

jr_00E_6BA9:
    rst RST_38                                    ; $6BA9: $FF
    nop                                           ; $6BAA: $00
    rst RST_38                                    ; $6BAB: $FF
    nop                                           ; $6BAC: $00
    rst RST_38                                    ; $6BAD: $FF
    rra                                           ; $6BAE: $1F
    rst RST_38                                    ; $6BAF: $FF
    pop bc                                        ; $6BB0: $C1
    rst RST_38                                    ; $6BB1: $FF
    ld hl, sp+$3F                                 ; $6BB2: $F8 $3F
    rst RST_38                                    ; $6BB4: $FF
    rlca                                          ; $6BB5: $07
    rlca                                          ; $6BB6: $07
    nop                                           ; $6BB7: $00
    ld bc, $8000                                  ; $6BB8: $01 $00 $80
    nop                                           ; $6BBB: $00
    add b                                         ; $6BBC: $80
    nop                                           ; $6BBD: $00
    nop                                           ; $6BBE: $00
    nop                                           ; $6BBF: $00
    di                                            ; $6BC0: $F3
    inc e                                         ; $6BC1: $1C
    cp $41                                        ; $6BC2: $FE $41
    rst RST_38                                    ; $6BC4: $FF
    inc d                                         ; $6BC5: $14
    rst RST_38                                    ; $6BC6: $FF
    nop                                           ; $6BC7: $00
    rst RST_38                                    ; $6BC8: $FF
    rst RST_38                                    ; $6BC9: $FF
    rlca                                          ; $6BCA: $07
    rst RST_38                                    ; $6BCB: $FF
    ccf                                           ; $6BCC: $3F
    rst RST_38                                    ; $6BCD: $FF
    rst RST_38                                    ; $6BCE: $FF
    rst RST_38                                    ; $6BCF: $FF
    rst RST_38                                    ; $6BD0: $FF
    rst RST_38                                    ; $6BD1: $FF
    inc bc                                        ; $6BD2: $03
    rst RST_38                                    ; $6BD3: $FF
    rst RST_38                                    ; $6BD4: $FF
    cp $FE                                        ; $6BD5: $FE $FE
    ld bc, $7FFF                                  ; $6BD7: $01 $FF $7F
    ld a, a                                       ; $6BDA: $7F
    nop                                           ; $6BDB: $00
    nop                                           ; $6BDC: $00
    nop                                           ; $6BDD: $00
    nop                                           ; $6BDE: $00
    nop                                           ; $6BDF: $00
    rra                                           ; $6BE0: $1F
    rst RST_28                                    ; $6BE1: $EF
    ccf                                           ; $6BE2: $3F
    jp Jump_000_1FFF                              ; $6BE3: $C3 $FF $1F


    rst RST_38                                    ; $6BE6: $FF
    rst RST_38                                    ; $6BE7: $FF
    rst RST_38                                    ; $6BE8: $FF
    rst RST_38                                    ; $6BE9: $FF
    rst RST_38                                    ; $6BEA: $FF
    cp $FE                                        ; $6BEB: $FE $FE
    db $FD                                        ; $6BED: $FD
    db $FC                                        ; $6BEE: $FC
    ei                                            ; $6BEF: $FB
    ld hl, sp-$19                                 ; $6BF0: $F8 $E7
    ldh [$FF9F], a                                ; $6BF2: $E0 $9F
    add e                                         ; $6BF4: $83
    ld a, a                                       ; $6BF5: $7F
    rra                                           ; $6BF6: $1F
    db $FC                                        ; $6BF7: $FC
    rst RST_38                                    ; $6BF8: $FF
    ldh [$FFE0], a                                ; $6BF9: $E0 $E0
    nop                                           ; $6BFB: $00
    ld bc, $0100                                  ; $6BFC: $01 $00 $01
    nop                                           ; $6BFF: $00
    pop af                                        ; $6C00: $F1
    rra                                           ; $6C01: $1F
    pop hl                                        ; $6C02: $E1
    rst RST_18                                    ; $6C03: $DF
    jp $C3BE                                      ; $6C04: $C3 $BE $C3


    cp [hl]                                       ; $6C07: $BE
    add [hl]                                      ; $6C08: $86
    ld a, h                                       ; $6C09: $7C
    ld b, $FC                                     ; $6C0A: $06 $FC
    inc c                                         ; $6C0C: $0C
    ld hl, sp+$18                                 ; $6C0D: $F8 $18
    ldh a, [$FF30]                                ; $6C0F: $F0 $30
    ldh [$FFE0], a                                ; $6C11: $E0 $E0
    ret nz                                        ; $6C13: $C0

    ldh a, [rP1]                                  ; $6C14: $F0 $00
    add sp, -$50                                  ; $6C16: $E8 $B0
    db $F4                                        ; $6C18: $F4
    cp b                                          ; $6C19: $B8
    ldh [c], a                                    ; $6C1A: $E2
    inc a                                         ; $6C1B: $3C
    rst RST_38                                    ; $6C1C: $FF
    cp $FF                                        ; $6C1D: $FE $FF
    nop                                           ; $6C1F: $00
    ldh [rLCDC], a                                ; $6C20: $E0 $40
    ldh [rLCDC], a                                ; $6C22: $E0 $40
    ldh [rLCDC], a                                ; $6C24: $E0 $40
    ldh a, [$FF60]                                ; $6C26: $F0 $60
    di                                            ; $6C28: $F3
    ld h, b                                       ; $6C29: $60
    di                                            ; $6C2A: $F3
    ld h, c                                       ; $6C2B: $61
    reti                                          ; $6C2C: $D9


    ld [hl], b                                    ; $6C2D: $70
    db $DB                                        ; $6C2E: $DB
    ld [hl], b                                    ; $6C2F: $70
    rst RST_08                                    ; $6C30: $CF
    ld a, c                                       ; $6C31: $79
    ld l, l                                       ; $6C32: $6D
    jr c, jr_00E_6C9C                             ; $6C33: $38 $67

    dec a                                         ; $6C35: $3D
    ld h, a                                       ; $6C36: $67
    inc a                                         ; $6C37: $3C
    ld h, e                                       ; $6C38: $63
    ld a, $31                                     ; $6C39: $3E $31
    rra                                           ; $6C3B: $1F
    jr nc, @+$21                                  ; $6C3C: $30 $1F

    jr nc, jr_00E_6C5F                            ; $6C3E: $30 $1F

    nop                                           ; $6C40: $00
    nop                                           ; $6C41: $00
    nop                                           ; $6C42: $00
    nop                                           ; $6C43: $00
    nop                                           ; $6C44: $00
    nop                                           ; $6C45: $00
    nop                                           ; $6C46: $00
    nop                                           ; $6C47: $00
    add b                                         ; $6C48: $80
    nop                                           ; $6C49: $00
    ld h, b                                       ; $6C4A: $60
    add b                                         ; $6C4B: $80
    ret nc                                        ; $6C4C: $D0

    ld h, b                                       ; $6C4D: $60
    ldh a, [rNR10]                                ; $6C4E: $F0 $10
    ld d, b                                       ; $6C50: $50
    ldh [$FFF0], a                                ; $6C51: $E0 $F0
    db $10                                        ; $6C53: $10
    ld d, b                                       ; $6C54: $50
    ldh [$FFF0], a                                ; $6C55: $E0 $F0
    db $10                                        ; $6C57: $10
    stop                                          ; $6C58: $10 $00
    ldh [rP1], a                                  ; $6C5A: $E0 $00
    ldh a, [$FF80]                                ; $6C5C: $F0 $80
    ld [hl], b                                    ; $6C5E: $70

jr_00E_6C5F:
    ret nz                                        ; $6C5F: $C0

    ldh [rLCDC], a                                ; $6C60: $E0 $40
    ldh [rLCDC], a                                ; $6C62: $E0 $40
    ldh [rLCDC], a                                ; $6C64: $E0 $40
    ldh [$FFC0], a                                ; $6C66: $E0 $C0
    ldh [$FFC0], a                                ; $6C68: $E0 $C0
    ldh [$FFC0], a                                ; $6C6A: $E0 $C0
    ld h, b                                       ; $6C6C: $60
    ret nz                                        ; $6C6D: $C0

    ld h, b                                       ; $6C6E: $60
    ret nz                                        ; $6C6F: $C0

    ld h, b                                       ; $6C70: $60
    ret nz                                        ; $6C71: $C0

    ret nz                                        ; $6C72: $C0

    add b                                         ; $6C73: $80
    ret nz                                        ; $6C74: $C0

    add b                                         ; $6C75: $80
    ret nz                                        ; $6C76: $C0

    add b                                         ; $6C77: $80
    ret nz                                        ; $6C78: $C0

    add b                                         ; $6C79: $80
    add b                                         ; $6C7A: $80
    nop                                           ; $6C7B: $00
    add b                                         ; $6C7C: $80
    nop                                           ; $6C7D: $00
    add b                                         ; $6C7E: $80
    nop                                           ; $6C7F: $00
    nop                                           ; $6C80: $00
    nop                                           ; $6C81: $00
    nop                                           ; $6C82: $00
    nop                                           ; $6C83: $00
    nop                                           ; $6C84: $00
    nop                                           ; $6C85: $00
    nop                                           ; $6C86: $00
    nop                                           ; $6C87: $00
    jr c, jr_00E_6C8A                             ; $6C88: $38 $00

jr_00E_6C8A:
    ld e, c                                       ; $6C8A: $59
    jr nc, jr_00E_6CFE                            ; $6C8B: $30 $71

    ld b, b                                       ; $6C8D: $40
    ld a, c                                       ; $6C8E: $79
    nop                                           ; $6C8F: $00
    ld e, e                                       ; $6C90: $5B
    ld [hl], c                                    ; $6C91: $71
    ld [hl], e                                    ; $6C92: $73
    ld bc, $735E                                  ; $6C93: $01 $5E $73
    ld a, [hl]                                    ; $6C96: $7E
    inc bc                                        ; $6C97: $03
    ld c, h                                       ; $6C98: $4C
    rlca                                          ; $6C99: $07
    ld c, h                                       ; $6C9A: $4C
    rlca                                          ; $6C9B: $07

jr_00E_6C9C:
    ld a, b                                       ; $6C9C: $78
    rrca                                          ; $6C9D: $0F
    ld a, c                                       ; $6C9E: $79
    ld c, a                                       ; $6C9F: $4F
    nop                                           ; $6CA0: $00
    nop                                           ; $6CA1: $00
    nop                                           ; $6CA2: $00
    nop                                           ; $6CA3: $00
    nop                                           ; $6CA4: $00
    nop                                           ; $6CA5: $00
    nop                                           ; $6CA6: $00
    nop                                           ; $6CA7: $00
    nop                                           ; $6CA8: $00
    nop                                           ; $6CA9: $00
    nop                                           ; $6CAA: $00
    nop                                           ; $6CAB: $00
    nop                                           ; $6CAC: $00
    nop                                           ; $6CAD: $00
    nop                                           ; $6CAE: $00
    nop                                           ; $6CAF: $00
    nop                                           ; $6CB0: $00
    nop                                           ; $6CB1: $00
    nop                                           ; $6CB2: $00
    nop                                           ; $6CB3: $00
    nop                                           ; $6CB4: $00
    nop                                           ; $6CB5: $00
    nop                                           ; $6CB6: $00
    nop                                           ; $6CB7: $00
    ld b, b                                       ; $6CB8: $40
    nop                                           ; $6CB9: $00
    ld b, b                                       ; $6CBA: $40
    nop                                           ; $6CBB: $00
    ret nz                                        ; $6CBC: $C0

    nop                                           ; $6CBD: $00
    ret nz                                        ; $6CBE: $C0

    nop                                           ; $6CBF: $00
    nop                                           ; $6CC0: $00
    nop                                           ; $6CC1: $00
    nop                                           ; $6CC2: $00
    nop                                           ; $6CC3: $00
    nop                                           ; $6CC4: $00
    nop                                           ; $6CC5: $00
    nop                                           ; $6CC6: $00
    nop                                           ; $6CC7: $00
    nop                                           ; $6CC8: $00
    nop                                           ; $6CC9: $00
    nop                                           ; $6CCA: $00
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
    add b                                         ; $6CD8: $80
    nop                                           ; $6CD9: $00
    add b                                         ; $6CDA: $80
    nop                                           ; $6CDB: $00
    ret nz                                        ; $6CDC: $C0

    nop                                           ; $6CDD: $00
    ret nz                                        ; $6CDE: $C0

    nop                                           ; $6CDF: $00
    inc c                                         ; $6CE0: $0C
    rlca                                          ; $6CE1: $07
    ld b, $03                                     ; $6CE2: $06 $03
    inc c                                         ; $6CE4: $0C
    rlca                                          ; $6CE5: $07
    add a                                         ; $6CE6: $87
    inc bc                                        ; $6CE7: $03
    add e                                         ; $6CE8: $83
    nop                                           ; $6CE9: $00
    adc b                                         ; $6CEA: $88
    nop                                           ; $6CEB: $00
    adc b                                         ; $6CEC: $88
    nop                                           ; $6CED: $00
    adc e                                         ; $6CEE: $8B
    nop                                           ; $6CEF: $00
    rst RST_18                                    ; $6CF0: $DF
    inc bc                                        ; $6CF1: $03
    call c, $D807                                 ; $6CF2: $DC $07 $D8
    rrca                                          ; $6CF5: $0F
    ldh a, [$FF1F]                                ; $6CF6: $F0 $1F
    ldh [$FF3F], a                                ; $6CF8: $E0 $3F
    ret nz                                        ; $6CFA: $C0

    ld a, a                                       ; $6CFB: $7F
    rst RST_38                                    ; $6CFC: $FF
    ld a, a                                       ; $6CFD: $7F

jr_00E_6CFE:
    nop                                           ; $6CFE: $00
    nop                                           ; $6CFF: $00
    jr @+$01                                      ; $6D00: $18 $FF

    nop                                           ; $6D02: $00
    rst RST_38                                    ; $6D03: $FF
    nop                                           ; $6D04: $00
    rst RST_38                                    ; $6D05: $FF
    ret nz                                        ; $6D06: $C0

    rst RST_38                                    ; $6D07: $FF
    ldh a, [$FF3F]                                ; $6D08: $F0 $3F
    jr nc, jr_00E_6D2B                            ; $6D0A: $30 $1F

    ld h, b                                       ; $6D0C: $60
    ccf                                           ; $6D0D: $3F
    ret nz                                        ; $6D0E: $C0

    ld a, a                                       ; $6D0F: $7F
    add c                                         ; $6D10: $81
    rst RST_38                                    ; $6D11: $FF
    inc bc                                        ; $6D12: $03
    cp $7E                                        ; $6D13: $FE $7E
    db $FC                                        ; $6D15: $FC
    db $FC                                        ; $6D16: $FC
    add b                                         ; $6D17: $80
    ret nz                                        ; $6D18: $C0

    add b                                         ; $6D19: $80
    ld h, b                                       ; $6D1A: $60
    ret nz                                        ; $6D1B: $C0

    ldh [$FFC0], a                                ; $6D1C: $E0 $C0
    nop                                           ; $6D1E: $00
    nop                                           ; $6D1F: $00
    add hl, sp                                    ; $6D20: $39
    rst RST_38                                    ; $6D21: $FF
    rra                                           ; $6D22: $1F
    rst RST_38                                    ; $6D23: $FF
    inc d                                         ; $6D24: $14
    rst RST_38                                    ; $6D25: $FF
    nop                                           ; $6D26: $00
    rst RST_38                                    ; $6D27: $FF
    nop                                           ; $6D28: $00
    rst RST_38                                    ; $6D29: $FF
    nop                                           ; $6D2A: $00

jr_00E_6D2B:
    rst RST_38                                    ; $6D2B: $FF
    nop                                           ; $6D2C: $00
    rst RST_38                                    ; $6D2D: $FF
    nop                                           ; $6D2E: $00
    rst RST_38                                    ; $6D2F: $FF
    nop                                           ; $6D30: $00
    rst RST_38                                    ; $6D31: $FF
    jp $FFFF                                      ; $6D32: $C3 $FF $FF


    ld a, $3E                                     ; $6D35: $3E $3E
    nop                                           ; $6D37: $00
    nop                                           ; $6D38: $00
    nop                                           ; $6D39: $00
    nop                                           ; $6D3A: $00
    nop                                           ; $6D3B: $00
    nop                                           ; $6D3C: $00
    nop                                           ; $6D3D: $00
    nop                                           ; $6D3E: $00
    nop                                           ; $6D3F: $00
    adc b                                         ; $6D40: $88
    rst RST_38                                    ; $6D41: $FF

jr_00E_6D42:
    nop                                           ; $6D42: $00
    rst RST_38                                    ; $6D43: $FF
    ld bc, $0FFF                                  ; $6D44: $01 $FF $0F
    cp $1E                                        ; $6D47: $FE $1E
    ldh a, [$FF30]                                ; $6D49: $F0 $30
    ldh [$FF3E], a                                ; $6D4B: $E0 $3E
    ldh [$FF1F], a                                ; $6D4D: $E0 $1F
    cp $01                                        ; $6D4F: $FE $01
    rst RST_38                                    ; $6D51: $FF
    nop                                           ; $6D52: $00
    rst RST_38                                    ; $6D53: $FF

jr_00E_6D54:
    add b                                         ; $6D54: $80
    rst RST_38                                    ; $6D55: $FF
    ldh a, [$FF7F]                                ; $6D56: $F0 $7F
    ld a, a                                       ; $6D58: $7F
    rrca                                          ; $6D59: $0F
    rrca                                          ; $6D5A: $0F
    nop                                           ; $6D5B: $00
    ld bc, $0100                                  ; $6D5C: $01 $00 $01
    nop                                           ; $6D5F: $00
    jr nc, jr_00E_6D42                            ; $6D60: $30 $E0

    jr jr_00E_6D54                                ; $6D62: $18 $F0

    ldh a, [$FFE0]                                ; $6D64: $F0 $E0
    ldh a, [rP1]                                  ; $6D66: $F0 $00
    stop                                          ; $6D68: $10 $00
    stop                                          ; $6D6A: $10 $00
    jr nc, jr_00E_6D6E                            ; $6D6C: $30 $00

jr_00E_6D6E:
    jr nc, jr_00E_6D70                            ; $6D6E: $30 $00

jr_00E_6D70:
    or b                                          ; $6D70: $B0
    nop                                           ; $6D71: $00
    ld hl, sp-$80                                 ; $6D72: $F8 $80
    ld a, l                                       ; $6D74: $7D
    ld hl, sp+$07                                 ; $6D75: $F8 $07
    db $FC                                        ; $6D77: $FC
    jp $C1FE                                      ; $6D78: $C3 $FE $C1


    ld a, a                                       ; $6D7B: $7F
    add b                                         ; $6D7C: $80
    rst RST_38                                    ; $6D7D: $FF
    rst RST_38                                    ; $6D7E: $FF
    rst RST_38                                    ; $6D7F: $FF
    add b                                         ; $6D80: $80
    nop                                           ; $6D81: $00
    add b                                         ; $6D82: $80
    nop                                           ; $6D83: $00
    add b                                         ; $6D84: $80
    nop                                           ; $6D85: $00
    add b                                         ; $6D86: $80
    nop                                           ; $6D87: $00
    add b                                         ; $6D88: $80
    nop                                           ; $6D89: $00
    add b                                         ; $6D8A: $80
    nop                                           ; $6D8B: $00
    ret nz                                        ; $6D8C: $C0

    add b                                         ; $6D8D: $80
    ret nz                                        ; $6D8E: $C0

    add b                                         ; $6D8F: $80
    nop                                           ; $6D90: $00
    nop                                           ; $6D91: $00
    nop                                           ; $6D92: $00
    nop                                           ; $6D93: $00
    nop                                           ; $6D94: $00
    nop                                           ; $6D95: $00
    nop                                           ; $6D96: $00
    nop                                           ; $6D97: $00
    nop                                           ; $6D98: $00
    nop                                           ; $6D99: $00
    nop                                           ; $6D9A: $00
    nop                                           ; $6D9B: $00
    nop                                           ; $6D9C: $00
    nop                                           ; $6D9D: $00
    nop                                           ; $6D9E: $00
    nop                                           ; $6D9F: $00
    add b                                         ; $6DA0: $80
    nop                                           ; $6DA1: $00
    add b                                         ; $6DA2: $80
    nop                                           ; $6DA3: $00
    ret nz                                        ; $6DA4: $C0

    nop                                           ; $6DA5: $00
    ldh a, [rP1]                                  ; $6DA6: $F0 $00
    db $FC                                        ; $6DA8: $FC
    ld [hl], b                                    ; $6DA9: $70
    rst RST_08                                    ; $6DAA: $CF
    ld a, h                                       ; $6DAB: $7C
    ld h, e                                       ; $6DAC: $63
    ccf                                           ; $6DAD: $3F
    ldh [$FF7F], a                                ; $6DAE: $E0 $7F
    ret nz                                        ; $6DB0: $C0

    ld a, a                                       ; $6DB1: $7F
    ld h, b                                       ; $6DB2: $60
    ccf                                           ; $6DB3: $3F
    ret nz                                        ; $6DB4: $C0

    ld a, a                                       ; $6DB5: $7F
    db $FC                                        ; $6DB6: $FC
    ld a, a                                       ; $6DB7: $7F
    ld a, a                                       ; $6DB8: $7F
    inc bc                                        ; $6DB9: $03
    ccf                                           ; $6DBA: $3F
    inc e                                         ; $6DBB: $1C
    inc sp                                        ; $6DBC: $33
    ld e, $61                                     ; $6DBD: $1E $61
    ccf                                           ; $6DBF: $3F
    nop                                           ; $6DC0: $00
    nop                                           ; $6DC1: $00
    nop                                           ; $6DC2: $00
    nop                                           ; $6DC3: $00
    jr nz, jr_00E_6DC6                            ; $6DC4: $20 $00

jr_00E_6DC6:
    jr nz, jr_00E_6DC8                            ; $6DC6: $20 $00

jr_00E_6DC8:
    ld h, b                                       ; $6DC8: $60
    nop                                           ; $6DC9: $00
    ld h, b                                       ; $6DCA: $60
    nop                                           ; $6DCB: $00
    ldh [rP1], a                                  ; $6DCC: $E0 $00
    ld hl, sp-$40                                 ; $6DCE: $F8 $C0
    inc a                                         ; $6DD0: $3C
    ld hl, sp+$0D                                 ; $6DD1: $F8 $0D
    ld hl, sp+$0D                                 ; $6DD3: $F8 $0D
    ld hl, sp+$0F                                 ; $6DD5: $F8 $0F
    ld hl, sp+$07                                 ; $6DD7: $F8 $07
    rst RST_38                                    ; $6DD9: $FF
    add c                                         ; $6DDA: $81
    rst RST_38                                    ; $6DDB: $FF
    ldh [$FF7F], a                                ; $6DDC: $E0 $7F
    pop hl                                        ; $6DDE: $E1
    ccf                                           ; $6DDF: $3F
    nop                                           ; $6DE0: $00
    nop                                           ; $6DE1: $00
    ld bc, $0100                                  ; $6DE2: $01 $00 $01
    nop                                           ; $6DE5: $00
    ld bc, $0100                                  ; $6DE6: $01 $00 $01
    nop                                           ; $6DE9: $00
    ld bc, $8100                                  ; $6DEA: $01 $00 $81
    nop                                           ; $6DED: $00
    add c                                         ; $6DEE: $81
    nop                                           ; $6DEF: $00
    and e                                         ; $6DF0: $A3
    ld bc, $21F3                                  ; $6DF1: $01 $F3 $21
    db $DB                                        ; $6DF4: $DB
    ld [hl], c                                    ; $6DF5: $71
    adc a                                         ; $6DF6: $8F
    ld sp, hl                                     ; $6DF7: $F9
    ld h, $FF                                     ; $6DF8: $26 $FF
    ld h, [hl]                                    ; $6DFA: $66
    rst RST_38                                    ; $6DFB: $FF
    ldh [c], a                                    ; $6DFC: $E2
    rst RST_38                                    ; $6DFD: $FF
    ld [hl], d                                    ; $6DFE: $72
    rst RST_38                                    ; $6DFF: $FF
    nop                                           ; $6E00: $00
    nop                                           ; $6E01: $00
    nop                                           ; $6E02: $00
    nop                                           ; $6E03: $00
    ld [bc], a                                    ; $6E04: $02
    nop                                           ; $6E05: $00
    ld [hl+], a                                   ; $6E06: $22
    nop                                           ; $6E07: $00
    and e                                         ; $6E08: $A3
    nop                                           ; $6E09: $00
    rst RST_28                                    ; $6E0A: $EF
    inc bc                                        ; $6E0B: $03

jr_00E_6E0C:
    db $FC                                        ; $6E0C: $FC
    rrca                                          ; $6E0D: $0F
    ldh a, [$FF7F]                                ; $6E0E: $F0 $7F

jr_00E_6E10:
    ret nz                                        ; $6E10: $C0

    rst RST_38                                    ; $6E11: $FF

jr_00E_6E12:
    nop                                           ; $6E12: $00
    rst RST_38                                    ; $6E13: $FF
    nop                                           ; $6E14: $00
    rst RST_38                                    ; $6E15: $FF

jr_00E_6E16:
    nop                                           ; $6E16: $00
    rst RST_38                                    ; $6E17: $FF
    inc bc                                        ; $6E18: $03
    rst RST_38                                    ; $6E19: $FF
    ld bc, $60FF                                  ; $6E1A: $01 $FF $60
    rst RST_38                                    ; $6E1D: $FF
    and b                                         ; $6E1E: $A0
    cp a                                          ; $6E1F: $BF
    stop                                          ; $6E20: $10 $00
    stop                                          ; $6E22: $10 $00
    jr nc, jr_00E_6E26                            ; $6E24: $30 $00

jr_00E_6E26:
    ldh a, [rP1]                                  ; $6E26: $F0 $00
    ldh a, [$FFE0]                                ; $6E28: $F0 $E0
    jr nc, jr_00E_6E0C                            ; $6E2A: $30 $E0

    ld h, b                                       ; $6E2C: $60
    ret nz                                        ; $6E2D: $C0

    jr nc, jr_00E_6E10                            ; $6E2E: $30 $E0

    jr nc, jr_00E_6E12                            ; $6E30: $30 $E0

    ld h, b                                       ; $6E32: $60
    ret nz                                        ; $6E33: $C0

    jr nc, jr_00E_6E16                            ; $6E34: $30 $E0

    ldh a, [$FFE0]                                ; $6E36: $F0 $E0
    ldh [rP1], a                                  ; $6E38: $E0 $00
    add b                                         ; $6E3A: $80
    nop                                           ; $6E3B: $00
    ret nz                                        ; $6E3C: $C0

    add b                                         ; $6E3D: $80
    ret nz                                        ; $6E3E: $C0

    add b                                         ; $6E3F: $80
    jr c, jr_00E_6E42                             ; $6E40: $38 $00

jr_00E_6E42:
    ld [hl], $18                                  ; $6E42: $36 $18
    dec e                                         ; $6E44: $1D
    ld b, $3F                                     ; $6E45: $06 $3F
    ld bc, $1E35                                  ; $6E47: $01 $35 $1E
    rra                                           ; $6E4A: $1F
    ld bc, $1E35                                  ; $6E4B: $01 $35 $1E
    ccf                                           ; $6E4E: $3F
    ld bc, $0001                                  ; $6E4F: $01 $01 $00
    ld c, $00                                     ; $6E52: $0E $00
    rrca                                          ; $6E54: $0F
    inc b                                         ; $6E55: $04
    inc e                                         ; $6E56: $1C
    inc bc                                        ; $6E57: $03
    dec e                                         ; $6E58: $1D
    rrca                                          ; $6E59: $0F
    dec c                                         ; $6E5A: $0D
    inc bc                                        ; $6E5B: $03
    rra                                           ; $6E5C: $1F
    rrca                                          ; $6E5D: $0F
    rrca                                          ; $6E5E: $0F
    nop                                           ; $6E5F: $00
    ldh a, [$FFCF]                                ; $6E60: $F0 $CF
    ldh a, [$FFEF]                                ; $6E62: $F0 $EF
    ldh a, [$FFEF]                                ; $6E64: $F0 $EF
    ld sp, hl                                     ; $6E66: $F9
    ld h, [hl]                                    ; $6E67: $66
    ld a, [hl]                                    ; $6E68: $7E
    add hl, bc                                    ; $6E69: $09
    dec a                                         ; $6E6A: $3D
    ld [bc], a                                    ; $6E6B: $02
    ld a, a                                       ; $6E6C: $7F
    dec a                                         ; $6E6D: $3D
    rst RST_28                                    ; $6E6E: $EF
    ld a, l                                       ; $6E6F: $7D
    or a                                          ; $6E70: $B7
    db $FC                                        ; $6E71: $FC
    db $FD                                        ; $6E72: $FD
    ld hl, sp-$08                                 ; $6E73: $F8 $F8
    nop                                           ; $6E75: $00
    nop                                           ; $6E76: $00
    nop                                           ; $6E77: $00
    nop                                           ; $6E78: $00
    nop                                           ; $6E79: $00
    add b                                         ; $6E7A: $80
    nop                                           ; $6E7B: $00
    add b                                         ; $6E7C: $80
    nop                                           ; $6E7D: $00
    nop                                           ; $6E7E: $00
    nop                                           ; $6E7F: $00
    di                                            ; $6E80: $F3
    inc e                                         ; $6E81: $1C
    cp $41                                        ; $6E82: $FE $41
    rst RST_38                                    ; $6E84: $FF
    inc d                                         ; $6E85: $14
    ld a, a                                       ; $6E86: $7F
    add c                                         ; $6E87: $81
    ld a, $DF                                     ; $6E88: $3E $DF
    ld a, c                                       ; $6E8A: $79
    cp a                                          ; $6E8B: $BF
    rst RST_38                                    ; $6E8C: $FF
    ld a, $FF                                     ; $6E8D: $3E $FF
    cp b                                          ; $6E8F: $B8
    cp $85                                        ; $6E90: $FE $85
    cp $59                                        ; $6E92: $FE $59
    ld a, l                                       ; $6E94: $7D
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
    ld e, $EF                                     ; $6EA0: $1E $EF
    ccf                                           ; $6EA2: $3F
    rst RST_08                                    ; $6EA3: $CF
    rst RST_38                                    ; $6EA4: $FF
    inc l                                         ; $6EA5: $2C
    db $FC                                        ; $6EA6: $FC
    ldh [$FF60], a                                ; $6EA7: $E0 $60
    ret nz                                        ; $6EA9: $C0

    ret nz                                        ; $6EAA: $C0

    add b                                         ; $6EAB: $80
    ret nz                                        ; $6EAC: $C0

    nop                                           ; $6EAD: $00
    inc a                                         ; $6EAE: $3C
    ret nz                                        ; $6EAF: $C0

    ld a, [hl]                                    ; $6EB0: $7E
    cp h                                          ; $6EB1: $BC
    ld [hl], a                                    ; $6EB2: $77
    cp [hl]                                       ; $6EB3: $BE
    ld [hl], l                                    ; $6EB4: $75
    cp a                                          ; $6EB5: $BF
    rst RST_38                                    ; $6EB6: $FF
    rra                                           ; $6EB7: $1F
    rra                                           ; $6EB8: $1F
    nop                                           ; $6EB9: $00
    nop                                           ; $6EBA: $00
    nop                                           ; $6EBB: $00
    ld bc, $0100                                  ; $6EBC: $01 $00 $01
    nop                                           ; $6EBF: $00
    jr c, jr_00E_6EC2                             ; $6EC0: $38 $00

jr_00E_6EC2:
    ld e, b                                       ; $6EC2: $58
    jr nc, jr_00E_6F35                            ; $6EC3: $30 $70

    ld b, b                                       ; $6EC5: $40
    ld a, b                                       ; $6EC6: $78
    nop                                           ; $6EC7: $00
    ld e, b                                       ; $6EC8: $58
    ld [hl], b                                    ; $6EC9: $70
    ld [hl], b                                    ; $6ECA: $70
    nop                                           ; $6ECB: $00
    ld e, b                                       ; $6ECC: $58
    ld [hl], b                                    ; $6ECD: $70
    ld a, b                                       ; $6ECE: $78
    nop                                           ; $6ECF: $00
    ld b, b                                       ; $6ED0: $40
    nop                                           ; $6ED1: $00
    ld b, b                                       ; $6ED2: $40
    nop                                           ; $6ED3: $00
    ld h, b                                       ; $6ED4: $60
    nop                                           ; $6ED5: $00
    ld h, b                                       ; $6ED6: $60
    ld b, b                                       ; $6ED7: $40
    ret nz                                        ; $6ED8: $C0

    nop                                           ; $6ED9: $00
    ldh [$FFC0], a                                ; $6EDA: $E0 $C0
    ret nz                                        ; $6EDC: $C0

    nop                                           ; $6EDD: $00
    nop                                           ; $6EDE: $00
    nop                                           ; $6EDF: $00
    ldh a, [rP1]                                  ; $6EE0: $F0 $00
    add sp, -$50                                  ; $6EE2: $E8 $B0
    db $F4                                        ; $6EE4: $F4
    cp b                                          ; $6EE5: $B8
    ldh [c], a                                    ; $6EE6: $E2
    inc a                                         ; $6EE7: $3C
    rst RST_38                                    ; $6EE8: $FF
    cp $FF                                        ; $6EE9: $FE $FF
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
    rlca                                          ; $6F00: $07
    nop                                           ; $6F01: $00
    dec bc                                        ; $6F02: $0B
    inc b                                         ; $6F03: $04
    rla                                           ; $6F04: $17
    dec c                                         ; $6F05: $0D
    cpl                                           ; $6F06: $2F
    inc e                                         ; $6F07: $1C
    ld b, a                                       ; $6F08: $47
    ld a, $FF                                     ; $6F09: $3E $FF
    ld a, a                                       ; $6F0B: $7F
    rst RST_38                                    ; $6F0C: $FF
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
    inc h                                         ; $6F20: $24
    ld hl, sp+$66                                 ; $6F21: $F8 $66
    ld hl, sp-$05                                 ; $6F23: $F8 $FB
    ld b, h                                       ; $6F25: $44
    ld c, l                                       ; $6F26: $4D
    or b                                          ; $6F27: $B0
    rst RST_38                                    ; $6F28: $FF
    ld c, b                                       ; $6F29: $48
    rst RST_38                                    ; $6F2A: $FF
    ld d, $FE                                     ; $6F2B: $16 $FE
    ld d, l                                       ; $6F2D: $55
    rst RST_38                                    ; $6F2E: $FF
    nop                                           ; $6F2F: $00
    rra                                           ; $6F30: $1F
    db $EC                                        ; $6F31: $EC
    rra                                           ; $6F32: $1F
    pop hl                                        ; $6F33: $E1
    rst RST_38                                    ; $6F34: $FF

jr_00E_6F35:
    rrca                                          ; $6F35: $0F
    di                                            ; $6F36: $F3
    cp $CE                                        ; $6F37: $FE $CE
    db $FD                                        ; $6F39: $FD
    cp $F3                                        ; $6F3A: $FE $F3
    rst RST_38                                    ; $6F3C: $FF
    call $2BFF                                    ; $6F3D: $CD $FF $2B
    ldh a, [rNR41]                                ; $6F40: $F0 $20
    ldh a, [rNR41]                                ; $6F42: $F0 $20
    ld [hl], b                                    ; $6F44: $70
    and b                                         ; $6F45: $A0
    ld [hl], b                                    ; $6F46: $70
    and b                                         ; $6F47: $A0
    ld hl, sp+$70                                 ; $6F48: $F8 $70
    ld hl, sp+$70                                 ; $6F4A: $F8 $70
    db $F4                                        ; $6F4C: $F4
    ld l, b                                       ; $6F4D: $68
    db $F4                                        ; $6F4E: $F4
    add sp, -$12                                  ; $6F4F: $E8 $EE
    ret nc                                        ; $6F51: $D0

    ldh a, [c]                                    ; $6F52: $F2
    inc c                                         ; $6F53: $0C
    sub c                                         ; $6F54: $91
    ld c, $0F                                     ; $6F55: $0E $0F
    ld bc, $078F                                  ; $6F57: $01 $8F $07
    call z, Call_00E_7987                         ; $6F5A: $CC $87 $79
    rst RST_08                                    ; $6F5D: $CF
    ld a, a                                       ; $6F5E: $7F
    call c, RST_00                                ; $6F5F: $DC $00 $00
    nop                                           ; $6F62: $00
    nop                                           ; $6F63: $00
    nop                                           ; $6F64: $00
    nop                                           ; $6F65: $00
    nop                                           ; $6F66: $00
    nop                                           ; $6F67: $00
    nop                                           ; $6F68: $00
    nop                                           ; $6F69: $00
    nop                                           ; $6F6A: $00
    nop                                           ; $6F6B: $00
    nop                                           ; $6F6C: $00
    nop                                           ; $6F6D: $00
    nop                                           ; $6F6E: $00
    nop                                           ; $6F6F: $00
    nop                                           ; $6F70: $00
    nop                                           ; $6F71: $00
    rst RST_38                                    ; $6F72: $FF
    nop                                           ; $6F73: $00
    push de                                       ; $6F74: $D5
    ld a, a                                       ; $6F75: $7F
    ld a, a                                       ; $6F76: $7F
    nop                                           ; $6F77: $00
    dec c                                         ; $6F78: $0D
    rlca                                          ; $6F79: $07
    cpl                                           ; $6F7A: $2F
    nop                                           ; $6F7B: $00
    ld e, l                                       ; $6F7C: $5D
    daa                                           ; $6F7D: $27
    adc a                                         ; $6F7E: $8F
    ld [hl], b                                    ; $6F7F: $70
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
    add b                                         ; $6F92: $80
    nop                                           ; $6F93: $00
    ld b, b                                       ; $6F94: $40
    add b                                         ; $6F95: $80
    ldh [$FFC0], a                                ; $6F96: $E0 $C0
    ldh [rLCDC], a                                ; $6F98: $E0 $40
    ret nc                                        ; $6F9A: $D0

    ld h, b                                       ; $6F9B: $60
    ret nc                                        ; $6F9C: $D0

    ld h, b                                       ; $6F9D: $60
    or b                                          ; $6F9E: $B0
    ld b, b                                       ; $6F9F: $40
    add b                                         ; $6FA0: $80
    nop                                           ; $6FA1: $00
    ld b, b                                       ; $6FA2: $40
    add b                                         ; $6FA3: $80
    pop hl                                        ; $6FA4: $E1
    ld b, b                                       ; $6FA5: $40
    pop de                                        ; $6FA6: $D1
    and b                                         ; $6FA7: $A0
    ldh a, [c]                                    ; $6FA8: $F2
    ld hl, $A0F1                                  ; $6FA9: $21 $F1 $A0
    ei                                            ; $6FAC: $FB
    jr nc, @+$01                                  ; $6FAD: $30 $FF

    pop bc                                        ; $6FAF: $C1
    rst RST_08                                    ; $6FB0: $CF
    ld [hl], $87                                  ; $6FB1: $36 $87
    ld a, d                                       ; $6FB3: $7A
    add a                                         ; $6FB4: $87
    ld a, d                                       ; $6FB5: $7A
    add a                                         ; $6FB6: $87
    ld a, d                                       ; $6FB7: $7A
    ld c, e                                       ; $6FB8: $4B
    inc [hl]                                      ; $6FB9: $34
    ld sp, $0B0E                                  ; $6FBA: $31 $0E $0B
    dec b                                         ; $6FBD: $05
    rlca                                          ; $6FBE: $07
    ld bc, $0000                                  ; $6FBF: $01 $00 $00
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
    rst RST_38                                    ; $6FD0: $FF
    nop                                           ; $6FD1: $00
    push de                                       ; $6FD2: $D5
    ld a, a                                       ; $6FD3: $7F
    ld a, a                                       ; $6FD4: $7F
    nop                                           ; $6FD5: $00
    ld b, $03                                     ; $6FD6: $06 $03
    rlca                                          ; $6FD8: $07
    nop                                           ; $6FD9: $00
    ld b, $03                                     ; $6FDA: $06 $03
    inc bc                                        ; $6FDC: $03
    nop                                           ; $6FDD: $00
    ld bc, $0300                                  ; $6FDE: $01 $00 $03
    ld bc, $0003                                  ; $6FE1: $01 $03 $00
    ld bc, $0100                                  ; $6FE4: $01 $00 $01
    nop                                           ; $6FE7: $00
    ld bc, $0100                                  ; $6FE8: $01 $00 $01
    nop                                           ; $6FEB: $00
    inc bc                                        ; $6FEC: $03
    ld bc, $0307                                  ; $6FED: $01 $07 $03
    ld b, $03                                     ; $6FF0: $06 $03
    rlca                                          ; $6FF2: $07
    inc bc                                        ; $6FF3: $03
    ld b, $03                                     ; $6FF4: $06 $03
    rlca                                          ; $6FF6: $07
    inc bc                                        ; $6FF7: $03

jr_00E_6FF8:
    rrca                                          ; $6FF8: $0F
    ld [bc], a                                    ; $6FF9: $02
    ld a, [de]                                    ; $6FFA: $1A
    inc c                                         ; $6FFB: $0C
    ld [hl], $1C                                  ; $6FFC: $36 $1C
    ld h, d                                       ; $6FFE: $62
    inc a                                         ; $6FFF: $3C
    rst RST_38                                    ; $7000: $FF
    ret z                                         ; $7001: $C8

    db $DD                                        ; $7002: $DD
    ld a, [hl+]                                   ; $7003: $2A
    add hl, de                                    ; $7004: $19
    and $AB                                       ; $7005: $E6 $AB
    ld b, l                                       ; $7007: $45
    rst RST_08                                    ; $7008: $CF
    add e                                         ; $7009: $83
    adc $87                                       ; $700A: $CE $87
    ld a, a                                       ; $700C: $7F
    rst RST_08                                    ; $700D: $CF
    db $FD                                        ; $700E: $FD
    adc $DF                                       ; $700F: $CE $DF
    adc [hl]                                      ; $7011: $8E
    adc [hl]                                      ; $7012: $8E
    inc b                                         ; $7013: $04
    rrca                                          ; $7014: $0F
    inc b                                         ; $7015: $04
    rrca                                          ; $7016: $0F
    dec b                                         ; $7017: $05
    rrca                                          ; $7018: $0F
    inc bc                                        ; $7019: $03
    rrca                                          ; $701A: $0F
    rlca                                          ; $701B: $07
    rrca                                          ; $701C: $0F
    nop                                           ; $701D: $00
    nop                                           ; $701E: $00
    nop                                           ; $701F: $00
    db $FC                                        ; $7020: $FC
    ret nc                                        ; $7021: $D0

    ldh a, [rP1]                                  ; $7022: $F0 $00
    add b                                         ; $7024: $80
    nop                                           ; $7025: $00
    ret nz                                        ; $7026: $C0

    add b                                         ; $7027: $80
    ret nz                                        ; $7028: $C0

    add b                                         ; $7029: $80
    ld b, b                                       ; $702A: $40
    add b                                         ; $702B: $80
    add b                                         ; $702C: $80
    nop                                           ; $702D: $00
    nop                                           ; $702E: $00
    nop                                           ; $702F: $00
    nop                                           ; $7030: $00
    nop                                           ; $7031: $00
    add b                                         ; $7032: $80
    nop                                           ; $7033: $00
    ld b, b                                       ; $7034: $40
    add b                                         ; $7035: $80
    jr nz, jr_00E_6FF8                            ; $7036: $20 $C0

    ret nc                                        ; $7038: $D0

    ldh [$FFF8], a                                ; $7039: $E0 $F8
    ldh a, [$FFF8]                                ; $703B: $F0 $F8
    nop                                           ; $703D: $00
    nop                                           ; $703E: $00
    nop                                           ; $703F: $00
    nop                                           ; $7040: $00
    nop                                           ; $7041: $00
    nop                                           ; $7042: $00
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
    nop                                           ; $704E: $00
    nop                                           ; $704F: $00
    nop                                           ; $7050: $00
    nop                                           ; $7051: $00
    nop                                           ; $7052: $00
    nop                                           ; $7053: $00
    ldh [rP1], a                                  ; $7054: $E0 $00
    ldh [$FFC0], a                                ; $7056: $E0 $C0
    ld [hl], b                                    ; $7058: $70
    ret nz                                        ; $7059: $C0

    ldh a, [$FFA0]                                ; $705A: $F0 $A0
    ldh [rLCDC], a                                ; $705C: $E0 $40
    ret nz                                        ; $705E: $C0

    nop                                           ; $705F: $00
    rst RST_38                                    ; $7060: $FF
    ld a, [hl]                                    ; $7061: $7E
    rst RST_38                                    ; $7062: $FF
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

Call_00E_7070:
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
    nop                                           ; $707A: $00
    nop                                           ; $707B: $00
    nop                                           ; $707C: $00
    nop                                           ; $707D: $00
    nop                                           ; $707E: $00
    nop                                           ; $707F: $00
    inc h                                         ; $7080: $24
    ld hl, sp+$66                                 ; $7081: $F8 $66
    ld hl, sp-$05                                 ; $7083: $F8 $FB
    ld b, h                                       ; $7085: $44
    ld c, l                                       ; $7086: $4D
    or b                                          ; $7087: $B0
    rst RST_38                                    ; $7088: $FF
    ld c, b                                       ; $7089: $48
    rst RST_38                                    ; $708A: $FF
    ld d, $FE                                     ; $708B: $16 $FE
    ld d, l                                       ; $708D: $55
    rst RST_38                                    ; $708E: $FF
    nop                                           ; $708F: $00
    rra                                           ; $7090: $1F
    db $EC                                        ; $7091: $EC
    rra                                           ; $7092: $1F
    pop hl                                        ; $7093: $E1
    rst RST_38                                    ; $7094: $FF
    rrca                                          ; $7095: $0F
    di                                            ; $7096: $F3
    cp $CE                                        ; $7097: $FE $CE
    db $FD                                        ; $7099: $FD
    cp $F3                                        ; $709A: $FE $F3
    rst RST_38                                    ; $709C: $FF
    call $2BFF                                    ; $709D: $CD $FF $2B
    call c, $DC20                                 ; $70A0: $DC $20 $DC
    jr z, jr_00E_711D                             ; $70A3: $28 $78

    sub b                                         ; $70A5: $90
    ld [hl], b                                    ; $70A6: $70
    and b                                         ; $70A7: $A0
    ld hl, sp+$70                                 ; $70A8: $F8 $70
    ld hl, sp+$70                                 ; $70AA: $F8 $70
    db $F4                                        ; $70AC: $F4
    ld l, b                                       ; $70AD: $68
    db $F4                                        ; $70AE: $F4
    add sp, -$12                                  ; $70AF: $E8 $EE
    ret nc                                        ; $70B1: $D0

    ldh a, [c]                                    ; $70B2: $F2
    inc c                                         ; $70B3: $0C
    sub c                                         ; $70B4: $91
    ld c, $0F                                     ; $70B5: $0E $0F
    ld bc, $078F                                  ; $70B7: $01 $8F $07
    call z, Call_00E_7987                         ; $70BA: $CC $87 $79
    rst RST_08                                    ; $70BD: $CF
    ld a, a                                       ; $70BE: $7F
    call c, RST_00                                ; $70BF: $DC $00 $00
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
    rst RST_38                                    ; $70D2: $FF
    nop                                           ; $70D3: $00
    push de                                       ; $70D4: $D5
    ld a, a                                       ; $70D5: $7F
    ld a, a                                       ; $70D6: $7F
    nop                                           ; $70D7: $00
    dec c                                         ; $70D8: $0D
    rlca                                          ; $70D9: $07
    cpl                                           ; $70DA: $2F
    nop                                           ; $70DB: $00
    ld e, l                                       ; $70DC: $5D
    daa                                           ; $70DD: $27
    adc a                                         ; $70DE: $8F
    ld [hl], b                                    ; $70DF: $70
    nop                                           ; $70E0: $00
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
    add b                                         ; $70F2: $80
    nop                                           ; $70F3: $00
    ld b, b                                       ; $70F4: $40
    add b                                         ; $70F5: $80
    ldh [$FFC0], a                                ; $70F6: $E0 $C0
    ldh [rLCDC], a                                ; $70F8: $E0 $40
    ret nc                                        ; $70FA: $D0

    ld h, b                                       ; $70FB: $60
    ret nc                                        ; $70FC: $D0

    ld h, b                                       ; $70FD: $60
    sub b                                         ; $70FE: $90
    ld h, b                                       ; $70FF: $60
    dec h                                         ; $7100: $25
    ld hl, sp+$66                                 ; $7101: $F8 $66
    ld hl, sp-$05                                 ; $7103: $F8 $FB
    ld b, h                                       ; $7105: $44
    ld c, l                                       ; $7106: $4D
    or b                                          ; $7107: $B0
    rst RST_38                                    ; $7108: $FF
    ld c, b                                       ; $7109: $48
    rst RST_38                                    ; $710A: $FF
    ld d, $FE                                     ; $710B: $16 $FE
    ld d, l                                       ; $710D: $55
    rst RST_38                                    ; $710E: $FF
    nop                                           ; $710F: $00
    rra                                           ; $7110: $1F
    db $EC                                        ; $7111: $EC
    rra                                           ; $7112: $1F
    pop hl                                        ; $7113: $E1
    rst RST_38                                    ; $7114: $FF
    rrca                                          ; $7115: $0F
    di                                            ; $7116: $F3
    cp $CE                                        ; $7117: $FE $CE
    db $FD                                        ; $7119: $FD
    cp $F3                                        ; $711A: $FE $F3
    rst RST_38                                    ; $711C: $FF

jr_00E_711D:
    call $2BFF                                    ; $711D: $CD $FF $2B
    ret nc                                        ; $7120: $D0

    and b                                         ; $7121: $A0
    ldh a, [rLCDC]                                ; $7122: $F0 $40
    ldh a, [rLCDC]                                ; $7124: $F0 $40
    ldh a, [$FF60]                                ; $7126: $F0 $60
    ld hl, sp+$70                                 ; $7128: $F8 $70
    ld hl, sp+$70                                 ; $712A: $F8 $70
    db $F4                                        ; $712C: $F4
    ld l, b                                       ; $712D: $68
    db $F4                                        ; $712E: $F4
    add sp, -$12                                  ; $712F: $E8 $EE
    ret nc                                        ; $7131: $D0

    ldh a, [c]                                    ; $7132: $F2
    inc c                                         ; $7133: $0C
    sub c                                         ; $7134: $91
    ld c, $0F                                     ; $7135: $0E $0F
    ld bc, $078F                                  ; $7137: $01 $8F $07
    call z, Call_00E_7987                         ; $713A: $CC $87 $79
    rst RST_08                                    ; $713D: $CF
    ld a, a                                       ; $713E: $7F
    call c, RST_00                                ; $713F: $DC $00 $00
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
    rst RST_38                                    ; $7152: $FF
    nop                                           ; $7153: $00
    push de                                       ; $7154: $D5
    ld a, a                                       ; $7155: $7F
    ld a, a                                       ; $7156: $7F
    nop                                           ; $7157: $00
    dec c                                         ; $7158: $0D
    rlca                                          ; $7159: $07
    cpl                                           ; $715A: $2F
    nop                                           ; $715B: $00
    ld e, l                                       ; $715C: $5D
    daa                                           ; $715D: $27
    adc a                                         ; $715E: $8F
    ld [hl], b                                    ; $715F: $70
    nop                                           ; $7160: $00
    nop                                           ; $7161: $00
    nop                                           ; $7162: $00
    nop                                           ; $7163: $00
    nop                                           ; $7164: $00
    nop                                           ; $7165: $00
    nop                                           ; $7166: $00
    nop                                           ; $7167: $00
    nop                                           ; $7168: $00
    nop                                           ; $7169: $00
    nop                                           ; $716A: $00
    nop                                           ; $716B: $00
    nop                                           ; $716C: $00
    nop                                           ; $716D: $00
    nop                                           ; $716E: $00
    nop                                           ; $716F: $00
    nop                                           ; $7170: $00
    nop                                           ; $7171: $00
    add b                                         ; $7172: $80
    nop                                           ; $7173: $00
    ld b, b                                       ; $7174: $40
    add b                                         ; $7175: $80
    ldh [$FFC0], a                                ; $7176: $E0 $C0
    ldh [rLCDC], a                                ; $7178: $E0 $40
    ret nc                                        ; $717A: $D0

    ld h, b                                       ; $717B: $60
    ret nc                                        ; $717C: $D0

    ld h, b                                       ; $717D: $60

jr_00E_717E:
    ret nc                                        ; $717E: $D0

    jr nz, jr_00E_717E                            ; $717F: $20 $FD

    ld b, $D7                                     ; $7181: $06 $D7
    ld a, c                                       ; $7183: $79
    ld a, l                                       ; $7184: $7D
    ld b, $D7                                     ; $7185: $06 $D7
    ld a, c                                       ; $7187: $79
    db $FD                                        ; $7188: $FD
    rlca                                          ; $7189: $07
    rlca                                          ; $718A: $07
    ld bc, $0001                                  ; $718B: $01 $01 $00
    nop                                           ; $718E: $00
    nop                                           ; $718F: $00
    nop                                           ; $7190: $00
    nop                                           ; $7191: $00
    rrca                                          ; $7192: $0F
    nop                                           ; $7193: $00
    rra                                           ; $7194: $1F
    ld [$193E], sp                                ; $7195: $08 $3E $19
    ld a, [hl]                                    ; $7198: $7E
    add hl, de                                    ; $7199: $19
    ld a, a                                       ; $719A: $7F
    inc l                                         ; $719B: $2C
    ld a, a                                       ; $719C: $7F
    rrca                                          ; $719D: $0F
    rrca                                          ; $719E: $0F
    nop                                           ; $719F: $00
    add l                                         ; $71A0: $85
    inc bc                                        ; $71A1: $03
    push af                                       ; $71A2: $F5
    add e                                         ; $71A3: $83
    db $DB                                        ; $71A4: $DB
    rst RST_20                                    ; $71A5: $E7
    rla                                           ; $71A6: $17
    db $E3                                        ; $71A7: $E3
    rst RST_18                                    ; $71A8: $DF
    pop hl                                        ; $71A9: $E1
    adc a                                         ; $71AA: $8F
    push af                                       ; $71AB: $F5
    rst RST_00                                    ; $71AC: $C7
    ld a, [$04FB]                                 ; $71AD: $FA $FB $04
    sbc a                                         ; $71B0: $9F
    ld h, c                                       ; $71B1: $61
    rrca                                          ; $71B2: $0F
    push af                                       ; $71B3: $F5
    rrca                                          ; $71B4: $0F
    push af                                       ; $71B5: $F5
    sbc a                                         ; $71B6: $9F
    ld l, l                                       ; $71B7: $6D
    ld a, a                                       ; $71B8: $7F
    add b                                         ; $71B9: $80
    ld hl, sp+$47                                 ; $71BA: $F8 $47
    rst RST_08                                    ; $71BC: $CF
    ld [bc], a                                    ; $71BD: $02
    dec bc                                        ; $71BE: $0B
    dec b                                         ; $71BF: $05
    ret nc                                        ; $71C0: $D0

    ldh [$FFD8], a                                ; $71C1: $E0 $D8
    ldh [$FFEB], a                                ; $71C3: $E0 $EB
    ldh a, [$FFF2]                                ; $71C5: $F0 $F2
    pop hl                                        ; $71C7: $E1
    ld a, [$FEE1]                                 ; $71C8: $FA $E1 $FE
    pop af                                        ; $71CB: $F1
    db $FC                                        ; $71CC: $FC
    inc bc                                        ; $71CD: $03
    rst RST_38                                    ; $71CE: $FF
    ld hl, sp-$02                                 ; $71CF: $F8 $FE
    ld [hl], l                                    ; $71D1: $75
    cp $55                                        ; $71D2: $FE $55
    rst RST_38                                    ; $71D4: $FF
    ld d, h                                       ; $71D5: $54
    cp $F9                                        ; $71D6: $FE $F9
    rst RST_38                                    ; $71D8: $FF
    nop                                           ; $71D9: $00
    rst RST_28                                    ; $71DA: $EF
    ld b, a                                       ; $71DB: $47
    rst RST_30                                    ; $71DC: $F7
    ld b, e                                       ; $71DD: $43
    sbc e                                         ; $71DE: $9B

jr_00E_71DF:
    ldh a, [rNR31]                                ; $71DF: $F0 $1B
    ld b, $6F                                     ; $71E1: $06 $6F
    jr jr_00E_71DF                                ; $71E3: $18 $FA

    ld h, a                                       ; $71E5: $67
    rst RST_28                                    ; $71E6: $EF
    ret c                                         ; $71E7: $D8

    ld a, [hl-]                                   ; $71E8: $3A
    rst RST_20                                    ; $71E9: $E7
    rst RST_28                                    ; $71EA: $EF
    ld hl, sp+$78                                 ; $71EB: $F8 $78
    ldh [$FFE0], a                                ; $71ED: $E0 $E0
    ret nz                                        ; $71EF: $C0

    ret nz                                        ; $71F0: $C0

    nop                                           ; $71F1: $00
    add b                                         ; $71F2: $80
    nop                                           ; $71F3: $00
    ret nz                                        ; $71F4: $C0

    nop                                           ; $71F5: $00
    ldh [rLCDC], a                                ; $71F6: $E0 $40
    ldh [$FFC0], a                                ; $71F8: $E0 $C0
    ldh [$FFC0], a                                ; $71FA: $E0 $C0
    ret nz                                        ; $71FC: $C0

    add b                                         ; $71FD: $80
    add b                                         ; $71FE: $80
    nop                                           ; $71FF: $00
    nop                                           ; $7200: $00
    nop                                           ; $7201: $00
    nop                                           ; $7202: $00
    nop                                           ; $7203: $00
    nop                                           ; $7204: $00
    nop                                           ; $7205: $00
    nop                                           ; $7206: $00
    nop                                           ; $7207: $00
    nop                                           ; $7208: $00
    nop                                           ; $7209: $00
    nop                                           ; $720A: $00
    nop                                           ; $720B: $00
    nop                                           ; $720C: $00
    nop                                           ; $720D: $00
    nop                                           ; $720E: $00
    nop                                           ; $720F: $00
    nop                                           ; $7210: $00
    nop                                           ; $7211: $00
    nop                                           ; $7212: $00
    nop                                           ; $7213: $00
    nop                                           ; $7214: $00
    nop                                           ; $7215: $00
    nop                                           ; $7216: $00
    nop                                           ; $7217: $00
    nop                                           ; $7218: $00
    nop                                           ; $7219: $00
    ldh [rP1], a                                  ; $721A: $E0 $00
    ret c                                         ; $721C: $D8

    ld h, b                                       ; $721D: $60
    halt                                          ; $721E: $76
    jr jr_00E_7221                                ; $721F: $18 $00

jr_00E_7221:
    nop                                           ; $7221: $00
    nop                                           ; $7222: $00
    nop                                           ; $7223: $00
    nop                                           ; $7224: $00
    nop                                           ; $7225: $00
    nop                                           ; $7226: $00
    nop                                           ; $7227: $00
    nop                                           ; $7228: $00
    nop                                           ; $7229: $00
    nop                                           ; $722A: $00
    nop                                           ; $722B: $00
    nop                                           ; $722C: $00
    nop                                           ; $722D: $00
    nop                                           ; $722E: $00
    nop                                           ; $722F: $00
    nop                                           ; $7230: $00
    nop                                           ; $7231: $00
    nop                                           ; $7232: $00
    nop                                           ; $7233: $00
    nop                                           ; $7234: $00
    nop                                           ; $7235: $00
    nop                                           ; $7236: $00
    nop                                           ; $7237: $00
    nop                                           ; $7238: $00
    nop                                           ; $7239: $00
    stop                                          ; $723A: $10 $00
    jr z, jr_00E_724E                             ; $723C: $28 $10

    ld d, h                                       ; $723E: $54
    jr c, jr_00E_7241                             ; $723F: $38 $00

jr_00E_7241:
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
    nop                                           ; $724C: $00
    nop                                           ; $724D: $00

jr_00E_724E:
    nop                                           ; $724E: $00
    nop                                           ; $724F: $00
    jr c, jr_00E_7252                             ; $7250: $38 $00

jr_00E_7252:
    ret c                                         ; $7252: $D8

    jr nc, @+$72                                  ; $7253: $30 $70

    ret nz                                        ; $7255: $C0

    ld hl, sp+$00                                 ; $7256: $F8 $00
    ld e, b                                       ; $7258: $58
    ldh a, [$FFF0]                                ; $7259: $F0 $F0
    nop                                           ; $725B: $00
    ld e, b                                       ; $725C: $58
    ldh a, [$FFF8]                                ; $725D: $F0 $F8
    nop                                           ; $725F: $00
    dec b                                         ; $7260: $05
    ld [bc], a                                    ; $7261: $02
    inc b                                         ; $7262: $04
    inc bc                                        ; $7263: $03
    inc c                                         ; $7264: $0C
    inc bc                                        ; $7265: $03
    inc d                                         ; $7266: $14
    dec bc                                        ; $7267: $0B
    ld e, $09                                     ; $7268: $1E $09
    rra                                           ; $726A: $1F
    ld [$040F], sp                                ; $726B: $08 $0F $04
    rrca                                          ; $726E: $0F
    rlca                                          ; $726F: $07
    rlca                                          ; $7270: $07
    inc bc                                        ; $7271: $03
    inc bc                                        ; $7272: $03
    ld bc, $010F                                  ; $7273: $01 $0F $01
    rla                                           ; $7276: $17
    add hl, bc                                    ; $7277: $09
    cpl                                           ; $7278: $2F
    add hl, de                                    ; $7279: $19
    ld e, a                                       ; $727A: $5F
    inc a                                         ; $727B: $3C
    rst RST_38                                    ; $727C: $FF
    ld a, a                                       ; $727D: $7F
    rst RST_38                                    ; $727E: $FF
    nop                                           ; $727F: $00
    xor $FC                                       ; $7280: $EE $FC
    and $7C                                       ; $7282: $E6 $7C
    or $7C                                        ; $7284: $F6 $7C
    or $3C                                        ; $7286: $F6 $3C
    or $3C                                        ; $7288: $F6 $3C
    or a                                          ; $728A: $B7
    ld a, [de]                                    ; $728B: $1A
    rst RST_30                                    ; $728C: $F7
    ld a, [de]                                    ; $728D: $1A
    rst RST_30                                    ; $728E: $F7
    sbc d                                         ; $728F: $9A
    rst RST_38                                    ; $7290: $FF
    sub [hl]                                      ; $7291: $96
    rst RST_18                                    ; $7292: $DF
    add [hl]                                      ; $7293: $86
    add a                                         ; $7294: $87
    ld [bc], a                                    ; $7295: $02
    add e                                         ; $7296: $83
    nop                                           ; $7297: $00
    add a                                         ; $7298: $87
    inc bc                                        ; $7299: $03
    adc a                                         ; $729A: $8F
    rlca                                          ; $729B: $07
    adc a                                         ; $729C: $8F
    nop                                           ; $729D: $00
    add b                                         ; $729E: $80
    nop                                           ; $729F: $00
    add b                                         ; $72A0: $80
    nop                                           ; $72A1: $00
    ret nz                                        ; $72A2: $C0

    add b                                         ; $72A3: $80
    ldh [$FFC0], a                                ; $72A4: $E0 $C0
    ldh a, [$FFE0]                                ; $72A6: $F0 $E0
    ldh a, [rP1]                                  ; $72A8: $F0 $00
    nop                                           ; $72AA: $00
    nop                                           ; $72AB: $00
    nop                                           ; $72AC: $00
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
    rra                                           ; $72C0: $1F
    inc bc                                        ; $72C1: $03
    dec hl                                        ; $72C2: $2B
    dec e                                         ; $72C3: $1D
    ld e, $03                                     ; $72C4: $1E $03
    cpl                                           ; $72C6: $2F
    add hl, de                                    ; $72C7: $19
    ld a, [hl]                                    ; $72C8: $7E
    daa                                           ; $72C9: $27
    and [hl]                                      ; $72CA: $A6
    ld b, e                                       ; $72CB: $43
    db $E3                                        ; $72CC: $E3
    ld b, c                                       ; $72CD: $41
    jp Jump_000_0E00                              ; $72CE: $C3 $00 $0E


    ld bc, $0B1C                                  ; $72D1: $01 $1C $0B
    inc e                                         ; $72D4: $1C
    dec bc                                        ; $72D5: $0B
    ld e, $09                                     ; $72D6: $1E $09
    rra                                           ; $72D8: $1F
    inc c                                         ; $72D9: $0C
    rra                                           ; $72DA: $1F
    ld c, $0E                                     ; $72DB: $0E $0E
    nop                                           ; $72DD: $00
    nop                                           ; $72DE: $00
    nop                                           ; $72DF: $00
    sub a                                         ; $72E0: $97
    rrca                                          ; $72E1: $0F
    sub a                                         ; $72E2: $97
    rrca                                          ; $72E3: $0F
    ld l, a                                       ; $72E4: $6F
    sbc a                                         ; $72E5: $9F
    ld e, a                                       ; $72E6: $5F
    adc a                                         ; $72E7: $8F
    ccf                                           ; $72E8: $3F
    rst RST_00                                    ; $72E9: $C7
    ccf                                           ; $72EA: $3F
    rst RST_10                                    ; $72EB: $D7
    ccf                                           ; $72EC: $3F
    ret z                                         ; $72ED: $C8

    sbc a                                         ; $72EE: $9F
    ld h, e                                       ; $72EF: $63
    ld a, a                                       ; $72F0: $7F
    add l                                         ; $72F1: $85

jr_00E_72F2:
    ccf                                           ; $72F2: $3F
    push de                                       ; $72F3: $D5
    ccf                                           ; $72F4: $3F
    push de                                       ; $72F5: $D5
    ld a, a                                       ; $72F6: $7F
    or a                                          ; $72F7: $B7
    rst RST_38                                    ; $72F8: $FF
    nop                                           ; $72F9: $00
    db $E3                                        ; $72FA: $E3
    dec e                                         ; $72FB: $1D
    ccf                                           ; $72FC: $3F
    add hl, bc                                    ; $72FD: $09
    ld l, $17                                     ; $72FE: $2E $17
    ld b, b                                       ; $7300: $40
    add b                                         ; $7301: $80
    ld h, c                                       ; $7302: $61
    add b                                         ; $7303: $80
    xor a                                         ; $7304: $AF
    pop bc                                        ; $7305: $C1
    res 0, a                                      ; $7306: $CB $87
    add sp, -$79                                  ; $7308: $E8 $87
    ei                                            ; $730A: $FB
    rst RST_00                                    ; $730B: $C7
    pop af                                        ; $730C: $F1
    rrca                                          ; $730D: $0F
    rst RST_38                                    ; $730E: $FF
    db $E3                                        ; $730F: $E3
    ei                                            ; $7310: $FB
    call nc, Call_00E_54FA                        ; $7311: $D4 $FA $54
    db $FC                                        ; $7314: $FC
    ld d, b                                       ; $7315: $50
    ld hl, sp-$20                                 ; $7316: $F8 $E0
    ldh [rP1], a                                  ; $7318: $E0 $00
    add b                                         ; $731A: $80
    nop                                           ; $731B: $00
    ret nz                                        ; $731C: $C0

    nop                                           ; $731D: $00
    ld h, b                                       ; $731E: $60
    ret nz                                        ; $731F: $C0

    nop                                           ; $7320: $00
    nop                                           ; $7321: $00
    nop                                           ; $7322: $00
    nop                                           ; $7323: $00
    nop                                           ; $7324: $00
    nop                                           ; $7325: $00
    nop                                           ; $7326: $00
    nop                                           ; $7327: $00
    nop                                           ; $7328: $00
    nop                                           ; $7329: $00
    nop                                           ; $732A: $00
    nop                                           ; $732B: $00
    rlca                                          ; $732C: $07
    nop                                           ; $732D: $00
    dec de                                        ; $732E: $1B
    ld b, $6E                                     ; $732F: $06 $6E
    jr jr_00E_72F2                                ; $7331: $18 $BF

    ld h, b                                       ; $7333: $60
    db $EB                                        ; $7334: $EB
    sbc [hl]                                      ; $7335: $9E
    cp [hl]                                       ; $7336: $BE
    ld h, b                                       ; $7337: $60
    db $EB                                        ; $7338: $EB
    sbc [hl]                                      ; $7339: $9E
    cp a                                          ; $733A: $BF
    ldh [$FFE0], a                                ; $733B: $E0 $E0
    add b                                         ; $733D: $80
    add b                                         ; $733E: $80
    nop                                           ; $733F: $00
    nop                                           ; $7340: $00
    nop                                           ; $7341: $00
    nop                                           ; $7342: $00
    nop                                           ; $7343: $00
    nop                                           ; $7344: $00
    nop                                           ; $7345: $00
    nop                                           ; $7346: $00
    nop                                           ; $7347: $00
    nop                                           ; $7348: $00
    nop                                           ; $7349: $00
    nop                                           ; $734A: $00
    nop                                           ; $734B: $00
    nop                                           ; $734C: $00
    nop                                           ; $734D: $00
    nop                                           ; $734E: $00
    nop                                           ; $734F: $00
    nop                                           ; $7350: $00
    nop                                           ; $7351: $00
    inc c                                         ; $7352: $0C
    nop                                           ; $7353: $00
    inc e                                         ; $7354: $1C
    ld [$1028], sp                                ; $7355: $08 $28 $10
    ld [hl], b                                    ; $7358: $70
    jr nz, jr_00E_73B7                            ; $7359: $20 $5C

    jr nc, jr_00E_7393                            ; $735B: $30 $36

    ld [$060F], sp                                ; $735D: $08 $0F $06
    nop                                           ; $7360: $00
    nop                                           ; $7361: $00
    nop                                           ; $7362: $00
    nop                                           ; $7363: $00
    nop                                           ; $7364: $00
    nop                                           ; $7365: $00
    nop                                           ; $7366: $00
    nop                                           ; $7367: $00
    nop                                           ; $7368: $00
    nop                                           ; $7369: $00
    nop                                           ; $736A: $00
    nop                                           ; $736B: $00
    nop                                           ; $736C: $00
    nop                                           ; $736D: $00
    nop                                           ; $736E: $00
    nop                                           ; $736F: $00
    nop                                           ; $7370: $00
    nop                                           ; $7371: $00
    nop                                           ; $7372: $00
    nop                                           ; $7373: $00
    nop                                           ; $7374: $00
    nop                                           ; $7375: $00
    nop                                           ; $7376: $00
    nop                                           ; $7377: $00

Call_00E_7378:
    nop                                           ; $7378: $00
    nop                                           ; $7379: $00
    ld [$1400], sp                                ; $737A: $08 $00 $14
    ld [$1C2A], sp                                ; $737D: $08 $2A $1C
    dec c                                         ; $7380: $0D
    rlca                                          ; $7381: $07
    rlca                                          ; $7382: $07
    nop                                           ; $7383: $00
    ld bc, $0100                                  ; $7384: $01 $00 $01
    nop                                           ; $7387: $00
    pop bc                                        ; $7388: $C1
    nop                                           ; $7389: $00
    pop hl                                        ; $738A: $E1
    ld b, b                                       ; $738B: $40
    and a                                         ; $738C: $A7
    ld b, c                                       ; $738D: $41
    rst RST_38                                    ; $738E: $FF
    ld b, [hl]                                    ; $738F: $46
    ld d, a                                       ; $7390: $57
    jr c, jr_00E_73D2                             ; $7391: $38 $3F

jr_00E_7393:
    ld [bc], a                                    ; $7393: $02
    rlca                                          ; $7394: $07
    ld [bc], a                                    ; $7395: $02
    rlca                                          ; $7396: $07
    inc bc                                        ; $7397: $03
    rlca                                          ; $7398: $07
    inc bc                                        ; $7399: $03
    inc bc                                        ; $739A: $03
    nop                                           ; $739B: $00
    nop                                           ; $739C: $00
    nop                                           ; $739D: $00
    nop                                           ; $739E: $00
    nop                                           ; $739F: $00
    push hl                                       ; $73A0: $E5
    ld b, e                                       ; $73A1: $43
    push hl                                       ; $73A2: $E5
    ld b, e                                       ; $73A3: $43
    db $EB                                        ; $73A4: $EB
    rst RST_00                                    ; $73A5: $C7
    or a                                          ; $73A6: $B7
    db $E3                                        ; $73A7: $E3
    rla                                           ; $73A8: $17
    pop hl                                        ; $73A9: $E1
    adc a                                         ; $73AA: $8F
    push af                                       ; $73AB: $F5
    rst RST_20                                    ; $73AC: $E7
    ld a, [de]                                    ; $73AD: $1A
    dec de                                        ; $73AE: $1B
    db $E4                                        ; $73AF: $E4
    rrca                                          ; $73B0: $0F
    pop af                                        ; $73B1: $F1
    rrca                                          ; $73B2: $0F
    push af                                       ; $73B3: $F5
    sbc a                                         ; $73B4: $9F
    ld h, l                                       ; $73B5: $65
    rst RST_38                                    ; $73B6: $FF

jr_00E_73B7:
    dec c                                         ; $73B7: $0D
    rst RST_38                                    ; $73B8: $FF
    add b                                         ; $73B9: $80
    adc b                                         ; $73BA: $88
    rlca                                          ; $73BB: $07
    rrca                                          ; $73BC: $0F
    ld [bc], a                                    ; $73BD: $02
    dec bc                                        ; $73BE: $0B
    dec b                                         ; $73BF: $05
    ret nc                                        ; $73C0: $D0

    ldh [$FFDB], a                                ; $73C1: $E0 $DB
    ldh [$FFEA], a                                ; $73C3: $E0 $EA
    pop af                                        ; $73C5: $F1
    ldh a, [c]                                    ; $73C6: $F2
    pop hl                                        ; $73C7: $E1
    cp $E1                                        ; $73C8: $FE $E1
    db $FC                                        ; $73CA: $FC
    di                                            ; $73CB: $F3
    rst RST_38                                    ; $73CC: $FF
    nop                                           ; $73CD: $00
    cp $F9                                        ; $73CE: $FE $F9
    cp $75                                        ; $73D0: $FE $75

jr_00E_73D2:
    rst RST_38                                    ; $73D2: $FF
    ld d, h                                       ; $73D3: $54
    cp $54                                        ; $73D4: $FE $54
    cp $F8                                        ; $73D6: $FE $F8
    ld hl, sp+$00                                 ; $73D8: $F8 $00
    ldh [rLCDC], a                                ; $73DA: $E0 $40
    ldh a, [rLCDC]                                ; $73DC: $F0 $40
    sbc b                                         ; $73DE: $98
    ldh a, [rP1]                                  ; $73DF: $F0 $00
    nop                                           ; $73E1: $00
    nop                                           ; $73E2: $00
    nop                                           ; $73E3: $00
    nop                                           ; $73E4: $00
    nop                                           ; $73E5: $00
    nop                                           ; $73E6: $00
    nop                                           ; $73E7: $00
    nop                                           ; $73E8: $00
    nop                                           ; $73E9: $00
    nop                                           ; $73EA: $00
    nop                                           ; $73EB: $00
    nop                                           ; $73EC: $00
    nop                                           ; $73ED: $00
    nop                                           ; $73EE: $00
    nop                                           ; $73EF: $00
    inc c                                         ; $73F0: $0C
    nop                                           ; $73F1: $00
    ld d, $0C                                     ; $73F2: $16 $0C
    ld a, l                                       ; $73F4: $7D
    ld [de], a                                    ; $73F5: $12
    rst RST_10                                    ; $73F6: $D7
    ld h, d                                       ; $73F7: $62
    db $E3                                        ; $73F8: $E3
    ld bc, $0103                                  ; $73F9: $01 $03 $01
    inc bc                                        ; $73FC: $03
    ld bc, $033F                                  ; $73FD: $01 $3F $03
    nop                                           ; $7400: $00
    nop                                           ; $7401: $00
    nop                                           ; $7402: $00
    nop                                           ; $7403: $00
    nop                                           ; $7404: $00
    nop                                           ; $7405: $00
    nop                                           ; $7406: $00
    nop                                           ; $7407: $00
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
    add b                                         ; $7418: $80
    nop                                           ; $7419: $00
    add h                                         ; $741A: $84
    nop                                           ; $741B: $00
    adc d                                         ; $741C: $8A
    inc b                                         ; $741D: $04
    sub l                                         ; $741E: $95
    ld c, $00                                     ; $741F: $0E $00
    nop                                           ; $7421: $00
    nop                                           ; $7422: $00
    nop                                           ; $7423: $00
    nop                                           ; $7424: $00
    nop                                           ; $7425: $00
    nop                                           ; $7426: $00
    nop                                           ; $7427: $00
    ld bc, $0600                                  ; $7428: $01 $00 $06

jr_00E_742B:
    ld bc, $061B                                  ; $742B: $01 $1B $06
    ld l, a                                       ; $742E: $6F
    jr jr_00E_742B                                ; $742F: $18 $FA

    ld h, a                                       ; $7431: $67
    rst RST_28                                    ; $7432: $EF
    ret c                                         ; $7433: $D8

    ld a, [hl-]                                   ; $7434: $3A
    rst RST_20                                    ; $7435: $E7
    rst RST_28                                    ; $7436: $EF
    ld hl, sp+$78                                 ; $7437: $F8 $78
    ldh [$FFE0], a                                ; $7439: $E0 $E0
    ret nz                                        ; $743B: $C0

    ret nz                                        ; $743C: $C0

    nop                                           ; $743D: $00
    add b                                         ; $743E: $80
    nop                                           ; $743F: $00
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
    ret nz                                        ; $7450: $C0

    nop                                           ; $7451: $00
    ret nz                                        ; $7452: $C0

    add b                                         ; $7453: $80
    add b                                         ; $7454: $80
    nop                                           ; $7455: $00
    ret nz                                        ; $7456: $C0

    nop                                           ; $7457: $00
    ret nz                                        ; $7458: $C0

    add b                                         ; $7459: $80
    add b                                         ; $745A: $80
    nop                                           ; $745B: $00
    ret nz                                        ; $745C: $C0

    add b                                         ; $745D: $80
    ret nz                                        ; $745E: $C0

    nop                                           ; $745F: $00
    inc [hl]                                      ; $7460: $34
    ld [$0C7E], sp                                ; $7461: $08 $7E $0C
    sbc $74                                       ; $7464: $DE $74
    rst RST_18                                    ; $7466: $DF
    halt                                          ; $7467: $76
    ei                                            ; $7468: $FB
    ld b, $D9                                     ; $7469: $06 $D9
    ld [hl], a                                    ; $746B: $77
    ret c                                         ; $746C: $D8

    ld [hl], a                                    ; $746D: $77
    ld a, a                                       ; $746E: $7F
    rrca                                          ; $746F: $0F
    ccf                                           ; $7470: $3F
    nop                                           ; $7471: $00
    inc e                                         ; $7472: $1C
    inc bc                                        ; $7473: $03
    inc e                                         ; $7474: $1C
    dec bc                                        ; $7475: $0B
    ld e, $09                                     ; $7476: $1E $09

Call_00E_7478:
    rra                                           ; $7478: $1F
    inc c                                         ; $7479: $0C
    rra                                           ; $747A: $1F
    ld c, $0E                                     ; $747B: $0E $0E
    nop                                           ; $747D: $00
    nop                                           ; $747E: $00
    nop                                           ; $747F: $00
    rla                                           ; $7480: $17
    rrca                                          ; $7481: $0F
    rla                                           ; $7482: $17
    rrca                                          ; $7483: $0F
    cpl                                           ; $7484: $2F
    rra                                           ; $7485: $1F
    rra                                           ; $7486: $1F
    rrca                                          ; $7487: $0F
    ccf                                           ; $7488: $3F
    rlca                                          ; $7489: $07
    cp a                                          ; $748A: $BF
    rla                                           ; $748B: $17
    rst RST_38                                    ; $748C: $FF
    adc b                                         ; $748D: $88
    rra                                           ; $748E: $1F
    db $E3                                        ; $748F: $E3
    rst RST_38                                    ; $7490: $FF
    dec b                                         ; $7491: $05

jr_00E_7492:
    ccf                                           ; $7492: $3F
    push de                                       ; $7493: $D5
    ccf                                           ; $7494: $3F
    push de                                       ; $7495: $D5
    ld a, a                                       ; $7496: $7F
    or a                                          ; $7497: $B7
    rst RST_38                                    ; $7498: $FF
    nop                                           ; $7499: $00
    and e                                         ; $749A: $A3
    dec e                                         ; $749B: $1D
    ccf                                           ; $749C: $3F
    add hl, bc                                    ; $749D: $09
    ld l, $17                                     ; $749E: $2E $17
    ld b, b                                       ; $74A0: $40
    add b                                         ; $74A1: $80
    ld h, c                                       ; $74A2: $61
    add b                                         ; $74A3: $80
    xor a                                         ; $74A4: $AF
    pop bc                                        ; $74A5: $C1
    res 0, a                                      ; $74A6: $CB $87
    add sp, -$79                                  ; $74A8: $E8 $87
    ei                                            ; $74AA: $FB
    rst RST_00                                    ; $74AB: $C7
    pop af                                        ; $74AC: $F1
    rrca                                          ; $74AD: $0F
    rst RST_38                                    ; $74AE: $FF
    db $E3                                        ; $74AF: $E3
    ei                                            ; $74B0: $FB
    call nc, Call_00E_54FA                        ; $74B1: $D4 $FA $54
    db $FC                                        ; $74B4: $FC
    ld d, b                                       ; $74B5: $50
    ld hl, sp-$20                                 ; $74B6: $F8 $E0
    ldh [rP1], a                                  ; $74B8: $E0 $00
    add b                                         ; $74BA: $80
    nop                                           ; $74BB: $00
    ret nz                                        ; $74BC: $C0

    nop                                           ; $74BD: $00
    ld h, b                                       ; $74BE: $60
    ret nz                                        ; $74BF: $C0

    nop                                           ; $74C0: $00
    nop                                           ; $74C1: $00
    nop                                           ; $74C2: $00
    nop                                           ; $74C3: $00
    nop                                           ; $74C4: $00
    nop                                           ; $74C5: $00
    nop                                           ; $74C6: $00
    nop                                           ; $74C7: $00
    nop                                           ; $74C8: $00
    nop                                           ; $74C9: $00
    nop                                           ; $74CA: $00
    nop                                           ; $74CB: $00
    rlca                                          ; $74CC: $07
    nop                                           ; $74CD: $00
    dec de                                        ; $74CE: $1B
    ld b, $6E                                     ; $74CF: $06 $6E
    jr jr_00E_7492                                ; $74D1: $18 $BF

    ld h, b                                       ; $74D3: $60
    db $EB                                        ; $74D4: $EB
    sbc [hl]                                      ; $74D5: $9E
    cp [hl]                                       ; $74D6: $BE
    ld h, b                                       ; $74D7: $60
    db $EB                                        ; $74D8: $EB
    sbc [hl]                                      ; $74D9: $9E
    cp a                                          ; $74DA: $BF
    ldh [$FFE0], a                                ; $74DB: $E0 $E0
    add b                                         ; $74DD: $80
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
    nop                                           ; $74EC: $00
    nop                                           ; $74ED: $00
    nop                                           ; $74EE: $00
    nop                                           ; $74EF: $00
    nop                                           ; $74F0: $00
    nop                                           ; $74F1: $00
    nop                                           ; $74F2: $00
    nop                                           ; $74F3: $00
    inc c                                         ; $74F4: $0C
    nop                                           ; $74F5: $00
    inc e                                         ; $74F6: $1C
    ld [$1824], sp                                ; $74F7: $08 $24 $18
    inc a                                         ; $74FA: $3C
    jr jr_00E_7521                                ; $74FB: $18 $24

    jr jr_00E_753B                                ; $74FD: $18 $3C

    jr jr_00E_7501                                ; $74FF: $18 $00

jr_00E_7501:
    nop                                           ; $7501: $00
    nop                                           ; $7502: $00
    nop                                           ; $7503: $00
    nop                                           ; $7504: $00
    nop                                           ; $7505: $00
    nop                                           ; $7506: $00
    nop                                           ; $7507: $00
    nop                                           ; $7508: $00
    nop                                           ; $7509: $00
    nop                                           ; $750A: $00
    nop                                           ; $750B: $00
    nop                                           ; $750C: $00
    nop                                           ; $750D: $00
    nop                                           ; $750E: $00
    nop                                           ; $750F: $00
    nop                                           ; $7510: $00
    nop                                           ; $7511: $00
    nop                                           ; $7512: $00
    nop                                           ; $7513: $00
    nop                                           ; $7514: $00
    nop                                           ; $7515: $00
    nop                                           ; $7516: $00
    nop                                           ; $7517: $00
    nop                                           ; $7518: $00
    nop                                           ; $7519: $00
    ld [$1400], sp                                ; $751A: $08 $00 $14
    ld [$1C2A], sp                                ; $751D: $08 $2A $1C
    ld a, a                                       ; $7520: $7F

jr_00E_7521:
    nop                                           ; $7521: $00
    add b                                         ; $7522: $80
    ld a, a                                       ; $7523: $7F
    cp d                                          ; $7524: $BA
    ld b, l                                       ; $7525: $45
    adc a                                         ; $7526: $8F
    ld [hl], b                                    ; $7527: $70
    cp c                                          ; $7528: $B9
    ld b, [hl]                                    ; $7529: $46
    and a                                         ; $752A: $A7
    ld e, b                                       ; $752B: $58
    cp l                                          ; $752C: $BD
    ld b, d                                       ; $752D: $42
    adc a                                         ; $752E: $8F
    ld [hl], b                                    ; $752F: $70
    adc c                                         ; $7530: $89
    halt                                          ; $7531: $76
    or a                                          ; $7532: $B7
    ld c, b                                       ; $7533: $48
    add b                                         ; $7534: $80
    ld a, a                                       ; $7535: $7F
    ld h, c                                       ; $7536: $61
    ld e, $11                                     ; $7537: $1E $11
    ld c, $09                                     ; $7539: $0E $09

jr_00E_753B:
    ld b, $05                                     ; $753B: $06 $05
    ld [bc], a                                    ; $753D: $02
    inc bc                                        ; $753E: $03
    nop                                           ; $753F: $00
    rst RST_38                                    ; $7540: $FF
    nop                                           ; $7541: $00
    nop                                           ; $7542: $00
    rst RST_38                                    ; $7543: $FF
    add b                                         ; $7544: $80
    ld a, a                                       ; $7545: $7F
    ret nc                                        ; $7546: $D0

    cpl                                           ; $7547: $2F
    db $10                                        ; $7548: $10
    rst RST_28                                    ; $7549: $EF
    ret nc                                        ; $754A: $D0

    cpl                                           ; $754B: $2F
    ld d, b                                       ; $754C: $50
    xor a                                         ; $754D: $AF
    ret nc                                        ; $754E: $D0

    cpl                                           ; $754F: $2F
    ld c, d                                       ; $7550: $4A
    or l                                          ; $7551: $B5
    call nz, $003B                                ; $7552: $C4 $3B $00
    rst RST_38                                    ; $7555: $FF
    rst RST_38                                    ; $7556: $FF
    nop                                           ; $7557: $00
    nop                                           ; $7558: $00
    nop                                           ; $7559: $00
    nop                                           ; $755A: $00
    nop                                           ; $755B: $00
    nop                                           ; $755C: $00
    nop                                           ; $755D: $00
    nop                                           ; $755E: $00
    nop                                           ; $755F: $00
    rst RST_38                                    ; $7560: $FF
    nop                                           ; $7561: $00
    nop                                           ; $7562: $00
    rst RST_38                                    ; $7563: $FF
    nop                                           ; $7564: $00
    rst RST_38                                    ; $7565: $FF
    add e                                         ; $7566: $83
    ld a, h                                       ; $7567: $7C
    ld c, h                                       ; $7568: $4C
    or e                                          ; $7569: $B3
    ld b, c                                       ; $756A: $41
    cp [hl]                                       ; $756B: $BE
    ld [hl+], a                                   ; $756C: $22
    db $DD                                        ; $756D: $DD
    ld [hl+], a                                   ; $756E: $22
    db $DD                                        ; $756F: $DD
    ld [bc], a                                    ; $7570: $02
    db $FD                                        ; $7571: $FD
    ld bc, $00FE                                  ; $7572: $01 $FE $00
    rst RST_38                                    ; $7575: $FF
    rst RST_38                                    ; $7576: $FF
    nop                                           ; $7577: $00
    nop                                           ; $7578: $00
    nop                                           ; $7579: $00
    nop                                           ; $757A: $00
    nop                                           ; $757B: $00
    nop                                           ; $757C: $00
    nop                                           ; $757D: $00
    nop                                           ; $757E: $00
    nop                                           ; $757F: $00
    rst RST_38                                    ; $7580: $FF
    nop                                           ; $7581: $00
    nop                                           ; $7582: $00
    rst RST_38                                    ; $7583: $FF
    inc b                                         ; $7584: $04
    ei                                            ; $7585: $FB
    db $E4                                        ; $7586: $E4
    dec de                                        ; $7587: $1B
    add h                                         ; $7588: $84
    ld a, e                                       ; $7589: $7B
    inc [hl]                                      ; $758A: $34
    rlc h                                         ; $758B: $CB $04
    ei                                            ; $758D: $FB
    inc b                                         ; $758E: $04
    ei                                            ; $758F: $FB
    inc b                                         ; $7590: $04
    ei                                            ; $7591: $FB
    jp Jump_000_003C                              ; $7592: $C3 $3C $00


    rst RST_38                                    ; $7595: $FF
    rst RST_38                                    ; $7596: $FF
    nop                                           ; $7597: $00
    nop                                           ; $7598: $00
    nop                                           ; $7599: $00
    nop                                           ; $759A: $00
    nop                                           ; $759B: $00
    nop                                           ; $759C: $00
    nop                                           ; $759D: $00
    nop                                           ; $759E: $00
    nop                                           ; $759F: $00
    rst RST_38                                    ; $75A0: $FF
    nop                                           ; $75A1: $00
    nop                                           ; $75A2: $00
    rst RST_38                                    ; $75A3: $FF
    nop                                           ; $75A4: $00
    rst RST_38                                    ; $75A5: $FF
    ld [bc], a                                    ; $75A6: $02
    db $FD                                        ; $75A7: $FD
    ld [bc], a                                    ; $75A8: $02
    db $FD                                        ; $75A9: $FD
    inc bc                                        ; $75AA: $03
    db $FC                                        ; $75AB: $FC
    ld [bc], a                                    ; $75AC: $02
    db $FD                                        ; $75AD: $FD
    ld l, $D1                                     ; $75AE: $2E $D1
    ld d, e                                       ; $75B0: $53
    xor h                                         ; $75B1: $AC
    adc h                                         ; $75B2: $8C
    ld [hl], e                                    ; $75B3: $73
    nop                                           ; $75B4: $00
    rst RST_38                                    ; $75B5: $FF
    rst RST_38                                    ; $75B6: $FF
    nop                                           ; $75B7: $00
    nop                                           ; $75B8: $00
    nop                                           ; $75B9: $00
    nop                                           ; $75BA: $00
    nop                                           ; $75BB: $00
    nop                                           ; $75BC: $00
    nop                                           ; $75BD: $00
    nop                                           ; $75BE: $00
    nop                                           ; $75BF: $00
    cp $00                                        ; $75C0: $FE $00
    ld bc, $01FE                                  ; $75C2: $01 $FE $01
    cp $19                                        ; $75C5: $FE $19
    and $19                                       ; $75C7: $E6 $19
    and $99                                       ; $75C9: $E6 $99
    ld h, [hl]                                    ; $75CB: $66
    add hl, de                                    ; $75CC: $19
    and $01                                       ; $75CD: $E6 $01
    cp $19                                        ; $75CF: $FE $19
    and $99                                       ; $75D1: $E6 $99
    ld h, [hl]                                    ; $75D3: $66
    ld bc, $FEFE                                  ; $75D4: $01 $FE $FE
    nop                                           ; $75D7: $00
    nop                                           ; $75D8: $00
    nop                                           ; $75D9: $00
    nop                                           ; $75DA: $00
    nop                                           ; $75DB: $00
    nop                                           ; $75DC: $00
    nop                                           ; $75DD: $00
    nop                                           ; $75DE: $00
    nop                                           ; $75DF: $00
    inc c                                         ; $75E0: $0C
    nop                                           ; $75E1: $00
    inc e                                         ; $75E2: $1C
    ld [$1824], sp                                ; $75E3: $08 $24 $18
    inc a                                         ; $75E6: $3C
    jr jr_00E_760D                                ; $75E7: $18 $24

    jr jr_00E_7627                                ; $75E9: $18 $3C

    jr jr_00E_7621                                ; $75EB: $18 $34

    ld [$0C7E], sp                                ; $75ED: $08 $7E $0C
    sbc $74                                       ; $75F0: $DE $74
    rst RST_18                                    ; $75F2: $DF
    halt                                          ; $75F3: $76
    ei                                            ; $75F4: $FB
    ld b, $D9                                     ; $75F5: $06 $D9
    ld [hl], a                                    ; $75F7: $77
    ret c                                         ; $75F8: $D8

    ld [hl], a                                    ; $75F9: $77
    ld a, a                                       ; $75FA: $7F
    rrca                                          ; $75FB: $0F
    ccf                                           ; $75FC: $3F
    nop                                           ; $75FD: $00
    inc e                                         ; $75FE: $1C
    inc bc                                        ; $75FF: $03
    ld [bc], a                                    ; $7600: $02
    nop                                           ; $7601: $00
    dec b                                         ; $7602: $05
    ld [bc], a                                    ; $7603: $02
    ld a, [bc]                                    ; $7604: $0A
    rlca                                          ; $7605: $07
    rla                                           ; $7606: $17
    rrca                                          ; $7607: $0F

jr_00E_7608:
    rla                                           ; $7608: $17
    rrca                                          ; $7609: $0F
    cpl                                           ; $760A: $2F
    rra                                           ; $760B: $1F
    rra                                           ; $760C: $1F

jr_00E_760D:
    rrca                                          ; $760D: $0F
    ccf                                           ; $760E: $3F
    rlca                                          ; $760F: $07
    cp a                                          ; $7610: $BF
    rla                                           ; $7611: $17
    rst RST_38                                    ; $7612: $FF
    adc b                                         ; $7613: $88
    rra                                           ; $7614: $1F
    db $E3                                        ; $7615: $E3
    rst RST_38                                    ; $7616: $FF
    dec b                                         ; $7617: $05
    ccf                                           ; $7618: $3F
    push de                                       ; $7619: $D5
    ccf                                           ; $761A: $3F
    push de                                       ; $761B: $D5
    ld a, a                                       ; $761C: $7F
    or a                                          ; $761D: $B7
    rst RST_38                                    ; $761E: $FF
    nop                                           ; $761F: $00
    add b                                         ; $7620: $80

jr_00E_7621:
    nop                                           ; $7621: $00
    ld b, b                                       ; $7622: $40
    add b                                         ; $7623: $80
    ld h, c                                       ; $7624: $61
    add b                                         ; $7625: $80
    xor a                                         ; $7626: $AF

jr_00E_7627:
    pop bc                                        ; $7627: $C1
    res 0, a                                      ; $7628: $CB $87
    add sp, -$79                                  ; $762A: $E8 $87
    ei                                            ; $762C: $FB
    rst RST_00                                    ; $762D: $C7
    pop af                                        ; $762E: $F1
    rrca                                          ; $762F: $0F
    rst RST_38                                    ; $7630: $FF
    db $E3                                        ; $7631: $E3
    ei                                            ; $7632: $FB
    call nc, Call_00E_54FA                        ; $7633: $D4 $FA $54
    db $FC                                        ; $7636: $FC
    ld d, b                                       ; $7637: $50
    ld hl, sp-$20                                 ; $7638: $F8 $E0
    ldh [rP1], a                                  ; $763A: $E0 $00
    add b                                         ; $763C: $80
    nop                                           ; $763D: $00
    ret nz                                        ; $763E: $C0

    nop                                           ; $763F: $00
    nop                                           ; $7640: $00
    nop                                           ; $7641: $00
    rlca                                          ; $7642: $07
    nop                                           ; $7643: $00
    dec de                                        ; $7644: $1B
    ld b, $6E                                     ; $7645: $06 $6E
    jr jr_00E_7608                                ; $7647: $18 $BF

    ld h, b                                       ; $7649: $60
    db $EB                                        ; $764A: $EB
    sbc [hl]                                      ; $764B: $9E
    cp [hl]                                       ; $764C: $BE
    ld h, b                                       ; $764D: $60
    db $EB                                        ; $764E: $EB
    sbc [hl]                                      ; $764F: $9E
    cp a                                          ; $7650: $BF
    ldh [$FFE0], a                                ; $7651: $E0 $E0
    add b                                         ; $7653: $80
    add b                                         ; $7654: $80
    nop                                           ; $7655: $00
    nop                                           ; $7656: $00
    nop                                           ; $7657: $00
    nop                                           ; $7658: $00
    nop                                           ; $7659: $00
    nop                                           ; $765A: $00
    nop                                           ; $765B: $00
    nop                                           ; $765C: $00
    nop                                           ; $765D: $00
    nop                                           ; $765E: $00
    nop                                           ; $765F: $00
    jr c, jr_00E_7679                             ; $7660: $38 $17

    inc a                                         ; $7662: $3C
    inc de                                        ; $7663: $13
    ccf                                           ; $7664: $3F
    jr jr_00E_76A6                                ; $7665: $18 $3F

    inc e                                         ; $7667: $1C
    inc e                                         ; $7668: $1C
    nop                                           ; $7669: $00
    nop                                           ; $766A: $00
    nop                                           ; $766B: $00
    nop                                           ; $766C: $00
    nop                                           ; $766D: $00
    nop                                           ; $766E: $00
    nop                                           ; $766F: $00
    nop                                           ; $7670: $00
    nop                                           ; $7671: $00
    ld bc, $0100                                  ; $7672: $01 $00 $01
    nop                                           ; $7675: $00
    ld bc, $0000                                  ; $7676: $01 $00 $00

jr_00E_7679:
    nop                                           ; $7679: $00
    nop                                           ; $767A: $00
    nop                                           ; $767B: $00
    nop                                           ; $767C: $00
    nop                                           ; $767D: $00
    nop                                           ; $767E: $00
    nop                                           ; $767F: $00
    ld b, a                                       ; $7680: $47
    ld a, [hl-]                                   ; $7681: $3A
    ld a, a                                       ; $7682: $7F
    ld [de], a                                    ; $7683: $12
    ld e, h                                       ; $7684: $5C
    cpl                                           ; $7685: $2F
    ld e, [hl]                                    ; $7686: $5E
    cpl                                           ; $7687: $2F
    ld c, [hl]                                    ; $7688: $4E
    scf                                           ; $7689: $37
    rst RST_08                                    ; $768A: $CF
    scf                                           ; $768B: $37
    ld c, a                                       ; $768C: $4F
    or e                                          ; $768D: $B3
    rst RST_28                                    ; $768E: $EF
    sub e                                         ; $768F: $93
    ei                                            ; $7690: $FB
    add c                                         ; $7691: $81
    rst RST_38                                    ; $7692: $FF

jr_00E_7693:
    ld b, c                                       ; $7693: $41
    rst RST_38                                    ; $7694: $FF
    ld a, c                                       ; $7695: $79
    ld a, a                                       ; $7696: $7F
    add hl, sp                                    ; $7697: $39
    dec a                                         ; $7698: $3D
    jr jr_00E_7693                                ; $7699: $18 $F8

    db $10                                        ; $769B: $10
    ld a, b                                       ; $769C: $78
    sub b                                         ; $769D: $90
    ld hl, sp-$70                                 ; $769E: $F8 $90
    ret nz                                        ; $76A0: $C0

    add b                                         ; $76A1: $80
    ldh [$FFC0], a                                ; $76A2: $E0 $C0
    ld h, b                                       ; $76A4: $60
    ret nz                                        ; $76A5: $C0

jr_00E_76A6:
    ld h, b                                       ; $76A6: $60
    ret nz                                        ; $76A7: $C0

    ld h, b                                       ; $76A8: $60
    ret nz                                        ; $76A9: $C0

    ld h, b                                       ; $76AA: $60
    ret nz                                        ; $76AB: $C0

    ld [hl], b                                    ; $76AC: $70
    and b                                         ; $76AD: $A0
    ld [hl], b                                    ; $76AE: $70
    and b                                         ; $76AF: $A0
    ld [hl], b                                    ; $76B0: $70
    and b                                         ; $76B1: $A0
    ldh a, [$FF60]                                ; $76B2: $F0 $60
    ldh a, [$FF60]                                ; $76B4: $F0 $60
    ld a, b                                       ; $76B6: $78
    jr nz, jr_00E_76F5                            ; $76B7: $20 $3C

    ld [$3C7E], sp                                ; $76B9: $08 $7E $3C
    rst RST_38                                    ; $76BC: $FF
    ld a, [hl]                                    ; $76BD: $7E
    rst RST_38                                    ; $76BE: $FF
    nop                                           ; $76BF: $00
    cpl                                           ; $76C0: $2F
    ld [de], a                                    ; $76C1: $12
    ld e, a                                       ; $76C2: $5F
    ld [hl-], a                                   ; $76C3: $32
    cp a                                          ; $76C4: $BF
    ld a, b                                       ; $76C5: $78
    rst RST_38                                    ; $76C6: $FF
    cp $FF                                        ; $76C7: $FE $FF
    nop                                           ; $76C9: $00
    nop                                           ; $76CA: $00
    nop                                           ; $76CB: $00
    nop                                           ; $76CC: $00
    nop                                           ; $76CD: $00
    nop                                           ; $76CE: $00
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
    ld bc, $0100                                  ; $76E0: $01 $00 $01
    nop                                           ; $76E3: $00
    nop                                           ; $76E4: $00
    nop                                           ; $76E5: $00
    nop                                           ; $76E6: $00
    nop                                           ; $76E7: $00
    nop                                           ; $76E8: $00
    nop                                           ; $76E9: $00
    nop                                           ; $76EA: $00
    nop                                           ; $76EB: $00
    nop                                           ; $76EC: $00
    nop                                           ; $76ED: $00
    nop                                           ; $76EE: $00
    nop                                           ; $76EF: $00
    nop                                           ; $76F0: $00
    nop                                           ; $76F1: $00
    nop                                           ; $76F2: $00
    nop                                           ; $76F3: $00
    nop                                           ; $76F4: $00

jr_00E_76F5:
    nop                                           ; $76F5: $00
    nop                                           ; $76F6: $00
    nop                                           ; $76F7: $00
    nop                                           ; $76F8: $00
    nop                                           ; $76F9: $00
    nop                                           ; $76FA: $00
    nop                                           ; $76FB: $00
    nop                                           ; $76FC: $00
    nop                                           ; $76FD: $00
    nop                                           ; $76FE: $00
    nop                                           ; $76FF: $00
    nop                                           ; $7700: $00
    nop                                           ; $7701: $00
    nop                                           ; $7702: $00
    nop                                           ; $7703: $00
    nop                                           ; $7704: $00
    nop                                           ; $7705: $00
    nop                                           ; $7706: $00
    nop                                           ; $7707: $00
    nop                                           ; $7708: $00
    nop                                           ; $7709: $00
    nop                                           ; $770A: $00
    nop                                           ; $770B: $00
    nop                                           ; $770C: $00
    nop                                           ; $770D: $00
    nop                                           ; $770E: $00
    nop                                           ; $770F: $00
    nop                                           ; $7710: $00
    nop                                           ; $7711: $00
    nop                                           ; $7712: $00
    nop                                           ; $7713: $00
    nop                                           ; $7714: $00
    nop                                           ; $7715: $00
    rlca                                          ; $7716: $07
    nop                                           ; $7717: $00
    rra                                           ; $7718: $1F
    ld b, $21                                     ; $7719: $06 $21
    rra                                           ; $771B: $1F
    ld a, a                                       ; $771C: $7F
    ccf                                           ; $771D: $3F
    ld a, a                                       ; $771E: $7F
    nop                                           ; $771F: $00
    nop                                           ; $7720: $00
    nop                                           ; $7721: $00
    inc bc                                        ; $7722: $03
    nop                                           ; $7723: $00
    inc bc                                        ; $7724: $03
    ld bc, $0001                                  ; $7725: $01 $01 $00
    inc bc                                        ; $7728: $03
    nop                                           ; $7729: $00
    inc bc                                        ; $772A: $03
    ld bc, $000D                                  ; $772B: $01 $0D $00
    dec d                                         ; $772E: $15
    ld [$1C2F], sp                                ; $772F: $08 $2F $1C
    ld a, $00                                     ; $7732: $3E $00
    rst RST_38                                    ; $7734: $FF
    ld a, $C7                                     ; $7735: $3E $C7
    cp $9F                                        ; $7737: $FE $9F
    cp $FF                                        ; $7739: $FE $FF
    ld a, [hl]                                    ; $773B: $7E
    rst RST_38                                    ; $773C: $FF
    ld a, [hl]                                    ; $773D: $7E
    rst RST_38                                    ; $773E: $FF
    nop                                           ; $773F: $00
    nop                                           ; $7740: $00
    nop                                           ; $7741: $00
    add b                                         ; $7742: $80
    nop                                           ; $7743: $00
    ld h, b                                       ; $7744: $60
    add b                                         ; $7745: $80
    ret c                                         ; $7746: $D8

    ld h, b                                       ; $7747: $60
    db $FC                                        ; $7748: $FC
    jr @+$58                                      ; $7749: $18 $56

    db $EC                                        ; $774B: $EC
    and $1C                                       ; $774C: $E6 $1C
    cp [hl]                                       ; $774E: $BE
    db $EC                                        ; $774F: $EC
    rst RST_30                                    ; $7750: $F7
    ld e, $7B                                     ; $7751: $1E $7B
    ld c, $9F                                     ; $7753: $0E $9F
    ld h, [hl]                                    ; $7755: $66
    ld c, a                                       ; $7756: $4F
    or b                                          ; $7757: $B0
    ld c, a                                       ; $7758: $4F
    or a                                          ; $7759: $B7
    ld c, a                                       ; $775A: $4F
    or a                                          ; $775B: $B7
    sbc a                                         ; $775C: $9F
    ld l, a                                       ; $775D: $6F
    ld a, a                                       ; $775E: $7F
    rra                                           ; $775F: $1F
    nop                                           ; $7760: $00
    nop                                           ; $7761: $00
    nop                                           ; $7762: $00
    nop                                           ; $7763: $00
    nop                                           ; $7764: $00
    nop                                           ; $7765: $00
    nop                                           ; $7766: $00
    nop                                           ; $7767: $00
    inc bc                                        ; $7768: $03
    nop                                           ; $7769: $00
    inc c                                         ; $776A: $0C
    inc bc                                        ; $776B: $03
    rrca                                          ; $776C: $0F
    rlca                                          ; $776D: $07
    rrca                                          ; $776E: $0F
    inc bc                                        ; $776F: $03
    rra                                           ; $7770: $1F
    ld [$0B1D], sp                                ; $7771: $08 $1D $0B
    rst RST_38                                    ; $7774: $FF
    db $10                                        ; $7775: $10
    rst RST_38                                    ; $7776: $FF
    inc de                                        ; $7777: $13
    rst RST_38                                    ; $7778: $FF
    ld c, c                                       ; $7779: $49
    rst RST_38                                    ; $777A: $FF
    ld a, c                                       ; $777B: $79
    rst RST_38                                    ; $777C: $FF
    ld a, c                                       ; $777D: $79
    rst RST_38                                    ; $777E: $FF
    ld a, b                                       ; $777F: $78
    nop                                           ; $7780: $00
    nop                                           ; $7781: $00
    rlca                                          ; $7782: $07
    nop                                           ; $7783: $00
    dec de                                        ; $7784: $1B
    ld b, $6E                                     ; $7785: $06 $6E
    jr @+$01                                      ; $7787: $18 $FF

    jr nz, jr_00E_77C6                            ; $7789: $20 $3B

    adc $CE                                       ; $778B: $CE $CE
    ldh a, [rIE]                                  ; $778D: $F0 $FF
    db $FC                                        ; $778F: $FC
    rst RST_38                                    ; $7790: $FF
    nop                                           ; $7791: $00
    ldh [$FF80], a                                ; $7792: $E0 $80
    add b                                         ; $7794: $80
    nop                                           ; $7795: $00
    ldh [rP1], a                                  ; $7796: $E0 $00
    rra                                           ; $7798: $1F
    ldh [$FFCE], a                                ; $7799: $E0 $CE
    ei                                            ; $779B: $FB
    rst RST_38                                    ; $779C: $FF
    db $FD                                        ; $779D: $FD
    rst RST_38                                    ; $779E: $FF
    ld bc, $C0B0                                  ; $779F: $01 $B0 $C0
    add sp, $70                                   ; $77A2: $E8 $70
    db $FC                                        ; $77A4: $FC
    ld a, b                                       ; $77A5: $78
    db $FC                                        ; $77A6: $FC
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
    nop                                           ; $77BA: $00
    nop                                           ; $77BB: $00
    nop                                           ; $77BC: $00
    nop                                           ; $77BD: $00
    nop                                           ; $77BE: $00
    nop                                           ; $77BF: $00
    rst RST_38                                    ; $77C0: $FF
    nop                                           ; $77C1: $00
    ld b, b                                       ; $77C2: $40
    ccf                                           ; $77C3: $3F
    ld a, a                                       ; $77C4: $7F
    nop                                           ; $77C5: $00

jr_00E_77C6:
    ld a, a                                       ; $77C6: $7F
    ld a, $7F                                     ; $77C7: $3E $7F
    ld [hl+], a                                   ; $77C9: $22
    ld h, [hl]                                    ; $77CA: $66
    add hl, de                                    ; $77CB: $19
    ld h, d                                       ; $77CC: $62
    dec e                                         ; $77CD: $1D
    ld [hl+], a                                   ; $77CE: $22
    dec e                                         ; $77CF: $1D
    cpl                                           ; $77D0: $2F
    db $10                                        ; $77D1: $10
    rra                                           ; $77D2: $1F
    inc c                                         ; $77D3: $0C
    ccf                                           ; $77D4: $3F
    ld e, $33                                     ; $77D5: $1E $33
    ld e, $3F                                     ; $77D7: $1E $3F
    ld e, $1B                                     ; $77D9: $1E $1B
    ld c, $1F                                     ; $77DB: $0E $1F
    ld c, $0F                                     ; $77DD: $0E $0F
    ld b, $E0                                     ; $77DF: $06 $E0
    nop                                           ; $77E1: $00
    add b                                         ; $77E2: $80
    nop                                           ; $77E3: $00
    nop                                           ; $77E4: $00
    nop                                           ; $77E5: $00
    nop                                           ; $77E6: $00
    nop                                           ; $77E7: $00
    nop                                           ; $77E8: $00
    nop                                           ; $77E9: $00
    add b                                         ; $77EA: $80
    nop                                           ; $77EB: $00
    add b                                         ; $77EC: $80
    nop                                           ; $77ED: $00
    add b                                         ; $77EE: $80
    nop                                           ; $77EF: $00
    ret nz                                        ; $77F0: $C0

    nop                                           ; $77F1: $00
    ret nz                                        ; $77F2: $C0

    add b                                         ; $77F3: $80
    ldh [$FFC0], a                                ; $77F4: $E0 $C0
    ldh [$FFC0], a                                ; $77F6: $E0 $C0
    ldh [$FFC0], a                                ; $77F8: $E0 $C0
    ldh [$FFC0], a                                ; $77FA: $E0 $C0
    ldh [$FFC0], a                                ; $77FC: $E0 $C0
    ldh [$FFC0], a                                ; $77FE: $E0 $C0
    cp $64                                        ; $7800: $FE $64
    ld a, [hl]                                    ; $7802: $7E
    jr nz, jr_00E_7883                            ; $7803: $20 $7E

    nop                                           ; $7805: $00
    ld e, a                                       ; $7806: $5F
    jr nz, jr_00E_7868                            ; $7807: $20 $5F

    jr nc, @-$2F                                  ; $7809: $30 $CF

    ld a, b                                       ; $780B: $78
    rst RST_08                                    ; $780C: $CF
    ld a, b                                       ; $780D: $78
    rst RST_28                                    ; $780E: $EF
    ld a, b                                       ; $780F: $78
    ld l, [hl]                                    ; $7810: $6E
    jr c, jr_00E_788F                             ; $7811: $38 $7C

    jr c, jr_00E_784D                             ; $7813: $38 $38

    db $10                                        ; $7815: $10
    stop                                          ; $7816: $10 $00
    nop                                           ; $7818: $00
    nop                                           ; $7819: $00
    nop                                           ; $781A: $00
    nop                                           ; $781B: $00
    nop                                           ; $781C: $00
    nop                                           ; $781D: $00
    nop                                           ; $781E: $00
    nop                                           ; $781F: $00
    ld c, $00                                     ; $7820: $0E $00
    rst RST_38                                    ; $7822: $FF
    ld c, $BF                                     ; $7823: $0E $BF
    ld [hl], d                                    ; $7825: $72
    ld l, a                                       ; $7826: $6F
    inc e                                         ; $7827: $1C
    inc e                                         ; $7828: $1C
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
    nop                                           ; $7841: $00
    nop                                           ; $7842: $00
    nop                                           ; $7843: $00
    nop                                           ; $7844: $00
    nop                                           ; $7845: $00
    nop                                           ; $7846: $00
    nop                                           ; $7847: $00
    rst RST_38                                    ; $7848: $FF
    nop                                           ; $7849: $00
    rst RST_38                                    ; $784A: $FF
    rst RST_38                                    ; $784B: $FF
    db $E3                                        ; $784C: $E3

jr_00E_784D:
    rra                                           ; $784D: $1F
    inc e                                         ; $784E: $1C
    inc bc                                        ; $784F: $03
    inc bc                                        ; $7850: $03
    nop                                           ; $7851: $00
    nop                                           ; $7852: $00
    nop                                           ; $7853: $00
    nop                                           ; $7854: $00
    nop                                           ; $7855: $00
    ld bc, $0100                                  ; $7856: $01 $00 $01
    nop                                           ; $7859: $00
    ld bc, $0300                                  ; $785A: $01 $00 $03
    ld bc, $0003                                  ; $785D: $01 $03 $00
    ld a, [hl]                                    ; $7860: $7E
    nop                                           ; $7861: $00
    rst RST_38                                    ; $7862: $FF
    nop                                           ; $7863: $00
    rst RST_38                                    ; $7864: $FF
    nop                                           ; $7865: $00
    rst RST_38                                    ; $7866: $FF
    ld b, b                                       ; $7867: $40

jr_00E_7868:
    ld a, a                                       ; $7868: $7F
    ld a, $2F                                     ; $7869: $3E $2F
    ld de, $071F                                  ; $786B: $11 $1F $07
    rrca                                          ; $786E: $0F
    rlca                                          ; $786F: $07
    rra                                           ; $7870: $1F
    rrca                                          ; $7871: $0F
    rst RST_30                                    ; $7872: $F7
    rrca                                          ; $7873: $0F
    di                                            ; $7874: $F3
    rst RST_28                                    ; $7875: $EF
    rst RST_38                                    ; $7876: $FF
    ldh a, [$FF79]                                ; $7877: $F0 $79
    or $FF                                        ; $7879: $F6 $FF
    ld [hl], b                                    ; $787B: $70
    ld a, a                                       ; $787C: $7F
    ld b, $7B                                     ; $787D: $06 $7B
    rrca                                          ; $787F: $0F
    xor e                                         ; $7880: $AB
    ld [hl], a                                    ; $7881: $77
    rst RST_30                                    ; $7882: $F7

jr_00E_7883:
    adc h                                         ; $7883: $8C
    call c, Call_00E_7070                         ; $7884: $DC $70 $70
    add b                                         ; $7887: $80
    add b                                         ; $7888: $80
    nop                                           ; $7889: $00
    nop                                           ; $788A: $00
    nop                                           ; $788B: $00
    nop                                           ; $788C: $00
    nop                                           ; $788D: $00
    nop                                           ; $788E: $00

jr_00E_788F:
    nop                                           ; $788F: $00
    nop                                           ; $7890: $00
    nop                                           ; $7891: $00
    nop                                           ; $7892: $00
    nop                                           ; $7893: $00
    nop                                           ; $7894: $00
    nop                                           ; $7895: $00
    nop                                           ; $7896: $00
    nop                                           ; $7897: $00
    nop                                           ; $7898: $00
    nop                                           ; $7899: $00
    nop                                           ; $789A: $00
    nop                                           ; $789B: $00
    nop                                           ; $789C: $00
    nop                                           ; $789D: $00
    nop                                           ; $789E: $00
    nop                                           ; $789F: $00

Call_00E_78A0:
    add b                                         ; $78A0: $80
    nop                                           ; $78A1: $00
    ret nz                                        ; $78A2: $C0

    nop                                           ; $78A3: $00
    ret nz                                        ; $78A4: $C0

    nop                                           ; $78A5: $00
    or b                                          ; $78A6: $B0
    nop                                           ; $78A7: $00
    cp b                                          ; $78A8: $B8
    db $10                                        ; $78A9: $10
    rst RST_38                                    ; $78AA: $FF
    nop                                           ; $78AB: $00
    adc h                                         ; $78AC: $8C
    ld [hl], e                                    ; $78AD: $73
    adc h                                         ; $78AE: $8C
    ld [hl], e                                    ; $78AF: $73
    db $FC                                        ; $78B0: $FC
    inc bc                                        ; $78B1: $03
    db $FC                                        ; $78B2: $FC
    sbc e                                         ; $78B3: $9B
    cp a                                          ; $78B4: $BF
    ld e, h                                       ; $78B5: $5C
    ccf                                           ; $78B6: $3F
    ret nc                                        ; $78B7: $D0

    ccf                                           ; $78B8: $3F
    rst RST_08                                    ; $78B9: $CF
    cp $0F                                        ; $78BA: $FE $0F
    cp $C7                                        ; $78BC: $FE $C7
    call nz, Call_000_0303                        ; $78BE: $C4 $03 $03
    nop                                           ; $78C1: $00
    rlca                                          ; $78C2: $07
    nop                                           ; $78C3: $00
    rlca                                          ; $78C4: $07
    nop                                           ; $78C5: $00
    dec de                                        ; $78C6: $1B
    nop                                           ; $78C7: $00
    dec sp                                        ; $78C8: $3B
    ld de, $01FF                                  ; $78C9: $11 $FF $01
    ld h, e                                       ; $78CC: $63
    sbc l                                         ; $78CD: $9D
    ld h, e                                       ; $78CE: $63
    sbc l                                         ; $78CF: $9D
    ld a, a                                       ; $78D0: $7F
    add c                                         ; $78D1: $81
    ld a, a                                       ; $78D2: $7F
    or e                                          ; $78D3: $B3
    ei                                            ; $78D4: $FB
    ld [hl], h                                    ; $78D5: $74
    ld sp, hl                                     ; $78D6: $F9
    ld d, $F9                                     ; $78D7: $16 $F9
    and $FF                                       ; $78D9: $E6 $FF
    pop hl                                        ; $78DB: $E1
    rst RST_38                                    ; $78DC: $FF
    rst RST_08                                    ; $78DD: $CF
    rst RST_08                                    ; $78DE: $CF
    add e                                         ; $78DF: $83

Call_00E_78E0:
    db $FC                                        ; $78E0: $FC
    nop                                           ; $78E1: $00
    cp $00                                        ; $78E2: $FE $00
    cp $00                                        ; $78E4: $FE $00
    cp $04                                        ; $78E6: $FE $04
    db $FC                                        ; $78E8: $FC
    ld hl, sp-$18                                 ; $78E9: $F8 $E8
    db $10                                        ; $78EB: $10
    ldh a, [$FFC0]                                ; $78EC: $F0 $C0
    ldh [$FFC0], a                                ; $78EE: $E0 $C0
    ldh a, [$FFE0]                                ; $78F0: $F0 $E0
    rst RST_18                                    ; $78F2: $DF
    ldh [$FF9F], a                                ; $78F3: $E0 $9F
    rst RST_28                                    ; $78F5: $EF
    rst RST_38                                    ; $78F6: $FF
    rra                                           ; $78F7: $1F
    inc a                                         ; $78F8: $3C
    rst RST_18                                    ; $78F9: $DF
    rst RST_38                                    ; $78FA: $FF
    inc e                                         ; $78FB: $1C
    call c, Call_00E_78A0                         ; $78FC: $DC $A0 $78
    ret nz                                        ; $78FF: $C0

    ld [hl], b                                    ; $7900: $70
    nop                                           ; $7901: $00
    nop                                           ; $7902: $00
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
    push de                                       ; $7920: $D5
    xor $EF                                       ; $7921: $EE $EF
    ld sp, $0E3B                                  ; $7923: $31 $3B $0E
    ld c, $01                                     ; $7926: $0E $01
    ld bc, $0000                                  ; $7928: $01 $00 $00
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
    rst RST_38                                    ; $7940: $FF
    nop                                           ; $7941: $00
    rst RST_38                                    ; $7942: $FF
    rst RST_38                                    ; $7943: $FF
    db $E3                                        ; $7944: $E3
    db $FC                                        ; $7945: $FC
    inc e                                         ; $7946: $1C
    ldh [$FFE0], a                                ; $7947: $E0 $E0
    nop                                           ; $7949: $00
    nop                                           ; $794A: $00
    nop                                           ; $794B: $00
    nop                                           ; $794C: $00
    nop                                           ; $794D: $00
    add b                                         ; $794E: $80
    nop                                           ; $794F: $00
    add b                                         ; $7950: $80
    nop                                           ; $7951: $00
    add b                                         ; $7952: $80
    nop                                           ; $7953: $00
    ret nz                                        ; $7954: $C0

    add b                                         ; $7955: $80
    ret nz                                        ; $7956: $C0

    nop                                           ; $7957: $00
    nop                                           ; $7958: $00
    nop                                           ; $7959: $00
    nop                                           ; $795A: $00
    nop                                           ; $795B: $00
    nop                                           ; $795C: $00
    nop                                           ; $795D: $00
    nop                                           ; $795E: $00
    nop                                           ; $795F: $00
    nop                                           ; $7960: $00
    nop                                           ; $7961: $00
    nop                                           ; $7962: $00
    nop                                           ; $7963: $00
    nop                                           ; $7964: $00
    nop                                           ; $7965: $00
    nop                                           ; $7966: $00
    nop                                           ; $7967: $00
    nop                                           ; $7968: $00
    nop                                           ; $7969: $00
    nop                                           ; $796A: $00
    nop                                           ; $796B: $00
    nop                                           ; $796C: $00
    nop                                           ; $796D: $00
    nop                                           ; $796E: $00
    nop                                           ; $796F: $00
    nop                                           ; $7970: $00
    nop                                           ; $7971: $00
    nop                                           ; $7972: $00
    nop                                           ; $7973: $00
    nop                                           ; $7974: $00
    nop                                           ; $7975: $00
    jr c, jr_00E_7978                             ; $7976: $38 $00

jr_00E_7978:
    rst RST_38                                    ; $7978: $FF

jr_00E_7979:
    jr c, jr_00E_7979                             ; $7979: $38 $FE

    and a                                         ; $797B: $A7
    ei                                            ; $797C: $FB
    inc e                                         ; $797D: $1C
    inc e                                         ; $797E: $1C
    nop                                           ; $797F: $00
    add b                                         ; $7980: $80
    nop                                           ; $7981: $00
    add b                                         ; $7982: $80
    nop                                           ; $7983: $00
    nop                                           ; $7984: $00
    nop                                           ; $7985: $00
    nop                                           ; $7986: $00

Call_00E_7987:
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

jr_00E_799D:
    nop                                           ; $799D: $00
    nop                                           ; $799E: $00
    nop                                           ; $799F: $00
    ld b, $00                                     ; $79A0: $06 $00
    rrca                                          ; $79A2: $0F
    nop                                           ; $79A3: $00
    rla                                           ; $79A4: $17
    ld [$1827], sp                                ; $79A5: $08 $27 $18
    cpl                                           ; $79A8: $2F
    db $10                                        ; $79A9: $10
    ld a, a                                       ; $79AA: $7F
    jr nc, jr_00E_7A24                            ; $79AB: $30 $77

    jr z, @+$01                                   ; $79AD: $28 $FF

    ld l, b                                       ; $79AF: $68
    rst RST_38                                    ; $79B0: $FF
    jr z, @+$41                                   ; $79B1: $28 $3F

    nop                                           ; $79B3: $00
    rra                                           ; $79B4: $1F
    ld [$083E], sp                                ; $79B5: $08 $3E $08
    ld a, $10                                     ; $79B8: $3E $10
    ld a, [hl]                                    ; $79BA: $7E
    db $10                                        ; $79BB: $10
    ld e, a                                       ; $79BC: $5F
    jr nz, jr_00E_799D                            ; $79BD: $20 $DE

    ld hl, $0080                                  ; $79BF: $21 $80 $00
    add b                                         ; $79C2: $80
    nop                                           ; $79C3: $00
    add b                                         ; $79C4: $80
    nop                                           ; $79C5: $00

jr_00E_79C6:
    add b                                         ; $79C6: $80
    nop                                           ; $79C7: $00
    add b                                         ; $79C8: $80
    nop                                           ; $79C9: $00
    nop                                           ; $79CA: $00
    nop                                           ; $79CB: $00
    nop                                           ; $79CC: $00
    nop                                           ; $79CD: $00
    stop                                          ; $79CE: $10 $00
    jr z, jr_00E_79E2                             ; $79D0: $28 $10

    jr z, jr_00E_79E4                             ; $79D2: $28 $10

    ld c, h                                       ; $79D4: $4C
    jr c, @-$1F                                   ; $79D5: $38 $DF

jr_00E_79D7:
    jr c, jr_00E_79D7                             ; $79D7: $38 $FE

    ld a, l                                       ; $79D9: $7D
    or d                                          ; $79DA: $B2
    ld a, l                                       ; $79DB: $7D
    cp $79                                        ; $79DC: $FE $79
    ld e, c                                       ; $79DE: $59
    or [hl]                                       ; $79DF: $B6
    nop                                           ; $79E0: $00
    nop                                           ; $79E1: $00

jr_00E_79E2:
    ld h, b                                       ; $79E2: $60
    nop                                           ; $79E3: $00

jr_00E_79E4:
    ld [hl], b                                    ; $79E4: $70
    jr nz, jr_00E_7A5F                            ; $79E5: $20 $78

    jr nc, @+$7E                                  ; $79E7: $30 $7C

    jr c, @+$7E                                   ; $79E9: $38 $7C

    jr jr_00E_7A6B                                ; $79EB: $18 $7E

    inc l                                         ; $79ED: $2C
    ld e, [hl]                                    ; $79EE: $5E
    inc l                                         ; $79EF: $2C
    ld a, a                                       ; $79F0: $7F
    ld [hl], $7F                                  ; $79F1: $36 $7F
    inc [hl]                                      ; $79F3: $34
    ld a, h                                       ; $79F4: $7C
    nop                                           ; $79F5: $00
    ld a, b                                       ; $79F6: $78
    db $10                                        ; $79F7: $10
    ld a, h                                       ; $79F8: $7C
    jr nc, jr_00E_7A37                            ; $79F9: $30 $3C

    jr jr_00E_7A3B                                ; $79FB: $18 $3E

    jr jr_00E_7A1D                                ; $79FD: $18 $1E

    inc c                                         ; $79FF: $0C
    cp b                                          ; $7A00: $B8
    ld b, a                                       ; $7A01: $47
    db $FC                                        ; $7A02: $FC
    ld b, e                                       ; $7A03: $43
    ld a, a                                       ; $7A04: $7F
    jr jr_00E_79C6                                ; $7A05: $18 $BF

    nop                                           ; $7A07: $00
    rst RST_38                                    ; $7A08: $FF
    inc a                                         ; $7A09: $3C
    adc a                                         ; $7A0A: $8F
    db $FC                                        ; $7A0B: $FC
    ccf                                           ; $7A0C: $3F
    db $FC                                        ; $7A0D: $FC
    rst RST_38                                    ; $7A0E: $FF
    add b                                         ; $7A0F: $80
    add e                                         ; $7A10: $83
    nop                                           ; $7A11: $00
    rlca                                          ; $7A12: $07
    ld bc, $051E                                  ; $7A13: $01 $1E $05
    ld [hl], a                                    ; $7A16: $77
    add hl, de                                    ; $7A17: $19
    db $DB                                        ; $7A18: $DB
    ld h, [hl]                                    ; $7A19: $66
    db $ED                                        ; $7A1A: $ED
    ld a, [de]                                    ; $7A1B: $1A
    ld a, a                                       ; $7A1C: $7F

jr_00E_7A1D:
    ld [hl+], a                                   ; $7A1D: $22
    ld l, e                                       ; $7A1E: $6B
    inc b                                         ; $7A1F: $04
    rst RST_18                                    ; $7A20: $DF
    jr nc, jr_00E_7A7C                            ; $7A21: $30 $59

    or [hl]                                       ; $7A23: $B6

jr_00E_7A24:
    rst RST_38                                    ; $7A24: $FF
    jr nc, jr_00E_7A58                            ; $7A25: $30 $31

    adc $87                                       ; $7A27: $CE $87
    ld a, b                                       ; $7A29: $78
    ld c, c                                       ; $7A2A: $49
    or [hl]                                       ; $7A2B: $B6
    ld a, e                                       ; $7A2C: $7B
    add [hl]                                      ; $7A2D: $86
    db $E4                                        ; $7A2E: $E4
    ld b, e                                       ; $7A2F: $43
    push hl                                       ; $7A30: $E5
    ld b, e                                       ; $7A31: $43
    ld b, [hl]                                    ; $7A32: $46
    add c                                         ; $7A33: $81
    jp $A581                                      ; $7A34: $C3 $81 $A5


jr_00E_7A37:
    ld b, d                                       ; $7A37: $42
    rst RST_20                                    ; $7A38: $E7
    ld b, d                                       ; $7A39: $42
    ld b, l                                       ; $7A3A: $45

jr_00E_7A3B:
    add d                                         ; $7A3B: $82
    add e                                         ; $7A3C: $83
    ld bc, $0001                                  ; $7A3D: $01 $01 $00
    rst RST_08                                    ; $7A40: $CF
    ld b, $3F                                     ; $7A41: $06 $3F
    rst RST_00                                    ; $7A43: $C7
    rrca                                          ; $7A44: $0F
    rst RST_30                                    ; $7A45: $F7
    ccf                                           ; $7A46: $3F
    rst RST_00                                    ; $7A47: $C7
    rst RST_38                                    ; $7A48: $FF
    dec de                                        ; $7A49: $1B
    ld a, a                                       ; $7A4A: $7F
    nop                                           ; $7A4B: $00
    rst RST_38                                    ; $7A4C: $FF
    inc a                                         ; $7A4D: $3C
    ld [hl], c                                    ; $7A4E: $71
    cp a                                          ; $7A4F: $BF
    ld a, h                                       ; $7A50: $7C
    cp a                                          ; $7A51: $BF
    rst RST_38                                    ; $7A52: $FF
    ld bc, $00C1                                  ; $7A53: $01 $C1 $00
    ld h, b                                       ; $7A56: $60
    ret nz                                        ; $7A57: $C0

jr_00E_7A58:
    cp b                                          ; $7A58: $B8
    ld h, b                                       ; $7A59: $60
    xor [hl]                                      ; $7A5A: $AE
    ld e, b                                       ; $7A5B: $58
    db $DB                                        ; $7A5C: $DB
    ld h, [hl]                                    ; $7A5D: $66
    or a                                          ; $7A5E: $B7

jr_00E_7A5F:
    ld e, b                                       ; $7A5F: $58
    ld bc, $0300                                  ; $7A60: $01 $00 $03
    ld bc, $0003                                  ; $7A63: $01 $03 $00
    ld b, $01                                     ; $7A66: $06 $01
    rra                                           ; $7A68: $1F
    rlca                                          ; $7A69: $07
    rst RST_38                                    ; $7A6A: $FF

jr_00E_7A6B:
    inc e                                         ; $7A6B: $1C
    inc a                                         ; $7A6C: $3C
    ldh [$FFF0], a                                ; $7A6D: $E0 $F0
    ldh [$FFE0], a                                ; $7A6F: $E0 $E0
    nop                                           ; $7A71: $00
    nop                                           ; $7A72: $00
    nop                                           ; $7A73: $00
    nop                                           ; $7A74: $00
    nop                                           ; $7A75: $00
    nop                                           ; $7A76: $00
    nop                                           ; $7A77: $00
    nop                                           ; $7A78: $00
    nop                                           ; $7A79: $00
    nop                                           ; $7A7A: $00
    nop                                           ; $7A7B: $00

jr_00E_7A7C:
    nop                                           ; $7A7C: $00

jr_00E_7A7D:
    nop                                           ; $7A7D: $00
    nop                                           ; $7A7E: $00
    nop                                           ; $7A7F: $00
    inc bc                                        ; $7A80: $03
    nop                                           ; $7A81: $00
    inc b                                         ; $7A82: $04
    inc bc                                        ; $7A83: $03
    rrca                                          ; $7A84: $0F
    rlca                                          ; $7A85: $07
    rrca                                          ; $7A86: $0F
    nop                                           ; $7A87: $00
    nop                                           ; $7A88: $00
    nop                                           ; $7A89: $00
    nop                                           ; $7A8A: $00
    nop                                           ; $7A8B: $00
    nop                                           ; $7A8C: $00
    nop                                           ; $7A8D: $00
    nop                                           ; $7A8E: $00
    nop                                           ; $7A8F: $00
    nop                                           ; $7A90: $00
    nop                                           ; $7A91: $00
    nop                                           ; $7A92: $00
    nop                                           ; $7A93: $00
    nop                                           ; $7A94: $00
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
    rra                                           ; $7AA0: $1F
    add hl, bc                                    ; $7AA1: $09
    dec de                                        ; $7AA2: $1B
    nop                                           ; $7AA3: $00
    nop                                           ; $7AA4: $00
    nop                                           ; $7AA5: $00
    nop                                           ; $7AA6: $00
    nop                                           ; $7AA7: $00
    nop                                           ; $7AA8: $00
    nop                                           ; $7AA9: $00
    nop                                           ; $7AAA: $00
    nop                                           ; $7AAB: $00
    nop                                           ; $7AAC: $00
    nop                                           ; $7AAD: $00
    nop                                           ; $7AAE: $00
    nop                                           ; $7AAF: $00
    nop                                           ; $7AB0: $00
    nop                                           ; $7AB1: $00
    nop                                           ; $7AB2: $00
    nop                                           ; $7AB3: $00
    nop                                           ; $7AB4: $00
    nop                                           ; $7AB5: $00
    nop                                           ; $7AB6: $00
    nop                                           ; $7AB7: $00
    nop                                           ; $7AB8: $00
    nop                                           ; $7AB9: $00
    nop                                           ; $7ABA: $00
    nop                                           ; $7ABB: $00
    nop                                           ; $7ABC: $00
    nop                                           ; $7ABD: $00
    nop                                           ; $7ABE: $00
    nop                                           ; $7ABF: $00
    cp $44                                        ; $7AC0: $FE $44
    ld d, [hl]                                    ; $7AC2: $56
    jr nz, jr_00E_7A7D                            ; $7AC3: $20 $B8

    db $10                                        ; $7AC5: $10
    ld e, b                                       ; $7AC6: $58
    add b                                         ; $7AC7: $80
    ret nz                                        ; $7AC8: $C0

    nop                                           ; $7AC9: $00
    nop                                           ; $7ACA: $00
    nop                                           ; $7ACB: $00
    nop                                           ; $7ACC: $00
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
    add b                                         ; $7AE0: $80
    nop                                           ; $7AE1: $00
    add b                                         ; $7AE2: $80
    nop                                           ; $7AE3: $00
    add b                                         ; $7AE4: $80
    nop                                           ; $7AE5: $00
    add b                                         ; $7AE6: $80
    nop                                           ; $7AE7: $00
    add b                                         ; $7AE8: $80
    nop                                           ; $7AE9: $00
    add b                                         ; $7AEA: $80
    nop                                           ; $7AEB: $00
    ret nz                                        ; $7AEC: $C0

    add b                                         ; $7AED: $80
    ret nz                                        ; $7AEE: $C0

    nop                                           ; $7AEF: $00
    ld h, b                                       ; $7AF0: $60
    add b                                         ; $7AF1: $80
    ld hl, sp-$20                                 ; $7AF2: $F8 $E0
    rst RST_38                                    ; $7AF4: $FF
    jr c, @+$3E                                   ; $7AF5: $38 $3C

    rlca                                          ; $7AF7: $07
    rrca                                          ; $7AF8: $0F
    rlca                                          ; $7AF9: $07
    rlca                                          ; $7AFA: $07
    nop                                           ; $7AFB: $00
    nop                                           ; $7AFC: $00
    nop                                           ; $7AFD: $00
    nop                                           ; $7AFE: $00
    nop                                           ; $7AFF: $00
    ret nz                                        ; $7B00: $C0

    nop                                           ; $7B01: $00
    jr nz, @-$3E                                  ; $7B02: $20 $C0

    ldh a, [$FFE0]                                ; $7B04: $F0 $E0
    ldh a, [rP1]                                  ; $7B06: $F0 $00
    nop                                           ; $7B08: $00
    nop                                           ; $7B09: $00
    nop                                           ; $7B0A: $00
    nop                                           ; $7B0B: $00
    nop                                           ; $7B0C: $00
    nop                                           ; $7B0D: $00
    nop                                           ; $7B0E: $00
    nop                                           ; $7B0F: $00
    nop                                           ; $7B10: $00
    nop                                           ; $7B11: $00
    nop                                           ; $7B12: $00
    nop                                           ; $7B13: $00
    nop                                           ; $7B14: $00
    nop                                           ; $7B15: $00
    nop                                           ; $7B16: $00
    nop                                           ; $7B17: $00
    nop                                           ; $7B18: $00
    nop                                           ; $7B19: $00
    nop                                           ; $7B1A: $00
    nop                                           ; $7B1B: $00
    nop                                           ; $7B1C: $00
    nop                                           ; $7B1D: $00
    nop                                           ; $7B1E: $00
    nop                                           ; $7B1F: $00
    nop                                           ; $7B20: $00
    nop                                           ; $7B21: $00
    ld b, b                                       ; $7B22: $40
    nop                                           ; $7B23: $00
    jr nc, jr_00E_7B26                            ; $7B24: $30 $00

jr_00E_7B26:
    inc a                                         ; $7B26: $3C
    db $10                                        ; $7B27: $10
    rra                                           ; $7B28: $1F
    inc c                                         ; $7B29: $0C
    dec de                                        ; $7B2A: $1B
    rrca                                          ; $7B2B: $0F
    inc c                                         ; $7B2C: $0C
    rlca                                          ; $7B2D: $07
    inc c                                         ; $7B2E: $0C
    rlca                                          ; $7B2F: $07
    ld b, $03                                     ; $7B30: $06 $03
    ld b, $03                                     ; $7B32: $06 $03
    inc bc                                        ; $7B34: $03
    ld bc, $0103                                  ; $7B35: $01 $03 $01
    ld bc, $0300                                  ; $7B38: $01 $00 $03
    nop                                           ; $7B3B: $00
    inc bc                                        ; $7B3C: $03
    nop                                           ; $7B3D: $00
    nop                                           ; $7B3E: $00
    nop                                           ; $7B3F: $00
    dec sp                                        ; $7B40: $3B
    ld e, $1B                                     ; $7B41: $1E $1B
    ld b, $3F                                     ; $7B43: $06 $3F
    ld e, $1F                                     ; $7B45: $1E $1F
    nop                                           ; $7B47: $00
    ld bc, $8100                                  ; $7B48: $01 $00 $81
    nop                                           ; $7B4B: $00
    pop hl                                        ; $7B4C: $E1
    add b                                         ; $7B4D: $80
    ld a, e                                       ; $7B4E: $7B
    ldh [$FF1F], a                                ; $7B4F: $E0 $1F
    ldh [$FF2D], a                                ; $7B51: $E0 $2D
    jp nc, $B44B                                  ; $7B53: $D2 $4B $B4

    adc h                                         ; $7B56: $8C
    ld [hl], e                                    ; $7B57: $73
    add h                                         ; $7B58: $84
    ei                                            ; $7B59: $FB
    add d                                         ; $7B5A: $82
    db $FD                                        ; $7B5B: $FD
    cp $41                                        ; $7B5C: $FE $41
    ret nz                                        ; $7B5E: $C0

    ld a, a                                       ; $7B5F: $7F
    di                                            ; $7B60: $F3
    xor h                                         ; $7B61: $AC
    db $DB                                        ; $7B62: $DB
    or l                                          ; $7B63: $B5
    rst RST_08                                    ; $7B64: $CF
    cp b                                          ; $7B65: $B8
    rst RST_20                                    ; $7B66: $E7
    sbc h                                         ; $7B67: $9C
    db $DB                                        ; $7B68: $DB
    and [hl]                                      ; $7B69: $A6
    push af                                       ; $7B6A: $F5
    adc e                                         ; $7B6B: $8B
    adc e                                         ; $7B6C: $8B
    db $F4                                        ; $7B6D: $F4
    adc c                                         ; $7B6E: $89
    or $8D                                        ; $7B6F: $F6 $8D
    ldh a, [c]                                    ; $7B71: $F2
    sub [hl]                                      ; $7B72: $96
    jp hl                                         ; $7B73: $E9


    pop hl                                        ; $7B74: $E1
    ld e, $00                                     ; $7B75: $1E $00
    rst RST_38                                    ; $7B77: $FF
    nop                                           ; $7B78: $00
    rst RST_38                                    ; $7B79: $FF
    nop                                           ; $7B7A: $00
    rst RST_38                                    ; $7B7B: $FF
    nop                                           ; $7B7C: $00
    rst RST_38                                    ; $7B7D: $FF
    nop                                           ; $7B7E: $00
    rst RST_38                                    ; $7B7F: $FF
    rst RST_08                                    ; $7B80: $CF
    ld [hl], c                                    ; $7B81: $71
    cp $03                                        ; $7B82: $FE $03
    rst RST_38                                    ; $7B84: $FF
    ld d, d                                       ; $7B85: $52
    db $FC                                        ; $7B86: $FC
    rlca                                          ; $7B87: $07
    adc h                                         ; $7B88: $8C
    ld [hl], a                                    ; $7B89: $77
    sbc c                                         ; $7B8A: $99
    ld l, [hl]                                    ; $7B8B: $6E
    rst RST_18                                    ; $7B8C: $DF
    xor b                                         ; $7B8D: $A8
    ld a, h                                       ; $7B8E: $7C
    db $D3                                        ; $7B8F: $D3
    ld sp, hl                                     ; $7B90: $F9
    ld [hl], $99                                  ; $7B91: $36 $99
    ld h, [hl]                                    ; $7B93: $66
    push af                                       ; $7B94: $F5
    ld a, [bc]                                    ; $7B95: $0A
    inc bc                                        ; $7B96: $03
    db $FC                                        ; $7B97: $FC
    nop                                           ; $7B98: $00
    rst RST_38                                    ; $7B99: $FF
    nop                                           ; $7B9A: $00
    rst RST_38                                    ; $7B9B: $FF
    nop                                           ; $7B9C: $00

jr_00E_7B9D:
    rst RST_38                                    ; $7B9D: $FF
    nop                                           ; $7B9E: $00
    rst RST_38                                    ; $7B9F: $FF
    ld a, e                                       ; $7BA0: $7B
    xor l                                         ; $7BA1: $AD
    rst RST_38                                    ; $7BA2: $FF
    dec l                                         ; $7BA3: $2D
    ld a, a                                       ; $7BA4: $7F
    and d                                         ; $7BA5: $A2
    halt                                          ; $7BA6: $76
    and e                                         ; $7BA7: $A3
    cp h                                          ; $7BA8: $BC

jr_00E_7BA9:
    ld h, a                                       ; $7BA9: $67
    inc a                                         ; $7BAA: $3C
    rst RST_20                                    ; $7BAB: $E7
    jr c, jr_00E_7B9D                             ; $7BAC: $38 $EF

    ld hl, sp+$2F                                 ; $7BAE: $F8 $2F
    jr jr_00E_7BA9                                ; $7BB0: $18 $F7

    inc b                                         ; $7BB2: $04
    ei                                            ; $7BB3: $FB
    inc bc                                        ; $7BB4: $03
    db $FC                                        ; $7BB5: $FC
    add c                                         ; $7BB6: $81
    ld a, [hl]                                    ; $7BB7: $7E
    ld a, l                                       ; $7BB8: $7D
    add d                                         ; $7BB9: $82
    inc bc                                        ; $7BBA: $03
    db $FC                                        ; $7BBB: $FC
    inc b                                         ; $7BBC: $04
    ei                                            ; $7BBD: $FB
    rlca                                          ; $7BBE: $07
    ld hl, sp-$40                                 ; $7BBF: $F8 $C0
    add b                                         ; $7BC1: $80
    pop bc                                        ; $7BC2: $C1
    add b                                         ; $7BC3: $80
    jp $C681                                      ; $7BC4: $C3 $81 $C6


    add e                                         ; $7BC7: $83
    call z, $D887                                 ; $7BC8: $CC $87 $D8
    adc a                                         ; $7BCB: $8F
    pop af                                        ; $7BCC: $F1
    sbc a                                         ; $7BCD: $9F
    pop hl                                        ; $7BCE: $E1
    cp a                                          ; $7BCF: $BF
    ld b, e                                       ; $7BD0: $43
    cp $03                                        ; $7BD1: $FE $03
    cp $C6                                        ; $7BD3: $FE $C6
    inc a                                         ; $7BD5: $3C
    ld h, $DC                                     ; $7BD6: $26 $DC
    inc e                                         ; $7BD8: $1C
    add sp, $0C                                   ; $7BD9: $E8 $0C
    ld hl, sp+$1C                                 ; $7BDB: $F8 $1C
    ldh a, [$FFFC]                                ; $7BDD: $F0 $FC
    stop                                          ; $7BDF: $10 $00
    nop                                           ; $7BE1: $00
    nop                                           ; $7BE2: $00
    nop                                           ; $7BE3: $00
    nop                                           ; $7BE4: $00
    nop                                           ; $7BE5: $00
    nop                                           ; $7BE6: $00
    nop                                           ; $7BE7: $00
    ld [hl], b                                    ; $7BE8: $70
    nop                                           ; $7BE9: $00
    ld l, h                                       ; $7BEA: $6C
    jr nc, jr_00E_7C28                            ; $7BEB: $30 $3B

    inc c                                         ; $7BED: $0C
    ld a, [hl]                                    ; $7BEE: $7E
    inc bc                                        ; $7BEF: $03
    ld l, e                                       ; $7BF0: $6B
    inc a                                         ; $7BF1: $3C
    ld a, $03                                     ; $7BF2: $3E $03
    ld l, e                                       ; $7BF4: $6B
    inc a                                         ; $7BF5: $3C
    ld a, [hl]                                    ; $7BF6: $7E
    inc bc                                        ; $7BF7: $03
    inc bc                                        ; $7BF8: $03
    nop                                           ; $7BF9: $00
    dec e                                         ; $7BFA: $1D
    nop                                           ; $7BFB: $00
    rra                                           ; $7BFC: $1F
    ld [$0639], sp                                ; $7BFD: $08 $39 $06
    nop                                           ; $7C00: $00
    nop                                           ; $7C01: $00
    nop                                           ; $7C02: $00
    nop                                           ; $7C03: $00
    nop                                           ; $7C04: $00
    nop                                           ; $7C05: $00
    nop                                           ; $7C06: $00
    nop                                           ; $7C07: $00
    nop                                           ; $7C08: $00
    nop                                           ; $7C09: $00
    nop                                           ; $7C0A: $00
    nop                                           ; $7C0B: $00
    nop                                           ; $7C0C: $00
    nop                                           ; $7C0D: $00
    ret nz                                        ; $7C0E: $C0

    nop                                           ; $7C0F: $00
    ld hl, sp-$40                                 ; $7C10: $F8 $C0
    add sp, $70                                   ; $7C12: $E8 $70
    adc b                                         ; $7C14: $88
    ldh a, [$FFE8]                                ; $7C15: $F0 $E8
    ldh a, [$FFC7]                                ; $7C17: $F0 $C7
    ld hl, sp-$01                                 ; $7C19: $F8 $FF
    ld h, d                                       ; $7C1B: $62
    cp $85                                        ; $7C1C: $FE $85
    rst RST_20                                    ; $7C1E: $E7
    jp c, RST_00                                  ; $7C1F: $DA $00 $00

    nop                                           ; $7C22: $00
    nop                                           ; $7C23: $00
    nop                                           ; $7C24: $00
    nop                                           ; $7C25: $00
    nop                                           ; $7C26: $00
    nop                                           ; $7C27: $00

jr_00E_7C28:
    nop                                           ; $7C28: $00
    nop                                           ; $7C29: $00
    nop                                           ; $7C2A: $00
    nop                                           ; $7C2B: $00
    nop                                           ; $7C2C: $00
    nop                                           ; $7C2D: $00
    nop                                           ; $7C2E: $00
    nop                                           ; $7C2F: $00
    ld bc, $2100                                  ; $7C30: $01 $00 $21
    nop                                           ; $7C33: $00
    ld d, c                                       ; $7C34: $51
    jr nz, @-$75                                  ; $7C35: $20 $89

    ld [hl], b                                    ; $7C37: $70
    ld h, $F9                                     ; $7C38: $26 $F9
    ld h, a                                       ; $7C3A: $67
    ld hl, sp-$1D                                 ; $7C3B: $F8 $E3
    ld a, h                                       ; $7C3D: $7C
    ld [hl], e                                    ; $7C3E: $73
    adc l                                         ; $7C3F: $8D
    nop                                           ; $7C40: $00
    nop                                           ; $7C41: $00
    nop                                           ; $7C42: $00
    nop                                           ; $7C43: $00
    nop                                           ; $7C44: $00
    nop                                           ; $7C45: $00
    nop                                           ; $7C46: $00
    nop                                           ; $7C47: $00
    nop                                           ; $7C48: $00
    nop                                           ; $7C49: $00
    inc de                                        ; $7C4A: $13
    nop                                           ; $7C4B: $00
    dec e                                         ; $7C4C: $1D
    inc bc                                        ; $7C4D: $03
    scf                                           ; $7C4E: $37
    inc c                                         ; $7C4F: $0C
    db $FD                                        ; $7C50: $FD
    inc bc                                        ; $7C51: $03
    ld [hl], a                                    ; $7C52: $77
    xor h                                         ; $7C53: $AC
    ld a, l                                       ; $7C54: $7D
    and e                                         ; $7C55: $A3
    rst RST_30                                    ; $7C56: $F7
    ld l, h                                       ; $7C57: $6C
    rst RST_38                                    ; $7C58: $FF
    ld h, b                                       ; $7C59: $60
    rst RST_38                                    ; $7C5A: $FF
    ldh [c], a                                    ; $7C5B: $E2
    di                                            ; $7C5C: $F3
    xor h                                         ; $7C5D: $AC
    cp e                                          ; $7C5E: $BB
    ld l, [hl]                                    ; $7C5F: $6E
    nop                                           ; $7C60: $00
    nop                                           ; $7C61: $00
    nop                                           ; $7C62: $00
    nop                                           ; $7C63: $00
    nop                                           ; $7C64: $00
    nop                                           ; $7C65: $00
    nop                                           ; $7C66: $00
    nop                                           ; $7C67: $00
    ldh [rP1], a                                  ; $7C68: $E0 $00
    ld h, b                                       ; $7C6A: $60
    ret nz                                        ; $7C6B: $C0

    ret nz                                        ; $7C6C: $C0

    nop                                           ; $7C6D: $00
    ldh [rP1], a                                  ; $7C6E: $E0 $00
    ld h, b                                       ; $7C70: $60
    ret nz                                        ; $7C71: $C0

    ret nz                                        ; $7C72: $C0

    nop                                           ; $7C73: $00
    ld h, b                                       ; $7C74: $60
    add b                                         ; $7C75: $80
    ldh [rP1], a                                  ; $7C76: $E0 $00
    ret nz                                        ; $7C78: $C0

    nop                                           ; $7C79: $00
    ret nz                                        ; $7C7A: $C0

    nop                                           ; $7C7B: $00
    ret nz                                        ; $7C7C: $C0

    add b                                         ; $7C7D: $80
    ret nz                                        ; $7C7E: $C0

    add b                                         ; $7C7F: $80
    nop                                           ; $7C80: $00

jr_00E_7C81:
    nop                                           ; $7C81: $00
    ld bc, $0200                                  ; $7C82: $01 $00 $02
    nop                                           ; $7C85: $00
    ld b, $00                                     ; $7C86: $06 $00
    inc c                                         ; $7C88: $0C
    nop                                           ; $7C89: $00
    inc e                                         ; $7C8A: $1C
    ld [$1038], sp                                ; $7C8B: $08 $38 $10
    ld a, b                                       ; $7C8E: $78
    jr nc, jr_00E_7C81                            ; $7C8F: $30 $F0

    ld h, b                                       ; $7C91: $60
    or b                                          ; $7C92: $B0
    ldh [$FF60], a                                ; $7C93: $E0 $60
    ret nz                                        ; $7C95: $C0

    ld h, b                                       ; $7C96: $60
    ret nz                                        ; $7C97: $C0

    ret nz                                        ; $7C98: $C0

    add b                                         ; $7C99: $80
    ret nz                                        ; $7C9A: $C0

    add b                                         ; $7C9B: $80
    add b                                         ; $7C9C: $80
    nop                                           ; $7C9D: $00
    add b                                         ; $7C9E: $80
    nop                                           ; $7C9F: $00
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

Call_00E_7E30:
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

Jump_00E_7F75:
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
