; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

    ld a, $00                                     ; $4000: $3E $00
    nop                                           ; $4002: $00
    nop                                           ; $4003: $00
    nop                                           ; $4004: $00
    nop                                           ; $4005: $00
    nop                                           ; $4006: $00
    nop                                           ; $4007: $00
    nop                                           ; $4008: $00
    rlca                                          ; $4009: $07
    cp [hl]                                       ; $400A: $BE
    ld b, b                                       ; $400B: $40
    inc c                                         ; $400C: $0C
    ld b, $00                                     ; $400D: $06 $00
    nop                                           ; $400F: $00
    nop                                           ; $4010: $00
    nop                                           ; $4011: $00
    rlca                                          ; $4012: $07
    ret nc                                        ; $4013: $D0

    ld b, b                                       ; $4014: $40
    ld [$0003], sp                                ; $4015: $08 $03 $00
    nop                                           ; $4018: $00
    nop                                           ; $4019: $00
    nop                                           ; $401A: $00
    rlca                                          ; $401B: $07
    ldh [c], a                                    ; $401C: $E2
    ld b, b                                       ; $401D: $40
    ld [$0004], sp                                ; $401E: $08 $04 $00
    nop                                           ; $4021: $00
    nop                                           ; $4022: $00
    nop                                           ; $4023: $00
    rlca                                          ; $4024: $07
    db $F4                                        ; $4025: $F4
    ld b, b                                       ; $4026: $40
    nop                                           ; $4027: $00
    nop                                           ; $4028: $00
    nop                                           ; $4029: $00
    nop                                           ; $402A: $00
    nop                                           ; $402B: $00
    nop                                           ; $402C: $00
    rlca                                          ; $402D: $07
    ld a, [$1C40]                                 ; $402E: $FA $40 $1C
    dec b                                         ; $4031: $05
    nop                                           ; $4032: $00
    nop                                           ; $4033: $00
    nop                                           ; $4034: $00
    nop                                           ; $4035: $00
    rlca                                          ; $4036: $07
    inc e                                         ; $4037: $1C
    ld b, c                                       ; $4038: $41
    inc e                                         ; $4039: $1C
    dec b                                         ; $403A: $05
    nop                                           ; $403B: $00
    nop                                           ; $403C: $00
    nop                                           ; $403D: $00
    nop                                           ; $403E: $00
    rlca                                          ; $403F: $07
    ld a, $41                                     ; $4040: $3E $41
    inc e                                         ; $4042: $1C
    dec b                                         ; $4043: $05
    nop                                           ; $4044: $00
    nop                                           ; $4045: $00
    nop                                           ; $4046: $00
    nop                                           ; $4047: $00
    rlca                                          ; $4048: $07
    ld h, b                                       ; $4049: $60
    ld b, c                                       ; $404A: $41
    nop                                           ; $404B: $00
    nop                                           ; $404C: $00
    nop                                           ; $404D: $00
    nop                                           ; $404E: $00
    nop                                           ; $404F: $00
    nop                                           ; $4050: $00
    rlca                                          ; $4051: $07
    ld h, [hl]                                    ; $4052: $66
    ld b, c                                       ; $4053: $41
    nop                                           ; $4054: $00
    nop                                           ; $4055: $00
    nop                                           ; $4056: $00
    nop                                           ; $4057: $00
    nop                                           ; $4058: $00
    nop                                           ; $4059: $00
    rlca                                          ; $405A: $07
    ld l, h                                       ; $405B: $6C
    ld b, c                                       ; $405C: $41
    nop                                           ; $405D: $00
    rst RST_38                                    ; $405E: $FF
    nop                                           ; $405F: $00
    nop                                           ; $4060: $00
    nop                                           ; $4061: $00
    nop                                           ; $4062: $00
    rlca                                          ; $4063: $07
    inc e                                         ; $4064: $1C
    ld b, d                                       ; $4065: $42
    ld [$0004], sp                                ; $4066: $08 $04 $00
    nop                                           ; $4069: $00
    nop                                           ; $406A: $00
    nop                                           ; $406B: $00
    rlca                                          ; $406C: $07
    ld h, $42                                     ; $406D: $26 $42
    ld [$00FF], sp                                ; $406F: $08 $FF $00
    nop                                           ; $4072: $00
    nop                                           ; $4073: $00
    nop                                           ; $4074: $00
    rlca                                          ; $4075: $07
    ld a, $42                                     ; $4076: $3E $42
    jr z, @+$03                                   ; $4078: $28 $01

    ld bc, $8004                                  ; $407A: $01 $04 $80
    nop                                           ; $407D: $00
    rlca                                          ; $407E: $07
    ld e, h                                       ; $407F: $5C
    ld b, e                                       ; $4080: $43
    inc b                                         ; $4081: $04
    ld [bc], a                                    ; $4082: $02
    nop                                           ; $4083: $00
    nop                                           ; $4084: $00
    nop                                           ; $4085: $00
    nop                                           ; $4086: $00
    rlca                                          ; $4087: $07
    ldh [c], a                                    ; $4088: $E2
    ld b, d                                       ; $4089: $42
    inc b                                         ; $408A: $04
    ld a, [bc]                                    ; $408B: $0A
    nop                                           ; $408C: $00
    nop                                           ; $408D: $00
    nop                                           ; $408E: $00
    nop                                           ; $408F: $00
    rlca                                          ; $4090: $07
    sub [hl]                                      ; $4091: $96
    ld b, d                                       ; $4092: $42
    inc e                                         ; $4093: $1C
    dec b                                         ; $4094: $05
    nop                                           ; $4095: $00
    nop                                           ; $4096: $00
    nop                                           ; $4097: $00
    nop                                           ; $4098: $00
    rlca                                          ; $4099: $07
    sub $42                                       ; $409A: $D6 $42
    ld [$0005], sp                                ; $409C: $08 $05 $00
    nop                                           ; $409F: $00
    nop                                           ; $40A0: $00
    nop                                           ; $40A1: $00
    rlca                                          ; $40A2: $07
    inc [hl]                                      ; $40A3: $34
    ld b, d                                       ; $40A4: $42
    jr nc, jr_003_40A7                            ; $40A5: $30 $00

jr_003_40A7:
    nop                                           ; $40A7: $00
    nop                                           ; $40A8: $00
    nop                                           ; $40A9: $00
    nop                                           ; $40AA: $00
    rlca                                          ; $40AB: $07
    ld l, h                                       ; $40AC: $6C
    ld b, d                                       ; $40AD: $42
    ld [$0001], sp                                ; $40AE: $08 $01 $00
    nop                                           ; $40B1: $00
    nop                                           ; $40B2: $00
    nop                                           ; $40B3: $00
    rlca                                          ; $40B4: $07
    ld [de], a                                    ; $40B5: $12
    ld b, c                                       ; $40B6: $41
    inc b                                         ; $40B7: $04
    rst RST_38                                    ; $40B8: $FF
    nop                                           ; $40B9: $00
    nop                                           ; $40BA: $00
    nop                                           ; $40BB: $00
    nop                                           ; $40BC: $00
    rlca                                          ; $40BD: $07
    adc b                                         ; $40BE: $88
    ld b, d                                       ; $40BF: $42
    ld [$0003], sp                                ; $40C0: $08 $03 $00
    nop                                           ; $40C3: $00
    nop                                           ; $40C4: $00
    nop                                           ; $40C5: $00
    rlca                                          ; $40C6: $07
    halt                                          ; $40C7: $76
    ld b, c                                       ; $40C8: $41
    ld [$0200], sp                                ; $40C9: $08 $00 $02
    inc bc                                        ; $40CC: $03
    nop                                           ; $40CD: $00
    nop                                           ; $40CE: $00
    rlca                                          ; $40CF: $07
    add h                                         ; $40D0: $84
    ld b, c                                       ; $40D1: $41
    ld [$0200], sp                                ; $40D2: $08 $00 $02
    inc b                                         ; $40D5: $04
    nop                                           ; $40D6: $00
    nop                                           ; $40D7: $00
    rlca                                          ; $40D8: $07
    sub d                                         ; $40D9: $92
    ld b, c                                       ; $40DA: $41
    inc c                                         ; $40DB: $0C
    ld [bc], a                                    ; $40DC: $02
    inc bc                                        ; $40DD: $03
    inc b                                         ; $40DE: $04
    ld bc, $0700                                  ; $40DF: $01 $00 $07
    and h                                         ; $40E2: $A4
    ld b, c                                       ; $40E3: $41
    ld [$0200], sp                                ; $40E4: $08 $00 $02
    inc b                                         ; $40E7: $04
    nop                                           ; $40E8: $00
    nop                                           ; $40E9: $00
    rlca                                          ; $40EA: $07
    or d                                          ; $40EB: $B2
    ld b, c                                       ; $40EC: $41
    ld [$0200], sp                                ; $40ED: $08 $00 $02
    inc b                                         ; $40F0: $04
    inc b                                         ; $40F1: $04
    nop                                           ; $40F2: $00
    rlca                                          ; $40F3: $07
    ret nz                                        ; $40F4: $C0

    ld b, c                                       ; $40F5: $41
    inc c                                         ; $40F6: $0C
    ld [bc], a                                    ; $40F7: $02
    inc bc                                        ; $40F8: $03
    ld b, $05                                     ; $40F9: $06 $05
    nop                                           ; $40FB: $00
    rlca                                          ; $40FC: $07
    sub $41                                       ; $40FD: $D6 $41
    db $10                                        ; $40FF: $10
    ld bc, $0302                                  ; $4100: $01 $02 $03
    ld [$0700], sp                                ; $4103: $08 $00 $07
    db $EC                                        ; $4106: $EC
    ld b, c                                       ; $4107: $41
    db $10                                        ; $4108: $10
    ld bc, $0302                                  ; $4109: $01 $02 $03
    ld [$0700], sp                                ; $410C: $08 $00 $07
    ld a, [hl]                                    ; $410F: $7E
    ld b, h                                       ; $4110: $44
    db $10                                        ; $4111: $10
    ld bc, $0302                                  ; $4112: $01 $02 $03
    add hl, bc                                    ; $4115: $09
    nop                                           ; $4116: $00
    rlca                                          ; $4117: $07
    ld h, [hl]                                    ; $4118: $66
    ld b, e                                       ; $4119: $43
    stop                                          ; $411A: $10 $00
    rst RST_38                                    ; $411C: $FF
    ld [$000F], sp                                ; $411D: $08 $0F $00
    rlca                                          ; $4120: $07
    ld a, h                                       ; $4121: $7C
    ld b, e                                       ; $4122: $43
    inc c                                         ; $4123: $0C
    ld bc, $0305                                  ; $4124: $01 $05 $03
    ld hl, $0700                                  ; $4127: $21 $00 $07
    or b                                          ; $412A: $B0
    ld b, e                                       ; $412B: $43
    jr jr_003_412F                                ; $412C: $18 $01

    inc b                                         ; $412E: $04

jr_003_412F:
    ld [$0001], sp                                ; $412F: $08 $01 $00
    rlca                                          ; $4132: $07
    jp nc, $1043                                  ; $4133: $D2 $43 $10

    ld bc, $0402                                  ; $4136: $01 $02 $04
    add b                                         ; $4139: $80
    nop                                           ; $413A: $00
    rlca                                          ; $413B: $07
    db $E4                                        ; $413C: $E4
    ld b, e                                       ; $413D: $43
    inc e                                         ; $413E: $1C
    ld bc, $0402                                  ; $413F: $01 $02 $04
    stop                                          ; $4142: $10 $00
    rlca                                          ; $4144: $07
    ld a, h                                       ; $4145: $7C
    ld b, e                                       ; $4146: $43
    db $10                                        ; $4147: $10
    ld bc, $1101                                  ; $4148: $01 $01 $11
    ld l, l                                       ; $414B: $6D
    nop                                           ; $414C: $00
    rlca                                          ; $414D: $07
    ld a, [$0C43]                                 ; $414E: $FA $43 $0C
    ld bc, $0B01                                  ; $4151: $01 $01 $0B
    stop                                          ; $4154: $10 $00
    rlca                                          ; $4156: $07
    ld b, h                                       ; $4157: $44
    ld b, h                                       ; $4158: $44
    inc c                                         ; $4159: $0C
    inc bc                                        ; $415A: $03
    ld bc, $B208                                  ; $415B: $01 $08 $B2
    nop                                           ; $415E: $00
    rlca                                          ; $415F: $07
    ld [bc], a                                    ; $4160: $02
    ld b, d                                       ; $4161: $42
    inc c                                         ; $4162: $0C
    ld a, [bc]                                    ; $4163: $0A
    nop                                           ; $4164: $00
    nop                                           ; $4165: $00
    nop                                           ; $4166: $00
    nop                                           ; $4167: $00
    rlca                                          ; $4168: $07
    cp [hl]                                       ; $4169: $BE
    ld b, b                                       ; $416A: $40
    nop                                           ; $416B: $00
    nop                                           ; $416C: $00
    nop                                           ; $416D: $00
    nop                                           ; $416E: $00
    nop                                           ; $416F: $00
    nop                                           ; $4170: $00
    rlca                                          ; $4171: $07
    ld h, b                                       ; $4172: $60
    ld b, c                                       ; $4173: $41
    nop                                           ; $4174: $00
    dec b                                         ; $4175: $05
    nop                                           ; $4176: $00
    nop                                           ; $4177: $00
    nop                                           ; $4178: $00
    nop                                           ; $4179: $00
    rlca                                          ; $417A: $07
    call c, $0042                                 ; $417B: $DC $42 $00
    dec b                                         ; $417E: $05
    nop                                           ; $417F: $00
    nop                                           ; $4180: $00
    nop                                           ; $4181: $00
    nop                                           ; $4182: $00
    rlca                                          ; $4183: $07
    call c, Call_000_0442                         ; $4184: $DC $42 $04
    rst RST_38                                    ; $4187: $FF
    nop                                           ; $4188: $00
    nop                                           ; $4189: $00
    nop                                           ; $418A: $00
    nop                                           ; $418B: $00
    rlca                                          ; $418C: $07
    call c, $0042                                 ; $418D: $DC $42 $00
    dec b                                         ; $4190: $05
    nop                                           ; $4191: $00
    nop                                           ; $4192: $00
    nop                                           ; $4193: $00
    nop                                           ; $4194: $00
    rlca                                          ; $4195: $07
    ld [$0042], a                                 ; $4196: $EA $42 $00
    dec b                                         ; $4199: $05
    nop                                           ; $419A: $00
    nop                                           ; $419B: $00
    nop                                           ; $419C: $00
    nop                                           ; $419D: $00
    rlca                                          ; $419E: $07
    ldh a, [rSCY]                                 ; $419F: $F0 $42
    nop                                           ; $41A1: $00
    dec b                                         ; $41A2: $05
    nop                                           ; $41A3: $00
    nop                                           ; $41A4: $00
    nop                                           ; $41A5: $00
    nop                                           ; $41A6: $00
    rlca                                          ; $41A7: $07
    inc d                                         ; $41A8: $14
    ld b, e                                       ; $41A9: $43
    db $10                                        ; $41AA: $10
    dec b                                         ; $41AB: $05
    nop                                           ; $41AC: $00
    nop                                           ; $41AD: $00
    nop                                           ; $41AE: $00
    nop                                           ; $41AF: $00
    rlca                                          ; $41B0: $07
    ld [hl], $43                                  ; $41B1: $36 $43
    inc c                                         ; $41B3: $0C
    rst RST_38                                    ; $41B4: $FF
    nop                                           ; $41B5: $00
    nop                                           ; $41B6: $00
    nop                                           ; $41B7: $00
    nop                                           ; $41B8: $00
    rlca                                          ; $41B9: $07
    ld c, b                                       ; $41BA: $48
    ld b, e                                       ; $41BB: $43
    nop                                           ; $41BC: $00
    nop                                           ; $41BD: $00
    nop                                           ; $41BE: $00
    nop                                           ; $41BF: $00
    nop                                           ; $41C0: $00
    nop                                           ; $41C1: $00
    rlca                                          ; $41C2: $07
    ld a, [hl+]                                   ; $41C3: $2A
    ld b, e                                       ; $41C4: $43
    jr jr_003_41C7                                ; $41C5: $18 $00

jr_003_41C7:
    nop                                           ; $41C7: $00
    nop                                           ; $41C8: $00
    nop                                           ; $41C9: $00
    nop                                           ; $41CA: $00
    rlca                                          ; $41CB: $07
    ld c, b                                       ; $41CC: $48
    ld b, e                                       ; $41CD: $43
    ld [$0002], sp                                ; $41CE: $08 $02 $00
    nop                                           ; $41D1: $00
    nop                                           ; $41D2: $00
    nop                                           ; $41D3: $00
    rlca                                          ; $41D4: $07
    or $42                                        ; $41D5: $F6 $42
    jr jr_003_41DB                                ; $41D7: $18 $02

    nop                                           ; $41D9: $00
    nop                                           ; $41DA: $00

jr_003_41DB:
    nop                                           ; $41DB: $00
    nop                                           ; $41DC: $00
    rlca                                          ; $41DD: $07
    call c, $0042                                 ; $41DE: $DC $42 $00
    inc d                                         ; $41E1: $14
    nop                                           ; $41E2: $00
    nop                                           ; $41E3: $00
    nop                                           ; $41E4: $00
    nop                                           ; $41E5: $00
    rlca                                          ; $41E6: $07
    ld [$0042], a                                 ; $41E7: $EA $42 $00
    inc d                                         ; $41EA: $14
    nop                                           ; $41EB: $00
    nop                                           ; $41EC: $00
    nop                                           ; $41ED: $00
    nop                                           ; $41EE: $00
    rlca                                          ; $41EF: $07
    jr nz, jr_003_4235                            ; $41F0: $20 $43

    inc b                                         ; $41F2: $04
    nop                                           ; $41F3: $00
    nop                                           ; $41F4: $00
    nop                                           ; $41F5: $00
    nop                                           ; $41F6: $00
    nop                                           ; $41F7: $00
    rlca                                          ; $41F8: $07
    ld [hl], $43                                  ; $41F9: $36 $43
    inc c                                         ; $41FB: $0C
    rst RST_38                                    ; $41FC: $FF
    nop                                           ; $41FD: $00
    nop                                           ; $41FE: $00
    nop                                           ; $41FF: $00
    nop                                           ; $4200: $00
    rlca                                          ; $4201: $07
    ld [$0042], a                                 ; $4202: $EA $42 $00
    inc a                                         ; $4205: $3C
    nop                                           ; $4206: $00
    nop                                           ; $4207: $00
    nop                                           ; $4208: $00
    nop                                           ; $4209: $00
    rlca                                          ; $420A: $07
    ld [$0042], a                                 ; $420B: $EA $42 $00
    inc a                                         ; $420E: $3C
    nop                                           ; $420F: $00
    nop                                           ; $4210: $00
    nop                                           ; $4211: $00
    nop                                           ; $4212: $00
    rlca                                          ; $4213: $07
    ld [$0042], a                                 ; $4214: $EA $42 $00
    inc a                                         ; $4217: $3C
    nop                                           ; $4218: $00
    nop                                           ; $4219: $00
    nop                                           ; $421A: $00
    nop                                           ; $421B: $00
    rlca                                          ; $421C: $07
    ld d, [hl]                                    ; $421D: $56
    ld b, e                                       ; $421E: $43
    nop                                           ; $421F: $00
    inc a                                         ; $4220: $3C
    nop                                           ; $4221: $00
    nop                                           ; $4222: $00
    nop                                           ; $4223: $00
    nop                                           ; $4224: $00
    rlca                                          ; $4225: $07
    ld [hl], $43                                  ; $4226: $36 $43
    nop                                           ; $4228: $00
    inc a                                         ; $4229: $3C
    nop                                           ; $422A: $00
    nop                                           ; $422B: $00
    nop                                           ; $422C: $00
    nop                                           ; $422D: $00
    rlca                                          ; $422E: $07
    jr nz, jr_003_4274                            ; $422F: $20 $43

    nop                                           ; $4231: $00
    inc a                                         ; $4232: $3C
    nop                                           ; $4233: $00
    nop                                           ; $4234: $00

jr_003_4235:
    nop                                           ; $4235: $00
    nop                                           ; $4236: $00
    ld a, $00                                     ; $4237: $3E $00
    nop                                           ; $4239: $00
    nop                                           ; $423A: $00
    nop                                           ; $423B: $00
    nop                                           ; $423C: $00
    nop                                           ; $423D: $00
    nop                                           ; $423E: $00
    nop                                           ; $423F: $00
    rlca                                          ; $4240: $07
    and a                                         ; $4241: $A7
    ld c, l                                       ; $4242: $4D
    inc c                                         ; $4243: $0C
    ld b, $00                                     ; $4244: $06 $00
    nop                                           ; $4246: $00
    nop                                           ; $4247: $00
    nop                                           ; $4248: $00
    rlca                                          ; $4249: $07
    cp c                                          ; $424A: $B9
    ld c, l                                       ; $424B: $4D
    ld [$0003], sp                                ; $424C: $08 $03 $00
    nop                                           ; $424F: $00
    nop                                           ; $4250: $00
    nop                                           ; $4251: $00
    rlca                                          ; $4252: $07
    cp c                                          ; $4253: $B9
    ld c, l                                       ; $4254: $4D
    ld [$0004], sp                                ; $4255: $08 $04 $00
    nop                                           ; $4258: $00
    nop                                           ; $4259: $00
    nop                                           ; $425A: $00
    rlca                                          ; $425B: $07
    bit 1, l                                      ; $425C: $CB $4D
    nop                                           ; $425E: $00
    nop                                           ; $425F: $00
    nop                                           ; $4260: $00
    nop                                           ; $4261: $00
    nop                                           ; $4262: $00
    nop                                           ; $4263: $00
    rlca                                          ; $4264: $07
    pop de                                        ; $4265: $D1
    ld c, l                                       ; $4266: $4D
    inc e                                         ; $4267: $1C
    ld [bc], a                                    ; $4268: $02
    nop                                           ; $4269: $00
    nop                                           ; $426A: $00
    nop                                           ; $426B: $00
    nop                                           ; $426C: $00
    rlca                                          ; $426D: $07
    pop de                                        ; $426E: $D1
    ld c, l                                       ; $426F: $4D
    inc e                                         ; $4270: $1C
    ld [bc], a                                    ; $4271: $02
    nop                                           ; $4272: $00
    nop                                           ; $4273: $00

jr_003_4274:
    nop                                           ; $4274: $00
    nop                                           ; $4275: $00
    rlca                                          ; $4276: $07
    di                                            ; $4277: $F3
    ld c, l                                       ; $4278: $4D
    inc e                                         ; $4279: $1C
    ld [bc], a                                    ; $427A: $02
    nop                                           ; $427B: $00
    nop                                           ; $427C: $00
    nop                                           ; $427D: $00
    nop                                           ; $427E: $00
    rlca                                          ; $427F: $07
    dec d                                         ; $4280: $15
    ld c, [hl]                                    ; $4281: $4E
    nop                                           ; $4282: $00
    nop                                           ; $4283: $00
    nop                                           ; $4284: $00
    nop                                           ; $4285: $00
    nop                                           ; $4286: $00
    nop                                           ; $4287: $00
    rlca                                          ; $4288: $07
    dec de                                        ; $4289: $1B
    ld c, [hl]                                    ; $428A: $4E
    nop                                           ; $428B: $00
    nop                                           ; $428C: $00
    nop                                           ; $428D: $00
    nop                                           ; $428E: $00
    nop                                           ; $428F: $00
    nop                                           ; $4290: $00
    rlca                                          ; $4291: $07
    ld hl, $004E                                  ; $4292: $21 $4E $00
    rst RST_38                                    ; $4295: $FF
    nop                                           ; $4296: $00
    nop                                           ; $4297: $00
    nop                                           ; $4298: $00
    nop                                           ; $4299: $00
    rlca                                          ; $429A: $07
    rst RST_28                                    ; $429B: $EF
    ld c, [hl]                                    ; $429C: $4E
    ld [$0004], sp                                ; $429D: $08 $04 $00
    nop                                           ; $42A0: $00
    nop                                           ; $42A1: $00
    nop                                           ; $42A2: $00
    rlca                                          ; $42A3: $07
    ld sp, hl                                     ; $42A4: $F9
    ld c, [hl]                                    ; $42A5: $4E
    ld [$00FF], sp                                ; $42A6: $08 $FF $00
    nop                                           ; $42A9: $00
    nop                                           ; $42AA: $00
    nop                                           ; $42AB: $00
    rlca                                          ; $42AC: $07
    rra                                           ; $42AD: $1F
    ld c, a                                       ; $42AE: $4F
    inc d                                         ; $42AF: $14
    ld bc, $0401                                  ; $42B0: $01 $01 $04
    add b                                         ; $42B3: $80
    nop                                           ; $42B4: $00
    rlca                                          ; $42B5: $07
    reti                                          ; $42B6: $D9


    ld c, a                                       ; $42B7: $4F
    inc b                                         ; $42B8: $04
    ld [bc], a                                    ; $42B9: $02
    nop                                           ; $42BA: $00
    nop                                           ; $42BB: $00
    nop                                           ; $42BC: $00
    nop                                           ; $42BD: $00
    rlca                                          ; $42BE: $07
    ld e, a                                       ; $42BF: $5F
    ld c, a                                       ; $42C0: $4F
    inc b                                         ; $42C1: $04
    ld a, [bc]                                    ; $42C2: $0A
    nop                                           ; $42C3: $00
    nop                                           ; $42C4: $00
    nop                                           ; $42C5: $00
    nop                                           ; $42C6: $00
    rlca                                          ; $42C7: $07
    add hl, sp                                    ; $42C8: $39
    ld c, a                                       ; $42C9: $4F
    inc d                                         ; $42CA: $14
    dec b                                         ; $42CB: $05
    nop                                           ; $42CC: $00
    nop                                           ; $42CD: $00
    nop                                           ; $42CE: $00
    nop                                           ; $42CF: $00
    rlca                                          ; $42D0: $07
    ld d, e                                       ; $42D1: $53
    ld c, a                                       ; $42D2: $4F
    nop                                           ; $42D3: $00
    dec b                                         ; $42D4: $05
    nop                                           ; $42D5: $00
    nop                                           ; $42D6: $00
    nop                                           ; $42D7: $00
    nop                                           ; $42D8: $00
    rlca                                          ; $42D9: $07
    rlca                                          ; $42DA: $07
    ld c, a                                       ; $42DB: $4F
    jr nc, jr_003_42DE                            ; $42DC: $30 $00

jr_003_42DE:
    nop                                           ; $42DE: $00
    nop                                           ; $42DF: $00
    nop                                           ; $42E0: $00
    nop                                           ; $42E1: $00
    rlca                                          ; $42E2: $07
    ld a, d                                       ; $42E3: $7A
    ld b, d                                       ; $42E4: $42
    ld [$0001], sp                                ; $42E5: $08 $01 $00
    nop                                           ; $42E8: $00
    nop                                           ; $42E9: $00
    nop                                           ; $42EA: $00
    rlca                                          ; $42EB: $07
    jp hl                                         ; $42EC: $E9


    ld c, l                                       ; $42ED: $4D
    ld [$00FF], sp                                ; $42EE: $08 $FF $00
    nop                                           ; $42F1: $00
    nop                                           ; $42F2: $00
    nop                                           ; $42F3: $00
    rlca                                          ; $42F4: $07
    ld de, $084F                                  ; $42F5: $11 $4F $08
    inc bc                                        ; $42F8: $03
    nop                                           ; $42F9: $00
    nop                                           ; $42FA: $00
    nop                                           ; $42FB: $00
    nop                                           ; $42FC: $00
    rlca                                          ; $42FD: $07
    dec hl                                        ; $42FE: $2B
    ld c, [hl]                                    ; $42FF: $4E
    ld [$0200], sp                                ; $4300: $08 $00 $02
    inc bc                                        ; $4303: $03
    nop                                           ; $4304: $00
    nop                                           ; $4305: $00
    rlca                                          ; $4306: $07
    add hl, sp                                    ; $4307: $39
    ld c, [hl]                                    ; $4308: $4E
    inc c                                         ; $4309: $0C
    nop                                           ; $430A: $00
    ld [bc], a                                    ; $430B: $02
    inc b                                         ; $430C: $04
    nop                                           ; $430D: $00
    nop                                           ; $430E: $00
    rlca                                          ; $430F: $07
    ld c, e                                       ; $4310: $4B
    ld c, [hl]                                    ; $4311: $4E
    inc c                                         ; $4312: $0C
    ld [bc], a                                    ; $4313: $02
    inc bc                                        ; $4314: $03
    inc b                                         ; $4315: $04
    ld bc, $0700                                  ; $4316: $01 $00 $07
    ld e, l                                       ; $4319: $5D
    ld c, [hl]                                    ; $431A: $4E
    ld [$0200], sp                                ; $431B: $08 $00 $02
    inc b                                         ; $431E: $04
    nop                                           ; $431F: $00
    nop                                           ; $4320: $00
    rlca                                          ; $4321: $07
    ld l, e                                       ; $4322: $6B
    ld c, [hl]                                    ; $4323: $4E
    ld [$0200], sp                                ; $4324: $08 $00 $02
    inc b                                         ; $4327: $04
    inc b                                         ; $4328: $04
    nop                                           ; $4329: $00
    rlca                                          ; $432A: $07
    ld a, c                                       ; $432B: $79
    ld c, [hl]                                    ; $432C: $4E
    db $10                                        ; $432D: $10
    ld [bc], a                                    ; $432E: $02
    inc bc                                        ; $432F: $03
    ld b, $05                                     ; $4330: $06 $05
    nop                                           ; $4332: $00
    rlca                                          ; $4333: $07
    adc a                                         ; $4334: $8F
    ld c, [hl]                                    ; $4335: $4E
    db $10                                        ; $4336: $10
    ld bc, $0302                                  ; $4337: $01 $02 $03
    ld [$0700], sp                                ; $433A: $08 $00 $07
    and l                                         ; $433D: $A5
    ld c, [hl]                                    ; $433E: $4E
    db $10                                        ; $433F: $10
    ld bc, $0302                                  ; $4340: $01 $02 $03
    ld [$0700], sp                                ; $4343: $08 $00 $07
    adc c                                         ; $4346: $89
    ld d, b                                       ; $4347: $50
    db $10                                        ; $4348: $10
    ld bc, $0302                                  ; $4349: $01 $02 $03
    add hl, bc                                    ; $434C: $09
    nop                                           ; $434D: $00
    rlca                                          ; $434E: $07
    and a                                         ; $434F: $A7
    ld c, l                                       ; $4350: $4D
    stop                                          ; $4351: $10 $00
    rst RST_38                                    ; $4353: $FF
    ld [$000F], sp                                ; $4354: $08 $0F $00
    rlca                                          ; $4357: $07
    db $E3                                        ; $4358: $E3
    ld c, a                                       ; $4359: $4F
    inc c                                         ; $435A: $0C
    ld bc, $0305                                  ; $435B: $01 $05 $03
    ld hl, $0700                                  ; $435E: $21 $00 $07
    ld sp, hl                                     ; $4361: $F9
    ld c, a                                       ; $4362: $4F
    jr jr_003_4366                                ; $4363: $18 $01

    inc b                                         ; $4365: $04

jr_003_4366:
    ld [$0001], sp                                ; $4366: $08 $01 $00
    rlca                                          ; $4369: $07
    inc hl                                        ; $436A: $23
    ld d, b                                       ; $436B: $50
    db $10                                        ; $436C: $10
    ld b, $02                                     ; $436D: $06 $02
    inc b                                         ; $436F: $04
    nop                                           ; $4370: $00
    nop                                           ; $4371: $00
    rlca                                          ; $4372: $07
    dec a                                         ; $4373: $3D
    ld d, b                                       ; $4374: $50
    inc e                                         ; $4375: $1C
    ld bc, $0402                                  ; $4376: $01 $02 $04
    stop                                          ; $4379: $10 $00
    rlca                                          ; $437B: $07
    and a                                         ; $437C: $A7
    ld c, l                                       ; $437D: $4D
    inc c                                         ; $437E: $0C
    ld bc, $1101                                  ; $437F: $01 $01 $11
    ld h, c                                       ; $4382: $61
    nop                                           ; $4383: $00
    rlca                                          ; $4384: $07
    ld c, a                                       ; $4385: $4F
    ld d, b                                       ; $4386: $50
    inc c                                         ; $4387: $0C
    ld bc, $0801                                  ; $4388: $01 $01 $08
    ld hl, $0700                                  ; $438B: $21 $00 $07
    cp [hl]                                       ; $438E: $BE
    ld b, b                                       ; $438F: $40
    inc c                                         ; $4390: $0C
    nop                                           ; $4391: $00
    ld bc, $B208                                  ; $4392: $01 $08 $B2
    nop                                           ; $4395: $00
    rlca                                          ; $4396: $07
    cp e                                          ; $4397: $BB
    ld c, [hl]                                    ; $4398: $4E
    inc c                                         ; $4399: $0C
    ld a, [bc]                                    ; $439A: $0A
    nop                                           ; $439B: $00
    nop                                           ; $439C: $00
    nop                                           ; $439D: $00
    nop                                           ; $439E: $00
    rlca                                          ; $439F: $07
    reti                                          ; $43A0: $D9


    ld c, [hl]                                    ; $43A1: $4E
    nop                                           ; $43A2: $00
    nop                                           ; $43A3: $00
    nop                                           ; $43A4: $00
    nop                                           ; $43A5: $00
    nop                                           ; $43A6: $00
    nop                                           ; $43A7: $00
    rlca                                          ; $43A8: $07
    dec d                                         ; $43A9: $15
    ld c, [hl]                                    ; $43AA: $4E
    nop                                           ; $43AB: $00
    dec b                                         ; $43AC: $05
    nop                                           ; $43AD: $00
    nop                                           ; $43AE: $00
    nop                                           ; $43AF: $00
    nop                                           ; $43B0: $00
    rlca                                          ; $43B1: $07
    ld e, c                                       ; $43B2: $59
    ld c, a                                       ; $43B3: $4F
    nop                                           ; $43B4: $00
    dec b                                         ; $43B5: $05
    nop                                           ; $43B6: $00
    nop                                           ; $43B7: $00
    nop                                           ; $43B8: $00
    nop                                           ; $43B9: $00
    rlca                                          ; $43BA: $07
    ld e, c                                       ; $43BB: $59
    ld c, a                                       ; $43BC: $4F
    inc b                                         ; $43BD: $04
    rst RST_38                                    ; $43BE: $FF
    nop                                           ; $43BF: $00
    nop                                           ; $43C0: $00
    nop                                           ; $43C1: $00
    nop                                           ; $43C2: $00
    rlca                                          ; $43C3: $07
    ld e, c                                       ; $43C4: $59
    ld c, a                                       ; $43C5: $4F
    nop                                           ; $43C6: $00
    dec b                                         ; $43C7: $05
    nop                                           ; $43C8: $00
    nop                                           ; $43C9: $00
    nop                                           ; $43CA: $00
    nop                                           ; $43CB: $00
    rlca                                          ; $43CC: $07
    ld h, a                                       ; $43CD: $67
    ld c, a                                       ; $43CE: $4F
    nop                                           ; $43CF: $00
    dec b                                         ; $43D0: $05
    nop                                           ; $43D1: $00
    nop                                           ; $43D2: $00
    nop                                           ; $43D3: $00
    nop                                           ; $43D4: $00
    rlca                                          ; $43D5: $07
    ld l, l                                       ; $43D6: $6D
    ld c, a                                       ; $43D7: $4F
    nop                                           ; $43D8: $00
    dec b                                         ; $43D9: $05
    nop                                           ; $43DA: $00
    nop                                           ; $43DB: $00
    nop                                           ; $43DC: $00
    nop                                           ; $43DD: $00
    rlca                                          ; $43DE: $07
    sub c                                         ; $43DF: $91
    ld c, a                                       ; $43E0: $4F
    db $10                                        ; $43E1: $10
    dec b                                         ; $43E2: $05
    nop                                           ; $43E3: $00
    nop                                           ; $43E4: $00
    nop                                           ; $43E5: $00
    nop                                           ; $43E6: $00
    rlca                                          ; $43E7: $07
    or e                                          ; $43E8: $B3
    ld c, a                                       ; $43E9: $4F
    inc c                                         ; $43EA: $0C
    rst RST_38                                    ; $43EB: $FF
    nop                                           ; $43EC: $00
    nop                                           ; $43ED: $00
    nop                                           ; $43EE: $00
    nop                                           ; $43EF: $00
    rlca                                          ; $43F0: $07
    push bc                                       ; $43F1: $C5
    ld c, a                                       ; $43F2: $4F
    nop                                           ; $43F3: $00
    nop                                           ; $43F4: $00
    nop                                           ; $43F5: $00
    nop                                           ; $43F6: $00
    nop                                           ; $43F7: $00
    nop                                           ; $43F8: $00
    rlca                                          ; $43F9: $07
    and a                                         ; $43FA: $A7
    ld c, a                                       ; $43FB: $4F
    jr jr_003_43FE                                ; $43FC: $18 $00

jr_003_43FE:
    nop                                           ; $43FE: $00
    nop                                           ; $43FF: $00
    nop                                           ; $4400: $00
    nop                                           ; $4401: $00
    rlca                                          ; $4402: $07
    push bc                                       ; $4403: $C5
    ld c, a                                       ; $4404: $4F
    ld [$0002], sp                                ; $4405: $08 $02 $00
    nop                                           ; $4408: $00
    nop                                           ; $4409: $00
    nop                                           ; $440A: $00
    rlca                                          ; $440B: $07
    ld [hl], e                                    ; $440C: $73
    ld c, a                                       ; $440D: $4F
    jr jr_003_4412                                ; $440E: $18 $02

    nop                                           ; $4410: $00
    nop                                           ; $4411: $00

jr_003_4412:
    nop                                           ; $4412: $00
    nop                                           ; $4413: $00
    rlca                                          ; $4414: $07
    ld e, c                                       ; $4415: $59
    ld c, a                                       ; $4416: $4F
    nop                                           ; $4417: $00
    inc d                                         ; $4418: $14
    nop                                           ; $4419: $00
    nop                                           ; $441A: $00
    nop                                           ; $441B: $00
    nop                                           ; $441C: $00
    rlca                                          ; $441D: $07
    ld h, a                                       ; $441E: $67
    ld c, a                                       ; $441F: $4F
    nop                                           ; $4420: $00
    inc d                                         ; $4421: $14
    nop                                           ; $4422: $00
    nop                                           ; $4423: $00
    nop                                           ; $4424: $00
    nop                                           ; $4425: $00
    rlca                                          ; $4426: $07
    sbc l                                         ; $4427: $9D
    ld c, a                                       ; $4428: $4F
    inc b                                         ; $4429: $04
    nop                                           ; $442A: $00
    nop                                           ; $442B: $00
    nop                                           ; $442C: $00
    nop                                           ; $442D: $00
    nop                                           ; $442E: $00
    rlca                                          ; $442F: $07
    or e                                          ; $4430: $B3
    ld c, a                                       ; $4431: $4F
    inc c                                         ; $4432: $0C
    rst RST_38                                    ; $4433: $FF
    nop                                           ; $4434: $00
    nop                                           ; $4435: $00
    nop                                           ; $4436: $00
    nop                                           ; $4437: $00
    rlca                                          ; $4438: $07
    ld h, a                                       ; $4439: $67
    ld c, a                                       ; $443A: $4F
    nop                                           ; $443B: $00
    inc a                                         ; $443C: $3C
    nop                                           ; $443D: $00
    nop                                           ; $443E: $00
    nop                                           ; $443F: $00
    nop                                           ; $4440: $00
    rlca                                          ; $4441: $07
    ld h, a                                       ; $4442: $67
    ld c, a                                       ; $4443: $4F
    nop                                           ; $4444: $00
    inc a                                         ; $4445: $3C
    nop                                           ; $4446: $00
    nop                                           ; $4447: $00
    nop                                           ; $4448: $00
    nop                                           ; $4449: $00
    rlca                                          ; $444A: $07
    ld h, a                                       ; $444B: $67
    ld c, a                                       ; $444C: $4F
    nop                                           ; $444D: $00
    inc a                                         ; $444E: $3C
    nop                                           ; $444F: $00
    nop                                           ; $4450: $00
    nop                                           ; $4451: $00
    nop                                           ; $4452: $00
    rlca                                          ; $4453: $07
    db $D3                                        ; $4454: $D3
    ld c, a                                       ; $4455: $4F
    nop                                           ; $4456: $00
    inc a                                         ; $4457: $3C
    nop                                           ; $4458: $00
    nop                                           ; $4459: $00
    nop                                           ; $445A: $00
    nop                                           ; $445B: $00
    rlca                                          ; $445C: $07
    or e                                          ; $445D: $B3
    ld c, a                                       ; $445E: $4F
    nop                                           ; $445F: $00
    inc a                                         ; $4460: $3C
    nop                                           ; $4461: $00
    nop                                           ; $4462: $00
    nop                                           ; $4463: $00
    nop                                           ; $4464: $00
    rlca                                          ; $4465: $07
    sbc l                                         ; $4466: $9D
    ld c, a                                       ; $4467: $4F
    nop                                           ; $4468: $00
    inc a                                         ; $4469: $3C
    nop                                           ; $446A: $00
    nop                                           ; $446B: $00
    nop                                           ; $446C: $00
    nop                                           ; $446D: $00
    ld a, $00                                     ; $446E: $3E $00
    nop                                           ; $4470: $00
    nop                                           ; $4471: $00
    nop                                           ; $4472: $00
    nop                                           ; $4473: $00
    nop                                           ; $4474: $00
    nop                                           ; $4475: $00
    nop                                           ; $4476: $00
    ld [$402A], sp                                ; $4477: $08 $2A $40
    inc c                                         ; $447A: $0C
    ld b, $00                                     ; $447B: $06 $00
    nop                                           ; $447D: $00
    nop                                           ; $447E: $00
    nop                                           ; $447F: $00
    ld [$403C], sp                                ; $4480: $08 $3C $40
    ld [$0003], sp                                ; $4483: $08 $03 $00
    nop                                           ; $4486: $00
    nop                                           ; $4487: $00
    nop                                           ; $4488: $00
    ld [$404E], sp                                ; $4489: $08 $4E $40
    ld [$0004], sp                                ; $448C: $08 $04 $00
    nop                                           ; $448F: $00
    nop                                           ; $4490: $00
    nop                                           ; $4491: $00
    ld [$4060], sp                                ; $4492: $08 $60 $40
    nop                                           ; $4495: $00
    nop                                           ; $4496: $00
    nop                                           ; $4497: $00
    nop                                           ; $4498: $00
    nop                                           ; $4499: $00
    nop                                           ; $449A: $00
    ld [$4066], sp                                ; $449B: $08 $66 $40
    inc e                                         ; $449E: $1C
    dec b                                         ; $449F: $05
    nop                                           ; $44A0: $00
    nop                                           ; $44A1: $00
    nop                                           ; $44A2: $00
    nop                                           ; $44A3: $00
    ld [$4088], sp                                ; $44A4: $08 $88 $40
    inc e                                         ; $44A7: $1C
    dec b                                         ; $44A8: $05
    nop                                           ; $44A9: $00
    nop                                           ; $44AA: $00
    nop                                           ; $44AB: $00
    nop                                           ; $44AC: $00
    ld [$40AA], sp                                ; $44AD: $08 $AA $40
    inc e                                         ; $44B0: $1C
    dec b                                         ; $44B1: $05
    nop                                           ; $44B2: $00
    nop                                           ; $44B3: $00
    nop                                           ; $44B4: $00
    nop                                           ; $44B5: $00
    ld [$40CC], sp                                ; $44B6: $08 $CC $40
    nop                                           ; $44B9: $00
    nop                                           ; $44BA: $00
    nop                                           ; $44BB: $00
    nop                                           ; $44BC: $00
    nop                                           ; $44BD: $00
    nop                                           ; $44BE: $00
    ld [$40D2], sp                                ; $44BF: $08 $D2 $40
    nop                                           ; $44C2: $00
    nop                                           ; $44C3: $00
    nop                                           ; $44C4: $00
    nop                                           ; $44C5: $00
    nop                                           ; $44C6: $00
    nop                                           ; $44C7: $00
    ld [$40D8], sp                                ; $44C8: $08 $D8 $40
    nop                                           ; $44CB: $00
    rst RST_38                                    ; $44CC: $FF
    nop                                           ; $44CD: $00
    nop                                           ; $44CE: $00
    nop                                           ; $44CF: $00
    nop                                           ; $44D0: $00
    ld [$4180], sp                                ; $44D1: $08 $80 $41
    ld [$0004], sp                                ; $44D4: $08 $04 $00
    nop                                           ; $44D7: $00
    nop                                           ; $44D8: $00
    nop                                           ; $44D9: $00
    ld [$418A], sp                                ; $44DA: $08 $8A $41
    ld [$00FF], sp                                ; $44DD: $08 $FF $00
    nop                                           ; $44E0: $00
    nop                                           ; $44E1: $00
    nop                                           ; $44E2: $00
    ld [$41A2], sp                                ; $44E3: $08 $A2 $41
    db $10                                        ; $44E6: $10
    ld bc, $0401                                  ; $44E7: $01 $01 $04
    add b                                         ; $44EA: $80
    nop                                           ; $44EB: $00
    ld [$42A0], sp                                ; $44EC: $08 $A0 $42
    inc b                                         ; $44EF: $04
    ld [bc], a                                    ; $44F0: $02
    nop                                           ; $44F1: $00
    nop                                           ; $44F2: $00
    nop                                           ; $44F3: $00
    nop                                           ; $44F4: $00
    ld [$4226], sp                                ; $44F5: $08 $26 $42
    inc b                                         ; $44F8: $04
    ld a, [bc]                                    ; $44F9: $0A
    nop                                           ; $44FA: $00
    nop                                           ; $44FB: $00
    nop                                           ; $44FC: $00
    nop                                           ; $44FD: $00
    ld [$41E2], sp                                ; $44FE: $08 $E2 $41
    jr @+$07                                      ; $4501: $18 $05

    nop                                           ; $4503: $00
    nop                                           ; $4504: $00
    nop                                           ; $4505: $00
    nop                                           ; $4506: $00
    ld [$421A], sp                                ; $4507: $08 $1A $42
    ld [$0005], sp                                ; $450A: $08 $05 $00
    nop                                           ; $450D: $00
    nop                                           ; $450E: $00
    nop                                           ; $450F: $00
    ld [$4198], sp                                ; $4510: $08 $98 $41
    jr nc, jr_003_4515                            ; $4513: $30 $00

jr_003_4515:
    nop                                           ; $4515: $00
    nop                                           ; $4516: $00
    nop                                           ; $4517: $00
    nop                                           ; $4518: $00
    ld [$41B8], sp                                ; $4519: $08 $B8 $41
    ld [$0001], sp                                ; $451C: $08 $01 $00
    nop                                           ; $451F: $00
    nop                                           ; $4520: $00
    nop                                           ; $4521: $00
    ld [$407E], sp                                ; $4522: $08 $7E $40
    inc b                                         ; $4525: $04
    rst RST_38                                    ; $4526: $FF
    nop                                           ; $4527: $00
    nop                                           ; $4528: $00
    nop                                           ; $4529: $00
    nop                                           ; $452A: $00
    ld [$41D4], sp                                ; $452B: $08 $D4 $41
    ld [$0003], sp                                ; $452E: $08 $03 $00
    nop                                           ; $4531: $00
    nop                                           ; $4532: $00
    nop                                           ; $4533: $00
    ld [$40E2], sp                                ; $4534: $08 $E2 $40
    ld [$0200], sp                                ; $4537: $08 $00 $02
    inc bc                                        ; $453A: $03
    nop                                           ; $453B: $00
    nop                                           ; $453C: $00
    ld [$40F0], sp                                ; $453D: $08 $F0 $40
    ld [$0200], sp                                ; $4540: $08 $00 $02
    inc b                                         ; $4543: $04
    nop                                           ; $4544: $00
    nop                                           ; $4545: $00
    ld [$40FE], sp                                ; $4546: $08 $FE $40
    db $10                                        ; $4549: $10
    ld [bc], a                                    ; $454A: $02
    inc bc                                        ; $454B: $03
    inc b                                         ; $454C: $04
    ld bc, $0800                                  ; $454D: $01 $00 $08
    inc d                                         ; $4550: $14
    ld b, c                                       ; $4551: $41
    ld [$0200], sp                                ; $4552: $08 $00 $02
    inc b                                         ; $4555: $04
    nop                                           ; $4556: $00
    nop                                           ; $4557: $00
    ld [$4122], sp                                ; $4558: $08 $22 $41
    ld [$0200], sp                                ; $455B: $08 $00 $02
    inc b                                         ; $455E: $04
    inc b                                         ; $455F: $04
    nop                                           ; $4560: $00
    ld [$4130], sp                                ; $4561: $08 $30 $41
    ld [$0304], sp                                ; $4564: $08 $04 $03
    ld b, $05                                     ; $4567: $06 $05
    nop                                           ; $4569: $00
    ld [$413E], sp                                ; $456A: $08 $3E $41
    db $10                                        ; $456D: $10
    ld bc, $0302                                  ; $456E: $01 $02 $03
    ld [$0800], sp                                ; $4571: $08 $00 $08
    ld d, h                                       ; $4574: $54
    ld b, c                                       ; $4575: $41
    db $10                                        ; $4576: $10
    ld bc, $0302                                  ; $4577: $01 $02 $03
    ld [$0800], sp                                ; $457A: $08 $00 $08
    jp nc, $1043                                  ; $457D: $D2 $43 $10

    ld bc, $0302                                  ; $4580: $01 $02 $03
    add hl, bc                                    ; $4583: $09
    nop                                           ; $4584: $00
    ld [$42AA], sp                                ; $4585: $08 $AA $42
    inc c                                         ; $4588: $0C
    nop                                           ; $4589: $00
    rst RST_38                                    ; $458A: $FF
    ld [$000F], sp                                ; $458B: $08 $0F $00
    ld [$42D2], sp                                ; $458E: $08 $D2 $42
    inc c                                         ; $4591: $0C
    nop                                           ; $4592: $00
    dec b                                         ; $4593: $05
    ld [$0021], sp                                ; $4594: $08 $21 $00
    ld [$42E8], sp                                ; $4597: $08 $E8 $42
    jr jr_003_459D                                ; $459A: $18 $01

    inc b                                         ; $459C: $04

jr_003_459D:
    ld [$0001], sp                                ; $459D: $08 $01 $00
    ld [$42FA], sp                                ; $45A0: $08 $FA $42
    db $10                                        ; $45A3: $10
    ld [bc], a                                    ; $45A4: $02
    ld [bc], a                                    ; $45A5: $02
    inc b                                         ; $45A6: $04
    nop                                           ; $45A7: $00
    nop                                           ; $45A8: $00
    ld [$430C], sp                                ; $45A9: $08 $0C $43
    inc e                                         ; $45AC: $1C
    ld bc, $0402                                  ; $45AD: $01 $02 $04
    stop                                          ; $45B0: $10 $00
    ld [$42BC], sp                                ; $45B2: $08 $BC $42
    db $10                                        ; $45B5: $10
    ld bc, $1101                                  ; $45B6: $01 $01 $11
    ld l, l                                       ; $45B9: $6D
    nop                                           ; $45BA: $00
    ld [$431A], sp                                ; $45BB: $08 $1A $43
    inc c                                         ; $45BE: $0C
    ld bc, $0B01                                  ; $45BF: $01 $01 $0B
    stop                                          ; $45C2: $10 $00
    ld [$4374], sp                                ; $45C4: $08 $74 $43
    inc c                                         ; $45C7: $0C
    inc bc                                        ; $45C8: $03
    ld bc, $B208                                  ; $45C9: $01 $08 $B2
    nop                                           ; $45CC: $00
    ld [$416A], sp                                ; $45CD: $08 $6A $41
    inc c                                         ; $45D0: $0C
    ld a, [bc]                                    ; $45D1: $0A
    nop                                           ; $45D2: $00
    nop                                           ; $45D3: $00
    nop                                           ; $45D4: $00
    nop                                           ; $45D5: $00
    ld [$402A], sp                                ; $45D6: $08 $2A $40
    nop                                           ; $45D9: $00
    nop                                           ; $45DA: $00
    nop                                           ; $45DB: $00
    nop                                           ; $45DC: $00
    nop                                           ; $45DD: $00
    nop                                           ; $45DE: $00
    ld [$40CC], sp                                ; $45DF: $08 $CC $40
    nop                                           ; $45E2: $00
    dec b                                         ; $45E3: $05
    nop                                           ; $45E4: $00
    nop                                           ; $45E5: $00
    nop                                           ; $45E6: $00
    nop                                           ; $45E7: $00
    ld [$4220], sp                                ; $45E8: $08 $20 $42
    nop                                           ; $45EB: $00
    dec b                                         ; $45EC: $05
    nop                                           ; $45ED: $00
    nop                                           ; $45EE: $00
    nop                                           ; $45EF: $00
    nop                                           ; $45F0: $00
    ld [$4220], sp                                ; $45F1: $08 $20 $42
    inc b                                         ; $45F4: $04
    rst RST_38                                    ; $45F5: $FF
    nop                                           ; $45F6: $00
    nop                                           ; $45F7: $00
    nop                                           ; $45F8: $00
    nop                                           ; $45F9: $00
    ld [$4220], sp                                ; $45FA: $08 $20 $42
    nop                                           ; $45FD: $00
    dec b                                         ; $45FE: $05
    nop                                           ; $45FF: $00
    nop                                           ; $4600: $00
    nop                                           ; $4601: $00
    nop                                           ; $4602: $00
    ld [$422E], sp                                ; $4603: $08 $2E $42
    nop                                           ; $4606: $00
    dec b                                         ; $4607: $05
    nop                                           ; $4608: $00
    nop                                           ; $4609: $00
    nop                                           ; $460A: $00
    nop                                           ; $460B: $00
    ld [$4234], sp                                ; $460C: $08 $34 $42
    nop                                           ; $460F: $00
    dec b                                         ; $4610: $05
    nop                                           ; $4611: $00
    nop                                           ; $4612: $00
    nop                                           ; $4613: $00
    nop                                           ; $4614: $00
    ld [$4258], sp                                ; $4615: $08 $58 $42
    db $10                                        ; $4618: $10
    dec b                                         ; $4619: $05
    nop                                           ; $461A: $00
    nop                                           ; $461B: $00
    nop                                           ; $461C: $00
    nop                                           ; $461D: $00
    ld [$427A], sp                                ; $461E: $08 $7A $42
    inc c                                         ; $4621: $0C
    rst RST_38                                    ; $4622: $FF
    nop                                           ; $4623: $00
    nop                                           ; $4624: $00
    nop                                           ; $4625: $00
    nop                                           ; $4626: $00
    ld [$428C], sp                                ; $4627: $08 $8C $42
    nop                                           ; $462A: $00
    nop                                           ; $462B: $00
    nop                                           ; $462C: $00
    nop                                           ; $462D: $00
    nop                                           ; $462E: $00
    nop                                           ; $462F: $00
    ld [$426E], sp                                ; $4630: $08 $6E $42
    jr jr_003_4635                                ; $4633: $18 $00

jr_003_4635:
    nop                                           ; $4635: $00
    nop                                           ; $4636: $00
    nop                                           ; $4637: $00
    nop                                           ; $4638: $00
    ld [$428C], sp                                ; $4639: $08 $8C $42
    ld [$0002], sp                                ; $463C: $08 $02 $00
    nop                                           ; $463F: $00
    nop                                           ; $4640: $00
    nop                                           ; $4641: $00
    ld [$423A], sp                                ; $4642: $08 $3A $42
    jr jr_003_4649                                ; $4645: $18 $02

    nop                                           ; $4647: $00
    nop                                           ; $4648: $00

jr_003_4649:
    nop                                           ; $4649: $00
    nop                                           ; $464A: $00
    ld [$4220], sp                                ; $464B: $08 $20 $42
    nop                                           ; $464E: $00
    inc d                                         ; $464F: $14
    nop                                           ; $4650: $00
    nop                                           ; $4651: $00
    nop                                           ; $4652: $00
    nop                                           ; $4653: $00
    ld [$422E], sp                                ; $4654: $08 $2E $42
    nop                                           ; $4657: $00
    inc d                                         ; $4658: $14
    nop                                           ; $4659: $00
    nop                                           ; $465A: $00
    nop                                           ; $465B: $00
    nop                                           ; $465C: $00
    ld [$4264], sp                                ; $465D: $08 $64 $42
    inc b                                         ; $4660: $04
    nop                                           ; $4661: $00
    nop                                           ; $4662: $00
    nop                                           ; $4663: $00
    nop                                           ; $4664: $00
    nop                                           ; $4665: $00
    ld [$427A], sp                                ; $4666: $08 $7A $42
    inc c                                         ; $4669: $0C
    rst RST_38                                    ; $466A: $FF
    nop                                           ; $466B: $00
    nop                                           ; $466C: $00
    nop                                           ; $466D: $00
    nop                                           ; $466E: $00
    ld [$422E], sp                                ; $466F: $08 $2E $42
    nop                                           ; $4672: $00
    inc a                                         ; $4673: $3C
    nop                                           ; $4674: $00
    nop                                           ; $4675: $00
    nop                                           ; $4676: $00
    nop                                           ; $4677: $00
    ld [$422E], sp                                ; $4678: $08 $2E $42
    nop                                           ; $467B: $00
    inc a                                         ; $467C: $3C
    nop                                           ; $467D: $00
    nop                                           ; $467E: $00
    nop                                           ; $467F: $00
    nop                                           ; $4680: $00
    ld [$422E], sp                                ; $4681: $08 $2E $42
    nop                                           ; $4684: $00
    inc a                                         ; $4685: $3C
    nop                                           ; $4686: $00
    nop                                           ; $4687: $00
    nop                                           ; $4688: $00
    nop                                           ; $4689: $00
    ld [$429A], sp                                ; $468A: $08 $9A $42
    nop                                           ; $468D: $00
    inc a                                         ; $468E: $3C
    nop                                           ; $468F: $00
    nop                                           ; $4690: $00
    nop                                           ; $4691: $00
    nop                                           ; $4692: $00
    ld [$427A], sp                                ; $4693: $08 $7A $42
    nop                                           ; $4696: $00
    inc a                                         ; $4697: $3C
    nop                                           ; $4698: $00
    nop                                           ; $4699: $00
    nop                                           ; $469A: $00
    nop                                           ; $469B: $00
    ld [$4264], sp                                ; $469C: $08 $64 $42
    nop                                           ; $469F: $00
    inc a                                         ; $46A0: $3C
    nop                                           ; $46A1: $00
    nop                                           ; $46A2: $00
    nop                                           ; $46A3: $00
    nop                                           ; $46A4: $00
    ld a, $00                                     ; $46A5: $3E $00
    nop                                           ; $46A7: $00
    nop                                           ; $46A8: $00
    nop                                           ; $46A9: $00
    nop                                           ; $46AA: $00
    nop                                           ; $46AB: $00
    nop                                           ; $46AC: $00
    nop                                           ; $46AD: $00
    ld [$50AB], sp                                ; $46AE: $08 $AB $50
    inc c                                         ; $46B1: $0C
    ld b, $00                                     ; $46B2: $06 $00
    nop                                           ; $46B4: $00
    nop                                           ; $46B5: $00
    nop                                           ; $46B6: $00
    ld [$50C1], sp                                ; $46B7: $08 $C1 $50
    ld [$0003], sp                                ; $46BA: $08 $03 $00
    nop                                           ; $46BD: $00
    nop                                           ; $46BE: $00
    nop                                           ; $46BF: $00
    ld [$50D3], sp                                ; $46C0: $08 $D3 $50
    ld [$0004], sp                                ; $46C3: $08 $04 $00
    nop                                           ; $46C6: $00
    nop                                           ; $46C7: $00
    nop                                           ; $46C8: $00
    ld [$50E5], sp                                ; $46C9: $08 $E5 $50
    nop                                           ; $46CC: $00
    nop                                           ; $46CD: $00
    nop                                           ; $46CE: $00
    nop                                           ; $46CF: $00
    nop                                           ; $46D0: $00
    nop                                           ; $46D1: $00
    ld [$50EB], sp                                ; $46D2: $08 $EB $50
    inc e                                         ; $46D5: $1C
    ld [bc], a                                    ; $46D6: $02
    nop                                           ; $46D7: $00
    nop                                           ; $46D8: $00
    nop                                           ; $46D9: $00
    nop                                           ; $46DA: $00
    ld [$50EB], sp                                ; $46DB: $08 $EB $50
    inc e                                         ; $46DE: $1C
    ld [bc], a                                    ; $46DF: $02
    nop                                           ; $46E0: $00
    nop                                           ; $46E1: $00
    nop                                           ; $46E2: $00
    nop                                           ; $46E3: $00
    ld [$50EB], sp                                ; $46E4: $08 $EB $50
    inc e                                         ; $46E7: $1C
    ld [bc], a                                    ; $46E8: $02
    nop                                           ; $46E9: $00
    nop                                           ; $46EA: $00
    nop                                           ; $46EB: $00
    nop                                           ; $46EC: $00
    ld [$510D], sp                                ; $46ED: $08 $0D $51
    nop                                           ; $46F0: $00
    nop                                           ; $46F1: $00
    nop                                           ; $46F2: $00
    nop                                           ; $46F3: $00
    nop                                           ; $46F4: $00
    nop                                           ; $46F5: $00
    ld [$511D], sp                                ; $46F6: $08 $1D $51
    nop                                           ; $46F9: $00
    nop                                           ; $46FA: $00
    nop                                           ; $46FB: $00
    nop                                           ; $46FC: $00
    nop                                           ; $46FD: $00
    nop                                           ; $46FE: $00
    ld [$5113], sp                                ; $46FF: $08 $13 $51
    nop                                           ; $4702: $00
    rst RST_38                                    ; $4703: $FF
    nop                                           ; $4704: $00
    nop                                           ; $4705: $00
    nop                                           ; $4706: $00
    nop                                           ; $4707: $00
    ld [$51D5], sp                                ; $4708: $08 $D5 $51
    ld [$0004], sp                                ; $470B: $08 $04 $00
    nop                                           ; $470E: $00
    nop                                           ; $470F: $00
    nop                                           ; $4710: $00
    ld [$51DF], sp                                ; $4711: $08 $DF $51
    ld [$00FF], sp                                ; $4714: $08 $FF $00
    nop                                           ; $4717: $00
    nop                                           ; $4718: $00
    nop                                           ; $4719: $00
    ld [$5205], sp                                ; $471A: $08 $05 $52
    inc c                                         ; $471D: $0C
    ld bc, $0401                                  ; $471E: $01 $01 $04
    add b                                         ; $4721: $80
    nop                                           ; $4722: $00
    ld [$52BB], sp                                ; $4723: $08 $BB $52
    inc b                                         ; $4726: $04
    ld [bc], a                                    ; $4727: $02
    nop                                           ; $4728: $00
    nop                                           ; $4729: $00
    nop                                           ; $472A: $00
    nop                                           ; $472B: $00
    ld [$5241], sp                                ; $472C: $08 $41 $52
    inc b                                         ; $472F: $04
    ld a, [bc]                                    ; $4730: $0A
    nop                                           ; $4731: $00
    nop                                           ; $4732: $00
    nop                                           ; $4733: $00
    nop                                           ; $4734: $00
    ld [$5217], sp                                ; $4735: $08 $17 $52
    jr @+$07                                      ; $4738: $18 $05

    nop                                           ; $473A: $00
    nop                                           ; $473B: $00
    nop                                           ; $473C: $00
    nop                                           ; $473D: $00
    ld [$5235], sp                                ; $473E: $08 $35 $52
    nop                                           ; $4741: $00
    dec b                                         ; $4742: $05
    nop                                           ; $4743: $00
    nop                                           ; $4744: $00
    nop                                           ; $4745: $00
    nop                                           ; $4746: $00
    ld [$51ED], sp                                ; $4747: $08 $ED $51
    jr nc, jr_003_474C                            ; $474A: $30 $00

jr_003_474C:
    nop                                           ; $474C: $00
    nop                                           ; $474D: $00
    nop                                           ; $474E: $00
    nop                                           ; $474F: $00
    ld [$41C6], sp                                ; $4750: $08 $C6 $41
    ld [$0001], sp                                ; $4753: $08 $01 $00
    nop                                           ; $4756: $00
    nop                                           ; $4757: $00
    nop                                           ; $4758: $00
    ld [$5103], sp                                ; $4759: $08 $03 $51
    ld [$00FF], sp                                ; $475C: $08 $FF $00
    nop                                           ; $475F: $00
    nop                                           ; $4760: $00
    nop                                           ; $4761: $00
    ld [$51F7], sp                                ; $4762: $08 $F7 $51
    ld [$0003], sp                                ; $4765: $08 $03 $00
    nop                                           ; $4768: $00
    nop                                           ; $4769: $00
    nop                                           ; $476A: $00
    ld [$5123], sp                                ; $476B: $08 $23 $51
    ld [$0200], sp                                ; $476E: $08 $00 $02
    inc bc                                        ; $4771: $03
    nop                                           ; $4772: $00
    nop                                           ; $4773: $00
    ld [$5131], sp                                ; $4774: $08 $31 $51
    ld [$0200], sp                                ; $4777: $08 $00 $02
    inc b                                         ; $477A: $04
    nop                                           ; $477B: $00
    nop                                           ; $477C: $00
    ld [$513F], sp                                ; $477D: $08 $3F $51
    db $10                                        ; $4780: $10
    ld [bc], a                                    ; $4781: $02
    inc bc                                        ; $4782: $03
    inc b                                         ; $4783: $04
    ld bc, $0800                                  ; $4784: $01 $00 $08
    ld d, l                                       ; $4787: $55
    ld d, c                                       ; $4788: $51
    ld [$0200], sp                                ; $4789: $08 $00 $02
    inc b                                         ; $478C: $04
    nop                                           ; $478D: $00
    nop                                           ; $478E: $00
    ld [$5163], sp                                ; $478F: $08 $63 $51
    ld [$0200], sp                                ; $4792: $08 $00 $02
    inc b                                         ; $4795: $04
    inc b                                         ; $4796: $04
    nop                                           ; $4797: $00
    ld [$5171], sp                                ; $4798: $08 $71 $51
    ld [$0304], sp                                ; $479B: $08 $04 $03
    ld b, $05                                     ; $479E: $06 $05
    nop                                           ; $47A0: $00
    ld [$517F], sp                                ; $47A1: $08 $7F $51
    db $10                                        ; $47A4: $10
    ld bc, $0302                                  ; $47A5: $01 $02 $03
    ld [$0800], sp                                ; $47A8: $08 $00 $08
    sub l                                         ; $47AB: $95
    ld d, c                                       ; $47AC: $51
    db $10                                        ; $47AD: $10
    ld bc, $0302                                  ; $47AE: $01 $02 $03
    ld [$0800], sp                                ; $47B1: $08 $00 $08
    add a                                         ; $47B4: $87
    ld d, e                                       ; $47B5: $53
    db $10                                        ; $47B6: $10
    ld bc, $0302                                  ; $47B7: $01 $02 $03
    add hl, bc                                    ; $47BA: $09
    nop                                           ; $47BB: $00
    ld [$50AB], sp                                ; $47BC: $08 $AB $50
    stop                                          ; $47BF: $10 $00
    rst RST_38                                    ; $47C1: $FF
    ld [$000F], sp                                ; $47C2: $08 $0F $00
    ld [$52C5], sp                                ; $47C5: $08 $C5 $52
    inc c                                         ; $47C8: $0C
    ld bc, $0305                                  ; $47C9: $01 $05 $03
    ld de, $0800                                  ; $47CC: $11 $00 $08
    rst RST_18                                    ; $47CF: $DF
    ld d, d                                       ; $47D0: $52
    jr jr_003_47D4                                ; $47D1: $18 $01

    inc b                                         ; $47D3: $04

jr_003_47D4:
    ld [$0001], sp                                ; $47D4: $08 $01 $00
    ld [$52F5], sp                                ; $47D7: $08 $F5 $52
    db $10                                        ; $47DA: $10
    ld bc, $0402                                  ; $47DB: $01 $02 $04
    stop                                          ; $47DE: $10 $00
    ld [$5313], sp                                ; $47E0: $08 $13 $53
    inc e                                         ; $47E3: $1C
    ld bc, $0402                                  ; $47E4: $01 $02 $04
    stop                                          ; $47E7: $10 $00
    ld [$50AB], sp                                ; $47E9: $08 $AB $50
    inc c                                         ; $47EC: $0C
    ld bc, $1101                                  ; $47ED: $01 $01 $11
    ld h, c                                       ; $47F0: $61
    nop                                           ; $47F1: $00
    ld [$5329], sp                                ; $47F2: $08 $29 $53
    inc c                                         ; $47F5: $0C
    ld bc, $0801                                  ; $47F6: $01 $01 $08
    ld hl, $0800                                  ; $47F9: $21 $00 $08
    xor e                                         ; $47FC: $AB
    ld d, b                                       ; $47FD: $50
    inc c                                         ; $47FE: $0C
    inc d                                         ; $47FF: $14
    ld bc, $B208                                  ; $4800: $01 $08 $B2
    nop                                           ; $4803: $00
    ld [$51AB], sp                                ; $4804: $08 $AB $51
    inc c                                         ; $4807: $0C
    ld a, [bc]                                    ; $4808: $0A
    nop                                           ; $4809: $00
    nop                                           ; $480A: $00
    nop                                           ; $480B: $00
    nop                                           ; $480C: $00
    ld [$51AB], sp                                ; $480D: $08 $AB $51
    nop                                           ; $4810: $00
    nop                                           ; $4811: $00
    nop                                           ; $4812: $00
    nop                                           ; $4813: $00
    nop                                           ; $4814: $00
    nop                                           ; $4815: $00
    ld [$510D], sp                                ; $4816: $08 $0D $51
    nop                                           ; $4819: $00
    dec b                                         ; $481A: $05
    nop                                           ; $481B: $00
    nop                                           ; $481C: $00
    nop                                           ; $481D: $00
    nop                                           ; $481E: $00
    ld [$523B], sp                                ; $481F: $08 $3B $52
    nop                                           ; $4822: $00
    dec b                                         ; $4823: $05
    nop                                           ; $4824: $00
    nop                                           ; $4825: $00
    nop                                           ; $4826: $00
    nop                                           ; $4827: $00
    ld [$523B], sp                                ; $4828: $08 $3B $52
    inc b                                         ; $482B: $04
    rst RST_38                                    ; $482C: $FF
    nop                                           ; $482D: $00
    nop                                           ; $482E: $00
    nop                                           ; $482F: $00
    nop                                           ; $4830: $00
    ld [$523B], sp                                ; $4831: $08 $3B $52
    nop                                           ; $4834: $00
    dec b                                         ; $4835: $05
    nop                                           ; $4836: $00
    nop                                           ; $4837: $00
    nop                                           ; $4838: $00
    nop                                           ; $4839: $00
    ld [$5249], sp                                ; $483A: $08 $49 $52
    nop                                           ; $483D: $00
    dec b                                         ; $483E: $05
    nop                                           ; $483F: $00
    nop                                           ; $4840: $00
    nop                                           ; $4841: $00
    nop                                           ; $4842: $00
    ld [$524F], sp                                ; $4843: $08 $4F $52
    nop                                           ; $4846: $00
    dec b                                         ; $4847: $05
    nop                                           ; $4848: $00
    nop                                           ; $4849: $00
    nop                                           ; $484A: $00
    nop                                           ; $484B: $00
    ld [$5273], sp                                ; $484C: $08 $73 $52
    db $10                                        ; $484F: $10
    dec b                                         ; $4850: $05
    nop                                           ; $4851: $00
    nop                                           ; $4852: $00
    nop                                           ; $4853: $00
    nop                                           ; $4854: $00
    ld [$5295], sp                                ; $4855: $08 $95 $52
    inc c                                         ; $4858: $0C
    rst RST_38                                    ; $4859: $FF
    nop                                           ; $485A: $00
    nop                                           ; $485B: $00
    nop                                           ; $485C: $00
    nop                                           ; $485D: $00
    ld [$52A7], sp                                ; $485E: $08 $A7 $52
    nop                                           ; $4861: $00
    nop                                           ; $4862: $00
    nop                                           ; $4863: $00
    nop                                           ; $4864: $00
    nop                                           ; $4865: $00
    nop                                           ; $4866: $00
    ld [$5289], sp                                ; $4867: $08 $89 $52
    jr jr_003_486C                                ; $486A: $18 $00

jr_003_486C:
    nop                                           ; $486C: $00
    nop                                           ; $486D: $00
    nop                                           ; $486E: $00
    nop                                           ; $486F: $00
    ld [$52A7], sp                                ; $4870: $08 $A7 $52
    ld [$0002], sp                                ; $4873: $08 $02 $00
    nop                                           ; $4876: $00
    nop                                           ; $4877: $00
    nop                                           ; $4878: $00
    ld [$5255], sp                                ; $4879: $08 $55 $52
    jr jr_003_4880                                ; $487C: $18 $02

    nop                                           ; $487E: $00
    nop                                           ; $487F: $00

jr_003_4880:
    nop                                           ; $4880: $00
    nop                                           ; $4881: $00
    ld [$523B], sp                                ; $4882: $08 $3B $52
    nop                                           ; $4885: $00
    inc d                                         ; $4886: $14
    nop                                           ; $4887: $00
    nop                                           ; $4888: $00
    nop                                           ; $4889: $00
    nop                                           ; $488A: $00
    ld [$5249], sp                                ; $488B: $08 $49 $52
    nop                                           ; $488E: $00
    inc d                                         ; $488F: $14
    nop                                           ; $4890: $00
    nop                                           ; $4891: $00
    nop                                           ; $4892: $00
    nop                                           ; $4893: $00
    ld [$527F], sp                                ; $4894: $08 $7F $52
    inc b                                         ; $4897: $04
    nop                                           ; $4898: $00
    nop                                           ; $4899: $00
    nop                                           ; $489A: $00
    nop                                           ; $489B: $00
    nop                                           ; $489C: $00
    ld [$5295], sp                                ; $489D: $08 $95 $52
    inc c                                         ; $48A0: $0C
    rst RST_38                                    ; $48A1: $FF
    nop                                           ; $48A2: $00
    nop                                           ; $48A3: $00
    nop                                           ; $48A4: $00
    nop                                           ; $48A5: $00
    ld [$5249], sp                                ; $48A6: $08 $49 $52
    nop                                           ; $48A9: $00
    inc a                                         ; $48AA: $3C
    nop                                           ; $48AB: $00
    nop                                           ; $48AC: $00
    nop                                           ; $48AD: $00
    nop                                           ; $48AE: $00
    ld [$5249], sp                                ; $48AF: $08 $49 $52
    nop                                           ; $48B2: $00
    inc a                                         ; $48B3: $3C
    nop                                           ; $48B4: $00
    nop                                           ; $48B5: $00
    nop                                           ; $48B6: $00
    nop                                           ; $48B7: $00
    ld [$5249], sp                                ; $48B8: $08 $49 $52
    nop                                           ; $48BB: $00
    inc a                                         ; $48BC: $3C
    nop                                           ; $48BD: $00
    nop                                           ; $48BE: $00
    nop                                           ; $48BF: $00
    nop                                           ; $48C0: $00
    ld [$52B5], sp                                ; $48C1: $08 $B5 $52
    nop                                           ; $48C4: $00
    inc a                                         ; $48C5: $3C
    nop                                           ; $48C6: $00
    nop                                           ; $48C7: $00
    nop                                           ; $48C8: $00
    nop                                           ; $48C9: $00
    ld [$5295], sp                                ; $48CA: $08 $95 $52
    nop                                           ; $48CD: $00
    inc a                                         ; $48CE: $3C
    nop                                           ; $48CF: $00
    nop                                           ; $48D0: $00
    nop                                           ; $48D1: $00
    nop                                           ; $48D2: $00
    ld [$527F], sp                                ; $48D3: $08 $7F $52
    nop                                           ; $48D6: $00
    inc a                                         ; $48D7: $3C
    nop                                           ; $48D8: $00
    nop                                           ; $48D9: $00
    nop                                           ; $48DA: $00
    nop                                           ; $48DB: $00
    ld a, $00                                     ; $48DC: $3E $00
    nop                                           ; $48DE: $00
    nop                                           ; $48DF: $00
    nop                                           ; $48E0: $00
    nop                                           ; $48E1: $00
    nop                                           ; $48E2: $00
    nop                                           ; $48E3: $00
    nop                                           ; $48E4: $00
    add hl, bc                                    ; $48E5: $09
    ld [hl+], a                                   ; $48E6: $22
    ld b, b                                       ; $48E7: $40
    inc c                                         ; $48E8: $0C
    ld b, $00                                     ; $48E9: $06 $00
    nop                                           ; $48EB: $00
    nop                                           ; $48EC: $00
    nop                                           ; $48ED: $00
    add hl, bc                                    ; $48EE: $09
    inc [hl]                                      ; $48EF: $34
    ld b, b                                       ; $48F0: $40
    ld [$0003], sp                                ; $48F1: $08 $03 $00
    nop                                           ; $48F4: $00
    nop                                           ; $48F5: $00
    nop                                           ; $48F6: $00
    add hl, bc                                    ; $48F7: $09
    ld b, d                                       ; $48F8: $42
    ld b, b                                       ; $48F9: $40
    ld [$0004], sp                                ; $48FA: $08 $04 $00
    nop                                           ; $48FD: $00
    nop                                           ; $48FE: $00
    nop                                           ; $48FF: $00
    add hl, bc                                    ; $4900: $09
    ld d, b                                       ; $4901: $50
    ld b, b                                       ; $4902: $40
    nop                                           ; $4903: $00
    nop                                           ; $4904: $00
    nop                                           ; $4905: $00
    nop                                           ; $4906: $00
    nop                                           ; $4907: $00
    nop                                           ; $4908: $00
    add hl, bc                                    ; $4909: $09
    ld d, [hl]                                    ; $490A: $56
    ld b, b                                       ; $490B: $40
    inc e                                         ; $490C: $1C
    inc bc                                        ; $490D: $03
    nop                                           ; $490E: $00
    nop                                           ; $490F: $00
    nop                                           ; $4910: $00
    nop                                           ; $4911: $00
    add hl, bc                                    ; $4912: $09
    ld a, b                                       ; $4913: $78
    ld b, b                                       ; $4914: $40
    inc e                                         ; $4915: $1C
    inc bc                                        ; $4916: $03
    nop                                           ; $4917: $00
    nop                                           ; $4918: $00
    nop                                           ; $4919: $00
    nop                                           ; $491A: $00
    add hl, bc                                    ; $491B: $09
    sbc d                                         ; $491C: $9A
    ld b, b                                       ; $491D: $40
    inc e                                         ; $491E: $1C
    inc bc                                        ; $491F: $03
    nop                                           ; $4920: $00
    nop                                           ; $4921: $00
    nop                                           ; $4922: $00
    nop                                           ; $4923: $00
    add hl, bc                                    ; $4924: $09
    cp h                                          ; $4925: $BC
    ld b, b                                       ; $4926: $40
    nop                                           ; $4927: $00
    nop                                           ; $4928: $00
    nop                                           ; $4929: $00
    nop                                           ; $492A: $00
    nop                                           ; $492B: $00
    nop                                           ; $492C: $00
    add hl, bc                                    ; $492D: $09
    jp nz, VBlankInterrupt                        ; $492E: $C2 $40 $00

    nop                                           ; $4931: $00
    nop                                           ; $4932: $00
    nop                                           ; $4933: $00
    nop                                           ; $4934: $00
    nop                                           ; $4935: $00
    add hl, bc                                    ; $4936: $09
    ret z                                         ; $4937: $C8

    ld b, b                                       ; $4938: $40
    nop                                           ; $4939: $00
    rst RST_38                                    ; $493A: $FF
    nop                                           ; $493B: $00
    nop                                           ; $493C: $00
    nop                                           ; $493D: $00
    nop                                           ; $493E: $00
    add hl, bc                                    ; $493F: $09
    add b                                         ; $4940: $80
    ld b, c                                       ; $4941: $41
    ld [$0004], sp                                ; $4942: $08 $04 $00
    nop                                           ; $4945: $00
    nop                                           ; $4946: $00
    nop                                           ; $4947: $00
    add hl, bc                                    ; $4948: $09
    adc d                                         ; $4949: $8A
    ld b, c                                       ; $494A: $41
    ld [$00FF], sp                                ; $494B: $08 $FF $00
    nop                                           ; $494E: $00
    nop                                           ; $494F: $00
    nop                                           ; $4950: $00
    add hl, bc                                    ; $4951: $09
    and d                                         ; $4952: $A2
    ld b, c                                       ; $4953: $41
    inc e                                         ; $4954: $1C
    ld bc, $0401                                  ; $4955: $01 $01 $04
    add b                                         ; $4958: $80
    nop                                           ; $4959: $00
    add hl, bc                                    ; $495A: $09
    and h                                         ; $495B: $A4
    ld b, d                                       ; $495C: $42
    inc b                                         ; $495D: $04
    ld [bc], a                                    ; $495E: $02
    nop                                           ; $495F: $00
    nop                                           ; $4960: $00
    nop                                           ; $4961: $00
    nop                                           ; $4962: $00
    add hl, bc                                    ; $4963: $09
    ld a, [hl+]                                   ; $4964: $2A
    ld b, d                                       ; $4965: $42
    inc b                                         ; $4966: $04
    ld a, [bc]                                    ; $4967: $0A
    nop                                           ; $4968: $00
    nop                                           ; $4969: $00
    nop                                           ; $496A: $00
    nop                                           ; $496B: $00
    add hl, bc                                    ; $496C: $09
    xor $41                                       ; $496D: $EE $41
    inc d                                         ; $496F: $14
    dec b                                         ; $4970: $05
    nop                                           ; $4971: $00
    nop                                           ; $4972: $00
    nop                                           ; $4973: $00
    nop                                           ; $4974: $00
    add hl, bc                                    ; $4975: $09
    ld e, $42                                     ; $4976: $1E $42
    ld [$0005], sp                                ; $4978: $08 $05 $00
    nop                                           ; $497B: $00
    nop                                           ; $497C: $00
    nop                                           ; $497D: $00
    add hl, bc                                    ; $497E: $09
    sbc b                                         ; $497F: $98
    ld b, c                                       ; $4980: $41
    jr nc, jr_003_4983                            ; $4981: $30 $00

jr_003_4983:
    nop                                           ; $4983: $00
    nop                                           ; $4984: $00
    nop                                           ; $4985: $00
    nop                                           ; $4986: $00
    add hl, bc                                    ; $4987: $09
    call nz, $0841                                ; $4988: $C4 $41 $08
    ld bc, $0000                                  ; $498B: $01 $00 $00
    nop                                           ; $498E: $00
    nop                                           ; $498F: $00
    add hl, bc                                    ; $4990: $09
    ld l, [hl]                                    ; $4991: $6E
    ld b, b                                       ; $4992: $40
    ld [$00FF], sp                                ; $4993: $08 $FF $00
    nop                                           ; $4996: $00
    nop                                           ; $4997: $00
    nop                                           ; $4998: $00
    add hl, bc                                    ; $4999: $09
    ldh [rSTAT], a                                ; $499A: $E0 $41
    ld [$0003], sp                                ; $499C: $08 $03 $00
    nop                                           ; $499F: $00
    nop                                           ; $49A0: $00
    nop                                           ; $49A1: $00
    add hl, bc                                    ; $49A2: $09
    jp nc, Jump_000_0840                          ; $49A3: $D2 $40 $08

    nop                                           ; $49A6: $00
    ld [bc], a                                    ; $49A7: $02
    inc bc                                        ; $49A8: $03
    nop                                           ; $49A9: $00
    nop                                           ; $49AA: $00
    add hl, bc                                    ; $49AB: $09
    ldh [rLCDC], a                                ; $49AC: $E0 $40
    ld [$0200], sp                                ; $49AE: $08 $00 $02
    inc b                                         ; $49B1: $04
    nop                                           ; $49B2: $00
    nop                                           ; $49B3: $00
    add hl, bc                                    ; $49B4: $09
    xor $40                                       ; $49B5: $EE $40
    db $10                                        ; $49B7: $10
    ld [bc], a                                    ; $49B8: $02
    inc bc                                        ; $49B9: $03
    inc b                                         ; $49BA: $04
    ld bc, $0900                                  ; $49BB: $01 $00 $09
    inc b                                         ; $49BE: $04
    ld b, c                                       ; $49BF: $41
    ld [$0200], sp                                ; $49C0: $08 $00 $02
    inc b                                         ; $49C3: $04
    nop                                           ; $49C4: $00
    nop                                           ; $49C5: $00
    add hl, bc                                    ; $49C6: $09
    ld [de], a                                    ; $49C7: $12
    ld b, c                                       ; $49C8: $41
    ld [$0200], sp                                ; $49C9: $08 $00 $02
    inc b                                         ; $49CC: $04
    inc b                                         ; $49CD: $04
    nop                                           ; $49CE: $00
    add hl, bc                                    ; $49CF: $09
    jr nz, jr_003_4A13                            ; $49D0: $20 $41

    db $10                                        ; $49D2: $10
    ld [bc], a                                    ; $49D3: $02
    inc bc                                        ; $49D4: $03
    ld b, $05                                     ; $49D5: $06 $05
    nop                                           ; $49D7: $00
    add hl, bc                                    ; $49D8: $09
    ld [hl], $41                                  ; $49D9: $36 $41
    db $10                                        ; $49DB: $10
    ld bc, $0302                                  ; $49DC: $01 $02 $03
    ld [$0900], sp                                ; $49DF: $08 $00 $09
    ld c, h                                       ; $49E2: $4C
    ld b, c                                       ; $49E3: $41
    db $10                                        ; $49E4: $10
    ld bc, $0302                                  ; $49E5: $01 $02 $03
    ld [$0900], sp                                ; $49E8: $08 $00 $09
    xor $40                                       ; $49EB: $EE $40
    db $10                                        ; $49ED: $10
    ld bc, $0302                                  ; $49EE: $01 $02 $03
    add hl, bc                                    ; $49F1: $09
    nop                                           ; $49F2: $00
    add hl, bc                                    ; $49F3: $09
    xor [hl]                                      ; $49F4: $AE
    ld b, d                                       ; $49F5: $42
    stop                                          ; $49F6: $10 $00
    rst RST_38                                    ; $49F8: $FF
    ld [$000F], sp                                ; $49F9: $08 $0F $00
    add hl, bc                                    ; $49FC: $09
    jp c, Jump_000_0C42                           ; $49FD: $DA $42 $0C

    ld bc, $0304                                  ; $4A00: $01 $04 $03
    ld hl, $0900                                  ; $4A03: $21 $00 $09
    db $F4                                        ; $4A06: $F4
    ld b, d                                       ; $4A07: $42
    inc c                                         ; $4A08: $0C
    ld bc, $0304                                  ; $4A09: $01 $04 $03
    ld hl, $0900                                  ; $4A0C: $21 $00 $09
    ld c, $43                                     ; $4A0F: $0E $43
    inc c                                         ; $4A11: $0C
    nop                                           ; $4A12: $00

jr_003_4A13:
    inc b                                         ; $4A13: $04
    inc bc                                        ; $4A14: $03
    ld hl, $0900                                  ; $4A15: $21 $00 $09
    inc h                                         ; $4A18: $24
    ld b, e                                       ; $4A19: $43
    inc e                                         ; $4A1A: $1C
    ld bc, $0404                                  ; $4A1B: $01 $04 $04
    stop                                          ; $4A1E: $10 $00
    add hl, bc                                    ; $4A20: $09
    call nz, Call_000_1042                        ; $4A21: $C4 $42 $10
    ld bc, $1101                                  ; $4A24: $01 $01 $11
    ld l, l                                       ; $4A27: $6D
    nop                                           ; $4A28: $00
    add hl, bc                                    ; $4A29: $09
    ld a, $43                                     ; $4A2A: $3E $43
    inc c                                         ; $4A2C: $0C
    inc bc                                        ; $4A2D: $03
    ld bc, $6111                                  ; $4A2E: $01 $11 $61
    nop                                           ; $4A31: $00
    add hl, bc                                    ; $4A32: $09
    add h                                         ; $4A33: $84
    ld b, e                                       ; $4A34: $43
    inc c                                         ; $4A35: $0C
    inc d                                         ; $4A36: $14
    ld bc, $B208                                  ; $4A37: $01 $08 $B2
    nop                                           ; $4A3A: $00
    add hl, bc                                    ; $4A3B: $09
    ld h, d                                       ; $4A3C: $62
    ld b, c                                       ; $4A3D: $41
    inc c                                         ; $4A3E: $0C
    ld a, [bc]                                    ; $4A3F: $0A
    nop                                           ; $4A40: $00
    nop                                           ; $4A41: $00
    nop                                           ; $4A42: $00
    nop                                           ; $4A43: $00
    add hl, bc                                    ; $4A44: $09
    ld [hl+], a                                   ; $4A45: $22
    ld b, b                                       ; $4A46: $40
    nop                                           ; $4A47: $00
    nop                                           ; $4A48: $00
    nop                                           ; $4A49: $00
    nop                                           ; $4A4A: $00
    nop                                           ; $4A4B: $00
    nop                                           ; $4A4C: $00
    add hl, bc                                    ; $4A4D: $09
    cp h                                          ; $4A4E: $BC
    ld b, b                                       ; $4A4F: $40
    nop                                           ; $4A50: $00
    dec b                                         ; $4A51: $05
    nop                                           ; $4A52: $00
    nop                                           ; $4A53: $00
    nop                                           ; $4A54: $00
    nop                                           ; $4A55: $00
    add hl, bc                                    ; $4A56: $09
    inc h                                         ; $4A57: $24
    ld b, d                                       ; $4A58: $42
    nop                                           ; $4A59: $00
    dec b                                         ; $4A5A: $05
    nop                                           ; $4A5B: $00
    nop                                           ; $4A5C: $00
    nop                                           ; $4A5D: $00
    nop                                           ; $4A5E: $00
    add hl, bc                                    ; $4A5F: $09
    inc h                                         ; $4A60: $24
    ld b, d                                       ; $4A61: $42
    inc b                                         ; $4A62: $04
    rst RST_38                                    ; $4A63: $FF
    nop                                           ; $4A64: $00
    nop                                           ; $4A65: $00
    nop                                           ; $4A66: $00
    nop                                           ; $4A67: $00
    add hl, bc                                    ; $4A68: $09
    inc h                                         ; $4A69: $24
    ld b, d                                       ; $4A6A: $42
    nop                                           ; $4A6B: $00
    dec b                                         ; $4A6C: $05
    nop                                           ; $4A6D: $00
    nop                                           ; $4A6E: $00
    nop                                           ; $4A6F: $00
    nop                                           ; $4A70: $00
    add hl, bc                                    ; $4A71: $09
    ld [hl-], a                                   ; $4A72: $32
    ld b, d                                       ; $4A73: $42
    nop                                           ; $4A74: $00
    dec b                                         ; $4A75: $05
    nop                                           ; $4A76: $00
    nop                                           ; $4A77: $00
    nop                                           ; $4A78: $00
    nop                                           ; $4A79: $00
    add hl, bc                                    ; $4A7A: $09
    jr c, jr_003_4ABF                             ; $4A7B: $38 $42

    nop                                           ; $4A7D: $00
    dec b                                         ; $4A7E: $05
    nop                                           ; $4A7F: $00
    nop                                           ; $4A80: $00
    nop                                           ; $4A81: $00
    nop                                           ; $4A82: $00
    add hl, bc                                    ; $4A83: $09
    ld e, h                                       ; $4A84: $5C
    ld b, d                                       ; $4A85: $42
    db $10                                        ; $4A86: $10
    dec b                                         ; $4A87: $05
    nop                                           ; $4A88: $00
    nop                                           ; $4A89: $00
    nop                                           ; $4A8A: $00
    nop                                           ; $4A8B: $00
    add hl, bc                                    ; $4A8C: $09
    ld a, [hl]                                    ; $4A8D: $7E
    ld b, d                                       ; $4A8E: $42
    inc c                                         ; $4A8F: $0C
    rst RST_38                                    ; $4A90: $FF
    nop                                           ; $4A91: $00
    nop                                           ; $4A92: $00
    nop                                           ; $4A93: $00
    nop                                           ; $4A94: $00
    add hl, bc                                    ; $4A95: $09
    sub b                                         ; $4A96: $90
    ld b, d                                       ; $4A97: $42
    nop                                           ; $4A98: $00
    nop                                           ; $4A99: $00
    nop                                           ; $4A9A: $00
    nop                                           ; $4A9B: $00
    nop                                           ; $4A9C: $00
    nop                                           ; $4A9D: $00
    add hl, bc                                    ; $4A9E: $09
    ld [hl], d                                    ; $4A9F: $72
    ld b, d                                       ; $4AA0: $42
    jr jr_003_4AA3                                ; $4AA1: $18 $00

jr_003_4AA3:
    nop                                           ; $4AA3: $00
    nop                                           ; $4AA4: $00
    nop                                           ; $4AA5: $00
    nop                                           ; $4AA6: $00
    add hl, bc                                    ; $4AA7: $09
    sub b                                         ; $4AA8: $90
    ld b, d                                       ; $4AA9: $42
    ld [$0002], sp                                ; $4AAA: $08 $02 $00
    nop                                           ; $4AAD: $00
    nop                                           ; $4AAE: $00
    nop                                           ; $4AAF: $00
    add hl, bc                                    ; $4AB0: $09
    ld a, $42                                     ; $4AB1: $3E $42
    jr jr_003_4AB7                                ; $4AB3: $18 $02

    nop                                           ; $4AB5: $00
    nop                                           ; $4AB6: $00

jr_003_4AB7:
    nop                                           ; $4AB7: $00
    nop                                           ; $4AB8: $00
    add hl, bc                                    ; $4AB9: $09
    inc h                                         ; $4ABA: $24
    ld b, d                                       ; $4ABB: $42
    nop                                           ; $4ABC: $00
    inc d                                         ; $4ABD: $14
    nop                                           ; $4ABE: $00

jr_003_4ABF:
    nop                                           ; $4ABF: $00
    nop                                           ; $4AC0: $00
    nop                                           ; $4AC1: $00
    add hl, bc                                    ; $4AC2: $09
    ld [hl-], a                                   ; $4AC3: $32
    ld b, d                                       ; $4AC4: $42
    nop                                           ; $4AC5: $00
    inc d                                         ; $4AC6: $14
    nop                                           ; $4AC7: $00
    nop                                           ; $4AC8: $00
    nop                                           ; $4AC9: $00
    nop                                           ; $4ACA: $00
    add hl, bc                                    ; $4ACB: $09
    ld l, b                                       ; $4ACC: $68
    ld b, d                                       ; $4ACD: $42
    inc b                                         ; $4ACE: $04
    nop                                           ; $4ACF: $00
    nop                                           ; $4AD0: $00
    nop                                           ; $4AD1: $00
    nop                                           ; $4AD2: $00
    nop                                           ; $4AD3: $00
    add hl, bc                                    ; $4AD4: $09
    ld a, [hl]                                    ; $4AD5: $7E
    ld b, d                                       ; $4AD6: $42
    inc c                                         ; $4AD7: $0C
    rst RST_38                                    ; $4AD8: $FF
    nop                                           ; $4AD9: $00
    nop                                           ; $4ADA: $00
    nop                                           ; $4ADB: $00
    nop                                           ; $4ADC: $00
    add hl, bc                                    ; $4ADD: $09
    ld [hl-], a                                   ; $4ADE: $32
    ld b, d                                       ; $4ADF: $42
    nop                                           ; $4AE0: $00
    inc a                                         ; $4AE1: $3C
    nop                                           ; $4AE2: $00
    nop                                           ; $4AE3: $00
    nop                                           ; $4AE4: $00
    nop                                           ; $4AE5: $00
    add hl, bc                                    ; $4AE6: $09
    ld [hl-], a                                   ; $4AE7: $32
    ld b, d                                       ; $4AE8: $42
    nop                                           ; $4AE9: $00
    inc a                                         ; $4AEA: $3C
    nop                                           ; $4AEB: $00
    nop                                           ; $4AEC: $00
    nop                                           ; $4AED: $00
    nop                                           ; $4AEE: $00
    add hl, bc                                    ; $4AEF: $09
    ld [hl-], a                                   ; $4AF0: $32
    ld b, d                                       ; $4AF1: $42
    nop                                           ; $4AF2: $00
    inc a                                         ; $4AF3: $3C
    nop                                           ; $4AF4: $00
    nop                                           ; $4AF5: $00
    nop                                           ; $4AF6: $00
    nop                                           ; $4AF7: $00
    add hl, bc                                    ; $4AF8: $09
    sbc [hl]                                      ; $4AF9: $9E
    ld b, d                                       ; $4AFA: $42
    nop                                           ; $4AFB: $00
    inc a                                         ; $4AFC: $3C
    nop                                           ; $4AFD: $00
    nop                                           ; $4AFE: $00
    nop                                           ; $4AFF: $00
    nop                                           ; $4B00: $00
    add hl, bc                                    ; $4B01: $09
    ld a, [hl]                                    ; $4B02: $7E
    ld b, d                                       ; $4B03: $42
    nop                                           ; $4B04: $00
    inc a                                         ; $4B05: $3C
    nop                                           ; $4B06: $00
    nop                                           ; $4B07: $00
    nop                                           ; $4B08: $00
    nop                                           ; $4B09: $00
    add hl, bc                                    ; $4B0A: $09
    ld l, b                                       ; $4B0B: $68
    ld b, d                                       ; $4B0C: $42
    nop                                           ; $4B0D: $00
    inc a                                         ; $4B0E: $3C
    nop                                           ; $4B0F: $00
    nop                                           ; $4B10: $00
    nop                                           ; $4B11: $00
    nop                                           ; $4B12: $00
    ld a, $00                                     ; $4B13: $3E $00
    nop                                           ; $4B15: $00
    nop                                           ; $4B16: $00
    nop                                           ; $4B17: $00
    nop                                           ; $4B18: $00
    nop                                           ; $4B19: $00
    nop                                           ; $4B1A: $00
    nop                                           ; $4B1B: $00
    add hl, bc                                    ; $4B1C: $09
    ld b, h                                       ; $4B1D: $44
    ld c, l                                       ; $4B1E: $4D
    inc c                                         ; $4B1F: $0C
    ld b, $00                                     ; $4B20: $06 $00
    nop                                           ; $4B22: $00
    nop                                           ; $4B23: $00
    nop                                           ; $4B24: $00
    add hl, bc                                    ; $4B25: $09
    ld d, [hl]                                    ; $4B26: $56
    ld c, l                                       ; $4B27: $4D
    ld [$0003], sp                                ; $4B28: $08 $03 $00
    nop                                           ; $4B2B: $00
    nop                                           ; $4B2C: $00
    nop                                           ; $4B2D: $00
    add hl, bc                                    ; $4B2E: $09
    ld l, b                                       ; $4B2F: $68
    ld c, l                                       ; $4B30: $4D
    ld [$0004], sp                                ; $4B31: $08 $04 $00
    nop                                           ; $4B34: $00
    nop                                           ; $4B35: $00
    nop                                           ; $4B36: $00
    add hl, bc                                    ; $4B37: $09
    ld a, d                                       ; $4B38: $7A
    ld c, l                                       ; $4B39: $4D
    nop                                           ; $4B3A: $00
    nop                                           ; $4B3B: $00
    nop                                           ; $4B3C: $00
    nop                                           ; $4B3D: $00
    nop                                           ; $4B3E: $00
    nop                                           ; $4B3F: $00
    add hl, bc                                    ; $4B40: $09
    add b                                         ; $4B41: $80
    ld c, l                                       ; $4B42: $4D
    inc e                                         ; $4B43: $1C
    ld [bc], a                                    ; $4B44: $02
    nop                                           ; $4B45: $00
    nop                                           ; $4B46: $00
    nop                                           ; $4B47: $00
    nop                                           ; $4B48: $00
    add hl, bc                                    ; $4B49: $09
    and d                                         ; $4B4A: $A2
    ld c, l                                       ; $4B4B: $4D
    inc e                                         ; $4B4C: $1C
    ld [bc], a                                    ; $4B4D: $02
    nop                                           ; $4B4E: $00
    nop                                           ; $4B4F: $00
    nop                                           ; $4B50: $00
    nop                                           ; $4B51: $00
    add hl, bc                                    ; $4B52: $09
    adc $4D                                       ; $4B53: $CE $4D
    inc e                                         ; $4B55: $1C
    ld [bc], a                                    ; $4B56: $02
    nop                                           ; $4B57: $00
    nop                                           ; $4B58: $00
    nop                                           ; $4B59: $00
    nop                                           ; $4B5A: $00
    add hl, bc                                    ; $4B5B: $09
    ldh a, [rKEY1]                                ; $4B5C: $F0 $4D
    nop                                           ; $4B5E: $00
    nop                                           ; $4B5F: $00
    nop                                           ; $4B60: $00
    nop                                           ; $4B61: $00
    nop                                           ; $4B62: $00
    nop                                           ; $4B63: $00
    add hl, bc                                    ; $4B64: $09
    or $4D                                        ; $4B65: $F6 $4D
    nop                                           ; $4B67: $00
    nop                                           ; $4B68: $00
    nop                                           ; $4B69: $00
    nop                                           ; $4B6A: $00
    nop                                           ; $4B6B: $00
    nop                                           ; $4B6C: $00
    add hl, bc                                    ; $4B6D: $09
    db $FC                                        ; $4B6E: $FC
    ld c, l                                       ; $4B6F: $4D
    nop                                           ; $4B70: $00
    rst RST_38                                    ; $4B71: $FF
    nop                                           ; $4B72: $00
    nop                                           ; $4B73: $00
    nop                                           ; $4B74: $00
    nop                                           ; $4B75: $00
    add hl, bc                                    ; $4B76: $09
    adc $4E                                       ; $4B77: $CE $4E
    ld [$0004], sp                                ; $4B79: $08 $04 $00
    nop                                           ; $4B7C: $00
    nop                                           ; $4B7D: $00
    nop                                           ; $4B7E: $00
    add hl, bc                                    ; $4B7F: $09
    ret c                                         ; $4B80: $D8

    ld c, [hl]                                    ; $4B81: $4E
    ld [$00FF], sp                                ; $4B82: $08 $FF $00
    nop                                           ; $4B85: $00
    nop                                           ; $4B86: $00
    nop                                           ; $4B87: $00
    add hl, bc                                    ; $4B88: $09
    cp $4E                                        ; $4B89: $FE $4E
    jr nz, jr_003_4B8D                            ; $4B8B: $20 $00

jr_003_4B8D:
    ld bc, $8004                                  ; $4B8D: $01 $04 $80
    nop                                           ; $4B90: $00
    add hl, bc                                    ; $4B91: $09
    and $4F                                       ; $4B92: $E6 $4F
    inc b                                         ; $4B94: $04
    ld [bc], a                                    ; $4B95: $02
    nop                                           ; $4B96: $00
    nop                                           ; $4B97: $00
    nop                                           ; $4B98: $00
    nop                                           ; $4B99: $00
    add hl, bc                                    ; $4B9A: $09
    ld l, h                                       ; $4B9B: $6C
    ld c, a                                       ; $4B9C: $4F
    inc b                                         ; $4B9D: $04
    ld a, [bc]                                    ; $4B9E: $0A
    nop                                           ; $4B9F: $00
    nop                                           ; $4BA0: $00
    nop                                           ; $4BA1: $00
    nop                                           ; $4BA2: $00
    add hl, bc                                    ; $4BA3: $09
    inc h                                         ; $4BA4: $24
    ld c, a                                       ; $4BA5: $4F
    jr nc, jr_003_4BAD                            ; $4BA6: $30 $05

    nop                                           ; $4BA8: $00
    nop                                           ; $4BA9: $00
    nop                                           ; $4BAA: $00
    nop                                           ; $4BAB: $00
    add hl, bc                                    ; $4BAC: $09

jr_003_4BAD:
    ld e, d                                       ; $4BAD: $5A
    ld c, a                                       ; $4BAE: $4F
    nop                                           ; $4BAF: $00
    dec b                                         ; $4BB0: $05
    nop                                           ; $4BB1: $00
    nop                                           ; $4BB2: $00
    nop                                           ; $4BB3: $00
    nop                                           ; $4BB4: $00
    add hl, bc                                    ; $4BB5: $09
    and $4E                                       ; $4BB6: $E6 $4E
    jr nc, jr_003_4BBA                            ; $4BB8: $30 $00

jr_003_4BBA:
    nop                                           ; $4BBA: $00
    nop                                           ; $4BBB: $00
    nop                                           ; $4BBC: $00
    nop                                           ; $4BBD: $00
    add hl, bc                                    ; $4BBE: $09
    jp nc, $0841                                  ; $4BBF: $D2 $41 $08

    ld bc, $0000                                  ; $4BC2: $01 $00 $00
    nop                                           ; $4BC5: $00
    nop                                           ; $4BC6: $00
    add hl, bc                                    ; $4BC7: $09
    call nz, $084D                                ; $4BC8: $C4 $4D $08
    rst RST_38                                    ; $4BCB: $FF
    nop                                           ; $4BCC: $00
    nop                                           ; $4BCD: $00
    nop                                           ; $4BCE: $00
    nop                                           ; $4BCF: $00
    add hl, bc                                    ; $4BD0: $09
    ldh a, [$FF4E]                                ; $4BD1: $F0 $4E
    ld [$0003], sp                                ; $4BD3: $08 $03 $00
    nop                                           ; $4BD6: $00
    nop                                           ; $4BD7: $00
    nop                                           ; $4BD8: $00
    add hl, bc                                    ; $4BD9: $09
    ld b, $4E                                     ; $4BDA: $06 $4E
    stop                                          ; $4BDC: $10 $00
    ld [bc], a                                    ; $4BDE: $02
    inc bc                                        ; $4BDF: $03
    nop                                           ; $4BE0: $00
    nop                                           ; $4BE1: $00
    add hl, bc                                    ; $4BE2: $09
    inc e                                         ; $4BE3: $1C
    ld c, [hl]                                    ; $4BE4: $4E
    stop                                          ; $4BE5: $10 $00
    ld [bc], a                                    ; $4BE7: $02
    inc b                                         ; $4BE8: $04
    nop                                           ; $4BE9: $00
    nop                                           ; $4BEA: $00
    add hl, bc                                    ; $4BEB: $09
    ld [hl-], a                                   ; $4BEC: $32
    ld c, [hl]                                    ; $4BED: $4E
    db $10                                        ; $4BEE: $10
    ld [bc], a                                    ; $4BEF: $02
    inc bc                                        ; $4BF0: $03
    inc b                                         ; $4BF1: $04
    ld bc, $0900                                  ; $4BF2: $01 $00 $09
    ld c, b                                       ; $4BF5: $48
    ld c, [hl]                                    ; $4BF6: $4E
    stop                                          ; $4BF7: $10 $00
    ld [bc], a                                    ; $4BF9: $02
    inc b                                         ; $4BFA: $04
    nop                                           ; $4BFB: $00
    nop                                           ; $4BFC: $00
    add hl, bc                                    ; $4BFD: $09
    ld e, [hl]                                    ; $4BFE: $5E
    ld c, [hl]                                    ; $4BFF: $4E
    inc c                                         ; $4C00: $0C
    nop                                           ; $4C01: $00
    ld [bc], a                                    ; $4C02: $02
    inc b                                         ; $4C03: $04
    inc b                                         ; $4C04: $04
    nop                                           ; $4C05: $00
    add hl, bc                                    ; $4C06: $09
    ld [hl], b                                    ; $4C07: $70
    ld c, [hl]                                    ; $4C08: $4E
    inc c                                         ; $4C09: $0C
    inc b                                         ; $4C0A: $04
    inc bc                                        ; $4C0B: $03
    ld b, $05                                     ; $4C0C: $06 $05
    nop                                           ; $4C0E: $00
    add hl, bc                                    ; $4C0F: $09
    add d                                         ; $4C10: $82
    ld c, [hl]                                    ; $4C11: $4E
    db $10                                        ; $4C12: $10
    ld bc, $0302                                  ; $4C13: $01 $02 $03
    ld [$0900], sp                                ; $4C16: $08 $00 $09
    sbc b                                         ; $4C19: $98
    ld c, [hl]                                    ; $4C1A: $4E
    db $10                                        ; $4C1B: $10
    ld bc, $0302                                  ; $4C1C: $01 $02 $03
    ld [$0900], sp                                ; $4C1F: $08 $00 $09
    inc e                                         ; $4C22: $1C
    ld c, [hl]                                    ; $4C23: $4E
    db $10                                        ; $4C24: $10
    ld bc, $0302                                  ; $4C25: $01 $02 $03
    add hl, bc                                    ; $4C28: $09
    nop                                           ; $4C29: $00
    add hl, bc                                    ; $4C2A: $09
    ld b, h                                       ; $4C2B: $44
    ld c, l                                       ; $4C2C: $4D
    stop                                          ; $4C2D: $10 $00
    rst RST_38                                    ; $4C2F: $FF
    ld [$000F], sp                                ; $4C30: $08 $0F $00
    add hl, bc                                    ; $4C33: $09
    ldh a, [rVBK]                                 ; $4C34: $F0 $4F
    inc c                                         ; $4C36: $0C
    ld bc, $0305                                  ; $4C37: $01 $05 $03
    ld hl, $0900                                  ; $4C3A: $21 $00 $09
    ld b, $50                                     ; $4C3D: $06 $50
    jr jr_003_4C42                                ; $4C3F: $18 $01

    inc b                                         ; $4C41: $04

jr_003_4C42:
    ld [$0001], sp                                ; $4C42: $08 $01 $00
    add hl, bc                                    ; $4C45: $09
    jr z, jr_003_4C98                             ; $4C46: $28 $50

    db $10                                        ; $4C48: $10
    ld [bc], a                                    ; $4C49: $02
    ld [bc], a                                    ; $4C4A: $02
    inc b                                         ; $4C4B: $04
    nop                                           ; $4C4C: $00
    nop                                           ; $4C4D: $00
    add hl, bc                                    ; $4C4E: $09
    ld d, d                                       ; $4C4F: $52
    ld d, b                                       ; $4C50: $50
    inc e                                         ; $4C51: $1C
    ld bc, $0402                                  ; $4C52: $01 $02 $04
    stop                                          ; $4C55: $10 $00
    add hl, bc                                    ; $4C57: $09
    ld b, h                                       ; $4C58: $44
    ld c, l                                       ; $4C59: $4D
    inc c                                         ; $4C5A: $0C
    ld bc, $1101                                  ; $4C5B: $01 $01 $11
    ld h, c                                       ; $4C5E: $61
    nop                                           ; $4C5F: $00
    add hl, bc                                    ; $4C60: $09
    ld [hl], b                                    ; $4C61: $70
    ld d, b                                       ; $4C62: $50
    inc c                                         ; $4C63: $0C
    ld bc, $0801                                  ; $4C64: $01 $01 $08
    ld hl, $0900                                  ; $4C67: $21 $00 $09
    ld b, h                                       ; $4C6A: $44
    ld c, l                                       ; $4C6B: $4D
    inc c                                         ; $4C6C: $0C
    inc d                                         ; $4C6D: $14
    ld bc, $B208                                  ; $4C6E: $01 $08 $B2
    nop                                           ; $4C71: $00
    add hl, bc                                    ; $4C72: $09
    xor [hl]                                      ; $4C73: $AE
    ld c, [hl]                                    ; $4C74: $4E
    inc c                                         ; $4C75: $0C
    ld a, [bc]                                    ; $4C76: $0A
    nop                                           ; $4C77: $00
    nop                                           ; $4C78: $00
    nop                                           ; $4C79: $00
    nop                                           ; $4C7A: $00
    add hl, bc                                    ; $4C7B: $09
    ld b, h                                       ; $4C7C: $44
    ld c, l                                       ; $4C7D: $4D
    nop                                           ; $4C7E: $00
    nop                                           ; $4C7F: $00
    nop                                           ; $4C80: $00
    nop                                           ; $4C81: $00
    nop                                           ; $4C82: $00
    nop                                           ; $4C83: $00
    add hl, bc                                    ; $4C84: $09
    ldh a, [rKEY1]                                ; $4C85: $F0 $4D
    nop                                           ; $4C87: $00
    dec b                                         ; $4C88: $05
    nop                                           ; $4C89: $00
    nop                                           ; $4C8A: $00
    nop                                           ; $4C8B: $00
    nop                                           ; $4C8C: $00
    add hl, bc                                    ; $4C8D: $09
    ld h, b                                       ; $4C8E: $60
    ld c, a                                       ; $4C8F: $4F
    nop                                           ; $4C90: $00
    dec b                                         ; $4C91: $05
    nop                                           ; $4C92: $00
    nop                                           ; $4C93: $00
    nop                                           ; $4C94: $00
    nop                                           ; $4C95: $00
    add hl, bc                                    ; $4C96: $09
    ld h, b                                       ; $4C97: $60

jr_003_4C98:
    ld c, a                                       ; $4C98: $4F
    inc b                                         ; $4C99: $04
    rst RST_38                                    ; $4C9A: $FF
    nop                                           ; $4C9B: $00
    nop                                           ; $4C9C: $00
    nop                                           ; $4C9D: $00
    nop                                           ; $4C9E: $00
    add hl, bc                                    ; $4C9F: $09
    ld h, b                                       ; $4CA0: $60
    ld c, a                                       ; $4CA1: $4F
    nop                                           ; $4CA2: $00
    dec b                                         ; $4CA3: $05
    nop                                           ; $4CA4: $00
    nop                                           ; $4CA5: $00
    nop                                           ; $4CA6: $00
    nop                                           ; $4CA7: $00
    add hl, bc                                    ; $4CA8: $09
    ld h, [hl]                                    ; $4CA9: $66
    ld c, a                                       ; $4CAA: $4F
    nop                                           ; $4CAB: $00
    dec b                                         ; $4CAC: $05
    nop                                           ; $4CAD: $00
    nop                                           ; $4CAE: $00
    nop                                           ; $4CAF: $00
    nop                                           ; $4CB0: $00
    add hl, bc                                    ; $4CB1: $09
    ld a, d                                       ; $4CB2: $7A
    ld c, a                                       ; $4CB3: $4F
    nop                                           ; $4CB4: $00
    dec b                                         ; $4CB5: $05
    nop                                           ; $4CB6: $00
    nop                                           ; $4CB7: $00
    nop                                           ; $4CB8: $00
    nop                                           ; $4CB9: $00
    add hl, bc                                    ; $4CBA: $09
    sbc [hl]                                      ; $4CBB: $9E
    ld c, a                                       ; $4CBC: $4F
    db $10                                        ; $4CBD: $10
    dec b                                         ; $4CBE: $05
    nop                                           ; $4CBF: $00
    nop                                           ; $4CC0: $00
    nop                                           ; $4CC1: $00
    nop                                           ; $4CC2: $00
    add hl, bc                                    ; $4CC3: $09
    ret nz                                        ; $4CC4: $C0

    ld c, a                                       ; $4CC5: $4F
    inc c                                         ; $4CC6: $0C
    rst RST_38                                    ; $4CC7: $FF
    nop                                           ; $4CC8: $00
    nop                                           ; $4CC9: $00
    nop                                           ; $4CCA: $00
    nop                                           ; $4CCB: $00
    add hl, bc                                    ; $4CCC: $09
    jp nc, Jump_000_004F                          ; $4CCD: $D2 $4F $00

    nop                                           ; $4CD0: $00
    nop                                           ; $4CD1: $00
    nop                                           ; $4CD2: $00
    nop                                           ; $4CD3: $00
    nop                                           ; $4CD4: $00
    add hl, bc                                    ; $4CD5: $09
    or h                                          ; $4CD6: $B4
    ld c, a                                       ; $4CD7: $4F
    jr jr_003_4CDA                                ; $4CD8: $18 $00

jr_003_4CDA:
    nop                                           ; $4CDA: $00
    nop                                           ; $4CDB: $00
    nop                                           ; $4CDC: $00
    nop                                           ; $4CDD: $00
    add hl, bc                                    ; $4CDE: $09
    jp nc, Jump_000_084F                          ; $4CDF: $D2 $4F $08

    ld [bc], a                                    ; $4CE2: $02
    nop                                           ; $4CE3: $00
    nop                                           ; $4CE4: $00
    nop                                           ; $4CE5: $00
    nop                                           ; $4CE6: $00
    add hl, bc                                    ; $4CE7: $09
    add b                                         ; $4CE8: $80
    ld c, a                                       ; $4CE9: $4F
    jr jr_003_4CEE                                ; $4CEA: $18 $02

    nop                                           ; $4CEC: $00
    nop                                           ; $4CED: $00

jr_003_4CEE:
    nop                                           ; $4CEE: $00
    nop                                           ; $4CEF: $00
    add hl, bc                                    ; $4CF0: $09
    ld h, b                                       ; $4CF1: $60
    ld c, a                                       ; $4CF2: $4F
    nop                                           ; $4CF3: $00
    inc d                                         ; $4CF4: $14
    nop                                           ; $4CF5: $00
    nop                                           ; $4CF6: $00
    nop                                           ; $4CF7: $00
    nop                                           ; $4CF8: $00
    add hl, bc                                    ; $4CF9: $09
    ld h, [hl]                                    ; $4CFA: $66
    ld c, a                                       ; $4CFB: $4F
    nop                                           ; $4CFC: $00
    inc d                                         ; $4CFD: $14
    nop                                           ; $4CFE: $00
    nop                                           ; $4CFF: $00
    nop                                           ; $4D00: $00
    nop                                           ; $4D01: $00
    add hl, bc                                    ; $4D02: $09
    xor d                                         ; $4D03: $AA
    ld c, a                                       ; $4D04: $4F
    inc b                                         ; $4D05: $04
    nop                                           ; $4D06: $00
    nop                                           ; $4D07: $00
    nop                                           ; $4D08: $00
    nop                                           ; $4D09: $00
    nop                                           ; $4D0A: $00
    add hl, bc                                    ; $4D0B: $09
    ret nz                                        ; $4D0C: $C0

    ld c, a                                       ; $4D0D: $4F
    inc c                                         ; $4D0E: $0C
    rst RST_38                                    ; $4D0F: $FF
    nop                                           ; $4D10: $00
    nop                                           ; $4D11: $00
    nop                                           ; $4D12: $00
    nop                                           ; $4D13: $00
    add hl, bc                                    ; $4D14: $09
    ld h, [hl]                                    ; $4D15: $66
    ld c, a                                       ; $4D16: $4F
    nop                                           ; $4D17: $00
    inc a                                         ; $4D18: $3C
    nop                                           ; $4D19: $00
    nop                                           ; $4D1A: $00
    nop                                           ; $4D1B: $00
    nop                                           ; $4D1C: $00
    add hl, bc                                    ; $4D1D: $09
    ld h, [hl]                                    ; $4D1E: $66
    ld c, a                                       ; $4D1F: $4F
    nop                                           ; $4D20: $00
    inc a                                         ; $4D21: $3C
    nop                                           ; $4D22: $00
    nop                                           ; $4D23: $00
    nop                                           ; $4D24: $00
    nop                                           ; $4D25: $00
    add hl, bc                                    ; $4D26: $09
    ld h, [hl]                                    ; $4D27: $66
    ld c, a                                       ; $4D28: $4F
    nop                                           ; $4D29: $00
    inc a                                         ; $4D2A: $3C
    nop                                           ; $4D2B: $00
    nop                                           ; $4D2C: $00
    nop                                           ; $4D2D: $00
    nop                                           ; $4D2E: $00
    add hl, bc                                    ; $4D2F: $09
    ldh [rVBK], a                                 ; $4D30: $E0 $4F
    nop                                           ; $4D32: $00
    inc a                                         ; $4D33: $3C
    nop                                           ; $4D34: $00
    nop                                           ; $4D35: $00
    nop                                           ; $4D36: $00
    nop                                           ; $4D37: $00
    add hl, bc                                    ; $4D38: $09
    ret nz                                        ; $4D39: $C0

    ld c, a                                       ; $4D3A: $4F
    nop                                           ; $4D3B: $00
    inc a                                         ; $4D3C: $3C
    nop                                           ; $4D3D: $00
    nop                                           ; $4D3E: $00
    nop                                           ; $4D3F: $00
    nop                                           ; $4D40: $00
    add hl, bc                                    ; $4D41: $09
    xor d                                         ; $4D42: $AA
    ld c, a                                       ; $4D43: $4F
    nop                                           ; $4D44: $00
    inc a                                         ; $4D45: $3C
    nop                                           ; $4D46: $00
    nop                                           ; $4D47: $00
    nop                                           ; $4D48: $00
    nop                                           ; $4D49: $00
    ld a, $00                                     ; $4D4A: $3E $00
    nop                                           ; $4D4C: $00
    nop                                           ; $4D4D: $00
    nop                                           ; $4D4E: $00
    nop                                           ; $4D4F: $00
    nop                                           ; $4D50: $00
    nop                                           ; $4D51: $00
    nop                                           ; $4D52: $00
    ld a, [bc]                                    ; $4D53: $0A
    ld b, $40                                     ; $4D54: $06 $40
    inc c                                         ; $4D56: $0C
    ld b, $00                                     ; $4D57: $06 $00
    nop                                           ; $4D59: $00
    nop                                           ; $4D5A: $00
    nop                                           ; $4D5B: $00
    ld a, [bc]                                    ; $4D5C: $0A
    jr jr_003_4D9F                                ; $4D5D: $18 $40

    ld [$0003], sp                                ; $4D5F: $08 $03 $00
    nop                                           ; $4D62: $00
    nop                                           ; $4D63: $00
    nop                                           ; $4D64: $00
    ld a, [bc]                                    ; $4D65: $0A
    ld a, [hl+]                                   ; $4D66: $2A
    ld b, b                                       ; $4D67: $40
    ld [$0004], sp                                ; $4D68: $08 $04 $00
    nop                                           ; $4D6B: $00
    nop                                           ; $4D6C: $00
    nop                                           ; $4D6D: $00
    ld a, [bc]                                    ; $4D6E: $0A
    inc a                                         ; $4D6F: $3C
    ld b, b                                       ; $4D70: $40
    nop                                           ; $4D71: $00
    nop                                           ; $4D72: $00
    nop                                           ; $4D73: $00
    nop                                           ; $4D74: $00
    nop                                           ; $4D75: $00
    nop                                           ; $4D76: $00
    ld a, [bc]                                    ; $4D77: $0A
    ld b, d                                       ; $4D78: $42
    ld b, b                                       ; $4D79: $40
    inc e                                         ; $4D7A: $1C
    inc bc                                        ; $4D7B: $03
    nop                                           ; $4D7C: $00
    nop                                           ; $4D7D: $00
    nop                                           ; $4D7E: $00
    nop                                           ; $4D7F: $00
    ld a, [bc]                                    ; $4D80: $0A
    ld b, d                                       ; $4D81: $42
    ld b, b                                       ; $4D82: $40
    inc e                                         ; $4D83: $1C
    inc bc                                        ; $4D84: $03
    nop                                           ; $4D85: $00
    nop                                           ; $4D86: $00
    nop                                           ; $4D87: $00
    nop                                           ; $4D88: $00
    ld a, [bc]                                    ; $4D89: $0A
    ld b, d                                       ; $4D8A: $42
    ld b, b                                       ; $4D8B: $40
    inc e                                         ; $4D8C: $1C
    inc bc                                        ; $4D8D: $03
    nop                                           ; $4D8E: $00
    nop                                           ; $4D8F: $00
    nop                                           ; $4D90: $00
    nop                                           ; $4D91: $00
    ld a, [bc]                                    ; $4D92: $0A
    ld h, h                                       ; $4D93: $64
    ld b, b                                       ; $4D94: $40
    nop                                           ; $4D95: $00
    nop                                           ; $4D96: $00
    nop                                           ; $4D97: $00
    nop                                           ; $4D98: $00
    nop                                           ; $4D99: $00
    nop                                           ; $4D9A: $00
    ld a, [bc]                                    ; $4D9B: $0A
    ld l, d                                       ; $4D9C: $6A
    ld b, b                                       ; $4D9D: $40
    nop                                           ; $4D9E: $00

jr_003_4D9F:
    nop                                           ; $4D9F: $00
    nop                                           ; $4DA0: $00
    nop                                           ; $4DA1: $00
    nop                                           ; $4DA2: $00
    nop                                           ; $4DA3: $00
    ld a, [bc]                                    ; $4DA4: $0A
    ld [hl], b                                    ; $4DA5: $70
    ld b, b                                       ; $4DA6: $40
    nop                                           ; $4DA7: $00
    rst RST_38                                    ; $4DA8: $FF
    nop                                           ; $4DA9: $00
    nop                                           ; $4DAA: $00
    nop                                           ; $4DAB: $00
    nop                                           ; $4DAC: $00
    ld a, [bc]                                    ; $4DAD: $0A
    ld [hl-], a                                   ; $4DAE: $32
    ld b, c                                       ; $4DAF: $41
    ld [$0004], sp                                ; $4DB0: $08 $04 $00
    nop                                           ; $4DB3: $00
    nop                                           ; $4DB4: $00
    nop                                           ; $4DB5: $00
    ld a, [bc]                                    ; $4DB6: $0A
    inc a                                         ; $4DB7: $3C
    ld b, c                                       ; $4DB8: $41
    ld [$00FF], sp                                ; $4DB9: $08 $FF $00
    nop                                           ; $4DBC: $00
    nop                                           ; $4DBD: $00
    nop                                           ; $4DBE: $00
    ld a, [bc]                                    ; $4DBF: $0A
    ld d, h                                       ; $4DC0: $54
    ld b, c                                       ; $4DC1: $41
    ld [$0101], sp                                ; $4DC2: $08 $01 $01
    inc b                                         ; $4DC5: $04
    add b                                         ; $4DC6: $80
    nop                                           ; $4DC7: $00
    ld a, [bc]                                    ; $4DC8: $0A
    ld [hl-], a                                   ; $4DC9: $32
    ld b, d                                       ; $4DCA: $42
    inc b                                         ; $4DCB: $04
    ld [bc], a                                    ; $4DCC: $02
    nop                                           ; $4DCD: $00
    nop                                           ; $4DCE: $00
    nop                                           ; $4DCF: $00
    nop                                           ; $4DD0: $00
    ld a, [bc]                                    ; $4DD1: $0A
    cp b                                          ; $4DD2: $B8
    ld b, c                                       ; $4DD3: $41
    inc b                                         ; $4DD4: $04
    ld a, [bc]                                    ; $4DD5: $0A
    nop                                           ; $4DD6: $00
    nop                                           ; $4DD7: $00
    nop                                           ; $4DD8: $00
    nop                                           ; $4DD9: $00
    ld a, [bc]                                    ; $4DDA: $0A
    adc h                                         ; $4DDB: $8C
    ld b, c                                       ; $4DDC: $41
    inc c                                         ; $4DDD: $0C
    dec b                                         ; $4DDE: $05
    nop                                           ; $4DDF: $00
    nop                                           ; $4DE0: $00
    nop                                           ; $4DE1: $00
    nop                                           ; $4DE2: $00
    ld a, [bc]                                    ; $4DE3: $0A
    xor h                                         ; $4DE4: $AC
    ld b, c                                       ; $4DE5: $41
    ld [$0005], sp                                ; $4DE6: $08 $05 $00
    nop                                           ; $4DE9: $00
    nop                                           ; $4DEA: $00
    nop                                           ; $4DEB: $00
    ld a, [bc]                                    ; $4DEC: $0A
    ld c, d                                       ; $4DED: $4A
    ld b, c                                       ; $4DEE: $41
    jr nc, jr_003_4DF1                            ; $4DEF: $30 $00

jr_003_4DF1:
    nop                                           ; $4DF1: $00
    nop                                           ; $4DF2: $00
    nop                                           ; $4DF3: $00
    nop                                           ; $4DF4: $00
    ld a, [bc]                                    ; $4DF5: $0A
    ld h, d                                       ; $4DF6: $62
    ld b, c                                       ; $4DF7: $41
    ld [$0001], sp                                ; $4DF8: $08 $01 $00
    nop                                           ; $4DFB: $00
    nop                                           ; $4DFC: $00
    nop                                           ; $4DFD: $00
    ld a, [bc]                                    ; $4DFE: $0A
    ld e, d                                       ; $4DFF: $5A
    ld b, b                                       ; $4E00: $40
    ld [$00FF], sp                                ; $4E01: $08 $FF $00
    nop                                           ; $4E04: $00
    nop                                           ; $4E05: $00
    nop                                           ; $4E06: $00
    ld a, [bc]                                    ; $4E07: $0A
    ld a, [hl]                                    ; $4E08: $7E
    ld b, c                                       ; $4E09: $41
    ld [$0003], sp                                ; $4E0A: $08 $03 $00
    nop                                           ; $4E0D: $00
    nop                                           ; $4E0E: $00
    nop                                           ; $4E0F: $00
    ld a, [bc]                                    ; $4E10: $0A
    ld a, d                                       ; $4E11: $7A
    ld b, b                                       ; $4E12: $40
    ld [$0200], sp                                ; $4E13: $08 $00 $02
    inc bc                                        ; $4E16: $03
    nop                                           ; $4E17: $00
    nop                                           ; $4E18: $00
    ld a, [bc]                                    ; $4E19: $0A
    adc b                                         ; $4E1A: $88
    ld b, b                                       ; $4E1B: $40
    ld [$0200], sp                                ; $4E1C: $08 $00 $02
    inc b                                         ; $4E1F: $04
    nop                                           ; $4E20: $00
    nop                                           ; $4E21: $00
    ld a, [bc]                                    ; $4E22: $0A
    sub [hl]                                      ; $4E23: $96
    ld b, b                                       ; $4E24: $40
    db $10                                        ; $4E25: $10
    ld [bc], a                                    ; $4E26: $02
    inc bc                                        ; $4E27: $03
    inc b                                         ; $4E28: $04
    ld bc, $0A00                                  ; $4E29: $01 $00 $0A
    xor h                                         ; $4E2C: $AC
    ld b, b                                       ; $4E2D: $40
    ld [$0200], sp                                ; $4E2E: $08 $00 $02
    inc b                                         ; $4E31: $04
    nop                                           ; $4E32: $00
    nop                                           ; $4E33: $00
    ld a, [bc]                                    ; $4E34: $0A
    cp d                                          ; $4E35: $BA
    ld b, b                                       ; $4E36: $40
    ld [$0200], sp                                ; $4E37: $08 $00 $02
    inc b                                         ; $4E3A: $04
    inc b                                         ; $4E3B: $04
    nop                                           ; $4E3C: $00
    ld a, [bc]                                    ; $4E3D: $0A
    ret z                                         ; $4E3E: $C8

    ld b, b                                       ; $4E3F: $40
    db $10                                        ; $4E40: $10
    ld [bc], a                                    ; $4E41: $02
    inc bc                                        ; $4E42: $03
    ld b, $05                                     ; $4E43: $06 $05
    nop                                           ; $4E45: $00
    ld a, [bc]                                    ; $4E46: $0A
    sbc $40                                       ; $4E47: $DE $40
    db $10                                        ; $4E49: $10
    ld bc, $0302                                  ; $4E4A: $01 $02 $03
    ld [$0A00], sp                                ; $4E4D: $08 $00 $0A
    db $F4                                        ; $4E50: $F4
    ld b, b                                       ; $4E51: $40
    db $10                                        ; $4E52: $10
    ld bc, $0302                                  ; $4E53: $01 $02 $03
    ld [$0A00], sp                                ; $4E56: $08 $00 $0A
    ld a, [bc]                                    ; $4E59: $0A
    ld b, c                                       ; $4E5A: $41
    db $10                                        ; $4E5B: $10
    ld bc, $0302                                  ; $4E5C: $01 $02 $03
    add hl, bc                                    ; $4E5F: $09
    nop                                           ; $4E60: $00
    ld a, [bc]                                    ; $4E61: $0A
    ld d, [hl]                                    ; $4E62: $56
    ld b, d                                       ; $4E63: $42
    stop                                          ; $4E64: $10 $00
    rst RST_38                                    ; $4E66: $FF
    ld [$000F], sp                                ; $4E67: $08 $0F $00
    ld a, [bc]                                    ; $4E6A: $0A
    inc a                                         ; $4E6B: $3C
    ld b, d                                       ; $4E6C: $42
    inc c                                         ; $4E6D: $0C
    ld bc, $0305                                  ; $4E6E: $01 $05 $03
    ld hl, $0A00                                  ; $4E71: $21 $00 $0A
    ld l, h                                       ; $4E74: $6C
    ld b, d                                       ; $4E75: $42
    inc c                                         ; $4E76: $0C
    ld bc, $0304                                  ; $4E77: $01 $04 $03
    ld hl, $0A00                                  ; $4E7A: $21 $00 $0A
    add d                                         ; $4E7D: $82
    ld b, d                                       ; $4E7E: $42
    inc c                                         ; $4E7F: $0C
    nop                                           ; $4E80: $00
    ld [bc], a                                    ; $4E81: $02
    inc bc                                        ; $4E82: $03
    ld hl, $0A00                                  ; $4E83: $21 $00 $0A
    sbc b                                         ; $4E86: $98
    ld b, d                                       ; $4E87: $42
    inc e                                         ; $4E88: $1C
    ld bc, $0402                                  ; $4E89: $01 $02 $04
    stop                                          ; $4E8C: $10 $00
    ld a, [bc]                                    ; $4E8E: $0A
    ld l, h                                       ; $4E8F: $6C
    ld b, d                                       ; $4E90: $42
    db $10                                        ; $4E91: $10
    ld bc, $1101                                  ; $4E92: $01 $01 $11
    ld l, l                                       ; $4E95: $6D
    nop                                           ; $4E96: $00
    ld a, [bc]                                    ; $4E97: $0A
    or [hl]                                       ; $4E98: $B6
    ld b, d                                       ; $4E99: $42
    inc c                                         ; $4E9A: $0C
    ld bc, $0801                                  ; $4E9B: $01 $01 $08
    ld hl, $0A00                                  ; $4E9E: $21 $00 $0A
    inc c                                         ; $4EA1: $0C
    ld b, e                                       ; $4EA2: $43
    inc c                                         ; $4EA3: $0C
    inc d                                         ; $4EA4: $14
    ld bc, $B208                                  ; $4EA5: $01 $08 $B2
    nop                                           ; $4EA8: $00
    ld a, [bc]                                    ; $4EA9: $0A
    jr jr_003_4EED                                ; $4EAA: $18 $41

    inc c                                         ; $4EAC: $0C
    ld a, [bc]                                    ; $4EAD: $0A
    nop                                           ; $4EAE: $00
    nop                                           ; $4EAF: $00
    nop                                           ; $4EB0: $00
    nop                                           ; $4EB1: $00
    ld a, [bc]                                    ; $4EB2: $0A
    ld b, $40                                     ; $4EB3: $06 $40
    nop                                           ; $4EB5: $00
    nop                                           ; $4EB6: $00
    nop                                           ; $4EB7: $00
    nop                                           ; $4EB8: $00
    nop                                           ; $4EB9: $00
    nop                                           ; $4EBA: $00
    ld a, [bc]                                    ; $4EBB: $0A
    ld h, h                                       ; $4EBC: $64
    ld b, b                                       ; $4EBD: $40
    nop                                           ; $4EBE: $00
    dec b                                         ; $4EBF: $05
    nop                                           ; $4EC0: $00
    nop                                           ; $4EC1: $00
    nop                                           ; $4EC2: $00
    nop                                           ; $4EC3: $00
    ld a, [bc]                                    ; $4EC4: $0A
    or d                                          ; $4EC5: $B2
    ld b, c                                       ; $4EC6: $41
    nop                                           ; $4EC7: $00
    dec b                                         ; $4EC8: $05
    nop                                           ; $4EC9: $00
    nop                                           ; $4ECA: $00
    nop                                           ; $4ECB: $00
    nop                                           ; $4ECC: $00
    ld a, [bc]                                    ; $4ECD: $0A
    or d                                          ; $4ECE: $B2
    ld b, c                                       ; $4ECF: $41
    inc b                                         ; $4ED0: $04
    rst RST_38                                    ; $4ED1: $FF
    nop                                           ; $4ED2: $00
    nop                                           ; $4ED3: $00
    nop                                           ; $4ED4: $00
    nop                                           ; $4ED5: $00
    ld a, [bc]                                    ; $4ED6: $0A
    or d                                          ; $4ED7: $B2
    ld b, c                                       ; $4ED8: $41
    nop                                           ; $4ED9: $00
    dec b                                         ; $4EDA: $05
    nop                                           ; $4EDB: $00
    nop                                           ; $4EDC: $00
    nop                                           ; $4EDD: $00
    nop                                           ; $4EDE: $00
    ld a, [bc]                                    ; $4EDF: $0A
    ret nz                                        ; $4EE0: $C0

    ld b, c                                       ; $4EE1: $41
    nop                                           ; $4EE2: $00
    dec b                                         ; $4EE3: $05
    nop                                           ; $4EE4: $00
    nop                                           ; $4EE5: $00
    nop                                           ; $4EE6: $00
    nop                                           ; $4EE7: $00
    ld a, [bc]                                    ; $4EE8: $0A
    add $41                                       ; $4EE9: $C6 $41
    nop                                           ; $4EEB: $00
    dec b                                         ; $4EEC: $05

jr_003_4EED:
    nop                                           ; $4EED: $00
    nop                                           ; $4EEE: $00
    nop                                           ; $4EEF: $00
    nop                                           ; $4EF0: $00
    ld a, [bc]                                    ; $4EF1: $0A
    ld [$1041], a                                 ; $4EF2: $EA $41 $10
    dec b                                         ; $4EF5: $05
    nop                                           ; $4EF6: $00
    nop                                           ; $4EF7: $00
    nop                                           ; $4EF8: $00
    nop                                           ; $4EF9: $00
    ld a, [bc]                                    ; $4EFA: $0A
    inc c                                         ; $4EFB: $0C
    ld b, d                                       ; $4EFC: $42
    inc c                                         ; $4EFD: $0C
    rst RST_38                                    ; $4EFE: $FF
    nop                                           ; $4EFF: $00
    nop                                           ; $4F00: $00
    nop                                           ; $4F01: $00
    nop                                           ; $4F02: $00
    ld a, [bc]                                    ; $4F03: $0A
    ld e, $42                                     ; $4F04: $1E $42
    nop                                           ; $4F06: $00
    nop                                           ; $4F07: $00
    nop                                           ; $4F08: $00
    nop                                           ; $4F09: $00
    nop                                           ; $4F0A: $00
    nop                                           ; $4F0B: $00
    ld a, [bc]                                    ; $4F0C: $0A
    nop                                           ; $4F0D: $00
    ld b, d                                       ; $4F0E: $42
    jr jr_003_4F11                                ; $4F0F: $18 $00

jr_003_4F11:
    nop                                           ; $4F11: $00
    nop                                           ; $4F12: $00
    nop                                           ; $4F13: $00
    nop                                           ; $4F14: $00
    ld a, [bc]                                    ; $4F15: $0A
    ld e, $42                                     ; $4F16: $1E $42
    ld [$0002], sp                                ; $4F18: $08 $02 $00
    nop                                           ; $4F1B: $00
    nop                                           ; $4F1C: $00
    nop                                           ; $4F1D: $00
    ld a, [bc]                                    ; $4F1E: $0A
    call z, Call_000_1841                         ; $4F1F: $CC $41 $18
    ld [bc], a                                    ; $4F22: $02
    nop                                           ; $4F23: $00
    nop                                           ; $4F24: $00
    nop                                           ; $4F25: $00
    nop                                           ; $4F26: $00
    ld a, [bc]                                    ; $4F27: $0A
    or d                                          ; $4F28: $B2
    ld b, c                                       ; $4F29: $41
    nop                                           ; $4F2A: $00
    inc d                                         ; $4F2B: $14
    nop                                           ; $4F2C: $00
    nop                                           ; $4F2D: $00
    nop                                           ; $4F2E: $00
    nop                                           ; $4F2F: $00
    ld a, [bc]                                    ; $4F30: $0A
    ret nz                                        ; $4F31: $C0

    ld b, c                                       ; $4F32: $41
    nop                                           ; $4F33: $00
    inc d                                         ; $4F34: $14
    nop                                           ; $4F35: $00
    nop                                           ; $4F36: $00
    nop                                           ; $4F37: $00
    nop                                           ; $4F38: $00
    ld a, [bc]                                    ; $4F39: $0A
    or $41                                        ; $4F3A: $F6 $41
    inc b                                         ; $4F3C: $04
    nop                                           ; $4F3D: $00
    nop                                           ; $4F3E: $00
    nop                                           ; $4F3F: $00
    nop                                           ; $4F40: $00
    nop                                           ; $4F41: $00
    ld a, [bc]                                    ; $4F42: $0A
    inc c                                         ; $4F43: $0C
    ld b, d                                       ; $4F44: $42
    inc c                                         ; $4F45: $0C
    rst RST_38                                    ; $4F46: $FF
    nop                                           ; $4F47: $00
    nop                                           ; $4F48: $00
    nop                                           ; $4F49: $00
    nop                                           ; $4F4A: $00
    ld a, [bc]                                    ; $4F4B: $0A
    ret nz                                        ; $4F4C: $C0

    ld b, c                                       ; $4F4D: $41
    nop                                           ; $4F4E: $00
    inc a                                         ; $4F4F: $3C
    nop                                           ; $4F50: $00
    nop                                           ; $4F51: $00
    nop                                           ; $4F52: $00
    nop                                           ; $4F53: $00
    ld a, [bc]                                    ; $4F54: $0A
    ret nz                                        ; $4F55: $C0

    ld b, c                                       ; $4F56: $41
    nop                                           ; $4F57: $00
    inc a                                         ; $4F58: $3C
    nop                                           ; $4F59: $00
    nop                                           ; $4F5A: $00
    nop                                           ; $4F5B: $00
    nop                                           ; $4F5C: $00
    ld a, [bc]                                    ; $4F5D: $0A
    ret nz                                        ; $4F5E: $C0

    ld b, c                                       ; $4F5F: $41
    nop                                           ; $4F60: $00
    inc a                                         ; $4F61: $3C
    nop                                           ; $4F62: $00
    nop                                           ; $4F63: $00
    nop                                           ; $4F64: $00
    nop                                           ; $4F65: $00
    ld a, [bc]                                    ; $4F66: $0A
    inc l                                         ; $4F67: $2C
    ld b, d                                       ; $4F68: $42
    nop                                           ; $4F69: $00
    inc a                                         ; $4F6A: $3C
    nop                                           ; $4F6B: $00
    nop                                           ; $4F6C: $00
    nop                                           ; $4F6D: $00
    nop                                           ; $4F6E: $00
    ld a, [bc]                                    ; $4F6F: $0A
    inc c                                         ; $4F70: $0C
    ld b, d                                       ; $4F71: $42
    nop                                           ; $4F72: $00
    inc a                                         ; $4F73: $3C
    nop                                           ; $4F74: $00
    nop                                           ; $4F75: $00
    nop                                           ; $4F76: $00
    nop                                           ; $4F77: $00
    ld a, [bc]                                    ; $4F78: $0A
    or $41                                        ; $4F79: $F6 $41
    nop                                           ; $4F7B: $00
    inc a                                         ; $4F7C: $3C
    nop                                           ; $4F7D: $00
    nop                                           ; $4F7E: $00
    nop                                           ; $4F7F: $00
    nop                                           ; $4F80: $00
    ld a, $00                                     ; $4F81: $3E $00
    nop                                           ; $4F83: $00
    nop                                           ; $4F84: $00
    nop                                           ; $4F85: $00
    nop                                           ; $4F86: $00
    nop                                           ; $4F87: $00
    nop                                           ; $4F88: $00
    nop                                           ; $4F89: $00
    ld a, [bc]                                    ; $4F8A: $0A
    rra                                           ; $4F8B: $1F
    ld c, a                                       ; $4F8C: $4F
    inc c                                         ; $4F8D: $0C
    ld b, $00                                     ; $4F8E: $06 $00
    nop                                           ; $4F90: $00
    nop                                           ; $4F91: $00
    nop                                           ; $4F92: $00
    ld a, [bc]                                    ; $4F93: $0A
    ld sp, $084F                                  ; $4F94: $31 $4F $08
    inc bc                                        ; $4F97: $03
    nop                                           ; $4F98: $00
    nop                                           ; $4F99: $00
    nop                                           ; $4F9A: $00
    nop                                           ; $4F9B: $00
    ld a, [bc]                                    ; $4F9C: $0A
    ld b, e                                       ; $4F9D: $43
    ld c, a                                       ; $4F9E: $4F
    ld [$0004], sp                                ; $4F9F: $08 $04 $00
    nop                                           ; $4FA2: $00
    nop                                           ; $4FA3: $00
    nop                                           ; $4FA4: $00
    ld a, [bc]                                    ; $4FA5: $0A
    ld d, l                                       ; $4FA6: $55
    ld c, a                                       ; $4FA7: $4F
    nop                                           ; $4FA8: $00
    nop                                           ; $4FA9: $00
    nop                                           ; $4FAA: $00
    nop                                           ; $4FAB: $00
    nop                                           ; $4FAC: $00
    nop                                           ; $4FAD: $00
    ld a, [bc]                                    ; $4FAE: $0A
    ld e, e                                       ; $4FAF: $5B
    ld c, a                                       ; $4FB0: $4F
    inc e                                         ; $4FB1: $1C
    ld [bc], a                                    ; $4FB2: $02
    nop                                           ; $4FB3: $00
    nop                                           ; $4FB4: $00
    nop                                           ; $4FB5: $00
    nop                                           ; $4FB6: $00
    ld a, [bc]                                    ; $4FB7: $0A
    ld e, e                                       ; $4FB8: $5B
    ld c, a                                       ; $4FB9: $4F
    inc e                                         ; $4FBA: $1C
    ld [bc], a                                    ; $4FBB: $02
    nop                                           ; $4FBC: $00
    nop                                           ; $4FBD: $00
    nop                                           ; $4FBE: $00
    nop                                           ; $4FBF: $00
    ld a, [bc]                                    ; $4FC0: $0A
    ld e, e                                       ; $4FC1: $5B
    ld c, a                                       ; $4FC2: $4F
    inc e                                         ; $4FC3: $1C
    ld [bc], a                                    ; $4FC4: $02
    nop                                           ; $4FC5: $00
    nop                                           ; $4FC6: $00
    nop                                           ; $4FC7: $00
    nop                                           ; $4FC8: $00
    ld a, [bc]                                    ; $4FC9: $0A
    ld a, l                                       ; $4FCA: $7D
    ld c, a                                       ; $4FCB: $4F
    nop                                           ; $4FCC: $00
    nop                                           ; $4FCD: $00
    nop                                           ; $4FCE: $00
    nop                                           ; $4FCF: $00
    nop                                           ; $4FD0: $00
    nop                                           ; $4FD1: $00
    ld a, [bc]                                    ; $4FD2: $0A
    add e                                         ; $4FD3: $83
    ld c, a                                       ; $4FD4: $4F
    nop                                           ; $4FD5: $00
    nop                                           ; $4FD6: $00
    nop                                           ; $4FD7: $00
    nop                                           ; $4FD8: $00
    nop                                           ; $4FD9: $00
    nop                                           ; $4FDA: $00
    ld a, [bc]                                    ; $4FDB: $0A
    adc c                                         ; $4FDC: $89
    ld c, a                                       ; $4FDD: $4F
    nop                                           ; $4FDE: $00
    rst RST_38                                    ; $4FDF: $FF
    nop                                           ; $4FE0: $00
    nop                                           ; $4FE1: $00
    nop                                           ; $4FE2: $00
    nop                                           ; $4FE3: $00
    ld a, [bc]                                    ; $4FE4: $0A
    cpl                                           ; $4FE5: $2F
    ld d, b                                       ; $4FE6: $50
    ld [$0004], sp                                ; $4FE7: $08 $04 $00
    nop                                           ; $4FEA: $00
    nop                                           ; $4FEB: $00
    nop                                           ; $4FEC: $00
    ld a, [bc]                                    ; $4FED: $0A
    add hl, sp                                    ; $4FEE: $39
    ld d, b                                       ; $4FEF: $50
    ld [$00FF], sp                                ; $4FF0: $08 $FF $00
    nop                                           ; $4FF3: $00
    nop                                           ; $4FF4: $00
    nop                                           ; $4FF5: $00
    ld a, [bc]                                    ; $4FF6: $0A
    ld e, a                                       ; $4FF7: $5F
    ld d, b                                       ; $4FF8: $50
    stop                                          ; $4FF9: $10 $00
    ld bc, $8004                                  ; $4FFB: $01 $04 $80
    nop                                           ; $4FFE: $00
    ld a, [bc]                                    ; $4FFF: $0A
    rra                                           ; $5000: $1F
    ld d, c                                       ; $5001: $51
    inc b                                         ; $5002: $04
    ld [bc], a                                    ; $5003: $02
    nop                                           ; $5004: $00
    nop                                           ; $5005: $00
    nop                                           ; $5006: $00
    nop                                           ; $5007: $00
    ld a, [bc]                                    ; $5008: $0A
    and l                                         ; $5009: $A5
    ld d, b                                       ; $500A: $50
    inc b                                         ; $500B: $04
    ld a, [bc]                                    ; $500C: $0A
    nop                                           ; $500D: $00
    nop                                           ; $500E: $00
    nop                                           ; $500F: $00
    nop                                           ; $5010: $00
    ld a, [bc]                                    ; $5011: $0A
    ld [hl], l                                    ; $5012: $75
    ld d, b                                       ; $5013: $50
    inc c                                         ; $5014: $0C
    dec b                                         ; $5015: $05
    nop                                           ; $5016: $00
    nop                                           ; $5017: $00
    nop                                           ; $5018: $00
    nop                                           ; $5019: $00
    ld a, [bc]                                    ; $501A: $0A
    add a                                         ; $501B: $87
    ld d, b                                       ; $501C: $50
    inc c                                         ; $501D: $0C
    dec b                                         ; $501E: $05
    nop                                           ; $501F: $00
    nop                                           ; $5020: $00
    nop                                           ; $5021: $00
    nop                                           ; $5022: $00
    ld a, [bc]                                    ; $5023: $0A
    ld b, a                                       ; $5024: $47
    ld d, b                                       ; $5025: $50
    jr nc, jr_003_5028                            ; $5026: $30 $00

jr_003_5028:
    nop                                           ; $5028: $00
    nop                                           ; $5029: $00
    nop                                           ; $502A: $00
    nop                                           ; $502B: $00
    ld a, [bc]                                    ; $502C: $0A
    ld [hl], b                                    ; $502D: $70
    ld b, c                                       ; $502E: $41
    ld [$0001], sp                                ; $502F: $08 $01 $00
    nop                                           ; $5032: $00
    nop                                           ; $5033: $00
    nop                                           ; $5034: $00
    ld a, [bc]                                    ; $5035: $0A
    ld [hl], e                                    ; $5036: $73
    ld c, a                                       ; $5037: $4F
    ld [$00FF], sp                                ; $5038: $08 $FF $00
    nop                                           ; $503B: $00
    nop                                           ; $503C: $00
    nop                                           ; $503D: $00
    ld a, [bc]                                    ; $503E: $0A
    ld d, c                                       ; $503F: $51
    ld d, b                                       ; $5040: $50
    ld [$0003], sp                                ; $5041: $08 $03 $00
    nop                                           ; $5044: $00
    nop                                           ; $5045: $00
    nop                                           ; $5046: $00
    ld a, [bc]                                    ; $5047: $0A
    sub e                                         ; $5048: $93
    ld c, a                                       ; $5049: $4F
    ld [$0200], sp                                ; $504A: $08 $00 $02
    inc bc                                        ; $504D: $03
    nop                                           ; $504E: $00
    nop                                           ; $504F: $00
    ld a, [bc]                                    ; $5050: $0A
    and c                                         ; $5051: $A1
    ld c, a                                       ; $5052: $4F
    ld [$0200], sp                                ; $5053: $08 $00 $02
    inc b                                         ; $5056: $04
    nop                                           ; $5057: $00
    nop                                           ; $5058: $00
    ld a, [bc]                                    ; $5059: $0A
    or l                                          ; $505A: $B5
    ld c, a                                       ; $505B: $4F
    inc c                                         ; $505C: $0C
    ld [bc], a                                    ; $505D: $02
    inc bc                                        ; $505E: $03
    inc b                                         ; $505F: $04
    ld bc, $0A00                                  ; $5060: $01 $00 $0A
    rst RST_00                                    ; $5063: $C7
    ld c, a                                       ; $5064: $4F
    ld [$0200], sp                                ; $5065: $08 $00 $02
    inc b                                         ; $5068: $04
    nop                                           ; $5069: $00
    nop                                           ; $506A: $00
    ld a, [bc]                                    ; $506B: $0A
    push de                                       ; $506C: $D5
    ld c, a                                       ; $506D: $4F
    ld [$0200], sp                                ; $506E: $08 $00 $02
    inc b                                         ; $5071: $04
    inc b                                         ; $5072: $04
    nop                                           ; $5073: $00
    ld a, [bc]                                    ; $5074: $0A
    db $E3                                        ; $5075: $E3
    ld c, a                                       ; $5076: $4F
    ld [$0302], sp                                ; $5077: $08 $02 $03
    ld b, $05                                     ; $507A: $06 $05
    nop                                           ; $507C: $00
    ld a, [bc]                                    ; $507D: $0A
    pop af                                        ; $507E: $F1
    ld c, a                                       ; $507F: $4F
    db $10                                        ; $5080: $10
    ld bc, $0302                                  ; $5081: $01 $02 $03
    ld [$0A00], sp                                ; $5084: $08 $00 $0A
    rlca                                          ; $5087: $07
    ld d, b                                       ; $5088: $50
    db $10                                        ; $5089: $10
    ld bc, $0302                                  ; $508A: $01 $02 $03
    ld [$0A00], sp                                ; $508D: $08 $00 $0A
    xor a                                         ; $5090: $AF
    ld c, a                                       ; $5091: $4F
    db $10                                        ; $5092: $10
    ld bc, $0302                                  ; $5093: $01 $02 $03
    add hl, bc                                    ; $5096: $09
    nop                                           ; $5097: $00
    ld a, [bc]                                    ; $5098: $0A
    rra                                           ; $5099: $1F
    ld c, a                                       ; $509A: $4F
    stop                                          ; $509B: $10 $00
    rst RST_38                                    ; $509D: $FF
    ld [$000F], sp                                ; $509E: $08 $0F $00
    ld a, [bc]                                    ; $50A1: $0A
    add hl, hl                                    ; $50A2: $29
    ld d, c                                       ; $50A3: $51
    inc c                                         ; $50A4: $0C
    ld bc, $0305                                  ; $50A5: $01 $05 $03
    ld hl, $0A00                                  ; $50A8: $21 $00 $0A
    ld d, e                                       ; $50AB: $53
    ld d, c                                       ; $50AC: $51
    jr @+$2A                                      ; $50AD: $18 $28

    inc b                                         ; $50AF: $04
    ld [$0001], sp                                ; $50B0: $08 $01 $00
    ld a, [bc]                                    ; $50B3: $0A
    ld l, c                                       ; $50B4: $69
    ld d, c                                       ; $50B5: $51
    db $10                                        ; $50B6: $10
    ld [bc], a                                    ; $50B7: $02
    ld [bc], a                                    ; $50B8: $02
    inc b                                         ; $50B9: $04
    nop                                           ; $50BA: $00
    nop                                           ; $50BB: $00
    ld a, [bc]                                    ; $50BC: $0A
    add a                                         ; $50BD: $87
    ld d, c                                       ; $50BE: $51
    inc e                                         ; $50BF: $1C
    ld bc, $0402                                  ; $50C0: $01 $02 $04
    stop                                          ; $50C3: $10 $00
    ld a, [bc]                                    ; $50C5: $0A
    rra                                           ; $50C6: $1F
    ld c, a                                       ; $50C7: $4F
    inc c                                         ; $50C8: $0C
    ld bc, $1101                                  ; $50C9: $01 $01 $11
    ld h, c                                       ; $50CC: $61
    nop                                           ; $50CD: $00
    ld a, [bc]                                    ; $50CE: $0A
    sbc l                                         ; $50CF: $9D
    ld d, c                                       ; $50D0: $51
    inc c                                         ; $50D1: $0C
    ld bc, $0801                                  ; $50D2: $01 $01 $08
    ld hl, $0A00                                  ; $50D5: $21 $00 $0A
    rra                                           ; $50D8: $1F
    ld c, a                                       ; $50D9: $4F
    inc c                                         ; $50DA: $0C
    inc d                                         ; $50DB: $14
    ld bc, $B208                                  ; $50DC: $01 $08 $B2
    nop                                           ; $50DF: $00
    ld a, [bc]                                    ; $50E0: $0A
    dec e                                         ; $50E1: $1D
    ld d, b                                       ; $50E2: $50
    inc c                                         ; $50E3: $0C
    ld a, [bc]                                    ; $50E4: $0A
    nop                                           ; $50E5: $00
    nop                                           ; $50E6: $00
    nop                                           ; $50E7: $00
    nop                                           ; $50E8: $00
    ld a, [bc]                                    ; $50E9: $0A
    rra                                           ; $50EA: $1F
    ld c, a                                       ; $50EB: $4F
    nop                                           ; $50EC: $00
    nop                                           ; $50ED: $00
    nop                                           ; $50EE: $00
    nop                                           ; $50EF: $00
    nop                                           ; $50F0: $00
    nop                                           ; $50F1: $00
    ld a, [bc]                                    ; $50F2: $0A
    ld a, l                                       ; $50F3: $7D
    ld c, a                                       ; $50F4: $4F
    nop                                           ; $50F5: $00
    dec b                                         ; $50F6: $05
    nop                                           ; $50F7: $00
    nop                                           ; $50F8: $00
    nop                                           ; $50F9: $00
    nop                                           ; $50FA: $00
    ld a, [bc]                                    ; $50FB: $0A
    sbc c                                         ; $50FC: $99
    ld d, b                                       ; $50FD: $50
    nop                                           ; $50FE: $00
    dec b                                         ; $50FF: $05
    nop                                           ; $5100: $00
    nop                                           ; $5101: $00
    nop                                           ; $5102: $00
    nop                                           ; $5103: $00
    ld a, [bc]                                    ; $5104: $0A
    sbc c                                         ; $5105: $99
    ld d, b                                       ; $5106: $50
    inc b                                         ; $5107: $04
    rst RST_38                                    ; $5108: $FF
    nop                                           ; $5109: $00
    nop                                           ; $510A: $00
    nop                                           ; $510B: $00
    nop                                           ; $510C: $00
    ld a, [bc]                                    ; $510D: $0A
    sbc c                                         ; $510E: $99
    ld d, b                                       ; $510F: $50
    nop                                           ; $5110: $00
    dec b                                         ; $5111: $05
    nop                                           ; $5112: $00
    nop                                           ; $5113: $00
    nop                                           ; $5114: $00
    nop                                           ; $5115: $00
    ld a, [bc]                                    ; $5116: $0A
    sbc a                                         ; $5117: $9F
    ld d, b                                       ; $5118: $50
    nop                                           ; $5119: $00
    dec b                                         ; $511A: $05
    nop                                           ; $511B: $00
    nop                                           ; $511C: $00
    nop                                           ; $511D: $00
    nop                                           ; $511E: $00
    ld a, [bc]                                    ; $511F: $0A
    or e                                          ; $5120: $B3
    ld d, b                                       ; $5121: $50
    nop                                           ; $5122: $00
    dec b                                         ; $5123: $05
    nop                                           ; $5124: $00
    nop                                           ; $5125: $00
    nop                                           ; $5126: $00
    nop                                           ; $5127: $00
    ld a, [bc]                                    ; $5128: $0A
    rst RST_10                                    ; $5129: $D7
    ld d, b                                       ; $512A: $50
    db $10                                        ; $512B: $10
    dec b                                         ; $512C: $05
    nop                                           ; $512D: $00
    nop                                           ; $512E: $00
    nop                                           ; $512F: $00
    nop                                           ; $5130: $00
    ld a, [bc]                                    ; $5131: $0A
    ld sp, hl                                     ; $5132: $F9
    ld d, b                                       ; $5133: $50
    inc c                                         ; $5134: $0C
    rst RST_38                                    ; $5135: $FF
    nop                                           ; $5136: $00
    nop                                           ; $5137: $00
    nop                                           ; $5138: $00
    nop                                           ; $5139: $00
    ld a, [bc]                                    ; $513A: $0A
    dec bc                                        ; $513B: $0B
    ld d, c                                       ; $513C: $51
    nop                                           ; $513D: $00
    nop                                           ; $513E: $00
    nop                                           ; $513F: $00
    nop                                           ; $5140: $00
    nop                                           ; $5141: $00
    nop                                           ; $5142: $00
    ld a, [bc]                                    ; $5143: $0A
    db $ED                                        ; $5144: $ED
    ld d, b                                       ; $5145: $50
    jr jr_003_5148                                ; $5146: $18 $00

jr_003_5148:
    nop                                           ; $5148: $00
    nop                                           ; $5149: $00
    nop                                           ; $514A: $00
    nop                                           ; $514B: $00
    ld a, [bc]                                    ; $514C: $0A
    dec bc                                        ; $514D: $0B
    ld d, c                                       ; $514E: $51
    ld [$0002], sp                                ; $514F: $08 $02 $00
    nop                                           ; $5152: $00
    nop                                           ; $5153: $00
    nop                                           ; $5154: $00
    ld a, [bc]                                    ; $5155: $0A
    cp c                                          ; $5156: $B9
    ld d, b                                       ; $5157: $50
    jr jr_003_515C                                ; $5158: $18 $02

    nop                                           ; $515A: $00
    nop                                           ; $515B: $00

jr_003_515C:
    nop                                           ; $515C: $00
    nop                                           ; $515D: $00
    ld a, [bc]                                    ; $515E: $0A
    sbc c                                         ; $515F: $99
    ld d, b                                       ; $5160: $50
    nop                                           ; $5161: $00
    inc d                                         ; $5162: $14
    nop                                           ; $5163: $00
    nop                                           ; $5164: $00
    nop                                           ; $5165: $00
    nop                                           ; $5166: $00
    ld a, [bc]                                    ; $5167: $0A
    sbc a                                         ; $5168: $9F
    ld d, b                                       ; $5169: $50
    nop                                           ; $516A: $00
    inc d                                         ; $516B: $14
    nop                                           ; $516C: $00
    nop                                           ; $516D: $00
    nop                                           ; $516E: $00
    nop                                           ; $516F: $00
    ld a, [bc]                                    ; $5170: $0A
    db $E3                                        ; $5171: $E3
    ld d, b                                       ; $5172: $50
    inc b                                         ; $5173: $04
    nop                                           ; $5174: $00
    nop                                           ; $5175: $00
    nop                                           ; $5176: $00
    nop                                           ; $5177: $00
    nop                                           ; $5178: $00
    ld a, [bc]                                    ; $5179: $0A
    ld sp, hl                                     ; $517A: $F9
    ld d, b                                       ; $517B: $50
    inc c                                         ; $517C: $0C
    rst RST_38                                    ; $517D: $FF
    nop                                           ; $517E: $00
    nop                                           ; $517F: $00
    nop                                           ; $5180: $00
    nop                                           ; $5181: $00
    ld a, [bc]                                    ; $5182: $0A
    sbc a                                         ; $5183: $9F
    ld d, b                                       ; $5184: $50
    nop                                           ; $5185: $00
    inc a                                         ; $5186: $3C
    nop                                           ; $5187: $00
    nop                                           ; $5188: $00
    nop                                           ; $5189: $00
    nop                                           ; $518A: $00
    ld a, [bc]                                    ; $518B: $0A
    sbc a                                         ; $518C: $9F
    ld d, b                                       ; $518D: $50
    nop                                           ; $518E: $00
    inc a                                         ; $518F: $3C
    nop                                           ; $5190: $00
    nop                                           ; $5191: $00
    nop                                           ; $5192: $00
    nop                                           ; $5193: $00
    ld a, [bc]                                    ; $5194: $0A
    sbc a                                         ; $5195: $9F
    ld d, b                                       ; $5196: $50
    nop                                           ; $5197: $00
    inc a                                         ; $5198: $3C
    nop                                           ; $5199: $00
    nop                                           ; $519A: $00
    nop                                           ; $519B: $00
    nop                                           ; $519C: $00
    ld a, [bc]                                    ; $519D: $0A
    add hl, de                                    ; $519E: $19
    ld d, c                                       ; $519F: $51
    nop                                           ; $51A0: $00
    inc a                                         ; $51A1: $3C
    nop                                           ; $51A2: $00
    nop                                           ; $51A3: $00
    nop                                           ; $51A4: $00
    nop                                           ; $51A5: $00
    ld a, [bc]                                    ; $51A6: $0A
    ld sp, hl                                     ; $51A7: $F9
    ld d, b                                       ; $51A8: $50
    nop                                           ; $51A9: $00
    inc a                                         ; $51AA: $3C
    nop                                           ; $51AB: $00
    nop                                           ; $51AC: $00
    nop                                           ; $51AD: $00
    nop                                           ; $51AE: $00
    ld a, [bc]                                    ; $51AF: $0A
    db $E3                                        ; $51B0: $E3
    ld d, b                                       ; $51B1: $50
    nop                                           ; $51B2: $00
    inc a                                         ; $51B3: $3C
    nop                                           ; $51B4: $00
    nop                                           ; $51B5: $00
    nop                                           ; $51B6: $00
    nop                                           ; $51B7: $00
    ld a, $00                                     ; $51B8: $3E $00
    nop                                           ; $51BA: $00
    nop                                           ; $51BB: $00
    nop                                           ; $51BC: $00
    nop                                           ; $51BD: $00
    nop                                           ; $51BE: $00
    nop                                           ; $51BF: $00
    nop                                           ; $51C0: $00
    dec bc                                        ; $51C1: $0B
    ld a, [hl+]                                   ; $51C2: $2A
    ld b, b                                       ; $51C3: $40
    inc c                                         ; $51C4: $0C
    ld b, $00                                     ; $51C5: $06 $00
    nop                                           ; $51C7: $00
    nop                                           ; $51C8: $00
    nop                                           ; $51C9: $00
    dec bc                                        ; $51CA: $0B
    inc a                                         ; $51CB: $3C
    ld b, b                                       ; $51CC: $40
    ld [$0003], sp                                ; $51CD: $08 $03 $00
    nop                                           ; $51D0: $00
    nop                                           ; $51D1: $00
    nop                                           ; $51D2: $00
    dec bc                                        ; $51D3: $0B
    ld c, [hl]                                    ; $51D4: $4E
    ld b, b                                       ; $51D5: $40
    ld [$0004], sp                                ; $51D6: $08 $04 $00
    nop                                           ; $51D9: $00
    nop                                           ; $51DA: $00
    nop                                           ; $51DB: $00
    dec bc                                        ; $51DC: $0B
    ld h, b                                       ; $51DD: $60
    ld b, b                                       ; $51DE: $40
    nop                                           ; $51DF: $00
    nop                                           ; $51E0: $00
    nop                                           ; $51E1: $00
    nop                                           ; $51E2: $00
    nop                                           ; $51E3: $00
    nop                                           ; $51E4: $00
    dec bc                                        ; $51E5: $0B
    ld h, [hl]                                    ; $51E6: $66
    ld b, b                                       ; $51E7: $40
    inc e                                         ; $51E8: $1C
    inc bc                                        ; $51E9: $03
    nop                                           ; $51EA: $00
    nop                                           ; $51EB: $00
    nop                                           ; $51EC: $00
    nop                                           ; $51ED: $00
    dec bc                                        ; $51EE: $0B
    adc b                                         ; $51EF: $88
    ld b, b                                       ; $51F0: $40
    inc e                                         ; $51F1: $1C
    inc bc                                        ; $51F2: $03
    nop                                           ; $51F3: $00
    nop                                           ; $51F4: $00
    nop                                           ; $51F5: $00
    nop                                           ; $51F6: $00
    dec bc                                        ; $51F7: $0B
    xor d                                         ; $51F8: $AA
    ld b, b                                       ; $51F9: $40
    inc e                                         ; $51FA: $1C
    inc bc                                        ; $51FB: $03
    nop                                           ; $51FC: $00
    nop                                           ; $51FD: $00
    nop                                           ; $51FE: $00
    nop                                           ; $51FF: $00
    dec bc                                        ; $5200: $0B
    call z, VBlankInterrupt                       ; $5201: $CC $40 $00
    nop                                           ; $5204: $00
    nop                                           ; $5205: $00
    nop                                           ; $5206: $00
    nop                                           ; $5207: $00
    nop                                           ; $5208: $00
    dec bc                                        ; $5209: $0B
    jp nc, VBlankInterrupt                        ; $520A: $D2 $40 $00

    nop                                           ; $520D: $00
    nop                                           ; $520E: $00
    nop                                           ; $520F: $00
    nop                                           ; $5210: $00
    nop                                           ; $5211: $00
    dec bc                                        ; $5212: $0B
    ret c                                         ; $5213: $D8

    ld b, b                                       ; $5214: $40
    nop                                           ; $5215: $00
    rst RST_38                                    ; $5216: $FF
    nop                                           ; $5217: $00
    nop                                           ; $5218: $00
    nop                                           ; $5219: $00
    nop                                           ; $521A: $00
    dec bc                                        ; $521B: $0B
    call z, $0841                                 ; $521C: $CC $41 $08
    inc b                                         ; $521F: $04
    nop                                           ; $5220: $00
    nop                                           ; $5221: $00
    nop                                           ; $5222: $00
    nop                                           ; $5223: $00
    dec bc                                        ; $5224: $0B
    sub $41                                       ; $5225: $D6 $41
    ld [$00FF], sp                                ; $5227: $08 $FF $00
    nop                                           ; $522A: $00
    nop                                           ; $522B: $00
    nop                                           ; $522C: $00
    dec bc                                        ; $522D: $0B
    xor $41                                       ; $522E: $EE $41
    db $10                                        ; $5230: $10
    ld bc, $0401                                  ; $5231: $01 $01 $04
    add b                                         ; $5234: $80
    nop                                           ; $5235: $00
    dec bc                                        ; $5236: $0B
    db $EC                                        ; $5237: $EC
    ld b, d                                       ; $5238: $42
    inc b                                         ; $5239: $04
    ld [bc], a                                    ; $523A: $02
    nop                                           ; $523B: $00
    nop                                           ; $523C: $00
    nop                                           ; $523D: $00
    nop                                           ; $523E: $00
    dec bc                                        ; $523F: $0B
    ld [hl], d                                    ; $5240: $72
    ld b, d                                       ; $5241: $42
    inc b                                         ; $5242: $04
    ld a, [bc]                                    ; $5243: $0A
    nop                                           ; $5244: $00
    nop                                           ; $5245: $00
    nop                                           ; $5246: $00
    nop                                           ; $5247: $00
    dec bc                                        ; $5248: $0B
    ld l, $42                                     ; $5249: $2E $42
    jr jr_003_5252                                ; $524B: $18 $05

    nop                                           ; $524D: $00
    nop                                           ; $524E: $00
    nop                                           ; $524F: $00
    nop                                           ; $5250: $00
    dec bc                                        ; $5251: $0B

jr_003_5252:
    ld h, [hl]                                    ; $5252: $66
    ld b, d                                       ; $5253: $42
    ld [$0005], sp                                ; $5254: $08 $05 $00
    nop                                           ; $5257: $00
    nop                                           ; $5258: $00
    nop                                           ; $5259: $00
    dec bc                                        ; $525A: $0B
    db $E4                                        ; $525B: $E4
    ld b, c                                       ; $525C: $41
    jr nc, jr_003_525F                            ; $525D: $30 $00

jr_003_525F:
    nop                                           ; $525F: $00
    nop                                           ; $5260: $00
    nop                                           ; $5261: $00
    nop                                           ; $5262: $00
    dec bc                                        ; $5263: $0B
    inc b                                         ; $5264: $04
    ld b, d                                       ; $5265: $42
    ld [$0001], sp                                ; $5266: $08 $01 $00
    nop                                           ; $5269: $00
    nop                                           ; $526A: $00
    nop                                           ; $526B: $00
    dec bc                                        ; $526C: $0B
    ld a, [hl]                                    ; $526D: $7E
    ld b, b                                       ; $526E: $40
    ld [$00FF], sp                                ; $526F: $08 $FF $00
    nop                                           ; $5272: $00
    nop                                           ; $5273: $00
    nop                                           ; $5274: $00
    dec bc                                        ; $5275: $0B
    jr nz, @+$44                                  ; $5276: $20 $42

    ld [$0003], sp                                ; $5278: $08 $03 $00
    nop                                           ; $527B: $00
    nop                                           ; $527C: $00
    nop                                           ; $527D: $00
    dec bc                                        ; $527E: $0B
    ldh [c], a                                    ; $527F: $E2
    ld b, b                                       ; $5280: $40
    ld [$0200], sp                                ; $5281: $08 $00 $02
    inc bc                                        ; $5284: $03
    nop                                           ; $5285: $00
    nop                                           ; $5286: $00
    dec bc                                        ; $5287: $0B
    ldh a, [rLCDC]                                ; $5288: $F0 $40
    ld [$0200], sp                                ; $528A: $08 $00 $02
    inc b                                         ; $528D: $04
    nop                                           ; $528E: $00
    nop                                           ; $528F: $00
    dec bc                                        ; $5290: $0B
    cp $40                                        ; $5291: $FE $40
    inc d                                         ; $5293: $14
    nop                                           ; $5294: $00
    inc bc                                        ; $5295: $03
    inc b                                         ; $5296: $04
    ld bc, $0B00                                  ; $5297: $01 $00 $0B
    jr @+$43                                      ; $529A: $18 $41

    ld [$0200], sp                                ; $529C: $08 $00 $02
    inc b                                         ; $529F: $04
    nop                                           ; $52A0: $00
    nop                                           ; $52A1: $00
    dec bc                                        ; $52A2: $0B
    ld h, $41                                     ; $52A3: $26 $41
    ld [$0200], sp                                ; $52A5: $08 $00 $02
    inc b                                         ; $52A8: $04
    inc b                                         ; $52A9: $04
    nop                                           ; $52AA: $00
    dec bc                                        ; $52AB: $0B
    inc [hl]                                      ; $52AC: $34
    ld b, c                                       ; $52AD: $41
    db $10                                        ; $52AE: $10
    ld bc, $0603                                  ; $52AF: $01 $03 $06
    dec b                                         ; $52B2: $05
    nop                                           ; $52B3: $00
    dec bc                                        ; $52B4: $0B
    ld c, d                                       ; $52B5: $4A
    ld b, c                                       ; $52B6: $41
    db $10                                        ; $52B7: $10
    ld bc, $0302                                  ; $52B8: $01 $02 $03
    ld [$0B00], sp                                ; $52BB: $08 $00 $0B
    ld h, b                                       ; $52BE: $60
    ld b, c                                       ; $52BF: $41
    db $10                                        ; $52C0: $10
    ld bc, $0302                                  ; $52C1: $01 $02 $03
    ld [$0B00], sp                                ; $52C4: $08 $00 $0B
    ret z                                         ; $52C7: $C8

    ld b, e                                       ; $52C8: $43
    db $10                                        ; $52C9: $10
    ld bc, $0302                                  ; $52CA: $01 $02 $03
    add hl, bc                                    ; $52CD: $09
    nop                                           ; $52CE: $00
    dec bc                                        ; $52CF: $0B
    or $42                                        ; $52D0: $F6 $42
    inc c                                         ; $52D2: $0C
    nop                                           ; $52D3: $00
    rst RST_38                                    ; $52D4: $FF
    ld [$000F], sp                                ; $52D5: $08 $0F $00
    dec bc                                        ; $52D8: $0B
    ld e, $43                                     ; $52D9: $1E $43
    inc c                                         ; $52DB: $0C
    ld bc, $0305                                  ; $52DC: $01 $05 $03
    ld hl, $0B00                                  ; $52DF: $21 $00 $0B
    inc [hl]                                      ; $52E2: $34
    ld b, e                                       ; $52E3: $43
    inc c                                         ; $52E4: $0C
    ld bc, $0304                                  ; $52E5: $01 $04 $03
    ld hl, $0B00                                  ; $52E8: $21 $00 $0B
    ld h, [hl]                                    ; $52EB: $66
    ld b, e                                       ; $52EC: $43
    inc c                                         ; $52ED: $0C
    nop                                           ; $52EE: $00
    dec b                                         ; $52EF: $05
    ld a, [bc]                                    ; $52F0: $0A
    ld hl, $0B00                                  ; $52F1: $21 $00 $0B
    ld a, h                                       ; $52F4: $7C
    ld b, e                                       ; $52F5: $43
    inc e                                         ; $52F6: $1C
    ld bc, $0402                                  ; $52F7: $01 $02 $04
    stop                                          ; $52FA: $10 $00
    dec bc                                        ; $52FC: $0B
    ld [$1043], sp                                ; $52FD: $08 $43 $10
    ld bc, $1101                                  ; $5300: $01 $01 $11
    ld l, l                                       ; $5303: $6D
    nop                                           ; $5304: $00
    dec bc                                        ; $5305: $0B
    sub [hl]                                      ; $5306: $96
    ld b, e                                       ; $5307: $43
    inc c                                         ; $5308: $0C
    ld bc, $0801                                  ; $5309: $01 $01 $08
    ld hl, $0B00                                  ; $530C: $21 $00 $0B
    ld a, [$0C43]                                 ; $530F: $FA $43 $0C
    ld bc, $0801                                  ; $5312: $01 $01 $08
    or d                                          ; $5315: $B2
    nop                                           ; $5316: $00
    dec bc                                        ; $5317: $0B
    halt                                          ; $5318: $76
    ld b, c                                       ; $5319: $41
    inc c                                         ; $531A: $0C
    ld a, [bc]                                    ; $531B: $0A
    nop                                           ; $531C: $00
    nop                                           ; $531D: $00
    nop                                           ; $531E: $00
    nop                                           ; $531F: $00
    dec bc                                        ; $5320: $0B
    ld a, [hl+]                                   ; $5321: $2A
    ld b, b                                       ; $5322: $40
    nop                                           ; $5323: $00
    nop                                           ; $5324: $00
    nop                                           ; $5325: $00
    nop                                           ; $5326: $00
    nop                                           ; $5327: $00
    nop                                           ; $5328: $00
    dec bc                                        ; $5329: $0B
    call z, VBlankInterrupt                       ; $532A: $CC $40 $00
    dec b                                         ; $532D: $05
    nop                                           ; $532E: $00
    nop                                           ; $532F: $00
    nop                                           ; $5330: $00
    nop                                           ; $5331: $00
    dec bc                                        ; $5332: $0B
    ld l, h                                       ; $5333: $6C
    ld b, d                                       ; $5334: $42
    nop                                           ; $5335: $00
    dec b                                         ; $5336: $05
    nop                                           ; $5337: $00
    nop                                           ; $5338: $00
    nop                                           ; $5339: $00
    nop                                           ; $533A: $00
    dec bc                                        ; $533B: $0B
    ld l, h                                       ; $533C: $6C
    ld b, d                                       ; $533D: $42
    inc b                                         ; $533E: $04
    rst RST_38                                    ; $533F: $FF
    nop                                           ; $5340: $00
    nop                                           ; $5341: $00
    nop                                           ; $5342: $00
    nop                                           ; $5343: $00
    dec bc                                        ; $5344: $0B
    ld l, h                                       ; $5345: $6C
    ld b, d                                       ; $5346: $42
    nop                                           ; $5347: $00
    dec b                                         ; $5348: $05
    nop                                           ; $5349: $00
    nop                                           ; $534A: $00
    nop                                           ; $534B: $00
    nop                                           ; $534C: $00
    dec bc                                        ; $534D: $0B
    ld a, d                                       ; $534E: $7A
    ld b, d                                       ; $534F: $42
    nop                                           ; $5350: $00
    dec b                                         ; $5351: $05
    nop                                           ; $5352: $00
    nop                                           ; $5353: $00
    nop                                           ; $5354: $00
    nop                                           ; $5355: $00
    dec bc                                        ; $5356: $0B
    add b                                         ; $5357: $80
    ld b, d                                       ; $5358: $42
    nop                                           ; $5359: $00
    dec b                                         ; $535A: $05
    nop                                           ; $535B: $00
    nop                                           ; $535C: $00
    nop                                           ; $535D: $00
    nop                                           ; $535E: $00
    dec bc                                        ; $535F: $0B
    and h                                         ; $5360: $A4
    ld b, d                                       ; $5361: $42
    db $10                                        ; $5362: $10
    dec b                                         ; $5363: $05
    nop                                           ; $5364: $00
    nop                                           ; $5365: $00
    nop                                           ; $5366: $00
    nop                                           ; $5367: $00
    dec bc                                        ; $5368: $0B
    add $42                                       ; $5369: $C6 $42
    inc c                                         ; $536B: $0C
    rst RST_38                                    ; $536C: $FF
    nop                                           ; $536D: $00
    nop                                           ; $536E: $00
    nop                                           ; $536F: $00
    nop                                           ; $5370: $00
    dec bc                                        ; $5371: $0B
    ret c                                         ; $5372: $D8

    ld b, d                                       ; $5373: $42
    nop                                           ; $5374: $00
    nop                                           ; $5375: $00
    nop                                           ; $5376: $00
    nop                                           ; $5377: $00
    nop                                           ; $5378: $00
    nop                                           ; $5379: $00
    dec bc                                        ; $537A: $0B
    cp d                                          ; $537B: $BA
    ld b, d                                       ; $537C: $42
    jr jr_003_537F                                ; $537D: $18 $00

jr_003_537F:
    nop                                           ; $537F: $00
    nop                                           ; $5380: $00
    nop                                           ; $5381: $00
    nop                                           ; $5382: $00
    dec bc                                        ; $5383: $0B
    ret c                                         ; $5384: $D8

    ld b, d                                       ; $5385: $42
    ld [$0002], sp                                ; $5386: $08 $02 $00
    nop                                           ; $5389: $00
    nop                                           ; $538A: $00
    nop                                           ; $538B: $00
    dec bc                                        ; $538C: $0B
    add [hl]                                      ; $538D: $86
    ld b, d                                       ; $538E: $42
    jr jr_003_5393                                ; $538F: $18 $02

    nop                                           ; $5391: $00
    nop                                           ; $5392: $00

jr_003_5393:
    nop                                           ; $5393: $00
    nop                                           ; $5394: $00
    dec bc                                        ; $5395: $0B
    ld l, h                                       ; $5396: $6C
    ld b, d                                       ; $5397: $42
    nop                                           ; $5398: $00
    inc d                                         ; $5399: $14
    nop                                           ; $539A: $00
    nop                                           ; $539B: $00
    nop                                           ; $539C: $00
    nop                                           ; $539D: $00
    dec bc                                        ; $539E: $0B
    ld a, d                                       ; $539F: $7A
    ld b, d                                       ; $53A0: $42
    nop                                           ; $53A1: $00
    inc d                                         ; $53A2: $14
    nop                                           ; $53A3: $00
    nop                                           ; $53A4: $00
    nop                                           ; $53A5: $00
    nop                                           ; $53A6: $00
    dec bc                                        ; $53A7: $0B
    or b                                          ; $53A8: $B0
    ld b, d                                       ; $53A9: $42
    inc b                                         ; $53AA: $04
    nop                                           ; $53AB: $00
    nop                                           ; $53AC: $00
    nop                                           ; $53AD: $00
    nop                                           ; $53AE: $00
    nop                                           ; $53AF: $00
    dec bc                                        ; $53B0: $0B
    add $42                                       ; $53B1: $C6 $42
    inc c                                         ; $53B3: $0C
    rst RST_38                                    ; $53B4: $FF
    nop                                           ; $53B5: $00
    nop                                           ; $53B6: $00
    nop                                           ; $53B7: $00
    nop                                           ; $53B8: $00
    dec bc                                        ; $53B9: $0B
    ld a, d                                       ; $53BA: $7A
    ld b, d                                       ; $53BB: $42
    nop                                           ; $53BC: $00
    inc a                                         ; $53BD: $3C
    nop                                           ; $53BE: $00
    nop                                           ; $53BF: $00
    nop                                           ; $53C0: $00
    nop                                           ; $53C1: $00
    dec bc                                        ; $53C2: $0B
    ld a, d                                       ; $53C3: $7A
    ld b, d                                       ; $53C4: $42
    nop                                           ; $53C5: $00
    inc a                                         ; $53C6: $3C
    nop                                           ; $53C7: $00
    nop                                           ; $53C8: $00
    nop                                           ; $53C9: $00
    nop                                           ; $53CA: $00
    dec bc                                        ; $53CB: $0B
    ld a, d                                       ; $53CC: $7A
    ld b, d                                       ; $53CD: $42
    nop                                           ; $53CE: $00
    inc a                                         ; $53CF: $3C
    nop                                           ; $53D0: $00
    nop                                           ; $53D1: $00
    nop                                           ; $53D2: $00
    nop                                           ; $53D3: $00
    dec bc                                        ; $53D4: $0B
    and $42                                       ; $53D5: $E6 $42
    nop                                           ; $53D7: $00
    inc a                                         ; $53D8: $3C
    nop                                           ; $53D9: $00
    nop                                           ; $53DA: $00
    nop                                           ; $53DB: $00
    nop                                           ; $53DC: $00
    dec bc                                        ; $53DD: $0B
    add $42                                       ; $53DE: $C6 $42
    nop                                           ; $53E0: $00
    inc a                                         ; $53E1: $3C
    nop                                           ; $53E2: $00
    nop                                           ; $53E3: $00
    nop                                           ; $53E4: $00
    nop                                           ; $53E5: $00
    dec bc                                        ; $53E6: $0B
    or b                                          ; $53E7: $B0
    ld b, d                                       ; $53E8: $42
    nop                                           ; $53E9: $00
    inc a                                         ; $53EA: $3C
    nop                                           ; $53EB: $00
    nop                                           ; $53EC: $00
    nop                                           ; $53ED: $00
    nop                                           ; $53EE: $00
    ld a, $00                                     ; $53EF: $3E $00
    nop                                           ; $53F1: $00
    nop                                           ; $53F2: $00
    nop                                           ; $53F3: $00
    nop                                           ; $53F4: $00
    nop                                           ; $53F5: $00
    nop                                           ; $53F6: $00
    nop                                           ; $53F7: $00
    dec bc                                        ; $53F8: $0B
    ld b, h                                       ; $53F9: $44
    ld d, c                                       ; $53FA: $51
    inc c                                         ; $53FB: $0C
    ld b, $00                                     ; $53FC: $06 $00
    nop                                           ; $53FE: $00
    nop                                           ; $53FF: $00
    nop                                           ; $5400: $00
    dec bc                                        ; $5401: $0B
    ld e, [hl]                                    ; $5402: $5E
    ld d, c                                       ; $5403: $51
    ld [$0003], sp                                ; $5404: $08 $03 $00
    nop                                           ; $5407: $00
    nop                                           ; $5408: $00
    nop                                           ; $5409: $00
    dec bc                                        ; $540A: $0B
    ld [hl], b                                    ; $540B: $70
    ld d, c                                       ; $540C: $51
    ld [$0004], sp                                ; $540D: $08 $04 $00
    nop                                           ; $5410: $00
    nop                                           ; $5411: $00
    nop                                           ; $5412: $00
    dec bc                                        ; $5413: $0B
    add d                                         ; $5414: $82
    ld d, c                                       ; $5415: $51
    nop                                           ; $5416: $00
    nop                                           ; $5417: $00
    nop                                           ; $5418: $00
    nop                                           ; $5419: $00
    nop                                           ; $541A: $00
    nop                                           ; $541B: $00
    dec bc                                        ; $541C: $0B
    adc b                                         ; $541D: $88
    ld d, c                                       ; $541E: $51
    inc e                                         ; $541F: $1C
    ld [bc], a                                    ; $5420: $02
    nop                                           ; $5421: $00
    nop                                           ; $5422: $00
    nop                                           ; $5423: $00
    nop                                           ; $5424: $00
    dec bc                                        ; $5425: $0B
    xor d                                         ; $5426: $AA
    ld d, c                                       ; $5427: $51
    inc e                                         ; $5428: $1C
    ld [bc], a                                    ; $5429: $02
    nop                                           ; $542A: $00
    nop                                           ; $542B: $00
    nop                                           ; $542C: $00
    nop                                           ; $542D: $00
    dec bc                                        ; $542E: $0B
    call z, $1C51                                 ; $542F: $CC $51 $1C
    ld [bc], a                                    ; $5432: $02
    nop                                           ; $5433: $00
    nop                                           ; $5434: $00
    nop                                           ; $5435: $00
    nop                                           ; $5436: $00
    dec bc                                        ; $5437: $0B
    xor $51                                       ; $5438: $EE $51
    nop                                           ; $543A: $00
    nop                                           ; $543B: $00
    nop                                           ; $543C: $00
    nop                                           ; $543D: $00
    nop                                           ; $543E: $00
    nop                                           ; $543F: $00
    dec bc                                        ; $5440: $0B
    db $F4                                        ; $5441: $F4
    ld d, c                                       ; $5442: $51
    nop                                           ; $5443: $00
    nop                                           ; $5444: $00
    nop                                           ; $5445: $00
    nop                                           ; $5446: $00
    nop                                           ; $5447: $00
    nop                                           ; $5448: $00
    dec bc                                        ; $5449: $0B
    ld a, [$0051]                                 ; $544A: $FA $51 $00
    rst RST_38                                    ; $544D: $FF
    nop                                           ; $544E: $00
    nop                                           ; $544F: $00
    nop                                           ; $5450: $00
    nop                                           ; $5451: $00
    dec bc                                        ; $5452: $0B
    and d                                         ; $5453: $A2
    ld d, d                                       ; $5454: $52
    ld [$0004], sp                                ; $5455: $08 $04 $00
    nop                                           ; $5458: $00
    nop                                           ; $5459: $00
    nop                                           ; $545A: $00
    dec bc                                        ; $545B: $0B
    xor h                                         ; $545C: $AC
    ld d, d                                       ; $545D: $52
    ld [$00FF], sp                                ; $545E: $08 $FF $00
    nop                                           ; $5461: $00
    nop                                           ; $5462: $00
    nop                                           ; $5463: $00
    dec bc                                        ; $5464: $0B
    jp nc, Jump_000_0852                          ; $5465: $D2 $52 $08

    nop                                           ; $5468: $00
    ld bc, $8004                                  ; $5469: $01 $04 $80
    nop                                           ; $546C: $00
    dec bc                                        ; $546D: $0B
    sub h                                         ; $546E: $94
    ld d, e                                       ; $546F: $53
    inc b                                         ; $5470: $04
    ld [bc], a                                    ; $5471: $02
    nop                                           ; $5472: $00
    nop                                           ; $5473: $00
    nop                                           ; $5474: $00
    nop                                           ; $5475: $00
    dec bc                                        ; $5476: $0B
    ld a, [de]                                    ; $5477: $1A
    ld d, e                                       ; $5478: $53
    inc b                                         ; $5479: $04
    ld a, [bc]                                    ; $547A: $0A
    nop                                           ; $547B: $00
    nop                                           ; $547C: $00
    nop                                           ; $547D: $00
    nop                                           ; $547E: $00
    dec bc                                        ; $547F: $0B
    ldh [rHDMA2], a                               ; $5480: $E0 $52
    jr z, jr_003_5485                             ; $5482: $28 $01

    nop                                           ; $5484: $00

jr_003_5485:
    nop                                           ; $5485: $00
    nop                                           ; $5486: $00
    nop                                           ; $5487: $00
    dec bc                                        ; $5488: $0B
    ld c, $53                                     ; $5489: $0E $53
    inc c                                         ; $548B: $0C
    dec b                                         ; $548C: $05
    nop                                           ; $548D: $00
    nop                                           ; $548E: $00
    nop                                           ; $548F: $00
    nop                                           ; $5490: $00
    dec bc                                        ; $5491: $0B
    cp d                                          ; $5492: $BA
    ld d, d                                       ; $5493: $52
    jr nc, jr_003_5496                            ; $5494: $30 $00

jr_003_5496:
    nop                                           ; $5496: $00
    nop                                           ; $5497: $00
    nop                                           ; $5498: $00
    nop                                           ; $5499: $00
    dec bc                                        ; $549A: $0B
    ld [de], a                                    ; $549B: $12
    ld b, d                                       ; $549C: $42
    ld [$0001], sp                                ; $549D: $08 $01 $00
    nop                                           ; $54A0: $00
    nop                                           ; $54A1: $00
    nop                                           ; $54A2: $00
    dec bc                                        ; $54A3: $0B
    and b                                         ; $54A4: $A0
    ld d, c                                       ; $54A5: $51
    ld [$00FF], sp                                ; $54A6: $08 $FF $00
    nop                                           ; $54A9: $00
    nop                                           ; $54AA: $00
    nop                                           ; $54AB: $00
    dec bc                                        ; $54AC: $0B
    call nz, Call_000_0852                        ; $54AD: $C4 $52 $08
    inc bc                                        ; $54B0: $03
    nop                                           ; $54B1: $00
    nop                                           ; $54B2: $00
    nop                                           ; $54B3: $00
    nop                                           ; $54B4: $00
    dec bc                                        ; $54B5: $0B
    inc b                                         ; $54B6: $04
    ld d, d                                       ; $54B7: $52
    ld [$0200], sp                                ; $54B8: $08 $00 $02
    inc bc                                        ; $54BB: $03
    nop                                           ; $54BC: $00
    nop                                           ; $54BD: $00
    dec bc                                        ; $54BE: $0B
    ld [de], a                                    ; $54BF: $12
    ld d, d                                       ; $54C0: $52
    ld [$0200], sp                                ; $54C1: $08 $00 $02
    inc b                                         ; $54C4: $04
    nop                                           ; $54C5: $00
    nop                                           ; $54C6: $00
    dec bc                                        ; $54C7: $0B
    jr nz, @+$54                                  ; $54C8: $20 $52

    ld [$0302], sp                                ; $54CA: $08 $02 $03
    inc b                                         ; $54CD: $04
    ld bc, $0B00                                  ; $54CE: $01 $00 $0B
    ld l, $52                                     ; $54D1: $2E $52
    ld [$0200], sp                                ; $54D3: $08 $00 $02
    inc b                                         ; $54D6: $04
    nop                                           ; $54D7: $00
    nop                                           ; $54D8: $00
    dec bc                                        ; $54D9: $0B
    inc a                                         ; $54DA: $3C
    ld d, d                                       ; $54DB: $52
    ld [$0200], sp                                ; $54DC: $08 $00 $02
    inc b                                         ; $54DF: $04
    inc b                                         ; $54E0: $04
    nop                                           ; $54E1: $00
    dec bc                                        ; $54E2: $0B
    ld c, d                                       ; $54E3: $4A
    ld d, d                                       ; $54E4: $52
    db $10                                        ; $54E5: $10
    ld bc, $0603                                  ; $54E6: $01 $03 $06
    dec b                                         ; $54E9: $05
    nop                                           ; $54EA: $00
    dec bc                                        ; $54EB: $0B
    ld h, b                                       ; $54EC: $60
    ld d, d                                       ; $54ED: $52
    db $10                                        ; $54EE: $10
    ld bc, $0302                                  ; $54EF: $01 $02 $03
    ld [$0B00], sp                                ; $54F2: $08 $00 $0B
    halt                                          ; $54F5: $76
    ld d, d                                       ; $54F6: $52
    db $10                                        ; $54F7: $10
    ld bc, $0302                                  ; $54F8: $01 $02 $03
    ld [$0B00], sp                                ; $54FB: $08 $00 $0B
    ld b, h                                       ; $54FE: $44
    ld d, c                                       ; $54FF: $51
    db $10                                        ; $5500: $10
    ld bc, $0302                                  ; $5501: $01 $02 $03
    add hl, bc                                    ; $5504: $09
    nop                                           ; $5505: $00
    dec bc                                        ; $5506: $0B
    ld b, h                                       ; $5507: $44
    ld d, c                                       ; $5508: $51
    stop                                          ; $5509: $10 $00
    rst RST_38                                    ; $550B: $FF
    ld [$000F], sp                                ; $550C: $08 $0F $00
    dec bc                                        ; $550F: $0B
    sbc [hl]                                      ; $5510: $9E
    ld d, e                                       ; $5511: $53
    inc c                                         ; $5512: $0C
    ld bc, $0305                                  ; $5513: $01 $05 $03
    ld bc, $0B00                                  ; $5516: $01 $00 $0B
    cp b                                          ; $5519: $B8
    ld d, e                                       ; $551A: $53
    jr jr_003_551E                                ; $551B: $18 $01

    inc b                                         ; $551D: $04

jr_003_551E:
    ld [$0001], sp                                ; $551E: $08 $01 $00
    dec bc                                        ; $5521: $0B
    adc $53                                       ; $5522: $CE $53
    db $10                                        ; $5524: $10
    jr z, jr_003_5529                             ; $5525: $28 $02

    inc b                                         ; $5527: $04
    nop                                           ; $5528: $00

jr_003_5529:
    nop                                           ; $5529: $00
    dec bc                                        ; $552A: $0B
    db $F4                                        ; $552B: $F4
    ld d, e                                       ; $552C: $53
    inc e                                         ; $552D: $1C
    ld bc, $0402                                  ; $552E: $01 $02 $04
    stop                                          ; $5531: $10 $00
    dec bc                                        ; $5533: $0B
    ld b, h                                       ; $5534: $44
    ld d, c                                       ; $5535: $51
    inc c                                         ; $5536: $0C
    ld bc, $1101                                  ; $5537: $01 $01 $11
    ld h, c                                       ; $553A: $61
    nop                                           ; $553B: $00
    dec bc                                        ; $553C: $0B
    ld e, $54                                     ; $553D: $1E $54
    inc c                                         ; $553F: $0C
    ld bc, $0801                                  ; $5540: $01 $01 $08
    ld hl, $0B00                                  ; $5543: $21 $00 $0B
    ld a, [hl+]                                   ; $5546: $2A
    ld b, b                                       ; $5547: $40
    inc c                                         ; $5548: $0C
    inc d                                         ; $5549: $14
    ld bc, $B208                                  ; $554A: $01 $08 $B2
    nop                                           ; $554D: $00
    dec bc                                        ; $554E: $0B
    adc h                                         ; $554F: $8C
    ld d, d                                       ; $5550: $52
    inc c                                         ; $5551: $0C
    ld a, [bc]                                    ; $5552: $0A
    nop                                           ; $5553: $00
    nop                                           ; $5554: $00
    nop                                           ; $5555: $00
    nop                                           ; $5556: $00
    dec bc                                        ; $5557: $0B
    ld b, h                                       ; $5558: $44
    ld d, c                                       ; $5559: $51
    nop                                           ; $555A: $00
    nop                                           ; $555B: $00
    nop                                           ; $555C: $00
    nop                                           ; $555D: $00
    nop                                           ; $555E: $00
    nop                                           ; $555F: $00
    dec bc                                        ; $5560: $0B
    xor $51                                       ; $5561: $EE $51
    nop                                           ; $5563: $00
    dec b                                         ; $5564: $05
    nop                                           ; $5565: $00
    nop                                           ; $5566: $00
    nop                                           ; $5567: $00
    nop                                           ; $5568: $00
    dec bc                                        ; $5569: $0B
    inc d                                         ; $556A: $14
    ld d, e                                       ; $556B: $53
    nop                                           ; $556C: $00
    dec b                                         ; $556D: $05
    nop                                           ; $556E: $00
    nop                                           ; $556F: $00
    nop                                           ; $5570: $00
    nop                                           ; $5571: $00
    dec bc                                        ; $5572: $0B
    inc d                                         ; $5573: $14
    ld d, e                                       ; $5574: $53
    inc b                                         ; $5575: $04
    rst RST_38                                    ; $5576: $FF
    nop                                           ; $5577: $00
    nop                                           ; $5578: $00
    nop                                           ; $5579: $00
    nop                                           ; $557A: $00
    dec bc                                        ; $557B: $0B
    inc d                                         ; $557C: $14
    ld d, e                                       ; $557D: $53
    nop                                           ; $557E: $00
    dec b                                         ; $557F: $05
    nop                                           ; $5580: $00
    nop                                           ; $5581: $00
    nop                                           ; $5582: $00
    nop                                           ; $5583: $00
    dec bc                                        ; $5584: $0B
    ld [hl+], a                                   ; $5585: $22
    ld d, e                                       ; $5586: $53
    nop                                           ; $5587: $00
    dec b                                         ; $5588: $05
    nop                                           ; $5589: $00
    nop                                           ; $558A: $00
    nop                                           ; $558B: $00
    nop                                           ; $558C: $00
    dec bc                                        ; $558D: $0B
    jr z, jr_003_55E3                             ; $558E: $28 $53

    nop                                           ; $5590: $00
    dec b                                         ; $5591: $05
    nop                                           ; $5592: $00
    nop                                           ; $5593: $00
    nop                                           ; $5594: $00
    nop                                           ; $5595: $00
    dec bc                                        ; $5596: $0B
    ld c, h                                       ; $5597: $4C
    ld d, e                                       ; $5598: $53
    db $10                                        ; $5599: $10
    dec b                                         ; $559A: $05
    nop                                           ; $559B: $00
    nop                                           ; $559C: $00
    nop                                           ; $559D: $00
    nop                                           ; $559E: $00
    dec bc                                        ; $559F: $0B
    ld l, [hl]                                    ; $55A0: $6E
    ld d, e                                       ; $55A1: $53
    inc c                                         ; $55A2: $0C
    rst RST_38                                    ; $55A3: $FF
    nop                                           ; $55A4: $00
    nop                                           ; $55A5: $00
    nop                                           ; $55A6: $00
    nop                                           ; $55A7: $00
    dec bc                                        ; $55A8: $0B
    add b                                         ; $55A9: $80
    ld d, e                                       ; $55AA: $53
    nop                                           ; $55AB: $00
    nop                                           ; $55AC: $00
    nop                                           ; $55AD: $00
    nop                                           ; $55AE: $00
    nop                                           ; $55AF: $00
    nop                                           ; $55B0: $00
    dec bc                                        ; $55B1: $0B
    ld h, d                                       ; $55B2: $62
    ld d, e                                       ; $55B3: $53
    jr jr_003_55B6                                ; $55B4: $18 $00

jr_003_55B6:
    nop                                           ; $55B6: $00
    nop                                           ; $55B7: $00
    nop                                           ; $55B8: $00
    nop                                           ; $55B9: $00
    dec bc                                        ; $55BA: $0B
    add b                                         ; $55BB: $80
    ld d, e                                       ; $55BC: $53
    ld [$0002], sp                                ; $55BD: $08 $02 $00
    nop                                           ; $55C0: $00
    nop                                           ; $55C1: $00
    nop                                           ; $55C2: $00
    dec bc                                        ; $55C3: $0B
    ld l, $53                                     ; $55C4: $2E $53
    jr jr_003_55CA                                ; $55C6: $18 $02

    nop                                           ; $55C8: $00
    nop                                           ; $55C9: $00

jr_003_55CA:
    nop                                           ; $55CA: $00
    nop                                           ; $55CB: $00
    dec bc                                        ; $55CC: $0B
    inc d                                         ; $55CD: $14
    ld d, e                                       ; $55CE: $53
    nop                                           ; $55CF: $00
    inc d                                         ; $55D0: $14
    nop                                           ; $55D1: $00
    nop                                           ; $55D2: $00
    nop                                           ; $55D3: $00
    nop                                           ; $55D4: $00
    dec bc                                        ; $55D5: $0B
    ld [hl+], a                                   ; $55D6: $22
    ld d, e                                       ; $55D7: $53
    nop                                           ; $55D8: $00
    inc d                                         ; $55D9: $14
    nop                                           ; $55DA: $00
    nop                                           ; $55DB: $00
    nop                                           ; $55DC: $00
    nop                                           ; $55DD: $00
    dec bc                                        ; $55DE: $0B
    ld e, b                                       ; $55DF: $58
    ld d, e                                       ; $55E0: $53
    inc b                                         ; $55E1: $04
    nop                                           ; $55E2: $00

jr_003_55E3:
    nop                                           ; $55E3: $00
    nop                                           ; $55E4: $00
    nop                                           ; $55E5: $00
    nop                                           ; $55E6: $00
    dec bc                                        ; $55E7: $0B
    ld l, [hl]                                    ; $55E8: $6E
    ld d, e                                       ; $55E9: $53
    inc c                                         ; $55EA: $0C
    rst RST_38                                    ; $55EB: $FF
    nop                                           ; $55EC: $00
    nop                                           ; $55ED: $00
    nop                                           ; $55EE: $00
    nop                                           ; $55EF: $00
    dec bc                                        ; $55F0: $0B
    ld [hl+], a                                   ; $55F1: $22
    ld d, e                                       ; $55F2: $53
    nop                                           ; $55F3: $00
    inc a                                         ; $55F4: $3C
    nop                                           ; $55F5: $00
    nop                                           ; $55F6: $00
    nop                                           ; $55F7: $00
    nop                                           ; $55F8: $00
    dec bc                                        ; $55F9: $0B
    ld [hl+], a                                   ; $55FA: $22
    ld d, e                                       ; $55FB: $53
    nop                                           ; $55FC: $00
    inc a                                         ; $55FD: $3C
    nop                                           ; $55FE: $00
    nop                                           ; $55FF: $00
    nop                                           ; $5600: $00
    nop                                           ; $5601: $00
    dec bc                                        ; $5602: $0B
    ld [hl+], a                                   ; $5603: $22
    ld d, e                                       ; $5604: $53
    nop                                           ; $5605: $00
    inc a                                         ; $5606: $3C
    nop                                           ; $5607: $00
    nop                                           ; $5608: $00
    nop                                           ; $5609: $00
    nop                                           ; $560A: $00
    dec bc                                        ; $560B: $0B
    adc [hl]                                      ; $560C: $8E
    ld d, e                                       ; $560D: $53
    nop                                           ; $560E: $00
    inc a                                         ; $560F: $3C
    nop                                           ; $5610: $00
    nop                                           ; $5611: $00
    nop                                           ; $5612: $00
    nop                                           ; $5613: $00
    dec bc                                        ; $5614: $0B
    ld l, [hl]                                    ; $5615: $6E
    ld d, e                                       ; $5616: $53
    nop                                           ; $5617: $00
    inc a                                         ; $5618: $3C
    nop                                           ; $5619: $00
    nop                                           ; $561A: $00
    nop                                           ; $561B: $00
    nop                                           ; $561C: $00
    dec bc                                        ; $561D: $0B
    ld e, b                                       ; $561E: $58
    ld d, e                                       ; $561F: $53
    nop                                           ; $5620: $00
    inc a                                         ; $5621: $3C
    nop                                           ; $5622: $00
    nop                                           ; $5623: $00
    nop                                           ; $5624: $00
    nop                                           ; $5625: $00
    ld a, $00                                     ; $5626: $3E $00
    nop                                           ; $5628: $00
    nop                                           ; $5629: $00
    nop                                           ; $562A: $00
    nop                                           ; $562B: $00
    nop                                           ; $562C: $00
    nop                                           ; $562D: $00
    nop                                           ; $562E: $00
    rlca                                          ; $562F: $07
    ld h, c                                       ; $5630: $61
    ld d, a                                       ; $5631: $57
    inc c                                         ; $5632: $0C
    ld b, $00                                     ; $5633: $06 $00
    nop                                           ; $5635: $00
    nop                                           ; $5636: $00
    nop                                           ; $5637: $00
    rlca                                          ; $5638: $07
    ld [hl], e                                    ; $5639: $73
    ld d, a                                       ; $563A: $57
    ld [$0003], sp                                ; $563B: $08 $03 $00
    nop                                           ; $563E: $00
    nop                                           ; $563F: $00
    nop                                           ; $5640: $00
    rlca                                          ; $5641: $07
    add l                                         ; $5642: $85
    ld d, a                                       ; $5643: $57
    ld [$0004], sp                                ; $5644: $08 $04 $00
    nop                                           ; $5647: $00
    nop                                           ; $5648: $00
    nop                                           ; $5649: $00
    rlca                                          ; $564A: $07
    sub a                                         ; $564B: $97
    ld d, a                                       ; $564C: $57
    nop                                           ; $564D: $00
    nop                                           ; $564E: $00
    nop                                           ; $564F: $00
    nop                                           ; $5650: $00
    nop                                           ; $5651: $00
    nop                                           ; $5652: $00
    rlca                                          ; $5653: $07
    sbc l                                         ; $5654: $9D
    ld d, a                                       ; $5655: $57
    inc e                                         ; $5656: $1C
    dec b                                         ; $5657: $05
    nop                                           ; $5658: $00
    nop                                           ; $5659: $00
    nop                                           ; $565A: $00
    nop                                           ; $565B: $00
    rlca                                          ; $565C: $07
    sbc l                                         ; $565D: $9D
    ld d, a                                       ; $565E: $57
    inc e                                         ; $565F: $1C
    dec b                                         ; $5660: $05
    nop                                           ; $5661: $00
    nop                                           ; $5662: $00
    nop                                           ; $5663: $00
    nop                                           ; $5664: $00
    rlca                                          ; $5665: $07
    sbc l                                         ; $5666: $9D
    ld d, a                                       ; $5667: $57
    inc e                                         ; $5668: $1C
    dec b                                         ; $5669: $05
    nop                                           ; $566A: $00
    nop                                           ; $566B: $00
    nop                                           ; $566C: $00
    nop                                           ; $566D: $00
    rlca                                          ; $566E: $07
    cp a                                          ; $566F: $BF
    ld d, a                                       ; $5670: $57
    nop                                           ; $5671: $00
    nop                                           ; $5672: $00
    nop                                           ; $5673: $00
    nop                                           ; $5674: $00
    nop                                           ; $5675: $00
    nop                                           ; $5676: $00
    rlca                                          ; $5677: $07
    push bc                                       ; $5678: $C5
    ld d, a                                       ; $5679: $57
    nop                                           ; $567A: $00
    nop                                           ; $567B: $00
    nop                                           ; $567C: $00
    nop                                           ; $567D: $00
    nop                                           ; $567E: $00
    nop                                           ; $567F: $00
    rlca                                          ; $5680: $07
    bit 2, a                                      ; $5681: $CB $57
    nop                                           ; $5683: $00
    rst RST_38                                    ; $5684: $FF
    nop                                           ; $5685: $00
    nop                                           ; $5686: $00
    nop                                           ; $5687: $00
    nop                                           ; $5688: $00
    rlca                                          ; $5689: $07
    ld a, a                                       ; $568A: $7F
    ld e, b                                       ; $568B: $58
    ld [$0004], sp                                ; $568C: $08 $04 $00
    nop                                           ; $568F: $00
    nop                                           ; $5690: $00
    nop                                           ; $5691: $00
    rlca                                          ; $5692: $07
    adc c                                         ; $5693: $89
    ld e, b                                       ; $5694: $58
    ld [$00FF], sp                                ; $5695: $08 $FF $00
    nop                                           ; $5698: $00
    nop                                           ; $5699: $00
    nop                                           ; $569A: $00
    rlca                                          ; $569B: $07
    and c                                         ; $569C: $A1
    ld e, b                                       ; $569D: $58
    ld [$000A], sp                                ; $569E: $08 $0A $00
    inc b                                         ; $56A1: $04
    add b                                         ; $56A2: $80
    nop                                           ; $56A3: $00
    rlca                                          ; $56A4: $07
    jp $0459                                      ; $56A5: $C3 $59 $04


    ld [bc], a                                    ; $56A8: $02
    nop                                           ; $56A9: $00
    nop                                           ; $56AA: $00
    nop                                           ; $56AB: $00
    nop                                           ; $56AC: $00
    rlca                                          ; $56AD: $07
    ld c, c                                       ; $56AE: $49
    ld e, c                                       ; $56AF: $59
    inc b                                         ; $56B0: $04
    ld a, [bc]                                    ; $56B1: $0A
    nop                                           ; $56B2: $00
    nop                                           ; $56B3: $00
    nop                                           ; $56B4: $00
    nop                                           ; $56B5: $00
    rlca                                          ; $56B6: $07
    db $DD                                        ; $56B7: $DD
    ld e, b                                       ; $56B8: $58
    inc l                                         ; $56B9: $2C
    ld [$0000], sp                                ; $56BA: $08 $00 $00
    nop                                           ; $56BD: $00
    nop                                           ; $56BE: $00
    rlca                                          ; $56BF: $07
    dec a                                         ; $56C0: $3D
    ld e, c                                       ; $56C1: $59
    nop                                           ; $56C2: $00
    dec b                                         ; $56C3: $05
    nop                                           ; $56C4: $00
    nop                                           ; $56C5: $00
    nop                                           ; $56C6: $00
    nop                                           ; $56C7: $00
    rlca                                          ; $56C8: $07
    sub a                                         ; $56C9: $97
    ld e, b                                       ; $56CA: $58
    jr nc, jr_003_56CD                            ; $56CB: $30 $00

jr_003_56CD:
    nop                                           ; $56CD: $00
    nop                                           ; $56CE: $00
    nop                                           ; $56CF: $00
    nop                                           ; $56D0: $00
    rlca                                          ; $56D1: $07
    or e                                          ; $56D2: $B3
    ld e, b                                       ; $56D3: $58
    ld [$0001], sp                                ; $56D4: $08 $01 $00
    nop                                           ; $56D7: $00
    nop                                           ; $56D8: $00
    nop                                           ; $56D9: $00
    rlca                                          ; $56DA: $07
    or l                                          ; $56DB: $B5
    ld d, a                                       ; $56DC: $57
    inc b                                         ; $56DD: $04
    rst RST_38                                    ; $56DE: $FF
    nop                                           ; $56DF: $00
    nop                                           ; $56E0: $00
    nop                                           ; $56E1: $00
    nop                                           ; $56E2: $00
    rlca                                          ; $56E3: $07
    rst RST_08                                    ; $56E4: $CF
    ld e, b                                       ; $56E5: $58
    ld [$0003], sp                                ; $56E6: $08 $03 $00
    nop                                           ; $56E9: $00
    nop                                           ; $56EA: $00
    nop                                           ; $56EB: $00
    rlca                                          ; $56EC: $07
    push de                                       ; $56ED: $D5
    ld d, a                                       ; $56EE: $57
    ld [$0200], sp                                ; $56EF: $08 $00 $02
    inc bc                                        ; $56F2: $03
    nop                                           ; $56F3: $00
    nop                                           ; $56F4: $00
    rlca                                          ; $56F5: $07
    db $E3                                        ; $56F6: $E3
    ld d, a                                       ; $56F7: $57
    inc c                                         ; $56F8: $0C
    nop                                           ; $56F9: $00
    ld [bc], a                                    ; $56FA: $02
    inc b                                         ; $56FB: $04
    nop                                           ; $56FC: $00
    nop                                           ; $56FD: $00
    rlca                                          ; $56FE: $07
    push af                                       ; $56FF: $F5
    ld d, a                                       ; $5700: $57
    stop                                          ; $5701: $10 $00
    inc bc                                        ; $5703: $03
    inc b                                         ; $5704: $04
    ld bc, $0700                                  ; $5705: $01 $00 $07
    dec bc                                        ; $5708: $0B
    ld e, b                                       ; $5709: $58
    ld [$0200], sp                                ; $570A: $08 $00 $02
    inc b                                         ; $570D: $04
    nop                                           ; $570E: $00
    nop                                           ; $570F: $00
    rlca                                          ; $5710: $07
    add hl, de                                    ; $5711: $19
    ld e, b                                       ; $5712: $58
    ld [$0200], sp                                ; $5713: $08 $00 $02
    inc b                                         ; $5716: $04
    inc b                                         ; $5717: $04
    nop                                           ; $5718: $00
    rlca                                          ; $5719: $07
    daa                                           ; $571A: $27
    ld e, b                                       ; $571B: $58
    inc c                                         ; $571C: $0C
    ld bc, $0603                                  ; $571D: $01 $03 $06
    dec b                                         ; $5720: $05
    nop                                           ; $5721: $00
    rlca                                          ; $5722: $07
    dec a                                         ; $5723: $3D
    ld e, b                                       ; $5724: $58
    db $10                                        ; $5725: $10
    ld bc, $0302                                  ; $5726: $01 $02 $03
    ld [$0700], sp                                ; $5729: $08 $00 $07
    ld d, e                                       ; $572C: $53
    ld e, b                                       ; $572D: $58
    db $10                                        ; $572E: $10
    ld bc, $0302                                  ; $572F: $01 $02 $03
    ld [$0700], sp                                ; $5732: $08 $00 $07
    pop hl                                        ; $5735: $E1
    ld e, d                                       ; $5736: $5A
    db $10                                        ; $5737: $10
    ld bc, $0302                                  ; $5738: $01 $02 $03
    add hl, bc                                    ; $573B: $09
    nop                                           ; $573C: $00
    rlca                                          ; $573D: $07
    call Call_000_0C59                            ; $573E: $CD $59 $0C
    nop                                           ; $5741: $00
    rst RST_38                                    ; $5742: $FF
    ld [$000F], sp                                ; $5743: $08 $0F $00
    rlca                                          ; $5746: $07
    push af                                       ; $5747: $F5
    ld e, c                                       ; $5748: $59
    inc c                                         ; $5749: $0C
    ld bc, $0305                                  ; $574A: $01 $05 $03
    stop                                          ; $574D: $10 $00
    rlca                                          ; $574F: $07
    dec bc                                        ; $5750: $0B
    ld e, d                                       ; $5751: $5A
    jr jr_003_5755                                ; $5752: $18 $01

    inc b                                         ; $5754: $04

jr_003_5755:
    ld [$0001], sp                                ; $5755: $08 $01 $00
    rlca                                          ; $5758: $07
    dec l                                         ; $5759: $2D
    ld e, d                                       ; $575A: $5A
    db $10                                        ; $575B: $10
    inc b                                         ; $575C: $04
    inc b                                         ; $575D: $04
    ld [$0001], sp                                ; $575E: $08 $01 $00
    rlca                                          ; $5761: $07
    ld b, a                                       ; $5762: $47
    ld e, d                                       ; $5763: $5A
    inc e                                         ; $5764: $1C
    ld bc, $0000                                  ; $5765: $01 $00 $00
    nop                                           ; $5768: $00
    nop                                           ; $5769: $00
    rlca                                          ; $576A: $07
    rst RST_18                                    ; $576B: $DF
    ld e, c                                       ; $576C: $59
    db $10                                        ; $576D: $10
    ld bc, $1101                                  ; $576E: $01 $01 $11
    ld l, l                                       ; $5771: $6D
    nop                                           ; $5772: $00
    rlca                                          ; $5773: $07
    ld l, l                                       ; $5774: $6D
    ld e, d                                       ; $5775: $5A
    inc c                                         ; $5776: $0C
    ld bc, $0801                                  ; $5777: $01 $01 $08
    ld hl, $0700                                  ; $577A: $21 $00 $07
    and a                                         ; $577D: $A7
    ld e, d                                       ; $577E: $5A
    inc c                                         ; $577F: $0C
    inc d                                         ; $5780: $14
    ld bc, $B208                                  ; $5781: $01 $08 $B2
    nop                                           ; $5784: $00
    rlca                                          ; $5785: $07
    ld l, c                                       ; $5786: $69
    ld e, b                                       ; $5787: $58
    inc c                                         ; $5788: $0C
    ld a, [bc]                                    ; $5789: $0A
    nop                                           ; $578A: $00
    nop                                           ; $578B: $00
    nop                                           ; $578C: $00
    nop                                           ; $578D: $00
    rlca                                          ; $578E: $07
    ld h, c                                       ; $578F: $61
    ld d, a                                       ; $5790: $57
    nop                                           ; $5791: $00
    nop                                           ; $5792: $00
    nop                                           ; $5793: $00
    nop                                           ; $5794: $00
    nop                                           ; $5795: $00
    nop                                           ; $5796: $00
    rlca                                          ; $5797: $07
    cp a                                          ; $5798: $BF
    ld d, a                                       ; $5799: $57
    nop                                           ; $579A: $00
    dec b                                         ; $579B: $05
    nop                                           ; $579C: $00
    nop                                           ; $579D: $00
    nop                                           ; $579E: $00
    nop                                           ; $579F: $00
    rlca                                          ; $57A0: $07
    ld b, e                                       ; $57A1: $43
    ld e, c                                       ; $57A2: $59
    nop                                           ; $57A3: $00
    dec b                                         ; $57A4: $05
    nop                                           ; $57A5: $00
    nop                                           ; $57A6: $00
    nop                                           ; $57A7: $00
    nop                                           ; $57A8: $00
    rlca                                          ; $57A9: $07
    ld b, e                                       ; $57AA: $43
    ld e, c                                       ; $57AB: $59
    inc b                                         ; $57AC: $04
    rst RST_38                                    ; $57AD: $FF
    nop                                           ; $57AE: $00
    nop                                           ; $57AF: $00
    nop                                           ; $57B0: $00
    nop                                           ; $57B1: $00
    rlca                                          ; $57B2: $07
    ld b, e                                       ; $57B3: $43
    ld e, c                                       ; $57B4: $59
    nop                                           ; $57B5: $00
    dec b                                         ; $57B6: $05
    nop                                           ; $57B7: $00
    nop                                           ; $57B8: $00
    nop                                           ; $57B9: $00
    nop                                           ; $57BA: $00
    rlca                                          ; $57BB: $07
    ld d, c                                       ; $57BC: $51
    ld e, c                                       ; $57BD: $59
    nop                                           ; $57BE: $00
    dec b                                         ; $57BF: $05
    nop                                           ; $57C0: $00
    nop                                           ; $57C1: $00
    nop                                           ; $57C2: $00
    nop                                           ; $57C3: $00
    rlca                                          ; $57C4: $07
    ld d, a                                       ; $57C5: $57
    ld e, c                                       ; $57C6: $59
    nop                                           ; $57C7: $00
    dec b                                         ; $57C8: $05
    nop                                           ; $57C9: $00
    nop                                           ; $57CA: $00
    nop                                           ; $57CB: $00
    nop                                           ; $57CC: $00
    rlca                                          ; $57CD: $07
    ld a, e                                       ; $57CE: $7B
    ld e, c                                       ; $57CF: $59
    db $10                                        ; $57D0: $10
    dec b                                         ; $57D1: $05
    nop                                           ; $57D2: $00
    nop                                           ; $57D3: $00
    nop                                           ; $57D4: $00
    nop                                           ; $57D5: $00
    rlca                                          ; $57D6: $07
    sbc l                                         ; $57D7: $9D
    ld e, c                                       ; $57D8: $59
    inc c                                         ; $57D9: $0C
    rst RST_38                                    ; $57DA: $FF
    nop                                           ; $57DB: $00
    nop                                           ; $57DC: $00
    nop                                           ; $57DD: $00
    nop                                           ; $57DE: $00
    rlca                                          ; $57DF: $07
    xor a                                         ; $57E0: $AF
    ld e, c                                       ; $57E1: $59
    nop                                           ; $57E2: $00
    nop                                           ; $57E3: $00
    nop                                           ; $57E4: $00
    nop                                           ; $57E5: $00
    nop                                           ; $57E6: $00
    nop                                           ; $57E7: $00
    rlca                                          ; $57E8: $07
    sub c                                         ; $57E9: $91
    ld e, c                                       ; $57EA: $59
    jr jr_003_57ED                                ; $57EB: $18 $00

jr_003_57ED:
    nop                                           ; $57ED: $00
    nop                                           ; $57EE: $00
    nop                                           ; $57EF: $00
    nop                                           ; $57F0: $00
    rlca                                          ; $57F1: $07
    xor a                                         ; $57F2: $AF
    ld e, c                                       ; $57F3: $59
    ld [$0002], sp                                ; $57F4: $08 $02 $00
    nop                                           ; $57F7: $00
    nop                                           ; $57F8: $00
    nop                                           ; $57F9: $00
    rlca                                          ; $57FA: $07
    ld e, l                                       ; $57FB: $5D
    ld e, c                                       ; $57FC: $59
    jr jr_003_5801                                ; $57FD: $18 $02

    nop                                           ; $57FF: $00
    nop                                           ; $5800: $00

jr_003_5801:
    nop                                           ; $5801: $00
    nop                                           ; $5802: $00
    rlca                                          ; $5803: $07
    ld b, e                                       ; $5804: $43
    ld e, c                                       ; $5805: $59
    nop                                           ; $5806: $00
    inc d                                         ; $5807: $14
    nop                                           ; $5808: $00
    nop                                           ; $5809: $00
    nop                                           ; $580A: $00
    nop                                           ; $580B: $00
    rlca                                          ; $580C: $07
    ld d, c                                       ; $580D: $51
    ld e, c                                       ; $580E: $59
    nop                                           ; $580F: $00
    inc d                                         ; $5810: $14
    nop                                           ; $5811: $00
    nop                                           ; $5812: $00
    nop                                           ; $5813: $00
    nop                                           ; $5814: $00
    rlca                                          ; $5815: $07
    add a                                         ; $5816: $87
    ld e, c                                       ; $5817: $59
    inc b                                         ; $5818: $04
    nop                                           ; $5819: $00
    nop                                           ; $581A: $00
    nop                                           ; $581B: $00
    nop                                           ; $581C: $00
    nop                                           ; $581D: $00
    rlca                                          ; $581E: $07
    sbc l                                         ; $581F: $9D
    ld e, c                                       ; $5820: $59
    inc c                                         ; $5821: $0C
    rst RST_38                                    ; $5822: $FF
    nop                                           ; $5823: $00
    nop                                           ; $5824: $00
    nop                                           ; $5825: $00
    nop                                           ; $5826: $00
    rlca                                          ; $5827: $07
    ld d, c                                       ; $5828: $51
    ld e, c                                       ; $5829: $59
    nop                                           ; $582A: $00
    inc a                                         ; $582B: $3C
    nop                                           ; $582C: $00
    nop                                           ; $582D: $00
    nop                                           ; $582E: $00
    nop                                           ; $582F: $00
    rlca                                          ; $5830: $07
    ld d, c                                       ; $5831: $51
    ld e, c                                       ; $5832: $59
    nop                                           ; $5833: $00
    inc a                                         ; $5834: $3C
    nop                                           ; $5835: $00
    nop                                           ; $5836: $00
    nop                                           ; $5837: $00
    nop                                           ; $5838: $00
    rlca                                          ; $5839: $07
    ld d, c                                       ; $583A: $51
    ld e, c                                       ; $583B: $59
    nop                                           ; $583C: $00
    inc a                                         ; $583D: $3C
    nop                                           ; $583E: $00
    nop                                           ; $583F: $00
    nop                                           ; $5840: $00
    nop                                           ; $5841: $00
    rlca                                          ; $5842: $07
    cp l                                          ; $5843: $BD
    ld e, c                                       ; $5844: $59
    nop                                           ; $5845: $00
    inc a                                         ; $5846: $3C
    nop                                           ; $5847: $00
    nop                                           ; $5848: $00
    nop                                           ; $5849: $00
    nop                                           ; $584A: $00
    rlca                                          ; $584B: $07
    sbc l                                         ; $584C: $9D
    ld e, c                                       ; $584D: $59
    nop                                           ; $584E: $00
    inc a                                         ; $584F: $3C
    nop                                           ; $5850: $00
    nop                                           ; $5851: $00
    nop                                           ; $5852: $00
    nop                                           ; $5853: $00
    rlca                                          ; $5854: $07
    add a                                         ; $5855: $87
    ld e, c                                       ; $5856: $59
    nop                                           ; $5857: $00
    inc a                                         ; $5858: $3C
    nop                                           ; $5859: $00
    nop                                           ; $585A: $00
    nop                                           ; $585B: $00
    nop                                           ; $585C: $00
    ld a, $00                                     ; $585D: $3E $00
    nop                                           ; $585F: $00
    nop                                           ; $5860: $00
    nop                                           ; $5861: $00
    nop                                           ; $5862: $00
    nop                                           ; $5863: $00
    nop                                           ; $5864: $00
    nop                                           ; $5865: $00
    rlca                                          ; $5866: $07
    sub h                                         ; $5867: $94
    ld l, b                                       ; $5868: $68
    inc c                                         ; $5869: $0C
    ld b, $00                                     ; $586A: $06 $00
    nop                                           ; $586C: $00
    nop                                           ; $586D: $00
    nop                                           ; $586E: $00
    rlca                                          ; $586F: $07
    and [hl]                                      ; $5870: $A6
    ld l, b                                       ; $5871: $68
    ld [$0003], sp                                ; $5872: $08 $03 $00
    nop                                           ; $5875: $00
    nop                                           ; $5876: $00
    nop                                           ; $5877: $00
    rlca                                          ; $5878: $07
    cp b                                          ; $5879: $B8
    ld l, b                                       ; $587A: $68
    ld [$0004], sp                                ; $587B: $08 $04 $00
    nop                                           ; $587E: $00
    nop                                           ; $587F: $00
    nop                                           ; $5880: $00
    rlca                                          ; $5881: $07
    jp z, Jump_000_0068                           ; $5882: $CA $68 $00

    nop                                           ; $5885: $00
    nop                                           ; $5886: $00
    nop                                           ; $5887: $00
    nop                                           ; $5888: $00
    nop                                           ; $5889: $00
    rlca                                          ; $588A: $07
    ret nc                                        ; $588B: $D0

    ld l, b                                       ; $588C: $68
    inc e                                         ; $588D: $1C
    nop                                           ; $588E: $00
    nop                                           ; $588F: $00
    nop                                           ; $5890: $00
    nop                                           ; $5891: $00
    nop                                           ; $5892: $00
    rlca                                          ; $5893: $07
    ret nc                                        ; $5894: $D0

    ld l, b                                       ; $5895: $68
    inc e                                         ; $5896: $1C
    nop                                           ; $5897: $00
    nop                                           ; $5898: $00
    nop                                           ; $5899: $00
    nop                                           ; $589A: $00
    nop                                           ; $589B: $00
    rlca                                          ; $589C: $07
    ret nc                                        ; $589D: $D0

    ld l, b                                       ; $589E: $68
    inc e                                         ; $589F: $1C
    nop                                           ; $58A0: $00
    nop                                           ; $58A1: $00
    nop                                           ; $58A2: $00
    nop                                           ; $58A3: $00
    nop                                           ; $58A4: $00
    rlca                                          ; $58A5: $07
    sub h                                         ; $58A6: $94
    ld l, b                                       ; $58A7: $68
    nop                                           ; $58A8: $00
    nop                                           ; $58A9: $00
    nop                                           ; $58AA: $00
    nop                                           ; $58AB: $00
    nop                                           ; $58AC: $00
    nop                                           ; $58AD: $00
    rlca                                          ; $58AE: $07
    sub h                                         ; $58AF: $94
    ld l, b                                       ; $58B0: $68
    nop                                           ; $58B1: $00
    nop                                           ; $58B2: $00
    nop                                           ; $58B3: $00
    nop                                           ; $58B4: $00
    nop                                           ; $58B5: $00
    nop                                           ; $58B6: $00
    rlca                                          ; $58B7: $07
    sub h                                         ; $58B8: $94
    ld l, b                                       ; $58B9: $68
    nop                                           ; $58BA: $00
    rst RST_38                                    ; $58BB: $FF
    nop                                           ; $58BC: $00
    nop                                           ; $58BD: $00
    nop                                           ; $58BE: $00
    nop                                           ; $58BF: $00
    rlca                                          ; $58C0: $07
    ld e, d                                       ; $58C1: $5A
    ld l, c                                       ; $58C2: $69
    ld [$0004], sp                                ; $58C3: $08 $04 $00
    nop                                           ; $58C6: $00
    nop                                           ; $58C7: $00
    nop                                           ; $58C8: $00
    rlca                                          ; $58C9: $07
    ld l, h                                       ; $58CA: $6C
    ld l, c                                       ; $58CB: $69
    ld [$0004], sp                                ; $58CC: $08 $04 $00
    nop                                           ; $58CF: $00
    nop                                           ; $58D0: $00
    nop                                           ; $58D1: $00
    rlca                                          ; $58D2: $07
    sub [hl]                                      ; $58D3: $96
    ld l, c                                       ; $58D4: $69
    nop                                           ; $58D5: $00
    ld bc, $0401                                  ; $58D6: $01 $01 $04
    add b                                         ; $58D9: $80
    nop                                           ; $58DA: $00
    rlca                                          ; $58DB: $07
    ld b, [hl]                                    ; $58DC: $46
    ld l, d                                       ; $58DD: $6A
    inc b                                         ; $58DE: $04
    ld [bc], a                                    ; $58DF: $02
    nop                                           ; $58E0: $00
    nop                                           ; $58E1: $00
    nop                                           ; $58E2: $00
    nop                                           ; $58E3: $00
    rlca                                          ; $58E4: $07
    add $69                                       ; $58E5: $C6 $69
    inc b                                         ; $58E7: $04
    ld a, [bc]                                    ; $58E8: $0A
    nop                                           ; $58E9: $00
    nop                                           ; $58EA: $00
    nop                                           ; $58EB: $00
    nop                                           ; $58EC: $00
    rlca                                          ; $58ED: $07
    sbc h                                         ; $58EE: $9C
    ld l, c                                       ; $58EF: $69
    jr jr_003_58F7                                ; $58F0: $18 $05

    nop                                           ; $58F2: $00
    nop                                           ; $58F3: $00
    nop                                           ; $58F4: $00
    nop                                           ; $58F5: $00
    rlca                                          ; $58F6: $07

jr_003_58F7:
    cp d                                          ; $58F7: $BA
    ld l, c                                       ; $58F8: $69
    nop                                           ; $58F9: $00
    dec b                                         ; $58FA: $05
    nop                                           ; $58FB: $00
    nop                                           ; $58FC: $00
    nop                                           ; $58FD: $00
    nop                                           ; $58FE: $00
    rlca                                          ; $58FF: $07
    ld a, [hl]                                    ; $5900: $7E
    ld l, c                                       ; $5901: $69
    jr nc, jr_003_5904                            ; $5902: $30 $00

jr_003_5904:
    nop                                           ; $5904: $00
    nop                                           ; $5905: $00
    nop                                           ; $5906: $00
    nop                                           ; $5907: $00
    rlca                                          ; $5908: $07
    pop bc                                        ; $5909: $C1
    ld e, b                                       ; $590A: $58
    ld [$0001], sp                                ; $590B: $08 $01 $00
    nop                                           ; $590E: $00
    nop                                           ; $590F: $00
    nop                                           ; $5910: $00
    rlca                                          ; $5911: $07
    ld [$0868], a                                 ; $5912: $EA $68 $08
    rst RST_38                                    ; $5915: $FF
    nop                                           ; $5916: $00
    nop                                           ; $5917: $00
    nop                                           ; $5918: $00
    nop                                           ; $5919: $00
    rlca                                          ; $591A: $07
    adc b                                         ; $591B: $88
    ld l, c                                       ; $591C: $69
    ld [$0003], sp                                ; $591D: $08 $03 $00
    nop                                           ; $5920: $00
    nop                                           ; $5921: $00
    nop                                           ; $5922: $00
    rlca                                          ; $5923: $07
    db $F4                                        ; $5924: $F4
    ld l, b                                       ; $5925: $68
    ld [$0202], sp                                ; $5926: $08 $02 $02
    inc bc                                        ; $5929: $03
    nop                                           ; $592A: $00
    nop                                           ; $592B: $00
    rlca                                          ; $592C: $07
    ld [bc], a                                    ; $592D: $02
    ld l, c                                       ; $592E: $69
    inc b                                         ; $592F: $04
    ld [bc], a                                    ; $5930: $02
    ld [bc], a                                    ; $5931: $02
    inc b                                         ; $5932: $04
    nop                                           ; $5933: $00
    nop                                           ; $5934: $00
    rlca                                          ; $5935: $07
    inc c                                         ; $5936: $0C
    ld l, c                                       ; $5937: $69
    inc c                                         ; $5938: $0C
    inc b                                         ; $5939: $04
    inc bc                                        ; $593A: $03
    inc b                                         ; $593B: $04
    ld bc, $0700                                  ; $593C: $01 $00 $07
    ld e, $69                                     ; $593F: $1E $69
    ld [$0202], sp                                ; $5941: $08 $02 $02
    inc b                                         ; $5944: $04
    nop                                           ; $5945: $00
    nop                                           ; $5946: $00
    rlca                                          ; $5947: $07
    inc l                                         ; $5948: $2C
    ld l, c                                       ; $5949: $69
    inc b                                         ; $594A: $04
    ld [bc], a                                    ; $594B: $02
    ld [bc], a                                    ; $594C: $02
    inc b                                         ; $594D: $04
    inc b                                         ; $594E: $04
    nop                                           ; $594F: $00
    rlca                                          ; $5950: $07
    ld [hl], $69                                  ; $5951: $36 $69
    inc c                                         ; $5953: $0C
    inc b                                         ; $5954: $04
    inc bc                                        ; $5955: $03
    ld b, $05                                     ; $5956: $06 $05
    nop                                           ; $5958: $00
    rlca                                          ; $5959: $07
    ld c, b                                       ; $595A: $48
    ld l, c                                       ; $595B: $69
    inc c                                         ; $595C: $0C
    inc bc                                        ; $595D: $03
    ld [bc], a                                    ; $595E: $02
    inc bc                                        ; $595F: $03
    ld [$0700], sp                                ; $5960: $08 $00 $07
    ld c, b                                       ; $5963: $48
    ld l, c                                       ; $5964: $69
    inc c                                         ; $5965: $0C
    inc bc                                        ; $5966: $03
    ld [bc], a                                    ; $5967: $02
    inc bc                                        ; $5968: $03
    ld [$0700], sp                                ; $5969: $08 $00 $07
    call c, Call_000_106A                         ; $596C: $DC $6A $10
    ld bc, $0302                                  ; $596F: $01 $02 $03
    add hl, bc                                    ; $5972: $09
    nop                                           ; $5973: $00
    rlca                                          ; $5974: $07
    sub h                                         ; $5975: $94
    ld l, b                                       ; $5976: $68
    stop                                          ; $5977: $10 $00
    rst RST_38                                    ; $5979: $FF
    ld [$000F], sp                                ; $597A: $08 $0F $00
    rlca                                          ; $597D: $07
    ld e, [hl]                                    ; $597E: $5E
    ld l, d                                       ; $597F: $6A
    inc c                                         ; $5980: $0C
    ld b, $05                                     ; $5981: $06 $05
    inc bc                                        ; $5983: $03
    inc hl                                        ; $5984: $23
    nop                                           ; $5985: $00
    rlca                                          ; $5986: $07
    ld [hl], b                                    ; $5987: $70
    ld l, d                                       ; $5988: $6A
    jr jr_003_598C                                ; $5989: $18 $01

    inc b                                         ; $598B: $04

jr_003_598C:
    ld [$0001], sp                                ; $598C: $08 $01 $00
    rlca                                          ; $598F: $07
    adc [hl]                                      ; $5990: $8E
    ld l, d                                       ; $5991: $6A
    db $10                                        ; $5992: $10
    ld [bc], a                                    ; $5993: $02
    ld [bc], a                                    ; $5994: $02
    inc b                                         ; $5995: $04
    nop                                           ; $5996: $00
    nop                                           ; $5997: $00
    rlca                                          ; $5998: $07
    and b                                         ; $5999: $A0
    ld l, d                                       ; $599A: $6A
    inc e                                         ; $599B: $1C
    ld bc, $0402                                  ; $599C: $01 $02 $04
    stop                                          ; $599F: $10 $00
    rlca                                          ; $59A1: $07
    ld d, b                                       ; $59A2: $50
    ld l, d                                       ; $59A3: $6A
    db $10                                        ; $59A4: $10
    ld bc, $1101                                  ; $59A5: $01 $01 $11
    ld h, c                                       ; $59A8: $61
    nop                                           ; $59A9: $00
    rlca                                          ; $59AA: $07
    or d                                          ; $59AB: $B2
    ld l, d                                       ; $59AC: $6A
    inc c                                         ; $59AD: $0C
    ld bc, $0801                                  ; $59AE: $01 $01 $08
    ld hl, $0700                                  ; $59B1: $21 $00 $07
    and a                                         ; $59B4: $A7
    ld e, d                                       ; $59B5: $5A
    inc c                                         ; $59B6: $0C
    inc d                                         ; $59B7: $14
    ld bc, $B208                                  ; $59B8: $01 $08 $B2
    nop                                           ; $59BB: $00
    rlca                                          ; $59BC: $07
    sub h                                         ; $59BD: $94
    ld l, b                                       ; $59BE: $68
    inc c                                         ; $59BF: $0C
    ld a, [bc]                                    ; $59C0: $0A
    nop                                           ; $59C1: $00
    nop                                           ; $59C2: $00
    nop                                           ; $59C3: $00
    nop                                           ; $59C4: $00
    rlca                                          ; $59C5: $07
    sub h                                         ; $59C6: $94
    ld l, b                                       ; $59C7: $68
    nop                                           ; $59C8: $00
    nop                                           ; $59C9: $00
    nop                                           ; $59CA: $00
    nop                                           ; $59CB: $00
    nop                                           ; $59CC: $00
    nop                                           ; $59CD: $00
    rlca                                          ; $59CE: $07
    sub h                                         ; $59CF: $94
    ld l, b                                       ; $59D0: $68
    nop                                           ; $59D1: $00
    dec b                                         ; $59D2: $05
    nop                                           ; $59D3: $00
    nop                                           ; $59D4: $00
    nop                                           ; $59D5: $00
    nop                                           ; $59D6: $00
    rlca                                          ; $59D7: $07
    ret nz                                        ; $59D8: $C0

    ld l, c                                       ; $59D9: $69
    nop                                           ; $59DA: $00
    dec b                                         ; $59DB: $05
    nop                                           ; $59DC: $00
    nop                                           ; $59DD: $00
    nop                                           ; $59DE: $00
    nop                                           ; $59DF: $00
    rlca                                          ; $59E0: $07
    ret nz                                        ; $59E1: $C0

    ld l, c                                       ; $59E2: $69
    inc b                                         ; $59E3: $04
    rst RST_38                                    ; $59E4: $FF
    nop                                           ; $59E5: $00
    nop                                           ; $59E6: $00
    nop                                           ; $59E7: $00
    nop                                           ; $59E8: $00
    rlca                                          ; $59E9: $07
    ret nz                                        ; $59EA: $C0

    ld l, c                                       ; $59EB: $69
    nop                                           ; $59EC: $00
    dec b                                         ; $59ED: $05
    nop                                           ; $59EE: $00
    nop                                           ; $59EF: $00
    nop                                           ; $59F0: $00
    nop                                           ; $59F1: $00
    rlca                                          ; $59F2: $07
    call nc, Call_000_0069                        ; $59F3: $D4 $69 $00
    dec b                                         ; $59F6: $05
    nop                                           ; $59F7: $00
    nop                                           ; $59F8: $00
    nop                                           ; $59F9: $00
    nop                                           ; $59FA: $00
    rlca                                          ; $59FB: $07
    jp c, Jump_000_0069                           ; $59FC: $DA $69 $00

    dec b                                         ; $59FF: $05
    nop                                           ; $5A00: $00
    nop                                           ; $5A01: $00
    nop                                           ; $5A02: $00
    nop                                           ; $5A03: $00
    rlca                                          ; $5A04: $07
    cp $69                                        ; $5A05: $FE $69
    db $10                                        ; $5A07: $10
    dec b                                         ; $5A08: $05
    nop                                           ; $5A09: $00
    nop                                           ; $5A0A: $00
    nop                                           ; $5A0B: $00
    nop                                           ; $5A0C: $00
    rlca                                          ; $5A0D: $07
    jr nz, jr_003_5A7A                            ; $5A0E: $20 $6A

    inc c                                         ; $5A10: $0C
    rst RST_38                                    ; $5A11: $FF
    nop                                           ; $5A12: $00
    nop                                           ; $5A13: $00
    nop                                           ; $5A14: $00
    nop                                           ; $5A15: $00
    rlca                                          ; $5A16: $07
    ld [hl-], a                                   ; $5A17: $32
    ld l, d                                       ; $5A18: $6A
    nop                                           ; $5A19: $00
    nop                                           ; $5A1A: $00
    nop                                           ; $5A1B: $00
    nop                                           ; $5A1C: $00
    nop                                           ; $5A1D: $00
    nop                                           ; $5A1E: $00
    rlca                                          ; $5A1F: $07
    inc d                                         ; $5A20: $14
    ld l, d                                       ; $5A21: $6A
    jr jr_003_5A24                                ; $5A22: $18 $00

jr_003_5A24:
    nop                                           ; $5A24: $00
    nop                                           ; $5A25: $00
    nop                                           ; $5A26: $00
    nop                                           ; $5A27: $00
    rlca                                          ; $5A28: $07
    ld [hl-], a                                   ; $5A29: $32
    ld l, d                                       ; $5A2A: $6A
    ld [$0002], sp                                ; $5A2B: $08 $02 $00
    nop                                           ; $5A2E: $00
    nop                                           ; $5A2F: $00
    nop                                           ; $5A30: $00
    rlca                                          ; $5A31: $07
    ldh [rBCPD], a                                ; $5A32: $E0 $69
    jr jr_003_5A38                                ; $5A34: $18 $02

    nop                                           ; $5A36: $00
    nop                                           ; $5A37: $00

jr_003_5A38:
    nop                                           ; $5A38: $00
    nop                                           ; $5A39: $00
    rlca                                          ; $5A3A: $07
    ret nz                                        ; $5A3B: $C0

    ld l, c                                       ; $5A3C: $69
    nop                                           ; $5A3D: $00
    inc d                                         ; $5A3E: $14
    nop                                           ; $5A3F: $00
    nop                                           ; $5A40: $00
    nop                                           ; $5A41: $00
    nop                                           ; $5A42: $00
    rlca                                          ; $5A43: $07
    call nc, Call_000_0069                        ; $5A44: $D4 $69 $00
    inc d                                         ; $5A47: $14
    nop                                           ; $5A48: $00
    nop                                           ; $5A49: $00
    nop                                           ; $5A4A: $00
    nop                                           ; $5A4B: $00
    rlca                                          ; $5A4C: $07
    ld a, [bc]                                    ; $5A4D: $0A
    ld l, d                                       ; $5A4E: $6A
    inc b                                         ; $5A4F: $04
    nop                                           ; $5A50: $00
    nop                                           ; $5A51: $00
    nop                                           ; $5A52: $00
    nop                                           ; $5A53: $00
    nop                                           ; $5A54: $00
    rlca                                          ; $5A55: $07
    jr nz, @+$6C                                  ; $5A56: $20 $6A

    inc c                                         ; $5A58: $0C
    rst RST_38                                    ; $5A59: $FF
    nop                                           ; $5A5A: $00
    nop                                           ; $5A5B: $00
    nop                                           ; $5A5C: $00
    nop                                           ; $5A5D: $00
    rlca                                          ; $5A5E: $07
    inc d                                         ; $5A5F: $14
    ld l, d                                       ; $5A60: $6A
    nop                                           ; $5A61: $00
    inc a                                         ; $5A62: $3C
    nop                                           ; $5A63: $00
    nop                                           ; $5A64: $00
    nop                                           ; $5A65: $00
    nop                                           ; $5A66: $00
    rlca                                          ; $5A67: $07
    inc d                                         ; $5A68: $14
    ld l, d                                       ; $5A69: $6A
    nop                                           ; $5A6A: $00
    inc a                                         ; $5A6B: $3C
    nop                                           ; $5A6C: $00
    nop                                           ; $5A6D: $00
    nop                                           ; $5A6E: $00
    nop                                           ; $5A6F: $00
    rlca                                          ; $5A70: $07
    inc d                                         ; $5A71: $14
    ld l, d                                       ; $5A72: $6A
    nop                                           ; $5A73: $00
    inc a                                         ; $5A74: $3C
    nop                                           ; $5A75: $00
    nop                                           ; $5A76: $00
    nop                                           ; $5A77: $00
    nop                                           ; $5A78: $00
    rlca                                          ; $5A79: $07

jr_003_5A7A:
    ld b, b                                       ; $5A7A: $40
    ld l, d                                       ; $5A7B: $6A
    nop                                           ; $5A7C: $00
    inc a                                         ; $5A7D: $3C
    nop                                           ; $5A7E: $00
    nop                                           ; $5A7F: $00
    nop                                           ; $5A80: $00
    nop                                           ; $5A81: $00
    rlca                                          ; $5A82: $07
    jr nz, @+$6C                                  ; $5A83: $20 $6A

    nop                                           ; $5A85: $00
    inc a                                         ; $5A86: $3C
    nop                                           ; $5A87: $00
    nop                                           ; $5A88: $00
    nop                                           ; $5A89: $00
    nop                                           ; $5A8A: $00
    rlca                                          ; $5A8B: $07
    ld a, [bc]                                    ; $5A8C: $0A
    ld l, d                                       ; $5A8D: $6A
    nop                                           ; $5A8E: $00
    inc a                                         ; $5A8F: $3C
    nop                                           ; $5A90: $00
    nop                                           ; $5A91: $00
    nop                                           ; $5A92: $00
    nop                                           ; $5A93: $00
    ld a, $00                                     ; $5A94: $3E $00
    nop                                           ; $5A96: $00
    nop                                           ; $5A97: $00
    nop                                           ; $5A98: $00
    nop                                           ; $5A99: $00
    nop                                           ; $5A9A: $00
    nop                                           ; $5A9B: $00
    nop                                           ; $5A9C: $00
    ld [$5C8A], sp                                ; $5A9D: $08 $8A $5C
    inc c                                         ; $5AA0: $0C
    ld b, $00                                     ; $5AA1: $06 $00
    nop                                           ; $5AA3: $00
    nop                                           ; $5AA4: $00
    nop                                           ; $5AA5: $00
    ld [$5C9C], sp                                ; $5AA6: $08 $9C $5C
    ld [$0003], sp                                ; $5AA9: $08 $03 $00
    nop                                           ; $5AAC: $00
    nop                                           ; $5AAD: $00
    nop                                           ; $5AAE: $00
    ld [$5CAE], sp                                ; $5AAF: $08 $AE $5C
    ld [$0004], sp                                ; $5AB2: $08 $04 $00
    nop                                           ; $5AB5: $00
    nop                                           ; $5AB6: $00
    nop                                           ; $5AB7: $00
    ld [$5CC0], sp                                ; $5AB8: $08 $C0 $5C
    nop                                           ; $5ABB: $00
    nop                                           ; $5ABC: $00
    nop                                           ; $5ABD: $00
    nop                                           ; $5ABE: $00
    nop                                           ; $5ABF: $00
    nop                                           ; $5AC0: $00
    ld [$5CC6], sp                                ; $5AC1: $08 $C6 $5C
    inc e                                         ; $5AC4: $1C
    dec b                                         ; $5AC5: $05
    nop                                           ; $5AC6: $00
    nop                                           ; $5AC7: $00
    nop                                           ; $5AC8: $00
    nop                                           ; $5AC9: $00
    ld [$5CC6], sp                                ; $5ACA: $08 $C6 $5C
    inc e                                         ; $5ACD: $1C
    dec b                                         ; $5ACE: $05
    nop                                           ; $5ACF: $00
    nop                                           ; $5AD0: $00
    nop                                           ; $5AD1: $00
    nop                                           ; $5AD2: $00
    ld [$5CC6], sp                                ; $5AD3: $08 $C6 $5C
    inc e                                         ; $5AD6: $1C
    dec b                                         ; $5AD7: $05
    nop                                           ; $5AD8: $00
    nop                                           ; $5AD9: $00
    nop                                           ; $5ADA: $00
    nop                                           ; $5ADB: $00
    ld [$5CE8], sp                                ; $5ADC: $08 $E8 $5C
    nop                                           ; $5ADF: $00
    nop                                           ; $5AE0: $00
    nop                                           ; $5AE1: $00
    nop                                           ; $5AE2: $00
    nop                                           ; $5AE3: $00
    nop                                           ; $5AE4: $00
    ld [$5CEE], sp                                ; $5AE5: $08 $EE $5C
    nop                                           ; $5AE8: $00
    nop                                           ; $5AE9: $00
    nop                                           ; $5AEA: $00
    nop                                           ; $5AEB: $00
    nop                                           ; $5AEC: $00
    nop                                           ; $5AED: $00
    ld [$5CF4], sp                                ; $5AEE: $08 $F4 $5C
    nop                                           ; $5AF1: $00
    rst RST_38                                    ; $5AF2: $FF
    nop                                           ; $5AF3: $00
    nop                                           ; $5AF4: $00
    nop                                           ; $5AF5: $00
    nop                                           ; $5AF6: $00
    ld [$5DAC], sp                                ; $5AF7: $08 $AC $5D
    ld [$0004], sp                                ; $5AFA: $08 $04 $00
    nop                                           ; $5AFD: $00
    nop                                           ; $5AFE: $00
    nop                                           ; $5AFF: $00
    ld [$5DB6], sp                                ; $5B00: $08 $B6 $5D
    ld [$00FF], sp                                ; $5B03: $08 $FF $00
    nop                                           ; $5B06: $00
    nop                                           ; $5B07: $00
    nop                                           ; $5B08: $00
    ld [$5DCE], sp                                ; $5B09: $08 $CE $5D
    db $10                                        ; $5B0C: $10
    ld b, $01                                     ; $5B0D: $06 $01
    inc b                                         ; $5B0F: $04
    add b                                         ; $5B10: $80
    nop                                           ; $5B11: $00
    ld [$5EB4], sp                                ; $5B12: $08 $B4 $5E
    inc b                                         ; $5B15: $04
    ld [bc], a                                    ; $5B16: $02
    nop                                           ; $5B17: $00
    nop                                           ; $5B18: $00
    nop                                           ; $5B19: $00
    nop                                           ; $5B1A: $00
    ld [$5E3A], sp                                ; $5B1B: $08 $3A $5E
    inc b                                         ; $5B1E: $04
    ld a, [bc]                                    ; $5B1F: $0A
    nop                                           ; $5B20: $00
    nop                                           ; $5B21: $00
    nop                                           ; $5B22: $00
    nop                                           ; $5B23: $00
    ld [$5E0E], sp                                ; $5B24: $08 $0E $5E
    inc c                                         ; $5B27: $0C
    ld [$0000], sp                                ; $5B28: $08 $00 $00
    nop                                           ; $5B2B: $00
    nop                                           ; $5B2C: $00
    ld [$5E2E], sp                                ; $5B2D: $08 $2E $5E
    nop                                           ; $5B30: $00
    dec b                                         ; $5B31: $05
    nop                                           ; $5B32: $00
    nop                                           ; $5B33: $00
    nop                                           ; $5B34: $00
    nop                                           ; $5B35: $00
    ld [$5DC4], sp                                ; $5B36: $08 $C4 $5D
    jr nc, jr_003_5B3B                            ; $5B39: $30 $00

jr_003_5B3B:
    nop                                           ; $5B3B: $00
    nop                                           ; $5B3C: $00
    nop                                           ; $5B3D: $00
    nop                                           ; $5B3E: $00
    ld [$5DE4], sp                                ; $5B3F: $08 $E4 $5D
    ld [$0001], sp                                ; $5B42: $08 $01 $00
    nop                                           ; $5B45: $00
    nop                                           ; $5B46: $00
    nop                                           ; $5B47: $00
    ld [$5CDE], sp                                ; $5B48: $08 $DE $5C
    inc b                                         ; $5B4B: $04
    rst RST_38                                    ; $5B4C: $FF
    nop                                           ; $5B4D: $00
    nop                                           ; $5B4E: $00
    nop                                           ; $5B4F: $00
    nop                                           ; $5B50: $00
    ld [$5E00], sp                                ; $5B51: $08 $00 $5E
    ld [$0003], sp                                ; $5B54: $08 $03 $00
    nop                                           ; $5B57: $00
    nop                                           ; $5B58: $00
    nop                                           ; $5B59: $00
    ld [$5CFE], sp                                ; $5B5A: $08 $FE $5C
    ld [$0200], sp                                ; $5B5D: $08 $00 $02
    inc bc                                        ; $5B60: $03
    nop                                           ; $5B61: $00
    nop                                           ; $5B62: $00
    ld [$5D0C], sp                                ; $5B63: $08 $0C $5D
    inc c                                         ; $5B66: $0C
    nop                                           ; $5B67: $00
    ld [bc], a                                    ; $5B68: $02
    inc b                                         ; $5B69: $04
    nop                                           ; $5B6A: $00
    nop                                           ; $5B6B: $00
    ld [$5D1E], sp                                ; $5B6C: $08 $1E $5D
    db $10                                        ; $5B6F: $10
    ld [bc], a                                    ; $5B70: $02
    inc bc                                        ; $5B71: $03
    inc b                                         ; $5B72: $04
    ld bc, $0800                                  ; $5B73: $01 $00 $08
    inc [hl]                                      ; $5B76: $34
    ld e, l                                       ; $5B77: $5D
    ld [$0200], sp                                ; $5B78: $08 $00 $02
    inc b                                         ; $5B7B: $04
    nop                                           ; $5B7C: $00
    nop                                           ; $5B7D: $00
    ld [$5D42], sp                                ; $5B7E: $08 $42 $5D
    inc c                                         ; $5B81: $0C
    nop                                           ; $5B82: $00
    ld [bc], a                                    ; $5B83: $02
    inc b                                         ; $5B84: $04
    inc b                                         ; $5B85: $04
    nop                                           ; $5B86: $00
    ld [$5D54], sp                                ; $5B87: $08 $54 $5D
    inc c                                         ; $5B8A: $0C
    ld bc, $0603                                  ; $5B8B: $01 $03 $06
    dec b                                         ; $5B8E: $05
    nop                                           ; $5B8F: $00
    ld [$5D6A], sp                                ; $5B90: $08 $6A $5D
    db $10                                        ; $5B93: $10
    ld bc, $0302                                  ; $5B94: $01 $02 $03
    ld [$0800], sp                                ; $5B97: $08 $00 $08
    add b                                         ; $5B9A: $80
    ld e, l                                       ; $5B9B: $5D
    db $10                                        ; $5B9C: $10
    ld bc, $0302                                  ; $5B9D: $01 $02 $03
    ld [$0800], sp                                ; $5BA0: $08 $00 $08
    cp b                                          ; $5BA3: $B8
    ld e, a                                       ; $5BA4: $5F
    db $10                                        ; $5BA5: $10
    ld bc, $0302                                  ; $5BA6: $01 $02 $03
    add hl, bc                                    ; $5BA9: $09
    nop                                           ; $5BAA: $00
    ld [$5EEA], sp                                ; $5BAB: $08 $EA $5E
    stop                                          ; $5BAE: $10 $00
    rst RST_38                                    ; $5BB0: $FF
    ld [$000F], sp                                ; $5BB1: $08 $0F $00
    ld [$5EBE], sp                                ; $5BB4: $08 $BE $5E
    inc c                                         ; $5BB7: $0C
    ld bc, $0305                                  ; $5BB8: $01 $05 $03
    stop                                          ; $5BBB: $10 $00
    ld [$5ED4], sp                                ; $5BBD: $08 $D4 $5E
    jr jr_003_5BC3                                ; $5BC0: $18 $01

    inc b                                         ; $5BC2: $04

jr_003_5BC3:
    inc b                                         ; $5BC3: $04
    ld bc, $0800                                  ; $5BC4: $01 $00 $08
    ld d, $5F                                     ; $5BC7: $16 $5F
    db $10                                        ; $5BC9: $10
    ld [bc], a                                    ; $5BCA: $02
    ld [bc], a                                    ; $5BCB: $02
    ld de, $0041                                  ; $5BCC: $11 $41 $00
    ld [$5F40], sp                                ; $5BCF: $08 $40 $5F
    inc e                                         ; $5BD2: $1C
    ld bc, $0402                                  ; $5BD3: $01 $02 $04
    stop                                          ; $5BD6: $10 $00
    ld [$5F00], sp                                ; $5BD8: $08 $00 $5F
    db $10                                        ; $5BDB: $10
    ld bc, $1101                                  ; $5BDC: $01 $01 $11
    ld l, l                                       ; $5BDF: $6D
    nop                                           ; $5BE0: $00
    ld [$5F6E], sp                                ; $5BE1: $08 $6E $5F
    inc c                                         ; $5BE4: $0C
    ld b, $01                                     ; $5BE5: $06 $01
    ld [$0021], sp                                ; $5BE7: $08 $21 $00
    ld [$5F88], sp                                ; $5BEA: $08 $88 $5F
    inc c                                         ; $5BED: $0C
    inc d                                         ; $5BEE: $14
    ld bc, $B208                                  ; $5BEF: $01 $08 $B2
    nop                                           ; $5BF2: $00
    ld [$5D96], sp                                ; $5BF3: $08 $96 $5D
    inc c                                         ; $5BF6: $0C
    ld a, [bc]                                    ; $5BF7: $0A
    nop                                           ; $5BF8: $00
    nop                                           ; $5BF9: $00
    nop                                           ; $5BFA: $00
    nop                                           ; $5BFB: $00
    ld [$5C8A], sp                                ; $5BFC: $08 $8A $5C
    nop                                           ; $5BFF: $00
    nop                                           ; $5C00: $00
    nop                                           ; $5C01: $00
    nop                                           ; $5C02: $00
    nop                                           ; $5C03: $00
    nop                                           ; $5C04: $00
    ld [$5CE8], sp                                ; $5C05: $08 $E8 $5C
    nop                                           ; $5C08: $00
    dec b                                         ; $5C09: $05
    nop                                           ; $5C0A: $00
    nop                                           ; $5C0B: $00
    nop                                           ; $5C0C: $00
    nop                                           ; $5C0D: $00
    ld [$5E34], sp                                ; $5C0E: $08 $34 $5E
    nop                                           ; $5C11: $00
    dec b                                         ; $5C12: $05
    nop                                           ; $5C13: $00
    nop                                           ; $5C14: $00
    nop                                           ; $5C15: $00
    nop                                           ; $5C16: $00
    ld [$5E34], sp                                ; $5C17: $08 $34 $5E
    inc b                                         ; $5C1A: $04
    rst RST_38                                    ; $5C1B: $FF
    nop                                           ; $5C1C: $00
    nop                                           ; $5C1D: $00
    nop                                           ; $5C1E: $00
    nop                                           ; $5C1F: $00
    ld [$5E34], sp                                ; $5C20: $08 $34 $5E
    nop                                           ; $5C23: $00
    dec b                                         ; $5C24: $05
    nop                                           ; $5C25: $00
    nop                                           ; $5C26: $00
    nop                                           ; $5C27: $00
    nop                                           ; $5C28: $00
    ld [$5E42], sp                                ; $5C29: $08 $42 $5E
    nop                                           ; $5C2C: $00
    dec b                                         ; $5C2D: $05
    nop                                           ; $5C2E: $00
    nop                                           ; $5C2F: $00
    nop                                           ; $5C30: $00
    nop                                           ; $5C31: $00
    ld [$5E48], sp                                ; $5C32: $08 $48 $5E
    nop                                           ; $5C35: $00
    dec b                                         ; $5C36: $05
    nop                                           ; $5C37: $00
    nop                                           ; $5C38: $00
    nop                                           ; $5C39: $00
    nop                                           ; $5C3A: $00
    ld [$5E6C], sp                                ; $5C3B: $08 $6C $5E
    db $10                                        ; $5C3E: $10
    dec b                                         ; $5C3F: $05
    nop                                           ; $5C40: $00
    nop                                           ; $5C41: $00
    nop                                           ; $5C42: $00
    nop                                           ; $5C43: $00
    ld [$5E8E], sp                                ; $5C44: $08 $8E $5E
    inc c                                         ; $5C47: $0C
    rst RST_38                                    ; $5C48: $FF
    nop                                           ; $5C49: $00
    nop                                           ; $5C4A: $00
    nop                                           ; $5C4B: $00
    nop                                           ; $5C4C: $00
    ld [$5EA0], sp                                ; $5C4D: $08 $A0 $5E
    nop                                           ; $5C50: $00
    nop                                           ; $5C51: $00
    nop                                           ; $5C52: $00
    nop                                           ; $5C53: $00
    nop                                           ; $5C54: $00
    nop                                           ; $5C55: $00
    ld [$5E82], sp                                ; $5C56: $08 $82 $5E
    jr jr_003_5C5B                                ; $5C59: $18 $00

jr_003_5C5B:
    nop                                           ; $5C5B: $00
    nop                                           ; $5C5C: $00
    nop                                           ; $5C5D: $00
    nop                                           ; $5C5E: $00
    ld [$5EA0], sp                                ; $5C5F: $08 $A0 $5E
    ld [$0002], sp                                ; $5C62: $08 $02 $00
    nop                                           ; $5C65: $00
    nop                                           ; $5C66: $00
    nop                                           ; $5C67: $00
    ld [$5E4E], sp                                ; $5C68: $08 $4E $5E
    jr jr_003_5C6F                                ; $5C6B: $18 $02

    nop                                           ; $5C6D: $00
    nop                                           ; $5C6E: $00

jr_003_5C6F:
    nop                                           ; $5C6F: $00
    nop                                           ; $5C70: $00
    ld [$5E34], sp                                ; $5C71: $08 $34 $5E
    nop                                           ; $5C74: $00
    inc d                                         ; $5C75: $14
    nop                                           ; $5C76: $00
    nop                                           ; $5C77: $00
    nop                                           ; $5C78: $00
    nop                                           ; $5C79: $00
    ld [$5E42], sp                                ; $5C7A: $08 $42 $5E
    nop                                           ; $5C7D: $00
    inc d                                         ; $5C7E: $14
    nop                                           ; $5C7F: $00
    nop                                           ; $5C80: $00
    nop                                           ; $5C81: $00
    nop                                           ; $5C82: $00
    ld [$5E78], sp                                ; $5C83: $08 $78 $5E
    inc b                                         ; $5C86: $04
    nop                                           ; $5C87: $00
    nop                                           ; $5C88: $00
    nop                                           ; $5C89: $00
    nop                                           ; $5C8A: $00
    nop                                           ; $5C8B: $00
    ld [$5E8E], sp                                ; $5C8C: $08 $8E $5E
    inc c                                         ; $5C8F: $0C
    rst RST_38                                    ; $5C90: $FF
    nop                                           ; $5C91: $00
    nop                                           ; $5C92: $00
    nop                                           ; $5C93: $00
    nop                                           ; $5C94: $00
    ld [$5E42], sp                                ; $5C95: $08 $42 $5E
    nop                                           ; $5C98: $00
    inc a                                         ; $5C99: $3C
    nop                                           ; $5C9A: $00
    nop                                           ; $5C9B: $00
    nop                                           ; $5C9C: $00
    nop                                           ; $5C9D: $00
    ld [$5E42], sp                                ; $5C9E: $08 $42 $5E
    nop                                           ; $5CA1: $00
    inc a                                         ; $5CA2: $3C
    nop                                           ; $5CA3: $00
    nop                                           ; $5CA4: $00
    nop                                           ; $5CA5: $00
    nop                                           ; $5CA6: $00
    ld [$5E82], sp                                ; $5CA7: $08 $82 $5E
    nop                                           ; $5CAA: $00
    inc a                                         ; $5CAB: $3C
    nop                                           ; $5CAC: $00
    nop                                           ; $5CAD: $00
    nop                                           ; $5CAE: $00
    nop                                           ; $5CAF: $00
    ld [$5EAE], sp                                ; $5CB0: $08 $AE $5E
    nop                                           ; $5CB3: $00
    inc a                                         ; $5CB4: $3C
    nop                                           ; $5CB5: $00
    nop                                           ; $5CB6: $00
    nop                                           ; $5CB7: $00
    nop                                           ; $5CB8: $00
    ld [$5E8E], sp                                ; $5CB9: $08 $8E $5E
    nop                                           ; $5CBC: $00
    inc a                                         ; $5CBD: $3C
    nop                                           ; $5CBE: $00
    nop                                           ; $5CBF: $00
    nop                                           ; $5CC0: $00
    nop                                           ; $5CC1: $00
    ld [$5E78], sp                                ; $5CC2: $08 $78 $5E
    nop                                           ; $5CC5: $00
    inc a                                         ; $5CC6: $3C
    nop                                           ; $5CC7: $00
    nop                                           ; $5CC8: $00
    nop                                           ; $5CC9: $00
    nop                                           ; $5CCA: $00
    ld a, $00                                     ; $5CCB: $3E $00
    nop                                           ; $5CCD: $00
    nop                                           ; $5CCE: $00
    nop                                           ; $5CCF: $00
    nop                                           ; $5CD0: $00
    nop                                           ; $5CD1: $00
    nop                                           ; $5CD2: $00
    nop                                           ; $5CD3: $00
    ld [$68F4], sp                                ; $5CD4: $08 $F4 $68
    inc c                                         ; $5CD7: $0C
    ld b, $00                                     ; $5CD8: $06 $00
    nop                                           ; $5CDA: $00
    nop                                           ; $5CDB: $00
    nop                                           ; $5CDC: $00
    ld [$6906], sp                                ; $5CDD: $08 $06 $69
    ld [$0003], sp                                ; $5CE0: $08 $03 $00
    nop                                           ; $5CE3: $00
    nop                                           ; $5CE4: $00
    nop                                           ; $5CE5: $00
    ld [$6918], sp                                ; $5CE6: $08 $18 $69
    ld [$0004], sp                                ; $5CE9: $08 $04 $00
    nop                                           ; $5CEC: $00
    nop                                           ; $5CED: $00
    nop                                           ; $5CEE: $00
    ld [$692A], sp                                ; $5CEF: $08 $2A $69
    nop                                           ; $5CF2: $00
    nop                                           ; $5CF3: $00
    nop                                           ; $5CF4: $00
    nop                                           ; $5CF5: $00
    nop                                           ; $5CF6: $00
    nop                                           ; $5CF7: $00
    ld [$6930], sp                                ; $5CF8: $08 $30 $69
    inc e                                         ; $5CFB: $1C
    nop                                           ; $5CFC: $00
    nop                                           ; $5CFD: $00
    nop                                           ; $5CFE: $00
    nop                                           ; $5CFF: $00
    nop                                           ; $5D00: $00
    ld [$6930], sp                                ; $5D01: $08 $30 $69
    inc e                                         ; $5D04: $1C
    nop                                           ; $5D05: $00
    nop                                           ; $5D06: $00
    nop                                           ; $5D07: $00
    nop                                           ; $5D08: $00
    nop                                           ; $5D09: $00
    ld [$6930], sp                                ; $5D0A: $08 $30 $69
    inc e                                         ; $5D0D: $1C
    nop                                           ; $5D0E: $00
    nop                                           ; $5D0F: $00
    nop                                           ; $5D10: $00
    nop                                           ; $5D11: $00
    nop                                           ; $5D12: $00
    ld [$68F4], sp                                ; $5D13: $08 $F4 $68
    nop                                           ; $5D16: $00
    nop                                           ; $5D17: $00
    nop                                           ; $5D18: $00
    nop                                           ; $5D19: $00
    nop                                           ; $5D1A: $00
    nop                                           ; $5D1B: $00
    ld [$68F4], sp                                ; $5D1C: $08 $F4 $68
    nop                                           ; $5D1F: $00
    nop                                           ; $5D20: $00
    nop                                           ; $5D21: $00
    nop                                           ; $5D22: $00
    nop                                           ; $5D23: $00
    nop                                           ; $5D24: $00
    ld [$68F4], sp                                ; $5D25: $08 $F4 $68
    nop                                           ; $5D28: $00
    rst RST_38                                    ; $5D29: $FF
    nop                                           ; $5D2A: $00
    nop                                           ; $5D2B: $00
    nop                                           ; $5D2C: $00
    nop                                           ; $5D2D: $00
    ld [$69B6], sp                                ; $5D2E: $08 $B6 $69
    ld [$0004], sp                                ; $5D31: $08 $04 $00
    nop                                           ; $5D34: $00
    nop                                           ; $5D35: $00
    nop                                           ; $5D36: $00
    ld [$69C8], sp                                ; $5D37: $08 $C8 $69
    ld [$0004], sp                                ; $5D3A: $08 $04 $00
    nop                                           ; $5D3D: $00
    nop                                           ; $5D3E: $00
    nop                                           ; $5D3F: $00
    ld [$69F2], sp                                ; $5D40: $08 $F2 $69
    nop                                           ; $5D43: $00
    ld bc, $0400                                  ; $5D44: $01 $00 $04
    add b                                         ; $5D47: $80
    nop                                           ; $5D48: $00
    ld [$6AB2], sp                                ; $5D49: $08 $B2 $6A
    inc b                                         ; $5D4C: $04
    ld [bc], a                                    ; $5D4D: $02
    nop                                           ; $5D4E: $00
    nop                                           ; $5D4F: $00
    nop                                           ; $5D50: $00
    nop                                           ; $5D51: $00
    ld [$6A32], sp                                ; $5D52: $08 $32 $6A
    inc b                                         ; $5D55: $04
    ld a, [bc]                                    ; $5D56: $0A
    nop                                           ; $5D57: $00
    nop                                           ; $5D58: $00
    nop                                           ; $5D59: $00
    nop                                           ; $5D5A: $00
    ld [$69F8], sp                                ; $5D5B: $08 $F8 $69
    jr z, @+$07                                   ; $5D5E: $28 $05

    nop                                           ; $5D60: $00
    nop                                           ; $5D61: $00
    nop                                           ; $5D62: $00
    nop                                           ; $5D63: $00
    ld [$6A26], sp                                ; $5D64: $08 $26 $6A
    nop                                           ; $5D67: $00
    dec b                                         ; $5D68: $05
    nop                                           ; $5D69: $00
    nop                                           ; $5D6A: $00
    nop                                           ; $5D6B: $00
    nop                                           ; $5D6C: $00
    ld [$69DA], sp                                ; $5D6D: $08 $DA $69
    jr nc, jr_003_5D72                            ; $5D70: $30 $00

jr_003_5D72:
    nop                                           ; $5D72: $00
    nop                                           ; $5D73: $00
    nop                                           ; $5D74: $00
    nop                                           ; $5D75: $00
    ld [$5DF2], sp                                ; $5D76: $08 $F2 $5D
    ld [$0001], sp                                ; $5D79: $08 $01 $00
    nop                                           ; $5D7C: $00
    nop                                           ; $5D7D: $00
    nop                                           ; $5D7E: $00
    ld [$694A], sp                                ; $5D7F: $08 $4A $69
    ld [$00FF], sp                                ; $5D82: $08 $FF $00
    nop                                           ; $5D85: $00
    nop                                           ; $5D86: $00
    nop                                           ; $5D87: $00
    ld [$69E4], sp                                ; $5D88: $08 $E4 $69
    ld [$0003], sp                                ; $5D8B: $08 $03 $00
    nop                                           ; $5D8E: $00
    nop                                           ; $5D8F: $00
    nop                                           ; $5D90: $00
    ld [$6954], sp                                ; $5D91: $08 $54 $69
    inc b                                         ; $5D94: $04
    ld [bc], a                                    ; $5D95: $02
    ld [bc], a                                    ; $5D96: $02
    inc bc                                        ; $5D97: $03
    nop                                           ; $5D98: $00
    nop                                           ; $5D99: $00
    ld [$695E], sp                                ; $5D9A: $08 $5E $69
    inc b                                         ; $5D9D: $04
    ld [bc], a                                    ; $5D9E: $02
    ld [bc], a                                    ; $5D9F: $02
    inc b                                         ; $5DA0: $04
    nop                                           ; $5DA1: $00
    nop                                           ; $5DA2: $00
    ld [$6968], sp                                ; $5DA3: $08 $68 $69
    ld [$0304], sp                                ; $5DA6: $08 $04 $03
    inc b                                         ; $5DA9: $04
    ld bc, $0800                                  ; $5DAA: $01 $00 $08
    halt                                          ; $5DAD: $76
    ld l, c                                       ; $5DAE: $69
    ld [$0202], sp                                ; $5DAF: $08 $02 $02
    inc b                                         ; $5DB2: $04
    nop                                           ; $5DB3: $00
    nop                                           ; $5DB4: $00
    ld [$6984], sp                                ; $5DB5: $08 $84 $69
    ld [$0202], sp                                ; $5DB8: $08 $02 $02
    inc b                                         ; $5DBB: $04
    inc b                                         ; $5DBC: $04
    nop                                           ; $5DBD: $00
    ld [$6992], sp                                ; $5DBE: $08 $92 $69
    inc c                                         ; $5DC1: $0C
    inc b                                         ; $5DC2: $04
    inc bc                                        ; $5DC3: $03
    ld b, $05                                     ; $5DC4: $06 $05
    nop                                           ; $5DC6: $00
    ld [$69A4], sp                                ; $5DC7: $08 $A4 $69
    inc c                                         ; $5DCA: $0C
    inc bc                                        ; $5DCB: $03
    ld [bc], a                                    ; $5DCC: $02
    inc bc                                        ; $5DCD: $03
    ld [$0800], sp                                ; $5DCE: $08 $00 $08
    and h                                         ; $5DD1: $A4
    ld l, c                                       ; $5DD2: $69
    inc c                                         ; $5DD3: $0C
    inc bc                                        ; $5DD4: $03
    ld [bc], a                                    ; $5DD5: $02
    inc bc                                        ; $5DD6: $03
    ld [$0800], sp                                ; $5DD7: $08 $00 $08
    adc b                                         ; $5DDA: $88
    ld l, e                                       ; $5DDB: $6B
    db $10                                        ; $5DDC: $10
    ld bc, $0302                                  ; $5DDD: $01 $02 $03
    add hl, bc                                    ; $5DE0: $09
    nop                                           ; $5DE1: $00
    ld [$68F4], sp                                ; $5DE2: $08 $F4 $68
    stop                                          ; $5DE5: $10 $00
    rst RST_38                                    ; $5DE7: $FF
    ld [$000F], sp                                ; $5DE8: $08 $0F $00
    ld [$6ABC], sp                                ; $5DEB: $08 $BC $6A
    inc c                                         ; $5DEE: $0C
    ld bc, $0305                                  ; $5DEF: $01 $05 $03
    inc hl                                        ; $5DF2: $23
    nop                                           ; $5DF3: $00
    ld [$6AE6], sp                                ; $5DF4: $08 $E6 $6A
    jr jr_003_5DFA                                ; $5DF7: $18 $01

    inc b                                         ; $5DF9: $04

jr_003_5DFA:
    ld [$0001], sp                                ; $5DFA: $08 $01 $00
    ld [$6AFC], sp                                ; $5DFD: $08 $FC $6A
    db $10                                        ; $5E00: $10
    ld [bc], a                                    ; $5E01: $02
    ld [bc], a                                    ; $5E02: $02
    inc b                                         ; $5E03: $04
    nop                                           ; $5E04: $00
    nop                                           ; $5E05: $00
    ld [$6B12], sp                                ; $5E06: $08 $12 $6B
    inc e                                         ; $5E09: $1C
    ld bc, $0402                                  ; $5E0A: $01 $02 $04
    stop                                          ; $5E0D: $10 $00
    ld [$68F4], sp                                ; $5E0F: $08 $F4 $68
    inc c                                         ; $5E12: $0C
    ld bc, $1101                                  ; $5E13: $01 $01 $11
    ld h, c                                       ; $5E16: $61
    nop                                           ; $5E17: $00
    ld [$6B66], sp                                ; $5E18: $08 $66 $6B
    inc c                                         ; $5E1B: $0C
    ld bc, $0801                                  ; $5E1C: $01 $01 $08
    ld sp, $0800                                  ; $5E1F: $31 $00 $08
    adc b                                         ; $5E22: $88
    ld e, a                                       ; $5E23: $5F
    inc c                                         ; $5E24: $0C
    inc d                                         ; $5E25: $14
    ld bc, $B208                                  ; $5E26: $01 $08 $B2
    nop                                           ; $5E29: $00
    ld [$68F4], sp                                ; $5E2A: $08 $F4 $68
    inc c                                         ; $5E2D: $0C
    ld a, [bc]                                    ; $5E2E: $0A
    nop                                           ; $5E2F: $00
    nop                                           ; $5E30: $00
    nop                                           ; $5E31: $00
    nop                                           ; $5E32: $00
    ld [$68F4], sp                                ; $5E33: $08 $F4 $68
    nop                                           ; $5E36: $00
    nop                                           ; $5E37: $00
    nop                                           ; $5E38: $00
    nop                                           ; $5E39: $00
    nop                                           ; $5E3A: $00
    nop                                           ; $5E3B: $00
    ld [$68F4], sp                                ; $5E3C: $08 $F4 $68
    nop                                           ; $5E3F: $00
    dec b                                         ; $5E40: $05
    nop                                           ; $5E41: $00
    nop                                           ; $5E42: $00
    nop                                           ; $5E43: $00
    nop                                           ; $5E44: $00
    ld [$6A2C], sp                                ; $5E45: $08 $2C $6A
    nop                                           ; $5E48: $00
    dec b                                         ; $5E49: $05
    nop                                           ; $5E4A: $00
    nop                                           ; $5E4B: $00
    nop                                           ; $5E4C: $00
    nop                                           ; $5E4D: $00
    ld [$6A2C], sp                                ; $5E4E: $08 $2C $6A
    inc b                                         ; $5E51: $04
    rst RST_38                                    ; $5E52: $FF
    nop                                           ; $5E53: $00
    nop                                           ; $5E54: $00
    nop                                           ; $5E55: $00
    nop                                           ; $5E56: $00
    ld [$6A2C], sp                                ; $5E57: $08 $2C $6A
    nop                                           ; $5E5A: $00
    dec b                                         ; $5E5B: $05
    nop                                           ; $5E5C: $00
    nop                                           ; $5E5D: $00
    nop                                           ; $5E5E: $00
    nop                                           ; $5E5F: $00
    ld [$6A40], sp                                ; $5E60: $08 $40 $6A
    nop                                           ; $5E63: $00
    dec b                                         ; $5E64: $05
    nop                                           ; $5E65: $00
    nop                                           ; $5E66: $00
    nop                                           ; $5E67: $00
    nop                                           ; $5E68: $00
    ld [$6A46], sp                                ; $5E69: $08 $46 $6A
    nop                                           ; $5E6C: $00
    dec b                                         ; $5E6D: $05
    nop                                           ; $5E6E: $00
    nop                                           ; $5E6F: $00
    nop                                           ; $5E70: $00
    nop                                           ; $5E71: $00
    ld [$6A6A], sp                                ; $5E72: $08 $6A $6A
    db $10                                        ; $5E75: $10
    dec b                                         ; $5E76: $05
    nop                                           ; $5E77: $00
    nop                                           ; $5E78: $00
    nop                                           ; $5E79: $00
    nop                                           ; $5E7A: $00
    ld [$6A8C], sp                                ; $5E7B: $08 $8C $6A
    inc c                                         ; $5E7E: $0C
    rst RST_38                                    ; $5E7F: $FF
    nop                                           ; $5E80: $00
    nop                                           ; $5E81: $00
    nop                                           ; $5E82: $00
    nop                                           ; $5E83: $00
    ld [$6A9E], sp                                ; $5E84: $08 $9E $6A
    nop                                           ; $5E87: $00
    nop                                           ; $5E88: $00
    nop                                           ; $5E89: $00
    nop                                           ; $5E8A: $00
    nop                                           ; $5E8B: $00
    nop                                           ; $5E8C: $00
    ld [$6A80], sp                                ; $5E8D: $08 $80 $6A
    jr jr_003_5E92                                ; $5E90: $18 $00

jr_003_5E92:
    nop                                           ; $5E92: $00
    nop                                           ; $5E93: $00
    nop                                           ; $5E94: $00
    nop                                           ; $5E95: $00
    ld [$6A9E], sp                                ; $5E96: $08 $9E $6A
    ld [$0002], sp                                ; $5E99: $08 $02 $00
    nop                                           ; $5E9C: $00
    nop                                           ; $5E9D: $00
    nop                                           ; $5E9E: $00
    ld [$6A4C], sp                                ; $5E9F: $08 $4C $6A
    jr jr_003_5EA6                                ; $5EA2: $18 $02

    nop                                           ; $5EA4: $00
    nop                                           ; $5EA5: $00

jr_003_5EA6:
    nop                                           ; $5EA6: $00
    nop                                           ; $5EA7: $00
    ld [$6A2C], sp                                ; $5EA8: $08 $2C $6A
    nop                                           ; $5EAB: $00
    inc d                                         ; $5EAC: $14
    nop                                           ; $5EAD: $00
    nop                                           ; $5EAE: $00
    nop                                           ; $5EAF: $00
    nop                                           ; $5EB0: $00
    ld [$6A40], sp                                ; $5EB1: $08 $40 $6A
    nop                                           ; $5EB4: $00
    inc d                                         ; $5EB5: $14
    nop                                           ; $5EB6: $00
    nop                                           ; $5EB7: $00
    nop                                           ; $5EB8: $00
    nop                                           ; $5EB9: $00
    ld [$6A76], sp                                ; $5EBA: $08 $76 $6A
    inc b                                         ; $5EBD: $04
    nop                                           ; $5EBE: $00
    nop                                           ; $5EBF: $00
    nop                                           ; $5EC0: $00
    nop                                           ; $5EC1: $00
    nop                                           ; $5EC2: $00
    ld [$6A80], sp                                ; $5EC3: $08 $80 $6A
    inc c                                         ; $5EC6: $0C
    rst RST_38                                    ; $5EC7: $FF
    nop                                           ; $5EC8: $00
    nop                                           ; $5EC9: $00
    nop                                           ; $5ECA: $00
    nop                                           ; $5ECB: $00
    ld [$6A80], sp                                ; $5ECC: $08 $80 $6A
    nop                                           ; $5ECF: $00
    inc a                                         ; $5ED0: $3C
    nop                                           ; $5ED1: $00
    nop                                           ; $5ED2: $00
    nop                                           ; $5ED3: $00
    nop                                           ; $5ED4: $00
    ld [$6A80], sp                                ; $5ED5: $08 $80 $6A
    nop                                           ; $5ED8: $00
    inc a                                         ; $5ED9: $3C
    nop                                           ; $5EDA: $00
    nop                                           ; $5EDB: $00
    nop                                           ; $5EDC: $00
    nop                                           ; $5EDD: $00
    ld [$6A80], sp                                ; $5EDE: $08 $80 $6A
    nop                                           ; $5EE1: $00
    inc a                                         ; $5EE2: $3C
    nop                                           ; $5EE3: $00
    nop                                           ; $5EE4: $00
    nop                                           ; $5EE5: $00
    nop                                           ; $5EE6: $00
    ld [$6AAC], sp                                ; $5EE7: $08 $AC $6A
    nop                                           ; $5EEA: $00
    inc a                                         ; $5EEB: $3C
    nop                                           ; $5EEC: $00
    nop                                           ; $5EED: $00
    nop                                           ; $5EEE: $00
    nop                                           ; $5EEF: $00
    ld [$6A8C], sp                                ; $5EF0: $08 $8C $6A
    nop                                           ; $5EF3: $00
    inc a                                         ; $5EF4: $3C
    nop                                           ; $5EF5: $00
    nop                                           ; $5EF6: $00
    nop                                           ; $5EF7: $00
    nop                                           ; $5EF8: $00
    ld [$6A76], sp                                ; $5EF9: $08 $76 $6A
    nop                                           ; $5EFC: $00
    inc a                                         ; $5EFD: $3C
    nop                                           ; $5EFE: $00
    nop                                           ; $5EFF: $00
    nop                                           ; $5F00: $00
    nop                                           ; $5F01: $00
    ld a, $00                                     ; $5F02: $3E $00
    nop                                           ; $5F04: $00
    nop                                           ; $5F05: $00
    nop                                           ; $5F06: $00
    nop                                           ; $5F07: $00
    nop                                           ; $5F08: $00
    nop                                           ; $5F09: $00
    nop                                           ; $5F0A: $00
    add hl, bc                                    ; $5F0B: $09
    db $F4                                        ; $5F0C: $F4
    ld d, a                                       ; $5F0D: $57
    inc c                                         ; $5F0E: $0C
    ld b, $00                                     ; $5F0F: $06 $00
    nop                                           ; $5F11: $00
    nop                                           ; $5F12: $00
    nop                                           ; $5F13: $00
    add hl, bc                                    ; $5F14: $09
    ld [bc], a                                    ; $5F15: $02
    ld e, b                                       ; $5F16: $58
    ld [$0003], sp                                ; $5F17: $08 $03 $00
    nop                                           ; $5F1A: $00
    nop                                           ; $5F1B: $00
    nop                                           ; $5F1C: $00
    add hl, bc                                    ; $5F1D: $09
    inc d                                         ; $5F1E: $14
    ld e, b                                       ; $5F1F: $58
    ld [$0004], sp                                ; $5F20: $08 $04 $00
    nop                                           ; $5F23: $00
    nop                                           ; $5F24: $00
    nop                                           ; $5F25: $00
    add hl, bc                                    ; $5F26: $09
    ld h, $58                                     ; $5F27: $26 $58
    nop                                           ; $5F29: $00
    nop                                           ; $5F2A: $00
    nop                                           ; $5F2B: $00
    nop                                           ; $5F2C: $00
    nop                                           ; $5F2D: $00
    nop                                           ; $5F2E: $00
    add hl, bc                                    ; $5F2F: $09
    inc l                                         ; $5F30: $2C
    ld e, b                                       ; $5F31: $58
    inc e                                         ; $5F32: $1C
    dec b                                         ; $5F33: $05
    nop                                           ; $5F34: $00
    nop                                           ; $5F35: $00
    nop                                           ; $5F36: $00
    nop                                           ; $5F37: $00
    add hl, bc                                    ; $5F38: $09
    inc l                                         ; $5F39: $2C
    ld e, b                                       ; $5F3A: $58
    inc e                                         ; $5F3B: $1C
    dec b                                         ; $5F3C: $05
    nop                                           ; $5F3D: $00
    nop                                           ; $5F3E: $00
    nop                                           ; $5F3F: $00
    nop                                           ; $5F40: $00
    add hl, bc                                    ; $5F41: $09
    inc l                                         ; $5F42: $2C
    ld e, b                                       ; $5F43: $58
    inc e                                         ; $5F44: $1C
    dec b                                         ; $5F45: $05
    nop                                           ; $5F46: $00
    nop                                           ; $5F47: $00
    nop                                           ; $5F48: $00
    nop                                           ; $5F49: $00
    add hl, bc                                    ; $5F4A: $09
    ld c, [hl]                                    ; $5F4B: $4E
    ld e, b                                       ; $5F4C: $58
    nop                                           ; $5F4D: $00
    nop                                           ; $5F4E: $00
    nop                                           ; $5F4F: $00
    nop                                           ; $5F50: $00
    nop                                           ; $5F51: $00
    nop                                           ; $5F52: $00
    add hl, bc                                    ; $5F53: $09
    ld d, h                                       ; $5F54: $54
    ld e, b                                       ; $5F55: $58
    nop                                           ; $5F56: $00
    nop                                           ; $5F57: $00
    nop                                           ; $5F58: $00
    nop                                           ; $5F59: $00
    nop                                           ; $5F5A: $00
    nop                                           ; $5F5B: $00
    add hl, bc                                    ; $5F5C: $09
    ld e, d                                       ; $5F5D: $5A
    ld e, b                                       ; $5F5E: $58
    nop                                           ; $5F5F: $00
    rst RST_38                                    ; $5F60: $FF
    nop                                           ; $5F61: $00
    nop                                           ; $5F62: $00
    nop                                           ; $5F63: $00
    nop                                           ; $5F64: $00
    add hl, bc                                    ; $5F65: $09
    ld e, $59                                     ; $5F66: $1E $59
    ld [$0004], sp                                ; $5F68: $08 $04 $00
    nop                                           ; $5F6B: $00
    nop                                           ; $5F6C: $00
    nop                                           ; $5F6D: $00
    add hl, bc                                    ; $5F6E: $09
    jr z, jr_003_5FCA                             ; $5F6F: $28 $59

    ld [$00FF], sp                                ; $5F71: $08 $FF $00
    nop                                           ; $5F74: $00
    nop                                           ; $5F75: $00
    nop                                           ; $5F76: $00
    add hl, bc                                    ; $5F77: $09
    ld b, b                                       ; $5F78: $40
    ld e, c                                       ; $5F79: $59
    inc b                                         ; $5F7A: $04
    ld a, [bc]                                    ; $5F7B: $0A
    nop                                           ; $5F7C: $00
    inc b                                         ; $5F7D: $04
    add b                                         ; $5F7E: $80
    nop                                           ; $5F7F: $00
    add hl, bc                                    ; $5F80: $09
    ld a, [hl+]                                   ; $5F81: $2A
    ld e, d                                       ; $5F82: $5A
    inc b                                         ; $5F83: $04
    ld [bc], a                                    ; $5F84: $02
    nop                                           ; $5F85: $00
    nop                                           ; $5F86: $00
    nop                                           ; $5F87: $00
    nop                                           ; $5F88: $00
    add hl, bc                                    ; $5F89: $09
    or b                                          ; $5F8A: $B0
    ld e, c                                       ; $5F8B: $59
    inc b                                         ; $5F8C: $04
    ld a, [bc]                                    ; $5F8D: $0A
    nop                                           ; $5F8E: $00
    nop                                           ; $5F8F: $00
    nop                                           ; $5F90: $00
    nop                                           ; $5F91: $00
    add hl, bc                                    ; $5F92: $09
    ld [hl], h                                    ; $5F93: $74
    ld e, c                                       ; $5F94: $59
    inc d                                         ; $5F95: $14
    ld [$0000], sp                                ; $5F96: $08 $00 $00
    nop                                           ; $5F99: $00
    nop                                           ; $5F9A: $00
    add hl, bc                                    ; $5F9B: $09
    and h                                         ; $5F9C: $A4
    ld e, c                                       ; $5F9D: $59
    nop                                           ; $5F9E: $00
    dec b                                         ; $5F9F: $05
    nop                                           ; $5FA0: $00
    nop                                           ; $5FA1: $00
    nop                                           ; $5FA2: $00
    nop                                           ; $5FA3: $00
    add hl, bc                                    ; $5FA4: $09
    ld [hl], $59                                  ; $5FA5: $36 $59
    jr nc, jr_003_5FA9                            ; $5FA7: $30 $00

jr_003_5FA9:
    nop                                           ; $5FA9: $00
    nop                                           ; $5FAA: $00
    nop                                           ; $5FAB: $00
    nop                                           ; $5FAC: $00
    add hl, bc                                    ; $5FAD: $09
    ld c, d                                       ; $5FAE: $4A
    ld e, c                                       ; $5FAF: $59
    ld [$0001], sp                                ; $5FB0: $08 $01 $00
    nop                                           ; $5FB3: $00
    nop                                           ; $5FB4: $00
    nop                                           ; $5FB5: $00
    add hl, bc                                    ; $5FB6: $09
    ld b, h                                       ; $5FB7: $44
    ld e, b                                       ; $5FB8: $58
    inc b                                         ; $5FB9: $04
    rst RST_38                                    ; $5FBA: $FF
    nop                                           ; $5FBB: $00
    nop                                           ; $5FBC: $00
    nop                                           ; $5FBD: $00
    nop                                           ; $5FBE: $00
    add hl, bc                                    ; $5FBF: $09
    ld h, [hl]                                    ; $5FC0: $66
    ld e, c                                       ; $5FC1: $59
    ld [$0003], sp                                ; $5FC2: $08 $03 $00
    nop                                           ; $5FC5: $00
    nop                                           ; $5FC6: $00
    nop                                           ; $5FC7: $00
    add hl, bc                                    ; $5FC8: $09
    ld h, h                                       ; $5FC9: $64

jr_003_5FCA:
    ld e, b                                       ; $5FCA: $58
    ld [$0200], sp                                ; $5FCB: $08 $00 $02
    inc bc                                        ; $5FCE: $03
    nop                                           ; $5FCF: $00
    nop                                           ; $5FD0: $00
    add hl, bc                                    ; $5FD1: $09
    ld [hl], d                                    ; $5FD2: $72
    ld e, b                                       ; $5FD3: $58
    inc c                                         ; $5FD4: $0C
    nop                                           ; $5FD5: $00
    ld [bc], a                                    ; $5FD6: $02
    inc b                                         ; $5FD7: $04
    nop                                           ; $5FD8: $00
    nop                                           ; $5FD9: $00
    add hl, bc                                    ; $5FDA: $09
    add h                                         ; $5FDB: $84
    ld e, b                                       ; $5FDC: $58
    db $10                                        ; $5FDD: $10
    ld [bc], a                                    ; $5FDE: $02
    inc bc                                        ; $5FDF: $03
    inc b                                         ; $5FE0: $04
    ld bc, $0900                                  ; $5FE1: $01 $00 $09
    sbc d                                         ; $5FE4: $9A
    ld e, b                                       ; $5FE5: $58
    ld [$0200], sp                                ; $5FE6: $08 $00 $02
    inc b                                         ; $5FE9: $04
    nop                                           ; $5FEA: $00
    nop                                           ; $5FEB: $00
    add hl, bc                                    ; $5FEC: $09
    xor b                                         ; $5FED: $A8
    ld e, b                                       ; $5FEE: $58
    ld [$0200], sp                                ; $5FEF: $08 $00 $02
    inc b                                         ; $5FF2: $04
    inc b                                         ; $5FF3: $04
    nop                                           ; $5FF4: $00
    add hl, bc                                    ; $5FF5: $09
    or [hl]                                       ; $5FF6: $B6
    ld e, b                                       ; $5FF7: $58
    ld [$0302], sp                                ; $5FF8: $08 $02 $03
    ld b, $05                                     ; $5FFB: $06 $05
    nop                                           ; $5FFD: $00
    add hl, bc                                    ; $5FFE: $09
    call nz, $1058                                ; $5FFF: $C4 $58 $10
    ld bc, $0302                                  ; $6002: $01 $02 $03
    ld [$0900], sp                                ; $6005: $08 $00 $09
    jp c, $1058                                   ; $6008: $DA $58 $10

    ld bc, $0302                                  ; $600B: $01 $02 $03
    ld [$0900], sp                                ; $600E: $08 $00 $09
    db $FC                                        ; $6011: $FC
    ld e, d                                       ; $6012: $5A
    db $10                                        ; $6013: $10
    ld bc, $0302                                  ; $6014: $01 $02 $03
    add hl, bc                                    ; $6017: $09
    nop                                           ; $6018: $00
    add hl, bc                                    ; $6019: $09
    inc [hl]                                      ; $601A: $34
    ld e, d                                       ; $601B: $5A
    ld [$FF00], sp                                ; $601C: $08 $00 $FF
    ld [$000F], sp                                ; $601F: $08 $0F $00
    add hl, bc                                    ; $6022: $09
    ld e, b                                       ; $6023: $58
    ld e, d                                       ; $6024: $5A
    inc c                                         ; $6025: $0C
    ld bc, $0805                                  ; $6026: $01 $05 $08
    jr nc, jr_003_602B                            ; $6029: $30 $00

jr_003_602B:
    add hl, bc                                    ; $602B: $09
    halt                                          ; $602C: $76
    ld e, d                                       ; $602D: $5A
    jr jr_003_6031                                ; $602E: $18 $01

    inc b                                         ; $6030: $04

jr_003_6031:
    inc b                                         ; $6031: $04
    ld bc, $0900                                  ; $6032: $01 $00 $09
    sub h                                         ; $6035: $94
    ld e, d                                       ; $6036: $5A
    db $10                                        ; $6037: $10
    inc b                                         ; $6038: $04
    ld [bc], a                                    ; $6039: $02
    inc b                                         ; $603A: $04
    ld bc, $0900                                  ; $603B: $01 $00 $09
    and [hl]                                      ; $603E: $A6
    ld e, d                                       ; $603F: $5A
    db $10                                        ; $6040: $10
    ld bc, $0804                                  ; $6041: $01 $04 $08
    ld bc, $0900                                  ; $6044: $01 $00 $09
    ld b, d                                       ; $6047: $42
    ld e, d                                       ; $6048: $5A
    db $10                                        ; $6049: $10
    ld bc, $1101                                  ; $604A: $01 $01 $11
    ld l, l                                       ; $604D: $6D
    nop                                           ; $604E: $00
    add hl, bc                                    ; $604F: $09
    cp b                                          ; $6050: $B8
    ld e, d                                       ; $6051: $5A
    inc c                                         ; $6052: $0C
    ld b, $01                                     ; $6053: $06 $01
    ld [$00F0], sp                                ; $6055: $08 $F0 $00
    add hl, bc                                    ; $6058: $09
    adc $5A                                       ; $6059: $CE $5A
    inc c                                         ; $605B: $0C
    inc d                                         ; $605C: $14
    ld bc, $B208                                  ; $605D: $01 $08 $B2
    nop                                           ; $6060: $00
    add hl, bc                                    ; $6061: $09
    ldh a, [$FF58]                                ; $6062: $F0 $58
    inc c                                         ; $6064: $0C
    ld a, [bc]                                    ; $6065: $0A
    nop                                           ; $6066: $00
    nop                                           ; $6067: $00
    nop                                           ; $6068: $00
    nop                                           ; $6069: $00
    add hl, bc                                    ; $606A: $09
    db $F4                                        ; $606B: $F4
    ld d, a                                       ; $606C: $57
    nop                                           ; $606D: $00
    nop                                           ; $606E: $00
    nop                                           ; $606F: $00
    nop                                           ; $6070: $00
    nop                                           ; $6071: $00
    nop                                           ; $6072: $00
    add hl, bc                                    ; $6073: $09
    ld c, [hl]                                    ; $6074: $4E
    ld e, b                                       ; $6075: $58
    nop                                           ; $6076: $00
    dec b                                         ; $6077: $05
    nop                                           ; $6078: $00
    nop                                           ; $6079: $00
    nop                                           ; $607A: $00
    nop                                           ; $607B: $00
    add hl, bc                                    ; $607C: $09
    xor d                                         ; $607D: $AA
    ld e, c                                       ; $607E: $59
    nop                                           ; $607F: $00
    dec b                                         ; $6080: $05
    nop                                           ; $6081: $00
    nop                                           ; $6082: $00
    nop                                           ; $6083: $00
    nop                                           ; $6084: $00
    add hl, bc                                    ; $6085: $09
    xor d                                         ; $6086: $AA
    ld e, c                                       ; $6087: $59
    inc b                                         ; $6088: $04
    rst RST_38                                    ; $6089: $FF
    nop                                           ; $608A: $00
    nop                                           ; $608B: $00
    nop                                           ; $608C: $00
    nop                                           ; $608D: $00
    add hl, bc                                    ; $608E: $09
    xor d                                         ; $608F: $AA
    ld e, c                                       ; $6090: $59
    nop                                           ; $6091: $00
    dec b                                         ; $6092: $05
    nop                                           ; $6093: $00
    nop                                           ; $6094: $00
    nop                                           ; $6095: $00
    nop                                           ; $6096: $00
    add hl, bc                                    ; $6097: $09
    cp b                                          ; $6098: $B8
    ld e, c                                       ; $6099: $59
    nop                                           ; $609A: $00
    dec b                                         ; $609B: $05
    nop                                           ; $609C: $00
    nop                                           ; $609D: $00
    nop                                           ; $609E: $00
    nop                                           ; $609F: $00
    add hl, bc                                    ; $60A0: $09
    cp [hl]                                       ; $60A1: $BE
    ld e, c                                       ; $60A2: $59
    nop                                           ; $60A3: $00
    dec b                                         ; $60A4: $05
    nop                                           ; $60A5: $00
    nop                                           ; $60A6: $00
    nop                                           ; $60A7: $00
    nop                                           ; $60A8: $00
    add hl, bc                                    ; $60A9: $09
    ldh [c], a                                    ; $60AA: $E2
    ld e, c                                       ; $60AB: $59
    db $10                                        ; $60AC: $10
    dec b                                         ; $60AD: $05
    nop                                           ; $60AE: $00
    nop                                           ; $60AF: $00
    nop                                           ; $60B0: $00
    nop                                           ; $60B1: $00
    add hl, bc                                    ; $60B2: $09
    inc b                                         ; $60B3: $04
    ld e, d                                       ; $60B4: $5A
    inc c                                         ; $60B5: $0C
    rst RST_38                                    ; $60B6: $FF
    nop                                           ; $60B7: $00
    nop                                           ; $60B8: $00
    nop                                           ; $60B9: $00
    nop                                           ; $60BA: $00
    add hl, bc                                    ; $60BB: $09
    ld d, $5A                                     ; $60BC: $16 $5A
    nop                                           ; $60BE: $00
    nop                                           ; $60BF: $00
    nop                                           ; $60C0: $00
    nop                                           ; $60C1: $00
    nop                                           ; $60C2: $00
    nop                                           ; $60C3: $00
    add hl, bc                                    ; $60C4: $09
    ld hl, sp+$59                                 ; $60C5: $F8 $59
    jr jr_003_60C9                                ; $60C7: $18 $00

jr_003_60C9:
    nop                                           ; $60C9: $00
    nop                                           ; $60CA: $00
    nop                                           ; $60CB: $00
    nop                                           ; $60CC: $00
    add hl, bc                                    ; $60CD: $09
    ld d, $5A                                     ; $60CE: $16 $5A
    ld [$0002], sp                                ; $60D0: $08 $02 $00
    nop                                           ; $60D3: $00
    nop                                           ; $60D4: $00
    nop                                           ; $60D5: $00
    add hl, bc                                    ; $60D6: $09
    call nz, Call_000_1859                        ; $60D7: $C4 $59 $18
    ld [bc], a                                    ; $60DA: $02
    nop                                           ; $60DB: $00
    nop                                           ; $60DC: $00
    nop                                           ; $60DD: $00
    nop                                           ; $60DE: $00
    add hl, bc                                    ; $60DF: $09
    xor d                                         ; $60E0: $AA
    ld e, c                                       ; $60E1: $59
    nop                                           ; $60E2: $00
    inc d                                         ; $60E3: $14
    nop                                           ; $60E4: $00
    nop                                           ; $60E5: $00
    nop                                           ; $60E6: $00
    nop                                           ; $60E7: $00
    add hl, bc                                    ; $60E8: $09
    cp b                                          ; $60E9: $B8
    ld e, c                                       ; $60EA: $59
    nop                                           ; $60EB: $00
    inc d                                         ; $60EC: $14
    nop                                           ; $60ED: $00
    nop                                           ; $60EE: $00
    nop                                           ; $60EF: $00
    nop                                           ; $60F0: $00
    add hl, bc                                    ; $60F1: $09
    xor $59                                       ; $60F2: $EE $59
    inc b                                         ; $60F4: $04
    nop                                           ; $60F5: $00
    nop                                           ; $60F6: $00
    nop                                           ; $60F7: $00
    nop                                           ; $60F8: $00
    nop                                           ; $60F9: $00
    add hl, bc                                    ; $60FA: $09
    inc b                                         ; $60FB: $04
    ld e, d                                       ; $60FC: $5A
    inc c                                         ; $60FD: $0C
    rst RST_38                                    ; $60FE: $FF
    nop                                           ; $60FF: $00
    nop                                           ; $6100: $00
    nop                                           ; $6101: $00
    nop                                           ; $6102: $00
    add hl, bc                                    ; $6103: $09
    cp b                                          ; $6104: $B8
    ld e, c                                       ; $6105: $59
    nop                                           ; $6106: $00
    inc a                                         ; $6107: $3C
    nop                                           ; $6108: $00
    nop                                           ; $6109: $00
    nop                                           ; $610A: $00
    nop                                           ; $610B: $00
    add hl, bc                                    ; $610C: $09
    cp b                                          ; $610D: $B8
    ld e, c                                       ; $610E: $59
    nop                                           ; $610F: $00
    inc a                                         ; $6110: $3C
    nop                                           ; $6111: $00
    nop                                           ; $6112: $00
    nop                                           ; $6113: $00
    nop                                           ; $6114: $00
    add hl, bc                                    ; $6115: $09
    cp b                                          ; $6116: $B8
    ld e, c                                       ; $6117: $59
    nop                                           ; $6118: $00
    inc a                                         ; $6119: $3C
    nop                                           ; $611A: $00
    nop                                           ; $611B: $00
    nop                                           ; $611C: $00
    nop                                           ; $611D: $00
    add hl, bc                                    ; $611E: $09
    inc h                                         ; $611F: $24
    ld e, d                                       ; $6120: $5A
    nop                                           ; $6121: $00
    inc a                                         ; $6122: $3C
    nop                                           ; $6123: $00
    nop                                           ; $6124: $00
    nop                                           ; $6125: $00
    nop                                           ; $6126: $00
    add hl, bc                                    ; $6127: $09
    inc b                                         ; $6128: $04
    ld e, d                                       ; $6129: $5A
    nop                                           ; $612A: $00
    inc a                                         ; $612B: $3C
    nop                                           ; $612C: $00
    nop                                           ; $612D: $00
    nop                                           ; $612E: $00
    nop                                           ; $612F: $00
    add hl, bc                                    ; $6130: $09
    xor $59                                       ; $6131: $EE $59
    nop                                           ; $6133: $00
    inc a                                         ; $6134: $3C
    nop                                           ; $6135: $00
    nop                                           ; $6136: $00
    nop                                           ; $6137: $00
    nop                                           ; $6138: $00
    ld a, $00                                     ; $6139: $3E $00
    nop                                           ; $613B: $00
    nop                                           ; $613C: $00
    nop                                           ; $613D: $00
    nop                                           ; $613E: $00
    nop                                           ; $613F: $00
    nop                                           ; $6140: $00
    nop                                           ; $6141: $00
    add hl, bc                                    ; $6142: $09
    inc de                                        ; $6143: $13
    ld h, l                                       ; $6144: $65
    inc c                                         ; $6145: $0C
    ld b, $00                                     ; $6146: $06 $00
    nop                                           ; $6148: $00
    nop                                           ; $6149: $00
    nop                                           ; $614A: $00
    add hl, bc                                    ; $614B: $09
    dec l                                         ; $614C: $2D
    ld h, l                                       ; $614D: $65
    ld [$0003], sp                                ; $614E: $08 $03 $00
    nop                                           ; $6151: $00
    nop                                           ; $6152: $00
    nop                                           ; $6153: $00
    add hl, bc                                    ; $6154: $09
    ccf                                           ; $6155: $3F
    ld h, l                                       ; $6156: $65
    ld [$0004], sp                                ; $6157: $08 $04 $00
    nop                                           ; $615A: $00
    nop                                           ; $615B: $00
    nop                                           ; $615C: $00
    add hl, bc                                    ; $615D: $09
    ld d, c                                       ; $615E: $51
    ld h, l                                       ; $615F: $65
    nop                                           ; $6160: $00
    nop                                           ; $6161: $00
    nop                                           ; $6162: $00
    nop                                           ; $6163: $00
    nop                                           ; $6164: $00
    nop                                           ; $6165: $00
    add hl, bc                                    ; $6166: $09
    ld d, a                                       ; $6167: $57
    ld h, l                                       ; $6168: $65
    inc e                                         ; $6169: $1C
    nop                                           ; $616A: $00
    nop                                           ; $616B: $00
    nop                                           ; $616C: $00
    nop                                           ; $616D: $00
    nop                                           ; $616E: $00
    add hl, bc                                    ; $616F: $09
    ld d, a                                       ; $6170: $57
    ld h, l                                       ; $6171: $65
    inc e                                         ; $6172: $1C
    nop                                           ; $6173: $00
    nop                                           ; $6174: $00
    nop                                           ; $6175: $00
    nop                                           ; $6176: $00
    nop                                           ; $6177: $00
    add hl, bc                                    ; $6178: $09
    ld d, a                                       ; $6179: $57
    ld h, l                                       ; $617A: $65
    inc e                                         ; $617B: $1C
    nop                                           ; $617C: $00
    nop                                           ; $617D: $00
    nop                                           ; $617E: $00
    nop                                           ; $617F: $00
    nop                                           ; $6180: $00
    add hl, bc                                    ; $6181: $09
    ld a, c                                       ; $6182: $79
    ld h, l                                       ; $6183: $65
    nop                                           ; $6184: $00
    nop                                           ; $6185: $00
    nop                                           ; $6186: $00
    nop                                           ; $6187: $00
    nop                                           ; $6188: $00
    nop                                           ; $6189: $00
    add hl, bc                                    ; $618A: $09
    ld a, a                                       ; $618B: $7F
    ld h, l                                       ; $618C: $65
    nop                                           ; $618D: $00
    nop                                           ; $618E: $00
    nop                                           ; $618F: $00
    nop                                           ; $6190: $00
    nop                                           ; $6191: $00
    nop                                           ; $6192: $00
    add hl, bc                                    ; $6193: $09
    add l                                         ; $6194: $85
    ld h, l                                       ; $6195: $65
    nop                                           ; $6196: $00
    rst RST_38                                    ; $6197: $FF
    nop                                           ; $6198: $00
    nop                                           ; $6199: $00
    nop                                           ; $619A: $00
    nop                                           ; $619B: $00
    add hl, bc                                    ; $619C: $09
    ccf                                           ; $619D: $3F
    ld h, [hl]                                    ; $619E: $66
    ld [$0004], sp                                ; $619F: $08 $04 $00
    nop                                           ; $61A2: $00
    nop                                           ; $61A3: $00
    nop                                           ; $61A4: $00
    add hl, bc                                    ; $61A5: $09
    ld c, c                                       ; $61A6: $49
    ld h, [hl]                                    ; $61A7: $66
    ld [$0004], sp                                ; $61A8: $08 $04 $00
    nop                                           ; $61AB: $00
    nop                                           ; $61AC: $00
    nop                                           ; $61AD: $00
    add hl, bc                                    ; $61AE: $09
    ld l, a                                       ; $61AF: $6F
    ld h, [hl]                                    ; $61B0: $66
    inc c                                         ; $61B1: $0C
    ld bc, $0401                                  ; $61B2: $01 $01 $04
    add b                                         ; $61B5: $80
    nop                                           ; $61B6: $00
    add hl, bc                                    ; $61B7: $09
    dec e                                         ; $61B8: $1D
    ld h, a                                       ; $61B9: $67
    inc b                                         ; $61BA: $04
    ld [bc], a                                    ; $61BB: $02
    nop                                           ; $61BC: $00
    nop                                           ; $61BD: $00
    nop                                           ; $61BE: $00
    nop                                           ; $61BF: $00
    add hl, bc                                    ; $61C0: $09
    and e                                         ; $61C1: $A3
    ld h, [hl]                                    ; $61C2: $66
    inc b                                         ; $61C3: $04
    ld a, [bc]                                    ; $61C4: $0A
    nop                                           ; $61C5: $00
    nop                                           ; $61C6: $00
    nop                                           ; $61C7: $00
    nop                                           ; $61C8: $00
    add hl, bc                                    ; $61C9: $09
    add c                                         ; $61CA: $81
    ld h, [hl]                                    ; $61CB: $66
    db $10                                        ; $61CC: $10
    dec b                                         ; $61CD: $05
    nop                                           ; $61CE: $00
    nop                                           ; $61CF: $00
    nop                                           ; $61D0: $00
    nop                                           ; $61D1: $00
    add hl, bc                                    ; $61D2: $09
    sub a                                         ; $61D3: $97
    ld h, [hl]                                    ; $61D4: $66
    nop                                           ; $61D5: $00
    dec b                                         ; $61D6: $05
    nop                                           ; $61D7: $00
    nop                                           ; $61D8: $00
    nop                                           ; $61D9: $00
    nop                                           ; $61DA: $00
    add hl, bc                                    ; $61DB: $09
    ld d, a                                       ; $61DC: $57
    ld h, [hl]                                    ; $61DD: $66
    jr nc, jr_003_61E0                            ; $61DE: $30 $00

jr_003_61E0:
    nop                                           ; $61E0: $00
    nop                                           ; $61E1: $00
    nop                                           ; $61E2: $00
    nop                                           ; $61E3: $00
    add hl, bc                                    ; $61E4: $09
    ld e, b                                       ; $61E5: $58
    ld e, c                                       ; $61E6: $59
    ld [$0001], sp                                ; $61E7: $08 $01 $00
    nop                                           ; $61EA: $00
    nop                                           ; $61EB: $00
    nop                                           ; $61EC: $00
    add hl, bc                                    ; $61ED: $09
    ld l, a                                       ; $61EE: $6F
    ld h, l                                       ; $61EF: $65
    ld [$00FF], sp                                ; $61F0: $08 $FF $00
    nop                                           ; $61F3: $00
    nop                                           ; $61F4: $00
    nop                                           ; $61F5: $00
    add hl, bc                                    ; $61F6: $09
    ld h, c                                       ; $61F7: $61
    ld h, [hl]                                    ; $61F8: $66
    ld [$0003], sp                                ; $61F9: $08 $03 $00
    nop                                           ; $61FC: $00
    nop                                           ; $61FD: $00
    nop                                           ; $61FE: $00
    add hl, bc                                    ; $61FF: $09
    adc a                                         ; $6200: $8F
    ld h, l                                       ; $6201: $65
    ld [$0200], sp                                ; $6202: $08 $00 $02
    inc bc                                        ; $6205: $03
    nop                                           ; $6206: $00
    nop                                           ; $6207: $00
    add hl, bc                                    ; $6208: $09
    sbc l                                         ; $6209: $9D
    ld h, l                                       ; $620A: $65
    ld [$0200], sp                                ; $620B: $08 $00 $02
    inc b                                         ; $620E: $04
    nop                                           ; $620F: $00
    nop                                           ; $6210: $00
    add hl, bc                                    ; $6211: $09
    xor e                                         ; $6212: $AB
    ld h, l                                       ; $6213: $65
    inc c                                         ; $6214: $0C
    ld [bc], a                                    ; $6215: $02
    inc bc                                        ; $6216: $03
    inc b                                         ; $6217: $04
    ld bc, $0900                                  ; $6218: $01 $00 $09
    cp l                                          ; $621B: $BD
    ld h, l                                       ; $621C: $65
    ld [$0200], sp                                ; $621D: $08 $00 $02
    inc b                                         ; $6220: $04
    nop                                           ; $6221: $00
    nop                                           ; $6222: $00
    add hl, bc                                    ; $6223: $09
    bit 4, l                                      ; $6224: $CB $65
    ld [$0200], sp                                ; $6226: $08 $00 $02
    inc b                                         ; $6229: $04
    inc b                                         ; $622A: $04
    nop                                           ; $622B: $00
    add hl, bc                                    ; $622C: $09
    reti                                          ; $622D: $D9


    ld h, l                                       ; $622E: $65
    db $10                                        ; $622F: $10
    ld [bc], a                                    ; $6230: $02
    inc bc                                        ; $6231: $03
    ld b, $05                                     ; $6232: $06 $05
    nop                                           ; $6234: $00
    add hl, bc                                    ; $6235: $09
    rst RST_28                                    ; $6236: $EF
    ld h, l                                       ; $6237: $65
    inc c                                         ; $6238: $0C
    ld bc, $0302                                  ; $6239: $01 $02 $03
    ld [$0900], sp                                ; $623C: $08 $00 $09
    dec b                                         ; $623F: $05
    ld h, [hl]                                    ; $6240: $66
    inc c                                         ; $6241: $0C
    ld bc, $0302                                  ; $6242: $01 $02 $03
    ld [$0900], sp                                ; $6245: $08 $00 $09
    rst RST_28                                    ; $6248: $EF
    ld h, a                                       ; $6249: $67
    db $10                                        ; $624A: $10
    ld bc, $0302                                  ; $624B: $01 $02 $03
    add hl, bc                                    ; $624E: $09
    nop                                           ; $624F: $00
    add hl, bc                                    ; $6250: $09
    inc de                                        ; $6251: $13
    ld h, l                                       ; $6252: $65
    stop                                          ; $6253: $10 $00
    rst RST_38                                    ; $6255: $FF
    ld [$000F], sp                                ; $6256: $08 $0F $00
    add hl, bc                                    ; $6259: $09
    daa                                           ; $625A: $27
    ld h, a                                       ; $625B: $67
    inc c                                         ; $625C: $0C
    ld bc, $0305                                  ; $625D: $01 $05 $03
    inc hl                                        ; $6260: $23
    nop                                           ; $6261: $00
    add hl, bc                                    ; $6262: $09
    add hl, sp                                    ; $6263: $39
    ld h, a                                       ; $6264: $67
    jr jr_003_6268                                ; $6265: $18 $01

    inc b                                         ; $6267: $04

jr_003_6268:
    inc b                                         ; $6268: $04
    ld bc, $0900                                  ; $6269: $01 $00 $09
    ld d, e                                       ; $626C: $53
    ld h, a                                       ; $626D: $67
    db $10                                        ; $626E: $10
    ld [bc], a                                    ; $626F: $02
    ld [bc], a                                    ; $6270: $02
    inc b                                         ; $6271: $04
    nop                                           ; $6272: $00
    nop                                           ; $6273: $00
    add hl, bc                                    ; $6274: $09
    add c                                         ; $6275: $81
    ld h, a                                       ; $6276: $67
    inc e                                         ; $6277: $1C
    ld bc, $0402                                  ; $6278: $01 $02 $04
    stop                                          ; $627B: $10 $00
    add hl, bc                                    ; $627D: $09
    inc de                                        ; $627E: $13
    ld h, l                                       ; $627F: $65
    inc c                                         ; $6280: $0C
    ld bc, $1101                                  ; $6281: $01 $01 $11
    ld h, c                                       ; $6284: $61
    nop                                           ; $6285: $00
    add hl, bc                                    ; $6286: $09
    sbc e                                         ; $6287: $9B
    ld h, a                                       ; $6288: $67
    inc c                                         ; $6289: $0C
    ld bc, $1401                                  ; $628A: $01 $01 $14
    ld hl, $0900                                  ; $628D: $21 $00 $09
    adc $5A                                       ; $6290: $CE $5A
    inc c                                         ; $6292: $0C
    inc d                                         ; $6293: $14
    ld bc, $B208                                  ; $6294: $01 $08 $B2
    nop                                           ; $6297: $00
    add hl, bc                                    ; $6298: $09
    dec de                                        ; $6299: $1B
    ld h, [hl]                                    ; $629A: $66
    inc c                                         ; $629B: $0C
    ld a, [bc]                                    ; $629C: $0A
    nop                                           ; $629D: $00
    nop                                           ; $629E: $00
    nop                                           ; $629F: $00
    nop                                           ; $62A0: $00
    add hl, bc                                    ; $62A1: $09
    inc de                                        ; $62A2: $13
    ld h, l                                       ; $62A3: $65
    nop                                           ; $62A4: $00
    nop                                           ; $62A5: $00
    nop                                           ; $62A6: $00
    nop                                           ; $62A7: $00
    nop                                           ; $62A8: $00
    nop                                           ; $62A9: $00
    add hl, bc                                    ; $62AA: $09
    ld a, c                                       ; $62AB: $79
    ld h, l                                       ; $62AC: $65
    nop                                           ; $62AD: $00
    dec b                                         ; $62AE: $05
    nop                                           ; $62AF: $00
    nop                                           ; $62B0: $00
    nop                                           ; $62B1: $00
    nop                                           ; $62B2: $00
    add hl, bc                                    ; $62B3: $09
    sbc l                                         ; $62B4: $9D
    ld h, [hl]                                    ; $62B5: $66
    nop                                           ; $62B6: $00
    dec b                                         ; $62B7: $05
    nop                                           ; $62B8: $00
    nop                                           ; $62B9: $00
    nop                                           ; $62BA: $00
    nop                                           ; $62BB: $00
    add hl, bc                                    ; $62BC: $09
    sbc l                                         ; $62BD: $9D
    ld h, [hl]                                    ; $62BE: $66
    inc b                                         ; $62BF: $04
    rst RST_38                                    ; $62C0: $FF
    nop                                           ; $62C1: $00
    nop                                           ; $62C2: $00
    nop                                           ; $62C3: $00
    nop                                           ; $62C4: $00
    add hl, bc                                    ; $62C5: $09
    sbc l                                         ; $62C6: $9D
    ld h, [hl]                                    ; $62C7: $66
    nop                                           ; $62C8: $00
    dec b                                         ; $62C9: $05
    nop                                           ; $62CA: $00
    nop                                           ; $62CB: $00
    nop                                           ; $62CC: $00
    nop                                           ; $62CD: $00
    add hl, bc                                    ; $62CE: $09
    xor e                                         ; $62CF: $AB
    ld h, [hl]                                    ; $62D0: $66
    nop                                           ; $62D1: $00
    dec b                                         ; $62D2: $05
    nop                                           ; $62D3: $00
    nop                                           ; $62D4: $00
    nop                                           ; $62D5: $00
    nop                                           ; $62D6: $00
    add hl, bc                                    ; $62D7: $09
    or c                                          ; $62D8: $B1
    ld h, [hl]                                    ; $62D9: $66
    nop                                           ; $62DA: $00
    dec b                                         ; $62DB: $05
    nop                                           ; $62DC: $00
    nop                                           ; $62DD: $00
    nop                                           ; $62DE: $00
    nop                                           ; $62DF: $00
    add hl, bc                                    ; $62E0: $09
    push de                                       ; $62E1: $D5
    ld h, [hl]                                    ; $62E2: $66
    db $10                                        ; $62E3: $10
    dec b                                         ; $62E4: $05
    nop                                           ; $62E5: $00
    nop                                           ; $62E6: $00
    nop                                           ; $62E7: $00
    nop                                           ; $62E8: $00
    add hl, bc                                    ; $62E9: $09
    rst RST_30                                    ; $62EA: $F7
    ld h, [hl]                                    ; $62EB: $66
    inc c                                         ; $62EC: $0C
    rst RST_38                                    ; $62ED: $FF
    nop                                           ; $62EE: $00
    nop                                           ; $62EF: $00
    nop                                           ; $62F0: $00
    nop                                           ; $62F1: $00
    add hl, bc                                    ; $62F2: $09
    add hl, bc                                    ; $62F3: $09
    ld h, a                                       ; $62F4: $67
    nop                                           ; $62F5: $00
    nop                                           ; $62F6: $00
    nop                                           ; $62F7: $00
    nop                                           ; $62F8: $00
    nop                                           ; $62F9: $00
    nop                                           ; $62FA: $00
    add hl, bc                                    ; $62FB: $09
    db $EB                                        ; $62FC: $EB
    ld h, [hl]                                    ; $62FD: $66
    jr jr_003_6300                                ; $62FE: $18 $00

jr_003_6300:
    nop                                           ; $6300: $00
    nop                                           ; $6301: $00
    nop                                           ; $6302: $00
    nop                                           ; $6303: $00
    add hl, bc                                    ; $6304: $09
    add hl, bc                                    ; $6305: $09
    ld h, a                                       ; $6306: $67
    ld [$0002], sp                                ; $6307: $08 $02 $00
    nop                                           ; $630A: $00
    nop                                           ; $630B: $00
    nop                                           ; $630C: $00
    add hl, bc                                    ; $630D: $09
    or a                                          ; $630E: $B7
    ld h, [hl]                                    ; $630F: $66
    jr jr_003_6314                                ; $6310: $18 $02

    nop                                           ; $6312: $00
    nop                                           ; $6313: $00

jr_003_6314:
    nop                                           ; $6314: $00
    nop                                           ; $6315: $00
    add hl, bc                                    ; $6316: $09
    sbc l                                         ; $6317: $9D
    ld h, [hl]                                    ; $6318: $66
    nop                                           ; $6319: $00
    inc d                                         ; $631A: $14
    nop                                           ; $631B: $00
    nop                                           ; $631C: $00
    nop                                           ; $631D: $00
    nop                                           ; $631E: $00
    add hl, bc                                    ; $631F: $09
    xor e                                         ; $6320: $AB
    ld h, [hl]                                    ; $6321: $66
    nop                                           ; $6322: $00
    inc d                                         ; $6323: $14
    nop                                           ; $6324: $00
    nop                                           ; $6325: $00
    nop                                           ; $6326: $00
    nop                                           ; $6327: $00
    add hl, bc                                    ; $6328: $09
    pop hl                                        ; $6329: $E1
    ld h, [hl]                                    ; $632A: $66
    inc b                                         ; $632B: $04
    nop                                           ; $632C: $00
    nop                                           ; $632D: $00
    nop                                           ; $632E: $00
    nop                                           ; $632F: $00
    nop                                           ; $6330: $00
    add hl, bc                                    ; $6331: $09
    rst RST_30                                    ; $6332: $F7
    ld h, [hl]                                    ; $6333: $66
    inc c                                         ; $6334: $0C
    rst RST_38                                    ; $6335: $FF
    nop                                           ; $6336: $00
    nop                                           ; $6337: $00
    nop                                           ; $6338: $00
    nop                                           ; $6339: $00
    add hl, bc                                    ; $633A: $09
    xor e                                         ; $633B: $AB
    ld h, [hl]                                    ; $633C: $66
    nop                                           ; $633D: $00
    inc a                                         ; $633E: $3C
    nop                                           ; $633F: $00
    nop                                           ; $6340: $00
    nop                                           ; $6341: $00
    nop                                           ; $6342: $00
    add hl, bc                                    ; $6343: $09
    xor e                                         ; $6344: $AB
    ld h, [hl]                                    ; $6345: $66
    nop                                           ; $6346: $00
    inc a                                         ; $6347: $3C
    nop                                           ; $6348: $00
    nop                                           ; $6349: $00
    nop                                           ; $634A: $00
    nop                                           ; $634B: $00
    add hl, bc                                    ; $634C: $09
    xor e                                         ; $634D: $AB
    ld h, [hl]                                    ; $634E: $66
    nop                                           ; $634F: $00
    inc a                                         ; $6350: $3C
    nop                                           ; $6351: $00
    nop                                           ; $6352: $00
    nop                                           ; $6353: $00
    nop                                           ; $6354: $00
    add hl, bc                                    ; $6355: $09
    rla                                           ; $6356: $17
    ld h, a                                       ; $6357: $67
    nop                                           ; $6358: $00
    inc a                                         ; $6359: $3C
    nop                                           ; $635A: $00
    nop                                           ; $635B: $00
    nop                                           ; $635C: $00
    nop                                           ; $635D: $00
    add hl, bc                                    ; $635E: $09
    rst RST_30                                    ; $635F: $F7
    ld h, [hl]                                    ; $6360: $66
    nop                                           ; $6361: $00
    inc a                                         ; $6362: $3C
    nop                                           ; $6363: $00
    nop                                           ; $6364: $00
    nop                                           ; $6365: $00
    nop                                           ; $6366: $00
    add hl, bc                                    ; $6367: $09
    pop hl                                        ; $6368: $E1
    ld h, [hl]                                    ; $6369: $66
    nop                                           ; $636A: $00
    inc a                                         ; $636B: $3C
    nop                                           ; $636C: $00
    nop                                           ; $636D: $00
    nop                                           ; $636E: $00
    nop                                           ; $636F: $00
    ld a, $00                                     ; $6370: $3E $00
    nop                                           ; $6372: $00
    nop                                           ; $6373: $00
    nop                                           ; $6374: $00
    nop                                           ; $6375: $00
    nop                                           ; $6376: $00
    nop                                           ; $6377: $00
    nop                                           ; $6378: $00
    ld a, [bc]                                    ; $6379: $0A
    ld a, l                                       ; $637A: $7D
    ld e, d                                       ; $637B: $5A
    inc c                                         ; $637C: $0C
    ld b, $00                                     ; $637D: $06 $00
    nop                                           ; $637F: $00
    nop                                           ; $6380: $00
    nop                                           ; $6381: $00
    ld a, [bc]                                    ; $6382: $0A
    adc a                                         ; $6383: $8F
    ld e, d                                       ; $6384: $5A
    ld [$0003], sp                                ; $6385: $08 $03 $00
    nop                                           ; $6388: $00
    nop                                           ; $6389: $00
    nop                                           ; $638A: $00
    ld a, [bc]                                    ; $638B: $0A
    and c                                         ; $638C: $A1
    ld e, d                                       ; $638D: $5A
    ld [$0004], sp                                ; $638E: $08 $04 $00
    nop                                           ; $6391: $00
    nop                                           ; $6392: $00
    nop                                           ; $6393: $00
    ld a, [bc]                                    ; $6394: $0A
    or e                                          ; $6395: $B3
    ld e, d                                       ; $6396: $5A
    nop                                           ; $6397: $00
    nop                                           ; $6398: $00
    nop                                           ; $6399: $00
    nop                                           ; $639A: $00
    nop                                           ; $639B: $00
    nop                                           ; $639C: $00
    ld a, [bc]                                    ; $639D: $0A
    cp c                                          ; $639E: $B9
    ld e, d                                       ; $639F: $5A
    inc e                                         ; $63A0: $1C
    dec b                                         ; $63A1: $05
    nop                                           ; $63A2: $00
    nop                                           ; $63A3: $00
    nop                                           ; $63A4: $00
    nop                                           ; $63A5: $00
    ld a, [bc]                                    ; $63A6: $0A
    cp c                                          ; $63A7: $B9
    ld e, d                                       ; $63A8: $5A
    inc e                                         ; $63A9: $1C
    dec b                                         ; $63AA: $05
    nop                                           ; $63AB: $00
    nop                                           ; $63AC: $00
    nop                                           ; $63AD: $00
    nop                                           ; $63AE: $00
    ld a, [bc]                                    ; $63AF: $0A
    cp c                                          ; $63B0: $B9
    ld e, d                                       ; $63B1: $5A
    inc e                                         ; $63B2: $1C
    dec b                                         ; $63B3: $05
    nop                                           ; $63B4: $00
    nop                                           ; $63B5: $00
    nop                                           ; $63B6: $00
    nop                                           ; $63B7: $00
    ld a, [bc]                                    ; $63B8: $0A
    db $DB                                        ; $63B9: $DB
    ld e, d                                       ; $63BA: $5A
    nop                                           ; $63BB: $00
    nop                                           ; $63BC: $00
    nop                                           ; $63BD: $00
    nop                                           ; $63BE: $00
    nop                                           ; $63BF: $00
    nop                                           ; $63C0: $00
    ld a, [bc]                                    ; $63C1: $0A
    pop hl                                        ; $63C2: $E1
    ld e, d                                       ; $63C3: $5A
    nop                                           ; $63C4: $00
    nop                                           ; $63C5: $00
    nop                                           ; $63C6: $00
    nop                                           ; $63C7: $00
    nop                                           ; $63C8: $00
    nop                                           ; $63C9: $00
    ld a, [bc]                                    ; $63CA: $0A
    rst RST_20                                    ; $63CB: $E7
    ld e, d                                       ; $63CC: $5A
    nop                                           ; $63CD: $00
    rst RST_38                                    ; $63CE: $FF
    nop                                           ; $63CF: $00
    nop                                           ; $63D0: $00
    nop                                           ; $63D1: $00
    nop                                           ; $63D2: $00
    ld a, [bc]                                    ; $63D3: $0A
    xor e                                         ; $63D4: $AB
    ld e, e                                       ; $63D5: $5B
    ld [$0004], sp                                ; $63D6: $08 $04 $00
    nop                                           ; $63D9: $00
    nop                                           ; $63DA: $00
    nop                                           ; $63DB: $00
    ld a, [bc]                                    ; $63DC: $0A
    or l                                          ; $63DD: $B5
    ld e, e                                       ; $63DE: $5B
    ld [$00FF], sp                                ; $63DF: $08 $FF $00
    nop                                           ; $63E2: $00
    nop                                           ; $63E3: $00
    nop                                           ; $63E4: $00
    ld a, [bc]                                    ; $63E5: $0A
    call $145B                                    ; $63E6: $CD $5B $14
    ld [bc], a                                    ; $63E9: $02
    nop                                           ; $63EA: $00
    inc b                                         ; $63EB: $04
    add b                                         ; $63EC: $80
    nop                                           ; $63ED: $00
    ld a, [bc]                                    ; $63EE: $0A
    rst RST_00                                    ; $63EF: $C7
    ld e, h                                       ; $63F0: $5C
    inc b                                         ; $63F1: $04
    ld [bc], a                                    ; $63F2: $02
    nop                                           ; $63F3: $00
    nop                                           ; $63F4: $00
    nop                                           ; $63F5: $00
    nop                                           ; $63F6: $00
    ld a, [bc]                                    ; $63F7: $0A
    ld c, l                                       ; $63F8: $4D
    ld e, h                                       ; $63F9: $5C
    inc b                                         ; $63FA: $04
    ld a, [bc]                                    ; $63FB: $0A
    nop                                           ; $63FC: $00
    nop                                           ; $63FD: $00
    nop                                           ; $63FE: $00
    nop                                           ; $63FF: $00
    ld a, [bc]                                    ; $6400: $0A
    ld de, $145C                                  ; $6401: $11 $5C $14
    ld [$0000], sp                                ; $6404: $08 $00 $00
    nop                                           ; $6407: $00
    nop                                           ; $6408: $00
    ld a, [bc]                                    ; $6409: $0A
    ld b, c                                       ; $640A: $41
    ld e, h                                       ; $640B: $5C
    nop                                           ; $640C: $00
    dec b                                         ; $640D: $05
    nop                                           ; $640E: $00
    nop                                           ; $640F: $00
    nop                                           ; $6410: $00
    nop                                           ; $6411: $00
    ld a, [bc]                                    ; $6412: $0A
    jp Jump_000_305B                              ; $6413: $C3 $5B $30


    nop                                           ; $6416: $00
    nop                                           ; $6417: $00
    nop                                           ; $6418: $00
    nop                                           ; $6419: $00
    nop                                           ; $641A: $00
    ld a, [bc]                                    ; $641B: $0A
    rst RST_20                                    ; $641C: $E7
    ld e, e                                       ; $641D: $5B
    ld [$0001], sp                                ; $641E: $08 $01 $00
    nop                                           ; $6421: $00
    nop                                           ; $6422: $00
    nop                                           ; $6423: $00
    ld a, [bc]                                    ; $6424: $0A
    pop de                                        ; $6425: $D1
    ld e, d                                       ; $6426: $5A
    inc b                                         ; $6427: $04
    rst RST_38                                    ; $6428: $FF
    nop                                           ; $6429: $00
    nop                                           ; $642A: $00
    nop                                           ; $642B: $00
    nop                                           ; $642C: $00
    ld a, [bc]                                    ; $642D: $0A
    inc bc                                        ; $642E: $03
    ld e, h                                       ; $642F: $5C
    ld [$0003], sp                                ; $6430: $08 $03 $00
    nop                                           ; $6433: $00
    nop                                           ; $6434: $00
    nop                                           ; $6435: $00
    ld a, [bc]                                    ; $6436: $0A
    pop af                                        ; $6437: $F1
    ld e, d                                       ; $6438: $5A
    ld [$0200], sp                                ; $6439: $08 $00 $02
    inc bc                                        ; $643C: $03
    nop                                           ; $643D: $00
    nop                                           ; $643E: $00
    ld a, [bc]                                    ; $643F: $0A
    rst RST_38                                    ; $6440: $FF
    ld e, d                                       ; $6441: $5A
    ld [$0200], sp                                ; $6442: $08 $00 $02
    inc b                                         ; $6445: $04
    nop                                           ; $6446: $00
    nop                                           ; $6447: $00
    ld a, [bc]                                    ; $6448: $0A
    dec c                                         ; $6449: $0D
    ld e, e                                       ; $644A: $5B
    jr jr_003_644E                                ; $644B: $18 $01

    inc bc                                        ; $644D: $03

jr_003_644E:
    inc b                                         ; $644E: $04
    ld bc, $0A00                                  ; $644F: $01 $00 $0A
    dec hl                                        ; $6452: $2B
    ld e, e                                       ; $6453: $5B
    ld [$0200], sp                                ; $6454: $08 $00 $02
    inc b                                         ; $6457: $04
    nop                                           ; $6458: $00
    nop                                           ; $6459: $00
    ld a, [bc]                                    ; $645A: $0A
    add hl, sp                                    ; $645B: $39
    ld e, e                                       ; $645C: $5B
    ld [$0200], sp                                ; $645D: $08 $00 $02
    inc b                                         ; $6460: $04
    inc b                                         ; $6461: $04
    nop                                           ; $6462: $00
    ld a, [bc]                                    ; $6463: $0A
    ld b, a                                       ; $6464: $47
    ld e, e                                       ; $6465: $5B
    db $10                                        ; $6466: $10
    ld bc, $0603                                  ; $6467: $01 $03 $06
    dec b                                         ; $646A: $05
    nop                                           ; $646B: $00
    ld a, [bc]                                    ; $646C: $0A
    ld e, l                                       ; $646D: $5D
    ld e, e                                       ; $646E: $5B
    db $10                                        ; $646F: $10
    ld bc, $0302                                  ; $6470: $01 $02 $03
    ld [$0A00], sp                                ; $6473: $08 $00 $0A
    ld [hl], e                                    ; $6476: $73
    ld e, e                                       ; $6477: $5B
    db $10                                        ; $6478: $10
    ld bc, $0302                                  ; $6479: $01 $02 $03
    ld [$0A00], sp                                ; $647C: $08 $00 $0A
    ld a, l                                       ; $647F: $7D
    ld e, d                                       ; $6480: $5A
    db $10                                        ; $6481: $10
    ld bc, $0302                                  ; $6482: $01 $02 $03
    add hl, bc                                    ; $6485: $09
    nop                                           ; $6486: $00
    ld a, [bc]                                    ; $6487: $0A
    pop de                                        ; $6488: $D1
    ld e, h                                       ; $6489: $5C
    ld [$FF00], sp                                ; $648A: $08 $00 $FF
    ld [$000F], sp                                ; $648D: $08 $0F $00
    ld a, [bc]                                    ; $6490: $0A
    push af                                       ; $6491: $F5
    ld e, h                                       ; $6492: $5C
    inc c                                         ; $6493: $0C
    ld bc, $0305                                  ; $6494: $01 $05 $03
    inc hl                                        ; $6497: $23
    nop                                           ; $6498: $00
    ld a, [bc]                                    ; $6499: $0A
    dec bc                                        ; $649A: $0B
    ld e, l                                       ; $649B: $5D
    jr jr_003_649F                                ; $649C: $18 $01

    inc b                                         ; $649E: $04

jr_003_649F:
    ld [$0001], sp                                ; $649F: $08 $01 $00
    ld a, [bc]                                    ; $64A2: $0A
    dec h                                         ; $64A3: $25
    ld e, l                                       ; $64A4: $5D
    db $10                                        ; $64A5: $10
    ld bc, $0802                                  ; $64A6: $01 $02 $08
    ld bc, $0A00                                  ; $64A9: $01 $00 $0A
    scf                                           ; $64AC: $37
    ld e, l                                       ; $64AD: $5D
    db $10                                        ; $64AE: $10
    ld bc, $0802                                  ; $64AF: $01 $02 $08
    ld bc, $0A00                                  ; $64B2: $01 $00 $0A
    rst RST_18                                    ; $64B5: $DF
    ld e, h                                       ; $64B6: $5C
    db $10                                        ; $64B7: $10
    ld bc, $1101                                  ; $64B8: $01 $01 $11
    ld l, l                                       ; $64BB: $6D
    nop                                           ; $64BC: $00
    ld a, [bc]                                    ; $64BD: $0A
    ld e, c                                       ; $64BE: $59
    ld e, l                                       ; $64BF: $5D
    inc c                                         ; $64C0: $0C
    ld bc, $0803                                  ; $64C1: $01 $03 $08
    ld [de], a                                    ; $64C4: $12
    nop                                           ; $64C5: $00
    ld a, [bc]                                    ; $64C6: $0A
    ld a, a                                       ; $64C7: $7F
    ld e, l                                       ; $64C8: $5D
    inc c                                         ; $64C9: $0C
    inc d                                         ; $64CA: $14
    ld bc, $B208                                  ; $64CB: $01 $08 $B2
    nop                                           ; $64CE: $00
    ld a, [bc]                                    ; $64CF: $0A
    adc c                                         ; $64D0: $89
    ld e, e                                       ; $64D1: $5B
    inc c                                         ; $64D2: $0C
    ld a, [bc]                                    ; $64D3: $0A
    nop                                           ; $64D4: $00
    nop                                           ; $64D5: $00
    nop                                           ; $64D6: $00
    nop                                           ; $64D7: $00
    ld a, [bc]                                    ; $64D8: $0A
    ld a, l                                       ; $64D9: $7D
    ld e, d                                       ; $64DA: $5A
    nop                                           ; $64DB: $00
    nop                                           ; $64DC: $00
    nop                                           ; $64DD: $00
    nop                                           ; $64DE: $00
    nop                                           ; $64DF: $00
    nop                                           ; $64E0: $00
    ld a, [bc]                                    ; $64E1: $0A
    db $DB                                        ; $64E2: $DB
    ld e, d                                       ; $64E3: $5A
    nop                                           ; $64E4: $00
    dec b                                         ; $64E5: $05
    nop                                           ; $64E6: $00
    nop                                           ; $64E7: $00
    nop                                           ; $64E8: $00
    nop                                           ; $64E9: $00
    ld a, [bc]                                    ; $64EA: $0A
    ld b, a                                       ; $64EB: $47
    ld e, h                                       ; $64EC: $5C
    nop                                           ; $64ED: $00
    dec b                                         ; $64EE: $05
    nop                                           ; $64EF: $00
    nop                                           ; $64F0: $00
    nop                                           ; $64F1: $00
    nop                                           ; $64F2: $00
    ld a, [bc]                                    ; $64F3: $0A
    ld b, a                                       ; $64F4: $47
    ld e, h                                       ; $64F5: $5C
    inc b                                         ; $64F6: $04
    rst RST_38                                    ; $64F7: $FF
    nop                                           ; $64F8: $00
    nop                                           ; $64F9: $00
    nop                                           ; $64FA: $00
    nop                                           ; $64FB: $00
    ld a, [bc]                                    ; $64FC: $0A
    ld b, a                                       ; $64FD: $47
    ld e, h                                       ; $64FE: $5C
    nop                                           ; $64FF: $00
    dec b                                         ; $6500: $05
    nop                                           ; $6501: $00
    nop                                           ; $6502: $00
    nop                                           ; $6503: $00
    nop                                           ; $6504: $00
    ld a, [bc]                                    ; $6505: $0A
    ld d, l                                       ; $6506: $55
    ld e, h                                       ; $6507: $5C
    nop                                           ; $6508: $00
    dec b                                         ; $6509: $05
    nop                                           ; $650A: $00
    nop                                           ; $650B: $00
    nop                                           ; $650C: $00
    nop                                           ; $650D: $00
    ld a, [bc]                                    ; $650E: $0A
    ld e, e                                       ; $650F: $5B
    ld e, h                                       ; $6510: $5C
    nop                                           ; $6511: $00
    dec b                                         ; $6512: $05
    nop                                           ; $6513: $00
    nop                                           ; $6514: $00
    nop                                           ; $6515: $00
    nop                                           ; $6516: $00
    ld a, [bc]                                    ; $6517: $0A
    ld a, a                                       ; $6518: $7F
    ld e, h                                       ; $6519: $5C
    db $10                                        ; $651A: $10
    dec b                                         ; $651B: $05
    nop                                           ; $651C: $00
    nop                                           ; $651D: $00
    nop                                           ; $651E: $00
    nop                                           ; $651F: $00
    ld a, [bc]                                    ; $6520: $0A
    and c                                         ; $6521: $A1
    ld e, h                                       ; $6522: $5C
    inc c                                         ; $6523: $0C
    rst RST_38                                    ; $6524: $FF
    nop                                           ; $6525: $00
    nop                                           ; $6526: $00
    nop                                           ; $6527: $00
    nop                                           ; $6528: $00
    ld a, [bc]                                    ; $6529: $0A
    or e                                          ; $652A: $B3
    ld e, h                                       ; $652B: $5C
    nop                                           ; $652C: $00
    nop                                           ; $652D: $00
    nop                                           ; $652E: $00
    nop                                           ; $652F: $00
    nop                                           ; $6530: $00
    nop                                           ; $6531: $00
    ld a, [bc]                                    ; $6532: $0A
    sub l                                         ; $6533: $95
    ld e, h                                       ; $6534: $5C
    jr jr_003_6537                                ; $6535: $18 $00

jr_003_6537:
    nop                                           ; $6537: $00
    nop                                           ; $6538: $00
    nop                                           ; $6539: $00
    nop                                           ; $653A: $00
    ld a, [bc]                                    ; $653B: $0A
    or e                                          ; $653C: $B3
    ld e, h                                       ; $653D: $5C
    ld [$0002], sp                                ; $653E: $08 $02 $00
    nop                                           ; $6541: $00
    nop                                           ; $6542: $00
    nop                                           ; $6543: $00
    ld a, [bc]                                    ; $6544: $0A
    ld h, c                                       ; $6545: $61
    ld e, h                                       ; $6546: $5C
    jr jr_003_654B                                ; $6547: $18 $02

    nop                                           ; $6549: $00
    nop                                           ; $654A: $00

jr_003_654B:
    nop                                           ; $654B: $00
    nop                                           ; $654C: $00
    ld a, [bc]                                    ; $654D: $0A
    ld b, a                                       ; $654E: $47
    ld e, h                                       ; $654F: $5C
    nop                                           ; $6550: $00
    inc d                                         ; $6551: $14
    nop                                           ; $6552: $00
    nop                                           ; $6553: $00
    nop                                           ; $6554: $00
    nop                                           ; $6555: $00
    ld a, [bc]                                    ; $6556: $0A
    ld d, l                                       ; $6557: $55
    ld e, h                                       ; $6558: $5C
    nop                                           ; $6559: $00
    inc d                                         ; $655A: $14
    nop                                           ; $655B: $00
    nop                                           ; $655C: $00
    nop                                           ; $655D: $00
    nop                                           ; $655E: $00
    ld a, [bc]                                    ; $655F: $0A
    adc e                                         ; $6560: $8B
    ld e, h                                       ; $6561: $5C
    inc b                                         ; $6562: $04
    nop                                           ; $6563: $00
    nop                                           ; $6564: $00
    nop                                           ; $6565: $00
    nop                                           ; $6566: $00
    nop                                           ; $6567: $00
    ld a, [bc]                                    ; $6568: $0A
    and c                                         ; $6569: $A1
    ld e, h                                       ; $656A: $5C
    inc c                                         ; $656B: $0C
    rst RST_38                                    ; $656C: $FF
    nop                                           ; $656D: $00
    nop                                           ; $656E: $00
    nop                                           ; $656F: $00
    nop                                           ; $6570: $00
    ld a, [bc]                                    ; $6571: $0A
    ld d, l                                       ; $6572: $55
    ld e, h                                       ; $6573: $5C
    nop                                           ; $6574: $00
    inc a                                         ; $6575: $3C
    nop                                           ; $6576: $00
    nop                                           ; $6577: $00
    nop                                           ; $6578: $00
    nop                                           ; $6579: $00
    ld a, [bc]                                    ; $657A: $0A
    ld d, l                                       ; $657B: $55
    ld e, h                                       ; $657C: $5C
    nop                                           ; $657D: $00
    inc a                                         ; $657E: $3C
    nop                                           ; $657F: $00
    nop                                           ; $6580: $00
    nop                                           ; $6581: $00
    nop                                           ; $6582: $00
    ld a, [bc]                                    ; $6583: $0A
    ld d, l                                       ; $6584: $55
    ld e, h                                       ; $6585: $5C
    nop                                           ; $6586: $00
    inc a                                         ; $6587: $3C
    nop                                           ; $6588: $00
    nop                                           ; $6589: $00
    nop                                           ; $658A: $00
    nop                                           ; $658B: $00
    ld a, [bc]                                    ; $658C: $0A
    pop bc                                        ; $658D: $C1
    ld e, h                                       ; $658E: $5C
    nop                                           ; $658F: $00
    inc a                                         ; $6590: $3C
    nop                                           ; $6591: $00
    nop                                           ; $6592: $00
    nop                                           ; $6593: $00
    nop                                           ; $6594: $00
    ld a, [bc]                                    ; $6595: $0A
    and c                                         ; $6596: $A1
    ld e, h                                       ; $6597: $5C
    nop                                           ; $6598: $00
    inc a                                         ; $6599: $3C
    nop                                           ; $659A: $00
    nop                                           ; $659B: $00
    nop                                           ; $659C: $00
    nop                                           ; $659D: $00
    ld a, [bc]                                    ; $659E: $0A
    adc e                                         ; $659F: $8B
    ld e, h                                       ; $65A0: $5C
    nop                                           ; $65A1: $00
    inc a                                         ; $65A2: $3C
    nop                                           ; $65A3: $00
    nop                                           ; $65A4: $00
    nop                                           ; $65A5: $00
    nop                                           ; $65A6: $00
    ld a, $00                                     ; $65A7: $3E $00
    nop                                           ; $65A9: $00
    nop                                           ; $65AA: $00
    nop                                           ; $65AB: $00
    nop                                           ; $65AC: $00
    nop                                           ; $65AD: $00
    nop                                           ; $65AE: $00
    nop                                           ; $65AF: $00
    ld a, [bc]                                    ; $65B0: $0A
    xor a                                         ; $65B1: $AF
    ld l, b                                       ; $65B2: $68
    inc c                                         ; $65B3: $0C
    ld b, $00                                     ; $65B4: $06 $00
    nop                                           ; $65B6: $00
    nop                                           ; $65B7: $00
    nop                                           ; $65B8: $00
    ld a, [bc]                                    ; $65B9: $0A
    pop bc                                        ; $65BA: $C1
    ld l, b                                       ; $65BB: $68
    ld [$0003], sp                                ; $65BC: $08 $03 $00
    nop                                           ; $65BF: $00
    nop                                           ; $65C0: $00
    nop                                           ; $65C1: $00
    ld a, [bc]                                    ; $65C2: $0A
    db $D3                                        ; $65C3: $D3
    ld l, b                                       ; $65C4: $68
    ld [$0004], sp                                ; $65C5: $08 $04 $00
    nop                                           ; $65C8: $00
    nop                                           ; $65C9: $00
    nop                                           ; $65CA: $00
    ld a, [bc]                                    ; $65CB: $0A
    push hl                                       ; $65CC: $E5
    ld l, b                                       ; $65CD: $68
    nop                                           ; $65CE: $00
    nop                                           ; $65CF: $00
    nop                                           ; $65D0: $00
    nop                                           ; $65D1: $00
    nop                                           ; $65D2: $00
    nop                                           ; $65D3: $00
    ld a, [bc]                                    ; $65D4: $0A
    db $EB                                        ; $65D5: $EB
    ld l, b                                       ; $65D6: $68
    inc e                                         ; $65D7: $1C
    nop                                           ; $65D8: $00
    nop                                           ; $65D9: $00
    nop                                           ; $65DA: $00
    nop                                           ; $65DB: $00
    nop                                           ; $65DC: $00
    ld a, [bc]                                    ; $65DD: $0A
    db $EB                                        ; $65DE: $EB
    ld l, b                                       ; $65DF: $68
    inc e                                         ; $65E0: $1C
    nop                                           ; $65E1: $00
    nop                                           ; $65E2: $00
    nop                                           ; $65E3: $00
    nop                                           ; $65E4: $00
    nop                                           ; $65E5: $00
    ld a, [bc]                                    ; $65E6: $0A
    db $EB                                        ; $65E7: $EB
    ld l, b                                       ; $65E8: $68
    inc e                                         ; $65E9: $1C
    nop                                           ; $65EA: $00
    nop                                           ; $65EB: $00
    nop                                           ; $65EC: $00
    nop                                           ; $65ED: $00
    nop                                           ; $65EE: $00
    ld a, [bc]                                    ; $65EF: $0A
    dec c                                         ; $65F0: $0D
    ld l, c                                       ; $65F1: $69
    nop                                           ; $65F2: $00
    nop                                           ; $65F3: $00
    nop                                           ; $65F4: $00
    nop                                           ; $65F5: $00
    nop                                           ; $65F6: $00
    nop                                           ; $65F7: $00
    ld a, [bc]                                    ; $65F8: $0A
    inc de                                        ; $65F9: $13
    ld l, c                                       ; $65FA: $69
    nop                                           ; $65FB: $00
    nop                                           ; $65FC: $00
    nop                                           ; $65FD: $00
    nop                                           ; $65FE: $00
    nop                                           ; $65FF: $00
    nop                                           ; $6600: $00
    ld a, [bc]                                    ; $6601: $0A
    add hl, de                                    ; $6602: $19
    ld l, c                                       ; $6603: $69
    nop                                           ; $6604: $00
    rst RST_38                                    ; $6605: $FF
    nop                                           ; $6606: $00
    nop                                           ; $6607: $00
    nop                                           ; $6608: $00
    nop                                           ; $6609: $00
    ld a, [bc]                                    ; $660A: $0A
    cp l                                          ; $660B: $BD
    ld l, c                                       ; $660C: $69
    ld [$0004], sp                                ; $660D: $08 $04 $00
    nop                                           ; $6610: $00
    nop                                           ; $6611: $00
    nop                                           ; $6612: $00
    ld a, [bc]                                    ; $6613: $0A
    rst RST_00                                    ; $6614: $C7
    ld l, c                                       ; $6615: $69
    ld [$0004], sp                                ; $6616: $08 $04 $00
    nop                                           ; $6619: $00
    nop                                           ; $661A: $00
    nop                                           ; $661B: $00
    ld a, [bc]                                    ; $661C: $0A
    db $ED                                        ; $661D: $ED
    ld l, c                                       ; $661E: $69
    inc c                                         ; $661F: $0C
    ld bc, $0401                                  ; $6620: $01 $01 $04
    add b                                         ; $6623: $80
    nop                                           ; $6624: $00
    ld a, [bc]                                    ; $6625: $0A
    xor a                                         ; $6626: $AF
    ld l, d                                       ; $6627: $6A
    inc b                                         ; $6628: $04
    ld [bc], a                                    ; $6629: $02
    nop                                           ; $662A: $00
    nop                                           ; $662B: $00
    nop                                           ; $662C: $00
    nop                                           ; $662D: $00
    ld a, [bc]                                    ; $662E: $0A
    dec [hl]                                      ; $662F: $35
    ld l, d                                       ; $6630: $6A
    inc b                                         ; $6631: $04
    ld a, [bc]                                    ; $6632: $0A
    nop                                           ; $6633: $00
    nop                                           ; $6634: $00
    nop                                           ; $6635: $00
    nop                                           ; $6636: $00
    ld a, [bc]                                    ; $6637: $0A
    rst RST_38                                    ; $6638: $FF
    ld l, c                                       ; $6639: $69
    inc h                                         ; $663A: $24
    dec b                                         ; $663B: $05
    nop                                           ; $663C: $00
    nop                                           ; $663D: $00
    nop                                           ; $663E: $00
    nop                                           ; $663F: $00
    ld a, [bc]                                    ; $6640: $0A
    add hl, hl                                    ; $6641: $29
    ld l, d                                       ; $6642: $6A
    nop                                           ; $6643: $00
    dec b                                         ; $6644: $05
    nop                                           ; $6645: $00
    nop                                           ; $6646: $00
    nop                                           ; $6647: $00
    nop                                           ; $6648: $00
    ld a, [bc]                                    ; $6649: $0A
    push de                                       ; $664A: $D5
    ld l, c                                       ; $664B: $69
    jr nc, jr_003_664E                            ; $664C: $30 $00

jr_003_664E:
    nop                                           ; $664E: $00
    nop                                           ; $664F: $00
    nop                                           ; $6650: $00
    nop                                           ; $6651: $00
    ld a, [bc]                                    ; $6652: $0A
    push af                                       ; $6653: $F5
    ld e, e                                       ; $6654: $5B
    ld [$0001], sp                                ; $6655: $08 $01 $00
    nop                                           ; $6658: $00
    nop                                           ; $6659: $00
    nop                                           ; $665A: $00
    ld a, [bc]                                    ; $665B: $0A
    inc bc                                        ; $665C: $03
    ld l, c                                       ; $665D: $69
    ld [$00FF], sp                                ; $665E: $08 $FF $00
    nop                                           ; $6661: $00
    nop                                           ; $6662: $00
    nop                                           ; $6663: $00
    ld a, [bc]                                    ; $6664: $0A
    rst RST_18                                    ; $6665: $DF
    ld l, c                                       ; $6666: $69
    ld [$0003], sp                                ; $6667: $08 $03 $00
    nop                                           ; $666A: $00
    nop                                           ; $666B: $00
    nop                                           ; $666C: $00
    ld a, [bc]                                    ; $666D: $0A
    inc hl                                        ; $666E: $23
    ld l, c                                       ; $666F: $69
    ld [$0200], sp                                ; $6670: $08 $00 $02
    inc bc                                        ; $6673: $03
    nop                                           ; $6674: $00
    nop                                           ; $6675: $00
    ld a, [bc]                                    ; $6676: $0A
    ld sp, $0869                                  ; $6677: $31 $69 $08
    nop                                           ; $667A: $00
    ld [bc], a                                    ; $667B: $02
    inc b                                         ; $667C: $04
    nop                                           ; $667D: $00
    nop                                           ; $667E: $00
    ld a, [bc]                                    ; $667F: $0A
    ccf                                           ; $6680: $3F
    ld l, c                                       ; $6681: $69
    ld [$0302], sp                                ; $6682: $08 $02 $03
    inc b                                         ; $6685: $04
    ld bc, $0A00                                  ; $6686: $01 $00 $0A
    ld c, l                                       ; $6689: $4D
    ld l, c                                       ; $668A: $69
    ld [$0200], sp                                ; $668B: $08 $00 $02
    inc b                                         ; $668E: $04
    nop                                           ; $668F: $00
    nop                                           ; $6690: $00
    ld a, [bc]                                    ; $6691: $0A
    ld e, e                                       ; $6692: $5B
    ld l, c                                       ; $6693: $69
    ld [$0200], sp                                ; $6694: $08 $00 $02
    inc b                                         ; $6697: $04
    inc b                                         ; $6698: $04
    nop                                           ; $6699: $00
    ld a, [bc]                                    ; $669A: $0A
    ld l, c                                       ; $669B: $69
    ld l, c                                       ; $669C: $69
    ld [$0302], sp                                ; $669D: $08 $02 $03
    ld b, $05                                     ; $66A0: $06 $05
    nop                                           ; $66A2: $00
    ld a, [bc]                                    ; $66A3: $0A
    ld [hl], a                                    ; $66A4: $77
    ld l, c                                       ; $66A5: $69
    inc c                                         ; $66A6: $0C
    ld bc, $0302                                  ; $66A7: $01 $02 $03
    ld [$0A00], sp                                ; $66AA: $08 $00 $0A
    adc l                                         ; $66AD: $8D
    ld l, c                                       ; $66AE: $69
    inc c                                         ; $66AF: $0C
    ld bc, $0302                                  ; $66B0: $01 $02 $03
    ld [$0A00], sp                                ; $66B3: $08 $00 $0A
    xor a                                         ; $66B6: $AF
    ld l, b                                       ; $66B7: $68
    db $10                                        ; $66B8: $10
    ld bc, $0302                                  ; $66B9: $01 $02 $03
    add hl, bc                                    ; $66BC: $09
    nop                                           ; $66BD: $00
    ld a, [bc]                                    ; $66BE: $0A
    xor a                                         ; $66BF: $AF
    ld l, b                                       ; $66C0: $68
    stop                                          ; $66C1: $10 $00
    rst RST_38                                    ; $66C3: $FF
    ld [$000F], sp                                ; $66C4: $08 $0F $00
    ld a, [bc]                                    ; $66C7: $0A
    cp c                                          ; $66C8: $B9
    ld l, d                                       ; $66C9: $6A
    inc c                                         ; $66CA: $0C
    ld bc, $0305                                  ; $66CB: $01 $05 $03
    inc hl                                        ; $66CE: $23
    nop                                           ; $66CF: $00
    ld a, [bc]                                    ; $66D0: $0A
    bit 5, d                                      ; $66D1: $CB $6A
    jr jr_003_66D6                                ; $66D3: $18 $01

    inc b                                         ; $66D5: $04

jr_003_66D6:
    ld [$0001], sp                                ; $66D6: $08 $01 $00
    ld a, [bc]                                    ; $66D9: $0A
    pop af                                        ; $66DA: $F1
    ld l, d                                       ; $66DB: $6A
    db $10                                        ; $66DC: $10
    dec l                                         ; $66DD: $2D
    ld [bc], a                                    ; $66DE: $02
    inc b                                         ; $66DF: $04
    nop                                           ; $66E0: $00
    nop                                           ; $66E1: $00
    ld a, [bc]                                    ; $66E2: $0A
    rla                                           ; $66E3: $17
    ld l, e                                       ; $66E4: $6B
    inc e                                         ; $66E5: $1C
    ld bc, $0402                                  ; $66E6: $01 $02 $04
    stop                                          ; $66E9: $10 $00
    ld a, [bc]                                    ; $66EB: $0A
    xor a                                         ; $66EC: $AF
    ld l, b                                       ; $66ED: $68
    inc c                                         ; $66EE: $0C
    ld bc, $1101                                  ; $66EF: $01 $01 $11
    ld h, c                                       ; $66F2: $61
    nop                                           ; $66F3: $00
    ld a, [bc]                                    ; $66F4: $0A
    ld d, l                                       ; $66F5: $55
    ld l, e                                       ; $66F6: $6B
    inc c                                         ; $66F7: $0C
    ld bc, $0801                                  ; $66F8: $01 $01 $08
    ld hl, $0A00                                  ; $66FB: $21 $00 $0A
    ld a, l                                       ; $66FE: $7D
    ld e, d                                       ; $66FF: $5A
    inc c                                         ; $6700: $0C
    inc d                                         ; $6701: $14
    ld bc, $B208                                  ; $6702: $01 $08 $B2
    nop                                           ; $6705: $00
    ld a, [bc]                                    ; $6706: $0A
    and e                                         ; $6707: $A3
    ld l, c                                       ; $6708: $69
    inc c                                         ; $6709: $0C
    ld a, [bc]                                    ; $670A: $0A
    nop                                           ; $670B: $00
    nop                                           ; $670C: $00
    nop                                           ; $670D: $00
    nop                                           ; $670E: $00
    ld a, [bc]                                    ; $670F: $0A
    xor a                                         ; $6710: $AF
    ld l, b                                       ; $6711: $68
    nop                                           ; $6712: $00
    nop                                           ; $6713: $00
    nop                                           ; $6714: $00
    nop                                           ; $6715: $00
    nop                                           ; $6716: $00
    nop                                           ; $6717: $00
    ld a, [bc]                                    ; $6718: $0A
    dec c                                         ; $6719: $0D
    ld l, c                                       ; $671A: $69
    nop                                           ; $671B: $00
    dec b                                         ; $671C: $05
    nop                                           ; $671D: $00
    nop                                           ; $671E: $00
    nop                                           ; $671F: $00
    nop                                           ; $6720: $00
    ld a, [bc]                                    ; $6721: $0A
    cpl                                           ; $6722: $2F
    ld l, d                                       ; $6723: $6A
    nop                                           ; $6724: $00
    dec b                                         ; $6725: $05
    nop                                           ; $6726: $00
    nop                                           ; $6727: $00
    nop                                           ; $6728: $00
    nop                                           ; $6729: $00
    ld a, [bc]                                    ; $672A: $0A
    cpl                                           ; $672B: $2F
    ld l, d                                       ; $672C: $6A
    inc b                                         ; $672D: $04
    rst RST_38                                    ; $672E: $FF
    nop                                           ; $672F: $00
    nop                                           ; $6730: $00
    nop                                           ; $6731: $00
    nop                                           ; $6732: $00
    ld a, [bc]                                    ; $6733: $0A
    cpl                                           ; $6734: $2F
    ld l, d                                       ; $6735: $6A
    nop                                           ; $6736: $00
    dec b                                         ; $6737: $05
    nop                                           ; $6738: $00
    nop                                           ; $6739: $00
    nop                                           ; $673A: $00
    nop                                           ; $673B: $00
    ld a, [bc]                                    ; $673C: $0A
    dec a                                         ; $673D: $3D
    ld l, d                                       ; $673E: $6A
    nop                                           ; $673F: $00
    dec b                                         ; $6740: $05
    nop                                           ; $6741: $00
    nop                                           ; $6742: $00
    nop                                           ; $6743: $00
    nop                                           ; $6744: $00
    ld a, [bc]                                    ; $6745: $0A
    ld b, e                                       ; $6746: $43
    ld l, d                                       ; $6747: $6A
    nop                                           ; $6748: $00
    dec b                                         ; $6749: $05
    nop                                           ; $674A: $00
    nop                                           ; $674B: $00
    nop                                           ; $674C: $00
    nop                                           ; $674D: $00
    ld a, [bc]                                    ; $674E: $0A
    ld h, a                                       ; $674F: $67
    ld l, d                                       ; $6750: $6A
    db $10                                        ; $6751: $10
    dec b                                         ; $6752: $05
    nop                                           ; $6753: $00
    nop                                           ; $6754: $00
    nop                                           ; $6755: $00
    nop                                           ; $6756: $00
    ld a, [bc]                                    ; $6757: $0A
    adc c                                         ; $6758: $89
    ld l, d                                       ; $6759: $6A
    inc c                                         ; $675A: $0C
    rst RST_38                                    ; $675B: $FF
    nop                                           ; $675C: $00
    nop                                           ; $675D: $00
    nop                                           ; $675E: $00
    nop                                           ; $675F: $00
    ld a, [bc]                                    ; $6760: $0A
    sbc e                                         ; $6761: $9B
    ld l, d                                       ; $6762: $6A
    nop                                           ; $6763: $00
    nop                                           ; $6764: $00
    nop                                           ; $6765: $00
    nop                                           ; $6766: $00
    nop                                           ; $6767: $00
    nop                                           ; $6768: $00
    ld a, [bc]                                    ; $6769: $0A
    ld a, l                                       ; $676A: $7D
    ld l, d                                       ; $676B: $6A
    jr jr_003_676E                                ; $676C: $18 $00

jr_003_676E:
    nop                                           ; $676E: $00
    nop                                           ; $676F: $00
    nop                                           ; $6770: $00
    nop                                           ; $6771: $00
    ld a, [bc]                                    ; $6772: $0A
    sbc e                                         ; $6773: $9B
    ld l, d                                       ; $6774: $6A
    ld [$0002], sp                                ; $6775: $08 $02 $00
    nop                                           ; $6778: $00
    nop                                           ; $6779: $00
    nop                                           ; $677A: $00
    ld a, [bc]                                    ; $677B: $0A
    ld c, c                                       ; $677C: $49
    ld l, d                                       ; $677D: $6A
    jr jr_003_6782                                ; $677E: $18 $02

    nop                                           ; $6780: $00
    nop                                           ; $6781: $00

jr_003_6782:
    nop                                           ; $6782: $00
    nop                                           ; $6783: $00
    ld a, [bc]                                    ; $6784: $0A
    cpl                                           ; $6785: $2F
    ld l, d                                       ; $6786: $6A
    nop                                           ; $6787: $00
    inc d                                         ; $6788: $14
    nop                                           ; $6789: $00
    nop                                           ; $678A: $00
    nop                                           ; $678B: $00
    nop                                           ; $678C: $00
    ld a, [bc]                                    ; $678D: $0A
    dec a                                         ; $678E: $3D
    ld l, d                                       ; $678F: $6A
    nop                                           ; $6790: $00
    inc d                                         ; $6791: $14
    nop                                           ; $6792: $00
    nop                                           ; $6793: $00
    nop                                           ; $6794: $00
    nop                                           ; $6795: $00
    ld a, [bc]                                    ; $6796: $0A
    ld [hl], e                                    ; $6797: $73
    ld l, d                                       ; $6798: $6A
    inc b                                         ; $6799: $04
    nop                                           ; $679A: $00
    nop                                           ; $679B: $00
    nop                                           ; $679C: $00
    nop                                           ; $679D: $00
    nop                                           ; $679E: $00
    ld a, [bc]                                    ; $679F: $0A
    adc c                                         ; $67A0: $89
    ld l, d                                       ; $67A1: $6A
    inc c                                         ; $67A2: $0C
    rst RST_38                                    ; $67A3: $FF
    nop                                           ; $67A4: $00
    nop                                           ; $67A5: $00
    nop                                           ; $67A6: $00
    nop                                           ; $67A7: $00
    ld a, [bc]                                    ; $67A8: $0A
    dec a                                         ; $67A9: $3D
    ld l, d                                       ; $67AA: $6A
    nop                                           ; $67AB: $00
    inc a                                         ; $67AC: $3C
    nop                                           ; $67AD: $00
    nop                                           ; $67AE: $00
    nop                                           ; $67AF: $00
    nop                                           ; $67B0: $00
    ld a, [bc]                                    ; $67B1: $0A
    dec a                                         ; $67B2: $3D
    ld l, d                                       ; $67B3: $6A
    nop                                           ; $67B4: $00
    inc a                                         ; $67B5: $3C
    nop                                           ; $67B6: $00
    nop                                           ; $67B7: $00
    nop                                           ; $67B8: $00
    nop                                           ; $67B9: $00
    ld a, [bc]                                    ; $67BA: $0A
    dec a                                         ; $67BB: $3D
    ld l, d                                       ; $67BC: $6A
    nop                                           ; $67BD: $00
    inc a                                         ; $67BE: $3C
    nop                                           ; $67BF: $00
    nop                                           ; $67C0: $00
    nop                                           ; $67C1: $00
    nop                                           ; $67C2: $00
    ld a, [bc]                                    ; $67C3: $0A
    xor c                                         ; $67C4: $A9
    ld l, d                                       ; $67C5: $6A
    nop                                           ; $67C6: $00
    inc a                                         ; $67C7: $3C
    nop                                           ; $67C8: $00
    nop                                           ; $67C9: $00
    nop                                           ; $67CA: $00
    nop                                           ; $67CB: $00
    ld a, [bc]                                    ; $67CC: $0A
    adc c                                         ; $67CD: $89
    ld l, d                                       ; $67CE: $6A
    nop                                           ; $67CF: $00
    inc a                                         ; $67D0: $3C
    nop                                           ; $67D1: $00
    nop                                           ; $67D2: $00
    nop                                           ; $67D3: $00
    nop                                           ; $67D4: $00
    ld a, [bc]                                    ; $67D5: $0A
    ld [hl], e                                    ; $67D6: $73
    ld l, d                                       ; $67D7: $6A
    nop                                           ; $67D8: $00
    inc a                                         ; $67D9: $3C
    nop                                           ; $67DA: $00
    nop                                           ; $67DB: $00
    nop                                           ; $67DC: $00
    nop                                           ; $67DD: $00
    ld a, $00                                     ; $67DE: $3E $00
    nop                                           ; $67E0: $00
    nop                                           ; $67E1: $00
    nop                                           ; $67E2: $00
    nop                                           ; $67E3: $00
    nop                                           ; $67E4: $00
    nop                                           ; $67E5: $00
    nop                                           ; $67E6: $00
    dec bc                                        ; $67E7: $0B
    db $E4                                        ; $67E8: $E4
    ld e, e                                       ; $67E9: $5B
    inc c                                         ; $67EA: $0C
    ld b, $00                                     ; $67EB: $06 $00
    nop                                           ; $67ED: $00
    nop                                           ; $67EE: $00
    nop                                           ; $67EF: $00
    dec bc                                        ; $67F0: $0B
    or $5B                                        ; $67F1: $F6 $5B
    ld [$0003], sp                                ; $67F3: $08 $03 $00
    nop                                           ; $67F6: $00
    nop                                           ; $67F7: $00
    nop                                           ; $67F8: $00
    dec bc                                        ; $67F9: $0B
    ld [$085C], sp                                ; $67FA: $08 $5C $08
    inc b                                         ; $67FD: $04
    nop                                           ; $67FE: $00
    nop                                           ; $67FF: $00
    nop                                           ; $6800: $00
    nop                                           ; $6801: $00
    dec bc                                        ; $6802: $0B
    ld a, [de]                                    ; $6803: $1A
    ld e, h                                       ; $6804: $5C
    nop                                           ; $6805: $00
    nop                                           ; $6806: $00
    nop                                           ; $6807: $00
    nop                                           ; $6808: $00
    nop                                           ; $6809: $00
    nop                                           ; $680A: $00
    dec bc                                        ; $680B: $0B
    jr nz, jr_003_686A                            ; $680C: $20 $5C

    inc e                                         ; $680E: $1C
    dec b                                         ; $680F: $05
    nop                                           ; $6810: $00
    nop                                           ; $6811: $00
    nop                                           ; $6812: $00
    nop                                           ; $6813: $00
    dec bc                                        ; $6814: $0B
    ld b, d                                       ; $6815: $42
    ld e, h                                       ; $6816: $5C
    inc e                                         ; $6817: $1C
    dec b                                         ; $6818: $05
    nop                                           ; $6819: $00
    nop                                           ; $681A: $00
    nop                                           ; $681B: $00
    nop                                           ; $681C: $00
    dec bc                                        ; $681D: $0B
    ld h, h                                       ; $681E: $64
    ld e, h                                       ; $681F: $5C
    inc e                                         ; $6820: $1C
    dec b                                         ; $6821: $05
    nop                                           ; $6822: $00
    nop                                           ; $6823: $00
    nop                                           ; $6824: $00
    nop                                           ; $6825: $00
    dec bc                                        ; $6826: $0B
    add [hl]                                      ; $6827: $86
    ld e, h                                       ; $6828: $5C
    nop                                           ; $6829: $00
    nop                                           ; $682A: $00
    nop                                           ; $682B: $00
    nop                                           ; $682C: $00
    nop                                           ; $682D: $00
    nop                                           ; $682E: $00
    dec bc                                        ; $682F: $0B
    adc h                                         ; $6830: $8C
    ld e, h                                       ; $6831: $5C
    nop                                           ; $6832: $00
    nop                                           ; $6833: $00
    nop                                           ; $6834: $00
    nop                                           ; $6835: $00
    nop                                           ; $6836: $00
    nop                                           ; $6837: $00
    dec bc                                        ; $6838: $0B
    sub d                                         ; $6839: $92
    ld e, h                                       ; $683A: $5C
    nop                                           ; $683B: $00
    rst RST_38                                    ; $683C: $FF
    nop                                           ; $683D: $00
    nop                                           ; $683E: $00
    nop                                           ; $683F: $00
    nop                                           ; $6840: $00
    dec bc                                        ; $6841: $0B
    ld b, h                                       ; $6842: $44
    ld e, l                                       ; $6843: $5D
    ld [$0004], sp                                ; $6844: $08 $04 $00
    nop                                           ; $6847: $00
    nop                                           ; $6848: $00
    nop                                           ; $6849: $00
    dec bc                                        ; $684A: $0B
    ld c, [hl]                                    ; $684B: $4E
    ld e, l                                       ; $684C: $5D
    ld [$00FF], sp                                ; $684D: $08 $FF $00
    nop                                           ; $6850: $00
    nop                                           ; $6851: $00
    nop                                           ; $6852: $00
    dec bc                                        ; $6853: $0B
    ld h, [hl]                                    ; $6854: $66
    ld e, l                                       ; $6855: $5D
    db $10                                        ; $6856: $10
    ld b, $00                                     ; $6857: $06 $00
    inc b                                         ; $6859: $04
    add b                                         ; $685A: $80
    nop                                           ; $685B: $00
    dec bc                                        ; $685C: $0B
    sub h                                         ; $685D: $94
    ld e, [hl]                                    ; $685E: $5E
    inc b                                         ; $685F: $04
    ld [bc], a                                    ; $6860: $02
    nop                                           ; $6861: $00
    nop                                           ; $6862: $00
    nop                                           ; $6863: $00
    nop                                           ; $6864: $00
    dec bc                                        ; $6865: $0B
    ld a, [de]                                    ; $6866: $1A
    ld e, [hl]                                    ; $6867: $5E
    inc b                                         ; $6868: $04
    ld a, [bc]                                    ; $6869: $0A

jr_003_686A:
    nop                                           ; $686A: $00
    nop                                           ; $686B: $00
    nop                                           ; $686C: $00
    nop                                           ; $686D: $00
    dec bc                                        ; $686E: $0B
    and [hl]                                      ; $686F: $A6
    ld e, l                                       ; $6870: $5D
    jr nc, jr_003_6876                            ; $6871: $30 $03

    nop                                           ; $6873: $00
    nop                                           ; $6874: $00
    nop                                           ; $6875: $00

jr_003_6876:
    nop                                           ; $6876: $00
    dec bc                                        ; $6877: $0B
    ld c, $5E                                     ; $6878: $0E $5E
    nop                                           ; $687A: $00
    dec b                                         ; $687B: $05
    nop                                           ; $687C: $00
    nop                                           ; $687D: $00
    nop                                           ; $687E: $00
    nop                                           ; $687F: $00
    dec bc                                        ; $6880: $0B
    ld e, h                                       ; $6881: $5C
    ld e, l                                       ; $6882: $5D
    jr nc, jr_003_6885                            ; $6883: $30 $00

jr_003_6885:
    nop                                           ; $6885: $00
    nop                                           ; $6886: $00
    nop                                           ; $6887: $00
    nop                                           ; $6888: $00
    dec bc                                        ; $6889: $0B
    ld a, h                                       ; $688A: $7C
    ld e, l                                       ; $688B: $5D
    ld [$0001], sp                                ; $688C: $08 $01 $00
    nop                                           ; $688F: $00
    nop                                           ; $6890: $00
    nop                                           ; $6891: $00
    dec bc                                        ; $6892: $0B
    jr c, @+$5E                                   ; $6893: $38 $5C

    inc b                                         ; $6895: $04
    rst RST_38                                    ; $6896: $FF
    nop                                           ; $6897: $00
    nop                                           ; $6898: $00
    nop                                           ; $6899: $00
    nop                                           ; $689A: $00
    dec bc                                        ; $689B: $0B
    sbc b                                         ; $689C: $98
    ld e, l                                       ; $689D: $5D
    ld [$0003], sp                                ; $689E: $08 $03 $00
    nop                                           ; $68A1: $00
    nop                                           ; $68A2: $00
    nop                                           ; $68A3: $00
    dec bc                                        ; $68A4: $0B
    sbc h                                         ; $68A5: $9C
    ld e, h                                       ; $68A6: $5C
    ld [$0101], sp                                ; $68A7: $08 $01 $01
    inc bc                                        ; $68AA: $03
    nop                                           ; $68AB: $00
    nop                                           ; $68AC: $00
    dec bc                                        ; $68AD: $0B
    xor d                                         ; $68AE: $AA
    ld e, h                                       ; $68AF: $5C
    ld [$0101], sp                                ; $68B0: $08 $01 $01
    inc b                                         ; $68B3: $04
    nop                                           ; $68B4: $00
    nop                                           ; $68B5: $00
    dec bc                                        ; $68B6: $0B
    cp b                                          ; $68B7: $B8
    ld e, h                                       ; $68B8: $5C
    inc d                                         ; $68B9: $14
    ld [bc], a                                    ; $68BA: $02
    ld [bc], a                                    ; $68BB: $02
    inc b                                         ; $68BC: $04
    ld bc, $0B00                                  ; $68BD: $01 $00 $0B
    jp nc, $085C                                  ; $68C0: $D2 $5C $08

    ld bc, $0401                                  ; $68C3: $01 $01 $04
    nop                                           ; $68C6: $00
    nop                                           ; $68C7: $00
    dec bc                                        ; $68C8: $0B
    ldh [$FF5C], a                                ; $68C9: $E0 $5C
    ld [$0101], sp                                ; $68CB: $08 $01 $01
    inc b                                         ; $68CE: $04
    inc b                                         ; $68CF: $04
    nop                                           ; $68D0: $00
    dec bc                                        ; $68D1: $0B
    xor $5C                                       ; $68D2: $EE $5C
    db $10                                        ; $68D4: $10
    ld [bc], a                                    ; $68D5: $02
    ld [bc], a                                    ; $68D6: $02
    ld b, $05                                     ; $68D7: $06 $05
    nop                                           ; $68D9: $00
    dec bc                                        ; $68DA: $0B
    inc b                                         ; $68DB: $04
    ld e, l                                       ; $68DC: $5D
    db $10                                        ; $68DD: $10
    ld bc, $0302                                  ; $68DE: $01 $02 $03
    ld [$0B00], sp                                ; $68E1: $08 $00 $0B
    ld a, [de]                                    ; $68E4: $1A
    ld e, l                                       ; $68E5: $5D
    db $10                                        ; $68E6: $10
    ld bc, $0302                                  ; $68E7: $01 $02 $03
    ld [$0B00], sp                                ; $68EA: $08 $00 $0B
    sub [hl]                                      ; $68ED: $96
    ld e, a                                       ; $68EE: $5F
    db $10                                        ; $68EF: $10
    ld bc, $0302                                  ; $68F0: $01 $02 $03
    add hl, bc                                    ; $68F3: $09
    nop                                           ; $68F4: $00
    dec bc                                        ; $68F5: $0B
    sbc [hl]                                      ; $68F6: $9E
    ld e, [hl]                                    ; $68F7: $5E
    ld [$FF00], sp                                ; $68F8: $08 $00 $FF
    ld [$000F], sp                                ; $68FB: $08 $0F $00
    dec bc                                        ; $68FE: $0B
    jp nz, $0C5E                                  ; $68FF: $C2 $5E $0C

    ld bc, $0B05                                  ; $6902: $01 $05 $0B
    stop                                          ; $6905: $10 $00
    dec bc                                        ; $6907: $0B
    call c, Call_000_185E                         ; $6908: $DC $5E $18
    ld bc, $0B04                                  ; $690B: $01 $04 $0B
    add b                                         ; $690E: $80
    nop                                           ; $690F: $00
    dec bc                                        ; $6910: $0B
    or $5E                                        ; $6911: $F6 $5E
    db $10                                        ; $6913: $10
    inc b                                         ; $6914: $04
    ld [bc], a                                    ; $6915: $02
    ld [$0001], sp                                ; $6916: $08 $01 $00
    dec bc                                        ; $6919: $0B
    ld [$1C5F], sp                                ; $691A: $08 $5F $1C
    ld bc, $0402                                  ; $691D: $01 $02 $04
    nop                                           ; $6920: $00
    nop                                           ; $6921: $00
    dec bc                                        ; $6922: $0B
    xor h                                         ; $6923: $AC
    ld e, [hl]                                    ; $6924: $5E
    db $10                                        ; $6925: $10
    ld bc, $1101                                  ; $6926: $01 $01 $11
    ld l, l                                       ; $6929: $6D
    nop                                           ; $692A: $00
    dec bc                                        ; $692B: $0B
    ld a, [hl-]                                   ; $692C: $3A
    ld e, a                                       ; $692D: $5F
    inc c                                         ; $692E: $0C
    ld bc, $0801                                  ; $692F: $01 $01 $08
    ld hl, $0B00                                  ; $6932: $21 $00 $0B
    ld l, b                                       ; $6935: $68
    ld e, a                                       ; $6936: $5F
    inc c                                         ; $6937: $0C
    inc d                                         ; $6938: $14
    ld bc, $B208                                  ; $6939: $01 $08 $B2
    nop                                           ; $693C: $00
    dec bc                                        ; $693D: $0B
    jr nc, jr_003_699D                            ; $693E: $30 $5D

    inc c                                         ; $6940: $0C
    ld a, [bc]                                    ; $6941: $0A
    nop                                           ; $6942: $00
    nop                                           ; $6943: $00
    nop                                           ; $6944: $00
    nop                                           ; $6945: $00
    dec bc                                        ; $6946: $0B
    db $E4                                        ; $6947: $E4
    ld e, e                                       ; $6948: $5B
    nop                                           ; $6949: $00
    nop                                           ; $694A: $00
    nop                                           ; $694B: $00
    nop                                           ; $694C: $00
    nop                                           ; $694D: $00
    nop                                           ; $694E: $00
    dec bc                                        ; $694F: $0B
    add [hl]                                      ; $6950: $86
    ld e, h                                       ; $6951: $5C
    nop                                           ; $6952: $00
    dec b                                         ; $6953: $05
    nop                                           ; $6954: $00
    nop                                           ; $6955: $00
    nop                                           ; $6956: $00
    nop                                           ; $6957: $00
    dec bc                                        ; $6958: $0B
    inc d                                         ; $6959: $14
    ld e, [hl]                                    ; $695A: $5E
    nop                                           ; $695B: $00
    dec b                                         ; $695C: $05
    nop                                           ; $695D: $00
    nop                                           ; $695E: $00
    nop                                           ; $695F: $00
    nop                                           ; $6960: $00
    dec bc                                        ; $6961: $0B
    inc d                                         ; $6962: $14
    ld e, [hl]                                    ; $6963: $5E
    inc b                                         ; $6964: $04
    rst RST_38                                    ; $6965: $FF
    nop                                           ; $6966: $00
    nop                                           ; $6967: $00
    nop                                           ; $6968: $00
    nop                                           ; $6969: $00
    dec bc                                        ; $696A: $0B
    inc d                                         ; $696B: $14
    ld e, [hl]                                    ; $696C: $5E
    nop                                           ; $696D: $00
    dec b                                         ; $696E: $05
    nop                                           ; $696F: $00
    nop                                           ; $6970: $00
    nop                                           ; $6971: $00
    nop                                           ; $6972: $00
    dec bc                                        ; $6973: $0B
    ld [hl+], a                                   ; $6974: $22
    ld e, [hl]                                    ; $6975: $5E
    nop                                           ; $6976: $00
    dec b                                         ; $6977: $05
    nop                                           ; $6978: $00
    nop                                           ; $6979: $00
    nop                                           ; $697A: $00
    nop                                           ; $697B: $00
    dec bc                                        ; $697C: $0B
    jr z, jr_003_69DD                             ; $697D: $28 $5E

    nop                                           ; $697F: $00
    dec b                                         ; $6980: $05
    nop                                           ; $6981: $00
    nop                                           ; $6982: $00
    nop                                           ; $6983: $00
    nop                                           ; $6984: $00
    dec bc                                        ; $6985: $0B
    ld c, h                                       ; $6986: $4C
    ld e, [hl]                                    ; $6987: $5E
    db $10                                        ; $6988: $10
    dec b                                         ; $6989: $05
    nop                                           ; $698A: $00
    nop                                           ; $698B: $00
    nop                                           ; $698C: $00
    nop                                           ; $698D: $00
    dec bc                                        ; $698E: $0B
    ld l, [hl]                                    ; $698F: $6E
    ld e, [hl]                                    ; $6990: $5E
    inc c                                         ; $6991: $0C
    rst RST_38                                    ; $6992: $FF
    nop                                           ; $6993: $00
    nop                                           ; $6994: $00
    nop                                           ; $6995: $00
    nop                                           ; $6996: $00
    dec bc                                        ; $6997: $0B
    add b                                         ; $6998: $80
    ld e, [hl]                                    ; $6999: $5E
    nop                                           ; $699A: $00
    nop                                           ; $699B: $00
    nop                                           ; $699C: $00

jr_003_699D:
    nop                                           ; $699D: $00
    nop                                           ; $699E: $00
    nop                                           ; $699F: $00
    dec bc                                        ; $69A0: $0B
    ld h, d                                       ; $69A1: $62
    ld e, [hl]                                    ; $69A2: $5E
    jr jr_003_69A5                                ; $69A3: $18 $00

jr_003_69A5:
    nop                                           ; $69A5: $00
    nop                                           ; $69A6: $00
    nop                                           ; $69A7: $00
    nop                                           ; $69A8: $00
    dec bc                                        ; $69A9: $0B
    add b                                         ; $69AA: $80
    ld e, [hl]                                    ; $69AB: $5E
    ld [$0002], sp                                ; $69AC: $08 $02 $00
    nop                                           ; $69AF: $00
    nop                                           ; $69B0: $00
    nop                                           ; $69B1: $00
    dec bc                                        ; $69B2: $0B
    ld l, $5E                                     ; $69B3: $2E $5E
    jr jr_003_69B9                                ; $69B5: $18 $02

    nop                                           ; $69B7: $00
    nop                                           ; $69B8: $00

jr_003_69B9:
    nop                                           ; $69B9: $00
    nop                                           ; $69BA: $00
    dec bc                                        ; $69BB: $0B
    inc d                                         ; $69BC: $14
    ld e, [hl]                                    ; $69BD: $5E
    nop                                           ; $69BE: $00
    inc d                                         ; $69BF: $14
    nop                                           ; $69C0: $00
    nop                                           ; $69C1: $00
    nop                                           ; $69C2: $00
    nop                                           ; $69C3: $00
    dec bc                                        ; $69C4: $0B
    ld [hl+], a                                   ; $69C5: $22
    ld e, [hl]                                    ; $69C6: $5E
    nop                                           ; $69C7: $00
    inc d                                         ; $69C8: $14
    nop                                           ; $69C9: $00
    nop                                           ; $69CA: $00
    nop                                           ; $69CB: $00
    nop                                           ; $69CC: $00
    dec bc                                        ; $69CD: $0B
    ld e, b                                       ; $69CE: $58
    ld e, [hl]                                    ; $69CF: $5E
    inc b                                         ; $69D0: $04
    nop                                           ; $69D1: $00
    nop                                           ; $69D2: $00
    nop                                           ; $69D3: $00
    nop                                           ; $69D4: $00
    nop                                           ; $69D5: $00
    dec bc                                        ; $69D6: $0B
    ld l, [hl]                                    ; $69D7: $6E
    ld e, [hl]                                    ; $69D8: $5E
    inc c                                         ; $69D9: $0C
    rst RST_38                                    ; $69DA: $FF
    nop                                           ; $69DB: $00
    nop                                           ; $69DC: $00

jr_003_69DD:
    nop                                           ; $69DD: $00
    nop                                           ; $69DE: $00
    dec bc                                        ; $69DF: $0B
    ld [hl+], a                                   ; $69E0: $22
    ld e, [hl]                                    ; $69E1: $5E
    nop                                           ; $69E2: $00
    inc a                                         ; $69E3: $3C
    nop                                           ; $69E4: $00
    nop                                           ; $69E5: $00
    nop                                           ; $69E6: $00
    nop                                           ; $69E7: $00
    dec bc                                        ; $69E8: $0B
    ld [hl+], a                                   ; $69E9: $22
    ld e, [hl]                                    ; $69EA: $5E
    nop                                           ; $69EB: $00
    inc a                                         ; $69EC: $3C
    nop                                           ; $69ED: $00
    nop                                           ; $69EE: $00
    nop                                           ; $69EF: $00
    nop                                           ; $69F0: $00
    dec bc                                        ; $69F1: $0B
    ld [hl+], a                                   ; $69F2: $22
    ld e, [hl]                                    ; $69F3: $5E
    nop                                           ; $69F4: $00
    inc a                                         ; $69F5: $3C
    nop                                           ; $69F6: $00
    nop                                           ; $69F7: $00
    nop                                           ; $69F8: $00
    nop                                           ; $69F9: $00
    dec bc                                        ; $69FA: $0B
    adc [hl]                                      ; $69FB: $8E
    ld e, [hl]                                    ; $69FC: $5E
    nop                                           ; $69FD: $00
    inc a                                         ; $69FE: $3C
    nop                                           ; $69FF: $00
    nop                                           ; $6A00: $00
    nop                                           ; $6A01: $00
    nop                                           ; $6A02: $00
    dec bc                                        ; $6A03: $0B
    ld l, [hl]                                    ; $6A04: $6E
    ld e, [hl]                                    ; $6A05: $5E
    nop                                           ; $6A06: $00
    inc a                                         ; $6A07: $3C
    nop                                           ; $6A08: $00
    nop                                           ; $6A09: $00
    nop                                           ; $6A0A: $00
    nop                                           ; $6A0B: $00
    dec bc                                        ; $6A0C: $0B
    ld e, b                                       ; $6A0D: $58
    ld e, [hl]                                    ; $6A0E: $5E
    nop                                           ; $6A0F: $00
    inc a                                         ; $6A10: $3C
    nop                                           ; $6A11: $00
    nop                                           ; $6A12: $00
    nop                                           ; $6A13: $00
    nop                                           ; $6A14: $00
    ld a, $00                                     ; $6A15: $3E $00
    nop                                           ; $6A17: $00
    nop                                           ; $6A18: $00
    nop                                           ; $6A19: $00
    nop                                           ; $6A1A: $00
    nop                                           ; $6A1B: $00
    nop                                           ; $6A1C: $00
    nop                                           ; $6A1D: $00
    dec bc                                        ; $6A1E: $0B
    ld de, $0C6A                                  ; $6A1F: $11 $6A $0C
    ld b, $00                                     ; $6A22: $06 $00
    nop                                           ; $6A24: $00
    nop                                           ; $6A25: $00
    nop                                           ; $6A26: $00
    dec bc                                        ; $6A27: $0B
    inc hl                                        ; $6A28: $23
    ld l, d                                       ; $6A29: $6A
    ld [$0003], sp                                ; $6A2A: $08 $03 $00
    nop                                           ; $6A2D: $00
    nop                                           ; $6A2E: $00
    nop                                           ; $6A2F: $00
    dec bc                                        ; $6A30: $0B
    ld sp, $086A                                  ; $6A31: $31 $6A $08
    inc b                                         ; $6A34: $04
    nop                                           ; $6A35: $00
    nop                                           ; $6A36: $00
    nop                                           ; $6A37: $00
    nop                                           ; $6A38: $00
    dec bc                                        ; $6A39: $0B
    ccf                                           ; $6A3A: $3F
    ld l, d                                       ; $6A3B: $6A
    nop                                           ; $6A3C: $00
    nop                                           ; $6A3D: $00
    nop                                           ; $6A3E: $00
    nop                                           ; $6A3F: $00
    nop                                           ; $6A40: $00
    nop                                           ; $6A41: $00
    dec bc                                        ; $6A42: $0B
    ld b, l                                       ; $6A43: $45
    ld l, d                                       ; $6A44: $6A
    inc e                                         ; $6A45: $1C
    nop                                           ; $6A46: $00
    nop                                           ; $6A47: $00
    nop                                           ; $6A48: $00
    nop                                           ; $6A49: $00
    nop                                           ; $6A4A: $00
    dec bc                                        ; $6A4B: $0B
    ld b, l                                       ; $6A4C: $45
    ld l, d                                       ; $6A4D: $6A
    inc e                                         ; $6A4E: $1C
    nop                                           ; $6A4F: $00
    nop                                           ; $6A50: $00
    nop                                           ; $6A51: $00
    nop                                           ; $6A52: $00
    nop                                           ; $6A53: $00
    dec bc                                        ; $6A54: $0B
    ld b, l                                       ; $6A55: $45
    ld l, d                                       ; $6A56: $6A
    inc e                                         ; $6A57: $1C
    nop                                           ; $6A58: $00
    nop                                           ; $6A59: $00
    nop                                           ; $6A5A: $00
    nop                                           ; $6A5B: $00
    nop                                           ; $6A5C: $00
    dec bc                                        ; $6A5D: $0B
    ld h, a                                       ; $6A5E: $67
    ld l, d                                       ; $6A5F: $6A
    nop                                           ; $6A60: $00
    nop                                           ; $6A61: $00
    nop                                           ; $6A62: $00
    nop                                           ; $6A63: $00
    nop                                           ; $6A64: $00
    nop                                           ; $6A65: $00
    dec bc                                        ; $6A66: $0B
    ld l, l                                       ; $6A67: $6D
    ld l, d                                       ; $6A68: $6A
    nop                                           ; $6A69: $00
    nop                                           ; $6A6A: $00
    nop                                           ; $6A6B: $00
    nop                                           ; $6A6C: $00
    nop                                           ; $6A6D: $00
    nop                                           ; $6A6E: $00
    dec bc                                        ; $6A6F: $0B
    ld [hl], e                                    ; $6A70: $73
    ld l, d                                       ; $6A71: $6A
    nop                                           ; $6A72: $00
    rst RST_38                                    ; $6A73: $FF
    nop                                           ; $6A74: $00
    nop                                           ; $6A75: $00
    nop                                           ; $6A76: $00
    nop                                           ; $6A77: $00
    dec bc                                        ; $6A78: $0B
    push af                                       ; $6A79: $F5
    ld l, d                                       ; $6A7A: $6A
    ld [$0004], sp                                ; $6A7B: $08 $04 $00
    nop                                           ; $6A7E: $00
    nop                                           ; $6A7F: $00
    nop                                           ; $6A80: $00
    dec bc                                        ; $6A81: $0B
    inc bc                                        ; $6A82: $03
    ld l, e                                       ; $6A83: $6B
    ld [$0004], sp                                ; $6A84: $08 $04 $00
    nop                                           ; $6A87: $00
    nop                                           ; $6A88: $00
    nop                                           ; $6A89: $00
    dec bc                                        ; $6A8A: $0B
    add hl, hl                                    ; $6A8B: $29
    ld l, e                                       ; $6A8C: $6B
    db $10                                        ; $6A8D: $10
    inc bc                                        ; $6A8E: $03
    ld bc, $8004                                  ; $6A8F: $01 $04 $80
    nop                                           ; $6A92: $00
    dec bc                                        ; $6A93: $0B
    ei                                            ; $6A94: $FB
    ld l, e                                       ; $6A95: $6B
    inc b                                         ; $6A96: $04
    ld [bc], a                                    ; $6A97: $02
    nop                                           ; $6A98: $00
    nop                                           ; $6A99: $00
    nop                                           ; $6A9A: $00
    nop                                           ; $6A9B: $00
    dec bc                                        ; $6A9C: $0B
    add c                                         ; $6A9D: $81
    ld l, e                                       ; $6A9E: $6B
    inc b                                         ; $6A9F: $04
    ld a, [bc]                                    ; $6AA0: $0A
    nop                                           ; $6AA1: $00
    nop                                           ; $6AA2: $00
    nop                                           ; $6AA3: $00
    nop                                           ; $6AA4: $00
    dec bc                                        ; $6AA5: $0B
    ccf                                           ; $6AA6: $3F
    ld l, e                                       ; $6AA7: $6B
    jr nc, jr_003_6AAD                            ; $6AA8: $30 $03

    nop                                           ; $6AAA: $00
    nop                                           ; $6AAB: $00
    nop                                           ; $6AAC: $00

jr_003_6AAD:
    nop                                           ; $6AAD: $00
    dec bc                                        ; $6AAE: $0B
    ld [hl], l                                    ; $6AAF: $75
    ld l, e                                       ; $6AB0: $6B
    nop                                           ; $6AB1: $00
    dec b                                         ; $6AB2: $05
    nop                                           ; $6AB3: $00
    nop                                           ; $6AB4: $00
    nop                                           ; $6AB5: $00
    nop                                           ; $6AB6: $00
    dec bc                                        ; $6AB7: $0B
    ld de, $306B                                  ; $6AB8: $11 $6B $30
    nop                                           ; $6ABB: $00
    nop                                           ; $6ABC: $00
    nop                                           ; $6ABD: $00
    nop                                           ; $6ABE: $00
    nop                                           ; $6ABF: $00
    dec bc                                        ; $6AC0: $0B
    adc d                                         ; $6AC1: $8A
    ld e, l                                       ; $6AC2: $5D
    ld [$0001], sp                                ; $6AC3: $08 $01 $00
    nop                                           ; $6AC6: $00
    nop                                           ; $6AC7: $00
    nop                                           ; $6AC8: $00
    dec bc                                        ; $6AC9: $0B
    ld e, l                                       ; $6ACA: $5D
    ld l, d                                       ; $6ACB: $6A
    ld [$00FF], sp                                ; $6ACC: $08 $FF $00
    nop                                           ; $6ACF: $00
    nop                                           ; $6AD0: $00
    nop                                           ; $6AD1: $00
    dec bc                                        ; $6AD2: $0B
    dec de                                        ; $6AD3: $1B
    ld l, e                                       ; $6AD4: $6B
    ld [$0003], sp                                ; $6AD5: $08 $03 $00
    nop                                           ; $6AD8: $00
    nop                                           ; $6AD9: $00
    nop                                           ; $6ADA: $00
    dec bc                                        ; $6ADB: $0B
    ld a, l                                       ; $6ADC: $7D
    ld l, d                                       ; $6ADD: $6A
    ld [$0101], sp                                ; $6ADE: $08 $01 $01
    inc bc                                        ; $6AE1: $03
    nop                                           ; $6AE2: $00
    nop                                           ; $6AE3: $00
    dec bc                                        ; $6AE4: $0B
    adc e                                         ; $6AE5: $8B
    ld l, d                                       ; $6AE6: $6A
    ld [$0101], sp                                ; $6AE7: $08 $01 $01
    inc b                                         ; $6AEA: $04
    nop                                           ; $6AEB: $00
    nop                                           ; $6AEC: $00
    dec bc                                        ; $6AED: $0B
    sbc c                                         ; $6AEE: $99
    ld l, d                                       ; $6AEF: $6A
    inc d                                         ; $6AF0: $14
    ld [bc], a                                    ; $6AF1: $02
    ld [bc], a                                    ; $6AF2: $02
    inc b                                         ; $6AF3: $04
    ld bc, $0B00                                  ; $6AF4: $01 $00 $0B
    ld a, l                                       ; $6AF7: $7D
    ld l, d                                       ; $6AF8: $6A
    ld [$0101], sp                                ; $6AF9: $08 $01 $01
    inc b                                         ; $6AFC: $04
    nop                                           ; $6AFD: $00
    nop                                           ; $6AFE: $00
    dec bc                                        ; $6AFF: $0B
    adc e                                         ; $6B00: $8B
    ld l, d                                       ; $6B01: $6A
    ld [$0101], sp                                ; $6B02: $08 $01 $01
    inc b                                         ; $6B05: $04
    inc b                                         ; $6B06: $04
    nop                                           ; $6B07: $00
    dec bc                                        ; $6B08: $0B
    sbc c                                         ; $6B09: $99
    ld l, d                                       ; $6B0A: $6A
    inc d                                         ; $6B0B: $14
    ld [bc], a                                    ; $6B0C: $02
    ld [bc], a                                    ; $6B0D: $02
    ld b, $05                                     ; $6B0E: $06 $05
    nop                                           ; $6B10: $00
    dec bc                                        ; $6B11: $0B
    or e                                          ; $6B12: $B3
    ld l, d                                       ; $6B13: $6A
    inc c                                         ; $6B14: $0C
    ld bc, $0301                                  ; $6B15: $01 $01 $03
    ld [$0B00], sp                                ; $6B18: $08 $00 $0B
    ret                                           ; $6B1B: $C9


    ld l, d                                       ; $6B1C: $6A
    inc c                                         ; $6B1D: $0C
    ld bc, $0301                                  ; $6B1E: $01 $01 $03
    ld [$0B00], sp                                ; $6B21: $08 $00 $0B
    xor e                                         ; $6B24: $AB
    ld l, h                                       ; $6B25: $6C
    db $10                                        ; $6B26: $10
    ld bc, $0302                                  ; $6B27: $01 $02 $03
    add hl, bc                                    ; $6B2A: $09
    nop                                           ; $6B2B: $00
    dec bc                                        ; $6B2C: $0B
    ld de, $106A                                  ; $6B2D: $11 $6A $10
    nop                                           ; $6B30: $00
    rst RST_38                                    ; $6B31: $FF
    ld [$000F], sp                                ; $6B32: $08 $0F $00
    dec bc                                        ; $6B35: $0B
    dec b                                         ; $6B36: $05
    ld l, h                                       ; $6B37: $6C
    inc c                                         ; $6B38: $0C
    ld bc, $0305                                  ; $6B39: $01 $05 $03
    inc hl                                        ; $6B3C: $23
    nop                                           ; $6B3D: $00
    dec bc                                        ; $6B3E: $0B
    dec de                                        ; $6B3F: $1B
    ld l, h                                       ; $6B40: $6C
    jr jr_003_6B44                                ; $6B41: $18 $01

    inc b                                         ; $6B43: $04

jr_003_6B44:
    ld [$0001], sp                                ; $6B44: $08 $01 $00
    dec bc                                        ; $6B47: $0B
    add hl, sp                                    ; $6B48: $39
    ld l, h                                       ; $6B49: $6C
    db $10                                        ; $6B4A: $10
    ld [bc], a                                    ; $6B4B: $02
    ld [bc], a                                    ; $6B4C: $02
    inc b                                         ; $6B4D: $04
    nop                                           ; $6B4E: $00
    nop                                           ; $6B4F: $00
    dec bc                                        ; $6B50: $0B
    ld h, a                                       ; $6B51: $67
    ld l, h                                       ; $6B52: $6C
    inc e                                         ; $6B53: $1C
    ld bc, $0402                                  ; $6B54: $01 $02 $04
    stop                                          ; $6B57: $10 $00
    dec bc                                        ; $6B59: $0B
    ld de, $0C6A                                  ; $6B5A: $11 $6A $0C
    ld bc, $1101                                  ; $6B5D: $01 $01 $11
    ld h, c                                       ; $6B60: $61
    nop                                           ; $6B61: $00
    dec bc                                        ; $6B62: $0B
    add l                                         ; $6B63: $85
    ld l, h                                       ; $6B64: $6C
    inc c                                         ; $6B65: $0C
    ld bc, $0801                                  ; $6B66: $01 $01 $08
    ld sp, $0B00                                  ; $6B69: $31 $00 $0B
    ld l, b                                       ; $6B6C: $68
    ld e, a                                       ; $6B6D: $5F
    inc c                                         ; $6B6E: $0C
    inc d                                         ; $6B6F: $14
    ld bc, $B208                                  ; $6B70: $01 $08 $B2
    nop                                           ; $6B73: $00
    dec bc                                        ; $6B74: $0B
    rst RST_18                                    ; $6B75: $DF
    ld l, d                                       ; $6B76: $6A
    inc c                                         ; $6B77: $0C
    ld a, [bc]                                    ; $6B78: $0A
    nop                                           ; $6B79: $00
    nop                                           ; $6B7A: $00
    nop                                           ; $6B7B: $00
    nop                                           ; $6B7C: $00
    dec bc                                        ; $6B7D: $0B
    ld de, $006A                                  ; $6B7E: $11 $6A $00
    nop                                           ; $6B81: $00
    nop                                           ; $6B82: $00
    nop                                           ; $6B83: $00
    nop                                           ; $6B84: $00
    nop                                           ; $6B85: $00
    dec bc                                        ; $6B86: $0B
    ld h, a                                       ; $6B87: $67
    ld l, d                                       ; $6B88: $6A
    nop                                           ; $6B89: $00
    dec b                                         ; $6B8A: $05
    nop                                           ; $6B8B: $00
    nop                                           ; $6B8C: $00
    nop                                           ; $6B8D: $00
    nop                                           ; $6B8E: $00
    dec bc                                        ; $6B8F: $0B
    ld a, e                                       ; $6B90: $7B
    ld l, e                                       ; $6B91: $6B
    nop                                           ; $6B92: $00
    dec b                                         ; $6B93: $05
    nop                                           ; $6B94: $00
    nop                                           ; $6B95: $00
    nop                                           ; $6B96: $00
    nop                                           ; $6B97: $00
    dec bc                                        ; $6B98: $0B
    ld a, e                                       ; $6B99: $7B
    ld l, e                                       ; $6B9A: $6B
    inc b                                         ; $6B9B: $04
    rst RST_38                                    ; $6B9C: $FF
    nop                                           ; $6B9D: $00
    nop                                           ; $6B9E: $00
    nop                                           ; $6B9F: $00
    nop                                           ; $6BA0: $00
    dec bc                                        ; $6BA1: $0B
    ld a, e                                       ; $6BA2: $7B
    ld l, e                                       ; $6BA3: $6B
    nop                                           ; $6BA4: $00
    dec b                                         ; $6BA5: $05
    nop                                           ; $6BA6: $00
    nop                                           ; $6BA7: $00
    nop                                           ; $6BA8: $00
    nop                                           ; $6BA9: $00
    dec bc                                        ; $6BAA: $0B
    adc c                                         ; $6BAB: $89
    ld l, e                                       ; $6BAC: $6B
    nop                                           ; $6BAD: $00
    dec b                                         ; $6BAE: $05
    nop                                           ; $6BAF: $00
    nop                                           ; $6BB0: $00
    nop                                           ; $6BB1: $00
    nop                                           ; $6BB2: $00
    dec bc                                        ; $6BB3: $0B
    adc a                                         ; $6BB4: $8F
    ld l, e                                       ; $6BB5: $6B
    nop                                           ; $6BB6: $00
    dec b                                         ; $6BB7: $05
    nop                                           ; $6BB8: $00
    nop                                           ; $6BB9: $00
    nop                                           ; $6BBA: $00
    nop                                           ; $6BBB: $00
    dec bc                                        ; $6BBC: $0B
    or e                                          ; $6BBD: $B3
    ld l, e                                       ; $6BBE: $6B
    db $10                                        ; $6BBF: $10
    dec b                                         ; $6BC0: $05
    nop                                           ; $6BC1: $00
    nop                                           ; $6BC2: $00
    nop                                           ; $6BC3: $00
    nop                                           ; $6BC4: $00
    dec bc                                        ; $6BC5: $0B
    push de                                       ; $6BC6: $D5
    ld l, e                                       ; $6BC7: $6B
    inc c                                         ; $6BC8: $0C
    rst RST_38                                    ; $6BC9: $FF
    nop                                           ; $6BCA: $00
    nop                                           ; $6BCB: $00
    nop                                           ; $6BCC: $00
    nop                                           ; $6BCD: $00
    dec bc                                        ; $6BCE: $0B
    rst RST_20                                    ; $6BCF: $E7
    ld l, e                                       ; $6BD0: $6B
    nop                                           ; $6BD1: $00
    nop                                           ; $6BD2: $00
    nop                                           ; $6BD3: $00
    nop                                           ; $6BD4: $00
    nop                                           ; $6BD5: $00
    nop                                           ; $6BD6: $00
    dec bc                                        ; $6BD7: $0B
    ret                                           ; $6BD8: $C9


    ld l, e                                       ; $6BD9: $6B
    jr jr_003_6BDC                                ; $6BDA: $18 $00

jr_003_6BDC:
    nop                                           ; $6BDC: $00
    nop                                           ; $6BDD: $00
    nop                                           ; $6BDE: $00
    nop                                           ; $6BDF: $00
    dec bc                                        ; $6BE0: $0B
    rst RST_20                                    ; $6BE1: $E7
    ld l, e                                       ; $6BE2: $6B
    ld [$0002], sp                                ; $6BE3: $08 $02 $00
    nop                                           ; $6BE6: $00
    nop                                           ; $6BE7: $00
    nop                                           ; $6BE8: $00
    dec bc                                        ; $6BE9: $0B
    sub l                                         ; $6BEA: $95
    ld l, e                                       ; $6BEB: $6B
    jr jr_003_6BF0                                ; $6BEC: $18 $02

    nop                                           ; $6BEE: $00
    nop                                           ; $6BEF: $00

jr_003_6BF0:
    nop                                           ; $6BF0: $00
    nop                                           ; $6BF1: $00
    dec bc                                        ; $6BF2: $0B
    ld a, e                                       ; $6BF3: $7B
    ld l, e                                       ; $6BF4: $6B
    nop                                           ; $6BF5: $00
    inc d                                         ; $6BF6: $14
    nop                                           ; $6BF7: $00
    nop                                           ; $6BF8: $00
    nop                                           ; $6BF9: $00
    nop                                           ; $6BFA: $00
    dec bc                                        ; $6BFB: $0B
    adc c                                         ; $6BFC: $89
    ld l, e                                       ; $6BFD: $6B
    nop                                           ; $6BFE: $00
    inc d                                         ; $6BFF: $14
    nop                                           ; $6C00: $00
    nop                                           ; $6C01: $00
    nop                                           ; $6C02: $00
    nop                                           ; $6C03: $00
    dec bc                                        ; $6C04: $0B
    cp a                                          ; $6C05: $BF
    ld l, e                                       ; $6C06: $6B
    inc b                                         ; $6C07: $04
    nop                                           ; $6C08: $00
    nop                                           ; $6C09: $00
    nop                                           ; $6C0A: $00
    nop                                           ; $6C0B: $00
    nop                                           ; $6C0C: $00
    dec bc                                        ; $6C0D: $0B
    push de                                       ; $6C0E: $D5
    ld l, e                                       ; $6C0F: $6B
    inc c                                         ; $6C10: $0C
    rst RST_38                                    ; $6C11: $FF
    nop                                           ; $6C12: $00
    nop                                           ; $6C13: $00
    nop                                           ; $6C14: $00
    nop                                           ; $6C15: $00
    dec bc                                        ; $6C16: $0B
    adc c                                         ; $6C17: $89
    ld l, e                                       ; $6C18: $6B
    nop                                           ; $6C19: $00
    inc a                                         ; $6C1A: $3C
    nop                                           ; $6C1B: $00
    nop                                           ; $6C1C: $00
    nop                                           ; $6C1D: $00
    nop                                           ; $6C1E: $00
    dec bc                                        ; $6C1F: $0B
    adc c                                         ; $6C20: $89
    ld l, e                                       ; $6C21: $6B
    nop                                           ; $6C22: $00
    inc a                                         ; $6C23: $3C
    nop                                           ; $6C24: $00
    nop                                           ; $6C25: $00
    nop                                           ; $6C26: $00
    nop                                           ; $6C27: $00
    dec bc                                        ; $6C28: $0B
    adc c                                         ; $6C29: $89
    ld l, e                                       ; $6C2A: $6B
    nop                                           ; $6C2B: $00
    inc a                                         ; $6C2C: $3C
    nop                                           ; $6C2D: $00
    nop                                           ; $6C2E: $00
    nop                                           ; $6C2F: $00
    nop                                           ; $6C30: $00
    dec bc                                        ; $6C31: $0B
    push af                                       ; $6C32: $F5
    ld l, e                                       ; $6C33: $6B
    nop                                           ; $6C34: $00
    inc a                                         ; $6C35: $3C
    nop                                           ; $6C36: $00
    nop                                           ; $6C37: $00
    nop                                           ; $6C38: $00
    nop                                           ; $6C39: $00
    dec bc                                        ; $6C3A: $0B
    push de                                       ; $6C3B: $D5
    ld l, e                                       ; $6C3C: $6B
    nop                                           ; $6C3D: $00
    inc a                                         ; $6C3E: $3C
    nop                                           ; $6C3F: $00
    nop                                           ; $6C40: $00
    nop                                           ; $6C41: $00
    nop                                           ; $6C42: $00
    dec bc                                        ; $6C43: $0B
    cp a                                          ; $6C44: $BF
    ld l, e                                       ; $6C45: $6B
    nop                                           ; $6C46: $00
    inc a                                         ; $6C47: $3C
    nop                                           ; $6C48: $00
    nop                                           ; $6C49: $00
    nop                                           ; $6C4A: $00
    nop                                           ; $6C4B: $00
    nop                                           ; $6C4C: $00
    ld b, b                                       ; $6C4D: $40
    ld [bc], a                                    ; $6C4E: $02
    ld [hl], d                                    ; $6C4F: $72
    ld b, b                                       ; $6C50: $40
    ld [bc], a                                    ; $6C51: $02
    ld a, a                                       ; $6C52: $7F
    ld b, b                                       ; $6C53: $40
    ld [bc], a                                    ; $6C54: $02
    ld a, a                                       ; $6C55: $7F
    ld b, b                                       ; $6C56: $40
    ld [bc], a                                    ; $6C57: $02
    adc b                                         ; $6C58: $88
    ld b, b                                       ; $6C59: $40
    ld [bc], a                                    ; $6C5A: $02
    db $FC                                        ; $6C5B: $FC
    daa                                           ; $6C5C: $27
    ld [bc], a                                    ; $6C5D: $02
    db $FC                                        ; $6C5E: $FC
    daa                                           ; $6C5F: $27
    ld [bc], a                                    ; $6C60: $02
    db $FC                                        ; $6C61: $FC
    daa                                           ; $6C62: $27
    ld [bc], a                                    ; $6C63: $02
    adc b                                         ; $6C64: $88
    ld b, b                                       ; $6C65: $40
    ld [bc], a                                    ; $6C66: $02
    adc b                                         ; $6C67: $88
    ld b, b                                       ; $6C68: $40
    ld [bc], a                                    ; $6C69: $02
    sub [hl]                                      ; $6C6A: $96
    ld b, e                                       ; $6C6B: $43
    ld [bc], a                                    ; $6C6C: $02
    jp nc, Jump_000_0240                          ; $6C6D: $D2 $40 $02

    db $E4                                        ; $6C70: $E4
    ld b, c                                       ; $6C71: $41
    ld [bc], a                                    ; $6C72: $02
    rrca                                          ; $6C73: $0F
    ld b, b                                       ; $6C74: $40
    ld [bc], a                                    ; $6C75: $02
    or [hl]                                       ; $6C76: $B6
    ld b, a                                       ; $6C77: $47
    ld [bc], a                                    ; $6C78: $02
    ld b, e                                       ; $6C79: $43
    ld c, b                                       ; $6C7A: $48
    ld [bc], a                                    ; $6C7B: $02
    dec c                                         ; $6C7C: $0D
    ld c, c                                       ; $6C7D: $49
    ld [bc], a                                    ; $6C7E: $02
    sub c                                         ; $6C7F: $91
    ld c, c                                       ; $6C80: $49
    ld [bc], a                                    ; $6C81: $02
    sub d                                         ; $6C82: $92
    ld b, b                                       ; $6C83: $40
    ld [bc], a                                    ; $6C84: $02
    ld d, h                                       ; $6C85: $54
    ld b, [hl]                                    ; $6C86: $46
    ld [bc], a                                    ; $6C87: $02
    cp d                                          ; $6C88: $BA
    ld b, [hl]                                    ; $6C89: $46
    ld [bc], a                                    ; $6C8A: $02
    add hl, hl                                    ; $6C8B: $29
    ld b, a                                       ; $6C8C: $47
    ld [bc], a                                    ; $6C8D: $02
    nop                                           ; $6C8E: $00
    ld b, b                                       ; $6C8F: $40
    ld [bc], a                                    ; $6C90: $02
    ld [hl], d                                    ; $6C91: $72
    ld b, b                                       ; $6C92: $40
    ld [bc], a                                    ; $6C93: $02
    ld a, a                                       ; $6C94: $7F
    ld b, b                                       ; $6C95: $40
    ld [bc], a                                    ; $6C96: $02
    ld a, a                                       ; $6C97: $7F
    ld b, b                                       ; $6C98: $40
    ld [bc], a                                    ; $6C99: $02
    adc b                                         ; $6C9A: $88
    ld b, b                                       ; $6C9B: $40
    ld [bc], a                                    ; $6C9C: $02
    ld d, c                                       ; $6C9D: $51
    ld b, d                                       ; $6C9E: $42
    ld [bc], a                                    ; $6C9F: $02
    ld d, c                                       ; $6CA0: $51
    ld b, d                                       ; $6CA1: $42
    ld [bc], a                                    ; $6CA2: $02
    ld d, c                                       ; $6CA3: $51
    ld b, d                                       ; $6CA4: $42
    ld [bc], a                                    ; $6CA5: $02
    adc b                                         ; $6CA6: $88
    ld b, b                                       ; $6CA7: $40
    ld [bc], a                                    ; $6CA8: $02
    adc b                                         ; $6CA9: $88
    ld b, b                                       ; $6CAA: $40
    ld [bc], a                                    ; $6CAB: $02
    sub [hl]                                      ; $6CAC: $96
    ld b, e                                       ; $6CAD: $43
    ld [bc], a                                    ; $6CAE: $02
    ld c, [hl]                                    ; $6CAF: $4E
    ld b, c                                       ; $6CB0: $41
    ld [bc], a                                    ; $6CB1: $02
    ld c, [hl]                                    ; $6CB2: $4E
    ld b, c                                       ; $6CB3: $41
    ld [bc], a                                    ; $6CB4: $02
    rrca                                          ; $6CB5: $0F
    ld b, b                                       ; $6CB6: $40
    ld [bc], a                                    ; $6CB7: $02
    or [hl]                                       ; $6CB8: $B6
    ld b, a                                       ; $6CB9: $47
    ld [bc], a                                    ; $6CBA: $02
    ld b, e                                       ; $6CBB: $43
    ld c, b                                       ; $6CBC: $48
    ld [bc], a                                    ; $6CBD: $02
    dec c                                         ; $6CBE: $0D
    ld c, c                                       ; $6CBF: $49
    ld [bc], a                                    ; $6CC0: $02
    sub c                                         ; $6CC1: $91
    ld c, c                                       ; $6CC2: $49
    ld [bc], a                                    ; $6CC3: $02
    sub d                                         ; $6CC4: $92
    ld b, b                                       ; $6CC5: $40
    ld [bc], a                                    ; $6CC6: $02
    ld d, h                                       ; $6CC7: $54
    ld b, [hl]                                    ; $6CC8: $46
    ld [bc], a                                    ; $6CC9: $02
    cp d                                          ; $6CCA: $BA
    ld b, [hl]                                    ; $6CCB: $46
    ld [bc], a                                    ; $6CCC: $02
    add hl, hl                                    ; $6CCD: $29
    ld b, a                                       ; $6CCE: $47
    ld [bc], a                                    ; $6CCF: $02
    add hl, bc                                    ; $6CD0: $09
    ld e, h                                       ; $6CD1: $5C
    ld [bc], a                                    ; $6CD2: $02
    add hl, bc                                    ; $6CD3: $09
    ld e, h                                       ; $6CD4: $5C
    ld [bc], a                                    ; $6CD5: $02
    and l                                         ; $6CD6: $A5
    ld h, b                                       ; $6CD7: $60
    ld [bc], a                                    ; $6CD8: $02
    add hl, bc                                    ; $6CD9: $09
    ld e, h                                       ; $6CDA: $5C
    ld [bc], a                                    ; $6CDB: $02
    add hl, bc                                    ; $6CDC: $09
    ld e, h                                       ; $6CDD: $5C
    ld [bc], a                                    ; $6CDE: $02
    add hl, bc                                    ; $6CDF: $09
    ld e, h                                       ; $6CE0: $5C
    ld [bc], a                                    ; $6CE1: $02
    ld e, a                                       ; $6CE2: $5F
    ld e, h                                       ; $6CE3: $5C
    ld [bc], a                                    ; $6CE4: $02
    adc e                                         ; $6CE5: $8B
    ld e, l                                       ; $6CE6: $5D
    ld [bc], a                                    ; $6CE7: $02
    ld a, [hl-]                                   ; $6CE8: $3A
    ld e, [hl]                                    ; $6CE9: $5E
    ld [bc], a                                    ; $6CEA: $02
    sbc b                                         ; $6CEB: $98
    ld e, [hl]                                    ; $6CEC: $5E
    ld [bc], a                                    ; $6CED: $02
    or e                                          ; $6CEE: $B3
    ld e, a                                       ; $6CEF: $5F
    ld [bc], a                                    ; $6CF0: $02
    ld e, $60                                     ; $6CF1: $1E $60
    ld [bc], a                                    ; $6CF3: $02
    rst RST_18                                    ; $6CF4: $DF
    ld h, b                                       ; $6CF5: $60
    ld [bc], a                                    ; $6CF6: $02
    rst RST_18                                    ; $6CF7: $DF
    ld h, b                                       ; $6CF8: $60
    ld [bc], a                                    ; $6CF9: $02
    ld b, a                                       ; $6CFA: $47
    ld h, c                                       ; $6CFB: $61
    ld [bc], a                                    ; $6CFC: $02
    adc e                                         ; $6CFD: $8B
    ld e, l                                       ; $6CFE: $5D
    ld [bc], a                                    ; $6CFF: $02
    adc d                                         ; $6D00: $8A
    ld h, c                                       ; $6D01: $61
    ld [bc], a                                    ; $6D02: $02
    push hl                                       ; $6D03: $E5
    ld h, c                                       ; $6D04: $61
    ld [bc], a                                    ; $6D05: $02
    ld b, c                                       ; $6D06: $41
    ld h, d                                       ; $6D07: $62
    ld [bc], a                                    ; $6D08: $02
    ld b, c                                       ; $6D09: $41
    ld h, d                                       ; $6D0A: $62
    ld [bc], a                                    ; $6D0B: $02
    ld b, c                                       ; $6D0C: $41
    ld h, d                                       ; $6D0D: $62
    ld [bc], a                                    ; $6D0E: $02
    ld b, c                                       ; $6D0F: $41
    ld h, d                                       ; $6D10: $62
    ld [bc], a                                    ; $6D11: $02
    ld l, $44                                     ; $6D12: $2E $44
    ld [bc], a                                    ; $6D14: $02
    ld l, $44                                     ; $6D15: $2E $44
    ld [bc], a                                    ; $6D17: $02
    dec de                                        ; $6D18: $1B
    ld b, l                                       ; $6D19: $45
    ld [bc], a                                    ; $6D1A: $02
    ld l, $44                                     ; $6D1B: $2E $44
    ld [bc], a                                    ; $6D1D: $02
    ld l, $44                                     ; $6D1E: $2E $44
    ld [bc], a                                    ; $6D20: $02
    dec de                                        ; $6D21: $1B
    ld b, l                                       ; $6D22: $45
    ld [bc], a                                    ; $6D23: $02
    jr z, jr_003_6D69                             ; $6D24: $28 $43

    ld [bc], a                                    ; $6D26: $02
    jr z, jr_003_6D6C                             ; $6D27: $28 $43

    ld [bc], a                                    ; $6D29: $02
    dec de                                        ; $6D2A: $1B
    ld b, l                                       ; $6D2B: $45
    ld [bc], a                                    ; $6D2C: $02
    scf                                           ; $6D2D: $37
    ld b, b                                       ; $6D2E: $40
    ld [bc], a                                    ; $6D2F: $02
    jp hl                                         ; $6D30: $E9


    ld b, b                                       ; $6D31: $40
    inc h                                         ; $6D32: $24
    dec h                                         ; $6D33: $25
    ld b, c                                       ; $6D34: $41
    inc h                                         ; $6D35: $24
    sub [hl]                                      ; $6D36: $96
    ld b, d                                       ; $6D37: $42
    inc h                                         ; $6D38: $24
    ld a, c                                       ; $6D39: $79
    ld b, e                                       ; $6D3A: $43
    inc h                                         ; $6D3B: $24
    or d                                          ; $6D3C: $B2
    ld c, c                                       ; $6D3D: $49
    ld [bc], a                                    ; $6D3E: $02
    call z, Call_000_2444                         ; $6D3F: $CC $44 $24
    ld b, b                                       ; $6D42: $40
    ld b, [hl]                                    ; $6D43: $46
    inc h                                         ; $6D44: $24
    nop                                           ; $6D45: $00
    ld b, b                                       ; $6D46: $40
    ld b, $72                                     ; $6D47: $06 $72
    ld b, b                                       ; $6D49: $40
    ld [bc], a                                    ; $6D4A: $02
    ld l, $44                                     ; $6D4B: $2E $44
    ld [bc], a                                    ; $6D4D: $02
    ld l, $44                                     ; $6D4E: $2E $44
    ld [bc], a                                    ; $6D50: $02
    dec de                                        ; $6D51: $1B
    ld b, l                                       ; $6D52: $45
    ld [bc], a                                    ; $6D53: $02
    ld l, $44                                     ; $6D54: $2E $44
    ld [bc], a                                    ; $6D56: $02
    ld l, $44                                     ; $6D57: $2E $44
    ld [bc], a                                    ; $6D59: $02
    dec de                                        ; $6D5A: $1B
    ld b, l                                       ; $6D5B: $45
    ld [bc], a                                    ; $6D5C: $02
    jr z, jr_003_6DA2                             ; $6D5D: $28 $43

    ld [bc], a                                    ; $6D5F: $02
    jr z, jr_003_6DA5                             ; $6D60: $28 $43

    ld [bc], a                                    ; $6D62: $02
    dec de                                        ; $6D63: $1B
    ld b, l                                       ; $6D64: $45
    ld [bc], a                                    ; $6D65: $02
    scf                                           ; $6D66: $37
    ld b, b                                       ; $6D67: $40
    ld [bc], a                                    ; $6D68: $02

jr_003_6D69:
    add c                                         ; $6D69: $81
    ld c, e                                       ; $6D6A: $4B
    inc h                                         ; $6D6B: $24

jr_003_6D6C:
    sub h                                         ; $6D6C: $94
    ld c, h                                       ; $6D6D: $4C
    inc h                                         ; $6D6E: $24
    call nz, Call_000_244D                        ; $6D6F: $C4 $4D $24
    add sp, $4E                                   ; $6D72: $E8 $4E
    inc h                                         ; $6D74: $24
    add c                                         ; $6D75: $81
    ld c, e                                       ; $6D76: $4B
    inc h                                         ; $6D77: $24
    and h                                         ; $6D78: $A4
    ld c, a                                       ; $6D79: $4F
    inc h                                         ; $6D7A: $24
    add c                                         ; $6D7B: $81
    ld c, e                                       ; $6D7C: $4B
    inc h                                         ; $6D7D: $24
    adc [hl]                                      ; $6D7E: $8E
    ld b, b                                       ; $6D7F: $40
    ld b, $72                                     ; $6D80: $06 $72
    ld b, b                                       ; $6D82: $40
    ld [bc], a                                    ; $6D83: $02
    ld l, $44                                     ; $6D84: $2E $44
    ld [bc], a                                    ; $6D86: $02
    ld l, $44                                     ; $6D87: $2E $44
    ld [bc], a                                    ; $6D89: $02
    dec de                                        ; $6D8A: $1B
    ld b, l                                       ; $6D8B: $45
    ld [bc], a                                    ; $6D8C: $02
    ld l, $44                                     ; $6D8D: $2E $44
    ld [bc], a                                    ; $6D8F: $02
    ld l, $44                                     ; $6D90: $2E $44
    ld [bc], a                                    ; $6D92: $02
    adc l                                         ; $6D93: $8D
    ld [hl], d                                    ; $6D94: $72
    inc bc                                        ; $6D95: $03
    jr z, jr_003_6DDB                             ; $6D96: $28 $43

    ld [bc], a                                    ; $6D98: $02
    jr z, jr_003_6DDE                             ; $6D99: $28 $43

    ld [bc], a                                    ; $6D9B: $02
    dec de                                        ; $6D9C: $1B
    ld b, l                                       ; $6D9D: $45
    ld [bc], a                                    ; $6D9E: $02
    scf                                           ; $6D9F: $37
    ld b, b                                       ; $6DA0: $40
    ld [bc], a                                    ; $6DA1: $02

jr_003_6DA2:
    rst RST_30                                    ; $6DA2: $F7
    ld b, b                                       ; $6DA3: $40
    dec h                                         ; $6DA4: $25

jr_003_6DA5:
    or h                                          ; $6DA5: $B4
    ld b, c                                       ; $6DA6: $41
    dec h                                         ; $6DA7: $25
    ld l, h                                       ; $6DA8: $6C
    ld b, d                                       ; $6DA9: $42
    dec h                                         ; $6DAA: $25
    ld d, e                                       ; $6DAB: $53
    ld b, e                                       ; $6DAC: $43
    dec h                                         ; $6DAD: $25
    or d                                          ; $6DAE: $B2
    ld c, c                                       ; $6DAF: $49
    ld [bc], a                                    ; $6DB0: $02
    sub d                                         ; $6DB1: $92
    ld b, e                                       ; $6DB2: $43
    dec h                                         ; $6DB3: $25
    jr nc, jr_003_6DFC                            ; $6DB4: $30 $46

    dec h                                         ; $6DB6: $25
    ld bc, $0641                                  ; $6DB7: $01 $41 $06
    ld [hl], d                                    ; $6DBA: $72
    ld b, b                                       ; $6DBB: $40
    ld [bc], a                                    ; $6DBC: $02
    ld l, $44                                     ; $6DBD: $2E $44
    ld [bc], a                                    ; $6DBF: $02
    ld l, $44                                     ; $6DC0: $2E $44
    ld [bc], a                                    ; $6DC2: $02
    dec de                                        ; $6DC3: $1B
    ld b, l                                       ; $6DC4: $45
    ld [bc], a                                    ; $6DC5: $02
    ld l, $44                                     ; $6DC6: $2E $44
    ld [bc], a                                    ; $6DC8: $02
    ld l, $44                                     ; $6DC9: $2E $44
    ld [bc], a                                    ; $6DCB: $02
    adc l                                         ; $6DCC: $8D
    ld [hl], d                                    ; $6DCD: $72
    inc bc                                        ; $6DCE: $03
    jr z, jr_003_6E14                             ; $6DCF: $28 $43

    ld [bc], a                                    ; $6DD1: $02
    jr z, @+$45                                   ; $6DD2: $28 $43

    ld [bc], a                                    ; $6DD4: $02
    dec de                                        ; $6DD5: $1B
    ld b, l                                       ; $6DD6: $45
    ld [bc], a                                    ; $6DD7: $02
    scf                                           ; $6DD8: $37
    ld b, b                                       ; $6DD9: $40
    ld [bc], a                                    ; $6DDA: $02

jr_003_6DDB:
    ld e, a                                       ; $6DDB: $5F
    ld c, d                                       ; $6DDC: $4A
    dec h                                         ; $6DDD: $25

jr_003_6DDE:
    or a                                          ; $6DDE: $B7
    ld c, e                                       ; $6DDF: $4B
    dec h                                         ; $6DE0: $25
    inc b                                         ; $6DE1: $04
    ld c, h                                       ; $6DE2: $4C
    dec h                                         ; $6DE3: $25
    inc de                                        ; $6DE4: $13
    ld c, l                                       ; $6DE5: $4D
    dec h                                         ; $6DE6: $25
    ld e, a                                       ; $6DE7: $5F
    ld c, d                                       ; $6DE8: $4A
    dec h                                         ; $6DE9: $25
    ld [hl], h                                    ; $6DEA: $74
    ld c, l                                       ; $6DEB: $4D
    dec h                                         ; $6DEC: $25
    ld e, a                                       ; $6DED: $5F
    ld c, d                                       ; $6DEE: $4A
    dec h                                         ; $6DEF: $25
    adc a                                         ; $6DF0: $8F
    ld b, c                                       ; $6DF1: $41
    ld b, $72                                     ; $6DF2: $06 $72
    ld b, b                                       ; $6DF4: $40
    ld [bc], a                                    ; $6DF5: $02
    ld l, $44                                     ; $6DF6: $2E $44
    ld [bc], a                                    ; $6DF8: $02
    ld l, $44                                     ; $6DF9: $2E $44
    ld [bc], a                                    ; $6DFB: $02

jr_003_6DFC:
    dec de                                        ; $6DFC: $1B
    ld b, l                                       ; $6DFD: $45
    ld [bc], a                                    ; $6DFE: $02
    ld l, $44                                     ; $6DFF: $2E $44
    ld [bc], a                                    ; $6E01: $02
    ld l, $44                                     ; $6E02: $2E $44
    ld [bc], a                                    ; $6E04: $02
    dec de                                        ; $6E05: $1B
    ld b, l                                       ; $6E06: $45
    ld [bc], a                                    ; $6E07: $02
    jr z, jr_003_6E4D                             ; $6E08: $28 $43

    ld [bc], a                                    ; $6E0A: $02
    jr z, @+$45                                   ; $6E0B: $28 $43

    ld [bc], a                                    ; $6E0D: $02
    dec de                                        ; $6E0E: $1B
    ld b, l                                       ; $6E0F: $45
    ld [bc], a                                    ; $6E10: $02
    scf                                           ; $6E11: $37
    ld b, b                                       ; $6E12: $40
    ld [bc], a                                    ; $6E13: $02

jr_003_6E14:
    ld [de], a                                    ; $6E14: $12
    ld b, c                                       ; $6E15: $41
    ld h, $12                                     ; $6E16: $26 $12
    ld b, c                                       ; $6E18: $41
    ld h, $5F                                     ; $6E19: $26 $5F
    ld b, c                                       ; $6E1B: $41
    ld h, $E5                                     ; $6E1C: $26 $E5
    ld b, c                                       ; $6E1E: $41
    ld h, $B2                                     ; $6E1F: $26 $B2
    ld c, c                                       ; $6E21: $49
    ld [bc], a                                    ; $6E22: $02
    db $ED                                        ; $6E23: $ED
    ld b, d                                       ; $6E24: $42
    ld h, $98                                     ; $6E25: $26 $98
    ld b, h                                       ; $6E27: $44
    ld h, $77                                     ; $6E28: $26 $77
    ld b, d                                       ; $6E2A: $42
    ld b, $72                                     ; $6E2B: $06 $72
    ld b, b                                       ; $6E2D: $40
    ld [bc], a                                    ; $6E2E: $02
    ld l, $44                                     ; $6E2F: $2E $44
    ld [bc], a                                    ; $6E31: $02
    ld l, $44                                     ; $6E32: $2E $44
    ld [bc], a                                    ; $6E34: $02
    dec de                                        ; $6E35: $1B
    ld b, l                                       ; $6E36: $45
    ld [bc], a                                    ; $6E37: $02
    ld l, $44                                     ; $6E38: $2E $44
    ld [bc], a                                    ; $6E3A: $02
    ld l, $44                                     ; $6E3B: $2E $44
    ld [bc], a                                    ; $6E3D: $02
    adc l                                         ; $6E3E: $8D
    ld [hl], d                                    ; $6E3F: $72
    inc bc                                        ; $6E40: $03
    jr z, jr_003_6E86                             ; $6E41: $28 $43

    ld [bc], a                                    ; $6E43: $02
    jr z, jr_003_6E89                             ; $6E44: $28 $43

    ld [bc], a                                    ; $6E46: $02
    dec de                                        ; $6E47: $1B
    ld b, l                                       ; $6E48: $45
    ld [bc], a                                    ; $6E49: $02
    scf                                           ; $6E4A: $37
    ld b, b                                       ; $6E4B: $40
    ld [bc], a                                    ; $6E4C: $02

jr_003_6E4D:
    sub $4C                                       ; $6E4D: $D6 $4C
    ld h, $2F                                     ; $6E4F: $26 $2F
    ld c, l                                       ; $6E51: $4D
    ld h, $0B                                     ; $6E52: $26 $0B
    ld c, [hl]                                    ; $6E54: $4E
    ld h, $B4                                     ; $6E55: $26 $B4
    ld c, a                                       ; $6E57: $4F
    ld h, $D6                                     ; $6E58: $26 $D6
    ld c, h                                       ; $6E5A: $4C
    ld h, $DA                                     ; $6E5B: $26 $DA
    ld d, b                                       ; $6E5D: $50
    ld h, $D6                                     ; $6E5E: $26 $D6
    ld c, h                                       ; $6E60: $4C
    ld h, $3C                                     ; $6E61: $26 $3C
    ld b, e                                       ; $6E63: $43
    ld b, $72                                     ; $6E64: $06 $72
    ld b, b                                       ; $6E66: $40
    ld [bc], a                                    ; $6E67: $02
    ld l, $44                                     ; $6E68: $2E $44
    ld [bc], a                                    ; $6E6A: $02
    ld l, $44                                     ; $6E6B: $2E $44
    ld [bc], a                                    ; $6E6D: $02
    dec de                                        ; $6E6E: $1B
    ld b, l                                       ; $6E6F: $45
    ld [bc], a                                    ; $6E70: $02
    ld l, $44                                     ; $6E71: $2E $44
    ld [bc], a                                    ; $6E73: $02
    ld l, $44                                     ; $6E74: $2E $44
    ld [bc], a                                    ; $6E76: $02
    dec de                                        ; $6E77: $1B
    ld b, l                                       ; $6E78: $45
    ld [bc], a                                    ; $6E79: $02
    jr z, jr_003_6EBF                             ; $6E7A: $28 $43

    ld [bc], a                                    ; $6E7C: $02
    jr z, jr_003_6EC2                             ; $6E7D: $28 $43

    ld [bc], a                                    ; $6E7F: $02
    dec de                                        ; $6E80: $1B
    ld b, l                                       ; $6E81: $45
    ld [bc], a                                    ; $6E82: $02
    scf                                           ; $6E83: $37
    ld b, b                                       ; $6E84: $40
    ld [bc], a                                    ; $6E85: $02

jr_003_6E86:
    rst RST_38                                    ; $6E86: $FF
    ld b, b                                       ; $6E87: $40
    daa                                           ; $6E88: $27

jr_003_6E89:
    cpl                                           ; $6E89: $2F
    ld b, d                                       ; $6E8A: $42
    daa                                           ; $6E8B: $27
    ld l, e                                       ; $6E8C: $6B
    ld b, d                                       ; $6E8D: $42
    daa                                           ; $6E8E: $27
    db $E4                                        ; $6E8F: $E4
    ld b, e                                       ; $6E90: $43
    daa                                           ; $6E91: $27
    or d                                          ; $6E92: $B2
    ld c, c                                       ; $6E93: $49
    ld [bc], a                                    ; $6E94: $02
    ld [$2745], sp                                ; $6E95: $08 $45 $27
    jr nc, jr_003_6EE2                            ; $6E98: $30 $48

    daa                                           ; $6E9A: $27
    rst RST_38                                    ; $6E9B: $FF
    ld b, e                                       ; $6E9C: $43
    ld b, $72                                     ; $6E9D: $06 $72
    ld b, b                                       ; $6E9F: $40
    ld [bc], a                                    ; $6EA0: $02
    ld l, $44                                     ; $6EA1: $2E $44
    ld [bc], a                                    ; $6EA3: $02
    ld l, $44                                     ; $6EA4: $2E $44
    ld [bc], a                                    ; $6EA6: $02
    dec de                                        ; $6EA7: $1B
    ld b, l                                       ; $6EA8: $45
    ld [bc], a                                    ; $6EA9: $02
    ld l, $44                                     ; $6EAA: $2E $44
    ld [bc], a                                    ; $6EAC: $02
    ld l, $44                                     ; $6EAD: $2E $44
    ld [bc], a                                    ; $6EAF: $02
    dec de                                        ; $6EB0: $1B
    ld b, l                                       ; $6EB1: $45
    ld [bc], a                                    ; $6EB2: $02
    jr z, jr_003_6EF8                             ; $6EB3: $28 $43

    ld [bc], a                                    ; $6EB5: $02
    jr z, @+$45                                   ; $6EB6: $28 $43

    ld [bc], a                                    ; $6EB8: $02
    dec de                                        ; $6EB9: $1B
    ld b, l                                       ; $6EBA: $45
    ld [bc], a                                    ; $6EBB: $02
    scf                                           ; $6EBC: $37
    ld b, b                                       ; $6EBD: $40

jr_003_6EBE:
    ld [bc], a                                    ; $6EBE: $02

jr_003_6EBF:
    inc hl                                        ; $6EBF: $23
    ld c, e                                       ; $6EC0: $4B
    daa                                           ; $6EC1: $27

jr_003_6EC2:
    ld e, c                                       ; $6EC2: $59
    ld c, h                                       ; $6EC3: $4C
    daa                                           ; $6EC4: $27
    adc e                                         ; $6EC5: $8B
    ld c, l                                       ; $6EC6: $4D
    daa                                           ; $6EC7: $27
    ld l, e                                       ; $6EC8: $6B
    ld c, [hl]                                    ; $6EC9: $4E
    daa                                           ; $6ECA: $27
    inc hl                                        ; $6ECB: $23
    ld c, e                                       ; $6ECC: $4B
    daa                                           ; $6ECD: $27
    ld d, b                                       ; $6ECE: $50
    ld c, a                                       ; $6ECF: $4F
    daa                                           ; $6ED0: $27
    and h                                         ; $6ED1: $A4
    ld d, b                                       ; $6ED2: $50
    daa                                           ; $6ED3: $27
    xor h                                         ; $6ED4: $AC
    ld b, h                                       ; $6ED5: $44
    ld b, $72                                     ; $6ED6: $06 $72

jr_003_6ED8:
    ld b, b                                       ; $6ED8: $40
    ld [bc], a                                    ; $6ED9: $02
    ld l, $44                                     ; $6EDA: $2E $44
    ld [bc], a                                    ; $6EDC: $02
    ld l, $44                                     ; $6EDD: $2E $44
    ld [bc], a                                    ; $6EDF: $02
    dec de                                        ; $6EE0: $1B
    ld b, l                                       ; $6EE1: $45

jr_003_6EE2:
    ld [bc], a                                    ; $6EE2: $02
    ld l, $44                                     ; $6EE3: $2E $44
    ld [bc], a                                    ; $6EE5: $02
    ld l, $44                                     ; $6EE6: $2E $44
    ld [bc], a                                    ; $6EE8: $02
    dec de                                        ; $6EE9: $1B
    ld b, l                                       ; $6EEA: $45
    ld [bc], a                                    ; $6EEB: $02
    jr z, jr_003_6F31                             ; $6EEC: $28 $43

    ld [bc], a                                    ; $6EEE: $02
    jr z, @+$45                                   ; $6EEF: $28 $43

    ld [bc], a                                    ; $6EF1: $02
    dec de                                        ; $6EF2: $1B
    ld b, l                                       ; $6EF3: $45
    ld [bc], a                                    ; $6EF4: $02
    scf                                           ; $6EF5: $37
    ld b, b                                       ; $6EF6: $40
    ld [bc], a                                    ; $6EF7: $02

jr_003_6EF8:
    ld a, [bc]                                    ; $6EF8: $0A
    ld b, c                                       ; $6EF9: $41
    jr z, jr_003_6F42                             ; $6EFA: $28 $46

    ld b, c                                       ; $6EFC: $41
    jr z, jr_003_6EBE                             ; $6EFD: $28 $BF

    ld b, d                                       ; $6EFF: $42
    jr z, @+$3D                                   ; $6F00: $28 $3B

    ld b, e                                       ; $6F02: $43
    jr z, @-$4C                                   ; $6F03: $28 $B2

    ld c, c                                       ; $6F05: $49
    ld [bc], a                                    ; $6F06: $02
    ld l, [hl]                                    ; $6F07: $6E
    ld b, h                                       ; $6F08: $44
    jr z, @+$0E                                   ; $6F09: $28 $0C

    ld b, [hl]                                    ; $6F0B: $46
    jr z, @+$1D                                   ; $6F0C: $28 $1B

    ld b, l                                       ; $6F0E: $45
    ld b, $72                                     ; $6F0F: $06 $72
    ld b, b                                       ; $6F11: $40
    ld [bc], a                                    ; $6F12: $02
    ld l, $44                                     ; $6F13: $2E $44
    ld [bc], a                                    ; $6F15: $02
    ld l, $44                                     ; $6F16: $2E $44
    ld [bc], a                                    ; $6F18: $02

jr_003_6F19:
    dec de                                        ; $6F19: $1B
    ld b, l                                       ; $6F1A: $45
    ld [bc], a                                    ; $6F1B: $02
    ld l, $44                                     ; $6F1C: $2E $44
    ld [bc], a                                    ; $6F1E: $02
    ld l, $44                                     ; $6F1F: $2E $44
    ld [bc], a                                    ; $6F21: $02
    dec de                                        ; $6F22: $1B
    ld b, l                                       ; $6F23: $45
    ld [bc], a                                    ; $6F24: $02
    jr z, jr_003_6F6A                             ; $6F25: $28 $43

    ld [bc], a                                    ; $6F27: $02
    jr z, jr_003_6F6D                             ; $6F28: $28 $43

    ld [bc], a                                    ; $6F2A: $02
    dec de                                        ; $6F2B: $1B
    ld b, l                                       ; $6F2C: $45
    ld [bc], a                                    ; $6F2D: $02
    scf                                           ; $6F2E: $37
    ld b, b                                       ; $6F2F: $40
    ld [bc], a                                    ; $6F30: $02

jr_003_6F31:
    inc b                                         ; $6F31: $04
    ld c, b                                       ; $6F32: $48
    jr z, jr_003_6F6D                             ; $6F33: $28 $38

    ld c, c                                       ; $6F35: $49
    jr z, @+$1A                                   ; $6F36: $28 $18

    ld c, d                                       ; $6F38: $4A
    jr z, jr_003_6ED8                             ; $6F39: $28 $9D

    ld c, e                                       ; $6F3B: $4B
    jr z, jr_003_6F42                             ; $6F3C: $28 $04

    ld c, b                                       ; $6F3E: $48
    jr z, jr_003_6F7F                             ; $6F3F: $28 $3E

    ld c, l                                       ; $6F41: $4D

jr_003_6F42:
    jr z, jr_003_6F48                             ; $6F42: $28 $04

    ld c, b                                       ; $6F44: $48
    jr z, jr_003_6F19                             ; $6F45: $28 $D2

    ld b, l                                       ; $6F47: $45

jr_003_6F48:
    ld b, $72                                     ; $6F48: $06 $72
    ld b, b                                       ; $6F4A: $40
    ld [bc], a                                    ; $6F4B: $02
    ld l, $44                                     ; $6F4C: $2E $44
    ld [bc], a                                    ; $6F4E: $02
    ld l, $44                                     ; $6F4F: $2E $44
    ld [bc], a                                    ; $6F51: $02
    dec de                                        ; $6F52: $1B
    ld b, l                                       ; $6F53: $45
    ld [bc], a                                    ; $6F54: $02
    ld l, $44                                     ; $6F55: $2E $44
    ld [bc], a                                    ; $6F57: $02
    ld l, $44                                     ; $6F58: $2E $44
    ld [bc], a                                    ; $6F5A: $02
    dec de                                        ; $6F5B: $1B
    ld b, l                                       ; $6F5C: $45
    ld [bc], a                                    ; $6F5D: $02
    jr z, jr_003_6FA3                             ; $6F5E: $28 $43

    ld [bc], a                                    ; $6F60: $02
    jr z, jr_003_6FA6                             ; $6F61: $28 $43

    ld [bc], a                                    ; $6F63: $02
    dec de                                        ; $6F64: $1B
    ld b, l                                       ; $6F65: $45
    ld [bc], a                                    ; $6F66: $02
    scf                                           ; $6F67: $37
    ld b, b                                       ; $6F68: $40
    ld [bc], a                                    ; $6F69: $02

jr_003_6F6A:
    sbc c                                         ; $6F6A: $99
    ld d, d                                       ; $6F6B: $52
    inc h                                         ; $6F6C: $24

jr_003_6F6D:
    ld c, c                                       ; $6F6D: $49
    ld d, e                                       ; $6F6E: $53
    inc h                                         ; $6F6F: $24
    ld [hl], h                                    ; $6F70: $74
    ld d, h                                       ; $6F71: $54
    inc h                                         ; $6F72: $24
    xor h                                         ; $6F73: $AC
    ld d, l                                       ; $6F74: $55
    inc h                                         ; $6F75: $24
    or d                                          ; $6F76: $B2
    ld c, c                                       ; $6F77: $49
    ld [bc], a                                    ; $6F78: $02
    ld e, c                                       ; $6F79: $59
    ld d, a                                       ; $6F7A: $57
    inc h                                         ; $6F7B: $24
    rst RST_08                                    ; $6F7C: $CF
    ld e, b                                       ; $6F7D: $58
    inc h                                         ; $6F7E: $24

jr_003_6F7F:
    or h                                          ; $6F7F: $B4
    ld b, [hl]                                    ; $6F80: $46
    ld b, $72                                     ; $6F81: $06 $72
    ld b, b                                       ; $6F83: $40
    ld [bc], a                                    ; $6F84: $02
    dec c                                         ; $6F85: $0D
    ld b, [hl]                                    ; $6F86: $46
    ld [bc], a                                    ; $6F87: $02
    dec c                                         ; $6F88: $0D
    ld b, [hl]                                    ; $6F89: $46
    ld [bc], a                                    ; $6F8A: $02
    dec c                                         ; $6F8B: $0D
    ld b, [hl]                                    ; $6F8C: $46
    ld [bc], a                                    ; $6F8D: $02
    dec c                                         ; $6F8E: $0D
    ld b, [hl]                                    ; $6F8F: $46
    ld [bc], a                                    ; $6F90: $02
    ld a, b                                       ; $6F91: $78
    ld b, l                                       ; $6F92: $45
    ld [bc], a                                    ; $6F93: $02
    dec c                                         ; $6F94: $0D
    ld b, [hl]                                    ; $6F95: $46
    ld [bc], a                                    ; $6F96: $02
    dec de                                        ; $6F97: $1B
    ld b, l                                       ; $6F98: $45
    ld [bc], a                                    ; $6F99: $02
    dec de                                        ; $6F9A: $1B
    ld b, l                                       ; $6F9B: $45
    ld [bc], a                                    ; $6F9C: $02
    dec de                                        ; $6F9D: $1B
    ld b, l                                       ; $6F9E: $45
    ld [bc], a                                    ; $6F9F: $02
    scf                                           ; $6FA0: $37
    ld b, b                                       ; $6FA1: $40
    ld [bc], a                                    ; $6FA2: $02

jr_003_6FA3:
    ld a, [hl]                                    ; $6FA3: $7E
    ld e, l                                       ; $6FA4: $5D
    inc h                                         ; $6FA5: $24

jr_003_6FA6:
    inc sp                                        ; $6FA6: $33
    ld e, [hl]                                    ; $6FA7: $5E
    inc h                                         ; $6FA8: $24
    ret nz                                        ; $6FA9: $C0

    ld e, a                                       ; $6FAA: $5F
    inc h                                         ; $6FAB: $24
    dec a                                         ; $6FAC: $3D
    ld h, b                                       ; $6FAD: $60
    inc h                                         ; $6FAE: $24
    ld a, [hl]                                    ; $6FAF: $7E
    ld e, l                                       ; $6FB0: $5D
    inc h                                         ; $6FB1: $24
    rlca                                          ; $6FB2: $07
    ld h, c                                       ; $6FB3: $61
    inc h                                         ; $6FB4: $24
    ld a, [hl]                                    ; $6FB5: $7E
    ld e, l                                       ; $6FB6: $5D
    inc h                                         ; $6FB7: $24
    or h                                          ; $6FB8: $B4
    ld b, [hl]                                    ; $6FB9: $46
    ld b, $72                                     ; $6FBA: $06 $72
    ld b, b                                       ; $6FBC: $40
    ld [bc], a                                    ; $6FBD: $02
    ld l, $44                                     ; $6FBE: $2E $44
    ld [bc], a                                    ; $6FC0: $02
    ld l, $44                                     ; $6FC1: $2E $44
    ld [bc], a                                    ; $6FC3: $02
    dec de                                        ; $6FC4: $1B
    ld b, l                                       ; $6FC5: $45
    ld [bc], a                                    ; $6FC6: $02
    ld l, $44                                     ; $6FC7: $2E $44
    ld [bc], a                                    ; $6FC9: $02
    ld l, $44                                     ; $6FCA: $2E $44
    ld [bc], a                                    ; $6FCC: $02
    dec de                                        ; $6FCD: $1B
    ld b, l                                       ; $6FCE: $45
    ld [bc], a                                    ; $6FCF: $02
    jr z, jr_003_7015                             ; $6FD0: $28 $43

    ld [bc], a                                    ; $6FD2: $02
    jr z, jr_003_7018                             ; $6FD3: $28 $43

    ld [bc], a                                    ; $6FD5: $02
    dec de                                        ; $6FD6: $1B
    ld b, l                                       ; $6FD7: $45
    ld [bc], a                                    ; $6FD8: $02
    scf                                           ; $6FD9: $37
    ld b, b                                       ; $6FDA: $40
    ld [bc], a                                    ; $6FDB: $02
    ld c, [hl]                                    ; $6FDC: $4E
    ld d, d                                       ; $6FDD: $52
    dec h                                         ; $6FDE: $25
    adc d                                         ; $6FDF: $8A
    ld d, d                                       ; $6FE0: $52
    dec h                                         ; $6FE1: $25
    ld [hl], a                                    ; $6FE2: $77
    ld d, e                                       ; $6FE3: $53
    dec h                                         ; $6FE4: $25
    rst RST_18                                    ; $6FE5: $DF
    ld d, h                                       ; $6FE6: $54
    dec h                                         ; $6FE7: $25
    or d                                          ; $6FE8: $B2
    ld c, c                                       ; $6FE9: $49
    ld [bc], a                                    ; $6FEA: $02
    sbc c                                         ; $6FEB: $99
    ld d, [hl]                                    ; $6FEC: $56
    dec h                                         ; $6FED: $25
    scf                                           ; $6FEE: $37
    ld d, a                                       ; $6FEF: $57
    dec h                                         ; $6FF0: $25
    di                                            ; $6FF1: $F3
    ld b, [hl]                                    ; $6FF2: $46
    ld b, $72                                     ; $6FF3: $06 $72
    ld b, b                                       ; $6FF5: $40
    ld [bc], a                                    ; $6FF6: $02
    ld a, b                                       ; $6FF7: $78
    ld b, l                                       ; $6FF8: $45
    ld [bc], a                                    ; $6FF9: $02
    ld a, b                                       ; $6FFA: $78
    ld b, l                                       ; $6FFB: $45
    ld [bc], a                                    ; $6FFC: $02
    add $45                                       ; $6FFD: $C6 $45
    ld [bc], a                                    ; $6FFF: $02
    dec c                                         ; $7000: $0D
    ld b, [hl]                                    ; $7001: $46
    ld [bc], a                                    ; $7002: $02
    dec c                                         ; $7003: $0D
    ld b, [hl]                                    ; $7004: $46
    ld [bc], a                                    ; $7005: $02
    add $45                                       ; $7006: $C6 $45
    ld [bc], a                                    ; $7008: $02
    dec de                                        ; $7009: $1B
    ld b, l                                       ; $700A: $45
    ld [bc], a                                    ; $700B: $02
    dec de                                        ; $700C: $1B
    ld b, l                                       ; $700D: $45
    ld [bc], a                                    ; $700E: $02
    dec de                                        ; $700F: $1B
    ld b, l                                       ; $7010: $45
    ld [bc], a                                    ; $7011: $02
    scf                                           ; $7012: $37
    ld b, b                                       ; $7013: $40
    ld [bc], a                                    ; $7014: $02

jr_003_7015:
    ld a, d                                       ; $7015: $7A
    ld e, l                                       ; $7016: $5D
    dec h                                         ; $7017: $25

jr_003_7018:
    ld b, h                                       ; $7018: $44
    ld e, [hl]                                    ; $7019: $5E
    dec h                                         ; $701A: $25
    rst RST_10                                    ; $701B: $D7
    ld e, [hl]                                    ; $701C: $5E
    dec h                                         ; $701D: $25
    adc a                                         ; $701E: $8F
    ld e, a                                       ; $701F: $5F
    dec h                                         ; $7020: $25
    ld a, d                                       ; $7021: $7A
    ld e, l                                       ; $7022: $5D
    dec h                                         ; $7023: $25
    xor l                                         ; $7024: $AD
    ld h, c                                       ; $7025: $61
    dec h                                         ; $7026: $25
    ld a, d                                       ; $7027: $7A
    ld e, l                                       ; $7028: $5D
    dec h                                         ; $7029: $25
    di                                            ; $702A: $F3
    ld b, [hl]                                    ; $702B: $46
    ld b, $72                                     ; $702C: $06 $72
    ld b, b                                       ; $702E: $40
    ld [bc], a                                    ; $702F: $02
    ld l, $44                                     ; $7030: $2E $44
    ld [bc], a                                    ; $7032: $02
    ld l, $44                                     ; $7033: $2E $44
    ld [bc], a                                    ; $7035: $02
    dec de                                        ; $7036: $1B
    ld b, l                                       ; $7037: $45
    ld [bc], a                                    ; $7038: $02
    ld l, $44                                     ; $7039: $2E $44
    ld [bc], a                                    ; $703B: $02
    ld l, $44                                     ; $703C: $2E $44
    ld [bc], a                                    ; $703E: $02
    dec de                                        ; $703F: $1B
    ld b, l                                       ; $7040: $45
    ld [bc], a                                    ; $7041: $02
    jr z, jr_003_7087                             ; $7042: $28 $43

    ld [bc], a                                    ; $7044: $02
    jr z, @+$45                                   ; $7045: $28 $43

    ld [bc], a                                    ; $7047: $02
    dec de                                        ; $7048: $1B
    ld b, l                                       ; $7049: $45
    ld [bc], a                                    ; $704A: $02
    scf                                           ; $704B: $37
    ld b, b                                       ; $704C: $40
    ld [bc], a                                    ; $704D: $02
    or l                                          ; $704E: $B5
    ld d, h                                       ; $704F: $54
    ld h, $78                                     ; $7050: $26 $78
    ld d, [hl]                                    ; $7052: $56
    ld h, $1E                                     ; $7053: $26 $1E
    ld e, b                                       ; $7055: $58
    ld h, $DB                                     ; $7056: $26 $DB
    ld e, b                                       ; $7058: $58
    ld h, $B2                                     ; $7059: $26 $B2
    ld c, c                                       ; $705B: $49
    ld [bc], a                                    ; $705C: $02
    ld b, a                                       ; $705D: $47
    ld e, c                                       ; $705E: $59
    ld h, $E3                                     ; $705F: $26 $E3
    ld e, c                                       ; $7061: $59
    ld h, $43                                     ; $7062: $26 $43
    ld b, a                                       ; $7064: $47
    ld b, $72                                     ; $7065: $06 $72
    ld b, b                                       ; $7067: $40
    ld [bc], a                                    ; $7068: $02
    ld l, $44                                     ; $7069: $2E $44
    ld [bc], a                                    ; $706B: $02
    ld l, $44                                     ; $706C: $2E $44
    ld [bc], a                                    ; $706E: $02
    dec de                                        ; $706F: $1B
    ld b, l                                       ; $7070: $45
    ld [bc], a                                    ; $7071: $02
    ld l, $44                                     ; $7072: $2E $44
    ld [bc], a                                    ; $7074: $02
    ld l, $44                                     ; $7075: $2E $44
    ld [bc], a                                    ; $7077: $02
    dec de                                        ; $7078: $1B
    ld b, l                                       ; $7079: $45
    ld [bc], a                                    ; $707A: $02
    jr z, jr_003_70C0                             ; $707B: $28 $43

    ld [bc], a                                    ; $707D: $02
    jr z, jr_003_70C3                             ; $707E: $28 $43

    ld [bc], a                                    ; $7080: $02
    dec de                                        ; $7081: $1B
    ld b, l                                       ; $7082: $45
    ld [bc], a                                    ; $7083: $02
    scf                                           ; $7084: $37
    ld b, b                                       ; $7085: $40
    ld [bc], a                                    ; $7086: $02

jr_003_7087:
    db $ED                                        ; $7087: $ED
    ld e, h                                       ; $7088: $5C
    ld h, $3C                                     ; $7089: $26 $3C
    ld e, l                                       ; $708B: $5D
    ld h, $0F                                     ; $708C: $26 $0F
    ld e, [hl]                                    ; $708E: $5E
    ld h, $1B                                     ; $708F: $26 $1B
    ld h, b                                       ; $7091: $60
    ld h, $ED                                     ; $7092: $26 $ED
    ld e, h                                       ; $7094: $5C
    ld h, $10                                     ; $7095: $26 $10
    ld h, c                                       ; $7097: $61
    ld h, $ED                                     ; $7098: $26 $ED
    ld e, h                                       ; $709A: $5C
    ld h, $10                                     ; $709B: $26 $10
    ld c, b                                       ; $709D: $48
    ld b, $72                                     ; $709E: $06 $72
    ld b, b                                       ; $70A0: $40
    ld [bc], a                                    ; $70A1: $02
    ld l, $44                                     ; $70A2: $2E $44
    ld [bc], a                                    ; $70A4: $02
    ld l, $44                                     ; $70A5: $2E $44
    ld [bc], a                                    ; $70A7: $02
    add [hl]                                      ; $70A8: $86
    ld [hl], c                                    ; $70A9: $71
    inc bc                                        ; $70AA: $03
    ld l, $44                                     ; $70AB: $2E $44
    ld [bc], a                                    ; $70AD: $02
    ld l, $44                                     ; $70AE: $2E $44
    ld [bc], a                                    ; $70B0: $02
    dec de                                        ; $70B1: $1B
    ld b, l                                       ; $70B2: $45
    ld [bc], a                                    ; $70B3: $02
    jr z, jr_003_70F9                             ; $70B4: $28 $43

    ld [bc], a                                    ; $70B6: $02
    jr z, jr_003_70FC                             ; $70B7: $28 $43

    ld [bc], a                                    ; $70B9: $02
    dec de                                        ; $70BA: $1B
    ld b, l                                       ; $70BB: $45
    ld [bc], a                                    ; $70BC: $02
    scf                                           ; $70BD: $37
    ld b, b                                       ; $70BE: $40
    ld [bc], a                                    ; $70BF: $02

jr_003_70C0:
    rst RST_18                                    ; $70C0: $DF
    ld d, c                                       ; $70C1: $51
    daa                                           ; $70C2: $27

jr_003_70C3:
    dec de                                        ; $70C3: $1B
    ld d, d                                       ; $70C4: $52
    daa                                           ; $70C5: $27
    add hl, bc                                    ; $70C6: $09
    ld d, e                                       ; $70C7: $53
    daa                                           ; $70C8: $27
    rst RST_28                                    ; $70C9: $EF
    ld d, e                                       ; $70CA: $53
    daa                                           ; $70CB: $27
    or d                                          ; $70CC: $B2
    ld c, c                                       ; $70CD: $49
    ld [bc], a                                    ; $70CE: $02
    ld c, c                                       ; $70CF: $49
    ld d, l                                       ; $70D0: $55
    daa                                           ; $70D1: $27
    ld d, b                                       ; $70D2: $50
    ld d, [hl]                                    ; $70D3: $56
    daa                                           ; $70D4: $27
    call c, Call_000_0648                         ; $70D5: $DC $48 $06
    ld [hl], d                                    ; $70D8: $72

jr_003_70D9:
    ld b, b                                       ; $70D9: $40
    ld [bc], a                                    ; $70DA: $02
    ld l, $44                                     ; $70DB: $2E $44
    ld [bc], a                                    ; $70DD: $02
    ld l, $44                                     ; $70DE: $2E $44
    ld [bc], a                                    ; $70E0: $02
    dec de                                        ; $70E1: $1B
    ld b, l                                       ; $70E2: $45
    ld [bc], a                                    ; $70E3: $02
    ld l, $44                                     ; $70E4: $2E $44
    ld [bc], a                                    ; $70E6: $02
    ld l, $44                                     ; $70E7: $2E $44
    ld [bc], a                                    ; $70E9: $02
    dec de                                        ; $70EA: $1B
    ld b, l                                       ; $70EB: $45
    ld [bc], a                                    ; $70EC: $02
    jr z, jr_003_7132                             ; $70ED: $28 $43

    ld [bc], a                                    ; $70EF: $02
    jr z, @+$45                                   ; $70F0: $28 $43

    ld [bc], a                                    ; $70F2: $02
    dec de                                        ; $70F3: $1B
    ld b, l                                       ; $70F4: $45
    ld [bc], a                                    ; $70F5: $02
    scf                                           ; $70F6: $37
    ld b, b                                       ; $70F7: $40
    ld [bc], a                                    ; $70F8: $02

jr_003_70F9:
    ld b, c                                       ; $70F9: $41
    ld e, d                                       ; $70FA: $5A
    daa                                           ; $70FB: $27

jr_003_70FC:
    adc [hl]                                      ; $70FC: $8E
    ld e, d                                       ; $70FD: $5A
    daa                                           ; $70FE: $27
    xor c                                         ; $70FF: $A9
    ld e, e                                       ; $7100: $5B
    daa                                           ; $7101: $27
    db $10                                        ; $7102: $10
    ld e, l                                       ; $7103: $5D
    daa                                           ; $7104: $27
    ld b, c                                       ; $7105: $41
    ld e, d                                       ; $7106: $5A
    daa                                           ; $7107: $27
    inc c                                         ; $7108: $0C
    ld e, a                                       ; $7109: $5F
    daa                                           ; $710A: $27
    ld b, c                                       ; $710B: $41
    ld e, d                                       ; $710C: $5A
    daa                                           ; $710D: $27
    sub c                                         ; $710E: $91
    ld c, c                                       ; $710F: $49
    ld b, $72                                     ; $7110: $06 $72
    ld b, b                                       ; $7112: $40
    ld [bc], a                                    ; $7113: $02
    ld l, $44                                     ; $7114: $2E $44
    ld [bc], a                                    ; $7116: $02
    ld l, $44                                     ; $7117: $2E $44
    ld [bc], a                                    ; $7119: $02
    dec de                                        ; $711A: $1B
    ld b, l                                       ; $711B: $45
    ld [bc], a                                    ; $711C: $02
    ld l, $44                                     ; $711D: $2E $44
    ld [bc], a                                    ; $711F: $02
    ld l, $44                                     ; $7120: $2E $44
    ld [bc], a                                    ; $7122: $02
    dec de                                        ; $7123: $1B
    ld b, l                                       ; $7124: $45
    ld [bc], a                                    ; $7125: $02
    jr z, jr_003_716B                             ; $7126: $28 $43

    ld [bc], a                                    ; $7128: $02
    jr z, @+$45                                   ; $7129: $28 $43

jr_003_712B:
    ld [bc], a                                    ; $712B: $02
    dec de                                        ; $712C: $1B
    ld b, l                                       ; $712D: $45
    ld [bc], a                                    ; $712E: $02
    scf                                           ; $712F: $37
    ld b, b                                       ; $7130: $40
    ld [bc], a                                    ; $7131: $02

jr_003_7132:
    add a                                         ; $7132: $87
    ld c, a                                       ; $7133: $4F
    jr z, jr_003_71B3                             ; $7134: $28 $7D

    ld d, b                                       ; $7136: $50
    jr z, jr_003_7175                             ; $7137: $28 $3C

    ld d, d                                       ; $7139: $52
    jr z, jr_003_70D9                             ; $713A: $28 $9D

    ld d, d                                       ; $713C: $52
    jr z, @-$4C                                   ; $713D: $28 $B2

    ld c, c                                       ; $713F: $49
    ld [bc], a                                    ; $7140: $02
    ld b, e                                       ; $7141: $43
    ld d, h                                       ; $7142: $54
    jr z, @+$4D                                   ; $7143: $28 $4B

    ld d, l                                       ; $7145: $55
    jr z, @+$4E                                   ; $7146: $28 $4C

    ld c, d                                       ; $7148: $4A
    ld b, $72                                     ; $7149: $06 $72
    ld b, b                                       ; $714B: $40
    ld [bc], a                                    ; $714C: $02
    ld l, $44                                     ; $714D: $2E $44
    ld [bc], a                                    ; $714F: $02
    ld l, $44                                     ; $7150: $2E $44
    ld [bc], a                                    ; $7152: $02
    dec de                                        ; $7153: $1B
    ld b, l                                       ; $7154: $45
    ld [bc], a                                    ; $7155: $02
    ld l, $44                                     ; $7156: $2E $44
    ld [bc], a                                    ; $7158: $02
    ld l, $44                                     ; $7159: $2E $44

jr_003_715B:
    ld [bc], a                                    ; $715B: $02
    dec de                                        ; $715C: $1B
    ld b, l                                       ; $715D: $45
    ld [bc], a                                    ; $715E: $02
    jr z, jr_003_71A4                             ; $715F: $28 $43

    ld [bc], a                                    ; $7161: $02
    jr z, @+$45                                   ; $7162: $28 $43

    ld [bc], a                                    ; $7164: $02
    dec de                                        ; $7165: $1B
    ld b, l                                       ; $7166: $45
    ld [bc], a                                    ; $7167: $02
    scf                                           ; $7168: $37
    ld b, b                                       ; $7169: $40
    ld [bc], a                                    ; $716A: $02

jr_003_716B:
    dec bc                                        ; $716B: $0B
    ld e, d                                       ; $716C: $5A
    jr z, @-$1C                                   ; $716D: $28 $E2

    ld e, d                                       ; $716F: $5A
    jr z, jr_003_715B                             ; $7170: $28 $E9

    ld e, e                                       ; $7172: $5B
    jr z, jr_003_7184                             ; $7173: $28 $0F

jr_003_7175:
    ld e, l                                       ; $7175: $5D
    jr z, @+$0D                                   ; $7176: $28 $0B

    ld e, d                                       ; $7178: $5A
    jr z, jr_003_715B                             ; $7179: $28 $E0

    ld e, l                                       ; $717B: $5D
    jr z, jr_003_7189                             ; $717C: $28 $0B

    ld e, d                                       ; $717E: $5A
    jr z, jr_003_712B                             ; $717F: $28 $AA

    ld c, d                                       ; $7181: $4A
    ld b, $72                                     ; $7182: $06 $72

jr_003_7184:
    ld b, b                                       ; $7184: $40
    ld [bc], a                                    ; $7185: $02
    ld hl, $0040                                  ; $7186: $21 $40 $00

jr_003_7189:
    call Call_000_30B0                            ; $7189: $CD $B0 $30
    call Call_000_2EE0                            ; $718C: $CD $E0 $2E
    call Call_000_3517                            ; $718F: $CD $17 $35
    jp c, Jump_003_728C                           ; $7192: $DA $8C $72

    ld hl, $0018                                  ; $7195: $21 $18 $00
    add hl, de                                    ; $7198: $19
    ld a, [hl]                                    ; $7199: $7E
    cp $00                                        ; $719A: $FE $00
    jp z, Jump_003_71BB                           ; $719C: $CA $BB $71

    cp $04                                        ; $719F: $FE $04
    jp z, Jump_003_71CC                           ; $71A1: $CA $CC $71

jr_003_71A4:
    cp $08                                        ; $71A4: $FE $08
    jp z, Jump_003_71F2                           ; $71A6: $CA $F2 $71

    cp $0C                                        ; $71A9: $FE $0C
    jp z, Jump_003_7203                           ; $71AB: $CA $03 $72

    cp $10                                        ; $71AE: $FE $10
    jp z, Jump_003_7206                           ; $71B0: $CA $06 $72

jr_003_71B3:
    ld hl, $0045                                  ; $71B3: $21 $45 $00
    add hl, bc                                    ; $71B6: $09
    cp [hl]                                       ; $71B7: $BE
    jp z, Jump_003_7278                           ; $71B8: $CA $78 $72

Jump_003_71BB:
    call Call_000_2CA9                            ; $71BB: $CD $A9 $2C
    jp nc, Jump_003_7289                          ; $71BE: $D2 $89 $72

    ld hl, $0103                                  ; $71C1: $21 $03 $01
    ld a, $00                                     ; $71C4: $3E $00
    call Call_000_34B3                            ; $71C6: $CD $B3 $34
    jp Jump_003_7289                              ; $71C9: $C3 $89 $72


Jump_003_71CC:
    call Call_000_2CA2                            ; $71CC: $CD $A2 $2C
    jp z, Jump_003_71E1                           ; $71CF: $CA $E1 $71

    ld hl, $005D                                  ; $71D2: $21 $5D $00
    add hl, bc                                    ; $71D5: $09
    ld a, [hl]                                    ; $71D6: $7E
    cp $02                                        ; $71D7: $FE $02
    jr nz, jr_003_71E1                            ; $71D9: $20 $06

    ld hl, $0300                                  ; $71DB: $21 $00 $03
    call Call_000_2FEB                            ; $71DE: $CD $EB $2F

Jump_003_71E1:
jr_003_71E1:
    call Call_000_2CA9                            ; $71E1: $CD $A9 $2C
    jp nc, Jump_003_7289                          ; $71E4: $D2 $89 $72

    ld hl, HeaderLogo                             ; $71E7: $21 $04 $01
    ld a, $00                                     ; $71EA: $3E $00
    call Call_000_34B3                            ; $71EC: $CD $B3 $34
    jp Jump_003_7289                              ; $71EF: $C3 $89 $72


Jump_003_71F2:
    call Call_000_2CA9                            ; $71F2: $CD $A9 $2C
    jp nc, Jump_003_7289                          ; $71F5: $D2 $89 $72

    ld hl, $0103                                  ; $71F8: $21 $03 $01
    ld a, $00                                     ; $71FB: $3E $00
    call Call_000_34B3                            ; $71FD: $CD $B3 $34
    jp Jump_003_7289                              ; $7200: $C3 $89 $72


Jump_003_7203:
    jp Jump_003_7289                              ; $7203: $C3 $89 $72


Jump_003_7206:
    call Call_000_2CA2                            ; $7206: $CD $A2 $2C
    jp z, Jump_003_722D                           ; $7209: $CA $2D $72

    ld hl, $0300                                  ; $720C: $21 $00 $03
    call Call_000_2FEB                            ; $720F: $CD $EB $2F
    ld hl, $005D                                  ; $7212: $21 $5D $00
    add hl, bc                                    ; $7215: $09
    ld a, [hl]                                    ; $7216: $7E
    cp $02                                        ; $7217: $FE $02
    jr nz, jr_003_722D                            ; $7219: $20 $12

    ld hl, $0047                                  ; $721B: $21 $47 $00
    add hl, bc                                    ; $721E: $09
    ld [hl], $08                                  ; $721F: $36 $08
    ld hl, $004D                                  ; $7221: $21 $4D $00
    add hl, bc                                    ; $7224: $09
    ld [hl], $08                                  ; $7225: $36 $08
    ld hl, $0400                                  ; $7227: $21 $00 $04
    call Call_000_2FEB                            ; $722A: $CD $EB $2F

Jump_003_722D:
jr_003_722D:
    call Call_000_2CA9                            ; $722D: $CD $A9 $2C
    jp nc, Jump_003_7289                          ; $7230: $D2 $89 $72

    jp Jump_003_7289                              ; $7233: $C3 $89 $72


    call Call_000_2CA2                            ; $7236: $CD $A2 $2C
    jp z, Jump_003_7289                           ; $7239: $CA $89 $72

    ld hl, $001A                                  ; $723C: $21 $1A $00
    add hl, de                                    ; $723F: $19
    ld a, [hl]                                    ; $7240: $7E
    or a                                          ; $7241: $B7
    jp z, Jump_003_7289                           ; $7242: $CA $89 $72

    ld hl, $003C                                  ; $7245: $21 $3C $00
    add hl, bc                                    ; $7248: $09
    ld a, [hl]                                    ; $7249: $7E
    cp $36                                        ; $724A: $FE $36
    jr z, jr_003_726D                             ; $724C: $28 $1F

    ld hl, $009C                                  ; $724E: $21 $9C $00
    add hl, bc                                    ; $7251: $09
    inc [hl]                                      ; $7252: $34
    bit 0, [hl]                                   ; $7253: $CB $46
    jr nz, jr_003_7262                            ; $7255: $20 $0B

    ld hl, $0203                                  ; $7257: $21 $03 $02
    ld a, $01                                     ; $725A: $3E $01
    call Call_000_34A2                            ; $725C: $CD $A2 $34
    jp Jump_003_7289                              ; $725F: $C3 $89 $72


jr_003_7262:
    ld hl, $0204                                  ; $7262: $21 $04 $02
    ld a, $01                                     ; $7265: $3E $01
    call Call_000_34A2                            ; $7267: $CD $A2 $34
    jp Jump_003_7289                              ; $726A: $C3 $89 $72


jr_003_726D:
    ld hl, $0206                                  ; $726D: $21 $06 $02
    ld a, $05                                     ; $7270: $3E $05
    call Call_000_34A2                            ; $7272: $CD $A2 $34
    jp Jump_003_7289                              ; $7275: $C3 $89 $72


Jump_003_7278:
    call Call_000_2CA9                            ; $7278: $CD $A9 $2C
    jp nc, Jump_003_7289                          ; $727B: $D2 $89 $72

    ld hl, $005D                                  ; $727E: $21 $5D $00
    add hl, bc                                    ; $7281: $09
    ld [hl], $00                                  ; $7282: $36 $00
    call Call_000_2DB6                            ; $7284: $CD $B6 $2D
    jr jr_003_728C                                ; $7287: $18 $03

Jump_003_7289:
    jp Jump_000_2E25                              ; $7289: $C3 $25 $2E


Jump_003_728C:
jr_003_728C:
    ret                                           ; $728C: $C9


    ld hl, $0040                                  ; $728D: $21 $40 $00
    call Call_000_30B0                            ; $7290: $CD $B0 $30
    call Call_000_2EE0                            ; $7293: $CD $E0 $2E
    call Call_000_3517                            ; $7296: $CD $17 $35
    jp c, Jump_003_7306                           ; $7299: $DA $06 $73

    ld hl, $0018                                  ; $729C: $21 $18 $00
    add hl, de                                    ; $729F: $19
    ld a, [hl]                                    ; $72A0: $7E
    cp $00                                        ; $72A1: $FE $00
    jp z, Jump_003_72B6                           ; $72A3: $CA $B6 $72

    cp $04                                        ; $72A6: $FE $04
    jp z, Jump_003_72E6                           ; $72A8: $CA $E6 $72

    ld hl, $0045                                  ; $72AB: $21 $45 $00
    add hl, bc                                    ; $72AE: $09
    cp [hl]                                       ; $72AF: $BE
    jp z, Jump_003_72F2                           ; $72B0: $CA $F2 $72

    jp Jump_003_7303                              ; $72B3: $C3 $03 $73


Jump_003_72B6:
    call Call_000_2CA2                            ; $72B6: $CD $A2 $2C
    jp z, Jump_003_72E3                           ; $72B9: $CA $E3 $72

    ld hl, $005D                                  ; $72BC: $21 $5D $00
    add hl, bc                                    ; $72BF: $09
    ld a, [hl]                                    ; $72C0: $7E
    cp $02                                        ; $72C1: $FE $02
    jr nz, jr_003_72DA                            ; $72C3: $20 $15

    ld hl, $0047                                  ; $72C5: $21 $47 $00
    add hl, bc                                    ; $72C8: $09
    ld [hl], $08                                  ; $72C9: $36 $08
    ld hl, $004D                                  ; $72CB: $21 $4D $00
    add hl, bc                                    ; $72CE: $09
    ld [hl], $08                                  ; $72CF: $36 $08
    ld hl, $0400                                  ; $72D1: $21 $00 $04
    call Call_000_2FEB                            ; $72D4: $CD $EB $2F
    jp Jump_003_7303                              ; $72D7: $C3 $03 $73


jr_003_72DA:
    ld hl, $0400                                  ; $72DA: $21 $00 $04
    call Call_000_2FEB                            ; $72DD: $CD $EB $2F
    jp Jump_003_7303                              ; $72E0: $C3 $03 $73


Jump_003_72E3:
    jp Jump_003_7303                              ; $72E3: $C3 $03 $73


Jump_003_72E6:
    call Call_000_2CA9                            ; $72E6: $CD $A9 $2C
    jp nc, Jump_003_7303                          ; $72E9: $D2 $03 $73

    inc hl                                        ; $72EC: $23
    ld [hl], $0A                                  ; $72ED: $36 $0A
    jp Jump_003_7303                              ; $72EF: $C3 $03 $73


Jump_003_72F2:
    call Call_000_2CA9                            ; $72F2: $CD $A9 $2C
    jp nc, Jump_003_7303                          ; $72F5: $D2 $03 $73

    call Call_000_2DB6                            ; $72F8: $CD $B6 $2D
    ld hl, $005D                                  ; $72FB: $21 $5D $00
    add hl, bc                                    ; $72FE: $09
    ld [hl], $00                                  ; $72FF: $36 $00
    jr jr_003_7306                                ; $7301: $18 $03

Jump_003_7303:
    jp Jump_000_2E25                              ; $7303: $C3 $25 $2E


Jump_003_7306:
jr_003_7306:
    ret                                           ; $7306: $C9


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
