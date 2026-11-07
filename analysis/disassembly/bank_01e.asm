; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01e", ROMX[$4000], BANK[$1e]

    inc e                                         ; $4000: $1C
    inc bc                                        ; $4001: $03
    ld b, $01                                     ; $4002: $06 $01
    ld e, $05                                     ; $4004: $1E $05
    ccf                                           ; $4006: $3F
    ld e, $3F                                     ; $4007: $1E $3F
    ld c, $6F                                     ; $4009: $0E $6F
    ld d, $9F                                     ; $400B: $16 $9F
    ld h, b                                       ; $400D: $60
    xor $11                                       ; $400E: $EE $11
    ld e, $01                                     ; $4010: $1E $01
    ld c, $01                                     ; $4012: $0E $01
    ld d, $09                                     ; $4014: $16 $09
    rra                                           ; $4016: $1F
    ld b, $1F                                     ; $4017: $06 $1F
    ld b, $3E                                     ; $4019: $06 $3E
    jr jr_01E_4099                                ; $401B: $18 $7C

    jr c, jr_01E_409B                             ; $401D: $38 $7C

    nop                                           ; $401F: $00
    db $F4                                        ; $4020: $F4
    nop                                           ; $4021: $00
    cp b                                          ; $4022: $B8
    ld d, b                                       ; $4023: $50
    ld a, [hl]                                    ; $4024: $7E
    adc b                                         ; $4025: $88
    xor a                                         ; $4026: $AF
    ld [hl], h                                    ; $4027: $74
    xor [hl]                                      ; $4028: $AE
    push af                                       ; $4029: $F5
    rst RST_38                                    ; $402A: $FF
    ld h, b                                       ; $402B: $60
    db $FC                                        ; $402C: $FC
    nop                                           ; $402D: $00
    db $EC                                        ; $402E: $EC
    ld d, b                                       ; $402F: $50
    ld l, h                                       ; $4030: $6C
    sub b                                         ; $4031: $90
    ld c, d                                       ; $4032: $4A
    or h                                          ; $4033: $B4
    cp [hl]                                       ; $4034: $BE
    ld [$183C], sp                                ; $4035: $08 $3C $18
    ld e, $04                                     ; $4038: $1E $04
    rrca                                          ; $403A: $0F
    ld b, $0F                                     ; $403B: $06 $0F
    nop                                           ; $403D: $00
    nop                                           ; $403E: $00
    nop                                           ; $403F: $00
    nop                                           ; $4040: $00
    nop                                           ; $4041: $00
    nop                                           ; $4042: $00
    nop                                           ; $4043: $00
    nop                                           ; $4044: $00
    nop                                           ; $4045: $00
    nop                                           ; $4046: $00
    nop                                           ; $4047: $00
    nop                                           ; $4048: $00
    nop                                           ; $4049: $00
    nop                                           ; $404A: $00
    nop                                           ; $404B: $00
    nop                                           ; $404C: $00
    nop                                           ; $404D: $00
    nop                                           ; $404E: $00
    nop                                           ; $404F: $00
    nop                                           ; $4050: $00
    nop                                           ; $4051: $00
    nop                                           ; $4052: $00
    nop                                           ; $4053: $00
    ld h, c                                       ; $4054: $61
    nop                                           ; $4055: $00
    ld e, [hl]                                    ; $4056: $5E
    ld hl, $0A37                                  ; $4057: $21 $37 $0A
    ld [hl], e                                    ; $405A: $73
    dec l                                         ; $405B: $2D
    rst RST_38                                    ; $405C: $FF
    ld h, c                                       ; $405D: $61
    ei                                            ; $405E: $FB
    ld h, l                                       ; $405F: $65
    nop                                           ; $4060: $00
    nop                                           ; $4061: $00
    nop                                           ; $4062: $00
    nop                                           ; $4063: $00
    nop                                           ; $4064: $00
    nop                                           ; $4065: $00
    nop                                           ; $4066: $00
    nop                                           ; $4067: $00
    nop                                           ; $4068: $00
    nop                                           ; $4069: $00
    nop                                           ; $406A: $00
    nop                                           ; $406B: $00
    nop                                           ; $406C: $00
    nop                                           ; $406D: $00
    nop                                           ; $406E: $00
    nop                                           ; $406F: $00
    nop                                           ; $4070: $00
    nop                                           ; $4071: $00
    nop                                           ; $4072: $00
    nop                                           ; $4073: $00
    add b                                         ; $4074: $80
    nop                                           ; $4075: $00
    ret nz                                        ; $4076: $C0

    nop                                           ; $4077: $00
    ldh a, [$FFC0]                                ; $4078: $F0 $C0
    db $FC                                        ; $407A: $FC
    ld [hl], b                                    ; $407B: $70
    db $FC                                        ; $407C: $FC
    cp b                                          ; $407D: $B8
    ld hl, sp-$70                                 ; $407E: $F8 $90
    nop                                           ; $4080: $00
    nop                                           ; $4081: $00
    nop                                           ; $4082: $00
    nop                                           ; $4083: $00
    nop                                           ; $4084: $00
    nop                                           ; $4085: $00
    ldh [rP1], a                                  ; $4086: $E0 $00
    and b                                         ; $4088: $A0
    ld b, b                                       ; $4089: $40
    ld b, b                                       ; $408A: $40
    add b                                         ; $408B: $80
    add b                                         ; $408C: $80
    nop                                           ; $408D: $00
    nop                                           ; $408E: $00
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

jr_01E_4099:
    nop                                           ; $4099: $00
    nop                                           ; $409A: $00

jr_01E_409B:
    nop                                           ; $409B: $00
    nop                                           ; $409C: $00
    nop                                           ; $409D: $00
    nop                                           ; $409E: $00
    nop                                           ; $409F: $00
    rra                                           ; $40A0: $1F
    ld [$010A], sp                                ; $40A1: $08 $0A $01
    inc bc                                        ; $40A4: $03
    nop                                           ; $40A5: $00
    rrca                                          ; $40A6: $0F
    ld [bc], a                                    ; $40A7: $02
    rra                                           ; $40A8: $1F
    rrca                                          ; $40A9: $0F
    rra                                           ; $40AA: $1F
    rlca                                          ; $40AB: $07
    ld l, a                                       ; $40AC: $6F
    inc de                                        ; $40AD: $13
    sbc a                                         ; $40AE: $9F
    ld h, b                                       ; $40AF: $60
    rst RST_28                                    ; $40B0: $EF
    db $10                                        ; $40B1: $10
    rra                                           ; $40B2: $1F
    nop                                           ; $40B3: $00
    inc de                                        ; $40B4: $13
    inc c                                         ; $40B5: $0C
    rla                                           ; $40B6: $17
    ld a, [bc]                                    ; $40B7: $0A
    rrca                                          ; $40B8: $0F
    inc bc                                        ; $40B9: $03
    rra                                           ; $40BA: $1F
    inc c                                         ; $40BB: $0C
    ld a, $1C                                     ; $40BC: $3E $1C
    ld a, $00                                     ; $40BE: $3E $00
    ccf                                           ; $40C0: $3F
    ret nc                                        ; $40C1: $D0

    ld a, b                                       ; $40C2: $78
    add b                                         ; $40C3: $80
    ld e, h                                       ; $40C4: $5C
    xor b                                         ; $40C5: $A8
    ccf                                           ; $40C6: $3F
    call nz, $3AD7                                ; $40C7: $C4 $D7 $3A
    rst RST_10                                    ; $40CA: $D7
    ld a, d                                       ; $40CB: $7A
    rst RST_38                                    ; $40CC: $FF
    jr nc, @+$01                                  ; $40CD: $30 $FF

    nop                                           ; $40CF: $00
    ld [hl], a                                    ; $40D0: $77
    xor b                                         ; $40D1: $A8
    inc [hl]                                      ; $40D2: $34
    sla h                                         ; $40D3: $CB $24
    db $DB                                        ; $40D5: $DB
    ld e, a                                       ; $40D6: $5F
    add h                                         ; $40D7: $84
    adc a                                         ; $40D8: $8F
    ld [bc], a                                    ; $40D9: $02
    rlca                                          ; $40DA: $07
    inc bc                                        ; $40DB: $03
    rlca                                          ; $40DC: $07
    nop                                           ; $40DD: $00
    nop                                           ; $40DE: $00
    nop                                           ; $40DF: $00
    nop                                           ; $40E0: $00
    nop                                           ; $40E1: $00
    nop                                           ; $40E2: $00
    nop                                           ; $40E3: $00
    nop                                           ; $40E4: $00
    nop                                           ; $40E5: $00
    nop                                           ; $40E6: $00
    nop                                           ; $40E7: $00
    ldh [rP1], a                                  ; $40E8: $E0 $00
    and b                                         ; $40EA: $A0
    ld b, b                                       ; $40EB: $40
    ld b, b                                       ; $40EC: $40
    add b                                         ; $40ED: $80
    ret nz                                        ; $40EE: $C0

    nop                                           ; $40EF: $00
    nop                                           ; $40F0: $00
    nop                                           ; $40F1: $00
    add b                                         ; $40F2: $80
    nop                                           ; $40F3: $00
    add b                                         ; $40F4: $80
    nop                                           ; $40F5: $00
    nop                                           ; $40F6: $00
    nop                                           ; $40F7: $00
    nop                                           ; $40F8: $00
    nop                                           ; $40F9: $00
    add b                                         ; $40FA: $80
    nop                                           ; $40FB: $00
    add b                                         ; $40FC: $80
    nop                                           ; $40FD: $00
    nop                                           ; $40FE: $00
    nop                                           ; $40FF: $00
    nop                                           ; $4100: $00
    nop                                           ; $4101: $00
    nop                                           ; $4102: $00
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
    jr nc, jr_01E_4118                            ; $4116: $30 $00

jr_01E_4118:
    cpl                                           ; $4118: $2F
    db $10                                        ; $4119: $10
    dec sp                                        ; $411A: $3B
    dec b                                         ; $411B: $05
    ld sp, hl                                     ; $411C: $F9
    ld [hl], $FF                                  ; $411D: $36 $FF
    ld [hl], b                                    ; $411F: $70
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
    ret nz                                        ; $4136: $C0

    nop                                           ; $4137: $00
    ld [hl], b                                    ; $4138: $70
    add b                                         ; $4139: $80
    db $FC                                        ; $413A: $FC

jr_01E_413B:
    jr nc, jr_01E_413B                            ; $413B: $30 $FE

    call c, $ECFE                                 ; $413D: $DC $FE $EC
    ccf                                           ; $4140: $3F
    jr jr_01E_417E                                ; $4141: $18 $3B

    nop                                           ; $4143: $00
    ld [bc], a                                    ; $4144: $02
    ld bc, $001F                                  ; $4145: $01 $1F $00
    ld a, a                                       ; $4148: $7F
    ld c, $9F                                     ; $4149: $0E $9F
    ld h, a                                       ; $414B: $67
    rst RST_28                                    ; $414C: $EF
    rla                                           ; $414D: $17
    rra                                           ; $414E: $1F
    inc b                                         ; $414F: $04
    ccf                                           ; $4150: $3F
    nop                                           ; $4151: $00
    ld a, $01                                     ; $4152: $3E $01
    ld c, [hl]                                    ; $4154: $4E
    ld sp, $354E                                  ; $4155: $31 $4E $35
    ccf                                           ; $4158: $3F
    ld b, $3E                                     ; $4159: $06 $3E
    jr jr_01E_41D9                                ; $415B: $18 $7C

    jr c, jr_01E_41DB                             ; $415D: $38 $7C

    nop                                           ; $415F: $00
    cp $08                                        ; $4160: $FE $08
    inc a                                         ; $4162: $3C
    ret nz                                        ; $4163: $C0

    ld l, b                                       ; $4164: $68
    sub b                                         ; $4165: $90
    ld e, h                                       ; $4166: $5C
    xor b                                         ; $4167: $A8
    ccf                                           ; $4168: $3F
    call nz, Call_000_34FF                        ; $4169: $C4 $FF $34
    push de                                       ; $416C: $D5
    ld a, d                                       ; $416D: $7A
    cp $E0                                        ; $416E: $FE $E0
    rst RST_38                                    ; $4170: $FF
    nop                                           ; $4171: $00
    ld l, h                                       ; $4172: $6C
    sub e                                         ; $4173: $93
    ld c, h                                       ; $4174: $4C
    or e                                          ; $4175: $B3
    cp a                                          ; $4176: $BF
    ld [$041E], sp                                ; $4177: $08 $1E $04
    rrca                                          ; $417A: $0F
    ld b, $0F                                     ; $417B: $06 $0F
    nop                                           ; $417D: $00

jr_01E_417E:
    nop                                           ; $417E: $00
    nop                                           ; $417F: $00
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
    nop                                           ; $4196: $00
    nop                                           ; $4197: $00
    inc c                                         ; $4198: $0C
    nop                                           ; $4199: $00
    dec bc                                        ; $419A: $0B
    inc b                                         ; $419B: $04
    ld a, $01                                     ; $419C: $3E $01
    ld a, $1D                                     ; $419E: $3E $1D
    nop                                           ; $41A0: $00
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
    rst RST_38                                    ; $41B8: $FF
    nop                                           ; $41B9: $00
    rst RST_18                                    ; $41BA: $DF
    ld h, $FF                                     ; $41BB: $26 $FF
    ld e, d                                       ; $41BD: $5A
    ld a, a                                       ; $41BE: $7F
    cp d                                          ; $41BF: $BA
    nop                                           ; $41C0: $00
    nop                                           ; $41C1: $00
    add b                                         ; $41C2: $80
    nop                                           ; $41C3: $00
    add b                                         ; $41C4: $80
    nop                                           ; $41C5: $00
    nop                                           ; $41C6: $00
    nop                                           ; $41C7: $00
    nop                                           ; $41C8: $00
    nop                                           ; $41C9: $00
    nop                                           ; $41CA: $00
    nop                                           ; $41CB: $00
    nop                                           ; $41CC: $00
    nop                                           ; $41CD: $00
    nop                                           ; $41CE: $00
    nop                                           ; $41CF: $00
    nop                                           ; $41D0: $00
    nop                                           ; $41D1: $00
    nop                                           ; $41D2: $00
    nop                                           ; $41D3: $00
    nop                                           ; $41D4: $00
    nop                                           ; $41D5: $00
    nop                                           ; $41D6: $00
    nop                                           ; $41D7: $00
    nop                                           ; $41D8: $00

jr_01E_41D9:
    nop                                           ; $41D9: $00
    nop                                           ; $41DA: $00

jr_01E_41DB:
    nop                                           ; $41DB: $00
    nop                                           ; $41DC: $00
    nop                                           ; $41DD: $00
    nop                                           ; $41DE: $00
    nop                                           ; $41DF: $00
    ld b, $01                                     ; $41E0: $06 $01
    ld e, $05                                     ; $41E2: $1E $05
    ccf                                           ; $41E4: $3F
    ld e, $3F                                     ; $41E5: $1E $3F
    ld c, $6F                                     ; $41E7: $0E $6F
    ld d, $9F                                     ; $41E9: $16 $9F
    ld h, b                                       ; $41EB: $60
    xor $11                                       ; $41EC: $EE $11
    ld e, $01                                     ; $41EE: $1E $01
    ld b, $01                                     ; $41F0: $06 $01
    add hl, bc                                    ; $41F2: $09
    ld b, $0B                                     ; $41F3: $06 $0B
    dec b                                         ; $41F5: $05
    rlca                                          ; $41F6: $07
    ld bc, $0003                                  ; $41F7: $01 $03 $00
    rlca                                          ; $41FA: $07
    inc bc                                        ; $41FB: $03
    rlca                                          ; $41FC: $07
    inc bc                                        ; $41FD: $03
    rlca                                          ; $41FE: $07
    nop                                           ; $41FF: $00
    cp b                                          ; $4200: $B8
    ld d, b                                       ; $4201: $50
    ld a, [hl]                                    ; $4202: $7E
    adc b                                         ; $4203: $88
    xor a                                         ; $4204: $AF
    ld [hl], h                                    ; $4205: $74
    xor [hl]                                      ; $4206: $AE
    push af                                       ; $4207: $F5
    rst RST_38                                    ; $4208: $FF
    ld h, b                                       ; $4209: $60
    db $FC                                        ; $420A: $FC
    nop                                           ; $420B: $00
    db $EC                                        ; $420C: $EC
    ld d, b                                       ; $420D: $50
    ld l, h                                       ; $420E: $6C

jr_01E_420F:
    sub b                                         ; $420F: $90
    ld c, h                                       ; $4210: $4C
    or b                                          ; $4211: $B0
    ld [hl], h                                    ; $4212: $74
    adc b                                         ; $4213: $88
    db $FC                                        ; $4214: $FC
    jr nc, jr_01E_420F                            ; $4215: $30 $F8

    sub b                                         ; $4217: $90
    db $FC                                        ; $4218: $FC
    adc b                                         ; $4219: $88
    cp h                                          ; $421A: $BC
    jr jr_01E_41D9                                ; $421B: $18 $BC

    nop                                           ; $421D: $00
    add b                                         ; $421E: $80
    nop                                           ; $421F: $00
    nop                                           ; $4220: $00
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
    ld h, c                                       ; $4232: $61
    nop                                           ; $4233: $00
    ld e, [hl]                                    ; $4234: $5E
    ld hl, $0A37                                  ; $4235: $21 $37 $0A
    ld [hl], e                                    ; $4238: $73
    dec l                                         ; $4239: $2D
    rst RST_38                                    ; $423A: $FF
    ld h, c                                       ; $423B: $61
    ei                                            ; $423C: $FB
    ld h, l                                       ; $423D: $65
    ld [hl], e                                    ; $423E: $73
    inc c                                         ; $423F: $0C
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
    add b                                         ; $4252: $80
    nop                                           ; $4253: $00
    ret nz                                        ; $4254: $C0

    nop                                           ; $4255: $00
    ldh a, [$FFC0]                                ; $4256: $F0 $C0
    db $FC                                        ; $4258: $FC
    ld [hl], b                                    ; $4259: $70
    db $FC                                        ; $425A: $FC
    cp b                                          ; $425B: $B8
    ld hl, sp-$70                                 ; $425C: $F8 $90
    ret nc                                        ; $425E: $D0

    nop                                           ; $425F: $00
    nop                                           ; $4260: $00
    nop                                           ; $4261: $00
    nop                                           ; $4262: $00
    nop                                           ; $4263: $00
    ldh [rP1], a                                  ; $4264: $E0 $00
    and b                                         ; $4266: $A0
    ld b, b                                       ; $4267: $40
    ld b, b                                       ; $4268: $40
    add b                                         ; $4269: $80
    add b                                         ; $426A: $80
    nop                                           ; $426B: $00
    nop                                           ; $426C: $00
    nop                                           ; $426D: $00
    nop                                           ; $426E: $00
    nop                                           ; $426F: $00

jr_01E_4270:
    nop                                           ; $4270: $00
    nop                                           ; $4271: $00

jr_01E_4272:
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
    ld e, $05                                     ; $4280: $1E $05
    ccf                                           ; $4282: $3F
    ld e, $7F                                     ; $4283: $1E $7F
    ld c, $9F                                     ; $4285: $0E $9F
    ld h, [hl]                                    ; $4287: $66
    rst RST_28                                    ; $4288: $EF
    db $10                                        ; $4289: $10
    rra                                           ; $428A: $1F
    nop                                           ; $428B: $00
    rrca                                          ; $428C: $0F
    nop                                           ; $428D: $00
    rlca                                          ; $428E: $07
    nop                                           ; $428F: $00
    inc bc                                        ; $4290: $03
    nop                                           ; $4291: $00
    dec b                                         ; $4292: $05
    ld [bc], a                                    ; $4293: $02
    dec b                                         ; $4294: $05
    ld [bc], a                                    ; $4295: $02
    inc bc                                        ; $4296: $03
    nop                                           ; $4297: $00
    ld bc, $0100                                  ; $4298: $01 $00 $01
    nop                                           ; $429B: $00
    ld bc, $0100                                  ; $429C: $01 $00 $01
    nop                                           ; $429F: $00
    ld a, [hl]                                    ; $42A0: $7E
    adc b                                         ; $42A1: $88
    xor a                                         ; $42A2: $AF
    ld [hl], h                                    ; $42A3: $74
    xor a                                         ; $42A4: $AF
    db $F4                                        ; $42A5: $F4
    cp $61                                        ; $42A6: $FE $61
    ld sp, hl                                     ; $42A8: $F9
    nop                                           ; $42A9: $00
    ld l, b                                       ; $42AA: $68
    sub b                                         ; $42AB: $90
    ld [hl], b                                    ; $42AC: $70
    and b                                         ; $42AD: $A0
    jr nc, jr_01E_4270                            ; $42AE: $30 $C0

    jr nc, jr_01E_4272                            ; $42B0: $30 $C0

    ldh a, [rP1]                                  ; $42B2: $F0 $00
    ldh a, [$FFC0]                                ; $42B4: $F0 $C0
    ldh [$FFC0], a                                ; $42B6: $E0 $C0
    ldh [rP1], a                                  ; $42B8: $E0 $00
    ldh [$FFC0], a                                ; $42BA: $E0 $C0
    ldh a, [$FFE0]                                ; $42BC: $F0 $E0
    ldh a, [rP1]                                  ; $42BE: $F0 $00
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
    ld h, c                                       ; $42D0: $61
    nop                                           ; $42D1: $00
    ld e, [hl]                                    ; $42D2: $5E
    ld hl, $0A37                                  ; $42D3: $21 $37 $0A
    ld [hl], e                                    ; $42D6: $73
    dec l                                         ; $42D7: $2D
    rst RST_38                                    ; $42D8: $FF
    ld h, c                                       ; $42D9: $61
    ei                                            ; $42DA: $FB
    ld h, l                                       ; $42DB: $65
    ld [hl], e                                    ; $42DC: $73
    inc c                                         ; $42DD: $0C
    ld a, [de]                                    ; $42DE: $1A
    dec b                                         ; $42DF: $05
    nop                                           ; $42E0: $00
    nop                                           ; $42E1: $00
    nop                                           ; $42E2: $00
    nop                                           ; $42E3: $00
    nop                                           ; $42E4: $00
    nop                                           ; $42E5: $00
    add b                                         ; $42E6: $80
    nop                                           ; $42E7: $00
    ret nz                                        ; $42E8: $C0

    nop                                           ; $42E9: $00
    ldh a, [$FFC0]                                ; $42EA: $F0 $C0
    db $FC                                        ; $42EC: $FC
    ld [hl], b                                    ; $42ED: $70
    db $FC                                        ; $42EE: $FC
    cp b                                          ; $42EF: $B8
    ld hl, sp-$70                                 ; $42F0: $F8 $90
    ret nc                                        ; $42F2: $D0

    nop                                           ; $42F3: $00
    ldh [rLCDC], a                                ; $42F4: $E0 $40
    ld hl, sp+$20                                 ; $42F6: $F8 $20
    cp a                                          ; $42F8: $BF
    ret nc                                        ; $42F9: $D0

    cp l                                          ; $42FA: $BD
    jp nc, $84FA                                  ; $42FB: $D2 $FA $84

    and $00                                       ; $42FE: $E6 $00
    inc bc                                        ; $4300: $03
    nop                                           ; $4301: $00
    rlca                                          ; $4302: $07
    ld [bc], a                                    ; $4303: $02
    rrca                                          ; $4304: $0F
    ld b, $0F                                     ; $4305: $06 $0F
    ld b, $07                                     ; $4307: $06 $07
    nop                                           ; $4309: $00
    ld bc, $0700                                  ; $430A: $01 $00 $07
    ld bc, $073F                                  ; $430D: $01 $3F $07
    rst RST_08                                    ; $4310: $CF
    ld [hl-], a                                   ; $4311: $32
    or a                                          ; $4312: $B7
    ld c, b                                       ; $4313: $48
    ld d, a                                       ; $4314: $57
    add hl, bc                                    ; $4315: $09
    rra                                           ; $4316: $1F
    ld bc, $0003                                  ; $4317: $01 $03 $00
    rlca                                          ; $431A: $07
    inc bc                                        ; $431B: $03

jr_01E_431C:
    rrca                                          ; $431C: $0F
    rlca                                          ; $431D: $07
    rrca                                          ; $431E: $0F
    nop                                           ; $431F: $00
    ld a, a                                       ; $4320: $7F
    xor h                                         ; $4321: $AC
    ccf                                           ; $4322: $3F
    rst RST_10                                    ; $4323: $D7
    rst RST_38                                    ; $4324: $FF
    dec de                                        ; $4325: $1B
    cp a                                          ; $4326: $BF
    ld e, c                                       ; $4327: $59
    add hl, sp                                    ; $4328: $39
    ret nz                                        ; $4329: $C0

    xor h                                         ; $432A: $AC
    ld d, b                                       ; $432B: $50
    sbc a                                         ; $432C: $9F
    ld h, h                                       ; $432D: $64
    rst RST_28                                    ; $432E: $EF
    sbc e                                         ; $432F: $9B
    db $EB                                        ; $4330: $EB
    dec a                                         ; $4331: $3D
    cp a                                          ; $4332: $BF
    ld e, d                                       ; $4333: $5A
    rst RST_18                                    ; $4334: $DF
    and b                                         ; $4335: $A0
    jp c, $F9A4                                   ; $4336: $DA $A4 $F9

    ld b, $BF                                     ; $4339: $06 $BF
    jr @-$3F                                      ; $433B: $18 $BF

    nop                                           ; $433D: $00
    add b                                         ; $433E: $80
    nop                                           ; $433F: $00
    add b                                         ; $4340: $80
    nop                                           ; $4341: $00
    ldh [$FF80], a                                ; $4342: $E0 $80
    ld hl, sp-$20                                 ; $4344: $F8 $E0
    ld hl, sp+$70                                 ; $4346: $F8 $70
    ldh a, [rNR41]                                ; $4348: $F0 $20
    jr nz, jr_01E_434C                            ; $434A: $20 $00

jr_01E_434C:
    add b                                         ; $434C: $80
    nop                                           ; $434D: $00
    ldh [$FF80], a                                ; $434E: $E0 $80
    ldh a, [$FF60]                                ; $4350: $F0 $60
    ld [hl], b                                    ; $4352: $70
    and b                                         ; $4353: $A0
    add sp, $50                                   ; $4354: $E8 $50
    db $E4                                        ; $4356: $E4
    jr jr_01E_43B5                                ; $4357: $18 $5C

    add b                                         ; $4359: $80
    jr nz, jr_01E_431C                            ; $435A: $20 $C0

    ldh [rP1], a                                  ; $435C: $E0 $00
    ldh [rP1], a                                  ; $435E: $E0 $00
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
    nop                                           ; $437A: $00
    nop                                           ; $437B: $00
    jp $BD00                                      ; $437C: $C3 $00 $BD


    ld b, d                                       ; $437F: $42
    jr jr_01E_4382                                ; $4380: $18 $00

jr_01E_4382:
    rla                                           ; $4382: $17
    ld [$02FD], sp                                ; $4383: $08 $FD $02
    sbc h                                         ; $4386: $9C
    ld l, e                                       ; $4387: $6B
    ld l, a                                       ; $4388: $6F
    db $10                                        ; $4389: $10
    ld e, $01                                     ; $438A: $1E $01
    rla                                           ; $438C: $17
    ld a, [bc]                                    ; $438D: $0A
    rra                                           ; $438E: $1F
    dec bc                                        ; $438F: $0B

jr_01E_4390:
    rra                                           ; $4390: $1F
    rlca                                          ; $4391: $07
    rrca                                          ; $4392: $0F
    rlca                                          ; $4393: $07
    rrca                                          ; $4394: $0F
    ld bc, $000F                                  ; $4395: $01 $0F $00
    ld c, $00                                     ; $4398: $0E $00
    dec c                                         ; $439A: $0D
    nop                                           ; $439B: $00
    dec c                                         ; $439C: $0D
    nop                                           ; $439D: $00
    inc de                                        ; $439E: $13
    inc c                                         ; $439F: $0C
    ld h, b                                       ; $43A0: $60
    nop                                           ; $43A1: $00
    or b                                          ; $43A2: $B0
    ld b, b                                       ; $43A3: $40
    db $FC                                        ; $43A4: $FC
    or b                                          ; $43A5: $B0
    rst RST_38                                    ; $43A6: $FF
    ld e, h                                       ; $43A7: $5C
    rst RST_38                                    ; $43A8: $FF
    ld l, [hl]                                    ; $43A9: $6E
    cp $64                                        ; $43AA: $FE $64
    db $F4                                        ; $43AC: $F4
    nop                                           ; $43AD: $00
    or b                                          ; $43AE: $B0
    ld b, b                                       ; $43AF: $40
    ld hl, sp+$00                                 ; $43B0: $F8 $00
    xor h                                         ; $43B2: $AC
    ld [hl], b                                    ; $43B3: $70
    xor h                                         ; $43B4: $AC

jr_01E_43B5:
    ld [hl], b                                    ; $43B5: $70
    db $FC                                        ; $43B6: $FC
    ld h, b                                       ; $43B7: $60
    db $F4                                        ; $43B8: $F4
    ld [$A47A], sp                                ; $43B9: $08 $7A $A4
    ld l, $D0                                     ; $43BC: $2E $D0
    jr z, jr_01E_4390                             ; $43BE: $28 $D0

    sbc c                                         ; $43C0: $99
    ld h, [hl]                                    ; $43C1: $66
    ld l, a                                       ; $43C2: $6F
    nop                                           ; $43C3: $00
    rrca                                          ; $43C4: $0F
    ld b, $0F                                     ; $43C5: $06 $0F
    ld b, $07                                     ; $43C7: $06 $07
    ld [bc], a                                    ; $43C9: $02
    rlca                                          ; $43CA: $07
    nop                                           ; $43CB: $00
    rlca                                          ; $43CC: $07
    ld [bc], a                                    ; $43CD: $02
    rlca                                          ; $43CE: $07
    ld [bc], a                                    ; $43CF: $02
    rlca                                          ; $43D0: $07
    ld [bc], a                                    ; $43D1: $02
    inc bc                                        ; $43D2: $03
    nop                                           ; $43D3: $00
    nop                                           ; $43D4: $00
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
    ld b, b                                       ; $43E0: $40
    add b                                         ; $43E1: $80
    ret nz                                        ; $43E2: $C0

    nop                                           ; $43E3: $00
    ret nz                                        ; $43E4: $C0

    add b                                         ; $43E5: $80
    add b                                         ; $43E6: $80
    nop                                           ; $43E7: $00
    nop                                           ; $43E8: $00
    nop                                           ; $43E9: $00
    nop                                           ; $43EA: $00
    nop                                           ; $43EB: $00
    nop                                           ; $43EC: $00
    nop                                           ; $43ED: $00
    nop                                           ; $43EE: $00
    nop                                           ; $43EF: $00
    nop                                           ; $43F0: $00
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
    inc c                                         ; $4400: $0C
    nop                                           ; $4401: $00
    dec bc                                        ; $4402: $0B
    inc b                                         ; $4403: $04
    ld b, $01                                     ; $4404: $06 $01
    ld c, $05                                     ; $4406: $0E $05
    rra                                           ; $4408: $1F
    inc c                                         ; $4409: $0C
    rra                                           ; $440A: $1F
    inc c                                         ; $440B: $0C
    ld e, $01                                     ; $440C: $1E $01
    ccf                                           ; $440E: $3F
    inc e                                         ; $440F: $1C
    ld e, a                                       ; $4410: $5F
    ld h, $4F                                     ; $4411: $26 $4F
    ld [hl], $5F                                  ; $4413: $36 $5F
    dec h                                         ; $4415: $25
    cpl                                           ; $4416: $2F
    db $10                                        ; $4417: $10
    ld a, b                                       ; $4418: $78
    rlca                                          ; $4419: $07
    sbc [hl]                                      ; $441A: $9E
    ld l, c                                       ; $441B: $69
    sbc a                                         ; $441C: $9F

jr_01E_441D:
    ld l, [hl]                                    ; $441D: $6E
    ld l, a                                       ; $441E: $6F
    ld bc, $0030                                  ; $441F: $01 $30 $00
    ret nc                                        ; $4422: $D0

    jr nz, jr_01E_441D                            ; $4423: $20 $F8

    ld d, b                                       ; $4425: $50
    ld a, h                                       ; $4426: $7C
    xor b                                         ; $4427: $A8
    cp $34                                        ; $4428: $FE $34
    ld a, a                                       ; $442A: $7F
    or d                                          ; $442B: $B2
    ld a, a                                       ; $442C: $7F
    adc h                                         ; $442D: $8C
    ld e, a                                       ; $442E: $5F
    xor [hl]                                      ; $442F: $AE
    ccf                                           ; $4430: $3F
    sbc $FE                                       ; $4431: $DE $FE
    add hl, hl                                    ; $4433: $29
    ld e, h                                       ; $4434: $5C
    db $E3                                        ; $4435: $E3
    di                                            ; $4436: $F3
    db $EC                                        ; $4437: $EC
    ldh [c], a                                    ; $4438: $E2
    inc e                                         ; $4439: $1C
    cp $40                                        ; $443A: $FE $40
    cp $1C                                        ; $443C: $FE $1C
    call c, $F780                                 ; $443E: $DC $80 $F7
    ld h, d                                       ; $4441: $62
    ld [hl], a                                    ; $4442: $77
    ld [hl+], a                                   ; $4443: $22
    scf                                           ; $4444: $37
    ld [bc], a                                    ; $4445: $02
    ld b, $00                                     ; $4446: $06 $00
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
    nop                                           ; $445A: $00
    nop                                           ; $445B: $00
    nop                                           ; $445C: $00
    nop                                           ; $445D: $00
    nop                                           ; $445E: $00
    nop                                           ; $445F: $00
    add b                                         ; $4460: $80
    nop                                           ; $4461: $00
    ret nz                                        ; $4462: $C0

    nop                                           ; $4463: $00
    ret nz                                        ; $4464: $C0

    nop                                           ; $4465: $00
    ldh [rP1], a                                  ; $4466: $E0 $00
    sub b                                         ; $4468: $90
    ld h, b                                       ; $4469: $60
    sub b                                         ; $446A: $90
    ld h, b                                       ; $446B: $60
    ld h, b                                       ; $446C: $60
    nop                                           ; $446D: $00
    nop                                           ; $446E: $00
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
    add b                                         ; $4480: $80
    nop                                           ; $4481: $00
    ld [hl], b                                    ; $4482: $70
    add b                                         ; $4483: $80
    ld a, [hl]                                    ; $4484: $7E
    or b                                          ; $4485: $B0
    cp $74                                        ; $4486: $FE $74
    rst RST_38                                    ; $4488: $FF
    ld b, $7F                                     ; $4489: $06 $7F
    sub d                                         ; $448B: $92
    ccf                                           ; $448C: $3F
    ret c                                         ; $448D: $D8

    cp h                                          ; $448E: $BC
    ld c, b                                       ; $448F: $48
    ld c, h                                       ; $4490: $4C
    jr nc, jr_01E_4503                            ; $4491: $30 $70

    nop                                           ; $4493: $00
    ldh a, [$FF60]                                ; $4494: $F0 $60
    ldh a, [$FFE0]                                ; $4496: $F0 $E0
    ldh a, [rP1]                                  ; $4498: $F0 $00
    ld b, b                                       ; $449A: $40
    add b                                         ; $449B: $80
    ret nz                                        ; $449C: $C0

    nop                                           ; $449D: $00
    nop                                           ; $449E: $00
    nop                                           ; $449F: $00
    db $FC                                        ; $44A0: $FC
    add e                                         ; $44A1: $83

jr_01E_44A2:
    rst RST_38                                    ; $44A2: $FF
    or b                                          ; $44A3: $B0
    rst RST_38                                    ; $44A4: $FF
    ld l, [hl]                                    ; $44A5: $6E
    rst RST_38                                    ; $44A6: $FF
    ld e, [hl]                                    ; $44A7: $5E
    rst RST_38                                    ; $44A8: $FF
    ld e, [hl]                                    ; $44A9: $5E
    cp $48                                        ; $44AA: $FE $48
    ld e, c                                       ; $44AC: $59
    ld h, $F3                                     ; $44AD: $26 $F3
    inc c                                         ; $44AF: $0C
    rst RST_38                                    ; $44B0: $FF
    ld b, b                                       ; $44B1: $40
    ld sp, hl                                     ; $44B2: $F9
    halt                                          ; $44B3: $76
    db $FD                                        ; $44B4: $FD
    ld l, d                                       ; $44B5: $6A
    ld l, a                                       ; $44B6: $6F
    db $10                                        ; $44B7: $10
    ccf                                           ; $44B8: $3F
    ld c, $7F                                     ; $44B9: $0E $7F
    ld a, $FE                                     ; $44BB: $3E $FE
    ld a, h                                       ; $44BD: $7C
    db $FC                                        ; $44BE: $FC
    nop                                           ; $44BF: $00
    nop                                           ; $44C0: $00
    nop                                           ; $44C1: $00
    nop                                           ; $44C2: $00
    nop                                           ; $44C3: $00
    nop                                           ; $44C4: $00
    nop                                           ; $44C5: $00
    nop                                           ; $44C6: $00
    nop                                           ; $44C7: $00
    nop                                           ; $44C8: $00
    nop                                           ; $44C9: $00
    nop                                           ; $44CA: $00
    nop                                           ; $44CB: $00
    nop                                           ; $44CC: $00
    nop                                           ; $44CD: $00
    nop                                           ; $44CE: $00
    nop                                           ; $44CF: $00
    nop                                           ; $44D0: $00
    nop                                           ; $44D1: $00
    nop                                           ; $44D2: $00
    nop                                           ; $44D3: $00
    nop                                           ; $44D4: $00
    nop                                           ; $44D5: $00
    nop                                           ; $44D6: $00
    nop                                           ; $44D7: $00
    nop                                           ; $44D8: $00
    nop                                           ; $44D9: $00
    ld b, $00                                     ; $44DA: $06 $00
    add hl, de                                    ; $44DC: $19
    ld b, $B8                                     ; $44DD: $06 $B8
    rla                                           ; $44DF: $17
    nop                                           ; $44E0: $00

jr_01E_44E1:
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
    jr jr_01E_44EE                                ; $44EC: $18 $00

jr_01E_44EE:
    rla                                           ; $44EE: $17
    ld [$0D13], sp                                ; $44EF: $08 $13 $0D
    rrca                                          ; $44F2: $0F
    inc bc                                        ; $44F3: $03
    rlca                                          ; $44F4: $07
    inc bc                                        ; $44F5: $03
    rlca                                          ; $44F6: $07
    ld bc, $0001                                  ; $44F7: $01 $01 $00
    nop                                           ; $44FA: $00
    nop                                           ; $44FB: $00
    nop                                           ; $44FC: $00
    nop                                           ; $44FD: $00
    nop                                           ; $44FE: $00
    nop                                           ; $44FF: $00
    rlca                                          ; $4500: $07
    nop                                           ; $4501: $00
    rra                                           ; $4502: $1F

jr_01E_4503:
    ld b, $1F                                     ; $4503: $06 $1F
    inc c                                         ; $4505: $0C
    rra                                           ; $4506: $1F
    ld bc, $1B3F                                  ; $4507: $01 $3F $1B
    ccf                                           ; $450A: $3F
    jr jr_01E_454B                                ; $450B: $18 $3E

    add hl, bc                                    ; $450D: $09
    ld c, h                                       ; $450E: $4C
    inc sp                                        ; $450F: $33
    ld c, a                                       ; $4510: $4F
    jr nc, jr_01E_44A2                            ; $4511: $30 $8F

    ld [hl], a                                    ; $4513: $77
    sbc a                                         ; $4514: $9F
    ld h, a                                       ; $4515: $67
    ld a, a                                       ; $4516: $7F
    rlca                                          ; $4517: $07
    ld a, a                                       ; $4518: $7F
    dec hl                                        ; $4519: $2B
    ccf                                           ; $451A: $3F
    inc c                                         ; $451B: $0C
    rra                                           ; $451C: $1F
    rlca                                          ; $451D: $07
    ccf                                           ; $451E: $3F
    jr jr_01E_44E1                                ; $451F: $18 $C0

    nop                                           ; $4521: $00
    ret nz                                        ; $4522: $C0

    add b                                         ; $4523: $80
    and b                                         ; $4524: $A0
    ld b, b                                       ; $4525: $40
    xor h                                         ; $4526: $AC
    ld b, b                                       ; $4527: $40
    ld a, h                                       ; $4528: $7C
    adc b                                         ; $4529: $88
    cp a                                          ; $452A: $BF
    inc e                                         ; $452B: $1C
    ld e, $0D                                     ; $452C: $1E $0D
    rst RST_38                                    ; $452E: $FF
    nop                                           ; $452F: $00
    reti                                          ; $4530: $D9


    ld h, $CB                                     ; $4531: $26 $CB
    or h                                          ; $4533: $B4
    rst RST_28                                    ; $4534: $EF
    ld [de], a                                    ; $4535: $12
    cp [hl]                                       ; $4536: $BE
    ld c, l                                       ; $4537: $4D
    rst RST_38                                    ; $4538: $FF
    sbc h                                         ; $4539: $9C
    sbc a                                         ; $453A: $9F
    ld a, [bc]                                    ; $453B: $0A
    rra                                           ; $453C: $1F

Jump_01E_453D:
    ld b, $1E                                     ; $453D: $06 $1E
    inc c                                         ; $453F: $0C
    ccf                                           ; $4540: $3F
    ld e, $3E                                     ; $4541: $1E $3E
    inc c                                         ; $4543: $0C
    ld l, $10                                     ; $4544: $2E $10
    ld c, b                                       ; $4546: $48
    jr nc, jr_01E_45B9                            ; $4547: $30 $70

    nop                                           ; $4549: $00
    nop                                           ; $454A: $00

jr_01E_454B:
    nop                                           ; $454B: $00
    nop                                           ; $454C: $00
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
    db $FC                                        ; $4560: $FC
    ldh [$FFF4], a                                ; $4561: $E0 $F4
    ld l, b                                       ; $4563: $68
    ld hl, sp+$00                                 ; $4564: $F8 $00
    ret z                                         ; $4566: $C8

    jr nc, jr_01E_45C1                            ; $4567: $30 $58

    and b                                         ; $4569: $A0
    ld a, b                                       ; $456A: $78
    sub b                                         ; $456B: $90
    db $F4                                        ; $456C: $F4
    ld l, b                                       ; $456D: $68
    db $FC                                        ; $456E: $FC
    ldh [$FFF8], a                                ; $456F: $E0 $F8
    ld d, b                                       ; $4571: $50
    ld hl, sp+$30                                 ; $4572: $F8 $30
    ldh a, [$FF60]                                ; $4574: $F0 $60
    ldh a, [$FF60]                                ; $4576: $F0 $60
    ld h, b                                       ; $4578: $60
    nop                                           ; $4579: $00
    nop                                           ; $457A: $00
    nop                                           ; $457B: $00
    nop                                           ; $457C: $00
    nop                                           ; $457D: $00
    nop                                           ; $457E: $00
    nop                                           ; $457F: $00
    ld e, h                                       ; $4580: $5C
    inc hl                                        ; $4581: $23
    halt                                          ; $4582: $76
    ld bc, $2659                                  ; $4583: $01 $59 $26
    ld c, e                                       ; $4586: $4B
    inc [hl]                                      ; $4587: $34
    ld c, h                                       ; $4588: $4C
    inc sp                                        ; $4589: $33
    ld a, [hl]                                    ; $458A: $7E
    dec c                                         ; $458B: $0D
    ccf                                           ; $458C: $3F
    nop                                           ; $458D: $00
    dec b                                         ; $458E: $05
    ld [bc], a                                    ; $458F: $02
    inc b                                         ; $4590: $04
    inc bc                                        ; $4591: $03
    inc b                                         ; $4592: $04
    inc bc                                        ; $4593: $03
    dec c                                         ; $4594: $0D

jr_01E_4595:
    ld [bc], a                                    ; $4595: $02
    rra                                           ; $4596: $1F
    inc c                                         ; $4597: $0C
    ld a, $0C                                     ; $4598: $3E $0C
    ld a, h                                       ; $459A: $7C
    jr nc, jr_01E_4595                            ; $459B: $30 $F8

    ld [hl], b                                    ; $459D: $70
    ld hl, sp+$00                                 ; $459E: $F8 $00
    ld a, [hl]                                    ; $45A0: $7E
    and b                                         ; $45A1: $A0
    ld [hl], b                                    ; $45A2: $70
    add b                                         ; $45A3: $80
    ld hl, sp+$30                                 ; $45A4: $F8 $30
    ld hl, sp-$10                                 ; $45A6: $F8 $F0
    db $FC                                        ; $45A8: $FC
    ld [hl], b                                    ; $45A9: $70
    cp $60                                        ; $45AA: $FE $60
    cp $00                                        ; $45AC: $FE $00
    rst RST_18                                    ; $45AE: $DF
    and b                                         ; $45AF: $A0
    call nc, $9423                                ; $45B0: $D4 $23 $94
    ld h, e                                       ; $45B3: $63
    ld a, e                                       ; $45B4: $7B
    sub b                                         ; $45B5: $90
    ld a, b                                       ; $45B6: $78
    or b                                          ; $45B7: $B0
    db $FC                                        ; $45B8: $FC

jr_01E_45B9:
    ld [$0C1E], sp                                ; $45B9: $08 $1E $0C
    ld e, $00                                     ; $45BC: $1E $00
    nop                                           ; $45BE: $00
    nop                                           ; $45BF: $00
    nop                                           ; $45C0: $00

jr_01E_45C1:
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
    nop                                           ; $45D0: $00
    nop                                           ; $45D1: $00
    nop                                           ; $45D2: $00
    nop                                           ; $45D3: $00
    nop                                           ; $45D4: $00
    nop                                           ; $45D5: $00
    jr nc, jr_01E_45D8                            ; $45D6: $30 $00

jr_01E_45D8:
    cpl                                           ; $45D8: $2F
    db $10                                        ; $45D9: $10
    ld a, e                                       ; $45DA: $7B
    dec b                                         ; $45DB: $05
    reti                                          ; $45DC: $D9


    ld h, $9F                                     ; $45DD: $26 $9F
    ld h, b                                       ; $45DF: $60
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
    ret nz                                        ; $45F6: $C0

    nop                                           ; $45F7: $00
    ld [hl], b                                    ; $45F8: $70
    add b                                         ; $45F9: $80
    db $FC                                        ; $45FA: $FC

jr_01E_45FB:
    jr nc, jr_01E_45FB                            ; $45FB: $30 $FE

    call c, $ECFE                                 ; $45FD: $DC $FE $EC
    add b                                         ; $4600: $80
    nop                                           ; $4601: $00
    add b                                         ; $4602: $80
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

jr_01E_460E:
    nop                                           ; $460E: $00
    nop                                           ; $460F: $00
    nop                                           ; $4610: $00
    nop                                           ; $4611: $00
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
    dec bc                                        ; $4620: $0B
    inc b                                         ; $4621: $04
    ld e, $01                                     ; $4622: $1E $01
    ld [hl], $09                                  ; $4624: $36 $09
    daa                                           ; $4626: $27
    jr jr_01E_4657                                ; $4627: $18 $2E

    ld de, $003B                                  ; $4629: $11 $3B $00
    inc l                                         ; $462C: $2C
    inc de                                        ; $462D: $13
    dec h                                         ; $462E: $25
    ld a, [de]                                    ; $462F: $1A
    ld l, $11                                     ; $4630: $2E $11
    dec a                                         ; $4632: $3D
    ld [bc], a                                    ; $4633: $02
    ld e, $0D                                     ; $4634: $1E $0D

jr_01E_4636:
    ld a, $1D                                     ; $4636: $3E $1D

jr_01E_4638:
    ccf                                           ; $4638: $3F
    ld [$3079], sp                                ; $4639: $08 $79 $30
    ld sp, hl                                     ; $463C: $F9
    ld [hl], b                                    ; $463D: $70
    ld hl, sp+$00                                 ; $463E: $F8 $00
    jr nc, jr_01E_4642                            ; $4640: $30 $00

jr_01E_4642:
    call c, $FF20                                 ; $4642: $DC $20 $FF
    ld c, h                                       ; $4645: $4C
    ld a, a                                       ; $4646: $7F
    or a                                          ; $4647: $B7
    rst RST_38                                    ; $4648: $FF
    dec sp                                        ; $4649: $3B
    ccf                                           ; $464A: $3F
    ret nc                                        ; $464B: $D0

    jr c, jr_01E_460E                             ; $464C: $38 $C0

    db $FC                                        ; $464E: $FC
    jr @-$02                                      ; $464F: $18 $FC

    ld a, b                                       ; $4651: $78
    ld a, [hl]                                    ; $4652: $7E
    cp b                                          ; $4653: $B8
    ld a, a                                       ; $4654: $7F

jr_01E_4655:
    or b                                          ; $4655: $B0
    rst RST_38                                    ; $4656: $FF

jr_01E_4657:
    nop                                           ; $4657: $00
    pop de                                        ; $4658: $D1
    jr nz, @-$36                                  ; $4659: $20 $C8

    jr nc, jr_01E_4655                            ; $465B: $30 $F8

    ret nz                                        ; $465D: $C0

    ld hl, sp+$00                                 ; $465E: $F8 $00
    nop                                           ; $4660: $00
    nop                                           ; $4661: $00
    nop                                           ; $4662: $00
    nop                                           ; $4663: $00
    add b                                         ; $4664: $80
    nop                                           ; $4665: $00
    add b                                         ; $4666: $80
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
    ret nz                                        ; $4672: $C0

    nop                                           ; $4673: $00
    jr nz, jr_01E_4636                            ; $4674: $20 $C0

    jr nz, jr_01E_4638                            ; $4676: $20 $C0

    ret nz                                        ; $4678: $C0

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
    inc c                                         ; $469E: $0C
    nop                                           ; $469F: $00
    jr nc, jr_01E_46A2                            ; $46A0: $30 $00

jr_01E_46A2:
    cpl                                           ; $46A2: $2F
    db $10                                        ; $46A3: $10
    ld a, e                                       ; $46A4: $7B
    dec b                                         ; $46A5: $05
    reti                                          ; $46A6: $D9


    ld h, $9F                                     ; $46A7: $26 $9F
    ld h, b                                       ; $46A9: $60
    cp b                                          ; $46AA: $B8
    ld b, a                                       ; $46AB: $47
    db $EC                                        ; $46AC: $EC
    inc bc                                        ; $46AD: $03
    or e                                          ; $46AE: $B3
    ld c, h                                       ; $46AF: $4C
    sub a                                         ; $46B0: $97
    ld l, c                                       ; $46B1: $69

jr_01E_46B2:
    sbc c                                         ; $46B2: $99
    ld h, [hl]                                    ; $46B3: $66
    db $FD                                        ; $46B4: $FD
    ld a, [de]                                    ; $46B5: $1A
    ld a, a                                       ; $46B6: $7F
    nop                                           ; $46B7: $00
    ld b, a                                       ; $46B8: $47
    jr c, jr_01E_46B2                             ; $46B9: $38 $F7

    ld c, d                                       ; $46BB: $4A
    rst RST_38                                    ; $46BC: $FF
    ld [hl], b                                    ; $46BD: $70
    ld a, [hl]                                    ; $46BE: $7E
    inc c                                         ; $46BF: $0C
    ret nz                                        ; $46C0: $C0

    nop                                           ; $46C1: $00
    ld [hl], b                                    ; $46C2: $70
    add b                                         ; $46C3: $80
    db $FC                                        ; $46C4: $FC

jr_01E_46C5:
    jr nc, jr_01E_46C5                            ; $46C5: $30 $FE

    call c, $ECFE                                 ; $46C7: $DC $FE $EC
    db $FC                                        ; $46CA: $FC
    ld b, b                                       ; $46CB: $40
    ldh [rP1], a                                  ; $46CC: $E0 $00
    ldh a, [$FF60]                                ; $46CE: $F0 $60
    ldh a, [$FFE0]                                ; $46D0: $F0 $E0
    ld hl, sp-$20                                 ; $46D2: $F8 $E0
    db $FC                                        ; $46D4: $FC
    add b                                         ; $46D5: $80
    sbc h                                         ; $46D6: $9C
    ld h, b                                       ; $46D7: $60
    ld e, $E0                                     ; $46D8: $1E $E0
    ld sp, hl                                     ; $46DA: $F9
    ld b, $F9                                     ; $46DB: $06 $F9
    and $E6                                       ; $46DD: $E6 $E6
    nop                                           ; $46DF: $00
    rst RST_30                                    ; $46E0: $F7
    ld h, d                                       ; $46E1: $62
    ld [hl], a                                    ; $46E2: $77
    ld [hl+], a                                   ; $46E3: $22
    scf                                           ; $46E4: $37
    ld [bc], a                                    ; $46E5: $02
    ld b, $00                                     ; $46E6: $06 $00
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
    nop                                           ; $46FE: $00
    nop                                           ; $46FF: $00
    nop                                           ; $4700: $00
    nop                                           ; $4701: $00
    inc bc                                        ; $4702: $03
    nop                                           ; $4703: $00
    rra                                           ; $4704: $1F
    ld bc, $1E21                                  ; $4705: $01 $21 $1E
    scf                                           ; $4708: $37
    ld [$000F], sp                                ; $4709: $08 $0F $00
    ld b, $01                                     ; $470C: $06 $01
    add hl, bc                                    ; $470E: $09
    ld b, $09                                     ; $470F: $06 $09
    ld b, $1F                                     ; $4711: $06 $1F

jr_01E_4713:
    ld [$0C1E], sp                                ; $4713: $08 $1E $0C
    inc a                                         ; $4716: $3C
    nop                                           ; $4717: $00
    ld a, b                                       ; $4718: $78
    jr nc, jr_01E_4713                            ; $4719: $30 $F8

    ld h, b                                       ; $471B: $60
    ldh [rP1], a                                  ; $471C: $E0 $00
    nop                                           ; $471E: $00
    nop                                           ; $471F: $00
    ld e, a                                       ; $4720: $5F
    jr nz, @+$01                                  ; $4721: $20 $FF

    ld a, [bc]                                    ; $4723: $0A
    rst RST_38                                    ; $4724: $FF
    ldh a, [c]                                    ; $4725: $F2
    rst RST_38                                    ; $4726: $FF
    ldh a, [rIE]                                  ; $4727: $F0 $FF
    ld h, b                                       ; $4729: $60
    rst RST_38                                    ; $472A: $FF
    nop                                           ; $472B: $00
    db $FC                                        ; $472C: $FC
    ld b, b                                       ; $472D: $40
    ld a, b                                       ; $472E: $78
    add b                                         ; $472F: $80
    ld c, b                                       ; $4730: $48
    or b                                          ; $4731: $B0
    ld c, b                                       ; $4732: $48
    or b                                          ; $4733: $B0
    ldh a, [rP1]                                  ; $4734: $F0 $00
    ldh a, [$FF60]                                ; $4736: $F0 $60
    ld hl, sp+$60                                 ; $4738: $F8 $60
    ld a, h                                       ; $473A: $7C
    jr jr_01E_477B                                ; $473B: $18 $3E

    inc e                                         ; $473D: $1C
    ld a, $00                                     ; $473E: $3E $00
    nop                                           ; $4740: $00
    nop                                           ; $4741: $00
    nop                                           ; $4742: $00
    nop                                           ; $4743: $00
    nop                                           ; $4744: $00
    nop                                           ; $4745: $00
    nop                                           ; $4746: $00
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
    inc sp                                        ; $4754: $33
    nop                                           ; $4755: $00
    ld l, l                                       ; $4756: $6D
    ld [de], a                                    ; $4757: $12
    rst RST_38                                    ; $4758: $FF
    ld c, c                                       ; $4759: $49
    rst RST_38                                    ; $475A: $FF
    scf                                           ; $475B: $37
    ld a, a                                       ; $475C: $7F
    scf                                           ; $475D: $37
    ld a, a                                       ; $475E: $7F
    rlca                                          ; $475F: $07
    nop                                           ; $4760: $00
    nop                                           ; $4761: $00
    add b                                         ; $4762: $80
    nop                                           ; $4763: $00
    ret nz                                        ; $4764: $C0

    add b                                         ; $4765: $80
    ldh [$FFC0], a                                ; $4766: $E0 $C0
    ldh a, [$FFE0]                                ; $4768: $F0 $E0
    ldh a, [$FFE0]                                ; $476A: $F0 $E0
    ldh a, [rP1]                                  ; $476C: $F0 $00
    ret z                                         ; $476E: $C8

    or b                                          ; $476F: $B0
    ld hl, sp-$80                                 ; $4770: $F8 $80
    ldh [rP1], a                                  ; $4772: $E0 $00
    ldh a, [rP1]                                  ; $4774: $F0 $00
    ld hl, sp+$00                                 ; $4776: $F8 $00
    inc h                                         ; $4778: $24
    jr jr_01E_479F                                ; $4779: $18 $24

jr_01E_477B:
    jr jr_01E_4795                                ; $477B: $18 $18

    nop                                           ; $477D: $00
    nop                                           ; $477E: $00
    nop                                           ; $477F: $00
    db $FC                                        ; $4780: $FC
    nop                                           ; $4781: $00
    db $FC                                        ; $4782: $FC
    ret z                                         ; $4783: $C8

    db $FC                                        ; $4784: $FC
    ret nc                                        ; $4785: $D0

    or $C8                                        ; $4786: $F6 $C8
    and $98                                       ; $4788: $E6 $98
    push hl                                       ; $478A: $E5
    sbc d                                         ; $478B: $9A
    or l                                          ; $478C: $B5
    ld a, [bc]                                    ; $478D: $0A
    ld a, l                                       ; $478E: $7D
    ld [hl-], a                                   ; $478F: $32
    ld a, a                                       ; $4790: $7F
    inc [hl]                                      ; $4791: $34
    rst RST_38                                    ; $4792: $FF
    ld b, [hl]                                    ; $4793: $46
    rst RST_28                                    ; $4794: $EF

jr_01E_4795:
    add $EE                                       ; $4795: $C6 $EE
    ret nz                                        ; $4797: $C0

    sbc $0C                                       ; $4798: $DE $0C
    ld e, $04                                     ; $479A: $1E $04
    rrca                                          ; $479C: $0F
    ld b, $07                                     ; $479D: $06 $07

jr_01E_479F:
    nop                                           ; $479F: $00
    rst RST_18                                    ; $47A0: $DF
    inc c                                         ; $47A1: $0C
    cp [hl]                                       ; $47A2: $BE
    ld e, l                                       ; $47A3: $5D
    rst RST_38                                    ; $47A4: $FF
    and b                                         ; $47A5: $A0
    add sp, -$69                                  ; $47A6: $E8 $97
    call $FFB2                                    ; $47A8: $CD $B2 $FF
    ld bc, $59BF                                  ; $47AB: $01 $BF $59
    rst RST_18                                    ; $47AE: $DF
    dec bc                                        ; $47AF: $0B
    rrca                                          ; $47B0: $0F
    nop                                           ; $47B1: $00
    dec b                                         ; $47B2: $05
    ld [bc], a                                    ; $47B3: $02
    ld a, [bc]                                    ; $47B4: $0A
    inc b                                         ; $47B5: $04
    ld [de], a                                    ; $47B6: $12
    inc c                                         ; $47B7: $0C
    inc e                                         ; $47B8: $1C
    nop                                           ; $47B9: $00
    ld bc, $0100                                  ; $47BA: $01 $00 $01
    nop                                           ; $47BD: $00
    ld bc, $0000                                  ; $47BE: $01 $00 $00
    nop                                           ; $47C1: $00
    nop                                           ; $47C2: $00
    nop                                           ; $47C3: $00
    nop                                           ; $47C4: $00
    nop                                           ; $47C5: $00
    nop                                           ; $47C6: $00
    nop                                           ; $47C7: $00
    nop                                           ; $47C8: $00
    nop                                           ; $47C9: $00
    nop                                           ; $47CA: $00
    nop                                           ; $47CB: $00
    nop                                           ; $47CC: $00
    nop                                           ; $47CD: $00
    nop                                           ; $47CE: $00

jr_01E_47CF:
    nop                                           ; $47CF: $00
    nop                                           ; $47D0: $00
    nop                                           ; $47D1: $00
    nop                                           ; $47D2: $00
    nop                                           ; $47D3: $00
    ld e, $00                                     ; $47D4: $1E $00
    ld [hl-], a                                   ; $47D6: $32
    inc c                                         ; $47D7: $0C
    ld l, [hl]                                    ; $47D8: $6E
    jr nc, jr_01E_47CF                            ; $47D9: $30 $F4

    ld a, b                                       ; $47DB: $78
    call c, Call_01E_5C70                         ; $47DC: $DC $70 $5C
    xor b                                         ; $47DF: $A8
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
    nop                                           ; $47EE: $00
    nop                                           ; $47EF: $00
    nop                                           ; $47F0: $00
    nop                                           ; $47F1: $00
    nop                                           ; $47F2: $00
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
    ld c, $00                                     ; $47FE: $0E $00
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
    ld c, $00                                     ; $480E: $0E $00
    rrca                                          ; $4810: $0F
    ld b, $0F                                     ; $4811: $06 $0F
    rlca                                          ; $4813: $07
    rrca                                          ; $4814: $0F
    rlca                                          ; $4815: $07
    rrca                                          ; $4816: $0F
    rlca                                          ; $4817: $07
    rrca                                          ; $4818: $0F
    inc bc                                        ; $4819: $03
    inc bc                                        ; $481A: $03
    nop                                           ; $481B: $00
    nop                                           ; $481C: $00
    nop                                           ; $481D: $00
    nop                                           ; $481E: $00
    nop                                           ; $481F: $00
    rlca                                          ; $4820: $07
    nop                                           ; $4821: $00
    rlca                                          ; $4822: $07
    inc bc                                        ; $4823: $03
    rlca                                          ; $4824: $07
    ld [bc], a                                    ; $4825: $02
    inc bc                                        ; $4826: $03
    nop                                           ; $4827: $00
    ld bc, $0000                                  ; $4828: $01 $00 $00
    nop                                           ; $482B: $00
    rrca                                          ; $482C: $0F
    nop                                           ; $482D: $00
    ld a, a                                       ; $482E: $7F
    rlca                                          ; $482F: $07
    add a                                         ; $4830: $87
    ld a, e                                       ; $4831: $7B
    rst RST_18                                    ; $4832: $DF
    ld hl, $042F                                  ; $4833: $21 $2F $04
    rra                                           ; $4836: $1F
    ld c, $1F                                     ; $4837: $0E $1F
    inc b                                         ; $4839: $04
    inc a                                         ; $483A: $3C
    jr jr_01E_48B9                                ; $483B: $18 $7C

    jr c, jr_01E_48BB                             ; $483D: $38 $7C

    nop                                           ; $483F: $00
    ld l, h                                       ; $4840: $6C
    sub b                                         ; $4841: $90
    cp $4C                                        ; $4842: $FE $4C
    rst RST_38                                    ; $4844: $FF
    cp [hl]                                       ; $4845: $BE
    rst RST_38                                    ; $4846: $FF
    cp a                                          ; $4847: $BF
    rst RST_38                                    ; $4848: $FF
    ld a, a                                       ; $4849: $7F
    rst RST_38                                    ; $484A: $FF
    nop                                           ; $484B: $00
    db $FC                                        ; $484C: $FC
    xor e                                         ; $484D: $AB
    rst RST_38                                    ; $484E: $FF
    ret z                                         ; $484F: $C8

    cp $C0                                        ; $4850: $FE $C0
    rst RST_38                                    ; $4852: $FF
    add b                                         ; $4853: $80
    rst RST_38                                    ; $4854: $FF
    nop                                           ; $4855: $00
    ld l, d                                       ; $4856: $6A
    sub c                                         ; $4857: $91
    and $19                                       ; $4858: $E6 $19
    db $FD                                        ; $485A: $FD
    ld h, b                                       ; $485B: $60
    db $FC                                        ; $485C: $FC
    nop                                           ; $485D: $00
    nop                                           ; $485E: $00
    nop                                           ; $485F: $00
    nop                                           ; $4860: $00
    nop                                           ; $4861: $00
    nop                                           ; $4862: $00
    nop                                           ; $4863: $00
    nop                                           ; $4864: $00
    nop                                           ; $4865: $00
    add b                                         ; $4866: $80
    nop                                           ; $4867: $00
    add b                                         ; $4868: $80
    nop                                           ; $4869: $00
    add b                                         ; $486A: $80
    nop                                           ; $486B: $00
    add b                                         ; $486C: $80
    nop                                           ; $486D: $00
    add b                                         ; $486E: $80
    nop                                           ; $486F: $00
    nop                                           ; $4870: $00
    nop                                           ; $4871: $00
    nop                                           ; $4872: $00
    nop                                           ; $4873: $00
    add b                                         ; $4874: $80
    nop                                           ; $4875: $00
    ld b, b                                       ; $4876: $40
    add b                                         ; $4877: $80
    ld b, b                                       ; $4878: $40
    add b                                         ; $4879: $80
    add b                                         ; $487A: $80
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
    ld h, [hl]                                    ; $489E: $66
    nop                                           ; $489F: $00
    rst RST_00                                    ; $48A0: $C7
    nop                                           ; $48A1: $00
    rst RST_38                                    ; $48A2: $FF
    ld b, [hl]                                    ; $48A3: $46
    rst RST_38                                    ; $48A4: $FF
    ld [hl], a                                    ; $48A5: $77
    ld a, a                                       ; $48A6: $7F
    db $10                                        ; $48A7: $10
    inc sp                                        ; $48A8: $33
    ld bc, $010F                                  ; $48A9: $01 $0F $01
    rra                                           ; $48AC: $1F
    ld c, $1E                                     ; $48AD: $0E $1E
    inc c                                         ; $48AF: $0C
    inc e                                         ; $48B0: $1C
    nop                                           ; $48B1: $00
    nop                                           ; $48B2: $00
    nop                                           ; $48B3: $00
    nop                                           ; $48B4: $00
    nop                                           ; $48B5: $00
    nop                                           ; $48B6: $00
    nop                                           ; $48B7: $00
    nop                                           ; $48B8: $00

jr_01E_48B9:
    nop                                           ; $48B9: $00
    nop                                           ; $48BA: $00

jr_01E_48BB:
    nop                                           ; $48BB: $00
    nop                                           ; $48BC: $00
    nop                                           ; $48BD: $00
    nop                                           ; $48BE: $00
    nop                                           ; $48BF: $00
    ld [bc], a                                    ; $48C0: $02
    ld bc, $0003                                  ; $48C1: $01 $03 $00
    inc bc                                        ; $48C4: $03
    nop                                           ; $48C5: $00
    db $E3                                        ; $48C6: $E3
    nop                                           ; $48C7: $00
    rra                                           ; $48C8: $1F
    ldh [rIE], a                                  ; $48C9: $E0 $FF
    dec b                                         ; $48CB: $05
    adc a                                         ; $48CC: $8F
    ld [hl], c                                    ; $48CD: $71
    rst RST_08                                    ; $48CE: $CF
    or b                                          ; $48CF: $B0
    rst RST_38                                    ; $48D0: $FF
    add b                                         ; $48D1: $80
    add a                                         ; $48D2: $87
    nop                                           ; $48D3: $00
    inc bc                                        ; $48D4: $03
    nop                                           ; $48D5: $00
    inc bc                                        ; $48D6: $03
    nop                                           ; $48D7: $00
    rrca                                          ; $48D8: $0F
    nop                                           ; $48D9: $00
    inc de                                        ; $48DA: $13
    inc c                                         ; $48DB: $0C
    ld [de], a                                    ; $48DC: $12
    inc c                                         ; $48DD: $0C
    inc c                                         ; $48DE: $0C
    nop                                           ; $48DF: $00
    ld b, b                                       ; $48E0: $40
    add b                                         ; $48E1: $80
    ld b, b                                       ; $48E2: $40
    add b                                         ; $48E3: $80
    ld h, e                                       ; $48E4: $63
    add b                                         ; $48E5: $80
    rst RST_28                                    ; $48E6: $EF
    ld b, c                                       ; $48E7: $41
    rst RST_28                                    ; $48E8: $EF
    add $FF                                       ; $48E9: $C6 $FF
    add $EF                                       ; $48EB: $C6 $EF
    pop de                                        ; $48ED: $D1
    rst RST_38                                    ; $48EE: $FF
    adc $FF                                       ; $48EF: $CE $FF
    ld l, $FF                                     ; $48F1: $2E $FF
    rrca                                          ; $48F3: $0F
    rst RST_38                                    ; $48F4: $FF
    ld l, a                                       ; $48F5: $6F
    rst RST_38                                    ; $48F6: $FF
    ld c, $DE                                     ; $48F7: $0E $DE
    inc l                                         ; $48F9: $2C
    ld e, h                                       ; $48FA: $5C
    jr nz, jr_01E_495D                            ; $48FB: $20 $60

    nop                                           ; $48FD: $00
    nop                                           ; $48FE: $00
    nop                                           ; $48FF: $00
    add b                                         ; $4900: $80
    nop                                           ; $4901: $00
    ret nz                                        ; $4902: $C0

    nop                                           ; $4903: $00
    ld b, b                                       ; $4904: $40
    add b                                         ; $4905: $80
    add b                                         ; $4906: $80
    nop                                           ; $4907: $00
    add b                                         ; $4908: $80
    nop                                           ; $4909: $00
    ld b, b                                       ; $490A: $40
    add b                                         ; $490B: $80
    ret nz                                        ; $490C: $C0

    nop                                           ; $490D: $00
    add b                                         ; $490E: $80
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
    jr jr_01E_493E                                ; $493C: $18 $00

jr_01E_493E:
    inc d                                         ; $493E: $14
    ld [$0000], sp                                ; $493F: $08 $00 $00
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
    ld bc, $0300                                  ; $494C: $01 $00 $03
    ld bc, $0103                                  ; $494F: $01 $03 $01
    rlca                                          ; $4952: $07
    inc bc                                        ; $4953: $03
    rlca                                          ; $4954: $07
    ld [bc], a                                    ; $4955: $02
    rlca                                          ; $4956: $07
    nop                                           ; $4957: $00
    ccf                                           ; $4958: $3F
    rlca                                          ; $4959: $07
    ld a, a                                       ; $495A: $7F
    scf                                           ; $495B: $37
    rst RST_38                                    ; $495C: $FF

jr_01E_495D:
    ld a, b                                       ; $495D: $78
    ld hl, sp+$00                                 ; $495E: $F8 $00
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
    add a                                         ; $496C: $87
    nop                                           ; $496D: $00
    db $E4                                        ; $496E: $E4
    add e                                         ; $496F: $83
    sbc a                                         ; $4970: $9F
    ld h, a                                       ; $4971: $67
    db $EC                                        ; $4972: $EC
    rla                                           ; $4973: $17
    rst RST_38                                    ; $4974: $FF
    jr nz, jr_01E_49F6                            ; $4975: $20 $7F

    adc [hl]                                      ; $4977: $8E
    adc a                                         ; $4978: $8F
    ld [hl], a                                    ; $4979: $77
    cp a                                          ; $497A: $BF
    ld b, a                                       ; $497B: $47
    rst RST_38                                    ; $497C: $FF
    nop                                           ; $497D: $00
    nop                                           ; $497E: $00
    nop                                           ; $497F: $00
    nop                                           ; $4980: $00
    nop                                           ; $4981: $00
    nop                                           ; $4982: $00
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
    cp b                                          ; $498E: $B8
    nop                                           ; $498F: $00
    db $FD                                        ; $4990: $FD
    jr @-$40                                      ; $4991: $18 $BE

    ld e, l                                       ; $4993: $5D
    ld a, a                                       ; $4994: $7F
    add d                                         ; $4995: $82
    dec bc                                        ; $4996: $0B
    db $F4                                        ; $4997: $F4
    reti                                          ; $4998: $D9


    ld h, $FF                                     ; $4999: $26 $FF
    add b                                         ; $499B: $80
    cp [hl]                                       ; $499C: $BE
    dec e                                         ; $499D: $1D
    ccf                                           ; $499E: $3F
    nop                                           ; $499F: $00
    nop                                           ; $49A0: $00
    nop                                           ; $49A1: $00
    nop                                           ; $49A2: $00
    nop                                           ; $49A3: $00
    nop                                           ; $49A4: $00
    nop                                           ; $49A5: $00
    nop                                           ; $49A6: $00
    nop                                           ; $49A7: $00
    nop                                           ; $49A8: $00
    nop                                           ; $49A9: $00
    nop                                           ; $49AA: $00
    nop                                           ; $49AB: $00
    nop                                           ; $49AC: $00
    nop                                           ; $49AD: $00
    nop                                           ; $49AE: $00
    nop                                           ; $49AF: $00
    add b                                         ; $49B0: $80
    nop                                           ; $49B1: $00
    add b                                         ; $49B2: $80
    nop                                           ; $49B3: $00
    ret nz                                        ; $49B4: $C0

    nop                                           ; $49B5: $00
    ldh [$FFC0], a                                ; $49B6: $E0 $C0
    ldh a, [$FFE0]                                ; $49B8: $F0 $E0
    ldh a, [$FFE0]                                ; $49BA: $F0 $E0
    ldh a, [$FF60]                                ; $49BC: $F0 $60
    ldh a, [rP1]                                  ; $49BE: $F0 $00
    dec [hl]                                      ; $49C0: $35
    ld a, [bc]                                    ; $49C1: $0A
    ld a, e                                       ; $49C2: $7B
    inc h                                         ; $49C3: $24
    ld a, a                                       ; $49C4: $7F
    jr c, @+$7E                                   ; $49C5: $38 $7C

    dec sp                                        ; $49C7: $3B
    ld a, $19                                     ; $49C8: $3E $19
    ccf                                           ; $49CA: $3F
    ld [$023F], sp                                ; $49CB: $08 $3F $02
    ld [hl], $09                                  ; $49CE: $36 $09
    ld e, $01                                     ; $49D0: $1E $01
    ld e, $0D                                     ; $49D2: $1E $0D
    ccf                                           ; $49D4: $3F
    inc c                                         ; $49D5: $0C
    ld a, a                                       ; $49D6: $7F
    ld sp, $71FB                                  ; $49D7: $31 $FB $71
    ld sp, hl                                     ; $49DA: $F9
    nop                                           ; $49DB: $00
    ld bc, $0100                                  ; $49DC: $01 $00 $01
    nop                                           ; $49DF: $00
    ret nz                                        ; $49E0: $C0

    add b                                         ; $49E1: $80
    ldh a, [rLCDC]                                ; $49E2: $F0 $40
    rst RST_18                                    ; $49E4: $DF
    jr nz, jr_01E_4A66                            ; $49E5: $20 $7F

    xor [hl]                                      ; $49E7: $AE
    sbc $20                                       ; $49E8: $DE $20
    add sp, $10                                   ; $49EA: $E8 $10
    ld a, b                                       ; $49EC: $78
    add b                                         ; $49ED: $80
    ld h, h                                       ; $49EE: $64
    sbc b                                         ; $49EF: $98
    ld h, h                                       ; $49F0: $64
    sbc b                                         ; $49F1: $98
    sbc b                                         ; $49F2: $98
    nop                                           ; $49F3: $00
    ret nz                                        ; $49F4: $C0

    add b                                         ; $49F5: $80

jr_01E_49F6:
    ret nz                                        ; $49F6: $C0

    add b                                         ; $49F7: $80
    ret nz                                        ; $49F8: $C0

    nop                                           ; $49F9: $00
    ldh [$FFC0], a                                ; $49FA: $E0 $C0
    ldh [$FFC0], a                                ; $49FC: $E0 $C0
    ldh [rP1], a                                  ; $49FE: $E0 $00
    nop                                           ; $4A00: $00
    nop                                           ; $4A01: $00
    nop                                           ; $4A02: $00
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
    ld h, c                                       ; $4A12: $61
    nop                                           ; $4A13: $00
    ld e, [hl]                                    ; $4A14: $5E
    ld hl, $0A37                                  ; $4A15: $21 $37 $0A
    ld [hl], e                                    ; $4A18: $73
    dec l                                         ; $4A19: $2D
    rst RST_38                                    ; $4A1A: $FF
    ld h, c                                       ; $4A1B: $61
    ei                                            ; $4A1C: $FB
    ld h, l                                       ; $4A1D: $65
    ld [hl], e                                    ; $4A1E: $73
    inc c                                         ; $4A1F: $0C
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
    add b                                         ; $4A32: $80
    nop                                           ; $4A33: $00
    ret nz                                        ; $4A34: $C0

    nop                                           ; $4A35: $00
    ldh a, [$FFC0]                                ; $4A36: $F0 $C0
    db $FC                                        ; $4A38: $FC
    ld [hl], b                                    ; $4A39: $70
    db $FC                                        ; $4A3A: $FC
    cp b                                          ; $4A3B: $B8
    ld hl, sp-$70                                 ; $4A3C: $F8 $90
    ret nc                                        ; $4A3E: $D0

    nop                                           ; $4A3F: $00
    nop                                           ; $4A40: $00
    nop                                           ; $4A41: $00
    ld bc, $0200                                  ; $4A42: $01 $00 $02
    ld bc, $0307                                  ; $4A45: $01 $07 $03
    rrca                                          ; $4A48: $0F
    rlca                                          ; $4A49: $07
    rra                                           ; $4A4A: $1F
    rrca                                          ; $4A4B: $0F
    rra                                           ; $4A4C: $1F
    rrca                                          ; $4A4D: $0F
    ccf                                           ; $4A4E: $3F
    rra                                           ; $4A4F: $1F
    ccf                                           ; $4A50: $3F
    rra                                           ; $4A51: $1F
    ld a, a                                       ; $4A52: $7F
    ccf                                           ; $4A53: $3F
    ld a, a                                       ; $4A54: $7F
    ccf                                           ; $4A55: $3F
    ld a, a                                       ; $4A56: $7F
    ccf                                           ; $4A57: $3F
    rst RST_38                                    ; $4A58: $FF
    ld a, a                                       ; $4A59: $7F
    rst RST_38                                    ; $4A5A: $FF
    ld a, a                                       ; $4A5B: $7F
    rst RST_38                                    ; $4A5C: $FF
    nop                                           ; $4A5D: $00
    nop                                           ; $4A5E: $00
    nop                                           ; $4A5F: $00
    adc h                                         ; $4A60: $8C
    ld a, a                                       ; $4A61: $7F
    inc a                                         ; $4A62: $3C
    rst RST_38                                    ; $4A63: $FF
    ld hl, sp-$01                                 ; $4A64: $F8 $FF

jr_01E_4A66:
    ld hl, sp-$01                                 ; $4A66: $F8 $FF
    di                                            ; $4A68: $F3
    db $FC                                        ; $4A69: $FC
    db $F4                                        ; $4A6A: $F4

jr_01E_4A6B:
    ei                                            ; $4A6B: $FB
    db $E3                                        ; $4A6C: $E3
    rst RST_38                                    ; $4A6D: $FF
    rst RST_28                                    ; $4A6E: $EF
    rst RST_38                                    ; $4A6F: $FF
    rst RST_38                                    ; $4A70: $FF
    rst RST_38                                    ; $4A71: $FF
    rst RST_38                                    ; $4A72: $FF
    rst RST_38                                    ; $4A73: $FF
    rst RST_38                                    ; $4A74: $FF
    rst RST_38                                    ; $4A75: $FF
    rst RST_38                                    ; $4A76: $FF
    rst RST_38                                    ; $4A77: $FF
    rst RST_38                                    ; $4A78: $FF
    rst RST_38                                    ; $4A79: $FF
    cp $FD                                        ; $4A7A: $FE $FD
    ei                                            ; $4A7C: $FB
    inc b                                         ; $4A7D: $04
    dec c                                         ; $4A7E: $0D
    nop                                           ; $4A7F: $00
    sbc a                                         ; $4A80: $9F
    and $9F                                       ; $4A81: $E6 $9F
    and $2F                                       ; $4A83: $E6 $2F
    ld hl, sp-$21                                 ; $4A85: $F8 $DF
    cp $FF                                        ; $4A87: $FE $FF
    rst RST_38                                    ; $4A89: $FF
    rst RST_38                                    ; $4A8A: $FF
    ld l, a                                       ; $4A8B: $6F
    ld a, a                                       ; $4A8C: $7F
    adc a                                         ; $4A8D: $8F
    rst RST_08                                    ; $4A8E: $CF
    ld b, $0F                                     ; $4A8F: $06 $0F
    inc b                                         ; $4A91: $04
    rlca                                          ; $4A92: $07
    nop                                           ; $4A93: $00
    rlca                                          ; $4A94: $07
    inc bc                                        ; $4A95: $03
    rlca                                          ; $4A96: $07
    inc bc                                        ; $4A97: $03
    inc bc                                        ; $4A98: $03
    nop                                           ; $4A99: $00
    inc bc                                        ; $4A9A: $03
    ld bc, $0307                                  ; $4A9B: $01 $07 $03
    rlca                                          ; $4A9E: $07
    nop                                           ; $4A9F: $00
    rst RST_38                                    ; $4AA0: $FF
    dec de                                        ; $4AA1: $1B
    cp a                                          ; $4AA2: $BF
    ld e, c                                       ; $4AA3: $59
    dec a                                         ; $4AA4: $3D
    ret nz                                        ; $4AA5: $C0

    xor h                                         ; $4AA6: $AC
    ld d, b                                       ; $4AA7: $50
    sbc a                                         ; $4AA8: $9F
    ld h, h                                       ; $4AA9: $64
    rst RST_28                                    ; $4AAA: $EF
    dec de                                        ; $4AAB: $1B
    xor a                                         ; $4AAC: $AF
    ld a, e                                       ; $4AAD: $7B
    rst RST_38                                    ; $4AAE: $FF
    ld a, [hl-]                                   ; $4AAF: $3A
    rst RST_38                                    ; $4AB0: $FF
    nop                                           ; $4AB1: $00
    rra                                           ; $4AB2: $1F
    add sp, -$64                                  ; $4AB3: $E8 $9C

jr_01E_4AB5:
    ld h, e                                       ; $4AB5: $63
    push hl                                       ; $4AB6: $E5
    ld [bc], a                                    ; $4AB7: $02
    add e                                         ; $4AB8: $83
    ld bc, $81C3                                  ; $4AB9: $01 $C3 $81
    pop bc                                        ; $4ABC: $C1
    add b                                         ; $4ABD: $80
    ret nz                                        ; $4ABE: $C0

    nop                                           ; $4ABF: $00
    add b                                         ; $4AC0: $80
    nop                                           ; $4AC1: $00
    nop                                           ; $4AC2: $00
    nop                                           ; $4AC3: $00
    jr jr_01E_4AC6                                ; $4AC4: $18 $00

jr_01E_4AC6:
    add sp, $10                                   ; $4AC6: $E8 $10
    sub b                                         ; $4AC8: $90
    ld h, b                                       ; $4AC9: $60
    ldh [rP1], a                                  ; $4ACA: $E0 $00
    ret c                                         ; $4ACC: $D8

    nop                                           ; $4ACD: $00
    db $E4                                        ; $4ACE: $E4
    jr jr_01E_4AB5                                ; $4ACF: $18 $E4

    jr jr_01E_4A6B                                ; $4AD1: $18 $98

    nop                                           ; $4AD3: $00
    add b                                         ; $4AD4: $80
    nop                                           ; $4AD5: $00
    ret nz                                        ; $4AD6: $C0

    add b                                         ; $4AD7: $80
    ldh [$FF80], a                                ; $4AD8: $E0 $80
    ldh a, [rNR41]                                ; $4ADA: $F0 $20
    ld hl, sp+$70                                 ; $4ADC: $F8 $70
    ld hl, sp+$00                                 ; $4ADE: $F8 $00
    nop                                           ; $4AE0: $00
    nop                                           ; $4AE1: $00
    nop                                           ; $4AE2: $00
    nop                                           ; $4AE3: $00
    nop                                           ; $4AE4: $00
    nop                                           ; $4AE5: $00
    rra                                           ; $4AE6: $1F
    nop                                           ; $4AE7: $00
    ldh [c], a                                    ; $4AE8: $E2
    inc e                                         ; $4AE9: $1C
    inc b                                         ; $4AEA: $04
    ld hl, sp+$08                                 ; $4AEB: $F8 $08
    ldh a, [rNR10]                                ; $4AED: $F0 $10
    ldh [rNR44], a                                ; $4AEF: $E0 $23
    ret nz                                        ; $4AF1: $C0

    ld c, h                                       ; $4AF2: $4C
    add e                                         ; $4AF3: $83
    or c                                          ; $4AF4: $B1
    ld c, $C2                                     ; $4AF5: $0E $C2
    inc a                                         ; $4AF7: $3C
    rla                                           ; $4AF8: $17
    ld hl, sp-$1B                                 ; $4AF9: $F8 $E5
    ld a, [$F4CB]                                 ; $4AFB: $FA $CB $F4
    rst RST_08                                    ; $4AFE: $CF
    ldh a, [c]                                    ; $4AFF: $F2
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
    nop                                           ; $4B0A: $00
    nop                                           ; $4B0B: $00
    nop                                           ; $4B0C: $00
    nop                                           ; $4B0D: $00
    nop                                           ; $4B0E: $00
    nop                                           ; $4B0F: $00
    add b                                         ; $4B10: $80
    nop                                           ; $4B11: $00
    add b                                         ; $4B12: $80
    nop                                           ; $4B13: $00
    nop                                           ; $4B14: $00
    nop                                           ; $4B15: $00
    nop                                           ; $4B16: $00
    nop                                           ; $4B17: $00
    jr jr_01E_4B1A                                ; $4B18: $18 $00

jr_01E_4B1A:
    db $EC                                        ; $4B1A: $EC
    db $10                                        ; $4B1B: $10
    ld a, a                                       ; $4B1C: $7F
    xor h                                         ; $4B1D: $AC
    ccf                                           ; $4B1E: $3F
    rst RST_10                                    ; $4B1F: $D7
    nop                                           ; $4B20: $00
    nop                                           ; $4B21: $00
    nop                                           ; $4B22: $00
    nop                                           ; $4B23: $00
    nop                                           ; $4B24: $00
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
    ret nz                                        ; $4B3C: $C0

    nop                                           ; $4B3D: $00
    ret nz                                        ; $4B3E: $C0

    add b                                         ; $4B3F: $80
    nop                                           ; $4B40: $00
    nop                                           ; $4B41: $00
    nop                                           ; $4B42: $00
    nop                                           ; $4B43: $00
    nop                                           ; $4B44: $00
    nop                                           ; $4B45: $00
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
    nop                                           ; $4B50: $00
    nop                                           ; $4B51: $00
    nop                                           ; $4B52: $00
    nop                                           ; $4B53: $00
    nop                                           ; $4B54: $00
    nop                                           ; $4B55: $00
    nop                                           ; $4B56: $00
    nop                                           ; $4B57: $00
    nop                                           ; $4B58: $00
    nop                                           ; $4B59: $00
    rlca                                          ; $4B5A: $07
    nop                                           ; $4B5B: $00
    jr jr_01E_4B65                                ; $4B5C: $18 $07

    ld h, d                                       ; $4B5E: $62
    rra                                           ; $4B5F: $1F
    nop                                           ; $4B60: $00
    nop                                           ; $4B61: $00
    nop                                           ; $4B62: $00
    nop                                           ; $4B63: $00
    nop                                           ; $4B64: $00

jr_01E_4B65:
    nop                                           ; $4B65: $00
    nop                                           ; $4B66: $00
    nop                                           ; $4B67: $00
    nop                                           ; $4B68: $00
    nop                                           ; $4B69: $00
    nop                                           ; $4B6A: $00
    nop                                           ; $4B6B: $00
    nop                                           ; $4B6C: $00
    nop                                           ; $4B6D: $00
    nop                                           ; $4B6E: $00
    nop                                           ; $4B6F: $00
    nop                                           ; $4B70: $00
    nop                                           ; $4B71: $00
    nop                                           ; $4B72: $00
    nop                                           ; $4B73: $00
    nop                                           ; $4B74: $00
    nop                                           ; $4B75: $00
    nop                                           ; $4B76: $00
    nop                                           ; $4B77: $00
    nop                                           ; $4B78: $00
    nop                                           ; $4B79: $00
    rst RST_38                                    ; $4B7A: $FF
    nop                                           ; $4B7B: $00
    rst RST_38                                    ; $4B7C: $FF
    ld a, a                                       ; $4B7D: $7F
    rst RST_38                                    ; $4B7E: $FF
    nop                                           ; $4B7F: $00
    ret nz                                        ; $4B80: $C0

    nop                                           ; $4B81: $00
    cp a                                          ; $4B82: $BF
    ld b, b                                       ; $4B83: $40
    db $ED                                        ; $4B84: $ED
    ld d, [hl]                                    ; $4B85: $56
    or a                                          ; $4B86: $B7
    ld c, b                                       ; $4B87: $48
    call c, RST_00                                ; $4B88: $DC $00 $00
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
    nop                                           ; $4B97: $00
    nop                                           ; $4B98: $00
    nop                                           ; $4B99: $00
    nop                                           ; $4B9A: $00
    nop                                           ; $4B9B: $00
    nop                                           ; $4B9C: $00
    nop                                           ; $4B9D: $00
    nop                                           ; $4B9E: $00
    nop                                           ; $4B9F: $00
    rst RST_38                                    ; $4BA0: $FF
    ld h, c                                       ; $4BA1: $61
    ei                                            ; $4BA2: $FB
    ld h, l                                       ; $4BA3: $65
    ld [hl], e                                    ; $4BA4: $73
    inc c                                         ; $4BA5: $0C
    ld a, [de]                                    ; $4BA6: $1A
    dec b                                         ; $4BA7: $05
    ld sp, hl                                     ; $4BA8: $F9
    ld d, $FE                                     ; $4BA9: $16 $FE
    pop af                                        ; $4BAB: $F1
    ld a, [$FFF7]                                 ; $4BAC: $FA $F7 $FF
    ld h, e                                       ; $4BAF: $63
    rst RST_38                                    ; $4BB0: $FF
    ld b, b                                       ; $4BB1: $40
    ld [hl], c                                    ; $4BB2: $71
    ld c, $79                                     ; $4BB3: $0E $79
    ld [hl], $7E                                  ; $4BB5: $36 $7E
    jr nc, jr_01E_4BF1                            ; $4BB7: $30 $38

    nop                                           ; $4BB9: $00
    inc a                                         ; $4BBA: $3C
    jr jr_01E_4C39                                ; $4BBB: $18 $7C

    jr c, @+$7E                                   ; $4BBD: $38 $7C

    nop                                           ; $4BBF: $00
    ld hl, sp-$70                                 ; $4BC0: $F8 $90
    ret nc                                        ; $4BC2: $D0

    nop                                           ; $4BC3: $00
    pop bc                                        ; $4BC4: $C1
    nop                                           ; $4BC5: $00
    cp $41                                        ; $4BC6: $FE $41
    ld sp, hl                                     ; $4BC8: $F9
    or [hl]                                       ; $4BC9: $B6
    cp $B0                                        ; $4BCA: $FE $B0
    db $FD                                        ; $4BCC: $FD
    and b                                         ; $4BCD: $A0
    cp $01                                        ; $4BCE: $FE $01
    cp $81                                        ; $4BD0: $FE $81
    ret                                           ; $4BD2: $C9


    jr nc, jr_01E_4C2D                            ; $4BD3: $30 $58

    jr nz, jr_01E_4C13                            ; $4BD5: $20 $3C

    jr jr_01E_4C17                                ; $4BD7: $18 $3E

    jr jr_01E_4BFA                                ; $4BD9: $18 $1F

    ld [bc], a                                    ; $4BDB: $02
    rrca                                          ; $4BDC: $0F
    rlca                                          ; $4BDD: $07
    rrca                                          ; $4BDE: $0F
    nop                                           ; $4BDF: $00
    add b                                         ; $4BE0: $80
    nop                                           ; $4BE1: $00
    add b                                         ; $4BE2: $80
    nop                                           ; $4BE3: $00
    nop                                           ; $4BE4: $00
    nop                                           ; $4BE5: $00
    nop                                           ; $4BE6: $00
    nop                                           ; $4BE7: $00
    add b                                         ; $4BE8: $80
    nop                                           ; $4BE9: $00
    ld b, b                                       ; $4BEA: $40
    add b                                         ; $4BEB: $80
    ld b, b                                       ; $4BEC: $40
    add b                                         ; $4BED: $80
    add b                                         ; $4BEE: $80
    nop                                           ; $4BEF: $00
    nop                                           ; $4BF0: $00

jr_01E_4BF1:
    nop                                           ; $4BF1: $00
    nop                                           ; $4BF2: $00
    nop                                           ; $4BF3: $00
    nop                                           ; $4BF4: $00
    nop                                           ; $4BF5: $00
    nop                                           ; $4BF6: $00
    nop                                           ; $4BF7: $00
    add b                                         ; $4BF8: $80
    nop                                           ; $4BF9: $00

jr_01E_4BFA:
    add b                                         ; $4BFA: $80
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

jr_01E_4C13:
    nop                                           ; $4C13: $00
    nop                                           ; $4C14: $00
    nop                                           ; $4C15: $00
    nop                                           ; $4C16: $00

jr_01E_4C17:
    nop                                           ; $4C17: $00
    ld h, c                                       ; $4C18: $61
    nop                                           ; $4C19: $00
    ld e, [hl]                                    ; $4C1A: $5E
    ld hl, $0A37                                  ; $4C1B: $21 $37 $0A
    ld [hl], e                                    ; $4C1E: $73
    dec l                                         ; $4C1F: $2D
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

jr_01E_4C2D:
    nop                                           ; $4C2D: $00
    nop                                           ; $4C2E: $00
    nop                                           ; $4C2F: $00
    nop                                           ; $4C30: $00
    nop                                           ; $4C31: $00
    nop                                           ; $4C32: $00
    nop                                           ; $4C33: $00
    nop                                           ; $4C34: $00
    nop                                           ; $4C35: $00
    add b                                         ; $4C36: $80
    nop                                           ; $4C37: $00
    ret nz                                        ; $4C38: $C0

jr_01E_4C39:
    nop                                           ; $4C39: $00
    ldh a, [$FFC0]                                ; $4C3A: $F0 $C0
    db $FC                                        ; $4C3C: $FC
    ld [hl], b                                    ; $4C3D: $70
    db $FC                                        ; $4C3E: $FC
    cp b                                          ; $4C3F: $B8
    rst RST_20                                    ; $4C40: $E7
    jr @+$17                                      ; $4C41: $18 $15

    ld a, [bc]                                    ; $4C43: $0A
    inc de                                        ; $4C44: $13
    dec c                                         ; $4C45: $0D
    ccf                                           ; $4C46: $3F
    ld bc, $127D                                  ; $4C47: $01 $7D $12
    cp b                                          ; $4C4A: $B8
    ld d, a                                       ; $4C4B: $57
    rst RST_38                                    ; $4C4C: $FF
    nop                                           ; $4C4D: $00
    inc de                                        ; $4C4E: $13
    inc c                                         ; $4C4F: $0C
    ld [hl], $09                                  ; $4C50: $36 $09
    ld a, [hl]                                    ; $4C52: $7E
    dec h                                         ; $4C53: $25
    ld a, a                                       ; $4C54: $7F

jr_01E_4C55:
    ld [hl], $3F                                  ; $4C55: $36 $3F
    ld de, $033F                                  ; $4C57: $11 $3F $03
    ld a, a                                       ; $4C5A: $7F
    jr nc, jr_01E_4C55                            ; $4C5B: $30 $F8

    ld [hl], b                                    ; $4C5D: $70
    ld hl, sp+$00                                 ; $4C5E: $F8 $00
    and b                                         ; $4C60: $A0
    nop                                           ; $4C61: $00
    add b                                         ; $4C62: $80
    nop                                           ; $4C63: $00
    ldh [$FF80], a                                ; $4C64: $E0 $80
    ldh a, [$FFA0]                                ; $4C66: $F0 $A0
    ld hl, sp+$30                                 ; $4C68: $F8 $30
    ld a, b                                       ; $4C6A: $78
    or b                                          ; $4C6B: $B0
    xor [hl]                                      ; $4C6C: $AE
    ld d, b                                       ; $4C6D: $50
    cp c                                          ; $4C6E: $B9
    ld b, [hl]                                    ; $4C6F: $46
    and $19                                       ; $4C70: $E6 $19
    jp nz, Jump_01E_453D                          ; $4C72: $C2 $3D $45

    cp d                                          ; $4C75: $BA
    ld l, l                                       ; $4C76: $6D
    sub [hl]                                      ; $4C77: $96
    ldh a, [c]                                    ; $4C78: $F2
    dec c                                         ; $4C79: $0D
    adc h                                         ; $4C7A: $8C
    ld [hl], e                                    ; $4C7B: $73
    ld a, e                                       ; $4C7C: $7B
    inc b                                         ; $4C7D: $04
    rlca                                          ; $4C7E: $07
    nop                                           ; $4C7F: $00
    add b                                         ; $4C80: $80
    nop                                           ; $4C81: $00
    add b                                         ; $4C82: $80
    nop                                           ; $4C83: $00
    ld h, b                                       ; $4C84: $60
    nop                                           ; $4C85: $00
    and b                                         ; $4C86: $A0
    ld b, b                                       ; $4C87: $40
    and b                                         ; $4C88: $A0
    ld b, b                                       ; $4C89: $40
    ret nz                                        ; $4C8A: $C0

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

jr_01E_4C9C:
    nop                                           ; $4C9C: $00
    nop                                           ; $4C9D: $00
    nop                                           ; $4C9E: $00
    nop                                           ; $4C9F: $00
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
    ld h, c                                       ; $4CB4: $61
    nop                                           ; $4CB5: $00
    ld e, [hl]                                    ; $4CB6: $5E
    ld hl, $0A37                                  ; $4CB7: $21 $37 $0A
    ld [hl], e                                    ; $4CBA: $73
    dec l                                         ; $4CBB: $2D
    rst RST_38                                    ; $4CBC: $FF
    ld h, c                                       ; $4CBD: $61
    ei                                            ; $4CBE: $FB
    ld h, l                                       ; $4CBF: $65
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
    add b                                         ; $4CD4: $80
    nop                                           ; $4CD5: $00
    ret nz                                        ; $4CD6: $C0

    nop                                           ; $4CD7: $00
    ldh a, [$FFC0]                                ; $4CD8: $F0 $C0
    db $FC                                        ; $4CDA: $FC
    ld [hl], b                                    ; $4CDB: $70
    db $FC                                        ; $4CDC: $FC
    cp b                                          ; $4CDD: $B8
    ld hl, sp-$70                                 ; $4CDE: $F8 $90
    ldh a, [rP1]                                  ; $4CE0: $F0 $00
    adc l                                         ; $4CE2: $8D
    ld [hl], b                                    ; $4CE3: $70
    ld b, e                                       ; $4CE4: $43
    inc a                                         ; $4CE5: $3C
    ld a, $01                                     ; $4CE6: $3E $01
    dec bc                                        ; $4CE8: $0B
    dec b                                         ; $4CE9: $05
    ld a, $01                                     ; $4CEA: $3E $01
    ld b, e                                       ; $4CEC: $43
    inc a                                         ; $4CED: $3C
    adc l                                         ; $4CEE: $8D
    ld [hl], b                                    ; $4CEF: $70
    ldh a, [rP1]                                  ; $4CF0: $F0 $00
    nop                                           ; $4CF2: $00
    nop                                           ; $4CF3: $00

jr_01E_4CF4:
    nop                                           ; $4CF4: $00
    nop                                           ; $4CF5: $00
    nop                                           ; $4CF6: $00
    nop                                           ; $4CF7: $00
    nop                                           ; $4CF8: $00
    nop                                           ; $4CF9: $00
    nop                                           ; $4CFA: $00
    nop                                           ; $4CFB: $00
    nop                                           ; $4CFC: $00
    nop                                           ; $4CFD: $00
    nop                                           ; $4CFE: $00
    nop                                           ; $4CFF: $00
    nop                                           ; $4D00: $00
    nop                                           ; $4D01: $00
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
    inc bc                                        ; $4D0C: $03
    nop                                           ; $4D0D: $00
    ld a, a                                       ; $4D0E: $7F
    inc bc                                        ; $4D0F: $03
    xor c                                         ; $4D10: $A9
    ld d, [hl]                                    ; $4D11: $56
    sbc $21                                       ; $4D12: $DE $21
    rst RST_18                                    ; $4D14: $DF
    jr nc, jr_01E_4C9C                            ; $4D15: $30 $85

    ld a, b                                       ; $4D17: $78
    rst RST_18                                    ; $4D18: $DF
    jr nc, jr_01E_4CF4                            ; $4D19: $30 $D9

    ld h, $A7                                     ; $4D1B: $26 $A7
    ld e, e                                       ; $4D1D: $5B
    ld a, a                                       ; $4D1E: $7F
    nop                                           ; $4D1F: $00
    inc bc                                        ; $4D20: $03
    nop                                           ; $4D21: $00
    pop bc                                        ; $4D22: $C1
    nop                                           ; $4D23: $00
    ret nz                                        ; $4D24: $C0

    add b                                         ; $4D25: $80
    ldh [rP1], a                                  ; $4D26: $E0 $00
    rra                                           ; $4D28: $1F
    ldh [rIE], a                                  ; $4D29: $E0 $FF
    ld c, $FF                                     ; $4D2B: $0E $FF
    sbc $FE                                       ; $4D2D: $DE $FE
    ret nz                                        ; $4D2F: $C0

    ret nc                                        ; $4D30: $D0

    jr nz, @-$1E                                  ; $4D31: $20 $E0

    add b                                         ; $4D33: $80
    ret nz                                        ; $4D34: $C0

    nop                                           ; $4D35: $00
    nop                                           ; $4D36: $00
    nop                                           ; $4D37: $00
    nop                                           ; $4D38: $00
    nop                                           ; $4D39: $00
    ld bc, $0100                                  ; $4D3A: $01 $00 $01
    nop                                           ; $4D3D: $00
    ld bc, $CF00                                  ; $4D3E: $01 $00 $CF
    or a                                          ; $4D41: $B7
    rst RST_38                                    ; $4D42: $FF
    rst RST_08                                    ; $4D43: $CF

jr_01E_4D44:
    rst RST_38                                    ; $4D44: $FF
    ld c, a                                       ; $4D45: $4F
    ld a, a                                       ; $4D46: $7F
    db $10                                        ; $4D47: $10
    rst RST_38                                    ; $4D48: $FF

jr_01E_4D49:
    nop                                           ; $4D49: $00
    rra                                           ; $4D4A: $1F
    ldh [rNR31], a                                ; $4D4B: $E0 $1B
    ldh [$FFE9], a                                ; $4D4D: $E0 $E9
    db $10                                        ; $4D4F: $10
    ld c, c                                       ; $4D50: $49
    jr nc, jr_01E_4D44                            ; $4D51: $30 $F1

    ld b, b                                       ; $4D53: $40
    ldh a, [$FF60]                                ; $4D54: $F0 $60
    ldh [rLCDC], a                                ; $4D56: $E0 $40
    ldh [rP1], a                                  ; $4D58: $E0 $00
    ldh [$FFC0], a                                ; $4D5A: $E0 $C0
    ldh [$FFC0], a                                ; $4D5C: $E0 $C0
    ldh [rP1], a                                  ; $4D5E: $E0 $00
    nop                                           ; $4D60: $00
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
    ld h, c                                       ; $4D70: $61
    nop                                           ; $4D71: $00

jr_01E_4D72:
    ld e, [hl]                                    ; $4D72: $5E
    ld hl, $0A37                                  ; $4D73: $21 $37 $0A
    ld [hl], e                                    ; $4D76: $73
    dec l                                         ; $4D77: $2D
    rst RST_38                                    ; $4D78: $FF
    ld h, c                                       ; $4D79: $61
    ei                                            ; $4D7A: $FB
    ld h, l                                       ; $4D7B: $65
    di                                            ; $4D7C: $F3
    inc c                                         ; $4D7D: $0C
    ld e, d                                       ; $4D7E: $5A
    dec h                                         ; $4D7F: $25
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
    add b                                         ; $4D90: $80
    nop                                           ; $4D91: $00
    ret nz                                        ; $4D92: $C0

    nop                                           ; $4D93: $00
    ldh a, [$FFC0]                                ; $4D94: $F0 $C0
    db $FC                                        ; $4D96: $FC
    ld [hl], b                                    ; $4D97: $70
    db $FC                                        ; $4D98: $FC
    cp b                                          ; $4D99: $B8
    ld hl, sp-$70                                 ; $4D9A: $F8 $90
    ret nc                                        ; $4D9C: $D0

    nop                                           ; $4D9D: $00
    ldh [rP1], a                                  ; $4D9E: $E0 $00
    ret nz                                        ; $4DA0: $C0

    nop                                           ; $4DA1: $00
    or b                                          ; $4DA2: $B0
    ld b, b                                       ; $4DA3: $40
    adc b                                         ; $4DA4: $88
    ld [hl], b                                    ; $4DA5: $70
    ret c                                         ; $4DA6: $D8

    jr nz, jr_01E_4D49                            ; $4DA7: $20 $A0

    nop                                           ; $4DA9: $00
    add b                                         ; $4DAA: $80
    nop                                           ; $4DAB: $00
    add b                                         ; $4DAC: $80
    nop                                           ; $4DAD: $00
    ret nz                                        ; $4DAE: $C0

    nop                                           ; $4DAF: $00
    jr nz, jr_01E_4D72                            ; $4DB0: $20 $C0

    jr nz, @-$3E                                  ; $4DB2: $20 $C0

    ret nz                                        ; $4DB4: $C0

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
    inc e                                         ; $4DC0: $1C
    inc bc                                        ; $4DC1: $03
    ld b, $01                                     ; $4DC2: $06 $01
    ld e, $05                                     ; $4DC4: $1E $05
    ccf                                           ; $4DC6: $3F
    ld e, $3F                                     ; $4DC7: $1E $3F
    ld c, $6F                                     ; $4DC9: $0E $6F
    ld d, $9F                                     ; $4DCB: $16 $9F
    ld h, b                                       ; $4DCD: $60
    rst RST_28                                    ; $4DCE: $EF
    db $10                                        ; $4DCF: $10
    rla                                           ; $4DD0: $17
    nop                                           ; $4DD1: $00
    rlca                                          ; $4DD2: $07
    ld [bc], a                                    ; $4DD3: $02
    rlca                                          ; $4DD4: $07
    inc bc                                        ; $4DD5: $03
    inc bc                                        ; $4DD6: $03
    ld bc, $0003                                  ; $4DD7: $01 $03 $00
    rlca                                          ; $4DDA: $07
    inc bc                                        ; $4DDB: $03
    rrca                                          ; $4DDC: $0F
    rlca                                          ; $4DDD: $07
    rrca                                          ; $4DDE: $0F
    nop                                           ; $4DDF: $00
    db $F4                                        ; $4DE0: $F4
    nop                                           ; $4DE1: $00
    cp b                                          ; $4DE2: $B8
    ld d, b                                       ; $4DE3: $50
    ld a, [hl]                                    ; $4DE4: $7E
    adc b                                         ; $4DE5: $88
    xor a                                         ; $4DE6: $AF
    ld [hl], h                                    ; $4DE7: $74
    xor [hl]                                      ; $4DE8: $AE
    push af                                       ; $4DE9: $F5
    rst RST_38                                    ; $4DEA: $FF
    ld h, b                                       ; $4DEB: $60
    db $FC                                        ; $4DEC: $FC
    nop                                           ; $4DED: $00
    inc a                                         ; $4DEE: $3C
    ret nz                                        ; $4DEF: $C0

    ld l, h                                       ; $4DF0: $6C
    add b                                         ; $4DF1: $80
    ldh a, [c]                                    ; $4DF2: $F2
    ld l, h                                       ; $4DF3: $6C
    ld a, [$FC74]                                 ; $4DF4: $FA $74 $FC
    ld [$18BC], sp                                ; $4DF7: $08 $BC $18
    sbc h                                         ; $4DFA: $9C
    nop                                           ; $4DFB: $00
    add b                                         ; $4DFC: $80
    nop                                           ; $4DFD: $00
    add b                                         ; $4DFE: $80
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
    nop                                           ; $4E10: $00
    nop                                           ; $4E11: $00
    nop                                           ; $4E12: $00
    nop                                           ; $4E13: $00
    ld h, c                                       ; $4E14: $61
    nop                                           ; $4E15: $00
    ld e, [hl]                                    ; $4E16: $5E
    ld hl, $0A37                                  ; $4E17: $21 $37 $0A
    ld [hl], e                                    ; $4E1A: $73
    dec l                                         ; $4E1B: $2D
    rst RST_38                                    ; $4E1C: $FF
    ld h, c                                       ; $4E1D: $61
    ei                                            ; $4E1E: $FB
    ld h, l                                       ; $4E1F: $65
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
    nop                                           ; $4E30: $00
    nop                                           ; $4E31: $00
    nop                                           ; $4E32: $00
    nop                                           ; $4E33: $00
    add b                                         ; $4E34: $80
    nop                                           ; $4E35: $00
    ret nz                                        ; $4E36: $C0

    nop                                           ; $4E37: $00
    ldh a, [$FFC0]                                ; $4E38: $F0 $C0
    db $FC                                        ; $4E3A: $FC
    ld [hl], b                                    ; $4E3B: $70
    db $FC                                        ; $4E3C: $FC
    cp b                                          ; $4E3D: $B8
    ld hl, sp-$70                                 ; $4E3E: $F8 $90
    nop                                           ; $4E40: $00
    nop                                           ; $4E41: $00
    nop                                           ; $4E42: $00
    nop                                           ; $4E43: $00
    jr nc, jr_01E_4E46                            ; $4E44: $30 $00

jr_01E_4E46:
    rst RST_18                                    ; $4E46: $DF
    jr nz, @+$01                                  ; $4E47: $20 $FF

    cpl                                           ; $4E49: $2F
    ld e, a                                       ; $4E4A: $5F
    and b                                         ; $4E4B: $A0
    or b                                          ; $4E4C: $B0
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
    nop                                           ; $4E58: $00
    nop                                           ; $4E59: $00
    nop                                           ; $4E5A: $00
    nop                                           ; $4E5B: $00
    nop                                           ; $4E5C: $00
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
    ldh a, [rP1]                                  ; $4E7A: $F0 $00
    ldh a, [$FFE0]                                ; $4E7C: $F0 $E0
    ldh a, [rP1]                                  ; $4E7E: $F0 $00
    ld bc, $0700                                  ; $4E80: $01 $00 $07
    ld bc, $071F                                  ; $4E83: $01 $1F $07
    ccf                                           ; $4E86: $3F
    rra                                           ; $4E87: $1F
    ld a, a                                       ; $4E88: $7F
    ccf                                           ; $4E89: $3F
    rst RST_38                                    ; $4E8A: $FF
    ld a, a                                       ; $4E8B: $7F
    rst RST_38                                    ; $4E8C: $FF
    ld a, a                                       ; $4E8D: $7F
    ld a, a                                       ; $4E8E: $7F
    ccf                                           ; $4E8F: $3F
    ccf                                           ; $4E90: $3F
    rra                                           ; $4E91: $1F
    rra                                           ; $4E92: $1F
    rlca                                          ; $4E93: $07
    rlca                                          ; $4E94: $07
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
    nop                                           ; $4EA0: $00
    nop                                           ; $4EA1: $00
    nop                                           ; $4EA2: $00
    nop                                           ; $4EA3: $00
    ld bc, $3F00                                  ; $4EA4: $01 $00 $3F
    ld bc, $3FFF                                  ; $4EA7: $01 $FF $3F
    rst RST_38                                    ; $4EAA: $FF
    rst RST_38                                    ; $4EAB: $FF
    rst RST_38                                    ; $4EAC: $FF
    rst RST_38                                    ; $4EAD: $FF
    rst RST_38                                    ; $4EAE: $FF
    rst RST_38                                    ; $4EAF: $FF
    rst RST_38                                    ; $4EB0: $FF
    rst RST_38                                    ; $4EB1: $FF
    rst RST_38                                    ; $4EB2: $FF
    rst RST_38                                    ; $4EB3: $FF
    rst RST_38                                    ; $4EB4: $FF
    rst RST_38                                    ; $4EB5: $FF
    rst RST_38                                    ; $4EB6: $FF
    rst RST_38                                    ; $4EB7: $FF
    rst RST_38                                    ; $4EB8: $FF
    rst RST_38                                    ; $4EB9: $FF
    ld hl, sp-$01                                 ; $4EBA: $F8 $FF
    rst RST_38                                    ; $4EBC: $FF
    rst RST_38                                    ; $4EBD: $FF
    rst RST_38                                    ; $4EBE: $FF
    nop                                           ; $4EBF: $00
    inc bc                                        ; $4EC0: $03
    nop                                           ; $4EC1: $00
    rst RST_38                                    ; $4EC2: $FF
    inc bc                                        ; $4EC3: $03
    rst RST_38                                    ; $4EC4: $FF
    rst RST_38                                    ; $4EC5: $FF
    cp $FF                                        ; $4EC6: $FE $FF
    ldh a, [rIE]                                  ; $4EC8: $F0 $FF
    rst RST_38                                    ; $4ECA: $FF
    rst RST_38                                    ; $4ECB: $FF
    rst RST_38                                    ; $4ECC: $FF
    rst RST_38                                    ; $4ECD: $FF
    rst RST_38                                    ; $4ECE: $FF
    rst RST_38                                    ; $4ECF: $FF
    rst RST_38                                    ; $4ED0: $FF
    ld hl, sp-$04                                 ; $4ED1: $F8 $FC
    rst RST_38                                    ; $4ED3: $FF
    rst RST_38                                    ; $4ED4: $FF
    rst RST_38                                    ; $4ED5: $FF
    jp Jump_000_00FC                              ; $4ED6: $C3 $FC $00


    rst RST_38                                    ; $4ED9: $FF
    rst RST_38                                    ; $4EDA: $FF
    ldh a, [rIE]                                  ; $4EDB: $F0 $FF
    nop                                           ; $4EDD: $00
    rlca                                          ; $4EDE: $07
    nop                                           ; $4EDF: $00
    rst RST_38                                    ; $4EE0: $FF
    nop                                           ; $4EE1: $00
    rst RST_38                                    ; $4EE2: $FF
    rst RST_38                                    ; $4EE3: $FF
    db $FC                                        ; $4EE4: $FC
    rst RST_38                                    ; $4EE5: $FF
    nop                                           ; $4EE6: $00
    rst RST_38                                    ; $4EE7: $FF
    nop                                           ; $4EE8: $00
    rst RST_38                                    ; $4EE9: $FF
    ldh [rIE], a                                  ; $4EEA: $E0 $FF
    rst RST_38                                    ; $4EEC: $FF
    rst RST_38                                    ; $4EED: $FF
    rst RST_38                                    ; $4EEE: $FF
    add b                                         ; $4EEF: $80
    rst RST_38                                    ; $4EF0: $FF
    ld a, h                                       ; $4EF1: $7C
    ld a, a                                       ; $4EF2: $7F
    add b                                         ; $4EF3: $80
    add b                                         ; $4EF4: $80
    rst RST_38                                    ; $4EF5: $FF
    rst RST_38                                    ; $4EF6: $FF
    nop                                           ; $4EF7: $00
    ccf                                           ; $4EF8: $3F
    jp Jump_000_01FF                              ; $4EF9: $C3 $FF $01


    rst RST_38                                    ; $4EFC: $FF
    ld hl, $70FF                                  ; $4EFD: $21 $FF $70
    rst RST_38                                    ; $4F00: $FF
    nop                                           ; $4F01: $00
    ldh a, [rIE]                                  ; $4F02: $F0 $FF
    nop                                           ; $4F04: $00
    rst RST_38                                    ; $4F05: $FF
    rlca                                          ; $4F06: $07
    ld hl, sp+$7C                                 ; $4F07: $F8 $7C
    add b                                         ; $4F09: $80
    inc bc                                        ; $4F0A: $03
    db $FC                                        ; $4F0B: $FC
    add b                                         ; $4F0C: $80
    rst RST_38                                    ; $4F0D: $FF
    rst RST_38                                    ; $4F0E: $FF
    nop                                           ; $4F0F: $00
    ldh a, [rP1]                                  ; $4F10: $F0 $00
    cp $00                                        ; $4F12: $FE $00
    ld bc, $FEFE                                  ; $4F14: $01 $FE $FE
    nop                                           ; $4F17: $00
    ret nc                                        ; $4F18: $D0

    and b                                         ; $4F19: $A0
    ret nc                                        ; $4F1A: $D0

    and b                                         ; $4F1B: $A0
    sub b                                         ; $4F1C: $90
    ld h, b                                       ; $4F1D: $60
    sub b                                         ; $4F1E: $90
    ld h, b                                       ; $4F1F: $60
    nop                                           ; $4F20: $00
    nop                                           ; $4F21: $00
    nop                                           ; $4F22: $00
    nop                                           ; $4F23: $00
    nop                                           ; $4F24: $00
    nop                                           ; $4F25: $00
    nop                                           ; $4F26: $00
    nop                                           ; $4F27: $00
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
    rst RST_38                                    ; $4F32: $FF
    nop                                           ; $4F33: $00
    ld bc, $7EFE                                  ; $4F34: $01 $FE $7E
    add b                                         ; $4F37: $80
    add b                                         ; $4F38: $80
    nop                                           ; $4F39: $00
    nop                                           ; $4F3A: $00
    nop                                           ; $4F3B: $00
    nop                                           ; $4F3C: $00
    nop                                           ; $4F3D: $00
    add b                                         ; $4F3E: $80
    nop                                           ; $4F3F: $00
    ld c, a                                       ; $4F40: $4F
    inc sp                                        ; $4F41: $33
    ld c, e                                       ; $4F42: $4B

jr_01E_4F43:
    dec [hl]                                      ; $4F43: $35
    ld a, l                                       ; $4F44: $7D
    nop                                           ; $4F45: $00
    jr c, jr_01E_4F48                             ; $4F46: $38 $00

jr_01E_4F48:
    ld a, b                                       ; $4F48: $78
    jr nc, jr_01E_4F43                            ; $4F49: $30 $F8

    ld [hl], b                                    ; $4F4B: $70
    ldh a, [rP1]                                  ; $4F4C: $F0 $00
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
    rst RST_20                                    ; $4F60: $E7
    sbc b                                         ; $4F61: $98
    and h                                         ; $4F62: $A4
    ld e, b                                       ; $4F63: $58
    ld a, h                                       ; $4F64: $7C
    nop                                           ; $4F65: $00
    inc a                                         ; $4F66: $3C
    jr jr_01E_4F87                                ; $4F67: $18 $1E

    ld [$060F], sp                                ; $4F69: $08 $0F $06
    rrca                                          ; $4F6C: $0F
    rlca                                          ; $4F6D: $07
    rlca                                          ; $4F6E: $07
    nop                                           ; $4F6F: $00
    nop                                           ; $4F70: $00
    nop                                           ; $4F71: $00
    nop                                           ; $4F72: $00
    nop                                           ; $4F73: $00
    nop                                           ; $4F74: $00
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
    add b                                         ; $4F82: $80
    nop                                           ; $4F83: $00
    nop                                           ; $4F84: $00
    nop                                           ; $4F85: $00
    nop                                           ; $4F86: $00

jr_01E_4F87:
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
    rlca                                          ; $4FA0: $07
    inc bc                                        ; $4FA1: $03
    add a                                         ; $4FA2: $87
    inc bc                                        ; $4FA3: $03
    ld a, a                                       ; $4FA4: $7F
    add b                                         ; $4FA5: $80
    rra                                           ; $4FA6: $1F
    rst RST_28                                    ; $4FA7: $EF
    rst RST_38                                    ; $4FA8: $FF
    ld c, $0F                                     ; $4FA9: $0E $0F
    inc b                                         ; $4FAB: $04
    rrca                                          ; $4FAC: $0F
    inc b                                         ; $4FAD: $04
    rlca                                          ; $4FAE: $07
    nop                                           ; $4FAF: $00
    rlca                                          ; $4FB0: $07
    nop                                           ; $4FB1: $00
    add hl, bc                                    ; $4FB2: $09
    ld b, $09                                     ; $4FB3: $06 $09
    ld b, $0F                                     ; $4FB5: $06 $0F
    nop                                           ; $4FB7: $00
    rlca                                          ; $4FB8: $07
    nop                                           ; $4FB9: $00
    rrca                                          ; $4FBA: $0F
    ld b, $1F                                     ; $4FBB: $06 $1F
    ld c, $1E                                     ; $4FBD: $0E $1E
    nop                                           ; $4FBF: $00
    cp $7C                                        ; $4FC0: $FE $7C
    rst RST_38                                    ; $4FC2: $FF
    ld a, [hl]                                    ; $4FC3: $7E
    rst RST_38                                    ; $4FC4: $FF
    ld a, [hl]                                    ; $4FC5: $7E
    rst RST_38                                    ; $4FC6: $FF
    nop                                           ; $4FC7: $00
    rst RST_38                                    ; $4FC8: $FF
    rlca                                          ; $4FC9: $07
    rst RST_38                                    ; $4FCA: $FF
    inc bc                                        ; $4FCB: $03
    rst RST_38                                    ; $4FCC: $FF
    ld bc, $21FF                                  ; $4FCD: $01 $FF $21
    rst RST_38                                    ; $4FD0: $FF
    ld [hl], b                                    ; $4FD1: $70
    db $FC                                        ; $4FD2: $FC
    ld [hl], e                                    ; $4FD3: $73
    ld [hl], h                                    ; $4FD4: $74
    xor e                                         ; $4FD5: $AB
    xor a                                         ; $4FD6: $AF
    nop                                           ; $4FD7: $00
    rlca                                          ; $4FD8: $07
    inc bc                                        ; $4FD9: $03
    inc bc                                        ; $4FDA: $03
    ld bc, $0001                                  ; $4FDB: $01 $01 $00
    ld bc, $E000                                  ; $4FDE: $01 $00 $E0
    nop                                           ; $4FE1: $00
    ret nc                                        ; $4FE2: $D0

    and b                                         ; $4FE3: $A0
    ret nc                                        ; $4FE4: $D0

    and b                                         ; $4FE5: $A0
    sub b                                         ; $4FE6: $90
    ld h, b                                       ; $4FE7: $60
    sub b                                         ; $4FE8: $90
    ld h, b                                       ; $4FE9: $60
    ldh [rP1], a                                  ; $4FEA: $E0 $00
    add b                                         ; $4FEC: $80
    nop                                           ; $4FED: $00
    add b                                         ; $4FEE: $80
    nop                                           ; $4FEF: $00
    add b                                         ; $4FF0: $80
    nop                                           ; $4FF1: $00
    ret nz                                        ; $4FF2: $C0

    nop                                           ; $4FF3: $00
    ldh [$FFC0], a                                ; $4FF4: $E0 $C0
    ldh a, [$FFE0]                                ; $4FF6: $F0 $E0
    ldh a, [rP1]                                  ; $4FF8: $F0 $00
    nop                                           ; $4FFA: $00
    nop                                           ; $4FFB: $00
    nop                                           ; $4FFC: $00
    nop                                           ; $4FFD: $00
    nop                                           ; $4FFE: $00
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
    rst RST_00                                    ; $5018: $C7
    nop                                           ; $5019: $00
    cp l                                          ; $501A: $BD
    ld b, d                                       ; $501B: $42
    ld a, a                                       ; $501C: $7F
    inc e                                         ; $501D: $1C
    rst RST_38                                    ; $501E: $FF
    ld e, a                                       ; $501F: $5F
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
    nop                                           ; $5038: $00
    nop                                           ; $5039: $00
    nop                                           ; $503A: $00
    nop                                           ; $503B: $00
    nop                                           ; $503C: $00
    nop                                           ; $503D: $00
    add b                                         ; $503E: $80
    nop                                           ; $503F: $00
    ld bc, $0300                                  ; $5040: $01 $00 $03
    ld bc, $0307                                  ; $5043: $01 $07 $03
    ld c, $07                                     ; $5046: $0E $07
    ld e, $0F                                     ; $5048: $1E $0F
    inc e                                         ; $504A: $1C
    rrca                                          ; $504B: $0F
    inc a                                         ; $504C: $3C
    rra                                           ; $504D: $1F
    jr c, jr_01E_506F                             ; $504E: $38 $1F

jr_01E_5050:
    ld a, b                                       ; $5050: $78
    ccf                                           ; $5051: $3F
    ld a, a                                       ; $5052: $7F
    ccf                                           ; $5053: $3F
    rst RST_38                                    ; $5054: $FF
    ld a, a                                       ; $5055: $7F
    db $FC                                        ; $5056: $FC
    ld a, a                                       ; $5057: $7F
    ld hl, sp+$7F                                 ; $5058: $F8 $7F
    ldh a, [$FF7F]                                ; $505A: $F0 $7F
    ld hl, sp+$7F                                 ; $505C: $F8 $7F
    db $FC                                        ; $505E: $FC
    ld a, a                                       ; $505F: $7F
    ld a, [hl]                                    ; $5060: $7E
    ccf                                           ; $5061: $3F
    ld a, a                                       ; $5062: $7F
    ccf                                           ; $5063: $3F
    ccf                                           ; $5064: $3F
    rra                                           ; $5065: $1F
    jr c, jr_01E_5087                             ; $5066: $38 $1F

    inc e                                         ; $5068: $1C
    rrca                                          ; $5069: $0F
    ld c, $07                                     ; $506A: $0E $07
    rlca                                          ; $506C: $07
    inc bc                                        ; $506D: $03
    inc bc                                        ; $506E: $03

jr_01E_506F:
    ld bc, $0001                                  ; $506F: $01 $01 $00
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
    ret nz                                        ; $5080: $C0

    nop                                           ; $5081: $00
    ret nz                                        ; $5082: $C0

    add b                                         ; $5083: $80
    add b                                         ; $5084: $80
    nop                                           ; $5085: $00
    add b                                         ; $5086: $80

jr_01E_5087:
    nop                                           ; $5087: $00
    add b                                         ; $5088: $80
    nop                                           ; $5089: $00
    or b                                          ; $508A: $B0
    nop                                           ; $508B: $00
    ld d, b                                       ; $508C: $50
    and b                                         ; $508D: $A0
    jr nz, jr_01E_5050                            ; $508E: $20 $C0

    ld a, h                                       ; $5090: $7C
    add b                                         ; $5091: $80
    ld [bc], a                                    ; $5092: $02
    db $FC                                        ; $5093: $FC
    add h                                         ; $5094: $84
    ld hl, sp+$08                                 ; $5095: $F8 $08
    ldh a, [rNR10]                                ; $5097: $F0 $10
    ldh [$FF38], a                                ; $5099: $E0 $38
    ret nz                                        ; $509B: $C0

    ld c, $F0                                     ; $509C: $0E $F0
    ld a, $E8                                     ; $509E: $3E $E8
    inc d                                         ; $50A0: $14
    ld [$F00E], a                                 ; $50A1: $EA $0E $F0
    add h                                         ; $50A4: $84
    ld hl, sp-$3E                                 ; $50A5: $F8 $C2
    db $FC                                        ; $50A7: $FC
    ld c, $F0                                     ; $50A8: $0E $F0
    ld [hl], h                                    ; $50AA: $74
    adc b                                         ; $50AB: $88
    xor h                                         ; $50AC: $AC
    ld b, b                                       ; $50AD: $40
    ldh [rP1], a                                  ; $50AE: $E0 $00
    add b                                         ; $50B0: $80
    nop                                           ; $50B1: $00
    ret nz                                        ; $50B2: $C0

    add b                                         ; $50B3: $80
    ret nz                                        ; $50B4: $C0

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
    rst RST_38                                    ; $50DA: $FF
    nop                                           ; $50DB: $00
    rst RST_38                                    ; $50DC: $FF
    ld a, a                                       ; $50DD: $7F
    rst RST_38                                    ; $50DE: $FF
    nop                                           ; $50DF: $00
    ret nz                                        ; $50E0: $C0

    nop                                           ; $50E1: $00
    or b                                          ; $50E2: $B0
    ld b, b                                       ; $50E3: $40
    ldh a, [rLCDC]                                ; $50E4: $F0 $40
    and b                                         ; $50E6: $A0
    ld d, b                                       ; $50E7: $50
    ldh a, [rP1]                                  ; $50E8: $F0 $00
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
    nop                                           ; $50FE: $00
    nop                                           ; $50FF: $00
    add hl, sp                                    ; $5100: $39
    ld d, $7F                                     ; $5101: $16 $7F
    jr nc, jr_01E_5182                            ; $5103: $30 $7D

    ld [hl-], a                                   ; $5105: $32
    add hl, sp                                    ; $5106: $39
    ld b, $0D                                     ; $5107: $06 $0D
    ld [bc], a                                    ; $5109: $02
    ld e, $09                                     ; $510A: $1E $09
    rra                                           ; $510C: $1F
    ld c, $1F                                     ; $510D: $0E $1F
    ld c, $1F                                     ; $510F: $0E $1F
    ld b, $3F                                     ; $5111: $06 $3F
    ld [bc], a                                    ; $5113: $02
    ccf                                           ; $5114: $3F
    jr jr_01E_5154                                ; $5115: $18 $3D

    ld a, [de]                                    ; $5117: $1A
    ccf                                           ; $5118: $3F
    nop                                           ; $5119: $00
    ld a, e                                       ; $511A: $7B
    ld sp, $70FB                                  ; $511B: $31 $FB $70
    ld hl, sp+$00                                 ; $511E: $F8 $00
    cp $B8                                        ; $5120: $FE $B8
    cp $DC                                        ; $5122: $FE $DC
    db $FC                                        ; $5124: $FC
    ret z                                         ; $5125: $C8

    add sp, $00                                   ; $5126: $E8 $00
    ld [hl], b                                    ; $5128: $70
    and b                                         ; $5129: $A0
    db $FC                                        ; $512A: $FC
    db $10                                        ; $512B: $10
    rst RST_30                                    ; $512C: $F7
    ld [$EB1F], sp                                ; $512D: $08 $1F $EB
    or a                                          ; $5130: $B7
    ld c, b                                       ; $5131: $48
    ld a, [$DE04]                                 ; $5132: $FA $04 $DE
    nop                                           ; $5135: $00
    xor c                                         ; $5136: $A9
    ld b, [hl]                                    ; $5137: $46
    sbc c                                         ; $5138: $99
    ld h, [hl]                                    ; $5139: $66
    or $80                                        ; $513A: $F6 $80
    ldh a, [rP1]                                  ; $513C: $F0 $00
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
    nop                                           ; $5148: $00
    nop                                           ; $5149: $00
    nop                                           ; $514A: $00
    nop                                           ; $514B: $00
    nop                                           ; $514C: $00
    nop                                           ; $514D: $00
    nop                                           ; $514E: $00
    nop                                           ; $514F: $00
    nop                                           ; $5150: $00
    nop                                           ; $5151: $00
    nop                                           ; $5152: $00
    nop                                           ; $5153: $00

jr_01E_5154:
    nop                                           ; $5154: $00
    nop                                           ; $5155: $00
    nop                                           ; $5156: $00
    nop                                           ; $5157: $00
    nop                                           ; $5158: $00
    nop                                           ; $5159: $00
    jp $BD00                                      ; $515A: $C3 $00 $BD


    ld b, d                                       ; $515D: $42
    ld l, a                                       ; $515E: $6F
    dec d                                         ; $515F: $15
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
    add b                                         ; $517C: $80
    nop                                           ; $517D: $00
    ldh [$FF80], a                                ; $517E: $E0 $80
    nop                                           ; $5180: $00
    nop                                           ; $5181: $00

jr_01E_5182:
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
    ret nz                                        ; $518C: $C0

    nop                                           ; $518D: $00
    ret nz                                        ; $518E: $C0

    add b                                         ; $518F: $80
    add b                                         ; $5190: $80
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
    rst RST_38                                    ; $51A0: $FF
    nop                                           ; $51A1: $00
    rst RST_38                                    ; $51A2: $FF
    ld a, a                                       ; $51A3: $7F
    rst RST_38                                    ; $51A4: $FF
    nop                                           ; $51A5: $00
    nop                                           ; $51A6: $00
    nop                                           ; $51A7: $00
    nop                                           ; $51A8: $00
    nop                                           ; $51A9: $00
    nop                                           ; $51AA: $00
    nop                                           ; $51AB: $00
    nop                                           ; $51AC: $00
    nop                                           ; $51AD: $00
    nop                                           ; $51AE: $00
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
    nop                                           ; $51C0: $00
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
    ret nz                                        ; $51D6: $C0

    nop                                           ; $51D7: $00
    cp a                                          ; $51D8: $BF
    ld b, b                                       ; $51D9: $40
    db $ED                                        ; $51DA: $ED
    ld d, [hl]                                    ; $51DB: $56
    or a                                          ; $51DC: $B7
    ld c, b                                       ; $51DD: $48
    call c, Call_01E_6100                         ; $51DE: $DC $00 $61
    nop                                           ; $51E1: $00
    ld e, [hl]                                    ; $51E2: $5E
    ld hl, $0A37                                  ; $51E3: $21 $37 $0A
    ld [hl], e                                    ; $51E6: $73
    dec l                                         ; $51E7: $2D
    rst RST_38                                    ; $51E8: $FF
    ld h, c                                       ; $51E9: $61
    ei                                            ; $51EA: $FB
    ld h, l                                       ; $51EB: $65
    ld [hl], e                                    ; $51EC: $73
    inc c                                         ; $51ED: $0C
    ld a, [de]                                    ; $51EE: $1A
    dec b                                         ; $51EF: $05
    ld sp, hl                                     ; $51F0: $F9
    ld d, $FE                                     ; $51F1: $16 $FE
    pop af                                        ; $51F3: $F1
    ld a, [$FFF7]                                 ; $51F4: $FA $F7 $FF
    ld h, e                                       ; $51F7: $63
    rst RST_38                                    ; $51F8: $FF
    ld b, b                                       ; $51F9: $40
    ld e, a                                       ; $51FA: $5F
    inc c                                         ; $51FB: $0C
    rra                                           ; $51FC: $1F
    ld c, $0F                                     ; $51FD: $0E $0F
    ld bc, $0080                                  ; $51FF: $01 $80 $00
    ret nz                                        ; $5202: $C0

    nop                                           ; $5203: $00
    ldh a, [$FFC0]                                ; $5204: $F0 $C0

jr_01E_5206:
    db $FC                                        ; $5206: $FC
    ld [hl], b                                    ; $5207: $70
    db $FC                                        ; $5208: $FC
    cp b                                          ; $5209: $B8
    ld hl, sp-$70                                 ; $520A: $F8 $90
    ret nc                                        ; $520C: $D0

    nop                                           ; $520D: $00
    pop bc                                        ; $520E: $C1
    nop                                           ; $520F: $00
    cp $41                                        ; $5210: $FE $41
    ld sp, hl                                     ; $5212: $F9
    or [hl]                                       ; $5213: $B6
    cp $B0                                        ; $5214: $FE $B0
    db $FD                                        ; $5216: $FD
    and b                                         ; $5217: $A0
    cp $01                                        ; $5218: $FE $01
    cp $81                                        ; $521A: $FE $81
    rst RST_08                                    ; $521C: $CF
    jr nc, jr_01E_5206                            ; $521D: $30 $E7

    ld a, [de]                                    ; $521F: $1A
    di                                            ; $5220: $F3
    ld h, b                                       ; $5221: $60
    ldh a, [$FF60]                                ; $5222: $F0 $60
    ldh [rP1], a                                  ; $5224: $E0 $00
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
    nop                                           ; $523E: $00

jr_01E_523F:
    nop                                           ; $523F: $00
    jr nc, jr_01E_5242                            ; $5240: $30 $00

jr_01E_5242:
    ret nc                                        ; $5242: $D0

    jr nz, @+$22                                  ; $5243: $20 $20

    ret nz                                        ; $5245: $C0

    ret nz                                        ; $5246: $C0

    nop                                           ; $5247: $00
    or b                                          ; $5248: $B0
    nop                                           ; $5249: $00
    ret z                                         ; $524A: $C8

    jr nc, @-$36                                  ; $524B: $30 $C8

    jr nc, jr_01E_523F                            ; $524D: $30 $F0

    nop                                           ; $524F: $00
    ldh a, [rLCDC]                                ; $5250: $F0 $40
    ld hl, sp-$30                                 ; $5252: $F8 $D0
    ld hl, sp+$00                                 ; $5254: $F8 $00
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
    ld bc, $0300                                  ; $5260: $01 $00 $03
    ld bc, $0103                                  ; $5263: $01 $03 $01
    ld bc, $0300                                  ; $5266: $01 $00 $03
    ld bc, $0103                                  ; $5269: $01 $03 $01
    ld c, $01                                     ; $526C: $0E $01
    inc de                                        ; $526E: $13
    inc c                                         ; $526F: $0C
    inc l                                         ; $5270: $2C
    inc de                                        ; $5271: $13
    add hl, hl                                    ; $5272: $29
    ld d, $D5                                     ; $5273: $16 $D5
    ld a, [bc]                                    ; $5275: $0A
    or a                                          ; $5276: $B7
    ld c, h                                       ; $5277: $4C
    xor c                                         ; $5278: $A9
    ld d, [hl]                                    ; $5279: $56
    ld h, a                                       ; $527A: $67
    add hl, de                                    ; $527B: $19
    rra                                           ; $527C: $1F
    inc bc                                        ; $527D: $03
    rra                                           ; $527E: $1F
    nop                                           ; $527F: $00
    rst RST_08                                    ; $5280: $CF

jr_01E_5281:
    or l                                          ; $5281: $B5
    rst RST_38                                    ; $5282: $FF
    add [hl]                                      ; $5283: $86
    rst RST_28                                    ; $5284: $EF
    sub [hl]                                      ; $5285: $96
    rst RST_08                                    ; $5286: $CF
    jr nc, @-$13                                  ; $5287: $30 $EB

    sub l                                         ; $5289: $95
    rst RST_30                                    ; $528A: $F7
    ld c, b                                       ; $528B: $48
    rst RST_38                                    ; $528C: $FF
    ld [hl], b                                    ; $528D: $70
    ld hl, sp+$77                                 ; $528E: $F8 $77
    db $FD                                        ; $5290: $FD
    ld [hl-], a                                   ; $5291: $32
    rst RST_38                                    ; $5292: $FF
    db $10                                        ; $5293: $10
    cp $C0                                        ; $5294: $FE $C0
    db $ED                                        ; $5296: $ED
    jp nc, Jump_000_03FC                          ; $5297: $D2 $FC $03

    rst RST_18                                    ; $529A: $DF
    adc h                                         ; $529B: $8C
    rst RST_18                                    ; $529C: $DF
    add b                                         ; $529D: $80
    ret nz                                        ; $529E: $C0

    nop                                           ; $529F: $00
    ldh a, [$FFC0]                                ; $52A0: $F0 $C0
    ldh a, [$FFE0]                                ; $52A2: $F0 $E0
    ldh [rLCDC], a                                ; $52A4: $E0 $40
    ld b, b                                       ; $52A6: $40
    nop                                           ; $52A7: $00
    add b                                         ; $52A8: $80
    nop                                           ; $52A9: $00
    ldh [$FF80], a                                ; $52AA: $E0 $80
    cp [hl]                                       ; $52AC: $BE
    ld b, b                                       ; $52AD: $40
    cp $5C                                        ; $52AE: $FE $5C
    cp h                                          ; $52B0: $BC
    ld b, b                                       ; $52B1: $40
    ret nc                                        ; $52B2: $D0

    jr nz, @-$0E                                  ; $52B3: $20 $F0

    nop                                           ; $52B5: $00
    ld c, b                                       ; $52B6: $48
    jr nc, jr_01E_5281                            ; $52B7: $30 $C8

    jr nc, @-$4E                                  ; $52B9: $30 $B0

    nop                                           ; $52BB: $00
    add b                                         ; $52BC: $80
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
    nop                                           ; $52D4: $00
    nop                                           ; $52D5: $00
    nop                                           ; $52D6: $00
    nop                                           ; $52D7: $00
    nop                                           ; $52D8: $00
    nop                                           ; $52D9: $00
    jp $BD00                                      ; $52DA: $C3 $00 $BD


    ld b, d                                       ; $52DD: $42
    ld l, a                                       ; $52DE: $6F
    dec d                                         ; $52DF: $15
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
    add b                                         ; $52FC: $80
    nop                                           ; $52FD: $00
    ldh [$FF80], a                                ; $52FE: $E0 $80
    nop                                           ; $5300: $00
    nop                                           ; $5301: $00
    nop                                           ; $5302: $00
    nop                                           ; $5303: $00
    nop                                           ; $5304: $00
    nop                                           ; $5305: $00
    nop                                           ; $5306: $00
    nop                                           ; $5307: $00
    nop                                           ; $5308: $00
    nop                                           ; $5309: $00
    nop                                           ; $530A: $00
    nop                                           ; $530B: $00
    nop                                           ; $530C: $00
    nop                                           ; $530D: $00
    ldh a, [rP1]                                  ; $530E: $F0 $00
    adc h                                         ; $5310: $8C
    ld [hl], b                                    ; $5311: $70
    ld b, e                                       ; $5312: $43
    inc a                                         ; $5313: $3C
    ld a, $01                                     ; $5314: $3E $01
    dec bc                                        ; $5316: $0B
    dec b                                         ; $5317: $05
    ld a, $01                                     ; $5318: $3E $01
    ld b, e                                       ; $531A: $43
    inc a                                         ; $531B: $3C
    adc h                                         ; $531C: $8C
    ld [hl], b                                    ; $531D: $70
    ldh a, [rP1]                                  ; $531E: $F0 $00
    nop                                           ; $5320: $00
    nop                                           ; $5321: $00
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
    inc bc                                        ; $532C: $03
    nop                                           ; $532D: $00
    rra                                           ; $532E: $1F
    inc bc                                        ; $532F: $03
    jp hl                                         ; $5330: $E9


    ld d, $DE                                     ; $5331: $16 $DE
    ld hl, $33DC                                  ; $5333: $21 $DC $33
    add a                                         ; $5336: $87
    ld a, b                                       ; $5337: $78
    sbc $30                                       ; $5338: $DE $30
    reti                                          ; $533A: $D9


    ld h, $E7                                     ; $533B: $26 $E7
    dec de                                        ; $533D: $1B
    rra                                           ; $533E: $1F
    nop                                           ; $533F: $00
    nop                                           ; $5340: $00
    nop                                           ; $5341: $00
    ld c, $00                                     ; $5342: $0E $00
    add hl, bc                                    ; $5344: $09
    ld b, $06                                     ; $5345: $06 $06
    ld bc, $0102                                  ; $5347: $01 $02 $01
    ld bc, $C000                                  ; $534A: $01 $00 $C0

jr_01E_534D:
    nop                                           ; $534D: $00
    ret nz                                        ; $534E: $C0

    add b                                         ; $534F: $80
    add b                                         ; $5350: $80
    nop                                           ; $5351: $00
    ld h, b                                       ; $5352: $60
    add b                                         ; $5353: $80
    rla                                           ; $5354: $17
    ldh [rIE], a                                  ; $5355: $E0 $FF
    ld b, $FF                                     ; $5357: $06 $FF
    ld c, $DF                                     ; $5359: $0E $DF
    jr nz, jr_01E_534D                            ; $535B: $20 $F0

    add b                                         ; $535D: $80
    ret nz                                        ; $535E: $C0

    nop                                           ; $535F: $00
    scf                                           ; $5360: $37
    ld a, [bc]                                    ; $5361: $0A
    ld [hl], e                                    ; $5362: $73
    dec l                                         ; $5363: $2D
    rst RST_38                                    ; $5364: $FF
    ld h, c                                       ; $5365: $61
    ei                                            ; $5366: $FB
    ld h, l                                       ; $5367: $65
    di                                            ; $5368: $F3
    inc c                                         ; $5369: $0C
    ld a, [$FF65]                                 ; $536A: $FA $65 $FF
    ld [hl], b                                    ; $536D: $70
    ld a, e                                       ; $536E: $7B
    ld [hl], $7A                                  ; $536F: $36 $7A
    cpl                                           ; $5371: $2F
    ccf                                           ; $5372: $3F
    rlca                                          ; $5373: $07
    rst RST_38                                    ; $5374: $FF
    ld [$E41B], sp                                ; $5375: $08 $1B $E4
    inc sp                                        ; $5378: $33
    call z, $05CB                                 ; $5379: $CC $CB $05
    rrca                                          ; $537C: $0F
    inc bc                                        ; $537D: $03
    rlca                                          ; $537E: $07
    nop                                           ; $537F: $00
    ldh a, [$FFC0]                                ; $5380: $F0 $C0
    db $FC                                        ; $5382: $FC
    ld [hl], b                                    ; $5383: $70
    db $FC                                        ; $5384: $FC
    cp b                                          ; $5385: $B8
    ld hl, sp-$70                                 ; $5386: $F8 $90
    sub b                                         ; $5388: $90
    nop                                           ; $5389: $00
    add b                                         ; $538A: $80
    nop                                           ; $538B: $00
    ret nz                                        ; $538C: $C0

    nop                                           ; $538D: $00
    ret nz                                        ; $538E: $C0

    nop                                           ; $538F: $00
    ldh [rLCDC], a                                ; $5390: $E0 $40
    ldh [rLCDC], a                                ; $5392: $E0 $40
    ldh a, [$FFE0]                                ; $5394: $F0 $E0
    ldh a, [rP1]                                  ; $5396: $F0 $00
    and b                                         ; $5398: $A0
    ld b, b                                       ; $5399: $40
    and b                                         ; $539A: $A0
    ld b, b                                       ; $539B: $40
    sub b                                         ; $539C: $90
    ld h, b                                       ; $539D: $60
    ldh a, [rP1]                                  ; $539E: $F0 $00
    nop                                           ; $53A0: $00
    nop                                           ; $53A1: $00
    nop                                           ; $53A2: $00
    nop                                           ; $53A3: $00
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
    nop                                           ; $53B6: $00
    nop                                           ; $53B7: $00
    nop                                           ; $53B8: $00
    nop                                           ; $53B9: $00
    nop                                           ; $53BA: $00
    nop                                           ; $53BB: $00
    jp $BD00                                      ; $53BC: $C3 $00 $BD


    ld b, d                                       ; $53BF: $42
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
    nop                                           ; $53D6: $00
    nop                                           ; $53D7: $00
    nop                                           ; $53D8: $00
    nop                                           ; $53D9: $00
    nop                                           ; $53DA: $00
    nop                                           ; $53DB: $00
    nop                                           ; $53DC: $00
    nop                                           ; $53DD: $00
    add b                                         ; $53DE: $80
    nop                                           ; $53DF: $00
    jr nz, jr_01E_53E2                            ; $53E0: $20 $00

jr_01E_53E2:
    ld [hl], h                                    ; $53E2: $74
    jr nz, jr_01E_5463                            ; $53E3: $20 $7E

    inc h                                         ; $53E5: $24
    cp $64                                        ; $53E6: $FE $64
    rst RST_38                                    ; $53E8: $FF
    ld [hl], h                                    ; $53E9: $74
    rst RST_38                                    ; $53EA: $FF
    ld a, h                                       ; $53EB: $7C
    rst RST_38                                    ; $53EC: $FF
    ld a, l                                       ; $53ED: $7D
    rst RST_38                                    ; $53EE: $FF
    ld a, a                                       ; $53EF: $7F
    rst RST_38                                    ; $53F0: $FF
    ld a, a                                       ; $53F1: $7F
    rst RST_38                                    ; $53F2: $FF
    ld a, a                                       ; $53F3: $7F
    ld a, a                                       ; $53F4: $7F
    ccf                                           ; $53F5: $3F
    ld a, a                                       ; $53F6: $7F
    ccf                                           ; $53F7: $3F
    ccf                                           ; $53F8: $3F
    rra                                           ; $53F9: $1F
    ccf                                           ; $53FA: $3F
    rra                                           ; $53FB: $1F
    rra                                           ; $53FC: $1F
    rrca                                          ; $53FD: $0F
    rrca                                          ; $53FE: $0F
    rlca                                          ; $53FF: $07
    nop                                           ; $5400: $00
    nop                                           ; $5401: $00
    inc c                                         ; $5402: $0C
    nop                                           ; $5403: $00
    dec bc                                        ; $5404: $0B
    inc b                                         ; $5405: $04
    add [hl]                                      ; $5406: $86
    ld bc, $85CE                                  ; $5407: $01 $CE $85
    rst RST_18                                    ; $540A: $DF
    adc h                                         ; $540B: $8C
    rst RST_18                                    ; $540C: $DF
    adc h                                         ; $540D: $8C
    adc $81                                       ; $540E: $CE $81
    db $E3                                        ; $5410: $E3
    ret nz                                        ; $5411: $C0

    rst RST_20                                    ; $5412: $E7
    jp nz, $E6FF                                  ; $5413: $C2 $FF $E6

    rst RST_38                                    ; $5416: $FF
    ld hl, sp-$01                                 ; $5417: $F8 $FF
    cp $E0                                        ; $5419: $FE $E0
    rst RST_38                                    ; $541B: $FF
    ldh a, [rIE]                                  ; $541C: $F0 $FF
    cp b                                          ; $541E: $B8

jr_01E_541F:
    rst RST_38                                    ; $541F: $FF
    nop                                           ; $5420: $00
    nop                                           ; $5421: $00
    jr nc, jr_01E_5424                            ; $5422: $30 $00

jr_01E_5424:
    ret nc                                        ; $5424: $D0

    jr nz, jr_01E_541F                            ; $5425: $20 $F8

    ld d, b                                       ; $5427: $50
    ld a, h                                       ; $5428: $7C
    xor b                                         ; $5429: $A8
    cp $34                                        ; $542A: $FE $34
    ld a, [hl]                                    ; $542C: $7E
    or h                                          ; $542D: $B4
    ld a, [hl]                                    ; $542E: $7E
    add b                                         ; $542F: $80
    ld e, b                                       ; $5430: $58
    and b                                         ; $5431: $A0
    ld a, $C8                                     ; $5432: $3E $C8
    rst RST_18                                    ; $5434: $DF
    ld [hl], $5F                                  ; $5435: $36 $5F
    ldh a, [$FFF1]                                ; $5437: $F0 $F1
    ld l, $3E                                     ; $5439: $2E $3E
    ret nz                                        ; $543B: $C0

    ld [bc], a                                    ; $543C: $02
    db $FC                                        ; $543D: $FC
    ld a, c                                       ; $543E: $79
    add [hl]                                      ; $543F: $86
    ld hl, sp+$7F                                 ; $5440: $F8 $7F

jr_01E_5442:
    ld a, h                                       ; $5442: $7C
    rra                                           ; $5443: $1F
    rra                                           ; $5444: $1F
    inc bc                                        ; $5445: $03
    inc bc                                        ; $5446: $03
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
    inc bc                                        ; $5460: $03
    db $FC                                        ; $5461: $FC
    nop                                           ; $5462: $00

jr_01E_5463:
    rst RST_38                                    ; $5463: $FF
    nop                                           ; $5464: $00
    rst RST_38                                    ; $5465: $FF
    rst RST_38                                    ; $5466: $FF
    nop                                           ; $5467: $00
    nop                                           ; $5468: $00
    nop                                           ; $5469: $00
    nop                                           ; $546A: $00
    nop                                           ; $546B: $00
    nop                                           ; $546C: $00
    nop                                           ; $546D: $00
    nop                                           ; $546E: $00
    nop                                           ; $546F: $00
    nop                                           ; $5470: $00
    nop                                           ; $5471: $00
    nop                                           ; $5472: $00
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
    jr nc, jr_01E_5442                            ; $5480: $30 $C0

    db $FC                                        ; $5482: $FC
    db $10                                        ; $5483: $10
    ld e, $E4                                     ; $5484: $1E $E4
    ld a, a                                       ; $5486: $7F
    add [hl]                                      ; $5487: $86
    adc a                                         ; $5488: $8F
    nop                                           ; $5489: $00
    nop                                           ; $548A: $00
    nop                                           ; $548B: $00
    nop                                           ; $548C: $00
    nop                                           ; $548D: $00

jr_01E_548E:
    nop                                           ; $548E: $00
    nop                                           ; $548F: $00

jr_01E_5490:
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
    cpl                                           ; $54A0: $2F
    ld d, $3F                                     ; $54A1: $16 $3F
    ld bc, $1B3F                                  ; $54A3: $01 $3F $1B

jr_01E_54A6:
    ccf                                           ; $54A6: $3F
    dec de                                        ; $54A7: $1B
    rra                                           ; $54A8: $1F
    inc c                                         ; $54A9: $0C
    ld e, $0D                                     ; $54AA: $1E $0D
    rrca                                          ; $54AC: $0F
    ld [bc], a                                    ; $54AD: $02
    ld e, $03                                     ; $54AE: $1E $03
    ld a, [hl]                                    ; $54B0: $7E
    ld bc, $6093                                  ; $54B1: $01 $93 $60
    sub e                                         ; $54B4: $93
    ld h, b                                       ; $54B5: $60
    ld l, l                                       ; $54B6: $6D
    ld [bc], a                                    ; $54B7: $02
    inc c                                         ; $54B8: $0C
    inc bc                                        ; $54B9: $03
    ld c, $05                                     ; $54BA: $0E $05
    rrca                                          ; $54BC: $0F
    nop                                           ; $54BD: $00
    nop                                           ; $54BE: $00
    nop                                           ; $54BF: $00
    ret c                                         ; $54C0: $D8

    and b                                         ; $54C1: $A0
    sbc h                                         ; $54C2: $9C
    ld l, b                                       ; $54C3: $68
    cp $0C                                        ; $54C4: $FE $0C
    cp [hl]                                       ; $54C6: $BE
    ld c, h                                       ; $54C7: $4C
    sbc h                                         ; $54C8: $9C
    ld h, b                                       ; $54C9: $60
    or b                                          ; $54CA: $B0
    ld b, b                                       ; $54CB: $40
    jr c, jr_01E_548E                             ; $54CC: $38 $C0

    db $FC                                        ; $54CE: $FC
    jr jr_01E_5490                                ; $54CF: $18 $BF

    ret c                                         ; $54D1: $D8

    db $FD                                        ; $54D2: $FD
    adc d                                         ; $54D3: $8A
    rst RST_08                                    ; $54D4: $CF
    jr nc, jr_01E_54A6                            ; $54D5: $30 $CF

    or [hl]                                       ; $54D7: $B6
    rst RST_38                                    ; $54D8: $FF
    ld c, $9F                                     ; $54D9: $0E $9F
    ld bc, $0183                                  ; $54DB: $01 $83 $01
    inc bc                                        ; $54DE: $03
    nop                                           ; $54DF: $00
    ret nz                                        ; $54E0: $C0

    nop                                           ; $54E1: $00
    ld b, b                                       ; $54E2: $40
    add b                                         ; $54E3: $80
    ld b, b                                       ; $54E4: $40
    add b                                         ; $54E5: $80
    add b                                         ; $54E6: $80
    nop                                           ; $54E7: $00
    nop                                           ; $54E8: $00
    nop                                           ; $54E9: $00
    add b                                         ; $54EA: $80
    nop                                           ; $54EB: $00
    ret nz                                        ; $54EC: $C0

    add b                                         ; $54ED: $80
    ldh [$FFC0], a                                ; $54EE: $E0 $C0
    ldh [rP1], a                                  ; $54F0: $E0 $00
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
    add b                                         ; $5504: $80
    nop                                           ; $5505: $00
    add b                                         ; $5506: $80
    nop                                           ; $5507: $00
    add b                                         ; $5508: $80
    nop                                           ; $5509: $00
    add b                                         ; $550A: $80
    nop                                           ; $550B: $00
    add b                                         ; $550C: $80
    nop                                           ; $550D: $00
    add b                                         ; $550E: $80
    nop                                           ; $550F: $00
    add b                                         ; $5510: $80
    nop                                           ; $5511: $00
    ret nz                                        ; $5512: $C0

    nop                                           ; $5513: $00
    ret nz                                        ; $5514: $C0

    add b                                         ; $5515: $80
    ret nz                                        ; $5516: $C0

    nop                                           ; $5517: $00
    add b                                         ; $5518: $80
    nop                                           ; $5519: $00
    nop                                           ; $551A: $00
    nop                                           ; $551B: $00
    ld h, c                                       ; $551C: $61
    nop                                           ; $551D: $00
    sbc $21                                       ; $551E: $DE $21
    nop                                           ; $5520: $00
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
    add b                                         ; $553C: $80
    nop                                           ; $553D: $00
    add b                                         ; $553E: $80
    nop                                           ; $553F: $00
    inc bc                                        ; $5540: $03
    nop                                           ; $5541: $00
    rrca                                          ; $5542: $0F
    inc bc                                        ; $5543: $03
    ccf                                           ; $5544: $3F
    rrca                                          ; $5545: $0F
    ld a, a                                       ; $5546: $7F
    ccf                                           ; $5547: $3F
    rst RST_38                                    ; $5548: $FF
    ld a, a                                       ; $5549: $7F
    rst RST_38                                    ; $554A: $FF
    rst RST_38                                    ; $554B: $FF
    rst RST_18                                    ; $554C: $DF
    rst RST_38                                    ; $554D: $FF
    ccf                                           ; $554E: $3F
    rst RST_38                                    ; $554F: $FF
    ccf                                           ; $5550: $3F
    rst RST_38                                    ; $5551: $FF
    ld a, a                                       ; $5552: $7F
    rst RST_38                                    ; $5553: $FF
    ld h, a                                       ; $5554: $67
    rst RST_38                                    ; $5555: $FF
    add a                                         ; $5556: $87
    rst RST_38                                    ; $5557: $FF
    dec bc                                        ; $5558: $0B
    rst RST_38                                    ; $5559: $FF
    ld e, e                                       ; $555A: $5B
    and [hl]                                      ; $555B: $A6
    or a                                          ; $555C: $B7
    ld c, b                                       ; $555D: $48
    ld e, l                                       ; $555E: $5D
    ld [bc], a                                    ; $555F: $02
    ld bc, $0300                                  ; $5560: $01 $00 $03
    ld bc, $0307                                  ; $5563: $01 $07 $03
    inc c                                         ; $5566: $0C
    rlca                                          ; $5567: $07
    ld [$1207], sp                                ; $5568: $08 $07 $12
    dec c                                         ; $556B: $0D
    ld d, $09                                     ; $556C: $16 $09
    inc l                                         ; $556E: $2C
    inc de                                        ; $556F: $13
    inc [hl]                                      ; $5570: $34
    inc bc                                        ; $5571: $03
    inc b                                         ; $5572: $04
    inc bc                                        ; $5573: $03
    add hl, bc                                    ; $5574: $09
    ld b, $0A                                     ; $5575: $06 $0A
    inc b                                         ; $5577: $04
    inc d                                         ; $5578: $14
    ld [$0018], sp                                ; $5579: $08 $18 $00
    nop                                           ; $557C: $00
    nop                                           ; $557D: $00
    nop                                           ; $557E: $00
    nop                                           ; $557F: $00
    nop                                           ; $5580: $00
    nop                                           ; $5581: $00
    inc bc                                        ; $5582: $03
    nop                                           ; $5583: $00
    inc bc                                        ; $5584: $03
    ld bc, $0103                                  ; $5585: $01 $03 $01
    inc bc                                        ; $5588: $03
    ld bc, $0103                                  ; $5589: $01 $03 $01
    inc bc                                        ; $558C: $03
    ld bc, $0103                                  ; $558D: $01 $03 $01
    inc bc                                        ; $5590: $03
    ld bc, $0007                                  ; $5591: $01 $07 $00
    dec b                                         ; $5594: $05
    inc bc                                        ; $5595: $03
    rlca                                          ; $5596: $07
    nop                                           ; $5597: $00
    inc b                                         ; $5598: $04
    inc bc                                        ; $5599: $03
    dec b                                         ; $559A: $05
    ld [bc], a                                    ; $559B: $02
    rlca                                          ; $559C: $07
    nop                                           ; $559D: $00
    dec b                                         ; $559E: $05
    ld [bc], a                                    ; $559F: $02
    ccf                                           ; $55A0: $3F
    rra                                           ; $55A1: $1F
    ccf                                           ; $55A2: $3F
    rra                                           ; $55A3: $1F
    ccf                                           ; $55A4: $3F
    rra                                           ; $55A5: $1F
    ld a, a                                       ; $55A6: $7F
    ccf                                           ; $55A7: $3F
    ld a, a                                       ; $55A8: $7F
    ccf                                           ; $55A9: $3F
    ld a, a                                       ; $55AA: $7F
    ccf                                           ; $55AB: $3F
    ld a, a                                       ; $55AC: $7F
    ccf                                           ; $55AD: $3F
    rst RST_38                                    ; $55AE: $FF
    ld a, a                                       ; $55AF: $7F
    rst RST_38                                    ; $55B0: $FF
    ld a, a                                       ; $55B1: $7F
    rst RST_38                                    ; $55B2: $FF
    ld a, a                                       ; $55B3: $7F

jr_01E_55B4:
    rst RST_38                                    ; $55B4: $FF
    ld a, a                                       ; $55B5: $7F
    rst RST_38                                    ; $55B6: $FF
    ld a, a                                       ; $55B7: $7F
    rst RST_38                                    ; $55B8: $FF
    ld a, [hl]                                    ; $55B9: $7E
    cp $78                                        ; $55BA: $FE $78
    ld hl, sp+$60                                 ; $55BC: $F8 $60
    ldh [rP1], a                                  ; $55BE: $E0 $00
    call c, $FFEB                                 ; $55C0: $DC $EB $FF
    ret c                                         ; $55C3: $D8

    cp $D9                                        ; $55C4: $FE $D9
    db $FC                                        ; $55C6: $FC
    db $E3                                        ; $55C7: $E3
    or $F9                                        ; $55C8: $F6 $F9
    ldh a, [c]                                    ; $55CA: $F2
    db $FD                                        ; $55CB: $FD
    ei                                            ; $55CC: $FB
    cp $FF                                        ; $55CD: $FE $FF
    cp $FF                                        ; $55CF: $FE $FF
    ei                                            ; $55D1: $FB
    rst RST_38                                    ; $55D2: $FF
    ldh [$FFF2], a                                ; $55D3: $E0 $F2
    pop hl                                        ; $55D5: $E1
    pop af                                        ; $55D6: $F1
    add b                                         ; $55D7: $80
    and c                                         ; $55D8: $A1
    ld b, b                                       ; $55D9: $40
    ld h, c                                       ; $55DA: $61
    nop                                           ; $55DB: $00
    ld bc, $0000                                  ; $55DC: $01 $00 $00
    nop                                           ; $55DF: $00
    db $FD                                        ; $55E0: $FD
    ld a, [de]                                    ; $55E1: $1A
    cp l                                          ; $55E2: $BD
    ld c, d                                       ; $55E3: $4A
    ld l, [hl]                                    ; $55E4: $6E
    or b                                          ; $55E5: $B0
    db $EC                                        ; $55E6: $EC
    db $10                                        ; $55E7: $10
    ld hl, sp+$60                                 ; $55E8: $F8 $60
    ld hl, sp+$60                                 ; $55EA: $F8 $60
    db $E4                                        ; $55EC: $E4
    ld e, b                                       ; $55ED: $58
    db $E4                                        ; $55EE: $E4

jr_01E_55EF:
    jr jr_01E_55EF                                ; $55EF: $18 $FE

    call nz, $DCFE                                ; $55F1: $C4 $FE $DC
    db $FC                                        ; $55F4: $FC
    sbc b                                         ; $55F5: $98
    ld hl, sp+$00                                 ; $55F6: $F8 $00
    ld a, b                                       ; $55F8: $78
    jr nc, @+$7A                                  ; $55F9: $30 $78

    jr nc, jr_01E_566D                            ; $55FB: $30 $70

    jr nz, jr_01E_565F                            ; $55FD: $20 $60

    nop                                           ; $55FF: $00
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
    jr jr_01E_5612                                ; $5610: $18 $00

jr_01E_5612:
    ld a, h                                       ; $5612: $7C

jr_01E_5613:
    jr jr_01E_5613                                ; $5613: $18 $FE

    inc a                                         ; $5615: $3C
    cp [hl]                                       ; $5616: $BE
    ld e, b                                       ; $5617: $58
    ld hl, sp-$60                                 ; $5618: $F8 $A0
    ld hl, sp+$40                                 ; $561A: $F8 $40
    ld a, [$7D70]                                 ; $561C: $FA $70 $7D
    and d                                         ; $561F: $A2
    nop                                           ; $5620: $00
    nop                                           ; $5621: $00
    nop                                           ; $5622: $00
    nop                                           ; $5623: $00
    nop                                           ; $5624: $00
    nop                                           ; $5625: $00
    ld b, $00                                     ; $5626: $06 $00
    ld a, [de]                                    ; $5628: $1A
    inc b                                         ; $5629: $04
    inc h                                         ; $562A: $24
    jr jr_01E_5674                                ; $562B: $18 $47

    jr c, jr_01E_55B4                             ; $562D: $38 $85

    ld a, d                                       ; $562F: $7A
    add d                                         ; $5630: $82
    db $FC                                        ; $5631: $FC
    inc b                                         ; $5632: $04
    ld hl, sp+$04                                 ; $5633: $F8 $04
    ld hl, sp+$28                                 ; $5635: $F8 $28
    ldh a, [rOBP0]                                ; $5637: $F0 $48
    ldh a, [$FFDD]                                ; $5639: $F0 $DD
    ldh [$FFD7], a                                ; $563B: $E0 $D7
    add sp, -$33                                  ; $563D: $E8 $CD
    ldh a, [c]                                    ; $563F: $F2
    nop                                           ; $5640: $00
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
    ld bc, $0300                                  ; $5650: $01 $00 $03
    ld bc, $0307                                  ; $5653: $01 $07 $03
    rlca                                          ; $5656: $07
    inc bc                                        ; $5657: $03
    ld c, $07                                     ; $5658: $0E $07
    ld c, $07                                     ; $565A: $0E $07
    rra                                           ; $565C: $1F
    rrca                                          ; $565D: $0F
    rra                                           ; $565E: $1F

jr_01E_565F:
    rrca                                          ; $565F: $0F
    db $FD                                        ; $5660: $FD
    ld a, [de]                                    ; $5661: $1A
    cp l                                          ; $5662: $BD
    ld c, d                                       ; $5663: $4A
    ld l, [hl]                                    ; $5664: $6E
    or b                                          ; $5665: $B0
    db $EC                                        ; $5666: $EC
    db $10                                        ; $5667: $10
    ld hl, sp+$60                                 ; $5668: $F8 $60
    ld hl, sp+$60                                 ; $566A: $F8 $60
    db $E4                                        ; $566C: $E4

jr_01E_566D:
    ld e, b                                       ; $566D: $58
    db $E4                                        ; $566E: $E4

jr_01E_566F:
    jr jr_01E_566F                                ; $566F: $18 $FE

    call nz, $DCFE                                ; $5671: $C4 $FE $DC

jr_01E_5674:
    db $FC                                        ; $5674: $FC
    sbc b                                         ; $5675: $98
    ld hl, sp+$00                                 ; $5676: $F8 $00
    ld a, b                                       ; $5678: $78
    jr nc, jr_01E_56F3                            ; $5679: $30 $78

    jr nc, @+$72                                  ; $567B: $30 $70

    jr nz, jr_01E_56DF                            ; $567D: $20 $60

    nop                                           ; $567F: $00
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
    nop                                           ; $568A: $00
    nop                                           ; $568B: $00
    nop                                           ; $568C: $00
    nop                                           ; $568D: $00
    nop                                           ; $568E: $00
    nop                                           ; $568F: $00
    jr jr_01E_5692                                ; $5690: $18 $00

jr_01E_5692:
    ld a, h                                       ; $5692: $7C

jr_01E_5693:
    jr jr_01E_5693                                ; $5693: $18 $FE

    inc a                                         ; $5695: $3C
    cp [hl]                                       ; $5696: $BE
    ld e, b                                       ; $5697: $58
    ld hl, sp-$60                                 ; $5698: $F8 $A0
    ld hl, sp+$40                                 ; $569A: $F8 $40
    ld a, [$7D70]                                 ; $569C: $FA $70 $7D
    and d                                         ; $569F: $A2
    add hl, de                                    ; $56A0: $19
    nop                                           ; $56A1: $00
    rla                                           ; $56A2: $17
    ld [$020D], sp                                ; $56A3: $08 $0D $02
    inc e                                         ; $56A6: $1C
    dec bc                                        ; $56A7: $0B
    ccf                                           ; $56A8: $3F
    jr jr_01E_56E9                                ; $56A9: $18 $3E

    add hl, de                                    ; $56AB: $19
    inc e                                         ; $56AC: $1C
    inc bc                                        ; $56AD: $03
    ld b, $01                                     ; $56AE: $06 $01
    ld c, $05                                     ; $56B0: $0E $05
    rra                                           ; $56B2: $1F
    ld c, $1F                                     ; $56B3: $0E $1F
    ld b, $E7                                     ; $56B5: $06 $E7
    dec de                                        ; $56B7: $1B
    rra                                           ; $56B8: $1F
    ldh [$FFD2], a                                ; $56B9: $E0 $D2
    ld hl, $80F1                                  ; $56BB: $21 $F1 $80
    and c                                         ; $56BE: $A1
    ld b, b                                       ; $56BF: $40
    ld h, c                                       ; $56C0: $61
    nop                                           ; $56C1: $00
    ld bc, $0000                                  ; $56C2: $01 $00 $00
    nop                                           ; $56C5: $00
    nop                                           ; $56C6: $00
    nop                                           ; $56C7: $00
    nop                                           ; $56C8: $00
    nop                                           ; $56C9: $00
    nop                                           ; $56CA: $00
    nop                                           ; $56CB: $00
    nop                                           ; $56CC: $00
    nop                                           ; $56CD: $00
    nop                                           ; $56CE: $00
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

jr_01E_56DF:
    nop                                           ; $56DF: $00
    inc bc                                        ; $56E0: $03
    nop                                           ; $56E1: $00
    dec b                                         ; $56E2: $05

jr_01E_56E3:
    ld [bc], a                                    ; $56E3: $02
    rlca                                          ; $56E4: $07
    ld bc, $061F                                  ; $56E5: $01 $1F $06
    ld a, [hl]                                    ; $56E8: $7E

jr_01E_56E9:
    jr jr_01E_56E3                                ; $56E9: $18 $F8

    ld h, b                                       ; $56EB: $60
    ldh [rP1], a                                  ; $56EC: $E0 $00
    nop                                           ; $56EE: $00
    nop                                           ; $56EF: $00
    nop                                           ; $56F0: $00
    nop                                           ; $56F1: $00
    nop                                           ; $56F2: $00

jr_01E_56F3:
    nop                                           ; $56F3: $00
    nop                                           ; $56F4: $00
    nop                                           ; $56F5: $00
    nop                                           ; $56F6: $00
    nop                                           ; $56F7: $00
    nop                                           ; $56F8: $00
    nop                                           ; $56F9: $00
    nop                                           ; $56FA: $00
    nop                                           ; $56FB: $00

jr_01E_56FC:
    nop                                           ; $56FC: $00
    nop                                           ; $56FD: $00
    nop                                           ; $56FE: $00
    nop                                           ; $56FF: $00
    nop                                           ; $5700: $00
    nop                                           ; $5701: $00
    nop                                           ; $5702: $00
    nop                                           ; $5703: $00
    inc bc                                        ; $5704: $03
    nop                                           ; $5705: $00
    rrca                                          ; $5706: $0F
    inc bc                                        ; $5707: $03
    rrca                                          ; $5708: $0F
    rlca                                          ; $5709: $07
    rlca                                          ; $570A: $07
    ld [bc], a                                    ; $570B: $02
    rlca                                          ; $570C: $07
    ld bc, $07DF                                  ; $570D: $01 $DF $07
    cp a                                          ; $5710: $BF
    ld b, a                                       ; $5711: $47
    ld b, a                                       ; $5712: $47
    ld a, [hl-]                                   ; $5713: $3A
    rst RST_18                                    ; $5714: $DF
    ld [hl+], a                                   ; $5715: $22
    rst RST_38                                    ; $5716: $FF
    nop                                           ; $5717: $00
    cp [hl]                                       ; $5718: $BE
    ld d, l                                       ; $5719: $55
    ld a, a                                       ; $571A: $7F
    ld d, $3F                                     ; $571B: $16 $3F
    add hl, de                                    ; $571D: $19
    dec e                                         ; $571E: $1D
    nop                                           ; $571F: $00
    ld h, c                                       ; $5720: $61
    nop                                           ; $5721: $00
    sbc $21                                       ; $5722: $DE $21
    ei                                            ; $5724: $FB
    call nc, $ADF3                                ; $5725: $D4 $F3 $AD
    rst RST_38                                    ; $5728: $FF
    ld h, c                                       ; $5729: $61
    rst RST_30                                    ; $572A: $F7
    ld l, c                                       ; $572B: $69
    di                                            ; $572C: $F3
    inc c                                         ; $572D: $0C
    sub $A8                                       ; $572E: $D6 $A8
    db $E4                                        ; $5730: $E4
    sbc b                                         ; $5731: $98
    cp b                                          ; $5732: $B8
    ld h, b                                       ; $5733: $60
    xor b                                         ; $5734: $A8
    ldh a, [$FFF0]                                ; $5735: $F0 $F0
    ld h, b                                       ; $5737: $60
    ld l, b                                       ; $5738: $68
    sub b                                         ; $5739: $90
    jr c, jr_01E_56FC                             ; $573A: $38 $C0

    ldh a, [rP1]                                  ; $573C: $F0 $00
    ret nz                                        ; $573E: $C0

    nop                                           ; $573F: $00
    nop                                           ; $5740: $00
    nop                                           ; $5741: $00
    nop                                           ; $5742: $00
    nop                                           ; $5743: $00
    nop                                           ; $5744: $00
    nop                                           ; $5745: $00
    nop                                           ; $5746: $00
    nop                                           ; $5747: $00
    nop                                           ; $5748: $00
    nop                                           ; $5749: $00
    nop                                           ; $574A: $00
    nop                                           ; $574B: $00
    nop                                           ; $574C: $00
    nop                                           ; $574D: $00
    nop                                           ; $574E: $00
    nop                                           ; $574F: $00
    add b                                         ; $5750: $80
    nop                                           ; $5751: $00
    add b                                         ; $5752: $80
    nop                                           ; $5753: $00
    nop                                           ; $5754: $00
    nop                                           ; $5755: $00
    add b                                         ; $5756: $80
    nop                                           ; $5757: $00
    ret nz                                        ; $5758: $C0

    add b                                         ; $5759: $80
    ret nz                                        ; $575A: $C0

    add b                                         ; $575B: $80
    add b                                         ; $575C: $80
    nop                                           ; $575D: $00
    nop                                           ; $575E: $00
    nop                                           ; $575F: $00
    nop                                           ; $5760: $00
    nop                                           ; $5761: $00
    nop                                           ; $5762: $00
    nop                                           ; $5763: $00
    nop                                           ; $5764: $00
    nop                                           ; $5765: $00
    inc bc                                        ; $5766: $03
    nop                                           ; $5767: $00
    ld [bc], a                                    ; $5768: $02
    ld bc, $0102                                  ; $5769: $01 $02 $01
    inc bc                                        ; $576C: $03
    nop                                           ; $576D: $00
    rlca                                          ; $576E: $07
    nop                                           ; $576F: $00
    add hl, bc                                    ; $5770: $09
    ld b, $0B                                     ; $5771: $06 $0B
    inc b                                         ; $5773: $04
    ccf                                           ; $5774: $3F
    inc bc                                        ; $5775: $03
    ld a, a                                       ; $5776: $7F
    scf                                           ; $5777: $37
    ld a, a                                       ; $5778: $7F
    jr nc, @+$01                                  ; $5779: $30 $FF

    ld l, b                                       ; $577B: $68
    ld hl, sp+$10                                 ; $577C: $F8 $10
    jr nc, jr_01E_5780                            ; $577E: $30 $00

jr_01E_5780:
    ld b, $00                                     ; $5780: $06 $00
    rrca                                          ; $5782: $0F
    ld b, $1F                                     ; $5783: $06 $1F
    rrca                                          ; $5785: $0F
    rrca                                          ; $5786: $0F
    ld [bc], a                                    ; $5787: $02
    cp a                                          ; $5788: $BF
    nop                                           ; $5789: $00
    rst RST_38                                    ; $578A: $FF
    add hl, de                                    ; $578B: $19
    ccf                                           ; $578C: $3F
    db $DB                                        ; $578D: $DB
    rst RST_18                                    ; $578E: $DF
    dec l                                         ; $578F: $2D
    rst RST_38                                    ; $5790: $FF
    inc c                                         ; $5791: $0C
    rst RST_38                                    ; $5792: $FF
    ld [bc], a                                    ; $5793: $02
    sbc h                                         ; $5794: $9C
    ld h, a                                       ; $5795: $67
    adc a                                         ; $5796: $8F
    ld [hl], e                                    ; $5797: $73
    ei                                            ; $5798: $FB
    add b                                         ; $5799: $80
    ldh a, [rP1]                                  ; $579A: $F0 $00
    nop                                           ; $579C: $00
    nop                                           ; $579D: $00
    nop                                           ; $579E: $00
    nop                                           ; $579F: $00
    nop                                           ; $57A0: $00
    nop                                           ; $57A1: $00
    nop                                           ; $57A2: $00
    nop                                           ; $57A3: $00
    and $00                                       ; $57A4: $E6 $00
    ld a, d                                       ; $57A6: $7A
    add h                                         ; $57A7: $84
    db $EC                                        ; $57A8: $EC
    ld d, b                                       ; $57A9: $50
    rst RST_08                                    ; $57AA: $CF
    or h                                          ; $57AB: $B4
    rst RST_38                                    ; $57AC: $FF
    add a                                         ; $57AD: $87
    sbc a                                         ; $57AE: $9F
    ld h, d                                       ; $57AF: $62
    jp z, Jump_01E_5830                           ; $57B0: $CA $30 $58

    and b                                         ; $57B3: $A0
    sub b                                         ; $57B4: $90
    ld h, b                                       ; $57B5: $60
    ldh [$FF80], a                                ; $57B6: $E0 $80
    add b                                         ; $57B8: $80
    nop                                           ; $57B9: $00
    nop                                           ; $57BA: $00
    nop                                           ; $57BB: $00
    nop                                           ; $57BC: $00
    nop                                           ; $57BD: $00
    nop                                           ; $57BE: $00
    nop                                           ; $57BF: $00
    add b                                         ; $57C0: $80
    nop                                           ; $57C1: $00
    nop                                           ; $57C2: $00
    nop                                           ; $57C3: $00
    nop                                           ; $57C4: $00
    nop                                           ; $57C5: $00
    nop                                           ; $57C6: $00
    nop                                           ; $57C7: $00
    nop                                           ; $57C8: $00
    nop                                           ; $57C9: $00
    nop                                           ; $57CA: $00
    nop                                           ; $57CB: $00
    nop                                           ; $57CC: $00
    nop                                           ; $57CD: $00
    nop                                           ; $57CE: $00
    nop                                           ; $57CF: $00
    nop                                           ; $57D0: $00
    nop                                           ; $57D1: $00
    nop                                           ; $57D2: $00
    nop                                           ; $57D3: $00
    nop                                           ; $57D4: $00
    nop                                           ; $57D5: $00
    nop                                           ; $57D6: $00
    nop                                           ; $57D7: $00
    nop                                           ; $57D8: $00
    nop                                           ; $57D9: $00
    nop                                           ; $57DA: $00
    nop                                           ; $57DB: $00
    nop                                           ; $57DC: $00
    nop                                           ; $57DD: $00
    nop                                           ; $57DE: $00
    nop                                           ; $57DF: $00
    add b                                         ; $57E0: $80
    nop                                           ; $57E1: $00
    ld b, b                                       ; $57E2: $40
    add b                                         ; $57E3: $80
    add [hl]                                      ; $57E4: $86
    nop                                           ; $57E5: $00
    ld sp, hl                                     ; $57E6: $F9
    ld b, $F9                                     ; $57E7: $06 $F9
    ld b, $D6                                     ; $57E9: $06 $D6
    jr nz, @+$22                                  ; $57EB: $20 $20

    ret nz                                        ; $57ED: $C0

    and b                                         ; $57EE: $A0
    ld b, b                                       ; $57EF: $40
    ldh [rP1], a                                  ; $57F0: $E0 $00
    ret nz                                        ; $57F2: $C0

    add b                                         ; $57F3: $80
    ret nz                                        ; $57F4: $C0

    add b                                         ; $57F5: $80
    ldh [$FF80], a                                ; $57F6: $E0 $80
    ldh [rLCDC], a                                ; $57F8: $E0 $40
    ldh a, [$FF60]                                ; $57FA: $F0 $60
    ld [hl], b                                    ; $57FC: $70
    jr nz, jr_01E_582F                            ; $57FD: $20 $30

    nop                                           ; $57FF: $00
    cp [hl]                                       ; $5800: $BE
    ld e, h                                       ; $5801: $5C
    rst RST_38                                    ; $5802: $FF
    sbc [hl]                                      ; $5803: $9E
    rst RST_38                                    ; $5804: $FF
    ld b, b                                       ; $5805: $40
    rst RST_38                                    ; $5806: $FF
    ld [hl], b                                    ; $5807: $70
    ld a, a                                       ; $5808: $7F
    or b                                          ; $5809: $B0
    rst RST_38                                    ; $580A: $FF
    ld [$5EBF], sp                                ; $580B: $08 $BF $5E
    ld a, a                                       ; $580E: $7F
    sbc [hl]                                      ; $580F: $9E
    sbc $65                                       ; $5810: $DE $65
    ld e, a                                       ; $5812: $5F
    db $F4                                        ; $5813: $F4
    rst RST_38                                    ; $5814: $FF
    ld h, b                                       ; $5815: $60
    ld h, a                                       ; $5816: $67
    ld a, [de]                                    ; $5817: $1A
    ld c, a                                       ; $5818: $4F
    ld [hl], $3F                                  ; $5819: $36 $3F
    ld bc, $0007                                  ; $581B: $01 $07 $00
    ld bc, $0000                                  ; $581E: $01 $00 $00
    nop                                           ; $5821: $00
    nop                                           ; $5822: $00
    nop                                           ; $5823: $00
    nop                                           ; $5824: $00
    nop                                           ; $5825: $00
    nop                                           ; $5826: $00
    nop                                           ; $5827: $00
    add hl, de                                    ; $5828: $19
    nop                                           ; $5829: $00
    rla                                           ; $582A: $17
    ld [$020D], sp                                ; $582B: $08 $0D $02
    inc a                                         ; $582E: $3C

jr_01E_582F:
    dec bc                                        ; $582F: $0B

Jump_01E_5830:
    ld a, a                                       ; $5830: $7F
    jr c, jr_01E_5871                             ; $5831: $38 $3E

    ld de, $031C                                  ; $5833: $11 $1C $03
    ld b, $01                                     ; $5836: $06 $01
    ld [bc], a                                    ; $5838: $02
    ld bc, $0003                                  ; $5839: $01 $03 $00
    inc bc                                        ; $583C: $03
    nop                                           ; $583D: $00
    ld bc, $0000                                  ; $583E: $01 $00 $00
    nop                                           ; $5841: $00
    nop                                           ; $5842: $00
    nop                                           ; $5843: $00
    nop                                           ; $5844: $00
    nop                                           ; $5845: $00
    nop                                           ; $5846: $00
    nop                                           ; $5847: $00
    nop                                           ; $5848: $00
    nop                                           ; $5849: $00
    nop                                           ; $584A: $00
    nop                                           ; $584B: $00
    nop                                           ; $584C: $00
    nop                                           ; $584D: $00
    nop                                           ; $584E: $00
    nop                                           ; $584F: $00
    nop                                           ; $5850: $00
    nop                                           ; $5851: $00
    nop                                           ; $5852: $00
    nop                                           ; $5853: $00

jr_01E_5854:
    nop                                           ; $5854: $00
    nop                                           ; $5855: $00
    nop                                           ; $5856: $00
    nop                                           ; $5857: $00
    nop                                           ; $5858: $00
    nop                                           ; $5859: $00
    nop                                           ; $585A: $00
    nop                                           ; $585B: $00
    nop                                           ; $585C: $00
    nop                                           ; $585D: $00
    db $FC                                        ; $585E: $FC
    nop                                           ; $585F: $00
    rrca                                          ; $5860: $0F
    inc b                                         ; $5861: $04
    dec b                                         ; $5862: $05
    nop                                           ; $5863: $00
    nop                                           ; $5864: $00
    nop                                           ; $5865: $00

jr_01E_5866:
    nop                                           ; $5866: $00
    nop                                           ; $5867: $00
    ld bc, $0300                                  ; $5868: $01 $00 $03
    nop                                           ; $586B: $00
    ld l, l                                       ; $586C: $6D
    ld [bc], a                                    ; $586D: $02
    sbc a                                         ; $586E: $9F
    ld h, b                                       ; $586F: $60
    sbc a                                         ; $5870: $9F

jr_01E_5871:
    ld h, b                                       ; $5871: $60
    ld h, e                                       ; $5872: $63
    nop                                           ; $5873: $00
    rlca                                          ; $5874: $07
    ld [bc], a                                    ; $5875: $02
    rlca                                          ; $5876: $07
    inc bc                                        ; $5877: $03
    rlca                                          ; $5878: $07
    nop                                           ; $5879: $00
    rrca                                          ; $587A: $0F
    ld b, $1F                                     ; $587B: $06 $1F
    inc c                                         ; $587D: $0C
    inc e                                         ; $587E: $1C
    nop                                           ; $587F: $00
    rst RST_38                                    ; $5880: $FF
    ld d, $3F                                     ; $5881: $16 $3F
    add $AF                                       ; $5883: $C6 $AF
    ld d, b                                       ; $5885: $50
    sbc [hl]                                      ; $5886: $9E
    ld l, h                                       ; $5887: $6C
    rst RST_38                                    ; $5888: $FF
    ld c, $EF                                     ; $5889: $0E $EF
    sub d                                         ; $588B: $92
    jp $FEBC                                      ; $588C: $C3 $BC $FE


    nop                                           ; $588F: $00
    db $FC                                        ; $5890: $FC
    nop                                           ; $5891: $00
    jr c, jr_01E_5854                             ; $5892: $38 $C0

    jr c, jr_01E_5866                             ; $5894: $38 $D0

    db $FC                                        ; $5896: $FC
    jr c, @+$40                                   ; $5897: $38 $3E

    inc b                                         ; $5899: $04
    ld e, $0C                                     ; $589A: $1E $0C
    ld c, $00                                     ; $589C: $0E $00
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
    ld b, $00                                     ; $58B6: $06 $00
    dec b                                         ; $58B8: $05
    ld [bc], a                                    ; $58B9: $02
    inc bc                                        ; $58BA: $03
    nop                                           ; $58BB: $00
    rrca                                          ; $58BC: $0F
    ld [bc], a                                    ; $58BD: $02
    rra                                           ; $58BE: $1F
    ld c, $00                                     ; $58BF: $0E $00
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

jr_01E_58CE:
    nop                                           ; $58CE: $00
    nop                                           ; $58CF: $00
    nop                                           ; $58D0: $00
    nop                                           ; $58D1: $00
    nop                                           ; $58D2: $00
    nop                                           ; $58D3: $00
    nop                                           ; $58D4: $00
    nop                                           ; $58D5: $00

jr_01E_58D6:
    jr jr_01E_58D8                                ; $58D6: $18 $00

jr_01E_58D8:
    add sp, $10                                   ; $58D8: $E8 $10
    ld a, h                                       ; $58DA: $7C
    xor b                                         ; $58DB: $A8
    ld a, [hl]                                    ; $58DC: $7E
    xor h                                         ; $58DD: $AC
    rst RST_38                                    ; $58DE: $FF
    halt                                          ; $58DF: $76
    rst RST_38                                    ; $58E0: $FF
    ld h, c                                       ; $58E1: $61
    ei                                            ; $58E2: $FB
    ld h, l                                       ; $58E3: $65
    ld [hl], e                                    ; $58E4: $73
    inc c                                         ; $58E5: $0C
    ld a, [de]                                    ; $58E6: $1A
    dec b                                         ; $58E7: $05

jr_01E_58E8:
    dec a                                         ; $58E8: $3D
    ld [de], a                                    ; $58E9: $12
    ccf                                           ; $58EA: $3F
    inc e                                         ; $58EB: $1C
    ld a, $11                                     ; $58EC: $3E $11
    inc de                                        ; $58EE: $13
    inc c                                         ; $58EF: $0C
    inc c                                         ; $58F0: $0C
    inc bc                                        ; $58F1: $03
    rra                                           ; $58F2: $1F
    nop                                           ; $58F3: $00
    dec de                                        ; $58F4: $1B
    inc b                                         ; $58F5: $04
    add hl, sp                                    ; $58F6: $39
    ld b, $3E                                     ; $58F7: $06 $3E
    db $10                                        ; $58F9: $10
    ld a, h                                       ; $58FA: $7C
    jr c, jr_01E_5975                             ; $58FB: $38 $78

    nop                                           ; $58FD: $00
    nop                                           ; $58FE: $00
    nop                                           ; $58FF: $00
    db $FC                                        ; $5900: $FC
    cp b                                          ; $5901: $B8
    ld hl, sp-$70                                 ; $5902: $F8 $90
    ret nc                                        ; $5904: $D0

    nop                                           ; $5905: $00
    ldh [rLCDC], a                                ; $5906: $E0 $40
    ldh a, [rNR41]                                ; $5908: $F0 $20
    ldh a, [rNR41]                                ; $590A: $F0 $20
    jr nc, jr_01E_58CE                            ; $590C: $30 $C0

    ld [hl], b                                    ; $590E: $70
    add b                                         ; $590F: $80
    ld hl, sp+$40                                 ; $5910: $F8 $40
    ld hl, sp+$00                                 ; $5912: $F8 $00
    jr c, jr_01E_58D6                             ; $5914: $38 $C0

    jr c, jr_01E_58E8                             ; $5916: $38 $D0

    db $FC                                        ; $5918: $FC
    jr nc, jr_01E_5999                            ; $5919: $30 $7E

    inc b                                         ; $591B: $04
    rra                                           ; $591C: $1F
    ld c, $1F                                     ; $591D: $0E $1F
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
    ld h, c                                       ; $5938: $61
    nop                                           ; $5939: $00
    ld e, [hl]                                    ; $593A: $5E
    ld hl, $0A37                                  ; $593B: $21 $37 $0A
    ld [hl], e                                    ; $593E: $73
    dec l                                         ; $593F: $2D
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
    add b                                         ; $5958: $80
    nop                                           ; $5959: $00
    ret nz                                        ; $595A: $C0

    nop                                           ; $595B: $00
    ldh a, [$FFC0]                                ; $595C: $F0 $C0
    db $FC                                        ; $595E: $FC
    ld [hl], b                                    ; $595F: $70
    ld a, $19                                     ; $5960: $3E $19
    ld e, $0D                                     ; $5962: $1E $0D
    ld a, l                                       ; $5964: $7D
    ld a, [bc]                                    ; $5965: $0A
    sbc l                                         ; $5966: $9D
    ld h, e                                       ; $5967: $63
    sbc a                                         ; $5968: $9F
    ld h, c                                       ; $5969: $61
    ld h, e                                       ; $596A: $63
    nop                                           ; $596B: $00
    dec b                                         ; $596C: $05
    ld [bc], a                                    ; $596D: $02
    dec b                                         ; $596E: $05
    ld [bc], a                                    ; $596F: $02
    inc c                                         ; $5970: $0C
    inc bc                                        ; $5971: $03
    rrca                                          ; $5972: $0F
    inc b                                         ; $5973: $04
    rrca                                          ; $5974: $0F

jr_01E_5975:
    ld b, $0E                                     ; $5975: $06 $0E
    inc b                                         ; $5977: $04
    ld e, $08                                     ; $5978: $1E $08
    ld a, $1C                                     ; $597A: $3E $1C
    inc a                                         ; $597C: $3C
    nop                                           ; $597D: $00
    nop                                           ; $597E: $00
    nop                                           ; $597F: $00
    cp l                                          ; $5980: $BD
    ld c, d                                       ; $5981: $4A
    ld a, l                                       ; $5982: $7D
    sbc d                                         ; $5983: $9A
    rst RST_38                                    ; $5984: $FF
    inc a                                         ; $5985: $3C
    ld a, a                                       ; $5986: $7F
    call c, $90FF                                 ; $5987: $DC $FF $90
    db $FC                                        ; $598A: $FC
    nop                                           ; $598B: $00
    ret nc                                        ; $598C: $D0

    and b                                         ; $598D: $A0
    sub b                                         ; $598E: $90
    ld h, b                                       ; $598F: $60
    sub b                                         ; $5990: $90
    ld h, b                                       ; $5991: $60
    ld e, b                                       ; $5992: $58
    jr nz, jr_01E_5A11                            ; $5993: $20 $7C

    jr jr_01E_5A13                                ; $5995: $18 $7C

    jr c, @+$40                                   ; $5997: $38 $3E

jr_01E_5999:
    ld [$060F], sp                                ; $5999: $08 $0F $06
    rrca                                          ; $599C: $0F
    rlca                                          ; $599D: $07
    rrca                                          ; $599E: $0F
    nop                                           ; $599F: $00
    nop                                           ; $59A0: $00
    nop                                           ; $59A1: $00
    nop                                           ; $59A2: $00
    nop                                           ; $59A3: $00
    add b                                         ; $59A4: $80
    nop                                           ; $59A5: $00
    ldh [rP1], a                                  ; $59A6: $E0 $00
    sub b                                         ; $59A8: $90
    ld h, b                                       ; $59A9: $60
    sub b                                         ; $59AA: $90
    ld h, b                                       ; $59AB: $60
    ld h, b                                       ; $59AC: $60
    nop                                           ; $59AD: $00
    nop                                           ; $59AE: $00
    nop                                           ; $59AF: $00
    nop                                           ; $59B0: $00
    nop                                           ; $59B1: $00
    nop                                           ; $59B2: $00
    nop                                           ; $59B3: $00
    nop                                           ; $59B4: $00
    nop                                           ; $59B5: $00
    nop                                           ; $59B6: $00
    nop                                           ; $59B7: $00
    nop                                           ; $59B8: $00
    nop                                           ; $59B9: $00
    nop                                           ; $59BA: $00
    nop                                           ; $59BB: $00
    add b                                         ; $59BC: $80
    nop                                           ; $59BD: $00
    add b                                         ; $59BE: $80
    nop                                           ; $59BF: $00
    nop                                           ; $59C0: $00
    nop                                           ; $59C1: $00
    nop                                           ; $59C2: $00
    nop                                           ; $59C3: $00
    nop                                           ; $59C4: $00
    nop                                           ; $59C5: $00
    nop                                           ; $59C6: $00
    nop                                           ; $59C7: $00
    nop                                           ; $59C8: $00
    nop                                           ; $59C9: $00
    nop                                           ; $59CA: $00
    nop                                           ; $59CB: $00
    nop                                           ; $59CC: $00
    nop                                           ; $59CD: $00
    nop                                           ; $59CE: $00
    nop                                           ; $59CF: $00
    nop                                           ; $59D0: $00
    nop                                           ; $59D1: $00
    inc c                                         ; $59D2: $0C
    nop                                           ; $59D3: $00
    dec bc                                        ; $59D4: $0B
    inc b                                         ; $59D5: $04
    ld e, $01                                     ; $59D6: $1E $01
    cp $19                                        ; $59D8: $FE $19
    cp a                                          ; $59DA: $BF
    ld e, h                                       ; $59DB: $5C
    ld a, a                                       ; $59DC: $7F
    db $10                                        ; $59DD: $10
    ld a, $0D                                     ; $59DE: $3E $0D
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
    ld b, $00                                     ; $59EE: $06 $00
    ccf                                           ; $59F0: $3F
    ld b, $FF                                     ; $59F1: $06 $FF
    rra                                           ; $59F3: $1F
    rst RST_18                                    ; $59F4: $DF
    cpl                                           ; $59F5: $2F
    rst RST_38                                    ; $59F6: $FF
    ld b, b                                       ; $59F7: $40
    ld a, h                                       ; $59F8: $7C
    cp b                                          ; $59F9: $B8
    db $FC                                        ; $59FA: $FC
    jr jr_01E_5A16                                ; $59FB: $18 $19

    ldh [$FF7F], a                                ; $59FD: $E0 $7F
    add b                                         ; $59FF: $80
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
    nop                                           ; $5A0E: $00
    nop                                           ; $5A0F: $00
    nop                                           ; $5A10: $00

jr_01E_5A11:
    nop                                           ; $5A11: $00
    add b                                         ; $5A12: $80

jr_01E_5A13:
    nop                                           ; $5A13: $00
    add b                                         ; $5A14: $80
    nop                                           ; $5A15: $00

jr_01E_5A16:
    nop                                           ; $5A16: $00
    nop                                           ; $5A17: $00
    nop                                           ; $5A18: $00
    nop                                           ; $5A19: $00
    ldh a, [rP1]                                  ; $5A1A: $F0 $00
    db $10                                        ; $5A1C: $10
    ldh [$FF60], a                                ; $5A1D: $E0 $60
    add b                                         ; $5A1F: $80
    jr nz, jr_01E_5A41                            ; $5A20: $20 $1F

    db $10                                        ; $5A22: $10
    rrca                                          ; $5A23: $0F
    db $10                                        ; $5A24: $10
    rrca                                          ; $5A25: $0F
    ld [$3007], sp                                ; $5A26: $08 $07 $30
    rrca                                          ; $5A29: $0F
    ld b, b                                       ; $5A2A: $40
    ccf                                           ; $5A2B: $3F
    add b                                         ; $5A2C: $80
    ld a, a                                       ; $5A2D: $7F
    add b                                         ; $5A2E: $80
    ld a, a                                       ; $5A2F: $7F
    ld c, b                                       ; $5A30: $48
    scf                                           ; $5A31: $37
    jr c, @+$09                                   ; $5A32: $38 $07

    ld [$0807], sp                                ; $5A34: $08 $07 $08
    rlca                                          ; $5A37: $07
    db $10                                        ; $5A38: $10
    rrca                                          ; $5A39: $0F
    jr nz, jr_01E_5A5B                            ; $5A3A: $20 $1F

    jr nz, jr_01E_5A5C                            ; $5A3C: $20 $1E

jr_01E_5A3E:
    nop                                           ; $5A3E: $00
    nop                                           ; $5A3F: $00

jr_01E_5A40:
    nop                                           ; $5A40: $00

jr_01E_5A41:
    rst RST_38                                    ; $5A41: $FF
    nop                                           ; $5A42: $00
    rst RST_38                                    ; $5A43: $FF
    nop                                           ; $5A44: $00
    rst RST_38                                    ; $5A45: $FF
    nop                                           ; $5A46: $00
    rst RST_38                                    ; $5A47: $FF
    nop                                           ; $5A48: $00
    rst RST_38                                    ; $5A49: $FF
    nop                                           ; $5A4A: $00
    rst RST_38                                    ; $5A4B: $FF
    nop                                           ; $5A4C: $00
    rst RST_38                                    ; $5A4D: $FF
    nop                                           ; $5A4E: $00
    rst RST_38                                    ; $5A4F: $FF
    ld bc, $42FE                                  ; $5A50: $01 $FE $42
    cp h                                          ; $5A53: $BC
    ld b, c                                       ; $5A54: $41
    cp [hl]                                       ; $5A55: $BE
    pop bc                                        ; $5A56: $C1
    ld a, $A0                                     ; $5A57: $3E $A0
    rra                                           ; $5A59: $1F
    sbc b                                         ; $5A5A: $98

jr_01E_5A5B:
    rlca                                          ; $5A5B: $07

jr_01E_5A5C:
    ld [$0807], sp                                ; $5A5C: $08 $07 $08
    rlca                                          ; $5A5F: $07
    ld h, b                                       ; $5A60: $60
    add b                                         ; $5A61: $80
    ld b, b                                       ; $5A62: $40
    add b                                         ; $5A63: $80
    add b                                         ; $5A64: $80
    nop                                           ; $5A65: $00
    add b                                         ; $5A66: $80
    nop                                           ; $5A67: $00
    or b                                          ; $5A68: $B0
    nop                                           ; $5A69: $00
    ld c, b                                       ; $5A6A: $48
    or b                                          ; $5A6B: $B0
    inc b                                         ; $5A6C: $04
    ld hl, sp+$04                                 ; $5A6D: $F8 $04
    ld hl, sp-$38                                 ; $5A6F: $F8 $C8
    jr nc, jr_01E_5AA3                            ; $5A71: $30 $30

    nop                                           ; $5A73: $00
    nop                                           ; $5A74: $00
    nop                                           ; $5A75: $00
    nop                                           ; $5A76: $00
    nop                                           ; $5A77: $00
    add b                                         ; $5A78: $80
    nop                                           ; $5A79: $00
    ld b, b                                       ; $5A7A: $40
    add b                                         ; $5A7B: $80
    jr nz, jr_01E_5A3E                            ; $5A7C: $20 $C0

    jr nz, jr_01E_5A40                            ; $5A7E: $20 $C0

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
    nop                                           ; $5A8C: $00
    nop                                           ; $5A8D: $00
    nop                                           ; $5A8E: $00
    nop                                           ; $5A8F: $00
    ld b, $00                                     ; $5A90: $06 $00
    add hl, bc                                    ; $5A92: $09
    ld b, $08                                     ; $5A93: $06 $08
    rlca                                          ; $5A95: $07
    ld a, b                                       ; $5A96: $78
    rlca                                          ; $5A97: $07

jr_01E_5A98:
    add b                                         ; $5A98: $80
    ld a, a                                       ; $5A99: $7F

jr_01E_5A9A:
    add b                                         ; $5A9A: $80
    ld a, a                                       ; $5A9B: $7F
    ld b, b                                       ; $5A9C: $40
    ccf                                           ; $5A9D: $3F
    jr nz, jr_01E_5ABF                            ; $5A9E: $20 $1F

    nop                                           ; $5AA0: $00
    nop                                           ; $5AA1: $00
    nop                                           ; $5AA2: $00

jr_01E_5AA3:
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
    ccf                                           ; $5AB0: $3F
    nop                                           ; $5AB1: $00
    ret nz                                        ; $5AB2: $C0

    ccf                                           ; $5AB3: $3F
    nop                                           ; $5AB4: $00
    rst RST_38                                    ; $5AB5: $FF
    nop                                           ; $5AB6: $00
    rst RST_38                                    ; $5AB7: $FF
    nop                                           ; $5AB8: $00
    rst RST_38                                    ; $5AB9: $FF
    nop                                           ; $5ABA: $00
    rst RST_38                                    ; $5ABB: $FF
    nop                                           ; $5ABC: $00
    rst RST_38                                    ; $5ABD: $FF
    nop                                           ; $5ABE: $00

jr_01E_5ABF:
    rst RST_38                                    ; $5ABF: $FF
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
    add b                                         ; $5AD2: $80
    nop                                           ; $5AD3: $00
    ld b, b                                       ; $5AD4: $40
    add b                                         ; $5AD5: $80
    jr nz, jr_01E_5A98                            ; $5AD6: $20 $C0

    jr c, jr_01E_5A9A                             ; $5AD8: $38 $C0

    inc b                                         ; $5ADA: $04
    ld hl, sp+$04                                 ; $5ADB: $F8 $04
    ld hl, sp+$08                                 ; $5ADD: $F8 $08
    ldh a, [rP1]                                  ; $5ADF: $F0 $00
    nop                                           ; $5AE1: $00
    nop                                           ; $5AE2: $00
    nop                                           ; $5AE3: $00
    ld bc, $0200                                  ; $5AE4: $01 $00 $02
    ld bc, $0305                                  ; $5AE7: $01 $05 $03
    dec bc                                        ; $5AEA: $0B
    rlca                                          ; $5AEB: $07
    rla                                           ; $5AEC: $17
    rrca                                          ; $5AED: $0F
    rra                                           ; $5AEE: $1F
    rrca                                          ; $5AEF: $0F
    ccf                                           ; $5AF0: $3F
    rra                                           ; $5AF1: $1F
    ccf                                           ; $5AF2: $3F
    rra                                           ; $5AF3: $1F
    ld a, a                                       ; $5AF4: $7F
    ccf                                           ; $5AF5: $3F
    ld a, a                                       ; $5AF6: $7F
    ccf                                           ; $5AF7: $3F
    ld a, a                                       ; $5AF8: $7F
    ccf                                           ; $5AF9: $3F
    rst RST_38                                    ; $5AFA: $FF
    ld a, a                                       ; $5AFB: $7F
    rst RST_38                                    ; $5AFC: $FF
    ld a, a                                       ; $5AFD: $7F
    rst RST_38                                    ; $5AFE: $FF
    nop                                           ; $5AFF: $00
    ldh a, [c]                                    ; $5B00: $F2
    db $FC                                        ; $5B01: $FC
    db $F4                                        ; $5B02: $F4
    ld hl, sp-$0C                                 ; $5B03: $F8 $F4
    ld hl, sp-$01                                 ; $5B05: $F8 $FF
    ldh a, [$FFF9]                                ; $5B07: $F0 $F9
    ld [hl], $BF                                  ; $5B09: $36 $BF
    ld b, b                                       ; $5B0B: $40
    ldh [rP1], a                                  ; $5B0C: $E0 $00
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
    ld bc, $0100                                  ; $5B1C: $01 $00 $01
    nop                                           ; $5B1F: $00
    rst RST_20                                    ; $5B20: $E7
    jr jr_01E_5B58                                ; $5B21: $18 $35

Call_01E_5B23:
    ld a, [bc]                                    ; $5B23: $0A
    di                                            ; $5B24: $F3
    inc l                                         ; $5B25: $2C
    rst RST_28                                    ; $5B26: $EF
    pop de                                        ; $5B27: $D1
    db $EB                                        ; $5B28: $EB
    sbc $FF                                       ; $5B29: $DE $FF
    ld c, h                                       ; $5B2B: $4C
    rst RST_38                                    ; $5B2C: $FF
    ld b, b                                       ; $5B2D: $40
    ld l, a                                       ; $5B2E: $6F
    inc d                                         ; $5B2F: $14
    ld l, h                                       ; $5B30: $6C
    inc de                                        ; $5B31: $13
    ld h, h                                       ; $5B32: $64
    dec de                                        ; $5B33: $1B
    ld a, d                                       ; $5B34: $7A
    ld hl, $307B                                  ; $5B35: $21 $7B $30
    ld [hl], e                                    ; $5B38: $73
    ld hl, $40F1                                  ; $5B39: $21 $F1 $40
    ldh a, [$FFE0]                                ; $5B3C: $F0 $E0
    ldh [rP1], a                                  ; $5B3E: $E0 $00
    add b                                         ; $5B40: $80
    nop                                           ; $5B41: $00
    ldh [$FF80], a                                ; $5B42: $E0 $80
    ldh a, [$FFE0]                                ; $5B44: $F0 $E0
    ldh a, [$FFC0]                                ; $5B46: $F0 $C0
    ret nc                                        ; $5B48: $D0

    jr nz, jr_01E_5B5B                            ; $5B49: $20 $10

    ldh [$FFF0], a                                ; $5B4B: $E0 $F0
    nop                                           ; $5B4D: $00
    ldh a, [rP1]                                  ; $5B4E: $F0 $00
    or b                                          ; $5B50: $B0
    nop                                           ; $5B51: $00
    ret z                                         ; $5B52: $C8

    jr nc, @-$16                                  ; $5B53: $30 $E8

    ret nc                                        ; $5B55: $D0

    ldh a, [$FFC0]                                ; $5B56: $F0 $C0

jr_01E_5B58:
    ldh a, [rLCDC]                                ; $5B58: $F0 $40
    ld a, b                                       ; $5B5A: $78

jr_01E_5B5B:
    jr nc, jr_01E_5BD9                            ; $5B5B: $30 $7C

    jr c, jr_01E_5BDB                             ; $5B5D: $38 $7C

    nop                                           ; $5B5F: $00
    nop                                           ; $5B60: $00
    nop                                           ; $5B61: $00
    nop                                           ; $5B62: $00
    nop                                           ; $5B63: $00
    nop                                           ; $5B64: $00
    nop                                           ; $5B65: $00
    inc bc                                        ; $5B66: $03
    nop                                           ; $5B67: $00
    inc c                                         ; $5B68: $0C
    inc bc                                        ; $5B69: $03

jr_01E_5B6A:
    jr nc, jr_01E_5B7B                            ; $5B6A: $30 $0F

    call z, $383F                                 ; $5B6C: $CC $3F $38
    rst RST_38                                    ; $5B6F: $FF
    pop af                                        ; $5B70: $F1
    cp $E2                                        ; $5B71: $FE $E2
    db $FD                                        ; $5B73: $FD
    ldh [rIE], a                                  ; $5B74: $E0 $FF
    call nz, $C8FF                                ; $5B76: $C4 $FF $C8
    rst RST_38                                    ; $5B79: $FF
    sbc b                                         ; $5B7A: $98

jr_01E_5B7B:
    rst RST_38                                    ; $5B7B: $FF
    cp c                                          ; $5B7C: $B9
    cp $FB                                        ; $5B7D: $FE $FB
    db $FC                                        ; $5B7F: $FC
    nop                                           ; $5B80: $00
    nop                                           ; $5B81: $00
    nop                                           ; $5B82: $00
    nop                                           ; $5B83: $00
    ld a, h                                       ; $5B84: $7C
    nop                                           ; $5B85: $00
    add h                                         ; $5B86: $84
    ld a, b                                       ; $5B87: $78
    jr jr_01E_5B6A                                ; $5B88: $18 $E0

    jr nz, @-$3E                                  ; $5B8A: $20 $C0

    ld b, b                                       ; $5B8C: $40
    add b                                         ; $5B8D: $80
    cp $00                                        ; $5B8E: $FE $00
    add d                                         ; $5B90: $82
    ld a, h                                       ; $5B91: $7C
    inc c                                         ; $5B92: $0C
    ldh a, [$FFD3]                                ; $5B93: $F0 $D3
    jr nz, @-$41                                  ; $5B95: $20 $BD

    ld b, d                                       ; $5B97: $42
    ld l, a                                       ; $5B98: $6F
    sub l                                         ; $5B99: $95
    rst RST_20                                    ; $5B9A: $E7
    ld e, d                                       ; $5B9B: $5A
    rst RST_38                                    ; $5B9C: $FF
    jp $CBF7                                      ; $5B9D: $C3 $F7 $CB


    nop                                           ; $5BA0: $00
    nop                                           ; $5BA1: $00
    nop                                           ; $5BA2: $00
    nop                                           ; $5BA3: $00
    nop                                           ; $5BA4: $00
    nop                                           ; $5BA5: $00
    nop                                           ; $5BA6: $00
    nop                                           ; $5BA7: $00
    nop                                           ; $5BA8: $00
    nop                                           ; $5BA9: $00
    nop                                           ; $5BAA: $00
    nop                                           ; $5BAB: $00
    nop                                           ; $5BAC: $00
    nop                                           ; $5BAD: $00
    nop                                           ; $5BAE: $00
    nop                                           ; $5BAF: $00
    nop                                           ; $5BB0: $00
    nop                                           ; $5BB1: $00
    nop                                           ; $5BB2: $00
    nop                                           ; $5BB3: $00
    add b                                         ; $5BB4: $80
    nop                                           ; $5BB5: $00
    ldh [$FF80], a                                ; $5BB6: $E0 $80
    ld hl, sp-$20                                 ; $5BB8: $F8 $E0
    ld hl, sp+$70                                 ; $5BBA: $F8 $70
    ldh a, [rNR41]                                ; $5BBC: $F0 $20
    and b                                         ; $5BBE: $A0
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
    ld bc, $0100                                  ; $5BD2: $01 $00 $01
    nop                                           ; $5BD5: $00
    rst RST_38                                    ; $5BD6: $FF
    nop                                           ; $5BD7: $00
    rst RST_38                                    ; $5BD8: $FF

jr_01E_5BD9:
    ld a, [hl]                                    ; $5BD9: $7E
    rst RST_38                                    ; $5BDA: $FF

jr_01E_5BDB:
    nop                                           ; $5BDB: $00
    ld bc, $0100                                  ; $5BDC: $01 $00 $01
    nop                                           ; $5BDF: $00
    pop bc                                        ; $5BE0: $C1
    nop                                           ; $5BE1: $00
    ld b, b                                       ; $5BE2: $40
    add b                                         ; $5BE3: $80
    pop af                                        ; $5BE4: $F1
    nop                                           ; $5BE5: $00
    rst RST_18                                    ; $5BE6: $DF
    and c                                         ; $5BE7: $A1
    sub e                                         ; $5BE8: $93
    ld l, l                                       ; $5BE9: $6D

jr_01E_5BEA:
    ld a, a                                       ; $5BEA: $7F
    add b                                         ; $5BEB: $80

jr_01E_5BEC:
    pop bc                                        ; $5BEC: $C1
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
    ld bc, $0300                                  ; $5BFA: $01 $00 $03
    ld bc, $0003                                  ; $5BFD: $01 $03 $00
    rst RST_08                                    ; $5C00: $CF
    jr nc, jr_01E_5C6E                            ; $5C01: $30 $6B

    inc d                                         ; $5C03: $14
    rst RST_20                                    ; $5C04: $E7
    ld e, c                                       ; $5C05: $59
    rst RST_18                                    ; $5C06: $DF
    and e                                         ; $5C07: $A3
    rst RST_10                                    ; $5C08: $D7
    cp l                                          ; $5C09: $BD
    rst RST_38                                    ; $5C0A: $FF
    sbc b                                         ; $5C0B: $98
    cp $81                                        ; $5C0C: $FE $81
    rst RST_18                                    ; $5C0E: $DF
    jr z, jr_01E_5BEA                             ; $5C0F: $28 $D9

    ld h, $C9                                     ; $5C11: $26 $C9
    ld [hl], $F5                                  ; $5C13: $36 $F5
    ld b, d                                       ; $5C15: $42
    rst RST_30                                    ; $5C16: $F7
    ld h, c                                       ; $5C17: $61
    rst RST_20                                    ; $5C18: $E7
    ld b, e                                       ; $5C19: $43
    db $E3                                        ; $5C1A: $E3
    add b                                         ; $5C1B: $80
    ldh [$FFC0], a                                ; $5C1C: $E0 $C0
    ret nz                                        ; $5C1E: $C0

    nop                                           ; $5C1F: $00
    nop                                           ; $5C20: $00
    nop                                           ; $5C21: $00
    ret nz                                        ; $5C22: $C0

    nop                                           ; $5C23: $00
    ldh [$FFC0], a                                ; $5C24: $E0 $C0
    ldh [$FF80], a                                ; $5C26: $E0 $80
    and b                                         ; $5C28: $A0
    ld b, b                                       ; $5C29: $40
    jr nz, jr_01E_5BEC                            ; $5C2A: $20 $C0

    ldh [rP1], a                                  ; $5C2C: $E0 $00
    ldh [rP1], a                                  ; $5C2E: $E0 $00
    ld h, b                                       ; $5C30: $60
    nop                                           ; $5C31: $00
    sub b                                         ; $5C32: $90
    ld h, b                                       ; $5C33: $60
    ret nc                                        ; $5C34: $D0

    and b                                         ; $5C35: $A0
    ldh [$FF80], a                                ; $5C36: $E0 $80
    ldh [$FF80], a                                ; $5C38: $E0 $80
    ldh a, [$FF60]                                ; $5C3A: $F0 $60
    ld hl, sp+$70                                 ; $5C3C: $F8 $70
    ld hl, sp+$00                                 ; $5C3E: $F8 $00
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
    nop                                           ; $5C4E: $00
    nop                                           ; $5C4F: $00
    nop                                           ; $5C50: $00
    nop                                           ; $5C51: $00
    nop                                           ; $5C52: $00
    nop                                           ; $5C53: $00
    ld h, c                                       ; $5C54: $61
    nop                                           ; $5C55: $00
    ld e, [hl]                                    ; $5C56: $5E
    ld hl, $0A37                                  ; $5C57: $21 $37 $0A
    ld [hl], e                                    ; $5C5A: $73
    dec l                                         ; $5C5B: $2D
    rst RST_38                                    ; $5C5C: $FF
    ld h, c                                       ; $5C5D: $61
    ei                                            ; $5C5E: $FB
    ld h, l                                       ; $5C5F: $65
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
    nop                                           ; $5C6C: $00
    nop                                           ; $5C6D: $00

jr_01E_5C6E:
    nop                                           ; $5C6E: $00
    nop                                           ; $5C6F: $00

Call_01E_5C70:
    nop                                           ; $5C70: $00
    nop                                           ; $5C71: $00
    add b                                         ; $5C72: $80
    nop                                           ; $5C73: $00
    ret nz                                        ; $5C74: $C0

    nop                                           ; $5C75: $00
    ldh a, [$FFC0]                                ; $5C76: $F0 $C0
    db $FC                                        ; $5C78: $FC
    ld [hl], b                                    ; $5C79: $70
    db $FC                                        ; $5C7A: $FC
    cp b                                          ; $5C7B: $B8
    ld hl, sp-$70                                 ; $5C7C: $F8 $90
    ret nc                                        ; $5C7E: $D0

    nop                                           ; $5C7F: $00
    ret nz                                        ; $5C80: $C0

    nop                                           ; $5C81: $00
    ldh [rLCDC], a                                ; $5C82: $E0 $40
    ldh [rLCDC], a                                ; $5C84: $E0 $40
    ld [hl], b                                    ; $5C86: $70
    jr nz, jr_01E_5CFA                            ; $5C87: $20 $71

    jr nz, jr_01E_5CC4                            ; $5C89: $20 $39

    db $10                                        ; $5C8B: $10
    ld a, $10                                     ; $5C8C: $3E $10
    ld e, d                                       ; $5C8E: $5A
    inc h                                         ; $5C8F: $24
    ld h, h                                       ; $5C90: $64
    jr jr_01E_5CBA                                ; $5C91: $18 $27

    jr @+$1B                                      ; $5C93: $18 $19

    ld b, $07                                     ; $5C95: $06 $07
    nop                                           ; $5C97: $00
    nop                                           ; $5C98: $00
    nop                                           ; $5C99: $00
    nop                                           ; $5C9A: $00
    nop                                           ; $5C9B: $00
    nop                                           ; $5C9C: $00
    nop                                           ; $5C9D: $00
    nop                                           ; $5C9E: $00
    nop                                           ; $5C9F: $00
    jp $BD00                                      ; $5CA0: $C3 $00 $BD


    ld b, d                                       ; $5CA3: $42
    ld l, a                                       ; $5CA4: $6F
    dec d                                         ; $5CA5: $15
    rst RST_20                                    ; $5CA6: $E7
    ld e, d                                       ; $5CA7: $5A
    rst RST_38                                    ; $5CA8: $FF
    jp $CBF7                                      ; $5CA9: $C3 $F7 $CB


    rst RST_20                                    ; $5CAC: $E7
    jr @+$37                                      ; $5CAD: $18 $35

    ld a, [bc]                                    ; $5CAF: $0A
    di                                            ; $5CB0: $F3
    inc l                                         ; $5CB1: $2C
    rst RST_28                                    ; $5CB2: $EF
    pop de                                        ; $5CB3: $D1
    db $EB                                        ; $5CB4: $EB
    sbc $FF                                       ; $5CB5: $DE $FF
    ld c, h                                       ; $5CB7: $4C
    rst RST_38                                    ; $5CB8: $FF
    ld b, b                                       ; $5CB9: $40

jr_01E_5CBA:
    ld l, a                                       ; $5CBA: $6F
    inc d                                         ; $5CBB: $14
    ld l, h                                       ; $5CBC: $6C
    inc de                                        ; $5CBD: $13
    ld h, h                                       ; $5CBE: $64
    dec de                                        ; $5CBF: $1B
    nop                                           ; $5CC0: $00
    nop                                           ; $5CC1: $00
    add b                                         ; $5CC2: $80
    nop                                           ; $5CC3: $00

jr_01E_5CC4:
    ldh [$FF80], a                                ; $5CC4: $E0 $80
    ld hl, sp-$20                                 ; $5CC6: $F8 $E0
    ld hl, sp+$70                                 ; $5CC8: $F8 $70
    ldh a, [rNR41]                                ; $5CCA: $F0 $20
    and b                                         ; $5CCC: $A0
    nop                                           ; $5CCD: $00
    add b                                         ; $5CCE: $80
    nop                                           ; $5CCF: $00
    ldh [$FF80], a                                ; $5CD0: $E0 $80
    ldh a, [$FFE0]                                ; $5CD2: $F0 $E0
    ldh a, [$FFC0]                                ; $5CD4: $F0 $C0
    ret nc                                        ; $5CD6: $D0

    jr nz, jr_01E_5CE9                            ; $5CD7: $20 $10

    ldh [$FFF0], a                                ; $5CD9: $E0 $F0
    nop                                           ; $5CDB: $00
    ldh a, [rP1]                                  ; $5CDC: $F0 $00
    or b                                          ; $5CDE: $B0
    nop                                           ; $5CDF: $00
    dec a                                         ; $5CE0: $3D

jr_01E_5CE1:
    db $10                                        ; $5CE1: $10
    dec a                                         ; $5CE2: $3D
    jr jr_01E_5D1E                                ; $5CE3: $18 $39

    db $10                                        ; $5CE5: $10
    ld a, b                                       ; $5CE6: $78
    jr nz, jr_01E_5CE1                            ; $5CE7: $20 $F8

jr_01E_5CE9:
    ld [hl], b                                    ; $5CE9: $70
    ldh a, [rP1]                                  ; $5CEA: $F0 $00
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

jr_01E_5CFA:
    nop                                           ; $5CFA: $00
    nop                                           ; $5CFB: $00
    nop                                           ; $5CFC: $00
    nop                                           ; $5CFD: $00
    nop                                           ; $5CFE: $00
    nop                                           ; $5CFF: $00
    ld h, h                                       ; $5D00: $64
    sbc b                                         ; $5D01: $98
    db $F4                                        ; $5D02: $F4
    ld l, b                                       ; $5D03: $68
    ld hl, sp-$20                                 ; $5D04: $F8 $E0
    ld hl, sp+$20                                 ; $5D06: $F8 $20
    inc a                                         ; $5D08: $3C
    jr jr_01E_5D49                                ; $5D09: $18 $3E

    inc e                                         ; $5D0B: $1C
    ld a, $00                                     ; $5D0C: $3E $00
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

jr_01E_5D1E:
    nop                                           ; $5D1E: $00
    nop                                           ; $5D1F: $00
    ld h, c                                       ; $5D20: $61
    nop                                           ; $5D21: $00
    ld e, [hl]                                    ; $5D22: $5E
    ld hl, $0A37                                  ; $5D23: $21 $37 $0A
    ld [hl], e                                    ; $5D26: $73
    dec l                                         ; $5D27: $2D
    rst RST_38                                    ; $5D28: $FF
    ld h, c                                       ; $5D29: $61
    ei                                            ; $5D2A: $FB
    ld h, l                                       ; $5D2B: $65
    ld [hl], e                                    ; $5D2C: $73
    inc c                                         ; $5D2D: $0C
    ld a, [de]                                    ; $5D2E: $1A
    dec b                                         ; $5D2F: $05
    dec a                                         ; $5D30: $3D
    ld [de], a                                    ; $5D31: $12
    ccf                                           ; $5D32: $3F
    inc e                                         ; $5D33: $1C
    ld a, $11                                     ; $5D34: $3E $11
    inc de                                        ; $5D36: $13
    inc c                                         ; $5D37: $0C
    inc e                                         ; $5D38: $1C
    inc bc                                        ; $5D39: $03
    rra                                           ; $5D3A: $1F
    nop                                           ; $5D3B: $00
    dec de                                        ; $5D3C: $1B
    inc b                                         ; $5D3D: $04
    add hl, de                                    ; $5D3E: $19
    ld b, $80                                     ; $5D3F: $06 $80
    nop                                           ; $5D41: $00
    ldh [rP1], a                                  ; $5D42: $E0 $00
    pop af                                        ; $5D44: $F1
    ret nz                                        ; $5D45: $C0

    rst RST_38                                    ; $5D46: $FF
    ld [hl], c                                    ; $5D47: $71
    rst RST_38                                    ; $5D48: $FF

jr_01E_5D49:
    cp e                                          ; $5D49: $BB
    rst RST_38                                    ; $5D4A: $FF
    sub d                                         ; $5D4B: $92
    db $DB                                        ; $5D4C: $DB
    ld b, $EA                                     ; $5D4D: $06 $EA
    ld b, h                                       ; $5D4F: $44
    cp $20                                        ; $5D50: $FE $20
    ldh a, [c]                                    ; $5D52: $F2
    inc l                                         ; $5D53: $2C
    add hl, sp                                    ; $5D54: $39
    adc $75                                       ; $5D55: $CE $75
    adc [hl]                                      ; $5D57: $8E
    ei                                            ; $5D58: $FB
    ld b, h                                       ; $5D59: $44
    ld a, [$3604]                                 ; $5D5A: $FA $04 $36
    ret z                                         ; $5D5D: $C8

    inc [hl]                                      ; $5D5E: $34
    ret z                                         ; $5D5F: $C8

    rst RST_38                                    ; $5D60: $FF
    ld [bc], a                                    ; $5D61: $02
    ld a, a                                       ; $5D62: $7F
    jr nc, jr_01E_5DE4                            ; $5D63: $30 $7F

    ld b, $0F                                     ; $5D65: $06 $0F
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
    nop                                           ; $5D7A: $00
    nop                                           ; $5D7B: $00
    nop                                           ; $5D7C: $00
    nop                                           ; $5D7D: $00
    nop                                           ; $5D7E: $00
    nop                                           ; $5D7F: $00
    add b                                         ; $5D80: $80
    nop                                           ; $5D81: $00
    nop                                           ; $5D82: $00
    nop                                           ; $5D83: $00
    add b                                         ; $5D84: $80
    nop                                           ; $5D85: $00
    add b                                         ; $5D86: $80
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
    nop                                           ; $5D98: $00
    nop                                           ; $5D99: $00
    nop                                           ; $5D9A: $00
    nop                                           ; $5D9B: $00
    nop                                           ; $5D9C: $00
    nop                                           ; $5D9D: $00
    nop                                           ; $5D9E: $00
    nop                                           ; $5D9F: $00
    nop                                           ; $5DA0: $00
    nop                                           ; $5DA1: $00
    nop                                           ; $5DA2: $00
    nop                                           ; $5DA3: $00
    add b                                         ; $5DA4: $80
    nop                                           ; $5DA5: $00
    add b                                         ; $5DA6: $80
    nop                                           ; $5DA7: $00
    add b                                         ; $5DA8: $80
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
    add b                                         ; $5DB4: $80
    nop                                           ; $5DB5: $00
    ld h, b                                       ; $5DB6: $60
    add b                                         ; $5DB7: $80
    ld [hl], b                                    ; $5DB8: $70
    ldh [$FFF8], a                                ; $5DB9: $E0 $F8
    jr nc, jr_01E_5DF5                            ; $5DBB: $30 $38

    nop                                           ; $5DBD: $00
    nop                                           ; $5DBE: $00
    nop                                           ; $5DBF: $00
    ld h, c                                       ; $5DC0: $61
    nop                                           ; $5DC1: $00
    ld e, [hl]                                    ; $5DC2: $5E
    ld hl, $0A37                                  ; $5DC3: $21 $37 $0A
    ld [hl], e                                    ; $5DC6: $73
    dec l                                         ; $5DC7: $2D
    rst RST_38                                    ; $5DC8: $FF
    ld h, c                                       ; $5DC9: $61
    ei                                            ; $5DCA: $FB
    ld h, l                                       ; $5DCB: $65
    ld [hl], e                                    ; $5DCC: $73
    inc c                                         ; $5DCD: $0C
    ld a, [de]                                    ; $5DCE: $1A
    dec b                                         ; $5DCF: $05
    dec a                                         ; $5DD0: $3D
    ld [de], a                                    ; $5DD1: $12
    ld a, a                                       ; $5DD2: $7F
    inc d                                         ; $5DD3: $14
    ld e, l                                       ; $5DD4: $5D
    daa                                           ; $5DD5: $27
    ld c, a                                       ; $5DD6: $4F
    inc sp                                        ; $5DD7: $33
    ld a, a                                       ; $5DD8: $7F
    nop                                           ; $5DD9: $00
    ld a, e                                       ; $5DDA: $7B
    dec b                                         ; $5DDB: $05
    sbc c                                         ; $5DDC: $99
    ld h, [hl]                                    ; $5DDD: $66
    sbc c                                         ; $5DDE: $99
    ld h, [hl]                                    ; $5DDF: $66
    add b                                         ; $5DE0: $80
    nop                                           ; $5DE1: $00
    ret nz                                        ; $5DE2: $C0

    nop                                           ; $5DE3: $00

jr_01E_5DE4:
    ldh a, [$FFC0]                                ; $5DE4: $F0 $C0
    db $FC                                        ; $5DE6: $FC
    ld [hl], b                                    ; $5DE7: $70
    db $FC                                        ; $5DE8: $FC
    cp b                                          ; $5DE9: $B8
    ld hl, sp-$70                                 ; $5DEA: $F8 $90
    ret nc                                        ; $5DEC: $D0

    nop                                           ; $5DED: $00
    ldh [rLCDC], a                                ; $5DEE: $E0 $40
    db $FC                                        ; $5DF0: $FC
    ld h, b                                       ; $5DF1: $60
    db $F4                                        ; $5DF2: $F4
    ld l, b                                       ; $5DF3: $68
    ld h, h                                       ; $5DF4: $64

jr_01E_5DF5:
    sbc b                                         ; $5DF5: $98
    ld a, b                                       ; $5DF6: $78
    add b                                         ; $5DF7: $80
    ldh a, [rP1]                                  ; $5DF8: $F0 $00
    ld hl, sp+$00                                 ; $5DFA: $F8 $00
    ld h, h                                       ; $5DFC: $64
    sbc b                                         ; $5DFD: $98
    ld h, h                                       ; $5DFE: $64
    sbc b                                         ; $5DFF: $98
    ld a, a                                       ; $5E00: $7F
    ld [$0C3F], sp                                ; $5E01: $08 $3F $0C
    ld a, $0C                                     ; $5E04: $3E $0C
    inc a                                         ; $5E06: $3C
    db $10                                        ; $5E07: $10
    inc a                                         ; $5E08: $3C
    jr jr_01E_5E43                                ; $5E09: $18 $38

    nop                                           ; $5E0B: $00
    nop                                           ; $5E0C: $00
    nop                                           ; $5E0D: $00
    nop                                           ; $5E0E: $00
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
    ld hl, sp+$00                                 ; $5E20: $F8 $00
    ldh [$FFC0], a                                ; $5E22: $E0 $C0
    ldh a, [rP1]                                  ; $5E24: $F0 $00
    ldh a, [$FF60]                                ; $5E26: $F0 $60
    ld [hl], b                                    ; $5E28: $70
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
    rlca                                          ; $5E40: $07
    nop                                           ; $5E41: $00
    ld a, [bc]                                    ; $5E42: $0A

jr_01E_5E43:
    dec b                                         ; $5E43: $05
    ld [hl], d                                    ; $5E44: $72
    dec c                                         ; $5E45: $0D
    ld [hl], d                                    ; $5E46: $72
    dec l                                         ; $5E47: $2D
    ld [hl], d                                    ; $5E48: $72
    dec l                                         ; $5E49: $2D
    ld l, e                                       ; $5E4A: $6B
    inc [hl]                                      ; $5E4B: $34
    cpl                                           ; $5E4C: $2F
    db $10                                        ; $5E4D: $10
    dec a                                         ; $5E4E: $3D
    ld [bc], a                                    ; $5E4F: $02
    dec l                                         ; $5E50: $2D
    rla                                           ; $5E51: $17
    jr nc, jr_01E_5E63                            ; $5E52: $30 $0F

    dec l                                         ; $5E54: $2D
    ld [de], a                                    ; $5E55: $12
    rra                                           ; $5E56: $1F
    nop                                           ; $5E57: $00
    ld a, [de]                                    ; $5E58: $1A
    rlca                                          ; $5E59: $07
    rrca                                          ; $5E5A: $0F
    nop                                           ; $5E5B: $00
    dec d                                         ; $5E5C: $15
    ld a, [bc]                                    ; $5E5D: $0A
    rla                                           ; $5E5E: $17
    ld [$0000], sp                                ; $5E5F: $08 $00 $00

jr_01E_5E62:
    add b                                         ; $5E62: $80

jr_01E_5E63:
    nop                                           ; $5E63: $00

jr_01E_5E64:
    ld h, b                                       ; $5E64: $60
    add b                                         ; $5E65: $80
    ldh [rLCDC], a                                ; $5E66: $E0 $40
    ldh [rLCDC], a                                ; $5E68: $E0 $40
    ld h, b                                       ; $5E6A: $60
    ret nz                                        ; $5E6B: $C0

    ld h, b                                       ; $5E6C: $60
    add b                                         ; $5E6D: $80
    and b                                         ; $5E6E: $A0
    ld b, b                                       ; $5E6F: $40
    and b                                         ; $5E70: $A0
    ld b, b                                       ; $5E71: $40
    ld h, b                                       ; $5E72: $60
    add b                                         ; $5E73: $80
    and b                                         ; $5E74: $A0
    ld b, b                                       ; $5E75: $40
    ret nz                                        ; $5E76: $C0

    nop                                           ; $5E77: $00
    ret nz                                        ; $5E78: $C0

    nop                                           ; $5E79: $00
    add b                                         ; $5E7A: $80
    nop                                           ; $5E7B: $00
    ld b, b                                       ; $5E7C: $40
    add b                                         ; $5E7D: $80
    ld b, b                                       ; $5E7E: $40
    add b                                         ; $5E7F: $80
    dec h                                         ; $5E80: $25
    jr jr_01E_5EA8                                ; $5E81: $18 $25

    jr jr_01E_5EAD                                ; $5E83: $18 $28

    db $10                                        ; $5E85: $10
    jr nc, jr_01E_5E88                            ; $5E86: $30 $00

jr_01E_5E88:
    nop                                           ; $5E88: $00
    nop                                           ; $5E89: $00
    nop                                           ; $5E8A: $00
    nop                                           ; $5E8B: $00
    nop                                           ; $5E8C: $00
    nop                                           ; $5E8D: $00
    nop                                           ; $5E8E: $00
    nop                                           ; $5E8F: $00
    nop                                           ; $5E90: $00
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
    jr nz, jr_01E_5E62                            ; $5EA0: $20 $C0

    jr nz, jr_01E_5E64                            ; $5EA2: $20 $C0

    and b                                         ; $5EA4: $A0
    ld b, b                                       ; $5EA5: $40
    ld h, b                                       ; $5EA6: $60
    nop                                           ; $5EA7: $00

jr_01E_5EA8:
    nop                                           ; $5EA8: $00
    nop                                           ; $5EA9: $00
    nop                                           ; $5EAA: $00
    nop                                           ; $5EAB: $00
    nop                                           ; $5EAC: $00

jr_01E_5EAD:
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
    inc c                                         ; $5EC0: $0C
    nop                                           ; $5EC1: $00
    dec bc                                        ; $5EC2: $0B
    inc b                                         ; $5EC3: $04
    ld e, $01                                     ; $5EC4: $1E $01
    cp $19                                        ; $5EC6: $FE $19
    cp a                                          ; $5EC8: $BF
    ld e, h                                       ; $5EC9: $5C
    ld a, a                                       ; $5ECA: $7F
    db $10                                        ; $5ECB: $10
    ld a, $0D                                     ; $5ECC: $3E $0D
    rra                                           ; $5ECE: $1F
    inc c                                         ; $5ECF: $0C
    rrca                                          ; $5ED0: $0F
    ld b, $3E                                     ; $5ED1: $06 $3E
    dec b                                         ; $5ED3: $05
    ld c, [hl]                                    ; $5ED4: $4E
    ld sp, $304F                                  ; $5ED5: $31 $4F $30
    ld sp, $0200                                  ; $5ED8: $31 $00 $02
    ld bc, $010E                                  ; $5EDB: $01 $0E $01
    ld c, $05                                     ; $5EDE: $0E $05
    ld b, $00                                     ; $5EE0: $06 $00
    ccf                                           ; $5EE2: $3F
    ld b, $FF                                     ; $5EE3: $06 $FF
    rra                                           ; $5EE5: $1F
    rst RST_18                                    ; $5EE6: $DF
    cpl                                           ; $5EE7: $2F
    rst RST_38                                    ; $5EE8: $FF
    ld b, b                                       ; $5EE9: $40
    ld a, h                                       ; $5EEA: $7C
    cp b                                          ; $5EEB: $B8
    db $FC                                        ; $5EEC: $FC
    jr jr_01E_5F08                                ; $5EED: $18 $19

    ldh [$FF7F], a                                ; $5EEF: $E0 $7F
    add b                                         ; $5EF1: $80
    ld e, [hl]                                    ; $5EF2: $5E
    and l                                         ; $5EF3: $A5
    ld a, $CD                                     ; $5EF4: $3E $CD
    rst RST_38                                    ; $5EF6: $FF
    ld e, $BF                                     ; $5EF7: $1E $BF
    xor $FF                                       ; $5EF9: $EE $FF
    ret z                                         ; $5EFB: $C8

    cp $00                                        ; $5EFC: $FE $00
    add sp, $50                                   ; $5EFE: $E8 $50
    add b                                         ; $5F00: $80
    nop                                           ; $5F01: $00
    add b                                         ; $5F02: $80
    nop                                           ; $5F03: $00
    nop                                           ; $5F04: $00
    nop                                           ; $5F05: $00
    nop                                           ; $5F06: $00
    nop                                           ; $5F07: $00

jr_01E_5F08:
    ldh a, [rP1]                                  ; $5F08: $F0 $00
    db $10                                        ; $5F0A: $10
    ldh [$FF60], a                                ; $5F0B: $E0 $60
    add b                                         ; $5F0D: $80
    add b                                         ; $5F0E: $80
    nop                                           ; $5F0F: $00
    add b                                         ; $5F10: $80
    nop                                           ; $5F11: $00
    ret nz                                        ; $5F12: $C0

    nop                                           ; $5F13: $00
    ldh a, [rP1]                                  ; $5F14: $F0 $00
    ret z                                         ; $5F16: $C8

    jr nc, jr_01E_5F61                            ; $5F17: $30 $48

    jr nc, jr_01E_5F4B                            ; $5F19: $30 $30

    nop                                           ; $5F1B: $00
    nop                                           ; $5F1C: $00
    nop                                           ; $5F1D: $00
    nop                                           ; $5F1E: $00
    nop                                           ; $5F1F: $00
    rra                                           ; $5F20: $1F
    ld a, [bc]                                    ; $5F21: $0A
    rra                                           ; $5F22: $1F
    inc c                                         ; $5F23: $0C
    ld e, $00                                     ; $5F24: $1E $00
    nop                                           ; $5F26: $00
    nop                                           ; $5F27: $00
    nop                                           ; $5F28: $00
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
    ret z                                         ; $5F40: $C8

    jr nc, jr_01E_5F92                            ; $5F41: $30 $4F

    or b                                          ; $5F43: $B0
    xor a                                         ; $5F44: $AF
    ld d, $3F                                     ; $5F45: $16 $3F
    dec c                                         ; $5F47: $0D
    rra                                           ; $5F48: $1F
    inc bc                                        ; $5F49: $03
    rlca                                          ; $5F4A: $07

jr_01E_5F4B:
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
    nop                                           ; $5F58: $00
    nop                                           ; $5F59: $00
    nop                                           ; $5F5A: $00
    nop                                           ; $5F5B: $00
    nop                                           ; $5F5C: $00
    nop                                           ; $5F5D: $00

jr_01E_5F5E:
    nop                                           ; $5F5E: $00
    nop                                           ; $5F5F: $00
    add b                                         ; $5F60: $80

jr_01E_5F61:
    nop                                           ; $5F61: $00
    ret nz                                        ; $5F62: $C0

    add b                                         ; $5F63: $80
    ret nz                                        ; $5F64: $C0

    add b                                         ; $5F65: $80
    ret nz                                        ; $5F66: $C0

    nop                                           ; $5F67: $00
    nop                                           ; $5F68: $00
    nop                                           ; $5F69: $00
    nop                                           ; $5F6A: $00
    nop                                           ; $5F6B: $00
    inc bc                                        ; $5F6C: $03
    nop                                           ; $5F6D: $00
    rlca                                          ; $5F6E: $07
    inc bc                                        ; $5F6F: $03
    rrca                                          ; $5F70: $0F
    ld b, $0E                                     ; $5F71: $06 $0E
    nop                                           ; $5F73: $00
    dec b                                         ; $5F74: $05
    nop                                           ; $5F75: $00
    ld [bc], a                                    ; $5F76: $02
    ld bc, $010E                                  ; $5F77: $01 $0E $01
    inc bc                                        ; $5F7A: $03
    nop                                           ; $5F7B: $00
    inc b                                         ; $5F7C: $04
    nop                                           ; $5F7D: $00
    nop                                           ; $5F7E: $00
    nop                                           ; $5F7F: $00
    nop                                           ; $5F80: $00
    nop                                           ; $5F81: $00
    ld [bc], a                                    ; $5F82: $02
    nop                                           ; $5F83: $00
    pop bc                                        ; $5F84: $C1
    nop                                           ; $5F85: $00
    ldh [c], a                                    ; $5F86: $E2
    ld b, c                                       ; $5F87: $41
    ldh a, [c]                                    ; $5F88: $F2
    ld h, c                                       ; $5F89: $61
    ld [hl], d                                    ; $5F8A: $72
    ld hl, $3069                                  ; $5F8B: $21 $69 $30
    add hl, hl                                    ; $5F8E: $29
    db $10                                        ; $5F8F: $10
    add hl, sp                                    ; $5F90: $39
    nop                                           ; $5F91: $00

jr_01E_5F92:
    daa                                           ; $5F92: $27
    jr jr_01E_5F5E                                ; $5F93: $18 $C9

    ld a, $52                                     ; $5F95: $3E $52
    cp l                                          ; $5F97: $BD
    ld h, h                                       ; $5F98: $64
    sbc e                                         ; $5F99: $9B
    xor d                                         ; $5F9A: $AA
    rla                                           ; $5F9B: $17
    add hl, sp                                    ; $5F9C: $39
    ld b, $F7                                     ; $5F9D: $06 $F7
    ld [$0080], sp                                ; $5F9F: $08 $80 $00
    and b                                         ; $5FA2: $A0
    nop                                           ; $5FA3: $00
    ret nz                                        ; $5FA4: $C0

    nop                                           ; $5FA5: $00
    ld b, b                                       ; $5FA6: $40
    add b                                         ; $5FA7: $80
    ld b, b                                       ; $5FA8: $40
    add b                                         ; $5FA9: $80
    ld b, b                                       ; $5FAA: $40
    add b                                         ; $5FAB: $80
    ld b, b                                       ; $5FAC: $40
    add b                                         ; $5FAD: $80
    ld b, b                                       ; $5FAE: $40
    add b                                         ; $5FAF: $80
    ld b, b                                       ; $5FB0: $40
    add b                                         ; $5FB1: $80
    ld b, b                                       ; $5FB2: $40
    add b                                         ; $5FB3: $80
    ld b, b                                       ; $5FB4: $40
    add b                                         ; $5FB5: $80
    adc h                                         ; $5FB6: $8C
    nop                                           ; $5FB7: $00
    sub h                                         ; $5FB8: $94
    ld [$18E4], sp                                ; $5FB9: $08 $E4 $18
    ret z                                         ; $5FBC: $C8

    jr nc, @+$72                                  ; $5FBD: $30 $70

    add b                                         ; $5FBF: $80
    ld a, [bc]                                    ; $5FC0: $0A
    pop af                                        ; $5FC1: $F1
    ld [hl], $C1                                  ; $5FC2: $36 $C1
    ret z                                         ; $5FC4: $C8

    rlca                                          ; $5FC5: $07
    rrca                                          ; $5FC6: $0F
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
    nop                                           ; $5FDC: $00
    nop                                           ; $5FDD: $00
    nop                                           ; $5FDE: $00
    nop                                           ; $5FDF: $00
    ret nz                                        ; $5FE0: $C0

    nop                                           ; $5FE1: $00
    add b                                         ; $5FE2: $80
    nop                                           ; $5FE3: $00
    add b                                         ; $5FE4: $80
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
    nop                                           ; $5FFE: $00
    nop                                           ; $5FFF: $00
    ld h, c                                       ; $6000: $61
    nop                                           ; $6001: $00
    ld e, [hl]                                    ; $6002: $5E
    ld hl, $0A37                                  ; $6003: $21 $37 $0A
    ld [hl], e                                    ; $6006: $73
    dec l                                         ; $6007: $2D
    rst RST_38                                    ; $6008: $FF
    ld h, c                                       ; $6009: $61
    ei                                            ; $600A: $FB
    ld h, l                                       ; $600B: $65
    ld [hl], e                                    ; $600C: $73
    inc c                                         ; $600D: $0C
    ld a, [de]                                    ; $600E: $1A
    dec b                                         ; $600F: $05
    dec a                                         ; $6010: $3D
    ld [de], a                                    ; $6011: $12
    ld a, a                                       ; $6012: $7F
    inc d                                         ; $6013: $14
    ld e, l                                       ; $6014: $5D
    daa                                           ; $6015: $27
    ld c, a                                       ; $6016: $4F
    inc sp                                        ; $6017: $33
    ld a, a                                       ; $6018: $7F
    nop                                           ; $6019: $00
    ld a, e                                       ; $601A: $7B
    dec b                                         ; $601B: $05
    sbc c                                         ; $601C: $99
    ld h, [hl]                                    ; $601D: $66
    sbc c                                         ; $601E: $99
    ld h, [hl]                                    ; $601F: $66
    add b                                         ; $6020: $80
    nop                                           ; $6021: $00
    ret nz                                        ; $6022: $C0

    nop                                           ; $6023: $00
    ldh a, [$FFC0]                                ; $6024: $F0 $C0
    db $FC                                        ; $6026: $FC
    ld [hl], b                                    ; $6027: $70
    db $FC                                        ; $6028: $FC
    cp b                                          ; $6029: $B8
    ld hl, sp-$70                                 ; $602A: $F8 $90
    ret nc                                        ; $602C: $D0

    nop                                           ; $602D: $00
    ldh [rLCDC], a                                ; $602E: $E0 $40
    db $FC                                        ; $6030: $FC
    ld h, b                                       ; $6031: $60
    db $F4                                        ; $6032: $F4
    ld l, b                                       ; $6033: $68
    ld h, h                                       ; $6034: $64
    sbc b                                         ; $6035: $98
    ld a, b                                       ; $6036: $78
    add b                                         ; $6037: $80
    ldh a, [rP1]                                  ; $6038: $F0 $00
    ld hl, sp+$00                                 ; $603A: $F8 $00
    ld h, h                                       ; $603C: $64
    sbc b                                         ; $603D: $98
    ld h, h                                       ; $603E: $64
    sbc b                                         ; $603F: $98
    ld a, a                                       ; $6040: $7F
    ld [$0C3F], sp                                ; $6041: $08 $3F $0C
    ld a, $0C                                     ; $6044: $3E $0C
    inc a                                         ; $6046: $3C
    db $10                                        ; $6047: $10
    inc a                                         ; $6048: $3C
    jr jr_01E_6083                                ; $6049: $18 $38

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

jr_01E_605F:
    nop                                           ; $605F: $00
    ld hl, sp+$00                                 ; $6060: $F8 $00
    ldh [$FFC0], a                                ; $6062: $E0 $C0
    ldh a, [rP1]                                  ; $6064: $F0 $00
    ldh a, [$FF60]                                ; $6066: $F0 $60
    ld [hl], b                                    ; $6068: $70
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
    inc l                                         ; $6080: $2C

jr_01E_6081:
    nop                                           ; $6081: $00
    xor [hl]                                      ; $6082: $AE

jr_01E_6083:
    inc b                                         ; $6083: $04
    ld a, [hl]                                    ; $6084: $7E
    inc b                                         ; $6085: $04
    ld c, a                                       ; $6086: $4F
    ld [hl], $45                                  ; $6087: $36 $45
    ld a, [hl-]                                   ; $6089: $3A
    daa                                           ; $608A: $27
    jr jr_01E_60B2                                ; $608B: $18 $25

    jr jr_01E_60A1                                ; $608D: $18 $12

    dec c                                         ; $608F: $0D
    dec bc                                        ; $6090: $0B
    inc b                                         ; $6091: $04
    dec b                                         ; $6092: $05
    ld [bc], a                                    ; $6093: $02
    inc bc                                        ; $6094: $03
    nop                                           ; $6095: $00
    ld bc, $0200                                  ; $6096: $01 $00 $02
    ld bc, $0102                                  ; $6099: $01 $02 $01
    inc b                                         ; $609C: $04
    inc bc                                        ; $609D: $03

Call_01E_609E:
    inc b                                         ; $609E: $04
    inc bc                                        ; $609F: $03
    dec e                                         ; $60A0: $1D

jr_01E_60A1:
    ld [$193E], sp                                ; $60A1: $08 $3E $19
    ld [$B411], a                                 ; $60A4: $EA $11 $B4
    ld b, e                                       ; $60A7: $43
    or h                                          ; $60A8: $B4
    db $E3                                        ; $60A9: $E3
    add hl, bc                                    ; $60AA: $09
    or $BA                                        ; $60AB: $F6 $BA
    ld b, h                                       ; $60AD: $44
    db $F4                                        ; $60AE: $F4
    ld [$E058], sp                                ; $60AF: $08 $58 $E0

jr_01E_60B2:
    ldh a, [rP1]                                  ; $60B2: $F0 $00
    xor b                                         ; $60B4: $A8
    ld d, b                                       ; $60B5: $50
    add sp, $10                                   ; $60B6: $E8 $10
    and h                                         ; $60B8: $A4
    jr jr_01E_605F                                ; $60B9: $18 $A4

    jr jr_01E_60D1                                ; $60BB: $18 $14

    ld [$000C], sp                                ; $60BD: $08 $0C $00
    nop                                           ; $60C0: $00
    nop                                           ; $60C1: $00
    nop                                           ; $60C2: $00
    nop                                           ; $60C3: $00
    nop                                           ; $60C4: $00
    nop                                           ; $60C5: $00
    nop                                           ; $60C6: $00
    nop                                           ; $60C7: $00
    nop                                           ; $60C8: $00
    nop                                           ; $60C9: $00
    nop                                           ; $60CA: $00
    nop                                           ; $60CB: $00
    nop                                           ; $60CC: $00
    nop                                           ; $60CD: $00
    nop                                           ; $60CE: $00
    nop                                           ; $60CF: $00
    ld h, h                                       ; $60D0: $64

jr_01E_60D1:
    nop                                           ; $60D1: $00
    push hl                                       ; $60D2: $E5
    ld b, b                                       ; $60D3: $40
    xor $40                                       ; $60D4: $EE $40
    ldh a, [c]                                    ; $60D6: $F2
    call z, $8C52                                 ; $60D7: $CC $52 $8C
    and h                                         ; $60DA: $A4
    jr jr_01E_6081                                ; $60DB: $18 $A4

    jr jr_01E_6127                                ; $60DD: $18 $48

    or b                                          ; $60DF: $B0
    and d                                         ; $60E0: $A2
    ld b, c                                       ; $60E1: $41
    pop bc                                        ; $60E2: $C1
    nop                                           ; $60E3: $00
    nop                                           ; $60E4: $00
    nop                                           ; $60E5: $00
    nop                                           ; $60E6: $00
    nop                                           ; $60E7: $00
    nop                                           ; $60E8: $00
    nop                                           ; $60E9: $00
    nop                                           ; $60EA: $00
    nop                                           ; $60EB: $00
    nop                                           ; $60EC: $00
    nop                                           ; $60ED: $00
    nop                                           ; $60EE: $00
    nop                                           ; $60EF: $00
    nop                                           ; $60F0: $00
    nop                                           ; $60F1: $00
    nop                                           ; $60F2: $00
    nop                                           ; $60F3: $00
    nop                                           ; $60F4: $00
    nop                                           ; $60F5: $00

jr_01E_60F6:
    nop                                           ; $60F6: $00
    nop                                           ; $60F7: $00
    nop                                           ; $60F8: $00
    nop                                           ; $60F9: $00
    nop                                           ; $60FA: $00
    nop                                           ; $60FB: $00
    nop                                           ; $60FC: $00
    nop                                           ; $60FD: $00

Call_01E_60FE:
    nop                                           ; $60FE: $00
    nop                                           ; $60FF: $00

Call_01E_6100:
    ld h, c                                       ; $6100: $61
    nop                                           ; $6101: $00
    ld e, [hl]                                    ; $6102: $5E
    ld hl, $0A37                                  ; $6103: $21 $37 $0A
    ld [hl], e                                    ; $6106: $73
    dec l                                         ; $6107: $2D
    rst RST_38                                    ; $6108: $FF
    ld h, c                                       ; $6109: $61
    ei                                            ; $610A: $FB
    ld h, l                                       ; $610B: $65
    ld [hl], e                                    ; $610C: $73
    inc c                                         ; $610D: $0C
    ld a, [de]                                    ; $610E: $1A
    dec b                                         ; $610F: $05
    dec a                                         ; $6110: $3D
    ld [de], a                                    ; $6111: $12
    ccf                                           ; $6112: $3F
    inc e                                         ; $6113: $1C
    ld a, $11                                     ; $6114: $3E $11
    inc de                                        ; $6116: $13
    inc c                                         ; $6117: $0C
    inc c                                         ; $6118: $0C
    inc bc                                        ; $6119: $03
    rra                                           ; $611A: $1F
    nop                                           ; $611B: $00
    dec de                                        ; $611C: $1B
    inc b                                         ; $611D: $04
    add hl, de                                    ; $611E: $19
    ld b, $80                                     ; $611F: $06 $80
    nop                                           ; $6121: $00
    ret nz                                        ; $6122: $C0

    nop                                           ; $6123: $00
    ldh a, [$FFC0]                                ; $6124: $F0 $C0
    db $FC                                        ; $6126: $FC

jr_01E_6127:
    ld [hl], b                                    ; $6127: $70
    db $FC                                        ; $6128: $FC
    cp b                                          ; $6129: $B8
    ld hl, sp-$70                                 ; $612A: $F8 $90
    ret nc                                        ; $612C: $D0

    nop                                           ; $612D: $00
    ldh [rLCDC], a                                ; $612E: $E0 $40
    ldh a, [rNR41]                                ; $6130: $F0 $20
    ldh a, [rNR41]                                ; $6132: $F0 $20
    jr nc, jr_01E_60F6                            ; $6134: $30 $C0

    ld [hl], b                                    ; $6136: $70
    add b                                         ; $6137: $80
    ld hl, sp+$40                                 ; $6138: $F8 $40
    ld hl, sp+$00                                 ; $613A: $F8 $00
    inc [hl]                                      ; $613C: $34
    ret z                                         ; $613D: $C8

    inc [hl]                                      ; $613E: $34
    ret z                                         ; $613F: $C8

    rrca                                          ; $6140: $0F
    nop                                           ; $6141: $00
    rlca                                          ; $6142: $07
    inc bc                                        ; $6143: $03
    rlca                                          ; $6144: $07
    nop                                           ; $6145: $00
    nop                                           ; $6146: $00
    nop                                           ; $6147: $00
    nop                                           ; $6148: $00
    nop                                           ; $6149: $00
    nop                                           ; $614A: $00
    nop                                           ; $614B: $00
    nop                                           ; $614C: $00
    nop                                           ; $614D: $00
    nop                                           ; $614E: $00
    nop                                           ; $614F: $00
    nop                                           ; $6150: $00
    nop                                           ; $6151: $00
    nop                                           ; $6152: $00
    nop                                           ; $6153: $00
    nop                                           ; $6154: $00
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
    ld hl, sp+$20                                 ; $6160: $F8 $20
    ldh [rP1], a                                  ; $6162: $E0 $00
    ldh a, [$FF60]                                ; $6164: $F0 $60
    ldh a, [rP1]                                  ; $6166: $F0 $00
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
    inc b                                         ; $6180: $04
    nop                                           ; $6181: $00
    dec d                                         ; $6182: $15
    nop                                           ; $6183: $00
    ld c, $00                                     ; $6184: $0E $00
    add hl, bc                                    ; $6186: $09
    ld b, $09                                     ; $6187: $06 $09
    ld b, $09                                     ; $6189: $06 $09
    ld b, $0A                                     ; $618B: $06 $0A
    inc b                                         ; $618D: $04
    ld a, [bc]                                    ; $618E: $0A
    inc b                                         ; $618F: $04
    ld a, [bc]                                    ; $6190: $0A
    inc b                                         ; $6191: $04
    dec bc                                        ; $6192: $0B
    inc b                                         ; $6193: $04
    ld a, [bc]                                    ; $6194: $0A
    dec b                                         ; $6195: $05
    push bc                                       ; $6196: $C5
    ld [bc], a                                    ; $6197: $02
    and h                                         ; $6198: $A4
    ld b, e                                       ; $6199: $43
    sbc l                                         ; $619A: $9D
    ld h, e                                       ; $619B: $63
    ld c, [hl]                                    ; $619C: $4E
    ld sp, $043B                                  ; $619D: $31 $3B $04
    nop                                           ; $61A0: $00
    nop                                           ; $61A1: $00
    nop                                           ; $61A2: $00
    nop                                           ; $61A3: $00
    inc c                                         ; $61A4: $0C
    nop                                           ; $61A5: $00
    inc e                                         ; $61A6: $1C
    ld [$183C], sp                                ; $61A7: $08 $3C $18
    jr c, jr_01E_61BC                             ; $61AA: $38 $10

    ld e, b                                       ; $61AC: $58
    jr nc, jr_01E_61FF                            ; $61AD: $30 $50

    jr nz, jr_01E_6221                            ; $61AF: $20 $70

    nop                                           ; $61B1: $00
    sub b                                         ; $61B2: $90
    ld h, b                                       ; $61B3: $60
    ld c, h                                       ; $61B4: $4C
    ldh a, [$FF2B]                                ; $61B5: $F0 $2B
    db $F4                                        ; $61B7: $F4
    sbc e                                         ; $61B8: $9B
    ld h, a                                       ; $61B9: $67
    ld d, a                                       ; $61BA: $57
    and c                                         ; $61BB: $A1

jr_01E_61BC:
    ld [hl], c                                    ; $61BC: $71
    add b                                         ; $61BD: $80
    cp [hl]                                       ; $61BE: $BE
    ld b, b                                       ; $61BF: $40
    call nc, Call_01E_5B23                        ; $61C0: $D4 $23 $5B
    jr nz, jr_01E_6209                            ; $61C3: $20 $44

    jr c, jr_01E_6203                             ; $61C5: $38 $3C

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
    cp b                                          ; $61E0: $B8
    ld [hl], b                                    ; $61E1: $70
    ld a, h                                       ; $61E2: $7C
    jr jr_01E_6201                                ; $61E3: $18 $1C

    nop                                           ; $61E5: $00
    add sp, $00                                   ; $61E6: $E8 $00
    db $10                                        ; $61E8: $10
    ldh [rNR32], a                                ; $61E9: $E0 $1C
    ldh [$FFF0], a                                ; $61EB: $E0 $F0
    nop                                           ; $61ED: $00
    ld [$0000], sp                                ; $61EE: $08 $00 $00
    nop                                           ; $61F1: $00
    nop                                           ; $61F2: $00
    nop                                           ; $61F3: $00
    nop                                           ; $61F4: $00
    nop                                           ; $61F5: $00
    nop                                           ; $61F6: $00
    nop                                           ; $61F7: $00
    nop                                           ; $61F8: $00
    nop                                           ; $61F9: $00
    nop                                           ; $61FA: $00
    nop                                           ; $61FB: $00
    nop                                           ; $61FC: $00
    nop                                           ; $61FD: $00
    nop                                           ; $61FE: $00

jr_01E_61FF:
    nop                                           ; $61FF: $00
    nop                                           ; $6200: $00

jr_01E_6201:
    nop                                           ; $6201: $00
    ld h, c                                       ; $6202: $61

jr_01E_6203:
    nop                                           ; $6203: $00
    ld e, [hl]                                    ; $6204: $5E
    ld hl, $0A37                                  ; $6205: $21 $37 $0A

jr_01E_6208:
    ld [hl], e                                    ; $6208: $73

jr_01E_6209:
    dec l                                         ; $6209: $2D
    rst RST_38                                    ; $620A: $FF
    ld h, c                                       ; $620B: $61
    ei                                            ; $620C: $FB
    ld h, l                                       ; $620D: $65
    ld [hl], e                                    ; $620E: $73
    inc c                                         ; $620F: $0C
    ld a, [de]                                    ; $6210: $1A
    dec b                                         ; $6211: $05
    dec a                                         ; $6212: $3D
    ld [de], a                                    ; $6213: $12
    ccf                                           ; $6214: $3F
    inc e                                         ; $6215: $1C
    ld a, $1D                                     ; $6216: $3E $1D
    rra                                           ; $6218: $1F
    inc c                                         ; $6219: $0C
    rra                                           ; $621A: $1F
    inc b                                         ; $621B: $04
    rra                                           ; $621C: $1F
    ld bc, $041B                                  ; $621D: $01 $1B $04
    nop                                           ; $6220: $00

jr_01E_6221:
    nop                                           ; $6221: $00
    add b                                         ; $6222: $80
    nop                                           ; $6223: $00
    ret nz                                        ; $6224: $C0

    nop                                           ; $6225: $00
    ldh a, [$FFC0]                                ; $6226: $F0 $C0
    db $FC                                        ; $6228: $FC
    ld [hl], b                                    ; $6229: $70
    db $FC                                        ; $622A: $FC
    cp b                                          ; $622B: $B8
    ld hl, sp-$70                                 ; $622C: $F8 $90
    ret nc                                        ; $622E: $D0

    nop                                           ; $622F: $00
    ldh [rLCDC], a                                ; $6230: $E0 $40
    ldh a, [rNR41]                                ; $6232: $F0 $20
    ld hl, sp+$10                                 ; $6234: $F8 $10
    jr c, jr_01E_6208                             ; $6236: $38 $D0

    ld a, b                                       ; $6238: $78
    add b                                         ; $6239: $80
    db $F4                                        ; $623A: $F4
    ld [$40BC], sp                                ; $623B: $08 $BC $40
    ld [hl-], a                                   ; $623E: $32
    call z, Call_000_000F                         ; $623F: $CC $0F $00
    rrca                                          ; $6242: $0F
    ld b, $1F                                     ; $6243: $06 $1F
    ld b, $3F                                     ; $6245: $06 $3F
    jr jr_01E_62C6                                ; $6247: $18 $7D

    jr c, @+$7E                                   ; $6249: $38 $7C

    nop                                           ; $624B: $00
    nop                                           ; $624C: $00
    nop                                           ; $624D: $00
    nop                                           ; $624E: $00
    nop                                           ; $624F: $00
    nop                                           ; $6250: $00
    nop                                           ; $6251: $00
    nop                                           ; $6252: $00
    nop                                           ; $6253: $00
    nop                                           ; $6254: $00
    nop                                           ; $6255: $00
    nop                                           ; $6256: $00
    nop                                           ; $6257: $00
    nop                                           ; $6258: $00
    nop                                           ; $6259: $00
    nop                                           ; $625A: $00
    nop                                           ; $625B: $00
    nop                                           ; $625C: $00
    nop                                           ; $625D: $00
    nop                                           ; $625E: $00
    nop                                           ; $625F: $00
    ld [hl-], a                                   ; $6260: $32
    call z, $804C                                 ; $6261: $CC $4C $80
    ldh [rLCDC], a                                ; $6264: $E0 $40
    ldh [$FFC0], a                                ; $6266: $E0 $C0
    ldh [$FF80], a                                ; $6268: $E0 $80
    ldh a, [$FF60]                                ; $626A: $F0 $60
    ldh a, [$FF60]                                ; $626C: $F0 $60
    ldh a, [rP1]                                  ; $626E: $F0 $00
    nop                                           ; $6270: $00
    nop                                           ; $6271: $00

jr_01E_6272:
    nop                                           ; $6272: $00
    nop                                           ; $6273: $00
    nop                                           ; $6274: $00
    nop                                           ; $6275: $00
    nop                                           ; $6276: $00
    nop                                           ; $6277: $00

jr_01E_6278:
    nop                                           ; $6278: $00
    nop                                           ; $6279: $00
    nop                                           ; $627A: $00
    nop                                           ; $627B: $00
    nop                                           ; $627C: $00
    nop                                           ; $627D: $00
    nop                                           ; $627E: $00
    nop                                           ; $627F: $00
    ld [hl], b                                    ; $6280: $70
    nop                                           ; $6281: $00
    ld a, c                                       ; $6282: $79
    jr nc, @+$6B                                  ; $6283: $30 $69

    jr nc, jr_01E_62C6                            ; $6285: $30 $3F

    nop                                           ; $6287: $00
    dec de                                        ; $6288: $1B
    inc b                                         ; $6289: $04
    ld a, [hl+]                                   ; $628A: $2A
    rra                                           ; $628B: $1F
    ld sp, $7F0E                                  ; $628C: $31 $0E $7F
    nop                                           ; $628F: $00
    add h                                         ; $6290: $84
    ld a, e                                       ; $6291: $7B
    call nz, Call_01E_7F3B                        ; $6292: $C4 $3B $7F
    nop                                           ; $6295: $00
    adc [hl]                                      ; $6296: $8E
    ld [hl], c                                    ; $6297: $71
    ld sp, hl                                     ; $6298: $F9
    nop                                           ; $6299: $00
    nop                                           ; $629A: $00
    nop                                           ; $629B: $00
    nop                                           ; $629C: $00
    nop                                           ; $629D: $00
    nop                                           ; $629E: $00
    nop                                           ; $629F: $00
    ldh [rP1], a                                  ; $62A0: $E0 $00
    ldh [$FFC0], a                                ; $62A2: $E0 $C0
    ld h, b                                       ; $62A4: $60
    ret nz                                        ; $62A5: $C0

    ret nz                                        ; $62A6: $C0

    nop                                           ; $62A7: $00
    nop                                           ; $62A8: $00
    nop                                           ; $62A9: $00
    add b                                         ; $62AA: $80
    nop                                           ; $62AB: $00
    add b                                         ; $62AC: $80
    nop                                           ; $62AD: $00
    ret nz                                        ; $62AE: $C0

    nop                                           ; $62AF: $00
    jr nz, jr_01E_6272                            ; $62B0: $20 $C0

    ld h, b                                       ; $62B2: $60
    add b                                         ; $62B3: $80
    ret nz                                        ; $62B4: $C0

    nop                                           ; $62B5: $00
    jr nz, jr_01E_6278                            ; $62B6: $20 $C0

    ldh [rP1], a                                  ; $62B8: $E0 $00
    nop                                           ; $62BA: $00
    nop                                           ; $62BB: $00
    nop                                           ; $62BC: $00
    nop                                           ; $62BD: $00
    nop                                           ; $62BE: $00
    nop                                           ; $62BF: $00
    ld bc, $0100                                  ; $62C0: $01 $00 $01
    nop                                           ; $62C3: $00
    nop                                           ; $62C4: $00
    nop                                           ; $62C5: $00

jr_01E_62C6:
    ld bc, $0300                                  ; $62C6: $01 $00 $03
    ld bc, $0103                                  ; $62C9: $01 $03 $01
    add hl, sp                                    ; $62CC: $39
    nop                                           ; $62CD: $00
    ld l, b                                       ; $62CE: $68
    db $10                                        ; $62CF: $10
    xor c                                         ; $62D0: $A9
    ld d, b                                       ; $62D1: $50
    ld e, a                                       ; $62D2: $5F
    ld hl, $2D53                                  ; $62D3: $21 $53 $2D

jr_01E_62D6:
    ccf                                           ; $62D6: $3F
    nop                                           ; $62D7: $00
    ld bc, $0000                                  ; $62D8: $01 $00 $00
    nop                                           ; $62DB: $00
    nop                                           ; $62DC: $00
    nop                                           ; $62DD: $00
    nop                                           ; $62DE: $00
    nop                                           ; $62DF: $00
    add [hl]                                      ; $62E0: $86
    nop                                           ; $62E1: $00
    ld a, e                                       ; $62E2: $7B
    add h                                         ; $62E3: $84
    rst RST_18                                    ; $62E4: $DF
    dec hl                                        ; $62E5: $2B
    rst RST_08                                    ; $62E6: $CF
    or l                                          ; $62E7: $B5
    rst RST_38                                    ; $62E8: $FF
    add [hl]                                      ; $62E9: $86
    rst RST_28                                    ; $62EA: $EF
    sub [hl]                                      ; $62EB: $96
    rst RST_08                                    ; $62EC: $CF
    jr nc, jr_01E_635A                            ; $62ED: $30 $6B

    inc d                                         ; $62EF: $14
    rst RST_20                                    ; $62F0: $E7
    ld e, c                                       ; $62F1: $59
    rst RST_18                                    ; $62F2: $DF
    and e                                         ; $62F3: $A3
    rst RST_10                                    ; $62F4: $D7
    cp l                                          ; $62F5: $BD
    rst RST_38                                    ; $62F6: $FF
    sbc b                                         ; $62F7: $98
    cp $81                                        ; $62F8: $FE $81
    rst RST_18                                    ; $62FA: $DF
    jr z, jr_01E_62D6                             ; $62FB: $28 $D9

    ld h, $C9                                     ; $62FD: $26 $C9
    ld [hl], $00                                  ; $62FF: $36 $00
    nop                                           ; $6301: $00
    nop                                           ; $6302: $00
    nop                                           ; $6303: $00
    ret nz                                        ; $6304: $C0

    nop                                           ; $6305: $00
    ldh a, [$FFC0]                                ; $6306: $F0 $C0
    ldh a, [$FFE0]                                ; $6308: $F0 $E0
    ldh [rLCDC], a                                ; $630A: $E0 $40
    ld b, b                                       ; $630C: $40
    nop                                           ; $630D: $00
    nop                                           ; $630E: $00
    nop                                           ; $630F: $00
    ret nz                                        ; $6310: $C0

    nop                                           ; $6311: $00
    ldh [$FFC0], a                                ; $6312: $E0 $C0
    ldh [$FF80], a                                ; $6314: $E0 $80
    and b                                         ; $6316: $A0
    ld b, b                                       ; $6317: $40
    jr nz, @-$3E                                  ; $6318: $20 $C0

    ldh [rP1], a                                  ; $631A: $E0 $00
    ldh [rP1], a                                  ; $631C: $E0 $00
    ld h, b                                       ; $631E: $60
    nop                                           ; $631F: $00
    dec a                                         ; $6320: $3D

jr_01E_6321:
    db $10                                        ; $6321: $10
    dec a                                         ; $6322: $3D
    jr jr_01E_635E                                ; $6323: $18 $39

    db $10                                        ; $6325: $10
    ld a, b                                       ; $6326: $78
    jr nz, jr_01E_6321                            ; $6327: $20 $F8

    ld [hl], b                                    ; $6329: $70
    ldh a, [rP1]                                  ; $632A: $F0 $00
    nop                                           ; $632C: $00
    nop                                           ; $632D: $00
    nop                                           ; $632E: $00
    nop                                           ; $632F: $00
    nop                                           ; $6330: $00
    nop                                           ; $6331: $00
    nop                                           ; $6332: $00
    nop                                           ; $6333: $00
    nop                                           ; $6334: $00
    nop                                           ; $6335: $00
    nop                                           ; $6336: $00
    nop                                           ; $6337: $00
    nop                                           ; $6338: $00
    nop                                           ; $6339: $00
    nop                                           ; $633A: $00
    nop                                           ; $633B: $00
    nop                                           ; $633C: $00
    nop                                           ; $633D: $00
    nop                                           ; $633E: $00
    nop                                           ; $633F: $00
    ld h, h                                       ; $6340: $64
    sbc b                                         ; $6341: $98
    db $F4                                        ; $6342: $F4
    ld l, b                                       ; $6343: $68
    ld hl, sp-$20                                 ; $6344: $F8 $E0
    ld hl, sp+$20                                 ; $6346: $F8 $20
    inc a                                         ; $6348: $3C
    jr jr_01E_6389                                ; $6349: $18 $3E

    inc e                                         ; $634B: $1C
    ld a, $00                                     ; $634C: $3E $00
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

jr_01E_635A:
    nop                                           ; $635A: $00
    nop                                           ; $635B: $00
    nop                                           ; $635C: $00

jr_01E_635D:
    nop                                           ; $635D: $00

jr_01E_635E:
    nop                                           ; $635E: $00
    nop                                           ; $635F: $00
    jr jr_01E_6362                                ; $6360: $18 $00

jr_01E_6362:
    inc e                                         ; $6362: $1C
    ld [$081C], sp                                ; $6363: $08 $1C $08
    ld e, $0C                                     ; $6366: $1E $0C
    dec bc                                        ; $6368: $0B
    inc b                                         ; $6369: $04
    ld b, $01                                     ; $636A: $06 $01
    ld b, $03                                     ; $636C: $06 $03
    ld [$3E07], sp                                ; $636E: $08 $07 $3E
    ld bc, $3847                                  ; $6371: $01 $47 $38
    ld c, l                                       ; $6374: $4D
    inc sp                                        ; $6375: $33
    ld b, a                                       ; $6376: $47
    jr c, @+$3C                                   ; $6377: $38 $3A

    dec b                                         ; $6379: $05
    inc hl                                        ; $637A: $23
    inc e                                         ; $637B: $1C
    ld a, $00                                     ; $637C: $3E $00
    nop                                           ; $637E: $00
    nop                                           ; $637F: $00
    dec e                                         ; $6380: $1D
    ld [bc], a                                    ; $6381: $02
    dec a                                         ; $6382: $3D
    ld [de], a                                    ; $6383: $12
    ccf                                           ; $6384: $3F
    db $10                                        ; $6385: $10
    ld a, a                                       ; $6386: $7F
    jr nc, jr_01E_635D                            ; $6387: $30 $D4

jr_01E_6389:
    dec hl                                        ; $6389: $2B
    rst RST_30                                    ; $638A: $F7
    ld [$8CD2], sp                                ; $638B: $08 $D2 $8C
    inc h                                         ; $638E: $24
    ret c                                         ; $638F: $D8

    add sp, $10                                   ; $6390: $E8 $10
    ret nc                                        ; $6392: $D0

    jr nz, jr_01E_63F5                            ; $6393: $20 $60

    add b                                         ; $6395: $80
    ret nz                                        ; $6396: $C0

    nop                                           ; $6397: $00
    or b                                          ; $6398: $B0
    ld b, b                                       ; $6399: $40
    adc b                                         ; $639A: $88
    ld [hl], b                                    ; $639B: $70
    ld a, b                                       ; $639C: $78
    nop                                           ; $639D: $00
    nop                                           ; $639E: $00
    nop                                           ; $639F: $00
    nop                                           ; $63A0: $00
    nop                                           ; $63A1: $00
    nop                                           ; $63A2: $00
    nop                                           ; $63A3: $00
    nop                                           ; $63A4: $00
    nop                                           ; $63A5: $00
    nop                                           ; $63A6: $00
    nop                                           ; $63A7: $00
    nop                                           ; $63A8: $00
    nop                                           ; $63A9: $00
    nop                                           ; $63AA: $00
    nop                                           ; $63AB: $00
    nop                                           ; $63AC: $00
    nop                                           ; $63AD: $00
    nop                                           ; $63AE: $00
    nop                                           ; $63AF: $00
    nop                                           ; $63B0: $00
    nop                                           ; $63B1: $00
    jr nc, jr_01E_63B4                            ; $63B2: $30 $00

jr_01E_63B4:
    ld d, [hl]                                    ; $63B4: $56
    jr nz, @-$24                                  ; $63B5: $20 $DA

    inc h                                         ; $63B7: $24
    jp c, $F424                                   ; $63B8: $DA $24 $F4

    ld [$00F8], sp                                ; $63BB: $08 $F8 $00
    ld c, b                                       ; $63BE: $48
    or b                                          ; $63BF: $B0
    ld a, a                                       ; $63C0: $7F
    nop                                           ; $63C1: $00
    add b                                         ; $63C2: $80
    ld a, a                                       ; $63C3: $7F
    sub c                                         ; $63C4: $91
    ld l, [hl]                                    ; $63C5: $6E
    adc b                                         ; $63C6: $88
    ld [hl], a                                    ; $63C7: $77
    adc a                                         ; $63C8: $8F
    ld [hl], b                                    ; $63C9: $70
    cp b                                          ; $63CA: $B8
    ld b, a                                       ; $63CB: $47
    adc c                                         ; $63CC: $89
    halt                                          ; $63CD: $76
    add h                                         ; $63CE: $84
    ld a, e                                       ; $63CF: $7B
    add h                                         ; $63D0: $84
    ld a, e                                       ; $63D1: $7B
    add h                                         ; $63D2: $84
    ld a, e                                       ; $63D3: $7B
    add b                                         ; $63D4: $80
    ld a, a                                       ; $63D5: $7F
    ld h, c                                       ; $63D6: $61
    ld e, $11                                     ; $63D7: $1E $11
    ld c, $09                                     ; $63D9: $0E $09
    ld b, $05                                     ; $63DB: $06 $05
    ld [bc], a                                    ; $63DD: $02
    inc bc                                        ; $63DE: $03
    nop                                           ; $63DF: $00
    rst RST_38                                    ; $63E0: $FF
    nop                                           ; $63E1: $00
    nop                                           ; $63E2: $00
    rst RST_38                                    ; $63E3: $FF
    nop                                           ; $63E4: $00
    rst RST_38                                    ; $63E5: $FF
    add b                                         ; $63E6: $80
    ld a, a                                       ; $63E7: $7F
    add b                                         ; $63E8: $80
    ld a, a                                       ; $63E9: $7F
    ld b, b                                       ; $63EA: $40
    cp a                                          ; $63EB: $BF
    sbc [hl]                                      ; $63EC: $9E

jr_01E_63ED:
    ld h, c                                       ; $63ED: $61
    ld bc, $01FE                                  ; $63EE: $01 $FE $01
    cp $06                                        ; $63F1: $FE $06
    ld sp, hl                                     ; $63F3: $F9
    nop                                           ; $63F4: $00

jr_01E_63F5:
    rst RST_38                                    ; $63F5: $FF
    rst RST_38                                    ; $63F6: $FF
    nop                                           ; $63F7: $00
    nop                                           ; $63F8: $00
    nop                                           ; $63F9: $00
    nop                                           ; $63FA: $00
    nop                                           ; $63FB: $00
    nop                                           ; $63FC: $00
    nop                                           ; $63FD: $00
    nop                                           ; $63FE: $00
    nop                                           ; $63FF: $00
    rst RST_38                                    ; $6400: $FF
    nop                                           ; $6401: $00
    nop                                           ; $6402: $00
    rst RST_38                                    ; $6403: $FF
    db $10                                        ; $6404: $10
    rst RST_28                                    ; $6405: $EF
    db $10                                        ; $6406: $10
    rst RST_28                                    ; $6407: $EF
    ld a, b                                       ; $6408: $78
    add a                                         ; $6409: $87
    daa                                           ; $640A: $27
    ret c                                         ; $640B: $D8

    jr nz, jr_01E_63ED                            ; $640C: $20 $DF

    jr nz, @-$1F                                  ; $640E: $20 $DF

    ld c, b                                       ; $6410: $48
    or a                                          ; $6411: $B7
    ld b, a                                       ; $6412: $47
    cp b                                          ; $6413: $B8
    nop                                           ; $6414: $00
    rst RST_38                                    ; $6415: $FF
    rst RST_38                                    ; $6416: $FF
    nop                                           ; $6417: $00
    nop                                           ; $6418: $00
    nop                                           ; $6419: $00
    nop                                           ; $641A: $00
    nop                                           ; $641B: $00
    nop                                           ; $641C: $00
    nop                                           ; $641D: $00
    nop                                           ; $641E: $00
    nop                                           ; $641F: $00
    rst RST_38                                    ; $6420: $FF
    nop                                           ; $6421: $00
    nop                                           ; $6422: $00
    rst RST_38                                    ; $6423: $FF
    nop                                           ; $6424: $00
    rst RST_38                                    ; $6425: $FF
    nop                                           ; $6426: $00
    rst RST_38                                    ; $6427: $FF
    nop                                           ; $6428: $00
    rst RST_38                                    ; $6429: $FF
    nop                                           ; $642A: $00
    rst RST_38                                    ; $642B: $FF
    ld a, [hl]                                    ; $642C: $7E
    add c                                         ; $642D: $81
    nop                                           ; $642E: $00
    rst RST_38                                    ; $642F: $FF
    nop                                           ; $6430: $00
    rst RST_38                                    ; $6431: $FF
    nop                                           ; $6432: $00
    rst RST_38                                    ; $6433: $FF
    nop                                           ; $6434: $00
    rst RST_38                                    ; $6435: $FF
    rst RST_38                                    ; $6436: $FF
    nop                                           ; $6437: $00
    nop                                           ; $6438: $00
    nop                                           ; $6439: $00
    nop                                           ; $643A: $00
    nop                                           ; $643B: $00
    nop                                           ; $643C: $00
    nop                                           ; $643D: $00
    nop                                           ; $643E: $00
    nop                                           ; $643F: $00
    cp $00                                        ; $6440: $FE $00
    ld bc, $01FE                                  ; $6442: $01 $FE $01
    cp $D9                                        ; $6445: $FE $D9
    ld h, $D9                                     ; $6447: $26 $D9
    ld h, $D9                                     ; $6449: $26 $D9
    ld h, $D9                                     ; $644B: $26 $D9
    ld h, $01                                     ; $644D: $26 $01
    cp $D9                                        ; $644F: $FE $D9
    ld h, $D9                                     ; $6451: $26 $D9
    ld h, $01                                     ; $6453: $26 $01
    cp $FE                                        ; $6455: $FE $FE
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
    nop                                           ; $6464: $00
    nop                                           ; $6465: $00
    ld bc, $0300                                  ; $6466: $01 $00 $03
    ld bc, $0103                                  ; $6469: $01 $03 $01
    add hl, sp                                    ; $646C: $39
    nop                                           ; $646D: $00
    ld l, b                                       ; $646E: $68
    db $10                                        ; $646F: $10
    xor c                                         ; $6470: $A9
    ld d, b                                       ; $6471: $50
    ld e, a                                       ; $6472: $5F
    ld hl, $2D53                                  ; $6473: $21 $53 $2D

jr_01E_6476:
    ccf                                           ; $6476: $3F
    nop                                           ; $6477: $00
    ld bc, $0000                                  ; $6478: $01 $00 $00
    nop                                           ; $647B: $00
    nop                                           ; $647C: $00
    nop                                           ; $647D: $00
    nop                                           ; $647E: $00
    nop                                           ; $647F: $00
    add [hl]                                      ; $6480: $86
    nop                                           ; $6481: $00
    ld a, e                                       ; $6482: $7B
    add h                                         ; $6483: $84
    rst RST_18                                    ; $6484: $DF
    dec hl                                        ; $6485: $2B
    rst RST_08                                    ; $6486: $CF
    or l                                          ; $6487: $B5
    rst RST_38                                    ; $6488: $FF
    add [hl]                                      ; $6489: $86
    rst RST_28                                    ; $648A: $EF
    sub [hl]                                      ; $648B: $96
    rst RST_08                                    ; $648C: $CF
    jr nc, jr_01E_64FA                            ; $648D: $30 $6B

    inc d                                         ; $648F: $14
    rst RST_20                                    ; $6490: $E7
    ld e, c                                       ; $6491: $59
    rst RST_18                                    ; $6492: $DF
    and e                                         ; $6493: $A3
    rst RST_10                                    ; $6494: $D7
    cp l                                          ; $6495: $BD
    rst RST_38                                    ; $6496: $FF
    sbc b                                         ; $6497: $98
    cp $81                                        ; $6498: $FE $81
    rst RST_18                                    ; $649A: $DF
    jr z, jr_01E_6476                             ; $649B: $28 $D9

    ld h, $C9                                     ; $649D: $26 $C9
    ld [hl], $F0                                  ; $649F: $36 $F0
    ret nz                                        ; $64A1: $C0

    db $FC                                        ; $64A2: $FC
    ld [hl], b                                    ; $64A3: $70
    db $FC                                        ; $64A4: $FC
    cp b                                          ; $64A5: $B8
    ld hl, sp-$70                                 ; $64A6: $F8 $90
    ret nc                                        ; $64A8: $D0

    nop                                           ; $64A9: $00
    ret nz                                        ; $64AA: $C0

    nop                                           ; $64AB: $00
    ldh a, [rLCDC]                                ; $64AC: $F0 $40
    ld hl, sp-$10                                 ; $64AE: $F8 $F0
    ld hl, sp+$60                                 ; $64B0: $F8 $60
    add sp, $10                                   ; $64B2: $E8 $10
    adc b                                         ; $64B4: $88
    ld [hl], b                                    ; $64B5: $70
    ld hl, sp+$00                                 ; $64B6: $F8 $00
    ld a, b                                       ; $64B8: $78
    add b                                         ; $64B9: $80
    ld e, b                                       ; $64BA: $58
    add b                                         ; $64BB: $80
    ld h, h                                       ; $64BC: $64
    sbc b                                         ; $64BD: $98
    db $F4                                        ; $64BE: $F4
    ld l, b                                       ; $64BF: $68
    dec a                                         ; $64C0: $3D

jr_01E_64C1:
    db $10                                        ; $64C1: $10
    dec a                                         ; $64C2: $3D
    jr jr_01E_64FE                                ; $64C3: $18 $39

    db $10                                        ; $64C5: $10
    ld a, b                                       ; $64C6: $78
    jr nz, jr_01E_64C1                            ; $64C7: $20 $F8

    ld [hl], b                                    ; $64C9: $70
    ldh a, [rP1]                                  ; $64CA: $F0 $00
    nop                                           ; $64CC: $00
    nop                                           ; $64CD: $00
    nop                                           ; $64CE: $00
    nop                                           ; $64CF: $00
    nop                                           ; $64D0: $00
    nop                                           ; $64D1: $00
    nop                                           ; $64D2: $00
    nop                                           ; $64D3: $00
    nop                                           ; $64D4: $00

jr_01E_64D5:
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
    ld hl, sp-$20                                 ; $64E0: $F8 $E0
    ld hl, sp+$20                                 ; $64E2: $F8 $20
    inc a                                         ; $64E4: $3C
    jr jr_01E_6525                                ; $64E5: $18 $3E

    inc e                                         ; $64E7: $1C
    ld a, $00                                     ; $64E8: $3E $00
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
    nop                                           ; $64F6: $00
    nop                                           ; $64F7: $00
    nop                                           ; $64F8: $00
    nop                                           ; $64F9: $00

jr_01E_64FA:
    nop                                           ; $64FA: $00
    nop                                           ; $64FB: $00
    nop                                           ; $64FC: $00
    nop                                           ; $64FD: $00

jr_01E_64FE:
    nop                                           ; $64FE: $00
    nop                                           ; $64FF: $00
    nop                                           ; $6500: $00
    nop                                           ; $6501: $00
    jr nc, jr_01E_6504                            ; $6502: $30 $00

jr_01E_6504:
    jr c, jr_01E_6516                             ; $6504: $38 $10

    jr c, jr_01E_6518                             ; $6506: $38 $10

    inc a                                         ; $6508: $3C
    jr jr_01E_6522                                ; $6509: $18 $17

    ld [$020D], sp                                ; $650B: $08 $0D $02
    dec c                                         ; $650E: $0D
    rlca                                          ; $650F: $07
    db $10                                        ; $6510: $10
    rrca                                          ; $6511: $0F
    ld a, l                                       ; $6512: $7D
    ld [bc], a                                    ; $6513: $02
    adc a                                         ; $6514: $8F
    ld [hl], b                                    ; $6515: $70

jr_01E_6516:
    sbc d                                         ; $6516: $9A
    ld h, a                                       ; $6517: $67

jr_01E_6518:
    adc a                                         ; $6518: $8F
    ld [hl], b                                    ; $6519: $70
    ld [hl], l                                    ; $651A: $75
    ld a, [bc]                                    ; $651B: $0A
    ld b, a                                       ; $651C: $47
    jr c, jr_01E_659B                             ; $651D: $38 $7C

    nop                                           ; $651F: $00
    ld a, [bc]                                    ; $6520: $0A
    inc b                                         ; $6521: $04

jr_01E_6522:
    dec sp                                        ; $6522: $3B
    inc b                                         ; $6523: $04
    ld a, e                                       ; $6524: $7B

jr_01E_6525:
    inc h                                         ; $6525: $24
    ld a, [hl]                                    ; $6526: $7E
    ld hl, $60FF                                  ; $6527: $21 $FF $60
    xor c                                         ; $652A: $A9
    ld d, [hl]                                    ; $652B: $56
    xor $10                                       ; $652C: $EE $10
    and h                                         ; $652E: $A4
    jr jr_01E_6579                                ; $652F: $18 $48

    or b                                          ; $6531: $B0
    ret nc                                        ; $6532: $D0

    jr nz, jr_01E_64D5                            ; $6533: $20 $A0

    ld b, b                                       ; $6535: $40
    ret nz                                        ; $6536: $C0

    nop                                           ; $6537: $00
    add b                                         ; $6538: $80
    nop                                           ; $6539: $00
    ld h, b                                       ; $653A: $60
    add b                                         ; $653B: $80
    db $10                                        ; $653C: $10
    ldh [$FFF0], a                                ; $653D: $E0 $F0
    nop                                           ; $653F: $00
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
    ret nz                                        ; $6556: $C0

    nop                                           ; $6557: $00
    ld e, b                                       ; $6558: $58
    add b                                         ; $6559: $80
    ld l, b                                       ; $655A: $68
    sub b                                         ; $655B: $90
    ld l, b                                       ; $655C: $68
    sub b                                         ; $655D: $90
    ret nc                                        ; $655E: $D0

    jr nz, jr_01E_6561                            ; $655F: $20 $00

jr_01E_6561:
    nop                                           ; $6561: $00
    nop                                           ; $6562: $00
    nop                                           ; $6563: $00
    ld h, c                                       ; $6564: $61
    nop                                           ; $6565: $00
    ld e, [hl]                                    ; $6566: $5E
    ld hl, $0A37                                  ; $6567: $21 $37 $0A
    ld [hl], e                                    ; $656A: $73
    inc l                                         ; $656B: $2C
    rst RST_38                                    ; $656C: $FF
    ld h, c                                       ; $656D: $61
    ei                                            ; $656E: $FB
    ld h, l                                       ; $656F: $65
    ld [hl], e                                    ; $6570: $73
    dec c                                         ; $6571: $0D
    dec de                                        ; $6572: $1B
    inc b                                         ; $6573: $04
    dec a                                         ; $6574: $3D
    ld [de], a                                    ; $6575: $12
    ld a, a                                       ; $6576: $7F
    inc d                                         ; $6577: $14
    ld e, l                                       ; $6578: $5D

jr_01E_6579:
    ld h, $4F                                     ; $6579: $26 $4F
    ld [hl-], a                                   ; $657B: $32
    ld a, a                                       ; $657C: $7F
    nop                                           ; $657D: $00
    ld a, e                                       ; $657E: $7B
    dec b                                         ; $657F: $05
    nop                                           ; $6580: $00
    nop                                           ; $6581: $00
    nop                                           ; $6582: $00
    nop                                           ; $6583: $00
    add b                                         ; $6584: $80
    nop                                           ; $6585: $00
    ld hl, sp+$00                                 ; $6586: $F8 $00
    call nc, $93A8                                ; $6588: $D4 $A8 $93
    ld l, h                                       ; $658B: $6C
    sub a                                         ; $658C: $97
    ld l, d                                       ; $658D: $6A
    sub a                                         ; $658E: $97
    ld l, d                                       ; $658F: $6A
    ld e, e                                       ; $6590: $5B
    and [hl]                                      ; $6591: $A6
    ld a, e                                       ; $6592: $7B
    add h                                         ; $6593: $84
    db $ED                                        ; $6594: $ED
    ld [de], a                                    ; $6595: $12
    ld l, l                                       ; $6596: $6D
    cp d                                          ; $6597: $BA
    add e                                         ; $6598: $83
    ld a, h                                       ; $6599: $7C
    ld l, l                                       ; $659A: $6D

jr_01E_659B:
    sub d                                         ; $659B: $92
    cp $00                                        ; $659C: $FE $00
    sub $38                                       ; $659E: $D6 $38
    sbc c                                         ; $65A0: $99
    ld h, [hl]                                    ; $65A1: $66
    sbc c                                         ; $65A2: $99
    ld h, [hl]                                    ; $65A3: $66
    ld a, a                                       ; $65A4: $7F
    ld [$0C3F], sp                                ; $65A5: $08 $3F $0C
    ccf                                           ; $65A8: $3F
    inc c                                         ; $65A9: $0C
    dec a                                         ; $65AA: $3D
    db $10                                        ; $65AB: $10
    dec a                                         ; $65AC: $3D
    jr jr_01E_65E7                                ; $65AD: $18 $38

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
    ld a, h                                       ; $65C0: $7C
    add b                                         ; $65C1: $80
    xor d                                         ; $65C2: $AA
    ld d, h                                       ; $65C3: $54
    cp d                                          ; $65C4: $BA
    ld b, h                                       ; $65C5: $44
    add hl, hl                                    ; $65C6: $29
    add $39                                       ; $65C7: $C6 $39
    add $75                                       ; $65C9: $C6 $75
    and d                                         ; $65CB: $A2
    di                                            ; $65CC: $F3
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
    inc c                                         ; $65E0: $0C
    nop                                           ; $65E1: $00
    dec bc                                        ; $65E2: $0B
    inc b                                         ; $65E3: $04
    ld e, $01                                     ; $65E4: $1E $01
    rst RST_38                                    ; $65E6: $FF

jr_01E_65E7:
    db $10                                        ; $65E7: $10
    cp a                                          ; $65E8: $BF
    ld d, l                                       ; $65E9: $55
    ld a, a                                       ; $65EA: $7F
    ld bc, $0D33                                  ; $65EB: $01 $33 $0D
    ld de, $090E                                  ; $65EE: $11 $0E $09
    ld b, $09                                     ; $65F1: $06 $09
    ld b, $04                                     ; $65F3: $06 $04
    inc bc                                        ; $65F5: $03

jr_01E_65F6:
    ld [bc], a                                    ; $65F6: $02
    ld bc, $0001                                  ; $65F7: $01 $01 $00
    ld [bc], a                                    ; $65FA: $02
    ld bc, $0102                                  ; $65FB: $01 $02 $01
    ld [bc], a                                    ; $65FE: $02
    ld bc, $0006                                  ; $65FF: $01 $06 $00
    ccf                                           ; $6602: $3F
    ld b, $FF                                     ; $6603: $06 $FF
    rra                                           ; $6605: $1F
    rst RST_18                                    ; $6606: $DF
    cpl                                           ; $6607: $2F
    rst RST_38                                    ; $6608: $FF
    ld b, b                                       ; $6609: $40
    ld a, a                                       ; $660A: $7F
    cp b                                          ; $660B: $B8
    rst RST_38                                    ; $660C: $FF
    ld a, [de]                                    ; $660D: $1A
    sbc a                                         ; $660E: $9F
    ld h, d                                       ; $660F: $62
    rst RST_38                                    ; $6610: $FF
    add [hl]                                      ; $6611: $86
    ld a, d                                       ; $6612: $7A
    add l                                         ; $6613: $85
    rst RST_28                                    ; $6614: $EF
    db $10                                        ; $6615: $10
    rst RST_28                                    ; $6616: $EF
    ld a, [hl-]                                   ; $6617: $3A
    add d                                         ; $6618: $82
    ld a, l                                       ; $6619: $7D
    xor $11                                       ; $661A: $EE $11
    ld a, l                                       ; $661C: $7D
    add d                                         ; $661D: $82
    sub $38                                       ; $661E: $D6 $38
    nop                                           ; $6620: $00
    nop                                           ; $6621: $00
    nop                                           ; $6622: $00
    nop                                           ; $6623: $00
    add b                                         ; $6624: $80
    nop                                           ; $6625: $00
    add b                                         ; $6626: $80
    nop                                           ; $6627: $00
    nop                                           ; $6628: $00
    nop                                           ; $6629: $00
    jr nz, jr_01E_662C                            ; $662A: $20 $00

jr_01E_662C:
    ld hl, sp+$00                                 ; $662C: $F8 $00
    ld [hl], b                                    ; $662E: $70
    add b                                         ; $662F: $80
    sub b                                         ; $6630: $90
    ld h, b                                       ; $6631: $60
    sub b                                         ; $6632: $90
    ld h, b                                       ; $6633: $60
    jr nz, jr_01E_65F6                            ; $6634: $20 $C0

    jr nz, @-$3E                                  ; $6636: $20 $C0

    ld b, b                                       ; $6638: $40
    add b                                         ; $6639: $80
    add b                                         ; $663A: $80
    nop                                           ; $663B: $00
    nop                                           ; $663C: $00
    nop                                           ; $663D: $00
    nop                                           ; $663E: $00
    nop                                           ; $663F: $00
    ld bc, $0100                                  ; $6640: $01 $00 $01
    nop                                           ; $6643: $00
    ld bc, $0100                                  ; $6644: $01 $00 $01
    nop                                           ; $6647: $00
    ld bc, $0000                                  ; $6648: $01 $00 $00
    nop                                           ; $664B: $00
    nop                                           ; $664C: $00
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
    db $FC                                        ; $6660: $FC
    nop                                           ; $6661: $00
    xor d                                         ; $6662: $AA
    ld d, h                                       ; $6663: $54
    cp d                                          ; $6664: $BA
    ld b, h                                       ; $6665: $44
    add hl, sp                                    ; $6666: $39
    add $39                                       ; $6667: $C6 $39
    add $45                                       ; $6669: $C6 $45
    add d                                         ; $666B: $82
    add e                                         ; $666C: $83
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
    nop                                           ; $6680: $00
    nop                                           ; $6681: $00
    ret nz                                        ; $6682: $C0

    nop                                           ; $6683: $00
    ldh a, [rLCDC]                                ; $6684: $F0 $40
    ld a, h                                       ; $6686: $7C
    jr nc, jr_01E_66F7                            ; $6687: $30 $6E

    inc a                                         ; $6689: $3C
    inc sp                                        ; $668A: $33
    ld e, $31                                     ; $668B: $1E $31
    rra                                           ; $668D: $1F
    jr @+$11                                      ; $668E: $18 $0F

    jr jr_01E_66A1                                ; $6690: $18 $0F

    inc c                                         ; $6692: $0C
    rlca                                          ; $6693: $07
    inc c                                         ; $6694: $0C
    rlca                                          ; $6695: $07
    ld b, $03                                     ; $6696: $06 $03
    ld b, $03                                     ; $6698: $06 $03
    inc bc                                        ; $669A: $03
    ld bc, $0103                                  ; $669B: $01 $03 $01
    ld bc, $0600                                  ; $669E: $01 $00 $06

jr_01E_66A1:
    inc bc                                        ; $66A1: $03
    ld b, $03                                     ; $66A2: $06 $03
    ld b, $03                                     ; $66A4: $06 $03
    ld b, $03                                     ; $66A6: $06 $03
    ld b, $03                                     ; $66A8: $06 $03
    add [hl]                                      ; $66AA: $86
    inc bc                                        ; $66AB: $03
    and $83                                       ; $66AC: $E6 $83
    ld a, [hl]                                    ; $66AE: $7E
    db $E3                                        ; $66AF: $E3
    ld e, $FB                                     ; $66B0: $1E $FB
    ld b, $FF                                     ; $66B2: $06 $FF
    nop                                           ; $66B4: $00
    rst RST_38                                    ; $66B5: $FF
    nop                                           ; $66B6: $00
    rst RST_38                                    ; $66B7: $FF
    nop                                           ; $66B8: $00
    rst RST_38                                    ; $66B9: $FF
    nop                                           ; $66BA: $00
    rst RST_38                                    ; $66BB: $FF
    nop                                           ; $66BC: $00
    rst RST_38                                    ; $66BD: $FF
    add b                                         ; $66BE: $80
    rst RST_38                                    ; $66BF: $FF
    ld [hl], a                                    ; $66C0: $77
    call z, $E63B                                 ; $66C1: $CC $3B $E6
    ld a, [hl-]                                   ; $66C4: $3A
    push bc                                       ; $66C5: $C5
    ld c, [hl]                                    ; $66C6: $4E
    or c                                          ; $66C7: $B1
    ld c, a                                       ; $66C8: $4F
    or b                                          ; $66C9: $B0
    inc sp                                        ; $66CA: $33
    adc $02                                       ; $66CB: $CE $02
    db $FD                                        ; $66CD: $FD
    ld [bc], a                                    ; $66CE: $02
    db $FD                                        ; $66CF: $FD
    ld b, $F9                                     ; $66D0: $06 $F9
    dec b                                         ; $66D2: $05
    ld a, [$FB04]                                 ; $66D3: $FA $04 $FB
    dec b                                         ; $66D6: $05
    ld a, [$FE01]                                 ; $66D7: $FA $01 $FE
    db $10                                        ; $66DA: $10
    rst RST_28                                    ; $66DB: $EF
    nop                                           ; $66DC: $00
    rst RST_38                                    ; $66DD: $FF
    nop                                           ; $66DE: $00
    rst RST_38                                    ; $66DF: $FF
    ld e, [hl]                                    ; $66E0: $5E

jr_01E_66E1:
    and l                                         ; $66E1: $A5
    ld a, $CD                                     ; $66E2: $3E $CD
    ld sp, hl                                     ; $66E4: $F9
    ld e, $11                                     ; $66E5: $1E $11
    xor $37                                       ; $66E7: $EE $37
    ret z                                         ; $66E9: $C8

    cp $01                                        ; $66EA: $FE $01
    xor b                                         ; $66EC: $A8
    ld d, a                                       ; $66ED: $57
    ret z                                         ; $66EE: $C8

    scf                                           ; $66EF: $37
    ld c, b                                       ; $66F0: $48
    or a                                          ; $66F1: $B7
    xor h                                         ; $66F2: $AC
    ld d, e                                       ; $66F3: $53
    or d                                          ; $66F4: $B2
    ld c, l                                       ; $66F5: $4D
    ld [hl+], a                                   ; $66F6: $22

jr_01E_66F7:
    db $DD                                        ; $66F7: $DD
    jr jr_01E_66E1                                ; $66F8: $18 $E7

    inc b                                         ; $66FA: $04
    ei                                            ; $66FB: $FB
    inc b                                         ; $66FC: $04
    ei                                            ; $66FD: $FB
    nop                                           ; $66FE: $00
    rst RST_38                                    ; $66FF: $FF
    adc $04                                       ; $6700: $CE $04
    sbc $0C                                       ; $6702: $DE $0C
    sbc $0C                                       ; $6704: $DE $0C
    or $0C                                        ; $6706: $F6 $0C
    adc $34                                       ; $6708: $CE $34
    adc $B4                                       ; $670A: $CE $B4
    rst RST_30                                    ; $670C: $F7
    adc h                                         ; $670D: $8C
    rst RST_00                                    ; $670E: $C7
    db $FD                                        ; $670F: $FD
    add [hl]                                      ; $6710: $86
    rst RST_38                                    ; $6711: $FF
    inc b                                         ; $6712: $04
    rst RST_38                                    ; $6713: $FF
    nop                                           ; $6714: $00
    rst RST_38                                    ; $6715: $FF
    nop                                           ; $6716: $00
    rst RST_38                                    ; $6717: $FF
    nop                                           ; $6718: $00
    rst RST_38                                    ; $6719: $FF
    add b                                         ; $671A: $80
    ld a, a                                       ; $671B: $7F
    ld b, b                                       ; $671C: $40
    cp a                                          ; $671D: $BF
    nop                                           ; $671E: $00
    rst RST_38                                    ; $671F: $FF
    ld b, $03                                     ; $6720: $06 $03
    dec c                                         ; $6722: $0D
    rlca                                          ; $6723: $07
    add hl, de                                    ; $6724: $19
    rrca                                          ; $6725: $0F
    inc sp                                        ; $6726: $33
    ld e, $63                                     ; $6727: $1E $63
    ld a, $C6                                     ; $6729: $3E $C6
    ld a, h                                       ; $672B: $7C
    add [hl]                                      ; $672C: $86
    db $FC                                        ; $672D: $FC
    inc c                                         ; $672E: $0C
    ld hl, sp+$0C                                 ; $672F: $F8 $0C
    ld hl, sp+$18                                 ; $6731: $F8 $18
    ldh a, [rNR23]                                ; $6733: $F0 $18
    ldh a, [$FF30]                                ; $6735: $F0 $30
    ldh [$FF30], a                                ; $6737: $E0 $30
    ldh [$FF60], a                                ; $6739: $E0 $60
    ret nz                                        ; $673B: $C0

    ld h, b                                       ; $673C: $60
    ret nz                                        ; $673D: $C0

    ret nz                                        ; $673E: $C0

    add b                                         ; $673F: $80
    nop                                           ; $6740: $00
    nop                                           ; $6741: $00
    nop                                           ; $6742: $00
    nop                                           ; $6743: $00
    nop                                           ; $6744: $00
    nop                                           ; $6745: $00
    nop                                           ; $6746: $00
    nop                                           ; $6747: $00

jr_01E_6748:
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
    ld bc, $0100                                  ; $6752: $01 $00 $01
    nop                                           ; $6755: $00
    inc bc                                        ; $6756: $03
    nop                                           ; $6757: $00
    rst RST_18                                    ; $6758: $DF
    inc bc                                        ; $6759: $03
    rst RST_30                                    ; $675A: $F7
    ld c, e                                       ; $675B: $4B
    rst RST_38                                    ; $675C: $FF
    ld h, d                                       ; $675D: $62
    rst RST_18                                    ; $675E: $DF
    ld [hl], c                                    ; $675F: $71
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
    rlca                                          ; $6770: $07
    nop                                           ; $6771: $00
    sbc a                                         ; $6772: $9F
    inc bc                                        ; $6773: $03
    ld a, e                                       ; $6774: $7B
    add l                                         ; $6775: $85
    rst RST_18                                    ; $6776: $DF
    jr z, jr_01E_6748                             ; $6777: $28 $CF

    scf                                           ; $6779: $37
    rst RST_38                                    ; $677A: $FF
    add e                                         ; $677B: $83
    db $E3                                        ; $677C: $E3
    inc e                                         ; $677D: $1C
    rst RST_08                                    ; $677E: $CF
    or b                                          ; $677F: $B0
    nop                                           ; $6780: $00
    nop                                           ; $6781: $00
    nop                                           ; $6782: $00
    nop                                           ; $6783: $00
    nop                                           ; $6784: $00
    nop                                           ; $6785: $00
    nop                                           ; $6786: $00
    nop                                           ; $6787: $00
    ld [$0800], sp                                ; $6788: $08 $00 $08
    nop                                           ; $678B: $00
    jr jr_01E_678E                                ; $678C: $18 $00

jr_01E_678E:
    ret c                                         ; $678E: $D8

    nop                                           ; $678F: $00
    ld hl, sp-$30                                 ; $6790: $F8 $D0
    ld hl, sp-$20                                 ; $6792: $F8 $E0
    ld hl, sp-$20                                 ; $6794: $F8 $E0
    ld hl, sp+$10                                 ; $6796: $F8 $10
    ret c                                         ; $6798: $D8

    ld [hl], b                                    ; $6799: $70
    sbc $60                                       ; $679A: $DE $60
    and d                                         ; $679C: $A2
    call c, $10ED                                 ; $679D: $DC $ED $10
    nop                                           ; $67A0: $00
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
    nop                                           ; $67AE: $00
    nop                                           ; $67AF: $00
    nop                                           ; $67B0: $00
    nop                                           ; $67B1: $00
    nop                                           ; $67B2: $00
    nop                                           ; $67B3: $00
    nop                                           ; $67B4: $00
    nop                                           ; $67B5: $00
    ld b, b                                       ; $67B6: $40
    nop                                           ; $67B7: $00
    ld b, b                                       ; $67B8: $40
    nop                                           ; $67B9: $00
    ret nz                                        ; $67BA: $C0

    nop                                           ; $67BB: $00
    ret nz                                        ; $67BC: $C0

    nop                                           ; $67BD: $00
    ret nz                                        ; $67BE: $C0

    add b                                         ; $67BF: $80
    nop                                           ; $67C0: $00
    nop                                           ; $67C1: $00
    nop                                           ; $67C2: $00
    nop                                           ; $67C3: $00
    nop                                           ; $67C4: $00
    nop                                           ; $67C5: $00
    nop                                           ; $67C6: $00
    nop                                           ; $67C7: $00
    nop                                           ; $67C8: $00

jr_01E_67C9:
    nop                                           ; $67C9: $00
    ld bc, $0200                                  ; $67CA: $01 $00 $02
    nop                                           ; $67CD: $00
    ld b, $00                                     ; $67CE: $06 $00
    inc c                                         ; $67D0: $0C
    nop                                           ; $67D1: $00
    inc e                                         ; $67D2: $1C
    ld [$1038], sp                                ; $67D3: $08 $38 $10
    ld a, b                                       ; $67D6: $78
    jr nc, jr_01E_67C9                            ; $67D7: $30 $F0

    ld h, b                                       ; $67D9: $60
    or b                                          ; $67DA: $B0
    ldh [$FF60], a                                ; $67DB: $E0 $60
    ret nz                                        ; $67DD: $C0

    ld h, b                                       ; $67DE: $60
    ret nz                                        ; $67DF: $C0

    nop                                           ; $67E0: $00
    nop                                           ; $67E1: $00
    nop                                           ; $67E2: $00
    nop                                           ; $67E3: $00
    nop                                           ; $67E4: $00
    nop                                           ; $67E5: $00
    nop                                           ; $67E6: $00
    nop                                           ; $67E7: $00
    jr jr_01E_67EA                                ; $67E8: $18 $00

jr_01E_67EA:
    inc h                                         ; $67EA: $24
    jr jr_01E_6837                                ; $67EB: $18 $4A

    inc [hl]                                      ; $67ED: $34
    sub a                                         ; $67EE: $97
    ld l, b                                       ; $67EF: $68
    xor a                                         ; $67F0: $AF
    ld d, c                                       ; $67F1: $51
    ld e, a                                       ; $67F2: $5F
    jr z, @+$40                                   ; $67F3: $28 $3E

    dec d                                         ; $67F5: $15
    inc a                                         ; $67F6: $3C
    dec bc                                        ; $67F7: $0B
    add hl, de                                    ; $67F8: $19
    ld b, $0A                                     ; $67F9: $06 $0A
    dec b                                         ; $67FB: $05
    dec b                                         ; $67FC: $05
    ld [bc], a                                    ; $67FD: $02
    ld [bc], a                                    ; $67FE: $02
    nop                                           ; $67FF: $00
    ccf                                           ; $6800: $3F
    inc e                                         ; $6801: $1C
    rra                                           ; $6802: $1F
    dec bc                                        ; $6803: $0B
    rrca                                          ; $6804: $0F
    inc bc                                        ; $6805: $03
    rrca                                          ; $6806: $0F
    ld bc, $021F                                  ; $6807: $01 $1F $02
    rra                                           ; $680A: $1F
    inc bc                                        ; $680B: $03
    rst RST_38                                    ; $680C: $FF
    ld bc, $40BB                                  ; $680D: $01 $BB $40
    and $99                                       ; $6810: $E6 $99
    and a                                         ; $6812: $A7
    jr jr_01E_6870                                ; $6813: $18 $5B

    add c                                         ; $6815: $81
    and c                                         ; $6816: $A1
    ld b, b                                       ; $6817: $40
    ld b, c                                       ; $6818: $41
    add b                                         ; $6819: $80
    add c                                         ; $681A: $81
    nop                                           ; $681B: $00
    ld bc, $0000                                  ; $681C: $01 $00 $00
    nop                                           ; $681F: $00
    call c, $E0A0                                 ; $6820: $DC $A0 $E0
    ret nz                                        ; $6823: $C0

    ldh [$FFC0], a                                ; $6824: $E0 $C0
    ldh [$FF80], a                                ; $6826: $E0 $80
    ret nc                                        ; $6828: $D0

    jr nz, jr_01E_687B                            ; $6829: $20 $50

    ldh [$FFE0], a                                ; $682B: $E0 $E0
    ret nz                                        ; $682D: $C0

    ldh a, [rP1]                                  ; $682E: $F0 $00
    ld c, h                                       ; $6830: $4C
    or b                                          ; $6831: $B0
    adc $34                                       ; $6832: $CE $34
    rst RST_38                                    ; $6834: $FF
    adc [hl]                                      ; $6835: $8E
    rst RST_08                                    ; $6836: $CF

jr_01E_6837:
    add d                                         ; $6837: $82
    di                                            ; $6838: $F3
    ld bc, $00F3                                  ; $6839: $01 $F3 $00
    ldh [rP1], a                                  ; $683C: $E0 $00
    nop                                           ; $683E: $00
    nop                                           ; $683F: $00
    add b                                         ; $6840: $80
    nop                                           ; $6841: $00
    ret nz                                        ; $6842: $C0

    add b                                         ; $6843: $80
    ldh [$FFC0], a                                ; $6844: $E0 $C0
    ldh [rP1], a                                  ; $6846: $E0 $00
    nop                                           ; $6848: $00
    nop                                           ; $6849: $00
    nop                                           ; $684A: $00
    nop                                           ; $684B: $00
    nop                                           ; $684C: $00
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
    nop                                           ; $6860: $00
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

jr_01E_6870:
    nop                                           ; $6870: $00
    nop                                           ; $6871: $00
    nop                                           ; $6872: $00
    nop                                           ; $6873: $00
    nop                                           ; $6874: $00
    nop                                           ; $6875: $00
    dec b                                         ; $6876: $05
    nop                                           ; $6877: $00
    dec bc                                        ; $6878: $0B
    dec b                                         ; $6879: $05
    rlca                                          ; $687A: $07

jr_01E_687B:
    inc bc                                        ; $687B: $03
    rrca                                          ; $687C: $0F
    inc bc                                        ; $687D: $03
    rra                                           ; $687E: $1F
    inc c                                         ; $687F: $0C
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
    nop                                           ; $688C: $00
    nop                                           ; $688D: $00
    nop                                           ; $688E: $00
    nop                                           ; $688F: $00
    nop                                           ; $6890: $00
    nop                                           ; $6891: $00
    nop                                           ; $6892: $00
    nop                                           ; $6893: $00
    nop                                           ; $6894: $00
    nop                                           ; $6895: $00
    ret nz                                        ; $6896: $C0

    nop                                           ; $6897: $00
    or [hl]                                       ; $6898: $B6

jr_01E_6899:
    ld b, b                                       ; $6899: $40
    ld a, [$B214]                                 ; $689A: $FA $14 $B2
    ld c, h                                       ; $689D: $4C
    db $E4                                        ; $689E: $E4
    jr jr_01E_68A2                                ; $689F: $18 $01

    nop                                           ; $68A1: $00

jr_01E_68A2:
    rrca                                          ; $68A2: $0F
    ld bc, $0F7F                                  ; $68A3: $01 $7F $0F
    rst RST_38                                    ; $68A6: $FF
    ld a, a                                       ; $68A7: $7F
    rst RST_38                                    ; $68A8: $FF
    ld bc, $071F                                  ; $68A9: $01 $1F $07
    ld a, a                                       ; $68AC: $7F
    rra                                           ; $68AD: $1F
    rst RST_38                                    ; $68AE: $FF
    ld a, a                                       ; $68AF: $7F
    rst RST_38                                    ; $68B0: $FF
    nop                                           ; $68B1: $00
    nop                                           ; $68B2: $00
    nop                                           ; $68B3: $00
    nop                                           ; $68B4: $00
    nop                                           ; $68B5: $00
    ld bc, $0300                                  ; $68B6: $01 $00 $03
    ld bc, $0307                                  ; $68B9: $01 $07 $03
    rlca                                          ; $68BC: $07
    ld [bc], a                                    ; $68BD: $02
    rlca                                          ; $68BE: $07
    nop                                           ; $68BF: $00
    cp $00                                        ; $68C0: $FE $00
    db $FD                                        ; $68C2: $FD
    cp $FF                                        ; $68C3: $FE $FF
    rst RST_38                                    ; $68C5: $FF
    rst RST_38                                    ; $68C6: $FF
    rst RST_38                                    ; $68C7: $FF
    rst RST_38                                    ; $68C8: $FF
    rst RST_38                                    ; $68C9: $FF
    rst RST_38                                    ; $68CA: $FF
    rst RST_38                                    ; $68CB: $FF
    cp $FF                                        ; $68CC: $FE $FF
    rst RST_38                                    ; $68CE: $FF
    rst RST_38                                    ; $68CF: $FF
    rst RST_38                                    ; $68D0: $FF
    ld a, a                                       ; $68D1: $7F
    ld a, a                                       ; $68D2: $7F
    rrca                                          ; $68D3: $0F
    ld a, a                                       ; $68D4: $7F
    inc bc                                        ; $68D5: $03
    cp e                                          ; $68D6: $BB
    ld d, h                                       ; $68D7: $54
    db $FC                                        ; $68D8: $FC
    jr jr_01E_6899                                ; $68D9: $18 $BE

    ld e, b                                       ; $68DB: $58
    ccf                                           ; $68DC: $3F
    add $AF                                       ; $68DD: $C6 $AF
    ld d, [hl]                                    ; $68DF: $56
    nop                                           ; $68E0: $00
    nop                                           ; $68E1: $00
    ld bc, $0300                                  ; $68E2: $01 $00 $03
    ld bc, $0207                                  ; $68E5: $01 $07 $02
    rrca                                          ; $68E8: $0F
    ld b, $D7                                     ; $68E9: $06 $D7
    dec bc                                        ; $68EB: $0B
    xor a                                         ; $68EC: $AF
    ld d, c                                       ; $68ED: $51
    sub c                                         ; $68EE: $91
    ld h, b                                       ; $68EF: $60
    ld h, d                                       ; $68F0: $62
    ld bc, $0007                                  ; $68F1: $01 $07 $00
    rrca                                          ; $68F4: $0F
    ld b, $7F                                     ; $68F5: $06 $7F
    ld b, $7E                                     ; $68F7: $06 $7E
    nop                                           ; $68F9: $00
    inc a                                         ; $68FA: $3C
    nop                                           ; $68FB: $00
    jr jr_01E_68FE                                ; $68FC: $18 $00

jr_01E_68FE:
    nop                                           ; $68FE: $00
    nop                                           ; $68FF: $00
    adc a                                         ; $6900: $8F

jr_01E_6901:
    ld [hl], c                                    ; $6901: $71
    rst RST_18                                    ; $6902: $DF
    daa                                           ; $6903: $27
    rst RST_38                                    ; $6904: $FF
    rlca                                          ; $6905: $07
    ld e, a                                       ; $6906: $5F
    rst RST_30                                    ; $6907: $F7
    ld e, a                                       ; $6908: $5F
    ld a, [$70FF]                                 ; $6909: $FA $FF $70
    ei                                            ; $690C: $FB
    nop                                           ; $690D: $00
    db $F4                                        ; $690E: $F4
    jr z, jr_01E_6944                             ; $690F: $28 $33

    call z, $8D53                                 ; $6911: $CC $53 $8D
    adc a                                         ; $6914: $8F
    inc bc                                        ; $6915: $03
    inc bc                                        ; $6916: $03
    nop                                           ; $6917: $00
    nop                                           ; $6918: $00
    nop                                           ; $6919: $00
    nop                                           ; $691A: $00
    nop                                           ; $691B: $00
    nop                                           ; $691C: $00
    nop                                           ; $691D: $00
    nop                                           ; $691E: $00
    nop                                           ; $691F: $00
    add b                                         ; $6920: $80
    nop                                           ; $6921: $00
    ld h, b                                       ; $6922: $60
    add b                                         ; $6923: $80
    sbc b                                         ; $6924: $98
    ldh [$FFC4], a                                ; $6925: $E0 $C4
    ld hl, sp-$1E                                 ; $6927: $F8 $E2
    db $FC                                        ; $6929: $FC
    ld de, $80FE                                  ; $692A: $11 $FE $80
    rst RST_38                                    ; $692D: $FF
    ret nz                                        ; $692E: $C0

    rst RST_38                                    ; $692F: $FF
    ldh [rIE], a                                  ; $6930: $E0 $FF
    ldh a, [rIE]                                  ; $6932: $F0 $FF
    jr nc, @+$01                                  ; $6934: $30 $FF

    ret z                                         ; $6936: $C8

    ccf                                           ; $6937: $3F
    jr nz, jr_01E_6959                            ; $6938: $20 $1F

    ret nc                                        ; $693A: $D0

    cpl                                           ; $693B: $2F
    or h                                          ; $693C: $B4
    ld c, e                                       ; $693D: $4B
    jp z, $C101                                   ; $693E: $CA $01 $C1

    add b                                         ; $6941: $80
    add c                                         ; $6942: $81
    nop                                           ; $6943: $00

jr_01E_6944:
    add b                                         ; $6944: $80
    nop                                           ; $6945: $00
    add b                                         ; $6946: $80
    nop                                           ; $6947: $00
    ret nz                                        ; $6948: $C0

    nop                                           ; $6949: $00
    ldh a, [rP1]                                  ; $694A: $F0 $00
    ret z                                         ; $694C: $C8

    jr nc, jr_01E_6997                            ; $694D: $30 $48

    jr nc, jr_01E_6901                            ; $694F: $30 $B0

    nop                                           ; $6951: $00
    ldh [$FF80], a                                ; $6952: $E0 $80
    ldh [rLCDC], a                                ; $6954: $E0 $40
    ldh a, [$FF60]                                ; $6956: $F0 $60
    ld [hl], b                                    ; $6958: $70

jr_01E_6959:
    jr nz, jr_01E_698B                            ; $6959: $20 $30

    nop                                           ; $695B: $00
    nop                                           ; $695C: $00
    nop                                           ; $695D: $00
    nop                                           ; $695E: $00
    nop                                           ; $695F: $00
    add b                                         ; $6960: $80
    nop                                           ; $6961: $00
    ld b, b                                       ; $6962: $40
    add b                                         ; $6963: $80
    jr nz, @-$3E                                  ; $6964: $20 $C0

    jr nz, @-$3E                                  ; $6966: $20 $C0

    db $10                                        ; $6968: $10
    ldh [rNR10], a                                ; $6969: $E0 $10
    ldh [$FF08], a                                ; $696B: $E0 $08
    ldh a, [$FF08]                                ; $696D: $F0 $08
    ldh a, [rDIV]                                 ; $696F: $F0 $04
    ld hl, sp+$44                                 ; $6971: $F8 $44
    cp b                                          ; $6973: $B8
    ld h, h                                       ; $6974: $64
    sbc b                                         ; $6975: $98
    ld d, d                                       ; $6976: $52
    adc h                                         ; $6977: $8C
    jp nc, Jump_000_0A0C                          ; $6978: $D2 $0C $0A

    inc b                                         ; $697B: $04
    ld a, [bc]                                    ; $697C: $0A
    inc b                                         ; $697D: $04
    ld b, $00                                     ; $697E: $06 $00
    ccf                                           ; $6980: $3F
    rra                                           ; $6981: $1F
    ccf                                           ; $6982: $3F
    rra                                           ; $6983: $1F
    ccf                                           ; $6984: $3F
    rra                                           ; $6985: $1F
    ld a, a                                       ; $6986: $7F
    ccf                                           ; $6987: $3F
    ld a, a                                       ; $6988: $7F
    ccf                                           ; $6989: $3F
    ld a, a                                       ; $698A: $7F

jr_01E_698B:
    ccf                                           ; $698B: $3F
    ld a, a                                       ; $698C: $7F
    ccf                                           ; $698D: $3F
    rst RST_38                                    ; $698E: $FF
    ld a, a                                       ; $698F: $7F
    rst RST_38                                    ; $6990: $FF
    ld a, a                                       ; $6991: $7F
    rst RST_38                                    ; $6992: $FF
    ld l, a                                       ; $6993: $6F
    rst RST_38                                    ; $6994: $FF
    ld l, [hl]                                    ; $6995: $6E
    rst RST_38                                    ; $6996: $FF

jr_01E_6997:
    ld h, [hl]                                    ; $6997: $66
    xor $44                                       ; $6998: $EE $44
    xor $44                                       ; $699A: $EE $44
    and $40                                       ; $699C: $E6 $40
    ret nz                                        ; $699E: $C0

    nop                                           ; $699F: $00
    daa                                           ; $69A0: $27
    db $DB                                        ; $69A1: $DB
    rlca                                          ; $69A2: $07
    ld hl, sp+$28                                 ; $69A3: $F8 $28
    ldh a, [$FF28]                                ; $69A5: $F0 $28
    ldh a, [rBCPS]                                ; $69A7: $F0 $68
    ldh a, [rBCPS]                                ; $69A9: $F0 $68
    ldh a, [$FFE9]                                ; $69AB: $F0 $E9
    ldh a, [$FFEF]                                ; $69AD: $F0 $EF
    ldh a, [$FFE4]                                ; $69AF: $F0 $E4
    ei                                            ; $69B1: $FB
    di                                            ; $69B2: $F3
    ld l, h                                       ; $69B3: $6C
    db $F4                                        ; $69B4: $F4
    ld c, b                                       ; $69B5: $48

jr_01E_69B6:
    add sp, $40                                   ; $69B6: $E8 $40
    ld b, b                                       ; $69B8: $40
    nop                                           ; $69B9: $00
    nop                                           ; $69BA: $00
    nop                                           ; $69BB: $00
    nop                                           ; $69BC: $00
    nop                                           ; $69BD: $00
    nop                                           ; $69BE: $00
    nop                                           ; $69BF: $00
    rst RST_38                                    ; $69C0: $FF
    ld h, h                                       ; $69C1: $64
    rst RST_28                                    ; $69C2: $EF
    ld de, $639F                                  ; $69C3: $11 $9F $63
    rst RST_10                                    ; $69C6: $D7
    dec hl                                        ; $69C7: $2B
    ld c, a                                       ; $69C8: $4F
    jr nc, jr_01E_6A4A                            ; $69C9: $30 $7F

    nop                                           ; $69CB: $00
    rst RST_38                                    ; $69CC: $FF
    ld [hl], h                                    ; $69CD: $74
    rst RST_38                                    ; $69CE: $FF
    or $FF                                        ; $69CF: $F6 $FF
    ld h, b                                       ; $69D1: $60
    ld [hl], d                                    ; $69D2: $72
    dec l                                         ; $69D3: $2D
    ld a, [hl]                                    ; $69D4: $7E
    ld de, $3079                                  ; $69D5: $11 $79 $30
    inc a                                         ; $69D8: $3C
    ld [$387C], sp                                ; $69D9: $08 $7C $38
    ld a, h                                       ; $69DC: $7C
    nop                                           ; $69DD: $00
    nop                                           ; $69DE: $00
    nop                                           ; $69DF: $00
    and b                                         ; $69E0: $A0
    ld b, b                                       ; $69E1: $40
    call z, $D280                                 ; $69E2: $CC $80 $D2
    adc h                                         ; $69E5: $8C
    jp nc, $9C8C                                  ; $69E6: $D2 $8C $9C

    nop                                           ; $69E9: $00
    ld hl, sp+$00                                 ; $69EA: $F8 $00
    ldh a, [rP1]                                  ; $69EC: $F0 $00
    ld hl, sp+$00                                 ; $69EE: $F8 $00

jr_01E_69F0:
    db $E4                                        ; $69F0: $E4
    jr jr_01E_6A4F                                ; $69F1: $18 $5C

    add b                                         ; $69F3: $80
    jr nc, jr_01E_69B6                            ; $69F4: $30 $C0

    ld hl, sp+$30                                 ; $69F6: $F8 $30
    ld a, h                                       ; $69F8: $7C
    jr nc, jr_01E_6A39                            ; $69F9: $30 $3E

    inc c                                         ; $69FB: $0C
    rrca                                          ; $69FC: $0F
    ld b, $0F                                     ; $69FD: $06 $0F
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
    ld bc, $0200                                  ; $6A0A: $01 $00 $02
    ld bc, $0304                                  ; $6A0D: $01 $04 $03
    inc c                                         ; $6A10: $0C
    rlca                                          ; $6A11: $07
    jr jr_01E_6A23                                ; $6A12: $18 $0F

    jr c, jr_01E_6A35                             ; $6A14: $38 $1F

    jr nc, jr_01E_6A37                            ; $6A16: $30 $1F

    ld [hl], b                                    ; $6A18: $70
    ccf                                           ; $6A19: $3F
    ld h, c                                       ; $6A1A: $61
    ld a, $E9                                     ; $6A1B: $3E $E9
    ld a, [hl]                                    ; $6A1D: $7E
    jp hl                                         ; $6A1E: $E9


    ld a, [hl]                                    ; $6A1F: $7E
    nop                                           ; $6A20: $00
    nop                                           ; $6A21: $00
    inc c                                         ; $6A22: $0C

jr_01E_6A23:
    nop                                           ; $6A23: $00
    inc d                                         ; $6A24: $14
    ld [$1068], sp                                ; $6A25: $08 $68 $10
    sub b                                         ; $6A28: $90
    ld h, b                                       ; $6A29: $60
    db $10                                        ; $6A2A: $10
    ldh [rNR41], a                                ; $6A2B: $E0 $20
    ret nz                                        ; $6A2D: $C0

    jr nz, jr_01E_69F0                            ; $6A2E: $20 $C0

    ld b, b                                       ; $6A30: $40
    add b                                         ; $6A31: $80
    ld b, b                                       ; $6A32: $40
    add b                                         ; $6A33: $80
    add b                                         ; $6A34: $80

jr_01E_6A35:
    nop                                           ; $6A35: $00
    add b                                         ; $6A36: $80

jr_01E_6A37:
    nop                                           ; $6A37: $00
    sbc c                                         ; $6A38: $99

jr_01E_6A39:
    nop                                           ; $6A39: $00
    ld [hl], $09                                  ; $6A3A: $36 $09
    ld e, a                                       ; $6A3C: $5F
    ld [hl+], a                                   ; $6A3D: $22
    cp a                                          ; $6A3E: $BF
    ld e, e                                       ; $6A3F: $5B
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

jr_01E_6A4A:
    nop                                           ; $6A4A: $00
    nop                                           ; $6A4B: $00
    nop                                           ; $6A4C: $00
    nop                                           ; $6A4D: $00
    nop                                           ; $6A4E: $00

jr_01E_6A4F:
    nop                                           ; $6A4F: $00
    nop                                           ; $6A50: $00
    nop                                           ; $6A51: $00
    nop                                           ; $6A52: $00
    nop                                           ; $6A53: $00
    nop                                           ; $6A54: $00
    nop                                           ; $6A55: $00
    nop                                           ; $6A56: $00
    nop                                           ; $6A57: $00
    cp h                                          ; $6A58: $BC
    nop                                           ; $6A59: $00
    db $FD                                        ; $6A5A: $FD

jr_01E_6A5B:
    jr c, jr_01E_6A5B                             ; $6A5B: $38 $FE

    ld a, l                                       ; $6A5D: $7D
    db $FD                                        ; $6A5E: $FD
    cp d                                          ; $6A5F: $BA
    nop                                           ; $6A60: $00
    nop                                           ; $6A61: $00
    nop                                           ; $6A62: $00
    nop                                           ; $6A63: $00
    nop                                           ; $6A64: $00
    nop                                           ; $6A65: $00
    nop                                           ; $6A66: $00
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
    ret nz                                        ; $6A78: $C0

    nop                                           ; $6A79: $00
    ld b, b                                       ; $6A7A: $40
    add b                                         ; $6A7B: $80
    add b                                         ; $6A7C: $80
    nop                                           ; $6A7D: $00
    add b                                         ; $6A7E: $80
    nop                                           ; $6A7F: $00
    nop                                           ; $6A80: $00
    nop                                           ; $6A81: $00
    nop                                           ; $6A82: $00
    nop                                           ; $6A83: $00
    db $FC                                        ; $6A84: $FC
    nop                                           ; $6A85: $00
    add h                                         ; $6A86: $84
    ld a, b                                       ; $6A87: $78
    db $FC                                        ; $6A88: $FC
    nop                                           ; $6A89: $00
    add h                                         ; $6A8A: $84
    ld a, b                                       ; $6A8B: $78
    db $FC                                        ; $6A8C: $FC
    nop                                           ; $6A8D: $00
    rst RST_38                                    ; $6A8E: $FF
    ld b, h                                       ; $6A8F: $44
    rst RST_28                                    ; $6A90: $EF
    inc de                                        ; $6A91: $13
    rst RST_38                                    ; $6A92: $FF
    ld b, h                                       ; $6A93: $44
    db $FC                                        ; $6A94: $FC
    nop                                           ; $6A95: $00
    add h                                         ; $6A96: $84
    ld a, b                                       ; $6A97: $78
    db $FC                                        ; $6A98: $FC
    nop                                           ; $6A99: $00
    add h                                         ; $6A9A: $84
    ld a, b                                       ; $6A9B: $78
    db $FC                                        ; $6A9C: $FC
    nop                                           ; $6A9D: $00
    nop                                           ; $6A9E: $00
    nop                                           ; $6A9F: $00
    rrca                                          ; $6AA0: $0F
    ld b, $0F                                     ; $6AA1: $06 $0F
    ld b, $07                                     ; $6AA3: $06 $07
    nop                                           ; $6AA5: $00
    ld bc, $0000                                  ; $6AA6: $01 $00 $00
    nop                                           ; $6AA9: $00
    nop                                           ; $6AAA: $00
    nop                                           ; $6AAB: $00
    inc bc                                        ; $6AAC: $03
    nop                                           ; $6AAD: $00
    rst RST_38                                    ; $6AAE: $FF
    ld bc, $D6E9                                  ; $6AAF: $01 $E9 $D6
    and $18                                       ; $6AB2: $E6 $18
    jr jr_01E_6AB6                                ; $6AB4: $18 $00

jr_01E_6AB6:
    nop                                           ; $6AB6: $00
    nop                                           ; $6AB7: $00
    nop                                           ; $6AB8: $00
    nop                                           ; $6AB9: $00
    nop                                           ; $6ABA: $00
    nop                                           ; $6ABB: $00
    nop                                           ; $6ABC: $00
    nop                                           ; $6ABD: $00
    nop                                           ; $6ABE: $00
    nop                                           ; $6ABF: $00
    rst RST_38                                    ; $6AC0: $FF
    xor $FF                                       ; $6AC1: $EE $FF
    ld l, c                                       ; $6AC3: $69
    ld a, a                                       ; $6AC4: $7F
    add a                                         ; $6AC5: $87
    xor a                                         ; $6AC6: $AF
    ld d, a                                       ; $6AC7: $57
    sbc a                                         ; $6AC8: $9F
    ld h, b                                       ; $6AC9: $60
    rst RST_38                                    ; $6ACA: $FF
    nop                                           ; $6ACB: $00
    rst RST_38                                    ; $6ACC: $FF
    add sp, -$01                                  ; $6ACD: $E8 $FF
    db $EC                                        ; $6ACF: $EC
    rst RST_38                                    ; $6AD0: $FF
    ret nz                                        ; $6AD1: $C0

    db $E4                                        ; $6AD2: $E4
    ld e, e                                       ; $6AD3: $5B
    db $FC                                        ; $6AD4: $FC
    inc hl                                        ; $6AD5: $23
    di                                            ; $6AD6: $F3

jr_01E_6AD7:
    ld h, b                                       ; $6AD7: $60
    ld a, b                                       ; $6AD8: $78
    db $10                                        ; $6AD9: $10
    ld hl, sp+$70                                 ; $6ADA: $F8 $70
    ld hl, sp+$00                                 ; $6ADC: $F8 $00
    nop                                           ; $6ADE: $00
    nop                                           ; $6ADF: $00
    ret nz                                        ; $6AE0: $C0

    nop                                           ; $6AE1: $00
    add b                                         ; $6AE2: $80
    nop                                           ; $6AE3: $00
    add b                                         ; $6AE4: $80
    nop                                           ; $6AE5: $00
    add b                                         ; $6AE6: $80
    nop                                           ; $6AE7: $00
    nop                                           ; $6AE8: $00
    nop                                           ; $6AE9: $00
    ret nz                                        ; $6AEA: $C0

    nop                                           ; $6AEB: $00
    ldh [rP1], a                                  ; $6AEC: $E0 $00
    ld hl, sp+$00                                 ; $6AEE: $F8 $00
    and h                                         ; $6AF0: $A4
    jr jr_01E_6AD7                                ; $6AF1: $18 $E4

    jr @+$7A                                      ; $6AF3: $18 $78

    add b                                         ; $6AF5: $80
    ldh a, [$FF60]                                ; $6AF6: $F0 $60
    ld hl, sp+$60                                 ; $6AF8: $F8 $60
    ld a, h                                       ; $6AFA: $7C
    jr jr_01E_6B1B                                ; $6AFB: $18 $1E

    inc c                                         ; $6AFD: $0C
    ld e, $00                                     ; $6AFE: $1E $00
    nop                                           ; $6B00: $00
    nop                                           ; $6B01: $00
    nop                                           ; $6B02: $00
    nop                                           ; $6B03: $00
    nop                                           ; $6B04: $00
    nop                                           ; $6B05: $00
    nop                                           ; $6B06: $00
    nop                                           ; $6B07: $00
    nop                                           ; $6B08: $00
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
    call z, $B600                                 ; $6B18: $CC $00 $B6

jr_01E_6B1B:
    ld c, b                                       ; $6B1B: $48
    ld a, a                                       ; $6B1C: $7F
    ld [de], a                                    ; $6B1D: $12
    rst RST_38                                    ; $6B1E: $FF
    ld e, e                                       ; $6B1F: $5B
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
    nop                                           ; $6B2C: $00
    nop                                           ; $6B2D: $00
    nop                                           ; $6B2E: $00
    nop                                           ; $6B2F: $00
    nop                                           ; $6B30: $00
    nop                                           ; $6B31: $00
    nop                                           ; $6B32: $00
    nop                                           ; $6B33: $00
    nop                                           ; $6B34: $00
    nop                                           ; $6B35: $00
    nop                                           ; $6B36: $00
    nop                                           ; $6B37: $00
    ld b, $00                                     ; $6B38: $06 $00
    ld a, [bc]                                    ; $6B3A: $0A
    inc b                                         ; $6B3B: $04
    sub h                                         ; $6B3C: $94
    ld [$90EC], sp                                ; $6B3D: $08 $EC $90
    ld a, [hl]                                    ; $6B40: $7E
    inc h                                         ; $6B41: $24
    cp $64                                        ; $6B42: $FE $64
    rst RST_38                                    ; $6B44: $FF
    ld [hl], h                                    ; $6B45: $74
    rst RST_38                                    ; $6B46: $FF
    ld a, h                                       ; $6B47: $7C
    rst RST_38                                    ; $6B48: $FF
    ld a, l                                       ; $6B49: $7D
    rst RST_38                                    ; $6B4A: $FF
    ld a, a                                       ; $6B4B: $7F
    rst RST_38                                    ; $6B4C: $FF
    ld a, a                                       ; $6B4D: $7F
    rst RST_38                                    ; $6B4E: $FF
    ld a, a                                       ; $6B4F: $7F
    ld a, a                                       ; $6B50: $7F
    ccf                                           ; $6B51: $3F
    ld a, a                                       ; $6B52: $7F
    ccf                                           ; $6B53: $3F
    ccf                                           ; $6B54: $3F
    rra                                           ; $6B55: $1F
    ccf                                           ; $6B56: $3F
    rra                                           ; $6B57: $1F
    rra                                           ; $6B58: $1F
    rrca                                          ; $6B59: $0F
    rrca                                          ; $6B5A: $0F
    rlca                                          ; $6B5B: $07
    rlca                                          ; $6B5C: $07
    inc bc                                        ; $6B5D: $03
    inc bc                                        ; $6B5E: $03
    nop                                           ; $6B5F: $00
    adc $85                                       ; $6B60: $CE $85
    rst RST_18                                    ; $6B62: $DF
    adc h                                         ; $6B63: $8C
    rst RST_18                                    ; $6B64: $DF
    adc h                                         ; $6B65: $8C
    adc $81                                       ; $6B66: $CE $81
    db $E3                                        ; $6B68: $E3
    ret nz                                        ; $6B69: $C0

    rst RST_20                                    ; $6B6A: $E7
    jp nz, $E6FF                                  ; $6B6B: $C2 $FF $E6

    rst RST_38                                    ; $6B6E: $FF
    ld hl, sp-$01                                 ; $6B6F: $F8 $FF
    cp $E0                                        ; $6B71: $FE $E0
    rst RST_38                                    ; $6B73: $FF
    ldh a, [rIE]                                  ; $6B74: $F0 $FF
    cp b                                          ; $6B76: $B8
    rst RST_38                                    ; $6B77: $FF
    ret nz                                        ; $6B78: $C0

    rst RST_38                                    ; $6B79: $FF
    ldh [rIE], a                                  ; $6B7A: $E0 $FF
    ld hl, sp+$1F                                 ; $6B7C: $F8 $1F
    rra                                           ; $6B7E: $1F
    nop                                           ; $6B7F: $00
    cp $34                                        ; $6B80: $FE $34
    ld a, [hl]                                    ; $6B82: $7E
    or h                                          ; $6B83: $B4
    ld a, [hl]                                    ; $6B84: $7E
    add b                                         ; $6B85: $80
    ld e, d                                       ; $6B86: $5A
    and h                                         ; $6B87: $A4
    ld a, $C8                                     ; $6B88: $3E $C8
    rst RST_18                                    ; $6B8A: $DF
    ld [hl], $5F                                  ; $6B8B: $36 $5F
    ldh a, [$FFF1]                                ; $6B8D: $F0 $F1
    ld l, $3E                                     ; $6B8F: $2E $3E
    pop bc                                        ; $6B91: $C1
    inc bc                                        ; $6B92: $03
    db $FD                                        ; $6B93: $FD
    ld a, c                                       ; $6B94: $79
    add [hl]                                      ; $6B95: $86
    rra                                           ; $6B96: $1F
    ldh [rP1], a                                  ; $6B97: $E0 $00
    rst RST_38                                    ; $6B99: $FF
    inc bc                                        ; $6B9A: $03
    db $FC                                        ; $6B9B: $FC
    db $FC                                        ; $6B9C: $FC
    inc bc                                        ; $6B9D: $03
    inc bc                                        ; $6B9E: $03
    nop                                           ; $6B9F: $00
    inc a                                         ; $6BA0: $3C
    jr jr_01E_6BDB                                ; $6BA1: $18 $38

    db $10                                        ; $6BA3: $10
    ld e, b                                       ; $6BA4: $58
    jr nc, jr_01E_6BF7                            ; $6BA5: $30 $50

    jr nz, @+$72                                  ; $6BA7: $20 $70

    nop                                           ; $6BA9: $00
    sub b                                         ; $6BAA: $90
    ld h, b                                       ; $6BAB: $60
    ld c, h                                       ; $6BAC: $4C
    ldh a, [$FF2B]                                ; $6BAD: $F0 $2B
    db $F4                                        ; $6BAF: $F4
    sbc e                                         ; $6BB0: $9B
    ld h, a                                       ; $6BB1: $67
    ld d, a                                       ; $6BB2: $57
    and c                                         ; $6BB3: $A1
    pop af                                        ; $6BB4: $F1
    nop                                           ; $6BB5: $00
    ldh [$FF80], a                                ; $6BB6: $E0 $80
    ldh a, [rNR41]                                ; $6BB8: $F0 $20
    ld hl, sp+$30                                 ; $6BBA: $F8 $30
    ld a, b                                       ; $6BBC: $78
    add b                                         ; $6BBD: $80
    ret nz                                        ; $6BBE: $C0

    nop                                           ; $6BBF: $00
    add b                                         ; $6BC0: $80
    nop                                           ; $6BC1: $00
    ret nz                                        ; $6BC2: $C0

    add b                                         ; $6BC3: $80
    ret nz                                        ; $6BC4: $C0

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

jr_01E_6BDB:
    nop                                           ; $6BDB: $00
    nop                                           ; $6BDC: $00
    nop                                           ; $6BDD: $00
    nop                                           ; $6BDE: $00
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

jr_01E_6BF7:
    nop                                           ; $6BF7: $00
    ld b, b                                       ; $6BF8: $40
    nop                                           ; $6BF9: $00
    add sp, $40                                   ; $6BFA: $E8 $40
    db $FC                                        ; $6BFC: $FC
    ld c, b                                       ; $6BFD: $48
    db $FD                                        ; $6BFE: $FD
    ret z                                         ; $6BFF: $C8

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
    nop                                           ; $6C0A: $00
    nop                                           ; $6C0B: $00
    nop                                           ; $6C0C: $00
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
    jr jr_01E_6C1A                                ; $6C18: $18 $00

jr_01E_6C1A:
    rla                                           ; $6C1A: $17
    ld [$020D], sp                                ; $6C1B: $08 $0D $02
    sbc h                                         ; $6C1E: $9C
    dec bc                                        ; $6C1F: $0B
    nop                                           ; $6C20: $00
    nop                                           ; $6C21: $00
    nop                                           ; $6C22: $00
    nop                                           ; $6C23: $00
    nop                                           ; $6C24: $00
    nop                                           ; $6C25: $00
    nop                                           ; $6C26: $00
    nop                                           ; $6C27: $00
    nop                                           ; $6C28: $00
    nop                                           ; $6C29: $00
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
    nop                                           ; $6C36: $00
    nop                                           ; $6C37: $00
    ld h, b                                       ; $6C38: $60
    nop                                           ; $6C39: $00
    and b                                         ; $6C3A: $A0
    ld b, b                                       ; $6C3B: $40
    ldh a, [$FFA0]                                ; $6C3C: $F0 $A0
    ld hl, sp+$50                                 ; $6C3E: $F8 $50
    nop                                           ; $6C40: $00
    nop                                           ; $6C41: $00
    nop                                           ; $6C42: $00
    nop                                           ; $6C43: $00
    nop                                           ; $6C44: $00
    nop                                           ; $6C45: $00
    nop                                           ; $6C46: $00
    nop                                           ; $6C47: $00
    nop                                           ; $6C48: $00
    nop                                           ; $6C49: $00
    nop                                           ; $6C4A: $00
    nop                                           ; $6C4B: $00
    nop                                           ; $6C4C: $00
    nop                                           ; $6C4D: $00
    nop                                           ; $6C4E: $00
    nop                                           ; $6C4F: $00
    nop                                           ; $6C50: $00
    nop                                           ; $6C51: $00
    nop                                           ; $6C52: $00
    nop                                           ; $6C53: $00
    nop                                           ; $6C54: $00
    nop                                           ; $6C55: $00
    nop                                           ; $6C56: $00
    nop                                           ; $6C57: $00
    nop                                           ; $6C58: $00
    nop                                           ; $6C59: $00
    nop                                           ; $6C5A: $00
    nop                                           ; $6C5B: $00
    jr jr_01E_6C5E                                ; $6C5C: $18 $00

jr_01E_6C5E:
    jr c, jr_01E_6C70                             ; $6C5E: $38 $10

    ld a, a                                       ; $6C60: $7F
    ccf                                           ; $6C61: $3F
    ld l, a                                       ; $6C62: $6F
    ccf                                           ; $6C63: $3F
    ld l, l                                       ; $6C64: $6D
    ccf                                           ; $6C65: $3F
    push hl                                       ; $6C66: $E5
    ld a, a                                       ; $6C67: $7F
    push bc                                       ; $6C68: $C5
    ld a, a                                       ; $6C69: $7F
    ret nz                                        ; $6C6A: $C0

    ld a, a                                       ; $6C6B: $7F
    ret nz                                        ; $6C6C: $C0

    ld a, a                                       ; $6C6D: $7F
    add b                                         ; $6C6E: $80
    ld a, a                                       ; $6C6F: $7F

jr_01E_6C70:
    add b                                         ; $6C70: $80
    ld a, a                                       ; $6C71: $7F
    sub b                                         ; $6C72: $90
    ld l, a                                       ; $6C73: $6F
    sub d                                         ; $6C74: $92
    ld l, l                                       ; $6C75: $6D
    or d                                          ; $6C76: $B2
    ld c, l                                       ; $6C77: $4D
    xor e                                         ; $6C78: $AB
    ld b, h                                       ; $6C79: $44
    rlc h                                         ; $6C7A: $CB $04
    dec bc                                        ; $6C7C: $0B
    inc b                                         ; $6C7D: $04
    ld b, $00                                     ; $6C7E: $06 $00
    nop                                           ; $6C80: $00
    nop                                           ; $6C81: $00
    ld b, $00                                     ; $6C82: $06 $00
    ld c, $04                                     ; $6C84: $0E $04
    ld c, $04                                     ; $6C86: $0E $04
    rra                                           ; $6C88: $1F
    inc c                                         ; $6C89: $0C
    rra                                           ; $6C8A: $1F
    dec c                                         ; $6C8B: $0D
    rra                                           ; $6C8C: $1F
    rrca                                          ; $6C8D: $0F
    ccf                                           ; $6C8E: $3F
    rra                                           ; $6C8F: $1F
    ccf                                           ; $6C90: $3F
    rra                                           ; $6C91: $1F
    ccf                                           ; $6C92: $3F
    rra                                           ; $6C93: $1F
    ld a, a                                       ; $6C94: $7F
    ccf                                           ; $6C95: $3F
    ld a, a                                       ; $6C96: $7F
    ccf                                           ; $6C97: $3F
    ld a, a                                       ; $6C98: $7F
    ccf                                           ; $6C99: $3F
    ld a, a                                       ; $6C9A: $7F
    ccf                                           ; $6C9B: $3F
    rst RST_38                                    ; $6C9C: $FF
    ld a, a                                       ; $6C9D: $7F

jr_01E_6C9E:
    rst RST_38                                    ; $6C9E: $FF
    ld a, a                                       ; $6C9F: $7F

jr_01E_6CA0:
    rst RST_38                                    ; $6CA0: $FF
    rst RST_30                                    ; $6CA1: $F7
    rst RST_38                                    ; $6CA2: $FF
    pop af                                        ; $6CA3: $F1
    rst RST_18                                    ; $6CA4: $DF
    ldh a, [$FFDE]                                ; $6CA5: $F0 $DE
    ldh a, [$FFDD]                                ; $6CA7: $F0 $DD
    ldh a, [$FFCD]                                ; $6CA9: $F0 $CD
    ldh a, [$FFC3]                                ; $6CAB: $F0 $C3
    db $FC                                        ; $6CAD: $FC
    ld b, e                                       ; $6CAE: $43
    db $FC                                        ; $6CAF: $FC
    ld c, l                                       ; $6CB0: $4D
    ldh a, [rHDMA1]                               ; $6CB1: $F0 $51
    ldh [rNR11], a                                ; $6CB3: $E0 $11
    ldh [rNR10], a                                ; $6CB5: $E0 $10
    ldh [rNR11], a                                ; $6CB7: $E0 $11
    ldh [rNR33], a                                ; $6CB9: $E0 $1D
    ldh [rNR34], a                                ; $6CBB: $E0 $1E
    push hl                                       ; $6CBD: $E5
    sbc [hl]                                      ; $6CBE: $9E
    ld h, l                                       ; $6CBF: $65
    xor h                                         ; $6CC0: $AC
    ld [hl], b                                    ; $6CC1: $70
    xor h                                         ; $6CC2: $AC
    ld [hl], b                                    ; $6CC3: $70
    db $FC                                        ; $6CC4: $FC
    ld h, b                                       ; $6CC5: $60
    db $F4                                        ; $6CC6: $F4
    ld [$A47A], sp                                ; $6CC7: $08 $7A $A4
    ld l, $D0                                     ; $6CCA: $2E $D0
    jr z, jr_01E_6C9E                             ; $6CCC: $28 $D0

    jr z, jr_01E_6CA0                             ; $6CCE: $28 $D0

    ld hl, sp+$00                                 ; $6CD0: $F8 $00
    ld hl, sp-$30                                 ; $6CD2: $F8 $D0
    ldh a, [$FFC0]                                ; $6CD4: $F0 $C0
    ldh [rLCDC], a                                ; $6CD6: $E0 $40
    ldh a, [rP1]                                  ; $6CD8: $F0 $00
    db $FC                                        ; $6CDA: $FC
    ld b, b                                       ; $6CDB: $40
    db $FC                                        ; $6CDC: $FC
    ld c, b                                       ; $6CDD: $48
    db $FC                                        ; $6CDE: $FC
    ld c, b                                       ; $6CDF: $48
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
    add b                                         ; $6CEA: $80
    nop                                           ; $6CEB: $00
    add b                                         ; $6CEC: $80
    nop                                           ; $6CED: $00
    ret nc                                        ; $6CEE: $D0

    nop                                           ; $6CEF: $00
    rst RST_28                                    ; $6CF0: $EF
    ld d, b                                       ; $6CF1: $50
    ei                                            ; $6CF2: $FB
    push bc                                       ; $6CF3: $C5
    ld sp, hl                                     ; $6CF4: $F9
    sub $DF                                       ; $6CF5: $D6 $DF
    ldh [$FFFD], a                                ; $6CF7: $E0 $FD
    jp nz, $D4EF                                  ; $6CF9: $C2 $EF $D4

    rst RST_38                                    ; $6CFC: $FF

jr_01E_6CFD:
    sub $FF                                       ; $6CFD: $D6 $FF
    adc $00                                       ; $6CFF: $CE $00
    nop                                           ; $6D01: $00
    nop                                           ; $6D02: $00
    nop                                           ; $6D03: $00
    nop                                           ; $6D04: $00
    nop                                           ; $6D05: $00
    nop                                           ; $6D06: $00
    nop                                           ; $6D07: $00
    nop                                           ; $6D08: $00
    nop                                           ; $6D09: $00
    nop                                           ; $6D0A: $00
    nop                                           ; $6D0B: $00
    nop                                           ; $6D0C: $00
    nop                                           ; $6D0D: $00
    ret nz                                        ; $6D0E: $C0

    nop                                           ; $6D0F: $00
    ld h, b                                       ; $6D10: $60
    add b                                         ; $6D11: $80
    ld hl, sp+$60                                 ; $6D12: $F8 $60
    cp $B8                                        ; $6D14: $FE $B8
    cp $DC                                        ; $6D16: $FE $DC
    db $FC                                        ; $6D18: $FC
    ret z                                         ; $6D19: $C8

    add sp, $00                                   ; $6D1A: $E8 $00
    ld h, b                                       ; $6D1C: $60
    add b                                         ; $6D1D: $80
    ldh a, [rP1]                                  ; $6D1E: $F0 $00
    sbc l                                         ; $6D20: $9D
    ld h, [hl]                                    ; $6D21: $66
    ld d, l                                       ; $6D22: $55
    ld [hl+], a                                   ; $6D23: $22
    ld d, a                                       ; $6D24: $57
    jr nz, @+$37                                  ; $6D25: $20 $35

    ld [bc], a                                    ; $6D27: $02
    ld [bc], a                                    ; $6D28: $02
    ld bc, $0003                                  ; $6D29: $01 $03 $00
    ld [bc], a                                    ; $6D2C: $02
    ld bc, $0001                                  ; $6D2D: $01 $01 $00
    ld bc, $0200                                  ; $6D30: $01 $00 $02
    ld bc, $0102                                  ; $6D33: $01 $02 $01
    inc b                                         ; $6D36: $04
    inc bc                                        ; $6D37: $03
    inc b                                         ; $6D38: $04
    inc bc                                        ; $6D39: $03
    dec b                                         ; $6D3A: $05
    ld [bc], a                                    ; $6D3B: $02
    ld b, $00                                     ; $6D3C: $06 $00
    nop                                           ; $6D3E: $00
    nop                                           ; $6D3F: $00
    ld l, h                                       ; $6D40: $6C
    sbc b                                         ; $6D41: $98
    db $EC                                        ; $6D42: $EC
    db $10                                        ; $6D43: $10
    or h                                          ; $6D44: $B4
    ld c, b                                       ; $6D45: $48
    or h                                          ; $6D46: $B4
    add sp, $08                                   ; $6D47: $E8 $08
    ldh a, [$FFB8]                                ; $6D49: $F0 $B8
    ld b, b                                       ; $6D4B: $40
    add sp, $10                                   ; $6D4C: $E8 $10
    ld d, b                                       ; $6D4E: $50
    ldh [$FFF0], a                                ; $6D4F: $E0 $F0
    nop                                           ; $6D51: $00
    xor b                                         ; $6D52: $A8
    ld d, b                                       ; $6D53: $50
    add sp, $10                                   ; $6D54: $E8 $10
    and h                                         ; $6D56: $A4
    jr jr_01E_6CFD                                ; $6D57: $18 $A4

    jr jr_01E_6D6F                                ; $6D59: $18 $14

    ld [$000C], sp                                ; $6D5B: $08 $0C $00
    nop                                           ; $6D5E: $00
    nop                                           ; $6D5F: $00
    nop                                           ; $6D60: $00
    nop                                           ; $6D61: $00
    nop                                           ; $6D62: $00
    nop                                           ; $6D63: $00
    nop                                           ; $6D64: $00
    nop                                           ; $6D65: $00
    nop                                           ; $6D66: $00
    nop                                           ; $6D67: $00
    ld bc, $0200                                  ; $6D68: $01 $00 $02
    ld bc, $0003                                  ; $6D6B: $01 $03 $00
    ld [bc], a                                    ; $6D6E: $02

jr_01E_6D6F:
    ld bc, $0102                                  ; $6D6F: $01 $02 $01
    ld [bc], a                                    ; $6D72: $02
    ld bc, $007F                                  ; $6D73: $01 $7F $00
    add l                                         ; $6D76: $85
    ld a, d                                       ; $6D77: $7A
    rst RST_38                                    ; $6D78: $FF
    nop                                           ; $6D79: $00
    add hl, de                                    ; $6D7A: $19
    ld b, $26                                     ; $6D7B: $06 $26
    jr jr_01E_6DB7                                ; $6D7D: $18 $38

    nop                                           ; $6D7F: $00
    ld bc, $0200                                  ; $6D80: $01 $00 $02
    ld bc, $0304                                  ; $6D83: $01 $04 $03
    inc b                                         ; $6D86: $04
    inc bc                                        ; $6D87: $03
    ld [$0807], sp                                ; $6D88: $08 $07 $08
    rlca                                          ; $6D8B: $07
    db $10                                        ; $6D8C: $10
    rrca                                          ; $6D8D: $0F
    db $10                                        ; $6D8E: $10
    rrca                                          ; $6D8F: $0F
    jr nz, jr_01E_6DB1                            ; $6D90: $20 $1F

    ld [hl+], a                                   ; $6D92: $22
    dec e                                         ; $6D93: $1D
    ld h, $19                                     ; $6D94: $26 $19
    ld c, d                                       ; $6D96: $4A
    ld sp, $304B                                  ; $6D97: $31 $4B $30
    ld d, b                                       ; $6D9A: $50
    jr nz, @+$52                                  ; $6D9B: $20 $50

    jr nz, @+$62                                  ; $6D9D: $20 $60

    nop                                           ; $6D9F: $00
    nop                                           ; $6DA0: $00
    nop                                           ; $6DA1: $00
    ld bc, $0600                                  ; $6DA2: $01 $00 $06
    ld bc, $0719                                  ; $6DA5: $01 $19 $07
    inc hl                                        ; $6DA8: $23
    rra                                           ; $6DA9: $1F
    ld b, a                                       ; $6DAA: $47
    ccf                                           ; $6DAB: $3F
    adc b                                         ; $6DAC: $88
    ld a, a                                       ; $6DAD: $7F
    ld bc, $03FF                                  ; $6DAE: $01 $FF $03

jr_01E_6DB1:
    rst RST_38                                    ; $6DB1: $FF
    rlca                                          ; $6DB2: $07
    rst RST_38                                    ; $6DB3: $FF
    rrca                                          ; $6DB4: $0F
    rst RST_38                                    ; $6DB5: $FF
    inc c                                         ; $6DB6: $0C

jr_01E_6DB7:
    rst RST_38                                    ; $6DB7: $FF
    inc de                                        ; $6DB8: $13
    db $FC                                        ; $6DB9: $FC
    inc b                                         ; $6DBA: $04
    ld hl, sp+$0B                                 ; $6DBB: $F8 $0B
    db $F4                                        ; $6DBD: $F4
    dec l                                         ; $6DBE: $2D
    jp nc, $007F                                  ; $6DBF: $D2 $7F $00

    cp a                                          ; $6DC2: $BF
    ld a, a                                       ; $6DC3: $7F
    rst RST_38                                    ; $6DC4: $FF
    rst RST_38                                    ; $6DC5: $FF
    rst RST_38                                    ; $6DC6: $FF
    rst RST_38                                    ; $6DC7: $FF
    rst RST_38                                    ; $6DC8: $FF
    rst RST_38                                    ; $6DC9: $FF
    rst RST_38                                    ; $6DCA: $FF
    rst RST_38                                    ; $6DCB: $FF
    ld a, a                                       ; $6DCC: $7F
    rst RST_38                                    ; $6DCD: $FF
    rst RST_38                                    ; $6DCE: $FF
    rst RST_38                                    ; $6DCF: $FF
    rst RST_38                                    ; $6DD0: $FF
    cp $FE                                        ; $6DD1: $FE $FE
    ldh a, [$FFFE]                                ; $6DD3: $F0 $FE
    ret nz                                        ; $6DD5: $C0

    db $DD                                        ; $6DD6: $DD
    ld a, [hl+]                                   ; $6DD7: $2A
    ccf                                           ; $6DD8: $3F
    jr jr_01E_6E58                                ; $6DD9: $18 $7D

    ld a, [de]                                    ; $6DDB: $1A
    db $FC                                        ; $6DDC: $FC
    ld h, e                                       ; $6DDD: $63
    push af                                       ; $6DDE: $F5
    ld l, d                                       ; $6DDF: $6A
    add b                                         ; $6DE0: $80
    nop                                           ; $6DE1: $00
    ldh a, [$FF80]                                ; $6DE2: $F0 $80
    cp $F0                                        ; $6DE4: $FE $F0
    rst RST_38                                    ; $6DE6: $FF
    cp $FF                                        ; $6DE7: $FE $FF
    add b                                         ; $6DE9: $80
    ld hl, sp-$20                                 ; $6DEA: $F8 $E0
    cp $F8                                        ; $6DEC: $FE $F8
    rst RST_38                                    ; $6DEE: $FF
    cp $FF                                        ; $6DEF: $FE $FF
    nop                                           ; $6DF1: $00
    nop                                           ; $6DF2: $00
    nop                                           ; $6DF3: $00
    nop                                           ; $6DF4: $00
    nop                                           ; $6DF5: $00
    add b                                         ; $6DF6: $80
    nop                                           ; $6DF7: $00
    ret nz                                        ; $6DF8: $C0

    add b                                         ; $6DF9: $80
    ldh [$FFC0], a                                ; $6DFA: $E0 $C0
    ldh [rLCDC], a                                ; $6DFC: $E0 $40
    ldh [rP1], a                                  ; $6DFE: $E0 $00
    ld d, e                                       ; $6E00: $53
    add b                                         ; $6E01: $80
    add e                                         ; $6E02: $83
    ld bc, $0081                                  ; $6E03: $01 $81 $00
    ld bc, $0100                                  ; $6E06: $01 $00 $01
    nop                                           ; $6E09: $00
    inc bc                                        ; $6E0A: $03
    nop                                           ; $6E0B: $00
    rrca                                          ; $6E0C: $0F
    nop                                           ; $6E0D: $00
    inc de                                        ; $6E0E: $13
    inc c                                         ; $6E0F: $0C
    ld [de], a                                    ; $6E10: $12
    inc c                                         ; $6E11: $0C
    dec e                                         ; $6E12: $1D
    nop                                           ; $6E13: $00
    ld l, a                                       ; $6E14: $6F
    add hl, de                                    ; $6E15: $19
    xor a                                         ; $6E16: $AF
    ld d, d                                       ; $6E17: $52
    ccf                                           ; $6E18: $3F
    add $CE                                       ; $6E19: $C6 $CE
    dec [hl]                                      ; $6E1B: $35
    ld l, $F1                                     ; $6E1C: $2E $F1
    sub l                                         ; $6E1E: $95
    ld a, d                                       ; $6E1F: $7A
    pop af                                        ; $6E20: $F1
    adc [hl]                                      ; $6E21: $8E
    ei                                            ; $6E22: $FB
    db $E4                                        ; $6E23: $E4
    rst RST_38                                    ; $6E24: $FF
    ldh [$FFFA], a                                ; $6E25: $E0 $FA
    rst RST_28                                    ; $6E27: $EF
    ld a, [$FF5F]                                 ; $6E28: $FA $5F $FF
    ld c, $DF                                     ; $6E2B: $0E $DF
    nop                                           ; $6E2D: $00
    cpl                                           ; $6E2E: $2F
    inc d                                         ; $6E2F: $14
    call z, $CA33                                 ; $6E30: $CC $33 $CA
    or c                                          ; $6E33: $B1
    pop af                                        ; $6E34: $F1
    ret nz                                        ; $6E35: $C0

    ret nz                                        ; $6E36: $C0

    nop                                           ; $6E37: $00
    add b                                         ; $6E38: $80
    nop                                           ; $6E39: $00
    add b                                         ; $6E3A: $80
    nop                                           ; $6E3B: $00
    add b                                         ; $6E3C: $80
    nop                                           ; $6E3D: $00
    add b                                         ; $6E3E: $80
    nop                                           ; $6E3F: $00
    nop                                           ; $6E40: $00
    nop                                           ; $6E41: $00
    add b                                         ; $6E42: $80
    nop                                           ; $6E43: $00
    ret nz                                        ; $6E44: $C0

    add b                                         ; $6E45: $80
    ldh [rLCDC], a                                ; $6E46: $E0 $40
    ldh a, [$FF60]                                ; $6E48: $F0 $60
    db $EB                                        ; $6E4A: $EB
    ret nc                                        ; $6E4B: $D0

    push af                                       ; $6E4C: $F5
    adc d                                         ; $6E4D: $8A
    adc c                                         ; $6E4E: $89
    ld b, $46                                     ; $6E4F: $06 $46
    add b                                         ; $6E51: $80
    ldh [rP1], a                                  ; $6E52: $E0 $00
    ldh a, [$FF60]                                ; $6E54: $F0 $60
    cp $60                                        ; $6E56: $FE $60

jr_01E_6E58:
    ld a, [hl]                                    ; $6E58: $7E
    nop                                           ; $6E59: $00
    inc a                                         ; $6E5A: $3C
    nop                                           ; $6E5B: $00
    jr jr_01E_6E5E                                ; $6E5C: $18 $00

jr_01E_6E5E:
    nop                                           ; $6E5E: $00
    nop                                           ; $6E5F: $00
    ld c, l                                       ; $6E60: $4D
    or e                                          ; $6E61: $B3
    xor e                                         ; $6E62: $AB
    call nc, $C834                                ; $6E63: $D4 $34 $C8
    ld hl, sp+$00                                 ; $6E66: $F8 $00
    add b                                         ; $6E68: $80
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
    nop                                           ; $6E7A: $00
    nop                                           ; $6E7B: $00
    nop                                           ; $6E7C: $00
    nop                                           ; $6E7D: $00
    nop                                           ; $6E7E: $00
    nop                                           ; $6E7F: $00
    ret nz                                        ; $6E80: $C0

    add b                                         ; $6E81: $80
    ldh [$FFC0], a                                ; $6E82: $E0 $C0
    ldh [rP1], a                                  ; $6E84: $E0 $00
    nop                                           ; $6E86: $00
    nop                                           ; $6E87: $00
    nop                                           ; $6E88: $00
    nop                                           ; $6E89: $00
    nop                                           ; $6E8A: $00
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
    jr jr_01E_6EA2                                ; $6EA0: $18 $00

jr_01E_6EA2:
    inc d                                         ; $6EA2: $14
    ld [$0814], sp                                ; $6EA3: $08 $14 $08
    ld a, [bc]                                    ; $6EA6: $0A
    inc b                                         ; $6EA7: $04
    cp $00                                        ; $6EA8: $FE $00
    adc c                                         ; $6EAA: $89
    halt                                          ; $6EAB: $76
    ld l, d                                       ; $6EAC: $6A
    dec d                                         ; $6EAD: $15
    dec e                                         ; $6EAE: $1D
    inc bc                                        ; $6EAF: $03
    dec b                                         ; $6EB0: $05
    ld [bc], a                                    ; $6EB1: $02
    rlca                                          ; $6EB2: $07
    nop                                           ; $6EB3: $00
    dec b                                         ; $6EB4: $05
    ld [bc], a                                    ; $6EB5: $02
    ld [bc], a                                    ; $6EB6: $02
    ld bc, $0001                                  ; $6EB7: $01 $01 $00
    nop                                           ; $6EBA: $00
    nop                                           ; $6EBB: $00
    nop                                           ; $6EBC: $00
    nop                                           ; $6EBD: $00
    nop                                           ; $6EBE: $00
    nop                                           ; $6EBF: $00
    ld a, [de]                                    ; $6EC0: $1A
    dec b                                         ; $6EC1: $05
    inc a                                         ; $6EC2: $3C
    dec de                                        ; $6EC3: $1B
    ccf                                           ; $6EC4: $3F
    inc e                                         ; $6EC5: $1C
    ld a, a                                       ; $6EC6: $7F
    ld e, $BF                                     ; $6EC7: $1E $BF
    ld e, h                                       ; $6EC9: $5C
    ld a, a                                       ; $6ECA: $7F
    add h                                         ; $6ECB: $84
    db $FC                                        ; $6ECC: $FC
    inc bc                                        ; $6ECD: $03
    ld a, $C1                                     ; $6ECE: $3E $C1
    ccf                                           ; $6ED0: $3F
    add $FF                                       ; $6ED1: $C6 $FF
    ld c, $FF                                     ; $6ED3: $0E $FF
    db $10                                        ; $6ED5: $10
    cp l                                          ; $6ED6: $BD
    ld e, b                                       ; $6ED7: $58
    db $FD                                        ; $6ED8: $FD
    ld b, b                                       ; $6ED9: $40
    ld sp, hl                                     ; $6EDA: $F9
    ld h, b                                       ; $6EDB: $60
    ld [hl], c                                    ; $6EDC: $71
    jr nz, jr_01E_6F0F                            ; $6EDD: $20 $30

    nop                                           ; $6EDF: $00
    db $DB                                        ; $6EE0: $DB
    inc h                                         ; $6EE1: $24
    xor h                                         ; $6EE2: $AC
    inc de                                        ; $6EE3: $13
    and $19                                       ; $6EE4: $E6 $19
    ld a, [bc]                                    ; $6EE6: $0A
    db $FD                                        ; $6EE7: $FD
    rst RST_30                                    ; $6EE8: $F7
    inc c                                         ; $6EE9: $0C
    sub a                                         ; $6EEA: $97
    ld c, $8F                                     ; $6EEB: $0E $8F
    ld b, $C7                                     ; $6EED: $06 $C7
    ld [bc], a                                    ; $6EEF: $02
    rst RST_20                                    ; $6EF0: $E7
    ld b, d                                       ; $6EF1: $42
    db $E3                                        ; $6EF2: $E3
    ret nz                                        ; $6EF3: $C0

    ret nz                                        ; $6EF4: $C0

    add b                                         ; $6EF5: $80
    ret nz                                        ; $6EF6: $C0

    nop                                           ; $6EF7: $00
    ldh [$FFC0], a                                ; $6EF8: $E0 $C0
    ldh a, [$FFE0]                                ; $6EFA: $F0 $E0
    ldh a, [rP1]                                  ; $6EFC: $F0 $00
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
    nop                                           ; $6F0E: $00

jr_01E_6F0F:
    nop                                           ; $6F0F: $00
    nop                                           ; $6F10: $00
    nop                                           ; $6F11: $00
    ld b, $00                                     ; $6F12: $06 $00
    dec c                                         ; $6F14: $0D
    ld [bc], a                                    ; $6F15: $02
    ccf                                           ; $6F16: $3F
    dec c                                         ; $6F17: $0D
    rst RST_38                                    ; $6F18: $FF
    ld a, [hl-]                                   ; $6F19: $3A
    rst RST_38                                    ; $6F1A: $FF
    halt                                          ; $6F1B: $76
    ld a, a                                       ; $6F1C: $7F
    ld h, $2F                                     ; $6F1D: $26 $2F
    nop                                           ; $6F1F: $00
    nop                                           ; $6F20: $00
    nop                                           ; $6F21: $00
    nop                                           ; $6F22: $00
    nop                                           ; $6F23: $00
    nop                                           ; $6F24: $00
    nop                                           ; $6F25: $00
    nop                                           ; $6F26: $00
    nop                                           ; $6F27: $00
    nop                                           ; $6F28: $00
    nop                                           ; $6F29: $00
    nop                                           ; $6F2A: $00
    nop                                           ; $6F2B: $00
    ld bc, $0100                                  ; $6F2C: $01 $00 $01
    nop                                           ; $6F2F: $00
    nop                                           ; $6F30: $00
    nop                                           ; $6F31: $00
    jr jr_01E_6F34                                ; $6F32: $18 $00

jr_01E_6F34:
    add sp, $10                                   ; $6F34: $E8 $10
    or e                                          ; $6F36: $B3
    ld b, b                                       ; $6F37: $40
    ld a, [hl-]                                   ; $6F38: $3A
    pop de                                        ; $6F39: $D1
    db $FD                                        ; $6F3A: $FD
    jr @+$7F                                      ; $6F3B: $18 $7D

    sbc b                                         ; $6F3D: $98
    ld a, $C0                                     ; $6F3E: $3E $C0
    nop                                           ; $6F40: $00
    nop                                           ; $6F41: $00
    nop                                           ; $6F42: $00
    nop                                           ; $6F43: $00
    nop                                           ; $6F44: $00
    nop                                           ; $6F45: $00
    nop                                           ; $6F46: $00
    nop                                           ; $6F47: $00
    nop                                           ; $6F48: $00
    nop                                           ; $6F49: $00
    nop                                           ; $6F4A: $00
    nop                                           ; $6F4B: $00
    add b                                         ; $6F4C: $80
    nop                                           ; $6F4D: $00
    ld b, b                                       ; $6F4E: $40
    add b                                         ; $6F4F: $80
    and b                                         ; $6F50: $A0
    ld b, b                                       ; $6F51: $40
    sub b                                         ; $6F52: $90
    ld h, b                                       ; $6F53: $60
    ld c, b                                       ; $6F54: $48
    jr nc, jr_01E_6F9B                            ; $6F55: $30 $44

    jr c, @-$5A                                   ; $6F57: $38 $A4

    jr jr_01E_6FC5                                ; $6F59: $18 $6A

    sbc h                                         ; $6F5B: $9C
    ld h, $DC                                     ; $6F5C: $26 $DC
    add a                                         ; $6F5E: $87
    ld a, [hl]                                    ; $6F5F: $7E
    ld l, $FC                                     ; $6F60: $2E $FC
    ld e, $FC                                     ; $6F62: $1E $FC
    sbc a                                         ; $6F64: $9F
    cp $7F                                        ; $6F65: $FE $7F
    cp $7F                                        ; $6F67: $FE $7F
    cp $7F                                        ; $6F69: $FE $7F
    xor $BF                                       ; $6F6B: $EE $BF
    ld h, [hl]                                    ; $6F6D: $66
    cp a                                          ; $6F6E: $BF
    ld h, [hl]                                    ; $6F6F: $66
    ld [hl], a                                    ; $6F70: $77
    ld [hl+], a                                   ; $6F71: $22
    ld [hl], a                                    ; $6F72: $77
    ld [hl+], a                                   ; $6F73: $22
    ld [hl], e                                    ; $6F74: $73
    jr nz, jr_01E_6FA7                            ; $6F75: $20 $30

    nop                                           ; $6F77: $00
    nop                                           ; $6F78: $00
    nop                                           ; $6F79: $00
    nop                                           ; $6F7A: $00
    nop                                           ; $6F7B: $00
    nop                                           ; $6F7C: $00
    nop                                           ; $6F7D: $00
    nop                                           ; $6F7E: $00
    nop                                           ; $6F7F: $00
    ld h, c                                       ; $6F80: $61
    nop                                           ; $6F81: $00
    ld e, [hl]                                    ; $6F82: $5E
    ld hl, $0A37                                  ; $6F83: $21 $37 $0A

jr_01E_6F86:
    ld [hl], e                                    ; $6F86: $73
    dec l                                         ; $6F87: $2D
    rst RST_38                                    ; $6F88: $FF
    ld h, c                                       ; $6F89: $61
    ei                                            ; $6F8A: $FB
    ld h, l                                       ; $6F8B: $65
    ld [hl], e                                    ; $6F8C: $73
    inc c                                         ; $6F8D: $0C
    ld a, [de]                                    ; $6F8E: $1A
    dec b                                         ; $6F8F: $05
    dec a                                         ; $6F90: $3D
    ld [de], a                                    ; $6F91: $12
    ccf                                           ; $6F92: $3F
    inc e                                         ; $6F93: $1C
    ld a, $1D                                     ; $6F94: $3E $1D
    rra                                           ; $6F96: $1F
    inc c                                         ; $6F97: $0C
    rra                                           ; $6F98: $1F
    inc b                                         ; $6F99: $04
    rra                                           ; $6F9A: $1F

jr_01E_6F9B:
    ld bc, $041B                                  ; $6F9B: $01 $1B $04
    rrca                                          ; $6F9E: $0F
    nop                                           ; $6F9F: $00
    add b                                         ; $6FA0: $80
    nop                                           ; $6FA1: $00
    ret nz                                        ; $6FA2: $C0

    nop                                           ; $6FA3: $00
    ldh a, [$FFC0]                                ; $6FA4: $F0 $C0
    db $FC                                        ; $6FA6: $FC

jr_01E_6FA7:
    ld [hl], b                                    ; $6FA7: $70
    db $FC                                        ; $6FA8: $FC
    cp b                                          ; $6FA9: $B8
    ld hl, sp-$70                                 ; $6FAA: $F8 $90
    ret nc                                        ; $6FAC: $D0

    nop                                           ; $6FAD: $00
    ldh [rLCDC], a                                ; $6FAE: $E0 $40
    ldh a, [rNR41]                                ; $6FB0: $F0 $20
    ld hl, sp+$10                                 ; $6FB2: $F8 $10
    jr c, jr_01E_6F86                             ; $6FB4: $38 $D0

    ld a, b                                       ; $6FB6: $78
    add b                                         ; $6FB7: $80
    db $F4                                        ; $6FB8: $F4
    ld [$40BC], sp                                ; $6FB9: $08 $BC $40
    ld [hl-], a                                   ; $6FBC: $32
    call z, $CC32                                 ; $6FBD: $CC $32 $CC
    rrca                                          ; $6FC0: $0F
    ld b, $1F                                     ; $6FC1: $06 $1F
    ld b, $3F                                     ; $6FC3: $06 $3F

jr_01E_6FC5:
    jr jr_01E_7044                                ; $6FC5: $18 $7D

    jr c, jr_01E_7045                             ; $6FC7: $38 $7C

    nop                                           ; $6FC9: $00
    nop                                           ; $6FCA: $00
    nop                                           ; $6FCB: $00
    nop                                           ; $6FCC: $00
    nop                                           ; $6FCD: $00
    nop                                           ; $6FCE: $00
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
    ld c, h                                       ; $6FE0: $4C
    add b                                         ; $6FE1: $80
    ldh [rLCDC], a                                ; $6FE2: $E0 $40
    ldh [$FFC0], a                                ; $6FE4: $E0 $C0
    ldh [$FF80], a                                ; $6FE6: $E0 $80
    ldh a, [$FF60]                                ; $6FE8: $F0 $60
    ldh a, [$FF60]                                ; $6FEA: $F0 $60

jr_01E_6FEC:
    ldh a, [rP1]                                  ; $6FEC: $F0 $00
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

jr_01E_6FF9:
    nop                                           ; $6FF9: $00
    nop                                           ; $6FFA: $00
    nop                                           ; $6FFB: $00
    nop                                           ; $6FFC: $00
    nop                                           ; $6FFD: $00
    nop                                           ; $6FFE: $00
    nop                                           ; $6FFF: $00
    add hl, sp                                    ; $7000: $39
    ld d, $35                                     ; $7001: $16 $35
    ld a, [de]                                    ; $7003: $1A
    rla                                           ; $7004: $17
    ld [$011E], sp                                ; $7005: $08 $1E $01
    ld d, $0B                                     ; $7008: $16 $0B
    jr jr_01E_7013                                ; $700A: $18 $07

    ld d, $09                                     ; $700C: $16 $09
    rrca                                          ; $700E: $0F

jr_01E_700F:
    nop                                           ; $700F: $00
    dec c                                         ; $7010: $0D
    inc bc                                        ; $7011: $03
    rlca                                          ; $7012: $07

jr_01E_7013:
    nop                                           ; $7013: $00
    ld a, [bc]                                    ; $7014: $0A
    dec b                                         ; $7015: $05
    dec bc                                        ; $7016: $0B
    inc b                                         ; $7017: $04
    ld [de], a                                    ; $7018: $12
    inc c                                         ; $7019: $0C
    ld [de], a                                    ; $701A: $12
    inc c                                         ; $701B: $0C
    inc d                                         ; $701C: $14
    ld [$0018], sp                                ; $701D: $08 $18 $00
    ld [hl], b                                    ; $7020: $70
    and b                                         ; $7021: $A0
    or b                                          ; $7022: $B0
    ld h, b                                       ; $7023: $60
    or b                                          ; $7024: $B0
    ld b, b                                       ; $7025: $40
    ret nc                                        ; $7026: $D0

    jr nz, jr_01E_6FF9                            ; $7027: $20 $D0

    and b                                         ; $7029: $A0
    jr nc, jr_01E_6FEC                            ; $702A: $30 $C0

    ret nc                                        ; $702C: $D0

    jr nz, jr_01E_700F                            ; $702D: $20 $E0

    nop                                           ; $702F: $00
    ld h, b                                       ; $7030: $60
    add b                                         ; $7031: $80
    ret nz                                        ; $7032: $C0

    nop                                           ; $7033: $00
    and b                                         ; $7034: $A0
    ld b, b                                       ; $7035: $40
    and b                                         ; $7036: $A0
    ld b, b                                       ; $7037: $40
    sub b                                         ; $7038: $90
    ld h, b                                       ; $7039: $60
    sub b                                         ; $703A: $90
    ld h, b                                       ; $703B: $60
    ld d, b                                       ; $703C: $50
    jr nz, jr_01E_706F                            ; $703D: $20 $30

    nop                                           ; $703F: $00
    nop                                           ; $7040: $00
    nop                                           ; $7041: $00
    nop                                           ; $7042: $00
    nop                                           ; $7043: $00

jr_01E_7044:
    nop                                           ; $7044: $00

jr_01E_7045:
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
    nop                                           ; $7054: $00
    nop                                           ; $7055: $00
    nop                                           ; $7056: $00
    nop                                           ; $7057: $00
    inc bc                                        ; $7058: $03
    nop                                           ; $7059: $00
    dec b                                         ; $705A: $05
    ld [bc], a                                    ; $705B: $02
    add hl, sp                                    ; $705C: $39
    ld b, $39                                     ; $705D: $06 $39
    ld d, $00                                     ; $705F: $16 $00
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

jr_01E_706F:
    nop                                           ; $706F: $00
    nop                                           ; $7070: $00
    nop                                           ; $7071: $00
    nop                                           ; $7072: $00
    nop                                           ; $7073: $00
    nop                                           ; $7074: $00
    nop                                           ; $7075: $00
    nop                                           ; $7076: $00
    nop                                           ; $7077: $00
    add b                                         ; $7078: $80
    nop                                           ; $7079: $00
    ld b, b                                       ; $707A: $40
    add b                                         ; $707B: $80
    jr nc, @-$3E                                  ; $707C: $30 $C0

    ld [hl], b                                    ; $707E: $70
    and b                                         ; $707F: $A0
    ld bc, $0000                                  ; $7080: $01 $00 $00
    nop                                           ; $7083: $00
    ret nz                                        ; $7084: $C0

    nop                                           ; $7085: $00
    cp a                                          ; $7086: $BF
    ld b, b                                       ; $7087: $40
    ld b, e                                       ; $7088: $43
    dec a                                         ; $7089: $3D
    cpl                                           ; $708A: $2F
    ld de, $0019                                  ; $708B: $11 $19 $00
    ld bc, $0000                                  ; $708E: $01 $00 $00
    nop                                           ; $7091: $00
    nop                                           ; $7092: $00
    nop                                           ; $7093: $00
    nop                                           ; $7094: $00
    nop                                           ; $7095: $00
    nop                                           ; $7096: $00
    nop                                           ; $7097: $00
    nop                                           ; $7098: $00
    nop                                           ; $7099: $00
    nop                                           ; $709A: $00
    nop                                           ; $709B: $00
    nop                                           ; $709C: $00
    nop                                           ; $709D: $00
    nop                                           ; $709E: $00
    nop                                           ; $709F: $00
    rst RST_30                                    ; $70A0: $F7
    set 4, a                                      ; $70A1: $CB $E7
    jr @+$37                                      ; $70A3: $18 $35

    ld a, [bc]                                    ; $70A5: $0A
    di                                            ; $70A6: $F3
    inc l                                         ; $70A7: $2C
    db $FD                                        ; $70A8: $FD
    db $E3                                        ; $70A9: $E3
    push af                                       ; $70AA: $F5
    rst RST_28                                    ; $70AB: $EF
    rst RST_38                                    ; $70AC: $FF
    rst RST_00                                    ; $70AD: $C7
    rst RST_38                                    ; $70AE: $FF
    add b                                         ; $70AF: $80
    db $E3                                        ; $70B0: $E3
    dec e                                         ; $70B1: $1D
    di                                            ; $70B2: $F3

jr_01E_70B3:
    ld l, h                                       ; $70B3: $6C
    db $FC                                        ; $70B4: $FC
    ld h, b                                       ; $70B5: $60
    ld [hl], b                                    ; $70B6: $70
    nop                                           ; $70B7: $00
    ld a, b                                       ; $70B8: $78
    jr nc, jr_01E_70B3                            ; $70B9: $30 $F8

    ld [hl], b                                    ; $70BB: $70
    ld hl, sp+$00                                 ; $70BC: $F8 $00
    nop                                           ; $70BE: $00
    nop                                           ; $70BF: $00
    ldh a, [rNR41]                                ; $70C0: $F0 $20
    and b                                         ; $70C2: $A0
    nop                                           ; $70C3: $00
    add e                                         ; $70C4: $83
    nop                                           ; $70C5: $00
    db $FD                                        ; $70C6: $FD
    add d                                         ; $70C7: $82
    ldh a, [c]                                    ; $70C8: $F2
    ld l, h                                       ; $70C9: $6C
    db $FC                                        ; $70CA: $FC
    ld h, b                                       ; $70CB: $60
    ei                                            ; $70CC: $FB
    ld b, b                                       ; $70CD: $40
    db $FC                                        ; $70CE: $FC
    inc bc                                        ; $70CF: $03
    db $FC                                        ; $70D0: $FC
    inc bc                                        ; $70D1: $03
    sub e                                         ; $70D2: $93
    ld h, b                                       ; $70D3: $60
    or b                                          ; $70D4: $B0
    ld b, b                                       ; $70D5: $40
    ld a, b                                       ; $70D6: $78
    jr nc, jr_01E_7155                            ; $70D7: $30 $7C

    jr nc, jr_01E_7119                            ; $70D9: $30 $3E

    inc b                                         ; $70DB: $04
    rra                                           ; $70DC: $1F
    ld c, $1F                                     ; $70DD: $0E $1F
    nop                                           ; $70DF: $00
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
    nop                                           ; $70F2: $00
    nop                                           ; $70F3: $00
    nop                                           ; $70F4: $00
    nop                                           ; $70F5: $00
    ld h, c                                       ; $70F6: $61
    nop                                           ; $70F7: $00
    ld e, [hl]                                    ; $70F8: $5E
    ld hl, $0A37                                  ; $70F9: $21 $37 $0A
    ld [hl], e                                    ; $70FC: $73
    dec l                                         ; $70FD: $2D
    rst RST_38                                    ; $70FE: $FF
    ld h, c                                       ; $70FF: $61
    nop                                           ; $7100: $00
    nop                                           ; $7101: $00
    nop                                           ; $7102: $00
    nop                                           ; $7103: $00
    nop                                           ; $7104: $00
    nop                                           ; $7105: $00
    nop                                           ; $7106: $00
    nop                                           ; $7107: $00
    nop                                           ; $7108: $00
    nop                                           ; $7109: $00
    nop                                           ; $710A: $00
    nop                                           ; $710B: $00
    nop                                           ; $710C: $00
    nop                                           ; $710D: $00
    nop                                           ; $710E: $00
    nop                                           ; $710F: $00
    nop                                           ; $7110: $00
    nop                                           ; $7111: $00
    nop                                           ; $7112: $00
    nop                                           ; $7113: $00
    nop                                           ; $7114: $00
    nop                                           ; $7115: $00
    add b                                         ; $7116: $80
    nop                                           ; $7117: $00
    ret nz                                        ; $7118: $C0

jr_01E_7119:
    nop                                           ; $7119: $00
    ldh a, [$FFC0]                                ; $711A: $F0 $C0
    db $FC                                        ; $711C: $FC
    ld [hl], b                                    ; $711D: $70
    db $FC                                        ; $711E: $FC
    cp b                                          ; $711F: $B8
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
    add b                                         ; $713C: $80
    nop                                           ; $713D: $00
    add b                                         ; $713E: $80
    nop                                           ; $713F: $00
    dec [hl]                                      ; $7140: $35
    ld a, [bc]                                    ; $7141: $0A
    ld a, e                                       ; $7142: $7B
    inc h                                         ; $7143: $24
    ld a, a                                       ; $7144: $7F
    jr c, jr_01E_71C3                             ; $7145: $38 $7C

    dec sp                                        ; $7147: $3B
    ld a, $19                                     ; $7148: $3E $19
    ccf                                           ; $714A: $3F
    ld [$023F], sp                                ; $714B: $08 $3F $02
    ld [hl], $09                                  ; $714E: $36 $09
    ld e, $01                                     ; $7150: $1E $01
    ld e, $0D                                     ; $7152: $1E $0D
    ccf                                           ; $7154: $3F

jr_01E_7155:
    inc c                                         ; $7155: $0C
    ld a, a                                       ; $7156: $7F
    ld sp, $71FB                                  ; $7157: $31 $FB $71
    ld sp, hl                                     ; $715A: $F9
    nop                                           ; $715B: $00
    ld bc, $0100                                  ; $715C: $01 $00 $01
    nop                                           ; $715F: $00
    ret nz                                        ; $7160: $C0

    add b                                         ; $7161: $80
    ldh [rLCDC], a                                ; $7162: $E0 $40
    ldh a, [rNR41]                                ; $7164: $F0 $20
    ld [hl], b                                    ; $7166: $70
    and b                                         ; $7167: $A0
    ldh a, [rP1]                                  ; $7168: $F0 $00
    add sp, $10                                   ; $716A: $E8 $10
    ld a, b                                       ; $716C: $78
    add b                                         ; $716D: $80
    ld h, h                                       ; $716E: $64
    sbc b                                         ; $716F: $98
    ld h, h                                       ; $7170: $64
    sbc b                                         ; $7171: $98
    sbc b                                         ; $7172: $98
    nop                                           ; $7173: $00
    ret nz                                        ; $7174: $C0

    add b                                         ; $7175: $80
    ret nz                                        ; $7176: $C0

    add b                                         ; $7177: $80
    ret nz                                        ; $7178: $C0

    nop                                           ; $7179: $00
    ldh [$FFC0], a                                ; $717A: $E0 $C0
    ldh [$FFC0], a                                ; $717C: $E0 $C0
    ldh [rP1], a                                  ; $717E: $E0 $00
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
    ld h, c                                       ; $7192: $61
    nop                                           ; $7193: $00
    ld e, [hl]                                    ; $7194: $5E
    ld hl, $0A37                                  ; $7195: $21 $37 $0A
    ld [hl], e                                    ; $7198: $73
    dec l                                         ; $7199: $2D
    rst RST_38                                    ; $719A: $FF
    ld h, c                                       ; $719B: $61
    ei                                            ; $719C: $FB
    ld h, l                                       ; $719D: $65
    ld [hl], e                                    ; $719E: $73
    inc c                                         ; $719F: $0C
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
    add b                                         ; $71B2: $80
    nop                                           ; $71B3: $00
    ret nz                                        ; $71B4: $C0

    nop                                           ; $71B5: $00
    ldh a, [$FFC0]                                ; $71B6: $F0 $C0
    db $FC                                        ; $71B8: $FC
    ld [hl], b                                    ; $71B9: $70
    db $FC                                        ; $71BA: $FC
    cp b                                          ; $71BB: $B8
    ld hl, sp-$70                                 ; $71BC: $F8 $90
    ret nc                                        ; $71BE: $D0

    nop                                           ; $71BF: $00
    db $10                                        ; $71C0: $10
    rrca                                          ; $71C1: $0F
    inc e                                         ; $71C2: $1C

jr_01E_71C3:
    rrca                                          ; $71C3: $0F
    rra                                           ; $71C4: $1F
    inc bc                                        ; $71C5: $03
    scf                                           ; $71C6: $37
    inc e                                         ; $71C7: $1C
    ld a, [hl-]                                   ; $71C8: $3A
    rlca                                          ; $71C9: $07
    scf                                           ; $71CA: $37
    add hl, de                                    ; $71CB: $19
    ld h, c                                       ; $71CC: $61
    ld a, $60                                     ; $71CD: $3E $60
    ccf                                           ; $71CF: $3F
    ld h, b                                       ; $71D0: $60
    ccf                                           ; $71D1: $3F
    ret nz                                        ; $71D2: $C0

    ld a, a                                       ; $71D3: $7F
    ret nz                                        ; $71D4: $C0

    ld a, a                                       ; $71D5: $7F
    ld h, b                                       ; $71D6: $60
    rra                                           ; $71D7: $1F
    jr jr_01E_71E1                                ; $71D8: $18 $07

    rlca                                          ; $71DA: $07
    ld bc, $0001                                  ; $71DB: $01 $01 $00
    nop                                           ; $71DE: $00
    nop                                           ; $71DF: $00
    rst RST_38                                    ; $71E0: $FF

jr_01E_71E1:
    cp c                                          ; $71E1: $B9
    jp hl                                         ; $71E2: $E9


    or [hl]                                       ; $71E3: $B6
    ld sp, hl                                     ; $71E4: $F9
    or [hl]                                       ; $71E5: $B6
    ld sp, hl                                     ; $71E6: $F9
    ld d, [hl]                                    ; $71E7: $56
    cp a                                          ; $71E8: $BF
    add sp, $5E                                   ; $71E9: $E8 $5E
    db $EC                                        ; $71EB: $EC
    or d                                          ; $71EC: $B2
    ld l, h                                       ; $71ED: $6C
    ld a, h                                       ; $71EE: $7C
    sub b                                         ; $71EF: $90
    ld a, h                                       ; $71F0: $7C
    ret nc                                        ; $71F1: $D0

    ld [hl], h                                    ; $71F2: $74
    ret z                                         ; $71F3: $C8

    cp b                                          ; $71F4: $B8
    ldh a, [$FFB8]                                ; $71F5: $F0 $B8
    ldh a, [$FFB8]                                ; $71F7: $F0 $B8
    ldh a, [rSVBK]                                ; $71F9: $F0 $70
    ldh [$FFF0], a                                ; $71FB: $E0 $F0
    ld h, b                                       ; $71FD: $60
    ld h, b                                       ; $71FE: $60
    nop                                           ; $71FF: $00
    nop                                           ; $7200: $00
    nop                                           ; $7201: $00
    ld b, $00                                     ; $7202: $06 $00
    dec c                                         ; $7204: $0D
    ld b, $0C                                     ; $7205: $06 $0C
    rlca                                          ; $7207: $07
    jr jr_01E_7219                                ; $7208: $18 $0F

jr_01E_720A:
    jr jr_01E_721B                                ; $720A: $18 $0F

    jr jr_01E_721D                                ; $720C: $18 $0F

    jr nc, jr_01E_722F                            ; $720E: $30 $1F

    jr nc, jr_01E_7231                            ; $7210: $30 $1F

    jr c, jr_01E_721B                             ; $7212: $38 $07

    ld d, [hl]                                    ; $7214: $56
    add hl, sp                                    ; $7215: $39
    ld l, e                                       ; $7216: $6B
    ld e, $7D                                     ; $7217: $1E $7D

jr_01E_7219:
    daa                                           ; $7219: $27
    sbc [hl]                                      ; $721A: $9E

jr_01E_721B:
    ld a, e                                       ; $721B: $7B
    adc a                                         ; $721C: $8F

jr_01E_721D:
    ld a, l                                       ; $721D: $7D
    add a                                         ; $721E: $87
    ld a, h                                       ; $721F: $7C
    nop                                           ; $7220: $00
    nop                                           ; $7221: $00
    nop                                           ; $7222: $00
    nop                                           ; $7223: $00
    add b                                         ; $7224: $80
    nop                                           ; $7225: $00
    ld h, b                                       ; $7226: $60
    add b                                         ; $7227: $80
    jr jr_01E_720A                                ; $7228: $18 $E0

    ld d, $F8                                     ; $722A: $16 $F8
    rla                                           ; $722C: $17
    cp $17                                        ; $722D: $FE $17

jr_01E_722F:
    cp $2E                                        ; $722F: $FE $2E

jr_01E_7231:
    db $FC                                        ; $7231: $FC
    ld l, $FC                                     ; $7232: $2E $FC
    ld l, $FC                                     ; $7234: $2E $FC
    cp h                                          ; $7236: $BC
    ld c, b                                       ; $7237: $48
    ld a, h                                       ; $7238: $7C
    sub b                                         ; $7239: $90
    cp h                                          ; $723A: $BC
    ret nc                                        ; $723B: $D0

    ld c, b                                       ; $723C: $48
    or b                                          ; $723D: $B0
    ld hl, sp+$30                                 ; $723E: $F8 $30
    add b                                         ; $7240: $80
    nop                                           ; $7241: $00
    nop                                           ; $7242: $00
    nop                                           ; $7243: $00
    add b                                         ; $7244: $80
    nop                                           ; $7245: $00
    ldh [$FF80], a                                ; $7246: $E0 $80
    ld hl, sp+$60                                 ; $7248: $F8 $60
    ld a, [hl]                                    ; $724A: $7E
    jr jr_01E_726C                                ; $724B: $18 $1F

    ld b, $06                                     ; $724D: $06 $06
    ld bc, $0102                                  ; $724F: $01 $02 $01
    inc bc                                        ; $7252: $03
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
    rst RST_28                                    ; $7260: $EF
    db $10                                        ; $7261: $10
    dec [hl]                                      ; $7262: $35
    ld a, [bc]                                    ; $7263: $0A
    inc sp                                        ; $7264: $33
    inc c                                         ; $7265: $0C
    ld a, a                                       ; $7266: $7F
    ld hl, $1E7F                                  ; $7267: $21 $7F $1E
    rst RST_38                                    ; $726A: $FF
    inc a                                         ; $726B: $3C

jr_01E_726C:
    cp [hl]                                       ; $726C: $BE
    ld e, l                                       ; $726D: $5D
    ld a, a                                       ; $726E: $7F
    add b                                         ; $726F: $80
    cp $19                                        ; $7270: $FE $19
    sbc a                                         ; $7272: $9F
    ld h, d                                       ; $7273: $62
    ld a, a                                       ; $7274: $7F
    ld a, [bc]                                    ; $7275: $0A
    rrca                                          ; $7276: $0F
    ld [bc], a                                    ; $7277: $02
    rra                                           ; $7278: $1F
    inc c                                         ; $7279: $0C
    ccf                                           ; $727A: $3F
    add hl, de                                    ; $727B: $19
    ccf                                           ; $727C: $3F
    inc bc                                        ; $727D: $03
    rlca                                          ; $727E: $07
    nop                                           ; $727F: $00
    add b                                         ; $7280: $80
    nop                                           ; $7281: $00
    ldh [rP1], a                                  ; $7282: $E0 $00
    ld hl, sp+$00                                 ; $7284: $F8 $00
    db $FC                                        ; $7286: $FC
    add b                                         ; $7287: $80
    rst RST_38                                    ; $7288: $FF
    ret nz                                        ; $7289: $C0

    db $E4                                        ; $728A: $E4
    add e                                         ; $728B: $83
    call nc, $9323                                ; $728C: $D4 $23 $93
    ld h, b                                       ; $728F: $60
    and b                                         ; $7290: $A0
    ld b, b                                       ; $7291: $40
    ret nz                                        ; $7292: $C0

    nop                                           ; $7293: $00
    ldh [$FFC0], a                                ; $7294: $E0 $C0
    ldh [$FFC0], a                                ; $7296: $E0 $C0
    ret nz                                        ; $7298: $C0

    nop                                           ; $7299: $00
    ret nz                                        ; $729A: $C0

    add b                                         ; $729B: $80
    ret nz                                        ; $729C: $C0

    nop                                           ; $729D: $00
    nop                                           ; $729E: $00
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
    nop                                           ; $72B0: $00
    nop                                           ; $72B1: $00
    nop                                           ; $72B2: $00
    nop                                           ; $72B3: $00
    ld h, [hl]                                    ; $72B4: $66
    nop                                           ; $72B5: $00
    ld e, e                                       ; $72B6: $5B
    inc h                                         ; $72B7: $24
    ccf                                           ; $72B8: $3F
    add hl, bc                                    ; $72B9: $09
    ld a, a                                       ; $72BA: $7F
    dec l                                         ; $72BB: $2D
    rst RST_38                                    ; $72BC: $FF
    ld l, [hl]                                    ; $72BD: $6E
    rst RST_38                                    ; $72BE: $FF
    ld h, [hl]                                    ; $72BF: $66
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
    nop                                           ; $72CC: $00
    nop                                           ; $72CD: $00
    nop                                           ; $72CE: $00
    nop                                           ; $72CF: $00
    nop                                           ; $72D0: $00
    nop                                           ; $72D1: $00
    nop                                           ; $72D2: $00
    nop                                           ; $72D3: $00
    nop                                           ; $72D4: $00
    nop                                           ; $72D5: $00
    nop                                           ; $72D6: $00
    nop                                           ; $72D7: $00
    ret nz                                        ; $72D8: $C0

    nop                                           ; $72D9: $00
    ldh [$FFC0], a                                ; $72DA: $E0 $C0
    ldh a, [$FFE0]                                ; $72DC: $F0 $E0
    ldh a, [$FFC0]                                ; $72DE: $F0 $C0
    nop                                           ; $72E0: $00
    nop                                           ; $72E1: $00
    nop                                           ; $72E2: $00
    nop                                           ; $72E3: $00
    nop                                           ; $72E4: $00
    nop                                           ; $72E5: $00
    nop                                           ; $72E6: $00
    nop                                           ; $72E7: $00
    nop                                           ; $72E8: $00
    nop                                           ; $72E9: $00
    nop                                           ; $72EA: $00
    nop                                           ; $72EB: $00
    nop                                           ; $72EC: $00
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
    nop                                           ; $72F7: $00
    nop                                           ; $72F8: $00
    nop                                           ; $72F9: $00
    add b                                         ; $72FA: $80
    nop                                           ; $72FB: $00
    add b                                         ; $72FC: $80
    nop                                           ; $72FD: $00
    nop                                           ; $72FE: $00
    nop                                           ; $72FF: $00
    inc bc                                        ; $7300: $03
    nop                                           ; $7301: $00
    rrca                                          ; $7302: $0F
    inc bc                                        ; $7303: $03
    inc e                                         ; $7304: $1C
    rrca                                          ; $7305: $0F
    jr nc, jr_01E_7327                            ; $7306: $30 $1F

    ld [hl], b                                    ; $7308: $70
    ccf                                           ; $7309: $3F
    ld e, b                                       ; $730A: $58
    ccf                                           ; $730B: $3F
    call z, $E67F                                 ; $730C: $CC $7F $E6
    ld a, a                                       ; $730F: $7F
    di                                            ; $7310: $F3
    ld a, a                                       ; $7311: $7F
    ld sp, hl                                     ; $7312: $F9
    ld a, a                                       ; $7313: $7F
    db $FC                                        ; $7314: $FC
    ld a, a                                       ; $7315: $7F
    ld a, [hl]                                    ; $7316: $7E
    ccf                                           ; $7317: $3F
    ld a, a                                       ; $7318: $7F
    ccf                                           ; $7319: $3F
    ccf                                           ; $731A: $3F
    rra                                           ; $731B: $1F
    rra                                           ; $731C: $1F
    rlca                                          ; $731D: $07
    rlca                                          ; $731E: $07
    nop                                           ; $731F: $00
    add b                                         ; $7320: $80
    nop                                           ; $7321: $00
    ldh a, [$FF80]                                ; $7322: $F0 $80
    ld a, h                                       ; $7324: $7C
    ldh [$FF1F], a                                ; $7325: $E0 $1F

jr_01E_7327:
    db $F4                                        ; $7327: $F4
    rrca                                          ; $7328: $0F
    ld a, [$FA0D]                                 ; $7329: $FA $0D $FA
    dec c                                         ; $732C: $0D
    ld a, [$FA0D]                                 ; $732D: $FA $0D $FA
    ld a, [bc]                                    ; $7330: $0A
    push af                                       ; $7331: $F5
    sbc d                                         ; $7332: $9A
    push af                                       ; $7333: $F5
    jp c, Jump_01E_75F5                           ; $7334: $DA $F5 $75

    ld [$EA3D], a                                 ; $7337: $EA $3D $EA
    db $EB                                        ; $733A: $EB
    push de                                       ; $733B: $D5
    ld a, [$FFB5]                                 ; $733C: $FA $B5 $FF
    ld l, d                                       ; $733F: $6A
    ret nz                                        ; $7340: $C0

    nop                                           ; $7341: $00
    ldh a, [$FF80]                                ; $7342: $F0 $80
    ld a, b                                       ; $7344: $78
    and b                                         ; $7345: $A0
    ld a, [hl]                                    ; $7346: $7E
    and b                                         ; $7347: $A0
    cp e                                          ; $7348: $BB
    ld d, h                                       ; $7349: $54
    cp a                                          ; $734A: $BF
    ld d, l                                       ; $734B: $55
    cp e                                          ; $734C: $BB
    ld d, l                                       ; $734D: $55
    ld [hl], a                                    ; $734E: $77
    xor l                                         ; $734F: $AD
    ld a, e                                       ; $7350: $7B
    xor h                                         ; $7351: $AC
    push af                                       ; $7352: $F5
    ld l, [hl]                                    ; $7353: $6E
    db $EB                                        ; $7354: $EB
    ld e, l                                       ; $7355: $5D
    rst RST_30                                    ; $7356: $F7
    set 7, a                                      ; $7357: $CB $FF
    or b                                          ; $7359: $B0
    db $FC                                        ; $735A: $FC
    dec de                                        ; $735B: $1B
    ld hl, sp+$17                                 ; $735C: $F8 $17
    ld a, l                                       ; $735E: $7D
    ld [bc], a                                    ; $735F: $02
    ld [hl], b                                    ; $7360: $70
    nop                                           ; $7361: $00
    cp $30                                        ; $7362: $FE $30
    ccf                                           ; $7364: $3F
    call z, $D63F                                 ; $7365: $CC $3F $D6
    cpl                                           ; $7368: $2F
    sub $FF                                       ; $7369: $D6 $FF
    rst RST_10                                    ; $736B: $D7
    rst RST_28                                    ; $736C: $EF
    scf                                           ; $736D: $37
    rst RST_18                                    ; $736E: $DF
    xor a                                         ; $736F: $AF
    ld a, a                                       ; $7370: $7F
    xor [hl]                                      ; $7371: $AE
    rst RST_18                                    ; $7372: $DF
    xor [hl]                                      ; $7373: $AE
    rst RST_38                                    ; $7374: $FF
    ld e, $FE                                     ; $7375: $1E $FE
    ld e, l                                       ; $7377: $5D
    cp $BD                                        ; $7378: $FE $BD
    rst RST_38                                    ; $737A: $FF
    ld a, d                                       ; $737B: $7A
    rst RST_38                                    ; $737C: $FF
    dec [hl]                                      ; $737D: $35
    ld a, a                                       ; $737E: $7F
    ld a, [bc]                                    ; $737F: $0A
    add b                                         ; $7380: $80
    nop                                           ; $7381: $00
    ret nz                                        ; $7382: $C0

    add b                                         ; $7383: $80
    ld h, b                                       ; $7384: $60
    add b                                         ; $7385: $80
    or b                                          ; $7386: $B0
    ld b, b                                       ; $7387: $40
    or b                                          ; $7388: $B0
    ld b, b                                       ; $7389: $40
    or b                                          ; $738A: $B0
    ld b, b                                       ; $738B: $40
    ld d, b                                       ; $738C: $50
    and b                                         ; $738D: $A0
    ld d, b                                       ; $738E: $50
    and b                                         ; $738F: $A0
    ld d, b                                       ; $7390: $50
    and b                                         ; $7391: $A0
    and b                                         ; $7392: $A0
    ld b, b                                       ; $7393: $40
    and b                                         ; $7394: $A0
    ld b, b                                       ; $7395: $40
    ld b, b                                       ; $7396: $40
    add b                                         ; $7397: $80
    ret nz                                        ; $7398: $C0

    nop                                           ; $7399: $00
    add b                                         ; $739A: $80
    nop                                           ; $739B: $00
    nop                                           ; $739C: $00
    nop                                           ; $739D: $00
    nop                                           ; $739E: $00
    nop                                           ; $739F: $00
    rst RST_38                                    ; $73A0: $FF
    dec d                                         ; $73A1: $15
    rra                                           ; $73A2: $1F
    ld [bc], a                                    ; $73A3: $02
    inc bc                                        ; $73A4: $03
    nop                                           ; $73A5: $00
    nop                                           ; $73A6: $00

jr_01E_73A7:
    nop                                           ; $73A7: $00
    nop                                           ; $73A8: $00
    nop                                           ; $73A9: $00
    nop                                           ; $73AA: $00
    nop                                           ; $73AB: $00
    nop                                           ; $73AC: $00
    nop                                           ; $73AD: $00
    nop                                           ; $73AE: $00
    nop                                           ; $73AF: $00
    nop                                           ; $73B0: $00
    nop                                           ; $73B1: $00
    nop                                           ; $73B2: $00
    nop                                           ; $73B3: $00
    ld bc, $0100                                  ; $73B4: $01 $00 $01
    nop                                           ; $73B7: $00
    ld [bc], a                                    ; $73B8: $02
    ld bc, $0102                                  ; $73B9: $01 $02 $01
    inc bc                                        ; $73BC: $03
    nop                                           ; $73BD: $00
    inc bc                                        ; $73BE: $03
    ld bc, $2077                                  ; $73BF: $01 $77 $20
    ld [hl], c                                    ; $73C2: $71
    jr nz, jr_01E_7435                            ; $73C3: $20 $70

    jr nz, jr_01E_73A7                            ; $73C5: $20 $E0

    ld b, b                                       ; $73C7: $40
    push af                                       ; $73C8: $F5
    ld b, b                                       ; $73C9: $40
    xor $55                                       ; $73CA: $EE $55
    rst RST_38                                    ; $73CC: $FF
    ld h, $3F                                     ; $73CD: $26 $3F
    add $DF                                       ; $73CF: $C6 $DF
    ld hl, $946F                                  ; $73D1: $21 $6F $94
    rst RST_38                                    ; $73D4: $FF
    ld c, a                                       ; $73D5: $4F
    rst RST_38                                    ; $73D6: $FF
    ld c, a                                       ; $73D7: $4F
    rst RST_38                                    ; $73D8: $FF
    ld b, [hl]                                    ; $73D9: $46
    ld d, a                                       ; $73DA: $57
    jr c, jr_01E_7434                             ; $73DB: $38 $57

    inc a                                         ; $73DD: $3C
    ccf                                           ; $73DE: $3F
    jr jr_01E_73F0                                ; $73DF: $18 $0F

    nop                                           ; $73E1: $00
    nop                                           ; $73E2: $00
    nop                                           ; $73E3: $00
    add b                                         ; $73E4: $80
    nop                                           ; $73E5: $00
    nop                                           ; $73E6: $00
    nop                                           ; $73E7: $00
    add b                                         ; $73E8: $80
    nop                                           ; $73E9: $00
    ret nz                                        ; $73EA: $C0

    add b                                         ; $73EB: $80
    ret nz                                        ; $73EC: $C0

jr_01E_73ED:
    add b                                         ; $73ED: $80
    add b                                         ; $73EE: $80
    nop                                           ; $73EF: $00

jr_01E_73F0:
    add b                                         ; $73F0: $80
    nop                                           ; $73F1: $00
    add b                                         ; $73F2: $80
    nop                                           ; $73F3: $00
    nop                                           ; $73F4: $00
    nop                                           ; $73F5: $00
    add b                                         ; $73F6: $80
    nop                                           ; $73F7: $00
    ret nz                                        ; $73F8: $C0

    nop                                           ; $73F9: $00
    ret nz                                        ; $73FA: $C0

    nop                                           ; $73FB: $00
    ldh [rP1], a                                  ; $73FC: $E0 $00
    jr nz, @-$3E                                  ; $73FE: $20 $C0

    ld a, a                                       ; $7400: $7F
    jr z, jr_01E_73ED                             ; $7401: $28 $EA

    ld b, a                                       ; $7403: $47
    ld [$E747], a                                 ; $7404: $EA $47 $E7
    ld b, e                                       ; $7407: $43
    rst RST_08                                    ; $7408: $CF
    nop                                           ; $7409: $00
    inc d                                         ; $740A: $14
    dec bc                                        ; $740B: $0B
    inc d                                         ; $740C: $14
    dec bc                                        ; $740D: $0B
    dec a                                         ; $740E: $3D
    ld [de], a                                    ; $740F: $12
    ccf                                           ; $7410: $3F
    db $10                                        ; $7411: $10
    ccf                                           ; $7412: $3F
    ld d, $1F                                     ; $7413: $16 $1F
    ld b, $1F                                     ; $7415: $06 $1F
    ld [bc], a                                    ; $7417: $02
    ccf                                           ; $7418: $3F
    jr jr_01E_749A                                ; $7419: $18 $7F

    ld [hl], $7F                                  ; $741B: $36 $7F
    ld b, $0F                                     ; $741D: $06 $0F
    nop                                           ; $741F: $00
    cp b                                          ; $7420: $B8
    nop                                           ; $7421: $00
    sbc h                                         ; $7422: $9C
    nop                                           ; $7423: $00
    and h                                         ; $7424: $A4
    jr jr_01E_744B                                ; $7425: $18 $24

    jr jr_01E_7441                                ; $7427: $18 $18

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

jr_01E_7434:
    nop                                           ; $7434: $00

jr_01E_7435:
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
    ld a, d                                       ; $7440: $7A

jr_01E_7441:
    dec b                                         ; $7441: $05
    ld [$1D07], sp                                ; $7442: $08 $07 $1D
    ld a, [bc]                                    ; $7445: $0A
    ccf                                           ; $7446: $3F
    db $10                                        ; $7447: $10
    dec [hl]                                      ; $7448: $35
    rrca                                          ; $7449: $0F
    dec d                                         ; $744A: $15

jr_01E_744B:
    rrca                                          ; $744B: $0F
    rrca                                          ; $744C: $0F
    rlca                                          ; $744D: $07
    ld a, a                                       ; $744E: $7F
    nop                                           ; $744F: $00
    pop af                                        ; $7450: $F1
    ld l, [hl]                                    ; $7451: $6E
    ld sp, hl                                     ; $7452: $F9
    halt                                          ; $7453: $76
    ld a, [hl]                                    ; $7454: $7E
    ld sp, $0C3F                                  ; $7455: $31 $3F $0C
    rra                                           ; $7458: $1F
    inc c                                         ; $7459: $0C
    ld c, $04                                     ; $745A: $0E $04
    ld c, $04                                     ; $745C: $0E $04
    ld b, $00                                     ; $745E: $06 $00
    nop                                           ; $7460: $00
    nop                                           ; $7461: $00
    nop                                           ; $7462: $00
    nop                                           ; $7463: $00
    nop                                           ; $7464: $00
    nop                                           ; $7465: $00
    nop                                           ; $7466: $00
    nop                                           ; $7467: $00
    nop                                           ; $7468: $00
    nop                                           ; $7469: $00
    nop                                           ; $746A: $00
    nop                                           ; $746B: $00
    nop                                           ; $746C: $00
    nop                                           ; $746D: $00
    nop                                           ; $746E: $00
    nop                                           ; $746F: $00
    nop                                           ; $7470: $00
    nop                                           ; $7471: $00
    nop                                           ; $7472: $00
    nop                                           ; $7473: $00
    nop                                           ; $7474: $00
    nop                                           ; $7475: $00
    rlca                                          ; $7476: $07
    nop                                           ; $7477: $00
    dec de                                        ; $7478: $1B
    dec b                                         ; $7479: $05
    ccf                                           ; $747A: $3F
    ld de, $357B                                  ; $747B: $11 $7B $35
    ld [hl], e                                    ; $747E: $73
    inc l                                         ; $747F: $2C
    ldh [rP1], a                                  ; $7480: $E0 $00
    ldh a, [$FF60]                                ; $7482: $F0 $60
    ld a, b                                       ; $7484: $78
    jr nc, @-$42                                  ; $7485: $30 $BC

    ld e, b                                       ; $7487: $58
    cp $80                                        ; $7488: $FE $80
    rst RST_20                                    ; $748A: $E7
    sbc b                                         ; $748B: $98
    ld sp, hl                                     ; $748C: $F9
    ld h, [hl]                                    ; $748D: $66
    di                                            ; $748E: $F3

jr_01E_748F:
    ld c, l                                       ; $748F: $4D
    db $FD                                        ; $7490: $FD
    jr nc, jr_01E_748F                            ; $7491: $30 $FC

    ld a, b                                       ; $7493: $78
    ld hl, sp+$70                                 ; $7494: $F8 $70
    ld hl, sp+$70                                 ; $7496: $F8 $70
    pop af                                        ; $7498: $F1
    and b                                         ; $7499: $A0

jr_01E_749A:
    ld sp, hl                                     ; $749A: $F9
    nop                                           ; $749B: $00
    ld a, a                                       ; $749C: $7F
    add c                                         ; $749D: $81
    ld d, d                                       ; $749E: $52
    adc l                                         ; $749F: $8D
    sub e                                         ; $74A0: $93
    inc c                                         ; $74A1: $0C
    rst RST_08                                    ; $74A2: $CF
    inc bc                                        ; $74A3: $03
    rst RST_28                                    ; $74A4: $EF
    jp $C4EF                                      ; $74A5: $C3 $EF $C4


    cp $43                                        ; $74A8: $FE $43
    ld a, a                                       ; $74AA: $7F
    inc [hl]                                      ; $74AB: $34
    dec a                                         ; $74AC: $3D
    dec de                                        ; $74AD: $1B
    rra                                           ; $74AE: $1F
    ld [$030C], sp                                ; $74AF: $08 $0C $03
    inc bc                                        ; $74B2: $03
    nop                                           ; $74B3: $00
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
    ld bc, $0100                                  ; $74C0: $01 $00 $01
    nop                                           ; $74C3: $00
    inc bc                                        ; $74C4: $03
    nop                                           ; $74C5: $00
    inc bc                                        ; $74C6: $03
    ld bc, $0207                                  ; $74C7: $01 $07 $02
    rlca                                          ; $74CA: $07
    ld bc, $060F                                  ; $74CB: $01 $0F $06
    rrca                                          ; $74CE: $0F
    inc bc                                        ; $74CF: $03
    rla                                           ; $74D0: $17
    inc c                                         ; $74D1: $0C
    ld a, [de]                                    ; $74D2: $1A
    rrca                                          ; $74D3: $0F
    or a                                          ; $74D4: $B7
    inc e                                         ; $74D5: $1C
    rst RST_28                                    ; $74D6: $EF
    sbc e                                         ; $74D7: $9B
    rst RST_38                                    ; $74D8: $FF
    rst RST_00                                    ; $74D9: $C7
    rst RST_38                                    ; $74DA: $FF
    ld a, e                                       ; $74DB: $7B
    rst RST_38                                    ; $74DC: $FF
    dec a                                         ; $74DD: $3D
    rst RST_38                                    ; $74DE: $FF
    dec a                                         ; $74DF: $3D
    ld a, a                                       ; $74E0: $7F
    db $DD                                        ; $74E1: $DD
    cp a                                          ; $74E2: $BF
    jp $DF7F                                      ; $74E3: $C3 $7F $DF


    cp a                                          ; $74E6: $BF
    sbc $5F                                       ; $74E7: $DE $5F
    and $EE                                       ; $74E9: $E6 $EE
    add hl, sp                                    ; $74EB: $39
    push af                                       ; $74EC: $F5
    rst RST_08                                    ; $74ED: $CF
    cp $F3                                        ; $74EE: $FE $F3
    rst RST_38                                    ; $74F0: $FF
    inc a                                         ; $74F1: $3C
    cp a                                          ; $74F2: $BF
    rst RST_08                                    ; $74F3: $CF
    rst RST_08                                    ; $74F4: $CF
    inc sp                                        ; $74F5: $33
    inc sp                                        ; $74F6: $33
    call z, $33CD                                 ; $74F7: $CC $CD $33
    inc sp                                        ; $74FA: $33
    call z, Call_000_33CF                         ; $74FB: $CC $CF $33
    scf                                           ; $74FE: $37
    inc c                                         ; $74FF: $0C
    add b                                         ; $7500: $80
    nop                                           ; $7501: $00
    ldh [$FF80], a                                ; $7502: $E0 $80
    ret c                                         ; $7504: $D8

    ld h, b                                       ; $7505: $60
    or $98                                        ; $7506: $F6 $98
    cp c                                          ; $7508: $B9
    ld h, [hl]                                    ; $7509: $66
    ld h, [hl]                                    ; $750A: $66
    sbc c                                         ; $750B: $99
    reti                                          ; $750C: $D9


    ld h, [hl]                                    ; $750D: $66
    and $99                                       ; $750E: $E6 $99
    ld sp, hl                                     ; $7510: $F9
    and $FE                                       ; $7511: $E6 $FE
    add hl, sp                                    ; $7513: $39
    ld a, a                                       ; $7514: $7F
    adc $EF                                       ; $7515: $CE $EF
    inc sp                                        ; $7517: $33
    rst RST_30                                    ; $7518: $F7
    call c, $DEEB                                 ; $7519: $DC $EB $DE
    rst RST_30                                    ; $751C: $F7
    db $DD                                        ; $751D: $DD
    rst RST_28                                    ; $751E: $EF
    cp e                                          ; $751F: $BB
    call c, $BFB7                                 ; $7520: $DC $B7 $BF
    ld h, d                                       ; $7523: $62
    db $E3                                        ; $7524: $E3
    ld e, h                                       ; $7525: $5C
    and d                                         ; $7526: $A2
    call c, $CC72                                 ; $7527: $DC $72 $CC
    cp h                                          ; $752A: $BC
    ret nc                                        ; $752B: $D0

    ld a, h                                       ; $752C: $7C
    ret c                                         ; $752D: $D8

    ret z                                         ; $752E: $C8

    or b                                          ; $752F: $B0
    ld a, b                                       ; $7530: $78
    or b                                          ; $7531: $B0
    ldh a, [rNR41]                                ; $7532: $F0 $20
    ldh a, [$FFC0]                                ; $7534: $F0 $C0
    ldh [rLCDC], a                                ; $7536: $E0 $40
    ldh [$FF80], a                                ; $7538: $E0 $80
    ret nz                                        ; $753A: $C0

    nop                                           ; $753B: $00
    ret nz                                        ; $753C: $C0

    add b                                         ; $753D: $80
    add b                                         ; $753E: $80
    nop                                           ; $753F: $00
    nop                                           ; $7540: $00
    nop                                           ; $7541: $00
    add b                                         ; $7542: $80
    nop                                           ; $7543: $00
    ld h, b                                       ; $7544: $60
    add b                                         ; $7545: $80
    ld hl, sp+$60                                 ; $7546: $F8 $60
    ld a, b                                       ; $7548: $78
    sub b                                         ; $7549: $90
    ld hl, sp+$60                                 ; $754A: $F8 $60
    ldh a, [$FF80]                                ; $754C: $F0 $80
    ldh a, [$FF60]                                ; $754E: $F0 $60
    ldh [$FF80], a                                ; $7550: $E0 $80
    ldh [$FFC0], a                                ; $7552: $E0 $C0
    ret nz                                        ; $7554: $C0

    nop                                           ; $7555: $00
    ret nz                                        ; $7556: $C0

    add b                                         ; $7557: $80
    add b                                         ; $7558: $80
    nop                                           ; $7559: $00
    add b                                         ; $755A: $80
    nop                                           ; $755B: $00
    nop                                           ; $755C: $00
    nop                                           ; $755D: $00
    nop                                           ; $755E: $00
    nop                                           ; $755F: $00
    ld a, h                                       ; $7560: $7C
    jr jr_01E_757B                                ; $7561: $18 $18

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

jr_01E_757B:
    nop                                           ; $757B: $00
    nop                                           ; $757C: $00
    nop                                           ; $757D: $00
    nop                                           ; $757E: $00
    nop                                           ; $757F: $00
    rst RST_38                                    ; $7580: $FF
    nop                                           ; $7581: $00
    ld bc, $0EFE                                  ; $7582: $01 $FE $0E
    ldh a, [$FF30]                                ; $7585: $F0 $30
    ret nz                                        ; $7587: $C0

    ret nz                                        ; $7588: $C0

    nop                                           ; $7589: $00
    nop                                           ; $758A: $00
    nop                                           ; $758B: $00
    ldh a, [rP1]                                  ; $758C: $F0 $00
    db $10                                        ; $758E: $10
    ldh [$FF60], a                                ; $758F: $E0 $60
    add b                                         ; $7591: $80
    add b                                         ; $7592: $80
    nop                                           ; $7593: $00
    ld b, b                                       ; $7594: $40
    add b                                         ; $7595: $80
    ret nz                                        ; $7596: $C0

    nop                                           ; $7597: $00
    nop                                           ; $7598: $00
    nop                                           ; $7599: $00
    ret nz                                        ; $759A: $C0

    nop                                           ; $759B: $00
    ld b, b                                       ; $759C: $40
    add b                                         ; $759D: $80
    add b                                         ; $759E: $80
    nop                                           ; $759F: $00
    rra                                           ; $75A0: $1F
    nop                                           ; $75A1: $00
    ldh [$FF1F], a                                ; $75A2: $E0 $1F
    nop                                           ; $75A4: $00
    rst RST_38                                    ; $75A5: $FF
    ld hl, sp-$01                                 ; $75A6: $F8 $FF
    ldh [rIE], a                                  ; $75A8: $E0 $FF
    jp $0FFC                                      ; $75AA: $C3 $FC $0F


    ldh a, [$FF38]                                ; $75AD: $F0 $38
    rst RST_00                                    ; $75AF: $C7
    ld b, b                                       ; $75B0: $40
    cp a                                          ; $75B1: $BF
    pop hl                                        ; $75B2: $E1
    cp $80                                        ; $75B3: $FE $80
    rst RST_38                                    ; $75B5: $FF
    ld bc, $C6FE                                  ; $75B6: $01 $FE $C6
    ld hl, sp-$61                                 ; $75B9: $F8 $9F
    ldh [$FF30], a                                ; $75BB: $E0 $30
    rst RST_08                                    ; $75BD: $CF
    ld b, c                                       ; $75BE: $41
    cp [hl]                                       ; $75BF: $BE
    ld bc, $1E00                                  ; $75C0: $01 $00 $1E
    ld bc, $1F60                                  ; $75C3: $01 $60 $1F
    sbc a                                         ; $75C6: $9F
    ld a, a                                       ; $75C7: $7F
    rst RST_38                                    ; $75C8: $FF
    rst RST_38                                    ; $75C9: $FF
    rst RST_38                                    ; $75CA: $FF
    rst RST_38                                    ; $75CB: $FF
    cp $FF                                        ; $75CC: $FE $FF
    db $FC                                        ; $75CE: $FC
    rst RST_38                                    ; $75CF: $FF
    ld hl, sp-$01                                 ; $75D0: $F8 $FF
    rst RST_30                                    ; $75D2: $F7
    rst RST_38                                    ; $75D3: $FF
    rst RST_38                                    ; $75D4: $FF
    rst RST_38                                    ; $75D5: $FF
    rst RST_38                                    ; $75D6: $FF
    rst RST_38                                    ; $75D7: $FF
    rst RST_38                                    ; $75D8: $FF
    rst RST_38                                    ; $75D9: $FF
    rst RST_38                                    ; $75DA: $FF
    rst RST_38                                    ; $75DB: $FF
    cp $FF                                        ; $75DC: $FE $FF
    db $FC                                        ; $75DE: $FC
    rst RST_38                                    ; $75DF: $FF
    inc bc                                        ; $75E0: $03
    nop                                           ; $75E1: $00
    dec c                                         ; $75E2: $0D
    ld [bc], a                                    ; $75E3: $02
    ld a, [de]                                    ; $75E4: $1A
    dec c                                         ; $75E5: $0D
    scf                                           ; $75E6: $37
    dec de                                        ; $75E7: $1B
    ld l, a                                       ; $75E8: $6F
    ccf                                           ; $75E9: $3F
    rst RST_38                                    ; $75EA: $FF
    ld a, a                                       ; $75EB: $7F
    rst RST_38                                    ; $75EC: $FF
    rst RST_38                                    ; $75ED: $FF
    rst RST_38                                    ; $75EE: $FF
    rst RST_38                                    ; $75EF: $FF
    rst RST_38                                    ; $75F0: $FF
    rst RST_38                                    ; $75F1: $FF
    rst RST_38                                    ; $75F2: $FF
    rst RST_38                                    ; $75F3: $FF
    rst RST_38                                    ; $75F4: $FF

Jump_01E_75F5:
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
    ei                                            ; $75FF: $FB
    ld bc, $0300                                  ; $7600: $01 $00 $03
    ld bc, $0307                                  ; $7603: $01 $07 $03
    rlca                                          ; $7606: $07
    inc bc                                        ; $7607: $03
    rrca                                          ; $7608: $0F
    rlca                                          ; $7609: $07
    rrca                                          ; $760A: $0F
    rlca                                          ; $760B: $07
    rra                                           ; $760C: $1F
    rrca                                          ; $760D: $0F
    rra                                           ; $760E: $1F
    rrca                                          ; $760F: $0F
    ccf                                           ; $7610: $3F
    rra                                           ; $7611: $1F
    ccf                                           ; $7612: $3F
    rra                                           ; $7613: $1F
    ccf                                           ; $7614: $3F
    rra                                           ; $7615: $1F
    ld a, a                                       ; $7616: $7F
    ccf                                           ; $7617: $3F
    ld a, a                                       ; $7618: $7F
    ccf                                           ; $7619: $3F
    ld a, a                                       ; $761A: $7F
    add hl, sp                                    ; $761B: $39
    ld a, a                                       ; $761C: $7F
    ld [hl-], a                                   ; $761D: $32
    or $60                                        ; $761E: $F6 $60
    ld b, b                                       ; $7620: $40
    nop                                           ; $7621: $00
    ldh [rLCDC], a                                ; $7622: $E0 $40
    ldh a, [$FFE0]                                ; $7624: $F0 $E0
    or $E0                                        ; $7626: $F6 $E0
    ld sp, hl                                     ; $7628: $F9
    add $D9                                       ; $7629: $C6 $D9
    ld b, $7E                                     ; $762B: $06 $7E
    nop                                           ; $762D: $00
    db $F4                                        ; $762E: $F4
    ld [$00F8], sp                                ; $762F: $08 $F8 $00
    ldh [rP1], a                                  ; $7632: $E0 $00
    ldh [$FF80], a                                ; $7634: $E0 $80
    ldh [$FFC0], a                                ; $7636: $E0 $C0
    ldh [$FF80], a                                ; $7638: $E0 $80
    ret nc                                        ; $763A: $D0

    jr nz, @-$6E                                  ; $763B: $20 $90

    ld h, b                                       ; $763D: $60
    and b                                         ; $763E: $A0
    ld b, b                                       ; $763F: $40
    ld [bc], a                                    ; $7640: $02
    db $FC                                        ; $7641: $FC
    ld sp, hl                                     ; $7642: $F9
    cp $E7                                        ; $7643: $FE $E7
    ld hl, sp-$28                                 ; $7645: $F8 $D8
    ldh [$FFE1], a                                ; $7647: $E0 $E1
    add b                                         ; $7649: $80
    rst RST_08                                    ; $764A: $CF
    ld bc, $4BB7                                  ; $764B: $01 $B7 $4B
    ld a, a                                       ; $764E: $7F
    inc de                                        ; $764F: $13
    rst RST_38                                    ; $7650: $FF
    ld e, e                                       ; $7651: $5B
    rst RST_38                                    ; $7652: $FF
    call c, $CCFF                                 ; $7653: $DC $FF $CC
    db $ED                                        ; $7656: $ED
    ld [de], a                                    ; $7657: $12
    dec [hl]                                      ; $7658: $35
    ld a, [bc]                                    ; $7659: $0A
    inc sp                                        ; $765A: $33
    dec c                                         ; $765B: $0D
    ld a, a                                       ; $765C: $7F
    ld hl, $1E7F                                  ; $765D: $21 $7F $1E
    ld sp, hl                                     ; $7660: $F9
    rst RST_38                                    ; $7661: $FF
    rst RST_30                                    ; $7662: $F7
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
    cp $FE                                        ; $766D: $FE $FE
    db $FC                                        ; $766F: $FC
    db $FD                                        ; $7670: $FD
    ld a, b                                       ; $7671: $78
    ld sp, hl                                     ; $7672: $F9
    ldh a, [$FFF0]                                ; $7673: $F0 $F0
    ldh [$FFE6], a                                ; $7675: $E0 $E6
    ret nz                                        ; $7677: $C0

    adc $84                                       ; $7678: $CE $84
    call c, $B488                                 ; $767A: $DC $88 $B4
    jr @-$4A                                      ; $767D: $18 $B4

    jr @+$01                                      ; $767F: $18 $FF

    rst RST_20                                    ; $7681: $E7
    rst RST_38                                    ; $7682: $FF
    rst RST_08                                    ; $7683: $CF
    rst RST_38                                    ; $7684: $FF
    sbc a                                         ; $7685: $9F
    cp a                                          ; $7686: $BF
    rra                                           ; $7687: $1F
    ld a, a                                       ; $7688: $7F
    ccf                                           ; $7689: $3F
    ld a, a                                       ; $768A: $7F
    dec a                                         ; $768B: $3D
    rst RST_38                                    ; $768C: $FF
    ld [hl], e                                    ; $768D: $73
    rst RST_30                                    ; $768E: $F7
    ld h, d                                       ; $768F: $62
    rst RST_28                                    ; $7690: $EF
    call nz, $80CD                                ; $7691: $C4 $CD $80
    add e                                         ; $7694: $83
    ld bc, $0103                                  ; $7695: $01 $03 $01
    inc bc                                        ; $7698: $03
    ld bc, $0103                                  ; $7699: $01 $03 $01
    inc bc                                        ; $769C: $03
    nop                                           ; $769D: $00
    nop                                           ; $769E: $00
    nop                                           ; $769F: $00
    ldh [rLCDC], a                                ; $76A0: $E0 $40
    ldh [rLCDC], a                                ; $76A2: $E0 $40
    pop bc                                        ; $76A4: $C1
    nop                                           ; $76A5: $00
    ld bc, $0300                                  ; $76A6: $01 $00 $03
    ld bc, $0003                                  ; $76A9: $01 $03 $00
    nop                                           ; $76AC: $00
    nop                                           ; $76AD: $00
    nop                                           ; $76AE: $00
    nop                                           ; $76AF: $00
    nop                                           ; $76B0: $00
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
    nop                                           ; $76BC: $00
    nop                                           ; $76BD: $00
    nop                                           ; $76BE: $00
    nop                                           ; $76BF: $00
    ld h, l                                       ; $76C0: $65
    jr c, jr_01E_7729                             ; $76C1: $38 $66

    add hl, sp                                    ; $76C3: $39
    ld l, [hl]                                    ; $76C4: $6E
    dec a                                         ; $76C5: $3D
    ld a, a                                       ; $76C6: $7F
    nop                                           ; $76C7: $00
    ld bc, $0100                                  ; $76C8: $01 $00 $01
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
    cp $3D                                        ; $76E0: $FE $3D
    cp a                                          ; $76E2: $BF
    ld e, h                                       ; $76E3: $5C
    ld a, l                                       ; $76E4: $7D
    add d                                         ; $76E5: $82
    rst RST_38                                    ; $76E6: $FF
    add hl, de                                    ; $76E7: $19
    sbc e                                         ; $76E8: $9B
    ld h, c                                       ; $76E9: $61
    rst RST_30                                    ; $76EA: $F7
    add c                                         ; $76EB: $81
    rst RST_28                                    ; $76EC: $EF
    ld b, $1F                                     ; $76ED: $06 $1F
    inc c                                         ; $76EF: $0C
    inc e                                         ; $76F0: $1C
    nop                                           ; $76F1: $00
    nop                                           ; $76F2: $00
    nop                                           ; $76F3: $00
    nop                                           ; $76F4: $00
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
    ret nz                                        ; $7700: $C0

    add b                                         ; $7701: $80
    ret nz                                        ; $7702: $C0

    add b                                         ; $7703: $80
    add b                                         ; $7704: $80
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
    nop                                           ; $7716: $00
    nop                                           ; $7717: $00
    nop                                           ; $7718: $00
    nop                                           ; $7719: $00
    nop                                           ; $771A: $00
    nop                                           ; $771B: $00
    nop                                           ; $771C: $00
    nop                                           ; $771D: $00
    nop                                           ; $771E: $00
    nop                                           ; $771F: $00
    ld a, a                                       ; $7720: $7F
    ccf                                           ; $7721: $3F
    ld a, a                                       ; $7722: $7F
    ccf                                           ; $7723: $3F
    ld a, a                                       ; $7724: $7F
    ccf                                           ; $7725: $3F
    ld a, a                                       ; $7726: $7F
    ccf                                           ; $7727: $3F
    ld a, a                                       ; $7728: $7F

jr_01E_7729:
    ccf                                           ; $7729: $3F
    rst RST_38                                    ; $772A: $FF
    ld a, a                                       ; $772B: $7F

jr_01E_772C:
    rst RST_38                                    ; $772C: $FF
    ld a, a                                       ; $772D: $7F

jr_01E_772E:
    rst RST_38                                    ; $772E: $FF
    ld a, a                                       ; $772F: $7F
    rst RST_38                                    ; $7730: $FF
    ld a, a                                       ; $7731: $7F
    rst RST_38                                    ; $7732: $FF
    ld a, a                                       ; $7733: $7F
    rst RST_38                                    ; $7734: $FF
    ld a, a                                       ; $7735: $7F
    rst RST_38                                    ; $7736: $FF
    ld a, a                                       ; $7737: $7F
    rst RST_38                                    ; $7738: $FF
    ld a, a                                       ; $7739: $7F
    rst RST_38                                    ; $773A: $FF
    ld a, a                                       ; $773B: $7F
    rst RST_38                                    ; $773C: $FF
    ld a, a                                       ; $773D: $7F
    rst RST_38                                    ; $773E: $FF
    nop                                           ; $773F: $00
    cp $FF                                        ; $7740: $FE $FF
    db $FC                                        ; $7742: $FC
    rst RST_38                                    ; $7743: $FF
    db $FC                                        ; $7744: $FC
    rst RST_38                                    ; $7745: $FF
    db $FC                                        ; $7746: $FC
    rst RST_38                                    ; $7747: $FF
    db $FC                                        ; $7748: $FC
    rst RST_38                                    ; $7749: $FF
    db $FD                                        ; $774A: $FD
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
    nop                                           ; $775F: $00
    ld d, b                                       ; $7760: $50
    and b                                         ; $7761: $A0
    db $10                                        ; $7762: $10
    ldh [rNR10], a                                ; $7763: $E0 $10
    ldh [rNR41], a                                ; $7765: $E0 $20
    ret nz                                        ; $7767: $C0

    and b                                         ; $7768: $A0
    ret nz                                        ; $7769: $C0

    jr nz, jr_01E_772C                            ; $776A: $20 $C0

    jr nz, jr_01E_772E                            ; $776C: $20 $C0

    ld b, b                                       ; $776E: $40
    add b                                         ; $776F: $80
    ld b, b                                       ; $7770: $40
    add b                                         ; $7771: $80
    ld b, b                                       ; $7772: $40
    add b                                         ; $7773: $80
    ld b, b                                       ; $7774: $40
    add b                                         ; $7775: $80
    add b                                         ; $7776: $80
    nop                                           ; $7777: $00
    add b                                         ; $7778: $80
    nop                                           ; $7779: $00
    add b                                         ; $777A: $80
    nop                                           ; $777B: $00
    add b                                         ; $777C: $80
    nop                                           ; $777D: $00
    add b                                         ; $777E: $80
    nop                                           ; $777F: $00
    add hl, bc                                    ; $7780: $09
    rlca                                          ; $7781: $07
    add hl, bc                                    ; $7782: $09
    rlca                                          ; $7783: $07
    inc de                                        ; $7784: $13
    rrca                                          ; $7785: $0F
    inc de                                        ; $7786: $13
    rrca                                          ; $7787: $0F
    rla                                           ; $7788: $17
    rrca                                          ; $7789: $0F
    daa                                           ; $778A: $27
    rra                                           ; $778B: $1F
    cpl                                           ; $778C: $2F
    rra                                           ; $778D: $1F
    cpl                                           ; $778E: $2F
    rra                                           ; $778F: $1F
    ld e, a                                       ; $7790: $5F
    ccf                                           ; $7791: $3F
    ld e, a                                       ; $7792: $5F
    ccf                                           ; $7793: $3F
    ld e, a                                       ; $7794: $5F
    ccf                                           ; $7795: $3F
    ld a, a                                       ; $7796: $7F
    ccf                                           ; $7797: $3F
    cp a                                          ; $7798: $BF
    ld a, a                                       ; $7799: $7F
    cp a                                          ; $779A: $BF
    ld a, a                                       ; $779B: $7F

jr_01E_779C:
    rst RST_38                                    ; $779C: $FF
    ld a, a                                       ; $779D: $7F
    rst RST_38                                    ; $779E: $FF
    ld a, a                                       ; $779F: $7F
    xor b                                         ; $77A0: $A8
    rst RST_10                                    ; $77A1: $D7
    add b                                         ; $77A2: $80
    rst RST_38                                    ; $77A3: $FF
    add c                                         ; $77A4: $81
    cp $89                                        ; $77A5: $FE $89
    cp $91                                        ; $77A7: $FE $91
    cp $B2                                        ; $77A9: $FE $B2
    db $FC                                        ; $77AB: $FC
    ldh a, [c]                                    ; $77AC: $F2
    db $FC                                        ; $77AD: $FC
    di                                            ; $77AE: $F3
    db $FC                                        ; $77AF: $FC
    and $F9                                       ; $77B0: $E6 $F9
    db $E4                                        ; $77B2: $E4
    ei                                            ; $77B3: $FB
    db $E4                                        ; $77B4: $E4
    ei                                            ; $77B5: $FB
    ldh [rIE], a                                  ; $77B6: $E0 $FF

jr_01E_77B8:
    call nz, $C9FF                                ; $77B8: $C4 $FF $C9
    cp $D9                                        ; $77BB: $FE $D9
    cp $F9                                        ; $77BD: $FE $F9
    cp $81                                        ; $77BF: $FE $81
    nop                                           ; $77C1: $00
    add e                                         ; $77C2: $83
    ld bc, $0307                                  ; $77C3: $01 $07 $03
    rlca                                          ; $77C6: $07
    inc bc                                        ; $77C7: $03
    inc bc                                        ; $77C8: $03
    nop                                           ; $77C9: $00
    ld h, b                                       ; $77CA: $60
    nop                                           ; $77CB: $00
    and b                                         ; $77CC: $A0
    ld b, b                                       ; $77CD: $40
    ld b, c                                       ; $77CE: $41
    add b                                         ; $77CF: $80
    ld b, c                                       ; $77D0: $41
    add b                                         ; $77D1: $80
    ld b, e                                       ; $77D2: $43
    add b                                         ; $77D3: $80
    add [hl]                                      ; $77D4: $86
    ld bc, $06F9                                  ; $77D5: $01 $F9 $06
    ei                                            ; $77D8: $FB
    db $F4                                        ; $77D9: $F4
    cp $01                                        ; $77DA: $FE $01
    ld h, a                                       ; $77DC: $67
    ld [bc], a                                    ; $77DD: $02
    and a                                         ; $77DE: $A7
    ld b, b                                       ; $77DF: $40
    db $FD                                        ; $77E0: $FD
    ld [hl], b                                    ; $77E1: $70
    rst RST_38                                    ; $77E2: $FF
    jr nc, jr_01E_779C                            ; $77E3: $30 $B7

    ld c, b                                       ; $77E5: $48
    rst RST_10                                    ; $77E6: $D7
    jr z, jr_01E_77B8                             ; $77E7: $28 $CF

    ld [hl], $FF                                  ; $77E9: $36 $FF
    add a                                         ; $77EB: $87
    rst RST_38                                    ; $77EC: $FF
    ld a, d                                       ; $77ED: $7A
    ei                                            ; $77EE: $FB
    db $F4                                        ; $77EF: $F4
    cp $71                                        ; $77F0: $FE $71
    or $09                                        ; $77F2: $F6 $09
    rst RST_38                                    ; $77F4: $FF
    ld h, [hl]                                    ; $77F5: $66
    ld l, a                                       ; $77F6: $6F
    add [hl]                                      ; $77F7: $86
    sbc $04                                       ; $77F8: $DE $04
    cp h                                          ; $77FA: $BC

jr_01E_77FB:
    jr jr_01E_7879                                ; $77FB: $18 $7C

    jr nc, @+$72                                  ; $77FD: $30 $70

    nop                                           ; $77FF: $00
    nop                                           ; $7800: $00
    nop                                           ; $7801: $00
    nop                                           ; $7802: $00
    nop                                           ; $7803: $00
    nop                                           ; $7804: $00
    nop                                           ; $7805: $00
    nop                                           ; $7806: $00
    nop                                           ; $7807: $00
    nop                                           ; $7808: $00
    nop                                           ; $7809: $00
    nop                                           ; $780A: $00
    nop                                           ; $780B: $00
    nop                                           ; $780C: $00
    nop                                           ; $780D: $00
    nop                                           ; $780E: $00
    nop                                           ; $780F: $00
    nop                                           ; $7810: $00

jr_01E_7811:
    nop                                           ; $7811: $00
    nop                                           ; $7812: $00
    nop                                           ; $7813: $00
    ld bc, $0700                                  ; $7814: $01 $00 $07
    ld bc, $073F                                  ; $7817: $01 $3F $07
    rst RST_18                                    ; $781A: $DF
    cpl                                           ; $781B: $2F
    rst RST_38                                    ; $781C: $FF
    ld c, a                                       ; $781D: $4F
    rst RST_38                                    ; $781E: $FF
    ld l, h                                       ; $781F: $6C
    nop                                           ; $7820: $00
    nop                                           ; $7821: $00
    add b                                         ; $7822: $80
    nop                                           ; $7823: $00
    ret nz                                        ; $7824: $C0

jr_01E_7825:
    add b                                         ; $7825: $80
    ret c                                         ; $7826: $D8

    add b                                         ; $7827: $80
    db $E4                                        ; $7828: $E4
    jr jr_01E_788F                                ; $7829: $18 $64

    jr jr_01E_7825                                ; $782B: $18 $F8

    nop                                           ; $782D: $00
    ret nc                                        ; $782E: $D0

    jr nz, jr_01E_7811                            ; $782F: $20 $E0

    nop                                           ; $7831: $00
    add b                                         ; $7832: $80
    nop                                           ; $7833: $00
    add b                                         ; $7834: $80
    nop                                           ; $7835: $00
    add b                                         ; $7836: $80
    nop                                           ; $7837: $00
    add b                                         ; $7838: $80
    nop                                           ; $7839: $00
    ld b, b                                       ; $783A: $40
    add b                                         ; $783B: $80
    ld b, b                                       ; $783C: $40
    add b                                         ; $783D: $80
    add b                                         ; $783E: $80
    nop                                           ; $783F: $00
    nop                                           ; $7840: $00
    nop                                           ; $7841: $00
    nop                                           ; $7842: $00
    nop                                           ; $7843: $00
    nop                                           ; $7844: $00
    nop                                           ; $7845: $00
    nop                                           ; $7846: $00
    nop                                           ; $7847: $00
    nop                                           ; $7848: $00
    nop                                           ; $7849: $00
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
    ld h, b                                       ; $7854: $60
    nop                                           ; $7855: $00
    and b                                         ; $7856: $A0
    ld b, b                                       ; $7857: $40
    ld b, b                                       ; $7858: $40
    add b                                         ; $7859: $80
    ld b, b                                       ; $785A: $40
    add b                                         ; $785B: $80
    ld b, e                                       ; $785C: $43
    add b                                         ; $785D: $80
    add d                                         ; $785E: $82
    ld bc, $0000                                  ; $785F: $01 $00 $00
    nop                                           ; $7862: $00
    nop                                           ; $7863: $00
    nop                                           ; $7864: $00
    nop                                           ; $7865: $00
    nop                                           ; $7866: $00
    nop                                           ; $7867: $00
    nop                                           ; $7868: $00
    nop                                           ; $7869: $00
    inc c                                         ; $786A: $0C
    nop                                           ; $786B: $00
    inc d                                         ; $786C: $14
    ld [$1028], sp                                ; $786D: $08 $28 $10
    ld c, b                                       ; $7870: $48
    jr nc, jr_01E_77FB                            ; $7871: $30 $88

    ld [hl], b                                    ; $7873: $70
    db $10                                        ; $7874: $10
    ldh [rNR10], a                                ; $7875: $E0 $10
    ldh [rNR11], a                                ; $7877: $E0 $11

jr_01E_7879:
    ldh [rNR43], a                                ; $7879: $E0 $22
    pop bc                                        ; $787B: $C1
    ld l, $C1                                     ; $787C: $2E $C1
    or h                                          ; $787E: $B4
    rlc b                                         ; $787F: $CB $00
    nop                                           ; $7881: $00
    nop                                           ; $7882: $00
    nop                                           ; $7883: $00
    nop                                           ; $7884: $00
    nop                                           ; $7885: $00
    nop                                           ; $7886: $00
    nop                                           ; $7887: $00
    nop                                           ; $7888: $00
    nop                                           ; $7889: $00
    nop                                           ; $788A: $00
    nop                                           ; $788B: $00
    nop                                           ; $788C: $00
    nop                                           ; $788D: $00
    nop                                           ; $788E: $00

jr_01E_788F:
    nop                                           ; $788F: $00
    nop                                           ; $7890: $00
    nop                                           ; $7891: $00
    nop                                           ; $7892: $00
    nop                                           ; $7893: $00
    ld bc, $0100                                  ; $7894: $01 $00 $01
    nop                                           ; $7897: $00
    ld [bc], a                                    ; $7898: $02
    ld bc, $0102                                  ; $7899: $01 $02 $01
    inc b                                         ; $789C: $04
    inc bc                                        ; $789D: $03
    inc b                                         ; $789E: $04
    inc bc                                        ; $789F: $03
    rst RST_38                                    ; $78A0: $FF
    nop                                           ; $78A1: $00
    ret nz                                        ; $78A2: $C0

    ld a, a                                       ; $78A3: $7F
    rst RST_38                                    ; $78A4: $FF
    nop                                           ; $78A5: $00
    ret nz                                        ; $78A6: $C0

    ld a, a                                       ; $78A7: $7F
    rst RST_38                                    ; $78A8: $FF
    nop                                           ; $78A9: $00
    ret nz                                        ; $78AA: $C0

    ld a, a                                       ; $78AB: $7F
    rst RST_38                                    ; $78AC: $FF
    nop                                           ; $78AD: $00
    ret nz                                        ; $78AE: $C0

    ld a, a                                       ; $78AF: $7F
    rst RST_38                                    ; $78B0: $FF
    nop                                           ; $78B1: $00
    rst RST_38                                    ; $78B2: $FF
    ld a, a                                       ; $78B3: $7F
    rst RST_38                                    ; $78B4: $FF
    ld a, a                                       ; $78B5: $7F
    ld a, a                                       ; $78B6: $7F
    nop                                           ; $78B7: $00
    ld d, l                                       ; $78B8: $55
    ccf                                           ; $78B9: $3F
    ld l, d                                       ; $78BA: $6A
    ccf                                           ; $78BB: $3F
    ld a, a                                       ; $78BC: $7F
    ld bc, $7EFF                                  ; $78BD: $01 $FF $7E
    add e                                         ; $78C0: $83
    ld a, a                                       ; $78C1: $7F
    add c                                         ; $78C2: $81
    ld a, [hl]                                    ; $78C3: $7E
    add c                                         ; $78C4: $81
    ld a, [hl]                                    ; $78C5: $7E
    add c                                         ; $78C6: $81
    ld a, [hl]                                    ; $78C7: $7E
    add e                                         ; $78C8: $83
    ld a, a                                       ; $78C9: $7F
    rst RST_38                                    ; $78CA: $FF
    ld a, [hl]                                    ; $78CB: $7E
    ld a, a                                       ; $78CC: $7F
    ld bc, $3F6A                                  ; $78CD: $01 $6A $3F
    ld d, l                                       ; $78D0: $55
    ccf                                           ; $78D1: $3F
    ld a, a                                       ; $78D2: $7F
    nop                                           ; $78D3: $00
    ld a, a                                       ; $78D4: $7F
    ccf                                           ; $78D5: $3F
    rst RST_38                                    ; $78D6: $FF
    ld a, a                                       ; $78D7: $7F
    rst RST_38                                    ; $78D8: $FF
    ld a, a                                       ; $78D9: $7F
    rst RST_38                                    ; $78DA: $FF
    nop                                           ; $78DB: $00
    ret nz                                        ; $78DC: $C0

    ld a, a                                       ; $78DD: $7F
    rst RST_38                                    ; $78DE: $FF
    nop                                           ; $78DF: $00
    ret nz                                        ; $78E0: $C0

    ld a, a                                       ; $78E1: $7F
    rst RST_38                                    ; $78E2: $FF
    nop                                           ; $78E3: $00
    ret nz                                        ; $78E4: $C0

    ld a, a                                       ; $78E5: $7F
    rst RST_38                                    ; $78E6: $FF
    nop                                           ; $78E7: $00
    ret nz                                        ; $78E8: $C0

    ld a, a                                       ; $78E9: $7F
    rst RST_38                                    ; $78EA: $FF
    nop                                           ; $78EB: $00
    nop                                           ; $78EC: $00
    nop                                           ; $78ED: $00
    nop                                           ; $78EE: $00
    nop                                           ; $78EF: $00
    nop                                           ; $78F0: $00
    nop                                           ; $78F1: $00
    nop                                           ; $78F2: $00
    nop                                           ; $78F3: $00
    nop                                           ; $78F4: $00
    nop                                           ; $78F5: $00
    nop                                           ; $78F6: $00
    nop                                           ; $78F7: $00
    nop                                           ; $78F8: $00
    nop                                           ; $78F9: $00
    nop                                           ; $78FA: $00
    nop                                           ; $78FB: $00
    nop                                           ; $78FC: $00
    nop                                           ; $78FD: $00
    nop                                           ; $78FE: $00
    nop                                           ; $78FF: $00
    rst RST_38                                    ; $7900: $FF
    nop                                           ; $7901: $00
    cpl                                           ; $7902: $2F
    cp $FF                                        ; $7903: $FE $FF
    nop                                           ; $7905: $00
    cpl                                           ; $7906: $2F
    cp $FF                                        ; $7907: $FE $FF
    nop                                           ; $7909: $00
    cpl                                           ; $790A: $2F
    cp $FF                                        ; $790B: $FE $FF
    nop                                           ; $790D: $00
    cpl                                           ; $790E: $2F
    cp $FF                                        ; $790F: $FE $FF
    nop                                           ; $7911: $00
    rst RST_38                                    ; $7912: $FF
    cp $FF                                        ; $7913: $FE $FF
    and $FE                                       ; $7915: $E6 $FE
    ld [$E85E], sp                                ; $7917: $08 $5E $E8
    or d                                          ; $791A: $B2
    db $EC                                        ; $791B: $EC
    ld e, [hl]                                    ; $791C: $5E
    db $EC                                        ; $791D: $EC
    cp $84                                        ; $791E: $FE $84
    cp $60                                        ; $7920: $FE $60
    db $E3                                        ; $7922: $E3
    call c, $DD23                                 ; $7923: $DC $23 $DD
    db $E3                                        ; $7926: $E3
    call c, Call_01E_60FE                         ; $7927: $DC $FE $60
    cp $84                                        ; $792A: $FE $84
    ld e, [hl]                                    ; $792C: $5E
    db $EC                                        ; $792D: $EC
    or d                                          ; $792E: $B2
    db $EC                                        ; $792F: $EC
    ld e, [hl]                                    ; $7930: $5E
    add sp, -$02                                  ; $7931: $E8 $FE
    ld [$E4FE], sp                                ; $7933: $08 $FE $E4
    rst RST_38                                    ; $7936: $FF
    cp $FF                                        ; $7937: $FE $FF
    cp $FF                                        ; $7939: $FE $FF
    nop                                           ; $793B: $00
    cpl                                           ; $793C: $2F
    cp $FF                                        ; $793D: $FE $FF
    nop                                           ; $793F: $00
    cpl                                           ; $7940: $2F
    cp $FF                                        ; $7941: $FE $FF
    nop                                           ; $7943: $00
    cpl                                           ; $7944: $2F
    cp $FF                                        ; $7945: $FE $FF
    nop                                           ; $7947: $00
    cpl                                           ; $7948: $2F
    cp $FF                                        ; $7949: $FE $FF
    nop                                           ; $794B: $00
    nop                                           ; $794C: $00

jr_01E_794D:
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
    ld bc, $0100                                  ; $7964: $01 $00 $01
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
    ld bc, $FE00                                  ; $7974: $01 $00 $FE
    ld bc, $FDFE                                  ; $7977: $01 $FE $FD
    rst RST_38                                    ; $797A: $FF
    nop                                           ; $797B: $00
    ld bc, $0100                                  ; $797C: $01 $00 $01
    nop                                           ; $797F: $00
    ld bc, $CF00                                  ; $7980: $01 $00 $CF
    ld bc, $4BB7                                  ; $7983: $01 $B7 $4B
    ld a, a                                       ; $7986: $7F
    inc de                                        ; $7987: $13
    rst RST_38                                    ; $7988: $FF
    ld e, e                                       ; $7989: $5B
    rst RST_38                                    ; $798A: $FF
    call c, $CCFF                                 ; $798B: $DC $FF $CC
    db $ED                                        ; $798E: $ED
    ld [de], a                                    ; $798F: $12
    dec [hl]                                      ; $7990: $35
    ld a, [bc]                                    ; $7991: $0A
    inc sp                                        ; $7992: $33
    dec c                                         ; $7993: $0D
    ld a, a                                       ; $7994: $7F
    ld hl, $1E7F                                  ; $7995: $21 $7F $1E
    cp $3D                                        ; $7998: $FE $3D
    cp a                                          ; $799A: $BF
    ld e, h                                       ; $799B: $5C
    ld a, l                                       ; $799C: $7D
    add d                                         ; $799D: $82
    rst RST_38                                    ; $799E: $FF
    add hl, de                                    ; $799F: $19
    ld b, b                                       ; $79A0: $40
    nop                                           ; $79A1: $00
    ldh [rLCDC], a                                ; $79A2: $E0 $40
    ldh a, [$FFE0]                                ; $79A4: $F0 $E0
    or $E0                                        ; $79A6: $F6 $E0
    ld sp, hl                                     ; $79A8: $F9
    add $D9                                       ; $79A9: $C6 $D9
    ld b, $7E                                     ; $79AB: $06 $7E
    nop                                           ; $79AD: $00
    db $F4                                        ; $79AE: $F4
    ld [$00F8], sp                                ; $79AF: $08 $F8 $00
    ldh [rP1], a                                  ; $79B2: $E0 $00
    ldh [$FF80], a                                ; $79B4: $E0 $80
    ldh [$FFC0], a                                ; $79B6: $E0 $C0
    ldh [$FF80], a                                ; $79B8: $E0 $80
    ret nc                                        ; $79BA: $D0

    jr nz, jr_01E_794D                            ; $79BB: $20 $90

    ld h, b                                       ; $79BD: $60
    and b                                         ; $79BE: $A0
    ld b, b                                       ; $79BF: $40
    sbc e                                         ; $79C0: $9B
    ld h, c                                       ; $79C1: $61
    rst RST_30                                    ; $79C2: $F7
    add c                                         ; $79C3: $81
    rst RST_28                                    ; $79C4: $EF
    ld b, $1F                                     ; $79C5: $06 $1F
    inc c                                         ; $79C7: $0C
    inc e                                         ; $79C8: $1C
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
    ret nz                                        ; $79E0: $C0

    add b                                         ; $79E1: $80
    ret nz                                        ; $79E2: $C0

    add b                                         ; $79E3: $80
    add b                                         ; $79E4: $80
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
    nop                                           ; $79F0: $00
    nop                                           ; $79F1: $00
    nop                                           ; $79F2: $00
    nop                                           ; $79F3: $00
    nop                                           ; $79F4: $00
    nop                                           ; $79F5: $00
    nop                                           ; $79F6: $00
    nop                                           ; $79F7: $00
    nop                                           ; $79F8: $00
    nop                                           ; $79F9: $00
    nop                                           ; $79FA: $00
    nop                                           ; $79FB: $00
    nop                                           ; $79FC: $00
    nop                                           ; $79FD: $00
    nop                                           ; $79FE: $00
    nop                                           ; $79FF: $00
    rst RST_38                                    ; $7A00: $FF
    nop                                           ; $7A01: $00
    add b                                         ; $7A02: $80
    ld a, a                                       ; $7A03: $7F
    rst RST_38                                    ; $7A04: $FF
    nop                                           ; $7A05: $00
    add b                                         ; $7A06: $80
    ld a, a                                       ; $7A07: $7F
    rst RST_38                                    ; $7A08: $FF
    nop                                           ; $7A09: $00
    add b                                         ; $7A0A: $80
    ld a, a                                       ; $7A0B: $7F
    rst RST_38                                    ; $7A0C: $FF
    nop                                           ; $7A0D: $00
    add b                                         ; $7A0E: $80
    ld a, a                                       ; $7A0F: $7F
    rst RST_38                                    ; $7A10: $FF
    nop                                           ; $7A11: $00
    add b                                         ; $7A12: $80
    ld a, a                                       ; $7A13: $7F
    add b                                         ; $7A14: $80
    ld a, a                                       ; $7A15: $7F
    ld a, a                                       ; $7A16: $7F
    nop                                           ; $7A17: $00
    ld b, b                                       ; $7A18: $40
    ccf                                           ; $7A19: $3F
    ld b, b                                       ; $7A1A: $40
    ccf                                           ; $7A1B: $3F
    ld a, [hl]                                    ; $7A1C: $7E
    ld bc, $7E81                                  ; $7A1D: $01 $81 $7E
    add b                                         ; $7A20: $80
    ld a, a                                       ; $7A21: $7F
    add c                                         ; $7A22: $81
    ld a, [hl]                                    ; $7A23: $7E
    add c                                         ; $7A24: $81
    ld a, [hl]                                    ; $7A25: $7E
    add c                                         ; $7A26: $81
    ld a, [hl]                                    ; $7A27: $7E
    add b                                         ; $7A28: $80
    ld a, a                                       ; $7A29: $7F
    add c                                         ; $7A2A: $81
    ld a, [hl]                                    ; $7A2B: $7E
    ld a, [hl]                                    ; $7A2C: $7E
    ld bc, $3F40                                  ; $7A2D: $01 $40 $3F
    ld b, b                                       ; $7A30: $40
    ccf                                           ; $7A31: $3F
    ld a, a                                       ; $7A32: $7F
    nop                                           ; $7A33: $00
    ld b, b                                       ; $7A34: $40
    ccf                                           ; $7A35: $3F
    add b                                         ; $7A36: $80
    ld a, a                                       ; $7A37: $7F
    add b                                         ; $7A38: $80
    ld a, a                                       ; $7A39: $7F
    rst RST_38                                    ; $7A3A: $FF
    nop                                           ; $7A3B: $00
    add b                                         ; $7A3C: $80
    ld a, a                                       ; $7A3D: $7F
    rst RST_38                                    ; $7A3E: $FF
    nop                                           ; $7A3F: $00
    add b                                         ; $7A40: $80
    ld a, a                                       ; $7A41: $7F
    rst RST_38                                    ; $7A42: $FF
    nop                                           ; $7A43: $00
    add b                                         ; $7A44: $80
    ld a, a                                       ; $7A45: $7F
    rst RST_38                                    ; $7A46: $FF
    nop                                           ; $7A47: $00
    add b                                         ; $7A48: $80
    ld a, a                                       ; $7A49: $7F
    rst RST_38                                    ; $7A4A: $FF
    nop                                           ; $7A4B: $00
    nop                                           ; $7A4C: $00
    nop                                           ; $7A4D: $00
    nop                                           ; $7A4E: $00
    nop                                           ; $7A4F: $00
    nop                                           ; $7A50: $00
    nop                                           ; $7A51: $00
    nop                                           ; $7A52: $00
    nop                                           ; $7A53: $00
    nop                                           ; $7A54: $00
    nop                                           ; $7A55: $00
    nop                                           ; $7A56: $00
    nop                                           ; $7A57: $00
    nop                                           ; $7A58: $00
    nop                                           ; $7A59: $00
    nop                                           ; $7A5A: $00
    nop                                           ; $7A5B: $00
    nop                                           ; $7A5C: $00
    nop                                           ; $7A5D: $00
    nop                                           ; $7A5E: $00
    nop                                           ; $7A5F: $00
    rst RST_38                                    ; $7A60: $FF
    nop                                           ; $7A61: $00
    ld bc, $FFFE                                  ; $7A62: $01 $FE $FF
    nop                                           ; $7A65: $00
    ld bc, $FFFE                                  ; $7A66: $01 $FE $FF
    nop                                           ; $7A69: $00
    ld bc, $FFFE                                  ; $7A6A: $01 $FE $FF
    nop                                           ; $7A6D: $00
    ld bc, $FFFE                                  ; $7A6E: $01 $FE $FF
    nop                                           ; $7A71: $00
    ld bc, $19FE                                  ; $7A72: $01 $FE $19
    and $F6                                       ; $7A75: $E6 $F6
    ld [$E816], sp                                ; $7A77: $08 $16 $E8
    ld [de], a                                    ; $7A7A: $12
    db $EC                                        ; $7A7B: $EC
    ld [de], a                                    ; $7A7C: $12
    db $EC                                        ; $7A7D: $EC
    ld a, d                                       ; $7A7E: $7A
    add h                                         ; $7A7F: $84
    sbc [hl]                                      ; $7A80: $9E
    ld h, b                                       ; $7A81: $60
    inc hl                                        ; $7A82: $23
    call c, $DD23                                 ; $7A83: $DC $23 $DD
    inc hl                                        ; $7A86: $23
    call c, Call_01E_609E                         ; $7A87: $DC $9E $60
    ld a, d                                       ; $7A8A: $7A
    add h                                         ; $7A8B: $84
    ld [de], a                                    ; $7A8C: $12
    db $EC                                        ; $7A8D: $EC
    ld [de], a                                    ; $7A8E: $12
    db $EC                                        ; $7A8F: $EC
    ld d, $E8                                     ; $7A90: $16 $E8
    or $08                                        ; $7A92: $F6 $08
    ld a, [de]                                    ; $7A94: $1A
    db $E4                                        ; $7A95: $E4
    ld bc, $01FE                                  ; $7A96: $01 $FE $01
    cp $FF                                        ; $7A99: $FE $FF
    nop                                           ; $7A9B: $00
    ld bc, $FFFE                                  ; $7A9C: $01 $FE $FF
    nop                                           ; $7A9F: $00
    ld bc, $FFFE                                  ; $7AA0: $01 $FE $FF
    nop                                           ; $7AA3: $00
    ld bc, $FFFE                                  ; $7AA4: $01 $FE $FF
    nop                                           ; $7AA7: $00
    ld bc, $FFFE                                  ; $7AA8: $01 $FE $FF
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
    nop                                           ; $7AC0: $00
    nop                                           ; $7AC1: $00
    nop                                           ; $7AC2: $00
    nop                                           ; $7AC3: $00
    ld bc, $0100                                  ; $7AC4: $01 $00 $01
    nop                                           ; $7AC7: $00
    nop                                           ; $7AC8: $00
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
    ld bc, $FE00                                  ; $7AD4: $01 $00 $FE
    ld bc, $FDFE                                  ; $7AD7: $01 $FE $FD
    rst RST_38                                    ; $7ADA: $FF
    nop                                           ; $7ADB: $00
    ld bc, $0100                                  ; $7ADC: $01 $00 $01
    nop                                           ; $7ADF: $00
    rst RST_38                                    ; $7AE0: $FF
    db $DD                                        ; $7AE1: $DD
    rst RST_38                                    ; $7AE2: $FF
    call $10EF                                    ; $7AE3: $CD $EF $10
    dec [hl]                                      ; $7AE6: $35
    ld a, [bc]                                    ; $7AE7: $0A
    inc sp                                        ; $7AE8: $33
    inc c                                         ; $7AE9: $0C
    ld a, a                                       ; $7AEA: $7F
    ld hl, $1E7F                                  ; $7AEB: $21 $7F $1E
    cp $3D                                        ; $7AEE: $FE $3D
    cp a                                          ; $7AF0: $BF
    ld e, h                                       ; $7AF1: $5C
    ld a, l                                       ; $7AF2: $7D
    add d                                         ; $7AF3: $82
    rst RST_38                                    ; $7AF4: $FF
    add hl, de                                    ; $7AF5: $19
    sbc e                                         ; $7AF6: $9B
    ld h, c                                       ; $7AF7: $61
    rst RST_30                                    ; $7AF8: $F7
    add c                                         ; $7AF9: $81
    rst RST_28                                    ; $7AFA: $EF
    ld b, $1F                                     ; $7AFB: $06 $1F
    inc c                                         ; $7AFD: $0C
    inc e                                         ; $7AFE: $1C
    nop                                           ; $7AFF: $00
    nop                                           ; $7B00: $00
    nop                                           ; $7B01: $00
    nop                                           ; $7B02: $00
    nop                                           ; $7B03: $00
    nop                                           ; $7B04: $00
    nop                                           ; $7B05: $00
    nop                                           ; $7B06: $00
    nop                                           ; $7B07: $00
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
    call z, $B600                                 ; $7B18: $CC $00 $B6
    ld c, b                                       ; $7B1B: $48
    ld a, a                                       ; $7B1C: $7F
    ld [de], a                                    ; $7B1D: $12
    rst RST_38                                    ; $7B1E: $FF
    ld e, e                                       ; $7B1F: $5B
    add b                                         ; $7B20: $80
    nop                                           ; $7B21: $00
    ret nz                                        ; $7B22: $C0

    add b                                         ; $7B23: $80
    ldh [$FFC0], a                                ; $7B24: $E0 $C0
    ldh [$FF80], a                                ; $7B26: $E0 $80
    add b                                         ; $7B28: $80
    nop                                           ; $7B29: $00
    ldh [rP1], a                                  ; $7B2A: $E0 $00
    ld hl, sp+$00                                 ; $7B2C: $F8 $00
    db $FC                                        ; $7B2E: $FC
    add b                                         ; $7B2F: $80
    ldh a, [c]                                    ; $7B30: $F2
    adc h                                         ; $7B31: $8C
    jp nc, $9C2C                                  ; $7B32: $D2 $2C $9C

    ld h, b                                       ; $7B35: $60
    and b                                         ; $7B36: $A0
    ld b, b                                       ; $7B37: $40
    ret nz                                        ; $7B38: $C0

    add b                                         ; $7B39: $80
    ret nz                                        ; $7B3A: $C0

    add b                                         ; $7B3B: $80
    add b                                         ; $7B3C: $80
    nop                                           ; $7B3D: $00
    nop                                           ; $7B3E: $00
    nop                                           ; $7B3F: $00
    rst RST_18                                    ; $7B40: $DF
    rst RST_18                                    ; $7B41: $DF
    add b                                         ; $7B42: $80
    add b                                         ; $7B43: $80
    ldh a, [$FFF0]                                ; $7B44: $F0 $F0
    add b                                         ; $7B46: $80
    add b                                         ; $7B47: $80
    jr nz, jr_01E_7B6A                            ; $7B48: $20 $20

    nop                                           ; $7B4A: $00
    nop                                           ; $7B4B: $00
    ld a, e                                       ; $7B4C: $7B
    ld a, e                                       ; $7B4D: $7B
    nop                                           ; $7B4E: $00
    nop                                           ; $7B4F: $00
    ld [hl], a                                    ; $7B50: $77
    ld [hl], a                                    ; $7B51: $77
    add b                                         ; $7B52: $80
    add b                                         ; $7B53: $80
    add b                                         ; $7B54: $80
    add b                                         ; $7B55: $80
    ld a, a                                       ; $7B56: $7F
    ld a, a                                       ; $7B57: $7F
    ld b, e                                       ; $7B58: $43
    ld b, b                                       ; $7B59: $40
    ld b, d                                       ; $7B5A: $42
    ld b, c                                       ; $7B5B: $41
    ld a, a                                       ; $7B5C: $7F
    ld a, h                                       ; $7B5D: $7C
    add d                                         ; $7B5E: $82
    add c                                         ; $7B5F: $81
    add e                                         ; $7B60: $83
    add b                                         ; $7B61: $80
    add e                                         ; $7B62: $83
    add c                                         ; $7B63: $81
    add e                                         ; $7B64: $83
    add b                                         ; $7B65: $80
    add e                                         ; $7B66: $83
    add c                                         ; $7B67: $81
    add e                                         ; $7B68: $83
    add b                                         ; $7B69: $80

jr_01E_7B6A:
    add d                                         ; $7B6A: $82
    add c                                         ; $7B6B: $81
    ld a, a                                       ; $7B6C: $7F
    ld a, h                                       ; $7B6D: $7C
    ld b, d                                       ; $7B6E: $42
    ld b, c                                       ; $7B6F: $41
    ld b, e                                       ; $7B70: $43
    ld b, b                                       ; $7B71: $40
    ld a, a                                       ; $7B72: $7F
    ld a, a                                       ; $7B73: $7F
    ld b, b                                       ; $7B74: $40
    ld b, b                                       ; $7B75: $40
    add b                                         ; $7B76: $80
    add b                                         ; $7B77: $80
    add b                                         ; $7B78: $80
    add b                                         ; $7B79: $80
    ccf                                           ; $7B7A: $3F
    ccf                                           ; $7B7B: $3F
    nop                                           ; $7B7C: $00
    nop                                           ; $7B7D: $00
    jr nc, @+$32                                  ; $7B7E: $30 $30

    nop                                           ; $7B80: $00
    nop                                           ; $7B81: $00
    ld a, a                                       ; $7B82: $7F
    ld a, a                                       ; $7B83: $7F
    add b                                         ; $7B84: $80
    add b                                         ; $7B85: $80
    ld hl, sp-$08                                 ; $7B86: $F8 $F8
    add b                                         ; $7B88: $80
    add b                                         ; $7B89: $80
    rst RST_38                                    ; $7B8A: $FF
    rst RST_38                                    ; $7B8B: $FF
    nop                                           ; $7B8C: $00
    nop                                           ; $7B8D: $00
    nop                                           ; $7B8E: $00
    nop                                           ; $7B8F: $00
    nop                                           ; $7B90: $00
    nop                                           ; $7B91: $00
    nop                                           ; $7B92: $00
    nop                                           ; $7B93: $00
    nop                                           ; $7B94: $00
    nop                                           ; $7B95: $00
    nop                                           ; $7B96: $00
    nop                                           ; $7B97: $00
    nop                                           ; $7B98: $00
    nop                                           ; $7B99: $00
    nop                                           ; $7B9A: $00
    nop                                           ; $7B9B: $00
    nop                                           ; $7B9C: $00
    nop                                           ; $7B9D: $00
    nop                                           ; $7B9E: $00
    nop                                           ; $7B9F: $00
    ld a, a                                       ; $7BA0: $7F
    ld a, a                                       ; $7BA1: $7F
    ld bc, $4D01                                  ; $7BA2: $01 $01 $4D
    ld c, l                                       ; $7BA5: $4D
    nop                                           ; $7BA6: $00
    nop                                           ; $7BA7: $00
    ld bc, $0101                                  ; $7BA8: $01 $01 $01
    ld bc, $FFFF                                  ; $7BAB: $01 $FF $FF
    ld bc, $E001                                  ; $7BAE: $01 $01 $E0
    ldh [rSB], a                                  ; $7BB1: $E0 $01
    ld bc, $1919                                  ; $7BB3: $01 $19 $19
    or $F6                                        ; $7BB6: $F6 $F6
    or $06                                        ; $7BB8: $F6 $06
    ld [de], a                                    ; $7BBA: $12
    ldh [c], a                                    ; $7BBB: $E2
    ldh a, [c]                                    ; $7BBC: $F2
    ld [bc], a                                    ; $7BBD: $02
    ld a, [de]                                    ; $7BBE: $1A
    ld [$0EFE], a                                 ; $7BBF: $EA $FE $0E
    rst RST_38                                    ; $7BC2: $FF
    db $10                                        ; $7BC3: $10
    cp a                                          ; $7BC4: $BF
    ld c, a                                       ; $7BC5: $4F
    rst RST_38                                    ; $7BC6: $FF
    db $10                                        ; $7BC7: $10
    cp $0E                                        ; $7BC8: $FE $0E
    ld a, [de]                                    ; $7BCA: $1A
    ld [$02F2], a                                 ; $7BCB: $EA $F2 $02
    ld [de], a                                    ; $7BCE: $12
    ldh [c], a                                    ; $7BCF: $E2
    or $06                                        ; $7BD0: $F6 $06
    or $F6                                        ; $7BD2: $F6 $F6
    ld a, [de]                                    ; $7BD4: $1A
    ld a, [de]                                    ; $7BD5: $1A
    ld bc, $0101                                  ; $7BD6: $01 $01 $01
    ld bc, $C1C1                                  ; $7BD9: $01 $C1 $C1
    ld bc, $0601                                  ; $7BDC: $01 $01 $06
    ld b, $00                                     ; $7BDF: $06 $00
    nop                                           ; $7BE1: $00
    ldh [$FFE0], a                                ; $7BE2: $E0 $E0
    nop                                           ; $7BE4: $00
    nop                                           ; $7BE5: $00
    ld e, $1E                                     ; $7BE6: $1E $1E
    nop                                           ; $7BE8: $00
    nop                                           ; $7BE9: $00
    rst RST_38                                    ; $7BEA: $FF
    rst RST_38                                    ; $7BEB: $FF
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
    nop                                           ; $7C00: $00
    nop                                           ; $7C01: $00
    nop                                           ; $7C02: $00
    nop                                           ; $7C03: $00
    ld bc, $0100                                  ; $7C04: $01 $00 $01
    nop                                           ; $7C07: $00
    nop                                           ; $7C08: $00
    nop                                           ; $7C09: $00
    nop                                           ; $7C0A: $00
    nop                                           ; $7C0B: $00
    nop                                           ; $7C0C: $00
    nop                                           ; $7C0D: $00
    nop                                           ; $7C0E: $00
    nop                                           ; $7C0F: $00
    nop                                           ; $7C10: $00
    nop                                           ; $7C11: $00
    nop                                           ; $7C12: $00
    nop                                           ; $7C13: $00
    ld bc, $FE00                                  ; $7C14: $01 $00 $FE
    ld bc, $FDFE                                  ; $7C17: $01 $FE $FD
    rst RST_38                                    ; $7C1A: $FF
    nop                                           ; $7C1B: $00
    ld bc, $0100                                  ; $7C1C: $01 $00 $01
    nop                                           ; $7C1F: $00
    rst RST_38                                    ; $7C20: $FF
    db $DD                                        ; $7C21: $DD
    rst RST_38                                    ; $7C22: $FF
    call $10EF                                    ; $7C23: $CD $EF $10
    dec [hl]                                      ; $7C26: $35
    ld a, [bc]                                    ; $7C27: $0A
    inc sp                                        ; $7C28: $33
    inc c                                         ; $7C29: $0C
    ld a, a                                       ; $7C2A: $7F
    ld hl, $1E7F                                  ; $7C2B: $21 $7F $1E
    cp $3D                                        ; $7C2E: $FE $3D
    cp a                                          ; $7C30: $BF
    ld e, h                                       ; $7C31: $5C
    ld a, l                                       ; $7C32: $7D
    add d                                         ; $7C33: $82
    rst RST_38                                    ; $7C34: $FF
    add hl, de                                    ; $7C35: $19
    sbc e                                         ; $7C36: $9B
    ld h, c                                       ; $7C37: $61
    rst RST_30                                    ; $7C38: $F7
    add c                                         ; $7C39: $81
    rst RST_28                                    ; $7C3A: $EF
    ld b, $1F                                     ; $7C3B: $06 $1F
    inc c                                         ; $7C3D: $0C
    inc e                                         ; $7C3E: $1C
    nop                                           ; $7C3F: $00
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
    nop                                           ; $7C4A: $00
    nop                                           ; $7C4B: $00
    nop                                           ; $7C4C: $00
    nop                                           ; $7C4D: $00
    nop                                           ; $7C4E: $00
    nop                                           ; $7C4F: $00
    nop                                           ; $7C50: $00
    nop                                           ; $7C51: $00
    nop                                           ; $7C52: $00
    nop                                           ; $7C53: $00
    nop                                           ; $7C54: $00
    nop                                           ; $7C55: $00
    nop                                           ; $7C56: $00
    nop                                           ; $7C57: $00
    call z, $B600                                 ; $7C58: $CC $00 $B6
    ld c, b                                       ; $7C5B: $48
    ld a, a                                       ; $7C5C: $7F
    ld [de], a                                    ; $7C5D: $12
    rst RST_38                                    ; $7C5E: $FF
    ld e, e                                       ; $7C5F: $5B
    add b                                         ; $7C60: $80
    nop                                           ; $7C61: $00
    ret nz                                        ; $7C62: $C0

    add b                                         ; $7C63: $80
    ldh [$FFC0], a                                ; $7C64: $E0 $C0
    ldh [$FF80], a                                ; $7C66: $E0 $80
    add b                                         ; $7C68: $80
    nop                                           ; $7C69: $00
    ldh [rP1], a                                  ; $7C6A: $E0 $00
    ld hl, sp+$00                                 ; $7C6C: $F8 $00
    db $FC                                        ; $7C6E: $FC
    add b                                         ; $7C6F: $80
    ldh a, [c]                                    ; $7C70: $F2
    adc h                                         ; $7C71: $8C
    jp nc, $9C2C                                  ; $7C72: $D2 $2C $9C

    ld h, b                                       ; $7C75: $60
    and b                                         ; $7C76: $A0
    ld b, b                                       ; $7C77: $40
    ret nz                                        ; $7C78: $C0

    add b                                         ; $7C79: $80
    ret nz                                        ; $7C7A: $C0

    add b                                         ; $7C7B: $80
    add b                                         ; $7C7C: $80
    nop                                           ; $7C7D: $00
    nop                                           ; $7C7E: $00
    nop                                           ; $7C7F: $00
    xor a                                         ; $7C80: $AF
    ld d, d                                       ; $7C81: $52
    ld d, e                                       ; $7C82: $53
    ld hl, $0021                                  ; $7C83: $21 $21 $00
    inc bc                                        ; $7C86: $03
    nop                                           ; $7C87: $00
    rlca                                          ; $7C88: $07
    ld bc, $050B                                  ; $7C89: $01 $0B $05
    rrca                                          ; $7C8C: $0F
    nop                                           ; $7C8D: $00
    ld bc, $0300                                  ; $7C8E: $01 $00 $03
    nop                                           ; $7C91: $00
    rlca                                          ; $7C92: $07
    ld [bc], a                                    ; $7C93: $02
    rlca                                          ; $7C94: $07
    inc bc                                        ; $7C95: $03
    inc bc                                        ; $7C96: $03
    ld bc, $0003                                  ; $7C97: $01 $03 $00
    rlca                                          ; $7C9A: $07
    inc bc                                        ; $7C9B: $03
    rrca                                          ; $7C9C: $0F
    rlca                                          ; $7C9D: $07
    rrca                                          ; $7C9E: $0F
    nop                                           ; $7C9F: $00
    ld a, d                                       ; $7CA0: $7A

jr_01E_7CA1:
    add b                                         ; $7CA1: $80
    ret c                                         ; $7CA2: $D8

    jr nz, jr_01E_7CA1                            ; $7CA3: $20 $FC

    sbc b                                         ; $7CA5: $98
    cp $1C                                        ; $7CA6: $FE $1C
    sbc $24                                       ; $7CA8: $DE $24
    add [hl]                                      ; $7CAA: $86
    ld a, b                                       ; $7CAB: $78
    db $FC                                        ; $7CAC: $FC
    nop                                           ; $7CAD: $00
    inc a                                         ; $7CAE: $3C
    ret nz                                        ; $7CAF: $C0

    ld l, h                                       ; $7CB0: $6C
    add b                                         ; $7CB1: $80
    ldh a, [c]                                    ; $7CB2: $F2
    ld l, h                                       ; $7CB3: $6C
    ld a, [$FC74]                                 ; $7CB4: $FA $74 $FC
    ld [$18BC], sp                                ; $7CB7: $08 $BC $18
    sbc h                                         ; $7CBA: $9C
    nop                                           ; $7CBB: $00
    add b                                         ; $7CBC: $80
    nop                                           ; $7CBD: $00
    add b                                         ; $7CBE: $80
    nop                                           ; $7CBF: $00
    nop                                           ; $7CC0: $00
    nop                                           ; $7CC1: $00
    nop                                           ; $7CC2: $00
    nop                                           ; $7CC3: $00
    nop                                           ; $7CC4: $00
    nop                                           ; $7CC5: $00
    nop                                           ; $7CC6: $00
    nop                                           ; $7CC7: $00
    nop                                           ; $7CC8: $00
    nop                                           ; $7CC9: $00
    nop                                           ; $7CCA: $00
    nop                                           ; $7CCB: $00
    nop                                           ; $7CCC: $00
    nop                                           ; $7CCD: $00
    nop                                           ; $7CCE: $00
    nop                                           ; $7CCF: $00
    inc bc                                        ; $7CD0: $03
    nop                                           ; $7CD1: $00
    ld b, $01                                     ; $7CD2: $06 $01
    dec c                                         ; $7CD4: $0D
    ld [bc], a                                    ; $7CD5: $02
    ld e, $0D                                     ; $7CD6: $1E $0D
    ccf                                           ; $7CD8: $3F
    db $10                                        ; $7CD9: $10
    ld a, c                                       ; $7CDA: $79
    ld d, $D9                                     ; $7CDB: $16 $D9
    ld h, $AF                                     ; $7CDD: $26 $AF
    ld d, b                                       ; $7CDF: $50
    nop                                           ; $7CE0: $00
    nop                                           ; $7CE1: $00
    nop                                           ; $7CE2: $00
    nop                                           ; $7CE3: $00
    nop                                           ; $7CE4: $00
    nop                                           ; $7CE5: $00
    nop                                           ; $7CE6: $00
    nop                                           ; $7CE7: $00
    nop                                           ; $7CE8: $00
    nop                                           ; $7CE9: $00
    nop                                           ; $7CEA: $00
    nop                                           ; $7CEB: $00
    nop                                           ; $7CEC: $00
    nop                                           ; $7CED: $00
    nop                                           ; $7CEE: $00
    nop                                           ; $7CEF: $00
    nop                                           ; $7CF0: $00
    nop                                           ; $7CF1: $00
    add b                                         ; $7CF2: $80
    nop                                           ; $7CF3: $00
    ld e, b                                       ; $7CF4: $58
    add b                                         ; $7CF5: $80
    xor h                                         ; $7CF6: $AC
    ld d, b                                       ; $7CF7: $50
    ld a, a                                       ; $7CF8: $7F
    xor h                                         ; $7CF9: $AC
    cp a                                          ; $7CFA: $BF
    ld d, a                                       ; $7CFB: $57
    rst RST_38                                    ; $7CFC: $FF
    dec de                                        ; $7CFD: $1B
    cp a                                          ; $7CFE: $BF
    ld e, c                                       ; $7CFF: $59
    nop                                           ; $7D00: $00
    nop                                           ; $7D01: $00
    nop                                           ; $7D02: $00
    nop                                           ; $7D03: $00
    nop                                           ; $7D04: $00
    nop                                           ; $7D05: $00
    nop                                           ; $7D06: $00
    nop                                           ; $7D07: $00
    nop                                           ; $7D08: $00
    nop                                           ; $7D09: $00
    nop                                           ; $7D0A: $00
    nop                                           ; $7D0B: $00
    nop                                           ; $7D0C: $00
    nop                                           ; $7D0D: $00
    nop                                           ; $7D0E: $00
    nop                                           ; $7D0F: $00
    nop                                           ; $7D10: $00
    nop                                           ; $7D11: $00
    nop                                           ; $7D12: $00
    nop                                           ; $7D13: $00
    nop                                           ; $7D14: $00
    nop                                           ; $7D15: $00
    nop                                           ; $7D16: $00
    nop                                           ; $7D17: $00
    nop                                           ; $7D18: $00
    nop                                           ; $7D19: $00
    ret nz                                        ; $7D1A: $C0

    nop                                           ; $7D1B: $00
    ret nz                                        ; $7D1C: $C0

    add b                                         ; $7D1D: $80
    add b                                         ; $7D1E: $80
    nop                                           ; $7D1F: $00
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

Call_01E_7F3B:
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
