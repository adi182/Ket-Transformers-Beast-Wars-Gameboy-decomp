; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01f", ROMX[$4000], BANK[$1f]

    inc bc                                        ; $4000: $03
    ld bc, $0102                                  ; $4001: $01 $02 $01
    ld [de], a                                    ; $4004: $12
    ld bc, $000F                                  ; $4005: $01 $0F $00
    ld [bc], a                                    ; $4008: $02
    ld bc, $0102                                  ; $4009: $01 $02 $01
    inc b                                         ; $400C: $04
    inc bc                                        ; $400D: $03
    ld b, $01                                     ; $400E: $06 $01
    inc bc                                        ; $4010: $03
    nop                                           ; $4011: $00
    dec b                                         ; $4012: $05
    inc bc                                        ; $4013: $03
    dec bc                                        ; $4014: $0B
    inc b                                         ; $4015: $04
    ld [hl], $09                                  ; $4016: $36 $09
    call $9132                                    ; $4018: $CD $32 $91
    ld l, [hl]                                    ; $401B: $6E
    ld a, [hl]                                    ; $401C: $7E
    nop                                           ; $401D: $00
    nop                                           ; $401E: $00
    nop                                           ; $401F: $00
    cp h                                          ; $4020: $BC
    db $18, $B8                                   ; $4021: $18 $B8
    db $10                                        ; $4023: $10
    ret nc                                        ; $4024: $D0

    jr nz, @-$1E                                  ; $4025: $20 $E0

    nop                                           ; $4027: $00
    ld h, b                                       ; $4028: $60
    add b                                         ; $4029: $80
    and b                                         ; $402A: $A0
    ret nz                                        ; $402B: $C0

    sub b                                         ; $402C: $90
    ldh [$FF30], a                                ; $402D: $E0 $30
    ret nz                                        ; $402F: $C0

    ld hl, sp+$00                                 ; $4030: $F8 $00
    ld h, $D8                                     ; $4032: $26 $D8
    ld sp, hl                                     ; $4034: $F9
    ld b, $62                                     ; $4035: $06 $62
    sbc h                                         ; $4037: $9C
    and d                                         ; $4038: $A2
    ld e, h                                       ; $4039: $5C
    cp h                                          ; $403A: $BC
    ld b, b                                       ; $403B: $40
    ld d, h                                       ; $403C: $54
    jr z, jr_01F_40BB                             ; $403D: $28 $7C

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
    nop                                           ; $4054: $00
    nop                                           ; $4055: $00
    nop                                           ; $4056: $00
    nop                                           ; $4057: $00
    nop                                           ; $4058: $00
    nop                                           ; $4059: $00
    ret nz                                        ; $405A: $C0

    nop                                           ; $405B: $00
    db $E3                                        ; $405C: $E3
    ld b, b                                       ; $405D: $40
    rst RST_20                                    ; $405E: $E7
    ld b, d                                       ; $405F: $42
    dec b                                         ; $4060: $05
    nop                                           ; $4061: $00
    add hl, bc                                    ; $4062: $09
    nop                                           ; $4063: $00
    ld a, [bc]                                    ; $4064: $0A
    ld bc, $0007                                  ; $4065: $01 $07 $00
    ld [bc], a                                    ; $4068: $02
    ld bc, $0102                                  ; $4069: $01 $02 $01
    inc b                                         ; $406C: $04
    inc bc                                        ; $406D: $03
    ld b, $01                                     ; $406E: $06 $01
    inc bc                                        ; $4070: $03
    nop                                           ; $4071: $00
    dec b                                         ; $4072: $05
    inc bc                                        ; $4073: $03
    dec bc                                        ; $4074: $0B
    inc b                                         ; $4075: $04
    ld [hl], $09                                  ; $4076: $36 $09
    call $9132                                    ; $4078: $CD $32 $91
    ld l, [hl]                                    ; $407B: $6E
    ld a, [hl]                                    ; $407C: $7E
    nop                                           ; $407D: $00
    nop                                           ; $407E: $00
    nop                                           ; $407F: $00
    ldh [$FFC0], a                                ; $4080: $E0 $C0
    rst RST_08                                    ; $4082: $CF
    add b                                         ; $4083: $80
    cp a                                          ; $4084: $BF
    ld c, $CE                                     ; $4085: $0E $CE
    jr c, @+$7A                                   ; $4087: $38 $78

    add b                                         ; $4089: $80
    and b                                         ; $408A: $A0
    ret nz                                        ; $408B: $C0

    sub b                                         ; $408C: $90
    ldh [$FF30], a                                ; $408D: $E0 $30
    ret nz                                        ; $408F: $C0

    ld hl, sp+$00                                 ; $4090: $F8 $00
    ld h, $D8                                     ; $4092: $26 $D8
    ld sp, hl                                     ; $4094: $F9
    ld b, $62                                     ; $4095: $06 $62
    sbc h                                         ; $4097: $9C
    and d                                         ; $4098: $A2
    ld e, h                                       ; $4099: $5C
    cp h                                          ; $409A: $BC
    ld b, b                                       ; $409B: $40
    ld d, h                                       ; $409C: $54
    jr z, jr_01F_411B                             ; $409D: $28 $7C

    nop                                           ; $409F: $00
    nop                                           ; $40A0: $00
    nop                                           ; $40A1: $00
    nop                                           ; $40A2: $00
    nop                                           ; $40A3: $00
    nop                                           ; $40A4: $00
    nop                                           ; $40A5: $00
    nop                                           ; $40A6: $00
    nop                                           ; $40A7: $00
    nop                                           ; $40A8: $00
    nop                                           ; $40A9: $00
    nop                                           ; $40AA: $00
    nop                                           ; $40AB: $00
    nop                                           ; $40AC: $00
    nop                                           ; $40AD: $00
    nop                                           ; $40AE: $00
    nop                                           ; $40AF: $00
    nop                                           ; $40B0: $00
    nop                                           ; $40B1: $00
    nop                                           ; $40B2: $00
    nop                                           ; $40B3: $00
    nop                                           ; $40B4: $00
    nop                                           ; $40B5: $00
    nop                                           ; $40B6: $00
    nop                                           ; $40B7: $00
    nop                                           ; $40B8: $00
    nop                                           ; $40B9: $00
    nop                                           ; $40BA: $00

jr_01F_40BB:
    nop                                           ; $40BB: $00
    ld h, b                                       ; $40BC: $60
    nop                                           ; $40BD: $00
    ldh [rLCDC], a                                ; $40BE: $E0 $40
    ld bc, $0200                                  ; $40C0: $01 $00 $02
    nop                                           ; $40C3: $00
    ld [bc], a                                    ; $40C4: $02
    nop                                           ; $40C5: $00
    inc bc                                        ; $40C6: $03
    nop                                           ; $40C7: $00
    inc bc                                        ; $40C8: $03
    nop                                           ; $40C9: $00
    ld [bc], a                                    ; $40CA: $02
    ld bc, $0102                                  ; $40CB: $01 $02 $01
    inc b                                         ; $40CE: $04
    inc bc                                        ; $40CF: $03
    ld b, $01                                     ; $40D0: $06 $01
    inc bc                                        ; $40D2: $03
    nop                                           ; $40D3: $00
    dec c                                         ; $40D4: $0D
    inc bc                                        ; $40D5: $03
    inc sp                                        ; $40D6: $33
    inc c                                         ; $40D7: $0C
    adc $31                                       ; $40D8: $CE $31
    sub c                                         ; $40DA: $91
    ld l, [hl]                                    ; $40DB: $6E
    ld a, [hl]                                    ; $40DC: $7E
    nop                                           ; $40DD: $00
    nop                                           ; $40DE: $00
    nop                                           ; $40DF: $00
    nop                                           ; $40E0: $00
    nop                                           ; $40E1: $00
    ld [hl], b                                    ; $40E2: $70
    nop                                           ; $40E3: $00
    ld hl, sp+$70                                 ; $40E4: $F8 $70
    ld a, [hl]                                    ; $40E6: $7E
    add b                                         ; $40E7: $80
    rst RST_08                                    ; $40E8: $CF
    ld a, $7F                                     ; $40E9: $3E $7F
    add b                                         ; $40EB: $80
    and b                                         ; $40EC: $A0
    ret nz                                        ; $40ED: $C0

    sub b                                         ; $40EE: $90
    ldh [$FF30], a                                ; $40EF: $E0 $30
    ret nz                                        ; $40F1: $C0

    db $EC                                        ; $40F2: $EC
    db $10                                        ; $40F3: $10
    dec sp                                        ; $40F4: $3B
    call nz, $1EE1                                ; $40F5: $C4 $E1 $1E
    and e                                         ; $40F8: $A3
    ld e, h                                       ; $40F9: $5C
    cp [hl]                                       ; $40FA: $BE
    ld b, b                                       ; $40FB: $40
    ld d, h                                       ; $40FC: $54
    jr z, jr_01F_417B                             ; $40FD: $28 $7C

    nop                                           ; $40FF: $00
    ld e, $00                                     ; $4100: $1E $00
    scf                                           ; $4102: $37
    ld c, $3F                                     ; $4103: $0E $3F
    nop                                           ; $4105: $00
    ld c, h                                       ; $4106: $4C
    inc sp                                        ; $4107: $33
    ld d, a                                       ; $4108: $57
    add hl, sp                                    ; $4109: $39
    sub e                                         ; $410A: $93
    ld a, h                                       ; $410B: $7C
    add $38                                       ; $410C: $C6 $38
    add hl, sp                                    ; $410E: $39
    ld b, $2A                                     ; $410F: $06 $2A
    dec e                                         ; $4111: $1D
    rra                                           ; $4112: $1F
    nop                                           ; $4113: $00
    dec e                                         ; $4114: $1D
    ld [bc], a                                    ; $4115: $02
    dec d                                         ; $4116: $15
    ld a, [bc]                                    ; $4117: $0A
    ld a, [bc]                                    ; $4118: $0A
    dec b                                         ; $4119: $05
    ld a, [bc]                                    ; $411A: $0A

jr_01F_411B:
    dec b                                         ; $411B: $05
    dec c                                         ; $411C: $0D
    nop                                           ; $411D: $00
    nop                                           ; $411E: $00
    nop                                           ; $411F: $00
    nop                                           ; $4120: $00
    nop                                           ; $4121: $00
    nop                                           ; $4122: $00
    nop                                           ; $4123: $00
    nop                                           ; $4124: $00
    nop                                           ; $4125: $00
    ret nz                                        ; $4126: $C0

    nop                                           ; $4127: $00
    ldh [$FFC0], a                                ; $4128: $E0 $C0
    ldh [rP1], a                                  ; $412A: $E0 $00
    nop                                           ; $412C: $00
    nop                                           ; $412D: $00
    nop                                           ; $412E: $00
    nop                                           ; $412F: $00
    add b                                         ; $4130: $80
    nop                                           ; $4131: $00
    ld b, b                                       ; $4132: $40
    add b                                         ; $4133: $80
    and b                                         ; $4134: $A0
    ld b, b                                       ; $4135: $40
    sub b                                         ; $4136: $90
    ld h, b                                       ; $4137: $60
    ret z                                         ; $4138: $C8

    jr nc, jr_01F_4183                            ; $4139: $30 $48

    or b                                          ; $413B: $B0
    ld [hl], b                                    ; $413C: $70
    add b                                         ; $413D: $80
    ret nz                                        ; $413E: $C0

    nop                                           ; $413F: $00
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
    inc b                                         ; $415C: $04
    nop                                           ; $415D: $00
    ld [$0F00], sp                                ; $415E: $08 $00 $0F
    nop                                           ; $4161: $00
    add hl, bc                                    ; $4162: $09
    ld b, $0A                                     ; $4163: $06 $0A
    rlca                                          ; $4165: $07
    ld [de], a                                    ; $4166: $12
    rrca                                          ; $4167: $0F
    jr jr_01F_4171                                ; $4168: $18 $07

    rrca                                          ; $416A: $0F
    nop                                           ; $416B: $00
    inc d                                         ; $416C: $14
    rrca                                          ; $416D: $0F
    rra                                           ; $416E: $1F
    nop                                           ; $416F: $00
    dec hl                                        ; $4170: $2B

jr_01F_4171:
    inc d                                         ; $4171: $14
    ld l, $11                                     ; $4172: $2E $11
    ld a, [hl+]                                   ; $4174: $2A
    dec d                                         ; $4175: $15
    ld c, d                                       ; $4176: $4A
    dec [hl]                                      ; $4177: $35
    ld c, e                                       ; $4178: $4B
    inc [hl]                                      ; $4179: $34
    sbc l                                         ; $417A: $9D

jr_01F_417B:
    ld h, b                                       ; $417B: $60
    sub b                                         ; $417C: $90
    ld h, b                                       ; $417D: $60
    ld h, b                                       ; $417E: $60
    nop                                           ; $417F: $00
    ldh a, [$FF60]                                ; $4180: $F0 $60
    ld h, b                                       ; $4182: $60

jr_01F_4183:
    add b                                         ; $4183: $80
    add b                                         ; $4184: $80
    nop                                           ; $4185: $00
    ld b, b                                       ; $4186: $40
    add b                                         ; $4187: $80
    ret nz                                        ; $4188: $C0

    nop                                           ; $4189: $00
    add b                                         ; $418A: $80
    nop                                           ; $418B: $00
    ret nz                                        ; $418C: $C0

    nop                                           ; $418D: $00
    ld b, b                                       ; $418E: $40
    add b                                         ; $418F: $80
    ld b, b                                       ; $4190: $40
    add b                                         ; $4191: $80
    and b                                         ; $4192: $A0
    ld b, b                                       ; $4193: $40
    and b                                         ; $4194: $A0
    ld b, b                                       ; $4195: $40
    ld d, b                                       ; $4196: $50
    and b                                         ; $4197: $A0
    ld d, b                                       ; $4198: $50
    and b                                         ; $4199: $A0
    ld d, b                                       ; $419A: $50
    and b                                         ; $419B: $A0
    ret nc                                        ; $419C: $D0

    jr nz, jr_01F_41FF                            ; $419D: $20 $60

    nop                                           ; $419F: $00
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
    inc c                                         ; $41B6: $0C
    nop                                           ; $41B7: $00
    ld e, h                                       ; $41B8: $5C
    ld [$18BC], sp                                ; $41B9: $08 $BC $18
    cp e                                          ; $41BC: $BB
    db $10                                        ; $41BD: $10
    rst RST_10                                    ; $41BE: $D7
    inc hl                                        ; $41BF: $23
    nop                                           ; $41C0: $00
    nop                                           ; $41C1: $00
    nop                                           ; $41C2: $00
    nop                                           ; $41C3: $00
    nop                                           ; $41C4: $00
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
    nop                                           ; $41D9: $00
    nop                                           ; $41DA: $00
    nop                                           ; $41DB: $00
    add b                                         ; $41DC: $80
    nop                                           ; $41DD: $00
    add b                                         ; $41DE: $80
    nop                                           ; $41DF: $00
    nop                                           ; $41E0: $00
    nop                                           ; $41E1: $00
    nop                                           ; $41E2: $00
    nop                                           ; $41E3: $00
    nop                                           ; $41E4: $00
    nop                                           ; $41E5: $00
    inc b                                         ; $41E6: $04
    nop                                           ; $41E7: $00
    add hl, bc                                    ; $41E8: $09
    nop                                           ; $41E9: $00
    dec bc                                        ; $41EA: $0B
    ld bc, $020D                                  ; $41EB: $01 $0D $02
    rrca                                          ; $41EE: $0F
    nop                                           ; $41EF: $00
    add hl, bc                                    ; $41F0: $09
    ld b, $0A                                     ; $41F1: $06 $0A
    rlca                                          ; $41F3: $07
    ld [de], a                                    ; $41F4: $12
    rrca                                          ; $41F5: $0F
    jr jr_01F_41FF                                ; $41F6: $18 $07

    rrca                                          ; $41F8: $0F

jr_01F_41F9:
    nop                                           ; $41F9: $00
    ld [hl], l                                    ; $41FA: $75
    dec bc                                        ; $41FB: $0B
    adc a                                         ; $41FC: $8F
    ld [hl], b                                    ; $41FD: $70
    ld sp, hl                                     ; $41FE: $F9

jr_01F_41FF:
    nop                                           ; $41FF: $00
    nop                                           ; $4200: $00
    nop                                           ; $4201: $00
    nop                                           ; $4202: $00
    nop                                           ; $4203: $00
    nop                                           ; $4204: $00
    nop                                           ; $4205: $00
    nop                                           ; $4206: $00
    nop                                           ; $4207: $00
    ret nz                                        ; $4208: $C0

    nop                                           ; $4209: $00
    ldh [$FFC0], a                                ; $420A: $E0 $C0
    ld hl, sp+$00                                 ; $420C: $F8 $00
    inc a                                         ; $420E: $3C
    ld hl, sp-$04                                 ; $420F: $F8 $FC
    nop                                           ; $4211: $00
    add b                                         ; $4212: $80
    nop                                           ; $4213: $00
    ld e, b                                       ; $4214: $58
    add b                                         ; $4215: $80
    db $E4                                        ; $4216: $E4
    jr @-$0A                                      ; $4217: $18 $F4

    ld [$D02F], sp                                ; $4219: $08 $2F $D0
    ldh a, [rIF]                                  ; $421C: $F0 $0F
    rst RST_38                                    ; $421E: $FF
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
    nop                                           ; $4232: $00
    nop                                           ; $4233: $00
    nop                                           ; $4234: $00
    nop                                           ; $4235: $00

jr_01F_4236:
    nop                                           ; $4236: $00

jr_01F_4237:
    nop                                           ; $4237: $00
    nop                                           ; $4238: $00
    nop                                           ; $4239: $00

jr_01F_423A:
    nop                                           ; $423A: $00
    nop                                           ; $423B: $00

jr_01F_423C:
    add b                                         ; $423C: $80
    nop                                           ; $423D: $00
    add b                                         ; $423E: $80
    nop                                           ; $423F: $00
    dec b                                         ; $4240: $05
    nop                                           ; $4241: $00
    dec bc                                        ; $4242: $0B
    ld bc, $030F                                  ; $4243: $01 $0F $03
    rrca                                          ; $4246: $0F
    ld [bc], a                                    ; $4247: $02
    ld a, [de]                                    ; $4248: $1A
    inc b                                         ; $4249: $04
    cpl                                           ; $424A: $2F
    db $10                                        ; $424B: $10
    add hl, hl                                    ; $424C: $29
    ld d, $4A                                     ; $424D: $16 $4A
    scf                                           ; $424F: $37
    ld d, d                                       ; $4250: $52
    cpl                                           ; $4251: $2F
    ld e, b                                       ; $4252: $58
    daa                                           ; $4253: $27
    cpl                                           ; $4254: $2F
    db $10                                        ; $4255: $10
    dec d                                         ; $4256: $15
    ld c, $FF                                     ; $4257: $0E $FF
    nop                                           ; $4259: $00
    sbc d                                         ; $425A: $9A
    ld h, l                                       ; $425B: $65
    ld l, [hl]                                    ; $425C: $6E
    ld de, $0019                                  ; $425D: $11 $19 $00
    add b                                         ; $4260: $80
    nop                                           ; $4261: $00
    add b                                         ; $4262: $80
    nop                                           ; $4263: $00
    add b                                         ; $4264: $80
    nop                                           ; $4265: $00
    inc a                                         ; $4266: $3C
    nop                                           ; $4267: $00
    db $FC                                        ; $4268: $FC
    jr c, @+$3E                                   ; $4269: $38 $3C

    ldh [$FFE4], a                                ; $426B: $E0 $E4
    jr jr_01F_4237                                ; $426D: $18 $C8

    jr nc, jr_01F_41F9                            ; $426F: $30 $88

    ld [hl], b                                    ; $4271: $70
    sub b                                         ; $4272: $90
    ld h, b                                       ; $4273: $60
    jr nz, jr_01F_4236                            ; $4274: $20 $C0

    ret nz                                        ; $4276: $C0

    nop                                           ; $4277: $00
    jr nz, jr_01F_423A                            ; $4278: $20 $C0

    jr nz, jr_01F_423C                            ; $427A: $20 $C0

    ld b, b                                       ; $427C: $40
    add b                                         ; $427D: $80
    add b                                         ; $427E: $80
    nop                                           ; $427F: $00
    ld bc, $0100                                  ; $4280: $01 $00 $01

jr_01F_4283:
    nop                                           ; $4283: $00
    ld bc, $3C00                                  ; $4284: $01 $00 $3C
    nop                                           ; $4287: $00
    ccf                                           ; $4288: $3F
    inc e                                         ; $4289: $1C
    inc e                                         ; $428A: $1C
    rlca                                          ; $428B: $07
    rlca                                          ; $428C: $07
    nop                                           ; $428D: $00
    ld bc, $0200                                  ; $428E: $01 $00 $02
    ld bc, $0003                                  ; $4291: $01 $03 $00
    rrca                                          ; $4294: $0F
    nop                                           ; $4295: $00
    ld c, $05                                     ; $4296: $0E $05
    inc b                                         ; $4298: $04
    inc bc                                        ; $4299: $03
    inc c                                         ; $429A: $0C
    inc bc                                        ; $429B: $03
    inc de                                        ; $429C: $13
    inc c                                         ; $429D: $0C
    ld e, $00                                     ; $429E: $1E $00
    add b                                         ; $42A0: $80
    nop                                           ; $42A1: $00
    ret nc                                        ; $42A2: $D0

    add b                                         ; $42A3: $80
    add sp, -$40                                  ; $42A4: $E8 $C0
    add sp, $40                                   ; $42A6: $E8 $40
    ld e, b                                       ; $42A8: $58
    jr nz, jr_01F_4283                            ; $42A9: $20 $D8

    jr nz, @+$3A                                  ; $42AB: $20 $38

    ret nz                                        ; $42AD: $C0

    inc d                                         ; $42AE: $14
    add sp, $0A                                   ; $42AF: $E8 $0A
    db $F4                                        ; $42B1: $F4
    ld [de], a                                    ; $42B2: $12
    db $EC                                        ; $42B3: $EC
    db $E4                                        ; $42B4: $E4
    jr @-$26                                      ; $42B5: $18 $D8

    jr nz, jr_01F_4319                            ; $42B7: $20 $60

    add b                                         ; $42B9: $80
    ld h, b                                       ; $42BA: $60
    add b                                         ; $42BB: $80
    sbc b                                         ; $42BC: $98
    ld h, b                                       ; $42BD: $60
    call nz, Call_000_3C38                        ; $42BE: $C4 $38 $3C
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
    nop                                           ; $42DE: $00
    nop                                           ; $42DF: $00
    add hl, bc                                    ; $42E0: $09
    ld b, $13                                     ; $42E1: $06 $13
    inc c                                         ; $42E3: $0C
    ld d, $09                                     ; $42E4: $16 $09
    inc d                                         ; $42E6: $14
    dec bc                                        ; $42E7: $0B
    inc d                                         ; $42E8: $14
    dec bc                                        ; $42E9: $0B
    rra                                           ; $42EA: $1F
    nop                                           ; $42EB: $00
    call nc, $B40F                                ; $42EC: $D4 $0F $B4
    ld c, a                                       ; $42EF: $4F
    sbc a                                         ; $42F0: $9F
    ld h, b                                       ; $42F1: $60
    ld c, d                                       ; $42F2: $4A
    dec [hl]                                      ; $42F3: $35
    ld a, $01                                     ; $42F4: $3E $01
    dec bc                                        ; $42F6: $0B
    inc b                                         ; $42F7: $04
    inc de                                        ; $42F8: $13
    inc c                                         ; $42F9: $0C
    ld [de], a                                    ; $42FA: $12
    inc c                                         ; $42FB: $0C
    inc d                                         ; $42FC: $14
    ld [$000C], sp                                ; $42FD: $08 $0C $00
    nop                                           ; $4300: $00
    nop                                           ; $4301: $00
    nop                                           ; $4302: $00
    nop                                           ; $4303: $00
    nop                                           ; $4304: $00
    nop                                           ; $4305: $00
    nop                                           ; $4306: $00
    nop                                           ; $4307: $00
    nop                                           ; $4308: $00
    nop                                           ; $4309: $00
    nop                                           ; $430A: $00
    nop                                           ; $430B: $00
    nop                                           ; $430C: $00
    nop                                           ; $430D: $00
    nop                                           ; $430E: $00
    nop                                           ; $430F: $00
    nop                                           ; $4310: $00
    nop                                           ; $4311: $00
    nop                                           ; $4312: $00
    nop                                           ; $4313: $00
    nop                                           ; $4314: $00
    nop                                           ; $4315: $00
    jr nz, jr_01F_4318                            ; $4316: $20 $00

jr_01F_4318:
    inc h                                         ; $4318: $24

jr_01F_4319:
    nop                                           ; $4319: $00
    jr c, jr_01F_431C                             ; $431A: $38 $00

jr_01F_431C:
    ld c, [hl]                                    ; $431C: $4E
    jr nc, @-$76                                  ; $431D: $30 $88

    ld [hl], b                                    ; $431F: $70
    jr nz, jr_01F_4322                            ; $4320: $20 $00

jr_01F_4322:
    ld b, b                                       ; $4322: $40
    nop                                           ; $4323: $00
    ldh a, [rP1]                                  ; $4324: $F0 $00
    inc l                                         ; $4326: $2C
    ret nc                                        ; $4327: $D0

    ld a, $CC                                     ; $4328: $3E $CC
    cpl                                           ; $432A: $2F
    add $E7                                       ; $432B: $C6 $E7
    nop                                           ; $432D: $00
    sbc [hl]                                      ; $432E: $9E
    ld h, b                                       ; $432F: $60
    ld h, c                                       ; $4330: $61
    ld e, $98                                     ; $4331: $1E $98
    rlca                                          ; $4333: $07
    add a                                         ; $4334: $87
    nop                                           ; $4335: $00
    ret nz                                        ; $4336: $C0

    add b                                         ; $4337: $80
    ret nz                                        ; $4338: $C0

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
    nop                                           ; $434C: $00
    nop                                           ; $434D: $00
    ld b, b                                       ; $434E: $40
    nop                                           ; $434F: $00
    add b                                         ; $4350: $80
    nop                                           ; $4351: $00

jr_01F_4352:
    ldh [rP1], a                                  ; $4352: $E0 $00
    add b                                         ; $4354: $80
    nop                                           ; $4355: $00
    ld b, b                                       ; $4356: $40
    nop                                           ; $4357: $00
    nop                                           ; $4358: $00
    nop                                           ; $4359: $00
    nop                                           ; $435A: $00
    nop                                           ; $435B: $00
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
    ld a, [hl]                                    ; $4366: $7E
    nop                                           ; $4367: $00
    rst RST_38                                    ; $4368: $FF
    ld e, [hl]                                    ; $4369: $5E
    cp $61                                        ; $436A: $FE $61
    ld a, l                                       ; $436C: $7D
    ld [bc], a                                    ; $436D: $02
    rlca                                          ; $436E: $07
    inc bc                                        ; $436F: $03
    dec bc                                        ; $4370: $0B
    rlca                                          ; $4371: $07
    cp a                                          ; $4372: $BF
    nop                                           ; $4373: $00
    ld b, b                                       ; $4374: $40
    ccf                                           ; $4375: $3F
    jp Jump_01F_7C3C                              ; $4376: $C3 $3C $7C


    inc bc                                        ; $4379: $03
    sub e                                         ; $437A: $93
    inc c                                         ; $437B: $0C
    ld e, $01                                     ; $437C: $1E $01
    inc bc                                        ; $437E: $03
    nop                                           ; $437F: $00
    nop                                           ; $4380: $00
    nop                                           ; $4381: $00
    nop                                           ; $4382: $00
    nop                                           ; $4383: $00
    nop                                           ; $4384: $00
    nop                                           ; $4385: $00
    nop                                           ; $4386: $00
    nop                                           ; $4387: $00
    add b                                         ; $4388: $80
    nop                                           ; $4389: $00
    ld b, b                                       ; $438A: $40
    add b                                         ; $438B: $80

jr_01F_438C:
    ret nz                                        ; $438C: $C0

    nop                                           ; $438D: $00
    ld b, b                                       ; $438E: $40
    add b                                         ; $438F: $80
    jr nc, jr_01F_4352                            ; $4390: $30 $C0

    db $EB                                        ; $4392: $EB
    db $10                                        ; $4393: $10
    ld c, a                                       ; $4394: $4F
    or d                                          ; $4395: $B2
    ldh a, [c]                                    ; $4396: $F2
    inc c                                         ; $4397: $0C
    jp nc, $1C2C                                  ; $4398: $D2 $2C $1C

    ldh [$FF60], a                                ; $439B: $E0 $60
    add b                                         ; $439D: $80
    add b                                         ; $439E: $80
    nop                                           ; $439F: $00
    nop                                           ; $43A0: $00
    nop                                           ; $43A1: $00
    nop                                           ; $43A2: $00
    nop                                           ; $43A3: $00
    nop                                           ; $43A4: $00
    nop                                           ; $43A5: $00
    nop                                           ; $43A6: $00
    nop                                           ; $43A7: $00
    ret nz                                        ; $43A8: $C0

    nop                                           ; $43A9: $00
    and a                                         ; $43AA: $A7
    ld b, b                                       ; $43AB: $40
    sbc l                                         ; $43AC: $9D
    ld h, [hl]                                    ; $43AD: $66
    ld e, l                                       ; $43AE: $5D
    ld [hl+], a                                   ; $43AF: $22
    ld c, e                                       ; $43B0: $4B
    inc [hl]                                      ; $43B1: $34
    inc a                                         ; $43B2: $3C
    inc bc                                        ; $43B3: $03
    ld c, h                                       ; $43B4: $4C
    inc sp                                        ; $43B5: $33
    sub e                                         ; $43B6: $93
    ld h, b                                       ; $43B7: $60
    ldh [rP1], a                                  ; $43B8: $E0 $00
    nop                                           ; $43BA: $00
    nop                                           ; $43BB: $00
    nop                                           ; $43BC: $00
    nop                                           ; $43BD: $00
    nop                                           ; $43BE: $00
    nop                                           ; $43BF: $00
    nop                                           ; $43C0: $00
    nop                                           ; $43C1: $00
    nop                                           ; $43C2: $00
    nop                                           ; $43C3: $00
    nop                                           ; $43C4: $00
    nop                                           ; $43C5: $00
    ld [$D000], sp                                ; $43C6: $08 $00 $D0
    nop                                           ; $43C9: $00
    jr c, jr_01F_438C                             ; $43CA: $38 $C0

    sub [hl]                                      ; $43CC: $96
    ld l, b                                       ; $43CD: $68
    ld a, a                                       ; $43CE: $7F
    add [hl]                                      ; $43CF: $86
    sbc a                                         ; $43D0: $9F
    ld h, e                                       ; $43D1: $63
    rst RST_00                                    ; $43D2: $C7
    jr c, @-$5C                                   ; $43D3: $38 $A2

    inc e                                         ; $43D5: $1C
    jp nc, $CD8C                                  ; $43D6: $D2 $8C $CD

    nop                                           ; $43D9: $00
    inc b                                         ; $43DA: $04
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
    nop                                           ; $43EC: $00
    nop                                           ; $43ED: $00
    nop                                           ; $43EE: $00
    nop                                           ; $43EF: $00
    add b                                         ; $43F0: $80
    nop                                           ; $43F1: $00
    add b                                         ; $43F2: $80
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
    inc bc                                        ; $4416: $03
    nop                                           ; $4417: $00
    dec e                                         ; $4418: $1D
    inc bc                                        ; $4419: $03
    ld [hl], d                                    ; $441A: $72
    dec c                                         ; $441B: $0D
    push bc                                       ; $441C: $C5
    ld a, [hl-]                                   ; $441D: $3A
    rst RST_38                                    ; $441E: $FF
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
    nop                                           ; $442F: $00
    ld [$D000], sp                                ; $4430: $08 $00 $D0
    nop                                           ; $4433: $00
    cp h                                          ; $4434: $BC
    ld b, b                                       ; $4435: $40
    adc e                                         ; $4436: $8B
    ld [hl], h                                    ; $4437: $74
    ld c, a                                       ; $4438: $4F
    or e                                          ; $4439: $B3
    rst RST_38                                    ; $443A: $FF
    nop                                           ; $443B: $00
    add b                                         ; $443C: $80
    ld a, a                                       ; $443D: $7F
    rst RST_38                                    ; $443E: $FF
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
    add b                                         ; $4458: $80
    nop                                           ; $4459: $00
    ret nz                                        ; $445A: $C0

    add b                                         ; $445B: $80
    ret nz                                        ; $445C: $C0

    nop                                           ; $445D: $00
    ret nz                                        ; $445E: $C0

    nop                                           ; $445F: $00
    nop                                           ; $4460: $00
    nop                                           ; $4461: $00
    ld bc, $0100                                  ; $4462: $01 $00 $01
    nop                                           ; $4465: $00
    nop                                           ; $4466: $00
    nop                                           ; $4467: $00
    ld bc, $0100                                  ; $4468: $01 $00 $01
    nop                                           ; $446B: $00
    ld [bc], a                                    ; $446C: $02
    ld bc, $0003                                  ; $446D: $01 $03 $00
    ld b, c                                       ; $4470: $41
    nop                                           ; $4471: $00
    ccf                                           ; $4472: $3F
    nop                                           ; $4473: $00
    ret nz                                        ; $4474: $C0

    ccf                                           ; $4475: $3F
    ld b, a                                       ; $4476: $47
    jr c, jr_01F_44F2                             ; $4477: $38 $79

    nop                                           ; $4479: $00
    add d                                         ; $447A: $82
    ld bc, $0304                                  ; $447B: $01 $04 $03
    rlca                                          ; $447E: $07
    nop                                           ; $447F: $00
    cp a                                          ; $4480: $BF
    db $10                                        ; $4481: $10
    ld e, a                                       ; $4482: $5F
    ld h, $6E                                     ; $4483: $26 $6E
    inc e                                         ; $4485: $1C
    call z, Call_01F_7838                         ; $4486: $CC $38 $78
    add b                                         ; $4489: $80
    sub b                                         ; $448A: $90
    ldh [$FF9E], a                                ; $448B: $E0 $9E
    ldh [rNR11], a                                ; $448D: $E0 $11
    xor $E1                                       ; $448F: $EE $E1
    ld e, $9E                                     ; $4491: $1E $9E
    ld h, b                                       ; $4493: $60
    ld a, h                                       ; $4494: $7C
    adc b                                         ; $4495: $88
    ret z                                         ; $4496: $C8

    jr nc, jr_01F_44E1                            ; $4497: $30 $48

    or b                                          ; $4499: $B0
    ld [hl], b                                    ; $449A: $70
    add b                                         ; $449B: $80
    ld b, b                                       ; $449C: $40
    add b                                         ; $449D: $80
    add b                                         ; $449E: $80
    nop                                           ; $449F: $00
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

jr_01F_44AD:
    nop                                           ; $44AD: $00
    nop                                           ; $44AE: $00
    nop                                           ; $44AF: $00
    nop                                           ; $44B0: $00
    nop                                           ; $44B1: $00
    nop                                           ; $44B2: $00
    nop                                           ; $44B3: $00
    nop                                           ; $44B4: $00
    nop                                           ; $44B5: $00
    nop                                           ; $44B6: $00
    nop                                           ; $44B7: $00
    nop                                           ; $44B8: $00
    nop                                           ; $44B9: $00
    nop                                           ; $44BA: $00
    nop                                           ; $44BB: $00
    jr jr_01F_44BE                                ; $44BC: $18 $00

jr_01F_44BE:
    jr c, jr_01F_44D0                             ; $44BE: $38 $10

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
    ld h, b                                       ; $44CC: $60
    nop                                           ; $44CD: $00
    sbc b                                         ; $44CE: $98
    ld h, b                                       ; $44CF: $60

jr_01F_44D0:
    xor $10                                       ; $44D0: $EE $10
    xor c                                         ; $44D2: $A9
    ld d, [hl]                                    ; $44D3: $56
    or b                                          ; $44D4: $B0
    ld c, a                                       ; $44D5: $4F
    ld a, a                                       ; $44D6: $7F
    nop                                           ; $44D7: $00
    nop                                           ; $44D8: $00
    nop                                           ; $44D9: $00
    nop                                           ; $44DA: $00
    nop                                           ; $44DB: $00
    nop                                           ; $44DC: $00
    nop                                           ; $44DD: $00
    nop                                           ; $44DE: $00
    nop                                           ; $44DF: $00
    nop                                           ; $44E0: $00

jr_01F_44E1:
    nop                                           ; $44E1: $00
    rlca                                          ; $44E2: $07
    nop                                           ; $44E3: $00
    rrca                                          ; $44E4: $0F
    rlca                                          ; $44E5: $07
    rla                                           ; $44E6: $17
    inc c                                         ; $44E7: $0C
    ld a, h                                       ; $44E8: $7C
    nop                                           ; $44E9: $00
    or e                                          ; $44EA: $B3
    ld l, h                                       ; $44EB: $6C
    and h                                         ; $44EC: $A4
    ld e, a                                       ; $44ED: $5F
    ld l, c                                       ; $44EE: $69
    ld e, $12                                     ; $44EF: $1E $12
    dec c                                         ; $44F1: $0D

jr_01F_44F2:
    push af                                       ; $44F2: $F5
    dec bc                                        ; $44F3: $0B
    inc c                                         ; $44F4: $0C
    di                                            ; $44F5: $F3
    rst RST_38                                    ; $44F6: $FF
    nop                                           ; $44F7: $00
    ld bc, $0100                                  ; $44F8: $01 $00 $01
    nop                                           ; $44FB: $00
    ld [bc], a                                    ; $44FC: $02
    ld bc, $0003                                  ; $44FD: $01 $03 $00
    ld a, [bc]                                    ; $4500: $0A
    nop                                           ; $4501: $00
    call c, $E700                                 ; $4502: $DC $00 $E7
    sbc b                                         ; $4505: $98
    and h                                         ; $4506: $A4
    jr @+$4A                                      ; $4507: $18 $48

    jr nc, jr_01F_455B                            ; $4509: $30 $50

    jr nz, jr_01F_44AD                            ; $450B: $20 $A0

    ld b, b                                       ; $450D: $40
    ld b, b                                       ; $450E: $40
    add b                                         ; $450F: $80
    ld c, [hl]                                    ; $4510: $4E
    add b                                         ; $4511: $80

jr_01F_4512:
    ld [hl], d                                    ; $4512: $72
    adc h                                         ; $4513: $8C
    call nz, $B838                                ; $4514: $C4 $38 $B8
    ld b, b                                       ; $4517: $40
    ld b, b                                       ; $4518: $40
    add b                                         ; $4519: $80
    ld b, b                                       ; $451A: $40
    add b                                         ; $451B: $80
    ld b, b                                       ; $451C: $40
    add b                                         ; $451D: $80
    ret nz                                        ; $451E: $C0

    nop                                           ; $451F: $00
    nop                                           ; $4520: $00
    nop                                           ; $4521: $00
    nop                                           ; $4522: $00
    nop                                           ; $4523: $00
    nop                                           ; $4524: $00
    nop                                           ; $4525: $00
    ld a, [hl]                                    ; $4526: $7E
    nop                                           ; $4527: $00
    rst RST_38                                    ; $4528: $FF
    ld e, [hl]                                    ; $4529: $5E
    cp $61                                        ; $452A: $FE $61
    ld a, l                                       ; $452C: $7D
    ld [bc], a                                    ; $452D: $02
    rlca                                          ; $452E: $07
    inc bc                                        ; $452F: $03
    dec bc                                        ; $4530: $0B
    rlca                                          ; $4531: $07
    rrca                                          ; $4532: $0F
    nop                                           ; $4533: $00
    jr c, jr_01F_453D                             ; $4534: $38 $07

    ld [$1F07], sp                                ; $4536: $08 $07 $1F
    nop                                           ; $4539: $00
    inc b                                         ; $453A: $04
    inc bc                                        ; $453B: $03
    rlca                                          ; $453C: $07

jr_01F_453D:
    nop                                           ; $453D: $00
    nop                                           ; $453E: $00
    nop                                           ; $453F: $00
    nop                                           ; $4540: $00
    nop                                           ; $4541: $00
    nop                                           ; $4542: $00
    nop                                           ; $4543: $00
    nop                                           ; $4544: $00
    nop                                           ; $4545: $00
    nop                                           ; $4546: $00
    nop                                           ; $4547: $00
    add b                                         ; $4548: $80
    nop                                           ; $4549: $00
    ld b, b                                       ; $454A: $40
    add b                                         ; $454B: $80
    ret nz                                        ; $454C: $C0

    nop                                           ; $454D: $00
    ld b, b                                       ; $454E: $40
    add b                                         ; $454F: $80
    jr nc, jr_01F_4512                            ; $4550: $30 $C0

    db $DB                                        ; $4552: $DB
    jr nz, jr_01F_4594                            ; $4553: $20 $3F

    jp nz, $0CF2                                  ; $4555: $C2 $F2 $0C

    ld c, d                                       ; $4558: $4A
    or h                                          ; $4559: $B4
    and h                                         ; $455A: $A4

jr_01F_455B:
    jr jr_01F_4599                                ; $455B: $18 $3C

    nop                                           ; $455D: $00
    nop                                           ; $455E: $00
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
    nop                                           ; $456A: $00
    nop                                           ; $456B: $00
    nop                                           ; $456C: $00
    nop                                           ; $456D: $00
    db $FC                                        ; $456E: $FC
    nop                                           ; $456F: $00
    add e                                         ; $4570: $83
    ld a, h                                       ; $4571: $7C
    ld h, d                                       ; $4572: $62
    dec e                                         ; $4573: $1D
    rra                                           ; $4574: $1F
    nop                                           ; $4575: $00
    ld bc, $0100                                  ; $4576: $01 $00 $01
    nop                                           ; $4579: $00
    nop                                           ; $457A: $00
    nop                                           ; $457B: $00

jr_01F_457C:
    nop                                           ; $457C: $00
    nop                                           ; $457D: $00
    nop                                           ; $457E: $00
    nop                                           ; $457F: $00
    nop                                           ; $4580: $00
    nop                                           ; $4581: $00
    rlca                                          ; $4582: $07
    nop                                           ; $4583: $00
    dec bc                                        ; $4584: $0B
    dec b                                         ; $4585: $05
    inc d                                         ; $4586: $14
    dec bc                                        ; $4587: $0B
    rla                                           ; $4588: $17
    ld [$1629], sp                                ; $4589: $08 $29 $16
    ld a, [hl+]                                   ; $458C: $2A
    rla                                           ; $458D: $17
    ld [hl-], a                                   ; $458E: $32
    rrca                                          ; $458F: $0F
    cp b                                          ; $4590: $B8
    rlca                                          ; $4591: $07
    ld h, a                                       ; $4592: $67
    sbc b                                         ; $4593: $98

jr_01F_4594:
    db $D3                                        ; $4594: $D3
    inc l                                         ; $4595: $2C
    ld a, h                                       ; $4596: $7C
    add e                                         ; $4597: $83
    ld d, d                                       ; $4598: $52

jr_01F_4599:
    and c                                         ; $4599: $A1
    ret                                           ; $459A: $C9


    jr nc, jr_01F_45F1                            ; $459B: $30 $54

    jr z, jr_01F_461B                             ; $459D: $28 $7C

    nop                                           ; $459F: $00
    ld [hl], b                                    ; $45A0: $70
    nop                                           ; $45A1: $00
    ldh a, [$FF60]                                ; $45A2: $F0 $60
    ldh [$FFC0], a                                ; $45A4: $E0 $C0
    db $FC                                        ; $45A6: $FC
    nop                                           ; $45A7: $00
    inc a                                         ; $45A8: $3C
    ld hl, sp-$08                                 ; $45A9: $F8 $F8
    nop                                           ; $45AB: $00
    add b                                         ; $45AC: $80
    nop                                           ; $45AD: $00
    ld b, b                                       ; $45AE: $40
    add b                                         ; $45AF: $80
    ret nz                                        ; $45B0: $C0

    nop                                           ; $45B1: $00
    nop                                           ; $45B2: $00
    nop                                           ; $45B3: $00
    nop                                           ; $45B4: $00
    nop                                           ; $45B5: $00
    ret nz                                        ; $45B6: $C0

    nop                                           ; $45B7: $00
    and b                                         ; $45B8: $A0
    ld b, b                                       ; $45B9: $40
    jr nz, jr_01F_457C                            ; $45BA: $20 $C0

    ret nz                                        ; $45BC: $C0

    nop                                           ; $45BD: $00
    nop                                           ; $45BE: $00
    nop                                           ; $45BF: $00
    nop                                           ; $45C0: $00
    nop                                           ; $45C1: $00
    inc bc                                        ; $45C2: $03
    nop                                           ; $45C3: $00
    dec b                                         ; $45C4: $05
    inc bc                                        ; $45C5: $03
    dec bc                                        ; $45C6: $0B
    rlca                                          ; $45C7: $07
    rla                                           ; $45C8: $17
    rrca                                          ; $45C9: $0F
    dec d                                         ; $45CA: $15
    rrca                                          ; $45CB: $0F
    add hl, hl                                    ; $45CC: $29
    rra                                           ; $45CD: $1F
    ld hl, $4E1F                                  ; $45CE: $21 $1F $4E
    inc sp                                        ; $45D1: $33
    ld e, b                                       ; $45D2: $58
    daa                                           ; $45D3: $27
    xor e                                         ; $45D4: $AB
    ld b, h                                       ; $45D5: $44
    call nc, $1808                                ; $45D6: $D4 $08 $18
    nop                                           ; $45D9: $00
    nop                                           ; $45DA: $00
    nop                                           ; $45DB: $00
    nop                                           ; $45DC: $00
    nop                                           ; $45DD: $00
    nop                                           ; $45DE: $00
    nop                                           ; $45DF: $00
    ldh a, [rP1]                                  ; $45E0: $F0 $00
    ld [$D4F0], sp                                ; $45E2: $08 $F0 $D4
    add sp, -$6C                                  ; $45E5: $E8 $94
    add sp, -$48                                  ; $45E7: $E8 $B8
    ldh [$FFDC], a                                ; $45E9: $E0 $DC
    add sp, -$64                                  ; $45EB: $E8 $9C
    add sp, $1D                                   ; $45ED: $E8 $1D
    add sp, $35                                   ; $45EF: $E8 $35

jr_01F_45F1:
    ret z                                         ; $45F1: $C8

    ld [hl], $C9                                  ; $45F2: $36 $C9
    ccf                                           ; $45F4: $3F
    ret nz                                        ; $45F5: $C0

    or e                                          ; $45F6: $B3
    ld c, h                                       ; $45F7: $4C
    or c                                          ; $45F8: $B1
    ld c, [hl]                                    ; $45F9: $4E
    and b                                         ; $45FA: $A0
    ld e, a                                       ; $45FB: $5F
    ld [hl], c                                    ; $45FC: $71
    ld c, $4F                                     ; $45FD: $0E $4F
    jr nc, jr_01F_4601                            ; $45FF: $30 $00

jr_01F_4601:
    nop                                           ; $4601: $00
    nop                                           ; $4602: $00
    nop                                           ; $4603: $00
    nop                                           ; $4604: $00
    nop                                           ; $4605: $00
    nop                                           ; $4606: $00
    nop                                           ; $4607: $00

jr_01F_4608:
    nop                                           ; $4608: $00
    nop                                           ; $4609: $00

jr_01F_460A:
    ld h, b                                       ; $460A: $60
    nop                                           ; $460B: $00
    ldh [rLCDC], a                                ; $460C: $E0 $40
    ldh [$FFC0], a                                ; $460E: $E0 $C0
    ret nz                                        ; $4610: $C0

    add b                                         ; $4611: $80
    add b                                         ; $4612: $80
    nop                                           ; $4613: $00
    nop                                           ; $4614: $00
    nop                                           ; $4615: $00
    nop                                           ; $4616: $00
    nop                                           ; $4617: $00
    nop                                           ; $4618: $00
    nop                                           ; $4619: $00
    add b                                         ; $461A: $80

jr_01F_461B:
    nop                                           ; $461B: $00
    add b                                         ; $461C: $80
    nop                                           ; $461D: $00
    nop                                           ; $461E: $00
    nop                                           ; $461F: $00
    inc [hl]                                      ; $4620: $34
    dec bc                                        ; $4621: $0B
    ld c, e                                       ; $4622: $4B
    inc [hl]                                      ; $4623: $34
    add sp, $57                                   ; $4624: $E8 $57
    call z, $3A33                                 ; $4626: $CC $33 $3A
    dec b                                         ; $4629: $05
    add hl, bc                                    ; $462A: $09
    ld b, $0F                                     ; $462B: $06 $0F
    nop                                           ; $462D: $00
    nop                                           ; $462E: $00
    nop                                           ; $462F: $00
    nop                                           ; $4630: $00
    nop                                           ; $4631: $00
    nop                                           ; $4632: $00
    nop                                           ; $4633: $00
    nop                                           ; $4634: $00
    nop                                           ; $4635: $00
    nop                                           ; $4636: $00
    nop                                           ; $4637: $00
    nop                                           ; $4638: $00
    nop                                           ; $4639: $00
    nop                                           ; $463A: $00
    nop                                           ; $463B: $00
    nop                                           ; $463C: $00
    nop                                           ; $463D: $00
    nop                                           ; $463E: $00
    nop                                           ; $463F: $00
    add b                                         ; $4640: $80
    nop                                           ; $4641: $00
    nop                                           ; $4642: $00
    nop                                           ; $4643: $00
    ldh [rP1], a                                  ; $4644: $E0 $00
    jr nz, jr_01F_4608                            ; $4646: $20 $C0

    jr nz, jr_01F_460A                            ; $4648: $20 $C0

    ret nz                                        ; $464A: $C0

    nop                                           ; $464B: $00
    add b                                         ; $464C: $80
    nop                                           ; $464D: $00
    nop                                           ; $464E: $00
    nop                                           ; $464F: $00
    nop                                           ; $4650: $00
    nop                                           ; $4651: $00
    nop                                           ; $4652: $00
    nop                                           ; $4653: $00
    nop                                           ; $4654: $00
    nop                                           ; $4655: $00
    nop                                           ; $4656: $00
    nop                                           ; $4657: $00
    nop                                           ; $4658: $00
    nop                                           ; $4659: $00
    nop                                           ; $465A: $00
    nop                                           ; $465B: $00

jr_01F_465C:
    nop                                           ; $465C: $00
    nop                                           ; $465D: $00
    nop                                           ; $465E: $00
    nop                                           ; $465F: $00
    ccf                                           ; $4660: $3F
    ld [bc], a                                    ; $4661: $02
    ccf                                           ; $4662: $3F
    add hl, de                                    ; $4663: $19
    rra                                           ; $4664: $1F
    inc c                                         ; $4665: $0C
    dec c                                         ; $4666: $0D
    ld [bc], a                                    ; $4667: $02
    inc bc                                        ; $4668: $03
    nop                                           ; $4669: $00
    inc bc                                        ; $466A: $03
    ld bc, $0305                                  ; $466B: $01 $05 $03
    ld a, $01                                     ; $466E: $3E $01
    ld b, l                                       ; $4670: $45
    ld a, [hl-]                                   ; $4671: $3A
    ld e, h                                       ; $4672: $5C
    inc hl                                        ; $4673: $23
    ld b, a                                       ; $4674: $47
    jr c, jr_01F_46BD                             ; $4675: $38 $46

jr_01F_4677:
    add hl, sp                                    ; $4677: $39
    dec h                                         ; $4678: $25
    ld a, [de]                                    ; $4679: $1A
    rra                                           ; $467A: $1F
    nop                                           ; $467B: $00
    inc de                                        ; $467C: $13
    inc c                                         ; $467D: $0C
    inc e                                         ; $467E: $1C
    nop                                           ; $467F: $00
    rst RST_18                                    ; $4680: $DF
    adc a                                         ; $4681: $8F
    inc a                                         ; $4682: $3C
    rst RST_08                                    ; $4683: $CF
    ld [$7117], a                                 ; $4684: $EA $17 $71
    adc [hl]                                      ; $4687: $8E
    ld h, a                                       ; $4688: $67
    ret c                                         ; $4689: $D8

    ld e, b                                       ; $468A: $58
    ldh [$FF30], a                                ; $468B: $E0 $30
    ret nz                                        ; $468D: $C0

    ret nz                                        ; $468E: $C0

    nop                                           ; $468F: $00
    ret nz                                        ; $4690: $C0

    add b                                         ; $4691: $80
    add b                                         ; $4692: $80
    nop                                           ; $4693: $00
    add b                                         ; $4694: $80
    nop                                           ; $4695: $00
    add b                                         ; $4696: $80
    nop                                           ; $4697: $00
    ld b, b                                       ; $4698: $40
    add b                                         ; $4699: $80
    jr nz, jr_01F_465C                            ; $469A: $20 $C0

    sub b                                         ; $469C: $90
    ld h, b                                       ; $469D: $60
    ldh a, [rP1]                                  ; $469E: $F0 $00
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
    nop                                           ; $46AC: $00
    nop                                           ; $46AD: $00
    nop                                           ; $46AE: $00
    nop                                           ; $46AF: $00
    nop                                           ; $46B0: $00
    nop                                           ; $46B1: $00
    nop                                           ; $46B2: $00
    nop                                           ; $46B3: $00
    ld a, b                                       ; $46B4: $78
    nop                                           ; $46B5: $00
    ld b, [hl]                                    ; $46B6: $46
    jr c, @+$23                                   ; $46B7: $38 $21

    ld e, $12                                     ; $46B9: $1E $12
    rrca                                          ; $46BB: $0F
    ret                                           ; $46BC: $C9


jr_01F_46BD:
    rlca                                          ; $46BD: $07
    or $43                                        ; $46BE: $F6 $43
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
    add b                                         ; $46CE: $80
    nop                                           ; $46CF: $00
    ld b, b                                       ; $46D0: $40
    add b                                         ; $46D1: $80
    and b                                         ; $46D2: $A0
    ret nz                                        ; $46D3: $C0

    ret nc                                        ; $46D4: $D0

    ldh [$FFE8], a                                ; $46D5: $E0 $E8
    ldh a, [$FF94]                                ; $46D7: $F0 $94
    ld hl, sp+$44                                 ; $46D9: $F8 $44
    ld hl, sp+$24                                 ; $46DB: $F8 $24
    ret c                                         ; $46DD: $D8

    ld hl, sp+$00                                 ; $46DE: $F8 $00
    nop                                           ; $46E0: $00
    nop                                           ; $46E1: $00
    ld bc, $0100                                  ; $46E2: $01 $00 $01
    nop                                           ; $46E5: $00
    ld bc, $3100                                  ; $46E6: $01 $00 $31
    nop                                           ; $46E9: $00
    ld d, c                                       ; $46EA: $51
    jr nz, jr_01F_4677                            ; $46EB: $20 $8A

    ld [hl], c                                    ; $46ED: $71
    add a                                         ; $46EE: $87
    ld a, b                                       ; $46EF: $78
    ld b, e                                       ; $46F0: $43
    inc a                                         ; $46F1: $3C
    jr nc, jr_01F_4703                            ; $46F2: $30 $0F

    rrca                                          ; $46F4: $0F
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
    adc a                                         ; $4700: $8F
    nop                                           ; $4701: $00
    ccf                                           ; $4702: $3F

jr_01F_4703:
    rlca                                          ; $4703: $07
    ld e, a                                       ; $4704: $5F
    ld l, $E6                                     ; $4705: $2E $E6
    jr jr_01F_4741                                ; $4707: $18 $38

    ret nz                                        ; $4709: $C0

    sub b                                         ; $470A: $90
    ldh [$FF88], a                                ; $470B: $E0 $88
    ldh a, [$FF38]                                ; $470D: $F0 $38
    ret nz                                        ; $470F: $C0

    ldh a, [rP1]                                  ; $4710: $F0 $00
    sub e                                         ; $4712: $93
    ld h, b                                       ; $4713: $60
    cp a                                          ; $4714: $BF
    ld b, d                                       ; $4715: $42
    ld [hl], d                                    ; $4716: $72
    inc c                                         ; $4717: $0C
    ld d, d                                       ; $4718: $52
    inc l                                         ; $4719: $2C
    ld l, h                                       ; $471A: $6C
    db $10                                        ; $471B: $10
    adc b                                         ; $471C: $88
    ld [hl], b                                    ; $471D: $70
    ld hl, sp+$00                                 ; $471E: $F8 $00
    nop                                           ; $4720: $00
    nop                                           ; $4721: $00
    nop                                           ; $4722: $00
    nop                                           ; $4723: $00
    nop                                           ; $4724: $00
    nop                                           ; $4725: $00
    nop                                           ; $4726: $00
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
    nop                                           ; $4733: $00
    nop                                           ; $4734: $00
    nop                                           ; $4735: $00
    nop                                           ; $4736: $00
    nop                                           ; $4737: $00
    nop                                           ; $4738: $00
    nop                                           ; $4739: $00
    nop                                           ; $473A: $00
    nop                                           ; $473B: $00
    add b                                         ; $473C: $80
    nop                                           ; $473D: $00
    add b                                         ; $473E: $80
    nop                                           ; $473F: $00
    ld [bc], a                                    ; $4740: $02

jr_01F_4741:
    nop                                           ; $4741: $00
    inc b                                         ; $4742: $04
    nop                                           ; $4743: $00
    rlca                                          ; $4744: $07
    nop                                           ; $4745: $00
    dec c                                         ; $4746: $0D
    ld [bc], a                                    ; $4747: $02
    inc c                                         ; $4748: $0C
    rlca                                          ; $4749: $07
    db $10                                        ; $474A: $10
    rrca                                          ; $474B: $0F
    ld de, $0E0E                                  ; $474C: $11 $0E $0E
    ld bc, $0306                                  ; $474F: $01 $06 $03
    inc bc                                        ; $4752: $03
    inc b                                         ; $4753: $04
    push bc                                       ; $4754: $C5
    ld [$40A1], sp                                ; $4755: $08 $A1 $40
    ld e, b                                       ; $4758: $58
    jr nz, jr_01F_478E                            ; $4759: $20 $33

    nop                                           ; $475B: $00
    inc b                                         ; $475C: $04
    inc bc                                        ; $475D: $03
    rlca                                          ; $475E: $07
    nop                                           ; $475F: $00
    ld a, $0C                                     ; $4760: $3E $0C
    db $FC                                        ; $4762: $FC
    jr c, jr_01F_479E                             ; $4763: $38 $39

    ldh [$FFE6], a                                ; $4765: $E0 $E6
    ld bc, $0798                                  ; $4767: $01 $98 $07
    ldh [$FF1F], a                                ; $476A: $E0 $1F
    sbc a                                         ; $476C: $9F
    ld h, b                                       ; $476D: $60
    ld h, b                                       ; $476E: $60
    add b                                         ; $476F: $80
    ret nz                                        ; $4770: $C0

    nop                                           ; $4771: $00
    ld b, b                                       ; $4772: $40
    and b                                         ; $4773: $A0
    ldh [c], a                                    ; $4774: $E2
    db $10                                        ; $4775: $10
    ld b, $80                                     ; $4776: $06 $80
    ld a, [bc]                                    ; $4778: $0A
    inc b                                         ; $4779: $04
    call nc, $9808                                ; $477A: $D4 $08 $98
    nop                                           ; $477D: $00
    nop                                           ; $477E: $00
    nop                                           ; $477F: $00
    nop                                           ; $4780: $00
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

jr_01F_478E:
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

jr_01F_479E:
    add a                                         ; $479E: $87
    nop                                           ; $479F: $00
    nop                                           ; $47A0: $00
    nop                                           ; $47A1: $00
    nop                                           ; $47A2: $00
    nop                                           ; $47A3: $00
    nop                                           ; $47A4: $00
    nop                                           ; $47A5: $00
    nop                                           ; $47A6: $00
    nop                                           ; $47A7: $00
    nop                                           ; $47A8: $00
    nop                                           ; $47A9: $00
    nop                                           ; $47AA: $00
    nop                                           ; $47AB: $00
    nop                                           ; $47AC: $00
    nop                                           ; $47AD: $00
    nop                                           ; $47AE: $00
    nop                                           ; $47AF: $00
    nop                                           ; $47B0: $00
    nop                                           ; $47B1: $00
    nop                                           ; $47B2: $00
    nop                                           ; $47B3: $00
    nop                                           ; $47B4: $00
    nop                                           ; $47B5: $00
    ld b, b                                       ; $47B6: $40
    nop                                           ; $47B7: $00
    add b                                         ; $47B8: $80
    nop                                           ; $47B9: $00
    ldh [rP1], a                                  ; $47BA: $E0 $00
    ld b, b                                       ; $47BC: $40
    add b                                         ; $47BD: $80
    ldh [rP1], a                                  ; $47BE: $E0 $00
    inc b                                         ; $47C0: $04
    nop                                           ; $47C1: $00
    ld [$1F00], sp                                ; $47C2: $08 $00 $1F
    nop                                           ; $47C5: $00
    inc [hl]                                      ; $47C6: $34
    dec bc                                        ; $47C7: $0B
    inc sp                                        ; $47C8: $33
    inc e                                         ; $47C9: $1C
    ld b, e                                       ; $47CA: $43
    inc a                                         ; $47CB: $3C
    ld b, [hl]                                    ; $47CC: $46
    add hl, sp                                    ; $47CD: $39
    add hl, sp                                    ; $47CE: $39
    ld b, $1B                                     ; $47CF: $06 $1B
    inc c                                         ; $47D1: $0C
    dec c                                         ; $47D2: $0D
    ld [bc], a                                    ; $47D3: $02
    rlca                                          ; $47D4: $07
    nop                                           ; $47D5: $00
    ret z                                         ; $47D6: $C8

    inc b                                         ; $47D7: $04
    and b                                         ; $47D8: $A0
    ld b, b                                       ; $47D9: $40
    sub c                                         ; $47DA: $91
    ld h, b                                       ; $47DB: $60
    ld [hl], d                                    ; $47DC: $72
    ld bc, $0003                                  ; $47DD: $01 $03 $00
    nop                                           ; $47E0: $00
    nop                                           ; $47E1: $00
    ldh a, [rP1]                                  ; $47E2: $F0 $00
    ld hl, sp-$10                                 ; $47E4: $F8 $F0
    rst RST_38                                    ; $47E6: $FF
    ldh [$FFFA], a                                ; $47E7: $E0 $FA
    inc b                                         ; $47E9: $04
    pop bc                                        ; $47EA: $C1
    ld a, $01                                     ; $47EB: $3E $01
    cp $FE                                        ; $47ED: $FE $FE
    nop                                           ; $47EF: $00
    inc c                                         ; $47F0: $0C
    nop                                           ; $47F1: $00
    sub h                                         ; $47F2: $94
    ld [$8814], sp                                ; $47F3: $08 $14 $88
    adc h                                         ; $47F6: $8C
    nop                                           ; $47F7: $00
    nop                                           ; $47F8: $00
    nop                                           ; $47F9: $00
    ldh [rP1], a                                  ; $47FA: $E0 $00
    ld b, b                                       ; $47FC: $40
    add b                                         ; $47FD: $80
    add b                                         ; $47FE: $80
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

jr_01F_4818:
    nop                                           ; $4818: $00
    nop                                           ; $4819: $00
    add b                                         ; $481A: $80
    nop                                           ; $481B: $00
    nop                                           ; $481C: $00
    nop                                           ; $481D: $00

jr_01F_481E:
    add b                                         ; $481E: $80
    nop                                           ; $481F: $00
    nop                                           ; $4820: $00
    nop                                           ; $4821: $00
    nop                                           ; $4822: $00
    nop                                           ; $4823: $00
    nop                                           ; $4824: $00
    nop                                           ; $4825: $00
    ld [hl], b                                    ; $4826: $70
    nop                                           ; $4827: $00
    ld a, c                                       ; $4828: $79
    jr nc, jr_01F_4894                            ; $4829: $30 $69

    jr nc, @+$41                                  ; $482B: $30 $3F

    nop                                           ; $482D: $00
    dec de                                        ; $482E: $1B
    inc b                                         ; $482F: $04
    ld a, [hl+]                                   ; $4830: $2A
    rra                                           ; $4831: $1F
    ld sp, $7F0E                                  ; $4832: $31 $0E $7F
    nop                                           ; $4835: $00
    add h                                         ; $4836: $84
    ld a, e                                       ; $4837: $7B
    call nz, Call_01F_7F3B                        ; $4838: $C4 $3B $7F
    nop                                           ; $483B: $00
    adc [hl]                                      ; $483C: $8E
    ld [hl], c                                    ; $483D: $71
    ld sp, hl                                     ; $483E: $F9

jr_01F_483F:
    nop                                           ; $483F: $00
    nop                                           ; $4840: $00
    nop                                           ; $4841: $00
    nop                                           ; $4842: $00
    nop                                           ; $4843: $00
    nop                                           ; $4844: $00
    nop                                           ; $4845: $00
    ldh [rP1], a                                  ; $4846: $E0 $00
    ldh [$FFC0], a                                ; $4848: $E0 $C0
    ld h, b                                       ; $484A: $60
    ret nz                                        ; $484B: $C0

    ret nz                                        ; $484C: $C0

    nop                                           ; $484D: $00
    nop                                           ; $484E: $00
    nop                                           ; $484F: $00
    add b                                         ; $4850: $80
    nop                                           ; $4851: $00
    add b                                         ; $4852: $80
    nop                                           ; $4853: $00
    ret nz                                        ; $4854: $C0

    nop                                           ; $4855: $00
    jr nz, jr_01F_4818                            ; $4856: $20 $C0

    ld h, b                                       ; $4858: $60
    add b                                         ; $4859: $80
    ret nz                                        ; $485A: $C0

    nop                                           ; $485B: $00
    jr nz, jr_01F_481E                            ; $485C: $20 $C0

    ldh [rP1], a                                  ; $485E: $E0 $00
    inc l                                         ; $4860: $2C
    nop                                           ; $4861: $00
    xor [hl]                                      ; $4862: $AE

jr_01F_4863:
    inc b                                         ; $4863: $04
    ld a, [hl]                                    ; $4864: $7E
    inc b                                         ; $4865: $04
    ld c, a                                       ; $4866: $4F
    ld [hl], $45                                  ; $4867: $36 $45
    ld a, [hl-]                                   ; $4869: $3A
    daa                                           ; $486A: $27
    jr jr_01F_4892                                ; $486B: $18 $25

    jr jr_01F_4881                                ; $486D: $18 $12

    dec c                                         ; $486F: $0D
    dec bc                                        ; $4870: $0B
    inc b                                         ; $4871: $04
    dec b                                         ; $4872: $05
    ld [bc], a                                    ; $4873: $02
    inc bc                                        ; $4874: $03
    nop                                           ; $4875: $00
    ld bc, $0200                                  ; $4876: $01 $00 $02
    ld bc, $0102                                  ; $4879: $01 $02 $01
    inc b                                         ; $487C: $04
    inc bc                                        ; $487D: $03
    inc b                                         ; $487E: $04
    inc bc                                        ; $487F: $03
    dec e                                         ; $4880: $1D

jr_01F_4881:
    ld [$193E], sp                                ; $4881: $08 $3E $19
    ld [$B411], a                                 ; $4884: $EA $11 $B4
    ld b, e                                       ; $4887: $43
    or h                                          ; $4888: $B4
    db $E3                                        ; $4889: $E3
    add hl, bc                                    ; $488A: $09
    or $BA                                        ; $488B: $F6 $BA
    ld b, h                                       ; $488D: $44
    db $F4                                        ; $488E: $F4
    ld [$E058], sp                                ; $488F: $08 $58 $E0

jr_01F_4892:
    ldh a, [rP1]                                  ; $4892: $F0 $00

jr_01F_4894:
    xor b                                         ; $4894: $A8
    ld d, b                                       ; $4895: $50
    add sp, $10                                   ; $4896: $E8 $10
    and h                                         ; $4898: $A4
    jr jr_01F_483F                                ; $4899: $18 $A4

    jr jr_01F_48B1                                ; $489B: $18 $14

    ld [$000C], sp                                ; $489D: $08 $0C $00
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
    nop                                           ; $48AC: $00
    nop                                           ; $48AD: $00
    nop                                           ; $48AE: $00
    nop                                           ; $48AF: $00
    nop                                           ; $48B0: $00

jr_01F_48B1:
    nop                                           ; $48B1: $00
    ld h, h                                       ; $48B2: $64
    nop                                           ; $48B3: $00
    push hl                                       ; $48B4: $E5
    ld b, b                                       ; $48B5: $40
    xor $40                                       ; $48B6: $EE $40
    ldh a, [c]                                    ; $48B8: $F2
    call z, $8C52                                 ; $48B9: $CC $52 $8C
    and h                                         ; $48BC: $A4
    jr jr_01F_4863                                ; $48BD: $18 $A4

    jr jr_01F_4863                                ; $48BF: $18 $A2

    ld b, c                                       ; $48C1: $41
    pop bc                                        ; $48C2: $C1
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
    ld h, c                                       ; $48E0: $61
    nop                                           ; $48E1: $00
    ld e, [hl]                                    ; $48E2: $5E
    ld hl, $0A37                                  ; $48E3: $21 $37 $0A
    ld [hl], e                                    ; $48E6: $73
    dec l                                         ; $48E7: $2D
    rst RST_38                                    ; $48E8: $FF
    ld h, c                                       ; $48E9: $61
    ei                                            ; $48EA: $FB
    ld h, l                                       ; $48EB: $65
    ld [hl], e                                    ; $48EC: $73
    inc c                                         ; $48ED: $0C
    ld a, [de]                                    ; $48EE: $1A
    dec b                                         ; $48EF: $05
    dec a                                         ; $48F0: $3D
    ld [de], a                                    ; $48F1: $12
    ccf                                           ; $48F2: $3F
    inc e                                         ; $48F3: $1C
    ld a, $11                                     ; $48F4: $3E $11
    inc de                                        ; $48F6: $13
    inc c                                         ; $48F7: $0C
    inc e                                         ; $48F8: $1C
    inc bc                                        ; $48F9: $03
    rra                                           ; $48FA: $1F
    nop                                           ; $48FB: $00
    dec de                                        ; $48FC: $1B
    inc b                                         ; $48FD: $04
    dec de                                        ; $48FE: $1B
    inc b                                         ; $48FF: $04
    add b                                         ; $4900: $80
    nop                                           ; $4901: $00
    ldh a, [rP1]                                  ; $4902: $F0 $00
    ld hl, sp-$30                                 ; $4904: $F8 $D0
    db $FD                                        ; $4906: $FD
    ld d, b                                       ; $4907: $50
    rst RST_38                                    ; $4908: $FF
    sub c                                         ; $4909: $91
    db $EB                                        ; $490A: $EB
    sub c                                         ; $490B: $91
    db $ED                                        ; $490C: $ED
    ld [de], a                                    ; $490D: $12
    cp $00                                        ; $490E: $FE $00
    and $18                                       ; $4910: $E6 $18
    ld [$491C], a                                 ; $4912: $EA $1C $49
    cp [hl]                                       ; $4915: $BE
    ld h, e                                       ; $4916: $63
    sbc h                                         ; $4917: $9C
    rst RST_38                                    ; $4918: $FF
    ld b, b                                       ; $4919: $40
    jp nc, $BF3D                                  ; $491A: $D2 $3D $BF

    ld b, b                                       ; $491D: $40
    ld h, [hl]                                    ; $491E: $66
    sbc c                                         ; $491F: $99
    call $9132                                    ; $4920: $CD $32 $91
    ld l, [hl]                                    ; $4923: $6E
    ld a, a                                       ; $4924: $7F
    nop                                           ; $4925: $00
    rrca                                          ; $4926: $0F
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
    nop                                           ; $493C: $00
    nop                                           ; $493D: $00
    nop                                           ; $493E: $00
    nop                                           ; $493F: $00
    ld hl, sp+$00                                 ; $4940: $F8 $00
    ld h, $D8                                     ; $4942: $26 $D8
    ld sp, hl                                     ; $4944: $F9
    ld b, $62                                     ; $4945: $06 $62
    sbc h                                         ; $4947: $9C
    and d                                         ; $4948: $A2
    ld e, h                                       ; $4949: $5C
    cp h                                          ; $494A: $BC
    ld b, b                                       ; $494B: $40
    call nc, $FC28                                ; $494C: $D4 $28 $FC
    nop                                           ; $494F: $00
    nop                                           ; $4950: $00
    nop                                           ; $4951: $00
    nop                                           ; $4952: $00
    nop                                           ; $4953: $00
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
    nop                                           ; $495E: $00
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
    ret nz                                        ; $4978: $C0

    nop                                           ; $4979: $00
    ret nz                                        ; $497A: $C0

    add b                                         ; $497B: $80
    ret nz                                        ; $497C: $C0

    add b                                         ; $497D: $80
    add b                                         ; $497E: $80
    nop                                           ; $497F: $00
    jr jr_01F_4982                                ; $4980: $18 $00

jr_01F_4982:
    rla                                           ; $4982: $17
    ld [$02FD], sp                                ; $4983: $08 $FD $02
    sbc h                                         ; $4986: $9C
    ld l, e                                       ; $4987: $6B
    ld l, a                                       ; $4988: $6F
    db $10                                        ; $4989: $10
    ld e, $01                                     ; $498A: $1E $01
    rla                                           ; $498C: $17
    ld a, [bc]                                    ; $498D: $0A
    rra                                           ; $498E: $1F
    dec bc                                        ; $498F: $0B

jr_01F_4990:
    rra                                           ; $4990: $1F
    rlca                                          ; $4991: $07
    rrca                                          ; $4992: $0F
    rlca                                          ; $4993: $07
    rrca                                          ; $4994: $0F
    ld bc, $000F                                  ; $4995: $01 $0F $00
    ld c, $00                                     ; $4998: $0E $00
    dec c                                         ; $499A: $0D
    nop                                           ; $499B: $00
    dec c                                         ; $499C: $0D
    nop                                           ; $499D: $00
    inc de                                        ; $499E: $13
    inc c                                         ; $499F: $0C
    ld h, b                                       ; $49A0: $60
    nop                                           ; $49A1: $00
    or b                                          ; $49A2: $B0
    ld b, b                                       ; $49A3: $40
    db $FC                                        ; $49A4: $FC
    or b                                          ; $49A5: $B0
    rst RST_38                                    ; $49A6: $FF
    ld e, h                                       ; $49A7: $5C
    rst RST_38                                    ; $49A8: $FF
    ld l, [hl]                                    ; $49A9: $6E
    cp $64                                        ; $49AA: $FE $64
    db $F4                                        ; $49AC: $F4
    nop                                           ; $49AD: $00
    or b                                          ; $49AE: $B0
    ld b, b                                       ; $49AF: $40
    ld hl, sp+$00                                 ; $49B0: $F8 $00
    xor h                                         ; $49B2: $AC
    ld [hl], b                                    ; $49B3: $70
    xor h                                         ; $49B4: $AC
    ld [hl], b                                    ; $49B5: $70
    db $FC                                        ; $49B6: $FC
    ld h, b                                       ; $49B7: $60
    db $F4                                        ; $49B8: $F4
    ld [$A47A], sp                                ; $49B9: $08 $7A $A4
    ld l, $D0                                     ; $49BC: $2E $D0
    jr z, jr_01F_4990                             ; $49BE: $28 $D0

    sbc c                                         ; $49C0: $99
    ld h, [hl]                                    ; $49C1: $66
    ld l, a                                       ; $49C2: $6F
    nop                                           ; $49C3: $00
    rrca                                          ; $49C4: $0F
    ld b, $0F                                     ; $49C5: $06 $0F
    ld b, $07                                     ; $49C7: $06 $07
    ld [bc], a                                    ; $49C9: $02
    rlca                                          ; $49CA: $07
    nop                                           ; $49CB: $00
    rlca                                          ; $49CC: $07
    ld [bc], a                                    ; $49CD: $02
    rlca                                          ; $49CE: $07
    ld [bc], a                                    ; $49CF: $02
    rlca                                          ; $49D0: $07
    ld [bc], a                                    ; $49D1: $02
    inc bc                                        ; $49D2: $03
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
    ld b, c                                       ; $49E0: $41
    add b                                         ; $49E1: $80
    ret nz                                        ; $49E2: $C0

    nop                                           ; $49E3: $00
    ret nz                                        ; $49E4: $C0

    add b                                         ; $49E5: $80
    add b                                         ; $49E6: $80
    nop                                           ; $49E7: $00
    nop                                           ; $49E8: $00
    nop                                           ; $49E9: $00
    nop                                           ; $49EA: $00
    nop                                           ; $49EB: $00
    ld bc, $0100                                  ; $49EC: $01 $00 $01
    nop                                           ; $49EF: $00
    ld bc, $0100                                  ; $49F0: $01 $00 $01
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
    rlca                                          ; $4A0C: $07
    nop                                           ; $4A0D: $00
    ld a, [bc]                                    ; $4A0E: $0A
    dec b                                         ; $4A0F: $05
    ld [hl], d                                    ; $4A10: $72
    dec c                                         ; $4A11: $0D
    ld [hl], d                                    ; $4A12: $72
    dec l                                         ; $4A13: $2D
    ld [hl], d                                    ; $4A14: $72
    dec l                                         ; $4A15: $2D
    ld l, e                                       ; $4A16: $6B
    inc [hl]                                      ; $4A17: $34
    cpl                                           ; $4A18: $2F
    db $10                                        ; $4A19: $10
    dec a                                         ; $4A1A: $3D
    ld [bc], a                                    ; $4A1B: $02
    dec l                                         ; $4A1C: $2D
    rla                                           ; $4A1D: $17
    jr nc, jr_01F_4A2F                            ; $4A1E: $30 $0F

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
    add b                                         ; $4A2E: $80

jr_01F_4A2F:
    nop                                           ; $4A2F: $00
    ld h, b                                       ; $4A30: $60
    add b                                         ; $4A31: $80
    ldh [rLCDC], a                                ; $4A32: $E0 $40
    ldh [rLCDC], a                                ; $4A34: $E0 $40
    ld h, b                                       ; $4A36: $60
    ret nz                                        ; $4A37: $C0

    ld h, b                                       ; $4A38: $60
    add b                                         ; $4A39: $80
    and b                                         ; $4A3A: $A0
    ld b, b                                       ; $4A3B: $40
    and b                                         ; $4A3C: $A0
    ld b, b                                       ; $4A3D: $40
    ld h, b                                       ; $4A3E: $60
    add b                                         ; $4A3F: $80
    ld l, l                                       ; $4A40: $6D
    sub d                                         ; $4A41: $92
    cp $00                                        ; $4A42: $FE $00
    sub $38                                       ; $4A44: $D6 $38
    ld a, h                                       ; $4A46: $7C
    nop                                           ; $4A47: $00
    xor d                                         ; $4A48: $AA
    ld d, h                                       ; $4A49: $54
    cp d                                          ; $4A4A: $BA
    ld b, h                                       ; $4A4B: $44
    add hl, hl                                    ; $4A4C: $29
    add $29                                       ; $4A4D: $C6 $29
    add $45                                       ; $4A4F: $C6 $45
    add d                                         ; $4A51: $82
    add e                                         ; $4A52: $83
    nop                                           ; $4A53: $00
    nop                                           ; $4A54: $00
    nop                                           ; $4A55: $00
    nop                                           ; $4A56: $00
    nop                                           ; $4A57: $00
    nop                                           ; $4A58: $00
    nop                                           ; $4A59: $00
    nop                                           ; $4A5A: $00
    nop                                           ; $4A5B: $00

jr_01F_4A5C:
    nop                                           ; $4A5C: $00
    nop                                           ; $4A5D: $00
    nop                                           ; $4A5E: $00
    nop                                           ; $4A5F: $00
    inc bc                                        ; $4A60: $03
    nop                                           ; $4A61: $00
    rlca                                          ; $4A62: $07
    ld [bc], a                                    ; $4A63: $02
    rrca                                          ; $4A64: $0F
    ld b, $0F                                     ; $4A65: $06 $0F
    ld b, $07                                     ; $4A67: $06 $07
    nop                                           ; $4A69: $00
    ld bc, $0700                                  ; $4A6A: $01 $00 $07
    ld bc, $073F                                  ; $4A6D: $01 $3F $07
    rst RST_08                                    ; $4A70: $CF
    ld [hl-], a                                   ; $4A71: $32
    or a                                          ; $4A72: $B7
    ld c, b                                       ; $4A73: $48
    ld d, a                                       ; $4A74: $57
    add hl, bc                                    ; $4A75: $09
    rra                                           ; $4A76: $1F
    ld bc, $0003                                  ; $4A77: $01 $03 $00
    rlca                                          ; $4A7A: $07
    inc bc                                        ; $4A7B: $03
    rrca                                          ; $4A7C: $0F
    rlca                                          ; $4A7D: $07
    rrca                                          ; $4A7E: $0F
    nop                                           ; $4A7F: $00
    ld a, a                                       ; $4A80: $7F
    xor h                                         ; $4A81: $AC
    ccf                                           ; $4A82: $3F
    rst RST_10                                    ; $4A83: $D7
    rst RST_38                                    ; $4A84: $FF
    dec de                                        ; $4A85: $1B
    cp a                                          ; $4A86: $BF
    ld e, c                                       ; $4A87: $59
    add hl, sp                                    ; $4A88: $39
    ret nz                                        ; $4A89: $C0

    xor h                                         ; $4A8A: $AC
    ld d, b                                       ; $4A8B: $50
    sbc a                                         ; $4A8C: $9F
    ld h, h                                       ; $4A8D: $64
    rst RST_28                                    ; $4A8E: $EF
    sbc e                                         ; $4A8F: $9B
    db $EB                                        ; $4A90: $EB
    dec a                                         ; $4A91: $3D
    cp a                                          ; $4A92: $BF
    ld e, d                                       ; $4A93: $5A
    rst RST_18                                    ; $4A94: $DF
    and b                                         ; $4A95: $A0

jr_01F_4A96:
    jp c, $F9A4                                   ; $4A96: $DA $A4 $F9

    ld b, $BF                                     ; $4A99: $06 $BF
    jr jr_01F_4A5C                                ; $4A9B: $18 $BF

    nop                                           ; $4A9D: $00
    add b                                         ; $4A9E: $80
    nop                                           ; $4A9F: $00
    nop                                           ; $4AA0: $00
    nop                                           ; $4AA1: $00
    ret nz                                        ; $4AA2: $C0

    nop                                           ; $4AA3: $00
    ret nz                                        ; $4AA4: $C0

    add b                                         ; $4AA5: $80
    add b                                         ; $4AA6: $80
    nop                                           ; $4AA7: $00
    nop                                           ; $4AA8: $00
    nop                                           ; $4AA9: $00
    nop                                           ; $4AAA: $00
    nop                                           ; $4AAB: $00
    nop                                           ; $4AAC: $00
    nop                                           ; $4AAD: $00
    add e                                         ; $4AAE: $83
    nop                                           ; $4AAF: $00
    add a                                         ; $4AB0: $87
    inc bc                                        ; $4AB1: $03
    ld c, a                                       ; $4AB2: $4F
    add [hl]                                      ; $4AB3: $86
    ld l, $C0                                     ; $4AB4: $2E $C0
    push hl                                       ; $4AB6: $E5
    nop                                           ; $4AB7: $00
    ld [bc], a                                    ; $4AB8: $02
    ld bc, $010E                                  ; $4AB9: $01 $0E $01
    inc bc                                        ; $4ABC: $03
    nop                                           ; $4ABD: $00
    inc b                                         ; $4ABE: $04
    nop                                           ; $4ABF: $00
    ldh a, [c]                                    ; $4AC0: $F2
    ld h, c                                       ; $4AC1: $61
    ld [hl], d                                    ; $4AC2: $72
    ld hl, $3069                                  ; $4AC3: $21 $69 $30
    add hl, hl                                    ; $4AC6: $29
    db $10                                        ; $4AC7: $10
    add hl, sp                                    ; $4AC8: $39
    nop                                           ; $4AC9: $00
    daa                                           ; $4ACA: $27
    jr jr_01F_4A96                                ; $4ACB: $18 $C9

    ld a, $52                                     ; $4ACD: $3E $52
    cp l                                          ; $4ACF: $BD
    ld h, h                                       ; $4AD0: $64
    sbc e                                         ; $4AD1: $9B
    xor d                                         ; $4AD2: $AA
    rla                                           ; $4AD3: $17
    add hl, sp                                    ; $4AD4: $39
    ld b, $F7                                     ; $4AD5: $06 $F7
    ld [$F10A], sp                                ; $4AD7: $08 $0A $F1
    ld [hl], $C1                                  ; $4ADA: $36 $C1
    ret z                                         ; $4ADC: $C8

    rlca                                          ; $4ADD: $07
    rrca                                          ; $4ADE: $0F
    nop                                           ; $4ADF: $00
    ld b, b                                       ; $4AE0: $40
    add b                                         ; $4AE1: $80
    ld b, b                                       ; $4AE2: $40
    add b                                         ; $4AE3: $80
    ld b, b                                       ; $4AE4: $40
    add b                                         ; $4AE5: $80
    ld b, b                                       ; $4AE6: $40
    add b                                         ; $4AE7: $80
    ld b, b                                       ; $4AE8: $40
    add b                                         ; $4AE9: $80
    ld b, b                                       ; $4AEA: $40
    add b                                         ; $4AEB: $80
    ld b, b                                       ; $4AEC: $40
    add b                                         ; $4AED: $80
    adc h                                         ; $4AEE: $8C
    nop                                           ; $4AEF: $00
    sub h                                         ; $4AF0: $94
    ld [$18E4], sp                                ; $4AF1: $08 $E4 $18
    ret z                                         ; $4AF4: $C8

    jr nc, jr_01F_4B67                            ; $4AF5: $30 $70

    add b                                         ; $4AF7: $80
    ret nz                                        ; $4AF8: $C0

    nop                                           ; $4AF9: $00
    add b                                         ; $4AFA: $80
    nop                                           ; $4AFB: $00
    add b                                         ; $4AFC: $80
    nop                                           ; $4AFD: $00
    nop                                           ; $4AFE: $00
    nop                                           ; $4AFF: $00
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
    jp $BD00                                      ; $4B1C: $C3 $00 $BD


    ld b, d                                       ; $4B1F: $42
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
    nop                                           ; $4B3C: $00
    nop                                           ; $4B3D: $00
    add b                                         ; $4B3E: $80
    nop                                           ; $4B3F: $00
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
    ld [bc], a                                    ; $4B5A: $02
    nop                                           ; $4B5B: $00
    pop bc                                        ; $4B5C: $C1
    nop                                           ; $4B5D: $00
    ldh [c], a                                    ; $4B5E: $E2
    ld b, c                                       ; $4B5F: $41
    nop                                           ; $4B60: $00
    nop                                           ; $4B61: $00
    nop                                           ; $4B62: $00
    nop                                           ; $4B63: $00
    nop                                           ; $4B64: $00
    nop                                           ; $4B65: $00
    nop                                           ; $4B66: $00

jr_01F_4B67:
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
    add b                                         ; $4B78: $80
    nop                                           ; $4B79: $00
    and b                                         ; $4B7A: $A0
    nop                                           ; $4B7B: $00
    ret nz                                        ; $4B7C: $C0

    nop                                           ; $4B7D: $00
    ld b, b                                       ; $4B7E: $40
    add b                                         ; $4B7F: $80
    ld a, a                                       ; $4B80: $7F
    nop                                           ; $4B81: $00
    add b                                         ; $4B82: $80
    ld a, a                                       ; $4B83: $7F
    sub c                                         ; $4B84: $91
    ld l, [hl]                                    ; $4B85: $6E
    adc b                                         ; $4B86: $88
    ld [hl], a                                    ; $4B87: $77
    adc a                                         ; $4B88: $8F
    ld [hl], b                                    ; $4B89: $70
    cp b                                          ; $4B8A: $B8
    ld b, a                                       ; $4B8B: $47
    adc c                                         ; $4B8C: $89
    halt                                          ; $4B8D: $76
    add h                                         ; $4B8E: $84
    ld a, e                                       ; $4B8F: $7B
    add h                                         ; $4B90: $84
    ld a, e                                       ; $4B91: $7B
    add h                                         ; $4B92: $84
    ld a, e                                       ; $4B93: $7B
    add b                                         ; $4B94: $80
    ld a, a                                       ; $4B95: $7F
    ld a, a                                       ; $4B96: $7F
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
    nop                                           ; $4BA1: $00
    nop                                           ; $4BA2: $00
    rst RST_38                                    ; $4BA3: $FF
    nop                                           ; $4BA4: $00
    rst RST_38                                    ; $4BA5: $FF
    add b                                         ; $4BA6: $80
    ld a, a                                       ; $4BA7: $7F
    add b                                         ; $4BA8: $80
    ld a, a                                       ; $4BA9: $7F
    ld b, b                                       ; $4BAA: $40
    cp a                                          ; $4BAB: $BF
    sbc [hl]                                      ; $4BAC: $9E

jr_01F_4BAD:
    ld h, c                                       ; $4BAD: $61
    ld bc, $01FE                                  ; $4BAE: $01 $FE $01
    cp $06                                        ; $4BB1: $FE $06
    ld sp, hl                                     ; $4BB3: $F9
    nop                                           ; $4BB4: $00
    rst RST_38                                    ; $4BB5: $FF
    rst RST_38                                    ; $4BB6: $FF
    nop                                           ; $4BB7: $00
    nop                                           ; $4BB8: $00
    nop                                           ; $4BB9: $00
    nop                                           ; $4BBA: $00
    nop                                           ; $4BBB: $00
    nop                                           ; $4BBC: $00
    nop                                           ; $4BBD: $00
    nop                                           ; $4BBE: $00
    nop                                           ; $4BBF: $00
    rst RST_38                                    ; $4BC0: $FF
    nop                                           ; $4BC1: $00
    nop                                           ; $4BC2: $00
    rst RST_38                                    ; $4BC3: $FF
    db $10                                        ; $4BC4: $10
    rst RST_28                                    ; $4BC5: $EF
    db $10                                        ; $4BC6: $10
    rst RST_28                                    ; $4BC7: $EF
    ld a, b                                       ; $4BC8: $78
    add a                                         ; $4BC9: $87
    daa                                           ; $4BCA: $27
    ret c                                         ; $4BCB: $D8

    jr nz, jr_01F_4BAD                            ; $4BCC: $20 $DF

    jr nz, @-$1F                                  ; $4BCE: $20 $DF

    ld c, b                                       ; $4BD0: $48
    or a                                          ; $4BD1: $B7
    ld b, a                                       ; $4BD2: $47
    cp b                                          ; $4BD3: $B8
    nop                                           ; $4BD4: $00
    rst RST_38                                    ; $4BD5: $FF
    rst RST_38                                    ; $4BD6: $FF
    nop                                           ; $4BD7: $00
    nop                                           ; $4BD8: $00
    nop                                           ; $4BD9: $00
    nop                                           ; $4BDA: $00
    nop                                           ; $4BDB: $00
    nop                                           ; $4BDC: $00
    nop                                           ; $4BDD: $00
    nop                                           ; $4BDE: $00
    nop                                           ; $4BDF: $00
    rst RST_38                                    ; $4BE0: $FF
    nop                                           ; $4BE1: $00
    nop                                           ; $4BE2: $00
    rst RST_38                                    ; $4BE3: $FF
    ld [$08F7], sp                                ; $4BE4: $08 $F7 $08
    rst RST_30                                    ; $4BE7: $F7
    ld [$12F7], sp                                ; $4BE8: $08 $F7 $12
    db $ED                                        ; $4BEB: $ED
    ld de, $23EE                                  ; $4BEC: $11 $EE $23
    call c, $837C                                 ; $4BEF: $DC $7C $83
    nop                                           ; $4BF2: $00
    rst RST_38                                    ; $4BF3: $FF
    nop                                           ; $4BF4: $00
    rst RST_38                                    ; $4BF5: $FF
    rst RST_38                                    ; $4BF6: $FF
    nop                                           ; $4BF7: $00
    nop                                           ; $4BF8: $00
    nop                                           ; $4BF9: $00
    nop                                           ; $4BFA: $00
    nop                                           ; $4BFB: $00
    nop                                           ; $4BFC: $00
    nop                                           ; $4BFD: $00
    nop                                           ; $4BFE: $00
    nop                                           ; $4BFF: $00
    rst RST_38                                    ; $4C00: $FF
    nop                                           ; $4C01: $00
    nop                                           ; $4C02: $00
    rst RST_38                                    ; $4C03: $FF
    nop                                           ; $4C04: $00
    rst RST_38                                    ; $4C05: $FF
    ld bc, $00FE                                  ; $4C06: $01 $FE $00
    rst RST_38                                    ; $4C09: $FF
    nop                                           ; $4C0A: $00
    rst RST_38                                    ; $4C0B: $FF
    ld a, [hl]                                    ; $4C0C: $7E
    add c                                         ; $4C0D: $81
    nop                                           ; $4C0E: $00
    rst RST_38                                    ; $4C0F: $FF
    add b                                         ; $4C10: $80
    ld a, a                                       ; $4C11: $7F
    add b                                         ; $4C12: $80
    ld a, a                                       ; $4C13: $7F
    nop                                           ; $4C14: $00
    rst RST_38                                    ; $4C15: $FF
    rst RST_38                                    ; $4C16: $FF
    nop                                           ; $4C17: $00
    nop                                           ; $4C18: $00
    nop                                           ; $4C19: $00
    nop                                           ; $4C1A: $00
    nop                                           ; $4C1B: $00
    nop                                           ; $4C1C: $00
    nop                                           ; $4C1D: $00
    nop                                           ; $4C1E: $00
    nop                                           ; $4C1F: $00
    cp $00                                        ; $4C20: $FE $00
    ld bc, $01FE                                  ; $4C22: $01 $FE $01
    cp $81                                        ; $4C25: $FE $81
    ld a, [hl]                                    ; $4C27: $7E
    ld b, c                                       ; $4C28: $41
    cp [hl]                                       ; $4C29: $BE
    dec b                                         ; $4C2A: $05
    ld a, [$FA05]                                 ; $4C2B: $FA $05 $FA
    add hl, bc                                    ; $4C2E: $09
    or $31                                        ; $4C2F: $F6 $31
    adc $C1                                       ; $4C31: $CE $C1
    ld a, $01                                     ; $4C33: $3E $01
    cp $86                                        ; $4C35: $FE $86
    ld a, b                                       ; $4C37: $78
    adc b                                         ; $4C38: $88
    ld [hl], b                                    ; $4C39: $70
    sub b                                         ; $4C3A: $90
    ld h, b                                       ; $4C3B: $60
    and b                                         ; $4C3C: $A0
    ld b, b                                       ; $4C3D: $40
    ret nz                                        ; $4C3E: $C0

    nop                                           ; $4C3F: $00
    ret nz                                        ; $4C40: $C0

    nop                                           ; $4C41: $00
    ldh a, [rLCDC]                                ; $4C42: $F0 $40
    ld a, h                                       ; $4C44: $7C
    jr nc, jr_01F_4CB5                            ; $4C45: $30 $6E

    inc a                                         ; $4C47: $3C
    inc sp                                        ; $4C48: $33
    ld e, $31                                     ; $4C49: $1E $31
    rra                                           ; $4C4B: $1F
    jr jr_01F_4C5D                                ; $4C4C: $18 $0F

    jr jr_01F_4C5F                                ; $4C4E: $18 $0F

    inc c                                         ; $4C50: $0C
    rlca                                          ; $4C51: $07
    inc c                                         ; $4C52: $0C
    rlca                                          ; $4C53: $07
    ld b, $03                                     ; $4C54: $06 $03
    ld b, $03                                     ; $4C56: $06 $03
    inc bc                                        ; $4C58: $03
    ld bc, $0103                                  ; $4C59: $01 $03 $01
    nop                                           ; $4C5C: $00

jr_01F_4C5D:
    nop                                           ; $4C5D: $00
    nop                                           ; $4C5E: $00

jr_01F_4C5F:
    nop                                           ; $4C5F: $00
    ld b, $00                                     ; $4C60: $06 $00
    rlca                                          ; $4C62: $07
    ld [bc], a                                    ; $4C63: $02
    rlca                                          ; $4C64: $07
    inc bc                                        ; $4C65: $03
    ld b, $03                                     ; $4C66: $06 $03
    ld b, $03                                     ; $4C68: $06 $03
    ld b, $03                                     ; $4C6A: $06 $03
    ld b, $03                                     ; $4C6C: $06 $03
    ld b, $03                                     ; $4C6E: $06 $03
    ld b, $03                                     ; $4C70: $06 $03
    add [hl]                                      ; $4C72: $86
    inc bc                                        ; $4C73: $03
    and $83                                       ; $4C74: $E6 $83
    ld a, [hl]                                    ; $4C76: $7E
    db $E3                                        ; $4C77: $E3
    ld e, $FB                                     ; $4C78: $1E $FB
    ld b, $FF                                     ; $4C7A: $06 $FF
    nop                                           ; $4C7C: $00
    rst RST_38                                    ; $4C7D: $FF
    nop                                           ; $4C7E: $00
    rst RST_38                                    ; $4C7F: $FF
    ld bc, $0300                                  ; $4C80: $01 $00 $03
    ld bc, $0306                                  ; $4C83: $01 $06 $03
    inc c                                         ; $4C86: $0C
    rlca                                          ; $4C87: $07
    inc c                                         ; $4C88: $0C
    rlca                                          ; $4C89: $07
    inc c                                         ; $4C8A: $0C
    rlca                                          ; $4C8B: $07
    inc c                                         ; $4C8C: $0C
    rlca                                          ; $4C8D: $07
    inc c                                         ; $4C8E: $0C
    rlca                                          ; $4C8F: $07
    inc c                                         ; $4C90: $0C
    rlca                                          ; $4C91: $07
    inc c                                         ; $4C92: $0C
    rlca                                          ; $4C93: $07
    ld b, $03                                     ; $4C94: $06 $03
    ld b, $03                                     ; $4C96: $06 $03
    add [hl]                                      ; $4C98: $86
    inc bc                                        ; $4C99: $03
    add $83                                       ; $4C9A: $C6 $83
    ld h, [hl]                                    ; $4C9C: $66
    jp $E133                                      ; $4C9D: $C3 $33 $E1


    ld [hl], b                                    ; $4CA0: $70
    nop                                           ; $4CA1: $00
    ld hl, sp+$70                                 ; $4CA2: $F8 $70
    adc h                                         ; $4CA4: $8C
    ld hl, sp+$06                                 ; $4CA5: $F8 $06
    db $FC                                        ; $4CA7: $FC
    rlca                                          ; $4CA8: $07
    cp $05                                        ; $4CA9: $FE $05
    rst RST_38                                    ; $4CAB: $FF
    ld bc, $01FF                                  ; $4CAC: $01 $FF $01

jr_01F_4CAF:
    cp $03                                        ; $4CAF: $FE $03
    cp $0F                                        ; $4CB1: $FE $0F
    db $FD                                        ; $4CB3: $FD
    rra                                           ; $4CB4: $1F

jr_01F_4CB5:
    pop af                                        ; $4CB5: $F1
    ld e, $F3                                     ; $4CB6: $1E $F3
    ld e, $FB                                     ; $4CB8: $1E $FB
    inc e                                         ; $4CBA: $1C
    rst RST_30                                    ; $4CBB: $F7
    inc e                                         ; $4CBC: $1C
    rst RST_30                                    ; $4CBD: $F7
    jr jr_01F_4CAF                                ; $4CBE: $18 $EF

    ld b, b                                       ; $4CC0: $40
    nop                                           ; $4CC1: $00
    ld b, b                                       ; $4CC2: $40
    nop                                           ; $4CC3: $00
    ret nz                                        ; $4CC4: $C0

    nop                                           ; $4CC5: $00
    ret nz                                        ; $4CC6: $C0

    nop                                           ; $4CC7: $00
    ret nz                                        ; $4CC8: $C0

    add b                                         ; $4CC9: $80
    ret nz                                        ; $4CCA: $C0

    add b                                         ; $4CCB: $80
    ret nz                                        ; $4CCC: $C0

    add b                                         ; $4CCD: $80
    jp nz, $C280                                  ; $4CCE: $C2 $80 $C2

    add b                                         ; $4CD1: $80
    and $80                                       ; $4CD2: $E6 $80
    and $80                                       ; $4CD4: $E6 $80
    xor $84                                       ; $4CD6: $EE $84
    adc $84                                       ; $4CD8: $CE $84
    sbc $8C                                       ; $4CDA: $DE $8C
    sbc $8C                                       ; $4CDC: $DE $8C
    or $9C                                        ; $4CDE: $F6 $9C
    inc bc                                        ; $4CE0: $03
    ld bc, $0306                                  ; $4CE1: $01 $06 $03
    dec c                                         ; $4CE4: $0D
    rlca                                          ; $4CE5: $07
    add hl, de                                    ; $4CE6: $19
    rrca                                          ; $4CE7: $0F
    inc sp                                        ; $4CE8: $33
    ld e, $63                                     ; $4CE9: $1E $63
    ld a, $C6                                     ; $4CEB: $3E $C6
    ld a, h                                       ; $4CED: $7C
    add [hl]                                      ; $4CEE: $86
    db $FC                                        ; $4CEF: $FC
    inc c                                         ; $4CF0: $0C
    ld hl, sp+$0C                                 ; $4CF1: $F8 $0C
    ld hl, sp+$18                                 ; $4CF3: $F8 $18
    ldh a, [rNR23]                                ; $4CF5: $F0 $18
    ldh a, [$FF30]                                ; $4CF7: $F0 $30
    ldh [$FF30], a                                ; $4CF9: $E0 $30
    ldh [$FF60], a                                ; $4CFB: $E0 $60
    ret nz                                        ; $4CFD: $C0

    ld h, b                                       ; $4CFE: $60
    ret nz                                        ; $4CFF: $C0

    nop                                           ; $4D00: $00
    nop                                           ; $4D01: $00
    nop                                           ; $4D02: $00
    nop                                           ; $4D03: $00
    nop                                           ; $4D04: $00
    nop                                           ; $4D05: $00
    nop                                           ; $4D06: $00

jr_01F_4D07:
    nop                                           ; $4D07: $00
    nop                                           ; $4D08: $00
    nop                                           ; $4D09: $00
    nop                                           ; $4D0A: $00
    nop                                           ; $4D0B: $00
    inc b                                         ; $4D0C: $04
    nop                                           ; $4D0D: $00
    inc c                                         ; $4D0E: $0C
    nop                                           ; $4D0F: $00
    jr jr_01F_4D12                                ; $4D10: $18 $00

jr_01F_4D12:
    jr c, jr_01F_4D24                             ; $4D12: $38 $10

    ld [hl], b                                    ; $4D14: $70
    jr nz, jr_01F_4D07                            ; $4D15: $20 $F0

    ld h, b                                       ; $4D17: $60
    ldh [$FFC0], a                                ; $4D18: $E0 $C0
    ld h, b                                       ; $4D1A: $60
    ret nz                                        ; $4D1B: $C0

    ret nz                                        ; $4D1C: $C0

    add b                                         ; $4D1D: $80
    ret nz                                        ; $4D1E: $C0

    add b                                         ; $4D1F: $80
    nop                                           ; $4D20: $00
    rst RST_38                                    ; $4D21: $FF
    nop                                           ; $4D22: $00
    rst RST_38                                    ; $4D23: $FF

jr_01F_4D24:
    nop                                           ; $4D24: $00
    rst RST_38                                    ; $4D25: $FF
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
    nop                                           ; $4D3A: $00
    nop                                           ; $4D3B: $00
    nop                                           ; $4D3C: $00
    nop                                           ; $4D3D: $00
    nop                                           ; $4D3E: $00
    nop                                           ; $4D3F: $00
    dec de                                        ; $4D40: $1B
    pop af                                        ; $4D41: $F1
    rrca                                          ; $4D42: $0F

jr_01F_4D43:
    ld sp, hl                                     ; $4D43: $F9
    rlca                                          ; $4D44: $07

jr_01F_4D45:
    db $FD                                        ; $4D45: $FD
    inc bc                                        ; $4D46: $03
    cp $01                                        ; $4D47: $FE $01
    rst RST_38                                    ; $4D49: $FF
    nop                                           ; $4D4A: $00
    rst RST_38                                    ; $4D4B: $FF
    nop                                           ; $4D4C: $00
    rst RST_38                                    ; $4D4D: $FF
    nop                                           ; $4D4E: $00
    rst RST_38                                    ; $4D4F: $FF
    nop                                           ; $4D50: $00

jr_01F_4D51:
    rst RST_38                                    ; $4D51: $FF
    nop                                           ; $4D52: $00
    rst RST_38                                    ; $4D53: $FF
    nop                                           ; $4D54: $00
    rst RST_38                                    ; $4D55: $FF
    nop                                           ; $4D56: $00
    rst RST_38                                    ; $4D57: $FF
    nop                                           ; $4D58: $00
    rst RST_38                                    ; $4D59: $FF
    nop                                           ; $4D5A: $00
    nop                                           ; $4D5B: $00
    nop                                           ; $4D5C: $00
    nop                                           ; $4D5D: $00
    nop                                           ; $4D5E: $00
    nop                                           ; $4D5F: $00
    jr jr_01F_4D51                                ; $4D60: $18 $EF

    jr nc, jr_01F_4D43                            ; $4D62: $30 $DF

    jr nc, jr_01F_4D45                            ; $4D64: $30 $DF

    ld h, b                                       ; $4D66: $60
    cp a                                          ; $4D67: $BF
    ldh [$FFBF], a                                ; $4D68: $E0 $BF
    ret nz                                        ; $4D6A: $C0

    ld a, a                                       ; $4D6B: $7F
    add b                                         ; $4D6C: $80
    rst RST_38                                    ; $4D6D: $FF
    nop                                           ; $4D6E: $00
    rst RST_38                                    ; $4D6F: $FF
    nop                                           ; $4D70: $00
    rst RST_38                                    ; $4D71: $FF
    nop                                           ; $4D72: $00
    rst RST_38                                    ; $4D73: $FF
    nop                                           ; $4D74: $00
    rst RST_38                                    ; $4D75: $FF
    nop                                           ; $4D76: $00
    rst RST_38                                    ; $4D77: $FF
    nop                                           ; $4D78: $00
    rst RST_38                                    ; $4D79: $FF
    nop                                           ; $4D7A: $00
    rst RST_38                                    ; $4D7B: $FF
    nop                                           ; $4D7C: $00
    nop                                           ; $4D7D: $00
    nop                                           ; $4D7E: $00
    nop                                           ; $4D7F: $00
    or $9C                                        ; $4D80: $F6 $9C
    and $BC                                       ; $4D82: $E6 $BC
    rst RST_20                                    ; $4D84: $E7
    cp h                                          ; $4D85: $BC
    rst RST_00                                    ; $4D86: $C7
    db $FD                                        ; $4D87: $FD
    add [hl]                                      ; $4D88: $86
    rst RST_38                                    ; $4D89: $FF
    inc b                                         ; $4D8A: $04
    rst RST_38                                    ; $4D8B: $FF
    nop                                           ; $4D8C: $00
    rst RST_38                                    ; $4D8D: $FF
    nop                                           ; $4D8E: $00
    rst RST_38                                    ; $4D8F: $FF
    nop                                           ; $4D90: $00
    rst RST_38                                    ; $4D91: $FF
    nop                                           ; $4D92: $00
    rst RST_38                                    ; $4D93: $FF
    nop                                           ; $4D94: $00
    rst RST_38                                    ; $4D95: $FF
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
    inc bc                                        ; $4DA0: $03
    nop                                           ; $4DA1: $00
    rlca                                          ; $4DA2: $07
    inc bc                                        ; $4DA3: $03
    dec c                                         ; $4DA4: $0D
    rlca                                          ; $4DA5: $07
    dec de                                        ; $4DA6: $1B
    rrca                                          ; $4DA7: $0F
    ld [hl], $1F                                  ; $4DA8: $36 $1F
    jr nc, jr_01F_4DCB                            ; $4DAA: $30 $1F

    ld h, b                                       ; $4DAC: $60
    ccf                                           ; $4DAD: $3F
    ld l, b                                       ; $4DAE: $68
    ccf                                           ; $4DAF: $3F
    pop bc                                        ; $4DB0: $C1
    ld a, a                                       ; $4DB1: $7F
    ret nz                                        ; $4DB2: $C0

    ld a, a                                       ; $4DB3: $7F
    ld [hl], b                                    ; $4DB4: $70
    ccf                                           ; $4DB5: $3F
    jr nc, jr_01F_4DD7                            ; $4DB6: $30 $1F

    ld a, [de]                                    ; $4DB8: $1A
    rrca                                          ; $4DB9: $0F
    dec c                                         ; $4DBA: $0D
    rlca                                          ; $4DBB: $07
    rlca                                          ; $4DBC: $07
    ld [bc], a                                    ; $4DBD: $02
    inc bc                                        ; $4DBE: $03
    nop                                           ; $4DBF: $00
    rst RST_38                                    ; $4DC0: $FF
    nop                                           ; $4DC1: $00
    rst RST_38                                    ; $4DC2: $FF
    inc a                                         ; $4DC3: $3C
    jp Jump_000_3BFC                              ; $4DC4: $C3 $FC $3B


    db $FC                                        ; $4DC7: $FC
    ld [hl], a                                    ; $4DC8: $77
    rst RST_38                                    ; $4DC9: $FF
    inc c                                         ; $4DCA: $0C

jr_01F_4DCB:
    rst RST_38                                    ; $4DCB: $FF
    jr nc, @+$01                                  ; $4DCC: $30 $FF

jr_01F_4DCE:
    ret nz                                        ; $4DCE: $C0

    rst RST_38                                    ; $4DCF: $FF
    add b                                         ; $4DD0: $80
    rst RST_38                                    ; $4DD1: $FF
    ld bc, $07FF                                  ; $4DD2: $01 $FF $07
    cp $01                                        ; $4DD5: $FE $01

jr_01F_4DD7:
    rst RST_38                                    ; $4DD7: $FF
    ld h, b                                       ; $4DD8: $60
    rst RST_38                                    ; $4DD9: $FF
    ld hl, sp-$01                                 ; $4DDA: $F8 $FF
    rst RST_38                                    ; $4DDC: $FF
    rrca                                          ; $4DDD: $0F
    rst RST_38                                    ; $4DDE: $FF
    nop                                           ; $4DDF: $00
    db $FC                                        ; $4DE0: $FC
    nop                                           ; $4DE1: $00
    ldh a, [rP1]                                  ; $4DE2: $F0 $00
    add b                                         ; $4DE4: $80
    nop                                           ; $4DE5: $00
    db $FC                                        ; $4DE6: $FC
    add b                                         ; $4DE7: $80
    ld [hl], b                                    ; $4DE8: $70
    ret nz                                        ; $4DE9: $C0

    ldh [$FFC0], a                                ; $4DEA: $E0 $C0
    jr c, jr_01F_4DCE                             ; $4DEC: $38 $E0

    ld [hl], b                                    ; $4DEE: $70
    ret nz                                        ; $4DEF: $C0

    ccf                                           ; $4DF0: $3F
    ldh [$FFFC], a                                ; $4DF1: $E0 $FC
    ret nz                                        ; $4DF3: $C0

    ldh [rP1], a                                  ; $4DF4: $E0 $00
    ldh a, [rP1]                                  ; $4DF6: $F0 $00
    ret nz                                        ; $4DF8: $C0

    add b                                         ; $4DF9: $80
    ldh a, [$FF80]                                ; $4DFA: $F0 $80
    db $FC                                        ; $4DFC: $FC
    nop                                           ; $4DFD: $00
    ret nz                                        ; $4DFE: $C0

    nop                                           ; $4DFF: $00
    ld bc, $0300                                  ; $4E00: $01 $00 $03
    nop                                           ; $4E03: $00
    inc bc                                        ; $4E04: $03
    nop                                           ; $4E05: $00
    inc bc                                        ; $4E06: $03
    nop                                           ; $4E07: $00
    rlca                                          ; $4E08: $07
    nop                                           ; $4E09: $00
    inc c                                         ; $4E0A: $0C
    inc bc                                        ; $4E0B: $03
    rra                                           ; $4E0C: $1F
    nop                                           ; $4E0D: $00
    cp $09                                        ; $4E0E: $FE $09
    jp c, $9435                                   ; $4E10: $DA $35 $94

    ld l, e                                       ; $4E13: $6B
    db $EC                                        ; $4E14: $EC
    inc de                                        ; $4E15: $13
    jr nz, jr_01F_4E37                            ; $4E16: $20 $1F

    jr nz, @+$21                                  ; $4E18: $20 $1F

    ld d, b                                       ; $4E1A: $50
    cpl                                           ; $4E1B: $2F
    ld l, b                                       ; $4E1C: $68
    rlca                                          ; $4E1D: $07
    ld c, $01                                     ; $4E1E: $0E $01
    ldh [rP1], a                                  ; $4E20: $E0 $00
    ldh a, [rP1]                                  ; $4E22: $F0 $00
    add b                                         ; $4E24: $80
    nop                                           ; $4E25: $00
    nop                                           ; $4E26: $00
    nop                                           ; $4E27: $00
    db $FC                                        ; $4E28: $FC
    nop                                           ; $4E29: $00
    rst RST_18                                    ; $4E2A: $DF
    inc a                                         ; $4E2B: $3C
    ld a, a                                       ; $4E2C: $7F
    adc a                                         ; $4E2D: $8F
    adc a                                         ; $4E2E: $8F
    ld [hl], b                                    ; $4E2F: $70
    sbc a                                         ; $4E30: $9F
    ld h, a                                       ; $4E31: $67
    ld e, a                                       ; $4E32: $5F
    and a                                         ; $4E33: $A7
    ccf                                           ; $4E34: $3F
    rst RST_08                                    ; $4E35: $CF
    cpl                                           ; $4E36: $2F

jr_01F_4E37:
    jp $C023                                      ; $4E37: $C3 $23 $C0


    ret nz                                        ; $4E3A: $C0

    nop                                           ; $4E3B: $00
    ld b, b                                       ; $4E3C: $40
    add b                                         ; $4E3D: $80
    ld b, b                                       ; $4E3E: $40
    add b                                         ; $4E3F: $80
    nop                                           ; $4E40: $00
    nop                                           ; $4E41: $00
    nop                                           ; $4E42: $00
    nop                                           ; $4E43: $00

jr_01F_4E44:
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
    add b                                         ; $4E4E: $80
    nop                                           ; $4E4F: $00
    ret nz                                        ; $4E50: $C0

    add b                                         ; $4E51: $80
    ldh [$FFC0], a                                ; $4E52: $E0 $C0
    ldh [rP1], a                                  ; $4E54: $E0 $00
    ldh a, [$FFE0]                                ; $4E56: $F0 $E0
    ld hl, sp-$10                                 ; $4E58: $F8 $F0
    ld hl, sp-$10                                 ; $4E5A: $F8 $F0
    ld hl, sp-$10                                 ; $4E5C: $F8 $F0
    ld hl, sp+$00                                 ; $4E5E: $F8 $00
    sbc $60                                       ; $4E60: $DE $60
    bit 6, h                                      ; $4E62: $CB $74
    ld a, h                                       ; $4E64: $7C
    inc bc                                        ; $4E65: $03
    halt                                          ; $4E66: $76
    add hl, bc                                    ; $4E67: $09
    ld d, l                                       ; $4E68: $55
    ld a, [hl+]                                   ; $4E69: $2A
    ld a, [hl+]                                   ; $4E6A: $2A
    inc d                                         ; $4E6B: $14
    add hl, hl                                    ; $4E6C: $29
    ld d, $35                                     ; $4E6D: $16 $35
    ld [bc], a                                    ; $4E6F: $02
    inc bc                                        ; $4E70: $03
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
    ret nz                                        ; $4E80: $C0

    nop                                           ; $4E81: $00
    jr nc, jr_01F_4E44                            ; $4E82: $30 $C0

    ld [$8EF0], sp                                ; $4E84: $08 $F0 $8E
    ld [hl], b                                    ; $4E87: $70
    ld c, b                                       ; $4E88: $48
    jr nc, jr_01F_4EC7                            ; $4E89: $30 $3C

    nop                                           ; $4E8B: $00
    stop                                          ; $4E8C: $10 $00
    ld [$0000], sp                                ; $4E8E: $08 $00 $00
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
    nop                                           ; $4EA0: $00
    nop                                           ; $4EA1: $00
    ld sp, $3900                                  ; $4EA2: $31 $00 $39
    db $10                                        ; $4EA5: $10
    dec a                                         ; $4EA6: $3D
    jr jr_01F_4EC6                                ; $4EA7: $18 $1D

    ld [$040B], sp                                ; $4EA9: $08 $0B $04
    rlca                                          ; $4EAC: $07
    nop                                           ; $4EAD: $00
    ld b, $01                                     ; $4EAE: $06 $01
    ld b, $03                                     ; $4EB0: $06 $03
    ld a, [bc]                                    ; $4EB2: $0A
    rlca                                          ; $4EB3: $07
    ld a, h                                       ; $4EB4: $7C
    inc bc                                        ; $4EB5: $03
    adc e                                         ; $4EB6: $8B
    ld [hl], h                                    ; $4EB7: $74
    cp c                                          ; $4EB8: $B9
    ld b, a                                       ; $4EB9: $47
    adc a                                         ; $4EBA: $8F
    ld [hl], b                                    ; $4EBB: $70
    adc l                                         ; $4EBC: $8D
    ld [hl], d                                    ; $4EBD: $72
    ld c, e                                       ; $4EBE: $4B
    inc [hl]                                      ; $4EBF: $34
    ret nz                                        ; $4EC0: $C0

    nop                                           ; $4EC1: $00
    ret nz                                        ; $4EC2: $C0

    add b                                         ; $4EC3: $80
    ret nz                                        ; $4EC4: $C0

    add b                                         ; $4EC5: $80

jr_01F_4EC6:
    ret nz                                        ; $4EC6: $C0

jr_01F_4EC7:
    add b                                         ; $4EC7: $80
    ld b, e                                       ; $4EC8: $43
    add b                                         ; $4EC9: $80
    ld c, h                                       ; $4ECA: $4C
    add e                                         ; $4ECB: $83
    ret nc                                        ; $4ECC: $D0

    rrca                                          ; $4ECD: $0F
    ldh [c], a                                    ; $4ECE: $E2
    dec e                                         ; $4ECF: $1D
    rst RST_08                                    ; $4ED0: $CF
    or b                                          ; $4ED1: $B0
    or b                                          ; $4ED2: $B0
    ret nz                                        ; $4ED3: $C0

    ld h, b                                       ; $4ED4: $60
    add b                                         ; $4ED5: $80
    add b                                         ; $4ED6: $80
    nop                                           ; $4ED7: $00
    add b                                         ; $4ED8: $80
    nop                                           ; $4ED9: $00
    nop                                           ; $4EDA: $00
    nop                                           ; $4EDB: $00
    nop                                           ; $4EDC: $00
    nop                                           ; $4EDD: $00
    nop                                           ; $4EDE: $00
    nop                                           ; $4EDF: $00
    nop                                           ; $4EE0: $00
    nop                                           ; $4EE1: $00
    nop                                           ; $4EE2: $00
    nop                                           ; $4EE3: $00
    nop                                           ; $4EE4: $00
    nop                                           ; $4EE5: $00

jr_01F_4EE6:
    nop                                           ; $4EE6: $00
    nop                                           ; $4EE7: $00
    nop                                           ; $4EE8: $00
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
    add b                                         ; $4EF6: $80
    nop                                           ; $4EF7: $00
    ld b, b                                       ; $4EF8: $40
    add b                                         ; $4EF9: $80
    ld b, b                                       ; $4EFA: $40
    add b                                         ; $4EFB: $80
    ld b, b                                       ; $4EFC: $40
    add b                                         ; $4EFD: $80
    add b                                         ; $4EFE: $80
    nop                                           ; $4EFF: $00
    ld a, $01                                     ; $4F00: $3E $01
    ld h, $19                                     ; $4F02: $26 $19
    add hl, sp                                    ; $4F04: $39
    nop                                           ; $4F05: $00
    ld bc, $0000                                  ; $4F06: $01 $00 $00
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
    add b                                         ; $4F20: $80

jr_01F_4F21:
    nop                                           ; $4F21: $00
    ld b, b                                       ; $4F22: $40
    add b                                         ; $4F23: $80
    jr nz, jr_01F_4EE6                            ; $4F24: $20 $C0

jr_01F_4F26:
    ldh [rP1], a                                  ; $4F26: $E0 $00
    nop                                           ; $4F28: $00
    nop                                           ; $4F29: $00
    nop                                           ; $4F2A: $00
    nop                                           ; $4F2B: $00

jr_01F_4F2C:
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
    ld bc, $0200                                  ; $4F40: $01 $00 $02
    nop                                           ; $4F43: $00
    ld [bc], a                                    ; $4F44: $02
    nop                                           ; $4F45: $00
    ld bc, $0200                                  ; $4F46: $01 $00 $02
    ld bc, $0103                                  ; $4F49: $01 $03 $01
    dec b                                         ; $4F4C: $05
    inc bc                                        ; $4F4D: $03
    ld b, $01                                     ; $4F4E: $06 $01
    inc bc                                        ; $4F50: $03
    nop                                           ; $4F51: $00
    ld a, a                                       ; $4F52: $7F
    nop                                           ; $4F53: $00
    adc b                                         ; $4F54: $88
    ld a, a                                       ; $4F55: $7F
    sub l                                         ; $4F56: $95
    ld a, [hl]                                    ; $4F57: $7E
    ld c, a                                       ; $4F58: $4F
    ccf                                           ; $4F59: $3F
    inc sp                                        ; $4F5A: $33
    rrca                                          ; $4F5B: $0F
    ld c, $01                                     ; $4F5C: $0E $01
    ld bc, $7E00                                  ; $4F5E: $01 $00 $7E
    jr nz, jr_01F_4F21                            ; $4F61: $20 $BE

jr_01F_4F63:
    ld c, h                                       ; $4F63: $4C
    call c, $9838                                 ; $4F64: $DC $38 $98
    ld [hl], b                                    ; $4F67: $70
    ldh a, [rP1]                                  ; $4F68: $F0 $00
    jr nz, jr_01F_4F2C                            ; $4F6A: $20 $C0

    inc a                                         ; $4F6C: $3C
    ret nz                                        ; $4F6D: $C0

    ld [hl+], a                                   ; $4F6E: $22
    call c, Call_000_3CC2                         ; $4F6F: $DC $C2 $3C
    inc a                                         ; $4F72: $3C
    ret nz                                        ; $4F73: $C0

    ld hl, sp+$10                                 ; $4F74: $F8 $10
    sub b                                         ; $4F76: $90
    ld h, b                                       ; $4F77: $60
    ld [hl], b                                    ; $4F78: $70
    add b                                         ; $4F79: $80
    adc [hl]                                      ; $4F7A: $8E
    ldh a, [rSB]                                  ; $4F7B: $F0 $01
    cp $FF                                        ; $4F7D: $FE $FF
    nop                                           ; $4F7F: $00
    nop                                           ; $4F80: $00
    nop                                           ; $4F81: $00
    nop                                           ; $4F82: $00
    nop                                           ; $4F83: $00
    nop                                           ; $4F84: $00
    nop                                           ; $4F85: $00
    nop                                           ; $4F86: $00
    nop                                           ; $4F87: $00
    nop                                           ; $4F88: $00
    nop                                           ; $4F89: $00
    nop                                           ; $4F8A: $00
    nop                                           ; $4F8B: $00

jr_01F_4F8C:
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

jr_01F_4F98:
    nop                                           ; $4F98: $00
    nop                                           ; $4F99: $00

jr_01F_4F9A:
    nop                                           ; $4F9A: $00
    nop                                           ; $4F9B: $00
    jr nc, jr_01F_4F9E                            ; $4F9C: $30 $00

jr_01F_4F9E:
    ld [hl], b                                    ; $4F9E: $70
    jr nz, jr_01F_4F26                            ; $4F9F: $20 $85

    ld a, d                                       ; $4FA1: $7A
    ld h, l                                       ; $4FA2: $65
    sbc d                                         ; $4FA3: $9A
    and a                                         ; $4FA4: $A7
    jr @+$26                                      ; $4FA5: $18 $24

    dec de                                        ; $4FA7: $1B
    inc h                                         ; $4FA8: $24
    dec de                                        ; $4FA9: $1B
    jr jr_01F_4FB3                                ; $4FAA: $18 $07

    inc e                                         ; $4FAC: $1C
    inc bc                                        ; $4FAD: $03
    inc de                                        ; $4FAE: $13
    inc c                                         ; $4FAF: $0C
    inc [hl]                                      ; $4FB0: $34
    dec bc                                        ; $4FB1: $0B
    ld c, e                                       ; $4FB2: $4B

jr_01F_4FB3:
    inc [hl]                                      ; $4FB3: $34
    add sp, $57                                   ; $4FB4: $E8 $57
    call z, $3A33                                 ; $4FB6: $CC $33 $3A
    dec b                                         ; $4FB9: $05
    add hl, bc                                    ; $4FBA: $09
    ld b, $0F                                     ; $4FBB: $06 $0F
    nop                                           ; $4FBD: $00
    nop                                           ; $4FBE: $00
    nop                                           ; $4FBF: $00
    ld [hl], b                                    ; $4FC0: $70
    jr nz, jr_01F_4F63                            ; $4FC1: $20 $A0

    ld b, b                                       ; $4FC3: $40
    ret nz                                        ; $4FC4: $C0

    nop                                           ; $4FC5: $00
    ret nz                                        ; $4FC6: $C0

    nop                                           ; $4FC7: $00
    ld b, b                                       ; $4FC8: $40
    add b                                         ; $4FC9: $80
    jr nz, jr_01F_4F8C                            ; $4FCA: $20 $C0

    ld h, b                                       ; $4FCC: $60
    add b                                         ; $4FCD: $80
    ret nz                                        ; $4FCE: $C0

    nop                                           ; $4FCF: $00
    add b                                         ; $4FD0: $80
    nop                                           ; $4FD1: $00
    nop                                           ; $4FD2: $00
    nop                                           ; $4FD3: $00
    ldh [rP1], a                                  ; $4FD4: $E0 $00
    jr nz, jr_01F_4F98                            ; $4FD6: $20 $C0

    jr nz, jr_01F_4F9A                            ; $4FD8: $20 $C0

    ret nz                                        ; $4FDA: $C0

    nop                                           ; $4FDB: $00
    add b                                         ; $4FDC: $80
    nop                                           ; $4FDD: $00
    nop                                           ; $4FDE: $00
    nop                                           ; $4FDF: $00
    nop                                           ; $4FE0: $00
    nop                                           ; $4FE1: $00
    ld bc, $0200                                  ; $4FE2: $01 $00 $02
    ld bc, $0102                                  ; $4FE5: $01 $02 $01
    inc b                                         ; $4FE8: $04
    inc bc                                        ; $4FE9: $03
    dec b                                         ; $4FEA: $05
    inc bc                                        ; $4FEB: $03
    ld [$0807], sp                                ; $4FEC: $08 $07 $08
    rlca                                          ; $4FEF: $07

jr_01F_4FF0:
    ld [de], a                                    ; $4FF0: $12
    dec c                                         ; $4FF1: $0D

jr_01F_4FF2:
    inc d                                         ; $4FF2: $14
    dec bc                                        ; $4FF3: $0B
    inc l                                         ; $4FF4: $2C
    inc de                                        ; $4FF5: $13
    jr c, @+$09                                   ; $4FF6: $38 $07

    add hl, bc                                    ; $4FF8: $09
    ld b, $0B                                     ; $4FF9: $06 $0B
    inc b                                         ; $4FFB: $04
    inc d                                         ; $4FFC: $14
    ld [$0018], sp                                ; $4FFD: $08 $18 $00
    nop                                           ; $5000: $00
    nop                                           ; $5001: $00
    nop                                           ; $5002: $00
    nop                                           ; $5003: $00
    ld c, $00                                     ; $5004: $0E $00
    ld sp, $400E                                  ; $5006: $31 $0E $40
    ccf                                           ; $5009: $3F
    or b                                          ; $500A: $B0
    ld a, a                                       ; $500B: $7F
    ld h, h                                       ; $500C: $64
    rst RST_38                                    ; $500D: $FF
    ld a, b                                       ; $500E: $78
    rst RST_38                                    ; $500F: $FF
    ld hl, sp-$01                                 ; $5010: $F8 $FF
    or b                                          ; $5012: $B0
    rst RST_38                                    ; $5013: $FF
    ld h, c                                       ; $5014: $61
    cp $42                                        ; $5015: $FE $42
    db $FC                                        ; $5017: $FC
    sub d                                         ; $5018: $92
    db $FC                                        ; $5019: $FC
    daa                                           ; $501A: $27
    ld a, [$FA47]                                 ; $501B: $FA $47 $FA
    rlca                                          ; $501E: $07

jr_01F_501F:
    ld a, [$0000]                                 ; $501F: $FA $00 $00
    nop                                           ; $5022: $00
    nop                                           ; $5023: $00
    nop                                           ; $5024: $00
    nop                                           ; $5025: $00
    nop                                           ; $5026: $00
    nop                                           ; $5027: $00
    add b                                         ; $5028: $80
    nop                                           ; $5029: $00
    ret nz                                        ; $502A: $C0

    nop                                           ; $502B: $00

jr_01F_502C:
    and b                                         ; $502C: $A0
    ld b, b                                       ; $502D: $40

jr_01F_502E:
    jr nz, jr_01F_4FF0                            ; $502E: $20 $C0

    jr nz, jr_01F_4FF2                            ; $5030: $20 $C0

    ld b, b                                       ; $5032: $40
    add b                                         ; $5033: $80
    add b                                         ; $5034: $80
    nop                                           ; $5035: $00
    nop                                           ; $5036: $00
    nop                                           ; $5037: $00
    nop                                           ; $5038: $00
    nop                                           ; $5039: $00
    jr jr_01F_503C                                ; $503A: $18 $00

jr_01F_503C:
    jr c, jr_01F_504E                             ; $503C: $38 $10

    ld a, b                                       ; $503E: $78
    jr nc, jr_01F_504F                            ; $503F: $30 $0E

    nop                                           ; $5041: $00
    ld sp, $400E                                  ; $5042: $31 $0E $40
    ccf                                           ; $5045: $3F
    add b                                         ; $5046: $80
    ld a, a                                       ; $5047: $7F
    add b                                         ; $5048: $80
    ld a, a                                       ; $5049: $7F
    add b                                         ; $504A: $80
    ld a, a                                       ; $504B: $7F
    add b                                         ; $504C: $80
    ld a, a                                       ; $504D: $7F

jr_01F_504E:
    add b                                         ; $504E: $80

jr_01F_504F:
    ld a, a                                       ; $504F: $7F
    add c                                         ; $5050: $81
    ld a, [hl]                                    ; $5051: $7E
    add d                                         ; $5052: $82
    ld a, h                                       ; $5053: $7C
    ld b, d                                       ; $5054: $42
    inc a                                         ; $5055: $3C
    ld b, a                                       ; $5056: $47
    ld a, [hl-]                                   ; $5057: $3A
    ld b, a                                       ; $5058: $47
    ld a, [hl-]                                   ; $5059: $3A
    ld b, a                                       ; $505A: $47
    ld a, [hl-]                                   ; $505B: $3A
    ld b, l                                       ; $505C: $45
    ld a, [hl-]                                   ; $505D: $3A
    dec h                                         ; $505E: $25
    ld a, [de]                                    ; $505F: $1A
    nop                                           ; $5060: $00
    nop                                           ; $5061: $00
    nop                                           ; $5062: $00
    nop                                           ; $5063: $00
    add b                                         ; $5064: $80
    nop                                           ; $5065: $00
    ret nz                                        ; $5066: $C0

    nop                                           ; $5067: $00

jr_01F_5068:
    and b                                         ; $5068: $A0
    ld b, b                                       ; $5069: $40
    jr nz, jr_01F_502C                            ; $506A: $20 $C0

    jr nz, jr_01F_502E                            ; $506C: $20 $C0

    ld b, b                                       ; $506E: $40
    add b                                         ; $506F: $80
    add b                                         ; $5070: $80
    nop                                           ; $5071: $00
    nop                                           ; $5072: $00
    nop                                           ; $5073: $00

jr_01F_5074:
    nop                                           ; $5074: $00
    nop                                           ; $5075: $00

jr_01F_5076:
    jr jr_01F_5078                                ; $5076: $18 $00

jr_01F_5078:
    jr c, jr_01F_508A                             ; $5078: $38 $10

    ld a, b                                       ; $507A: $78
    jr nc, jr_01F_50ED                            ; $507B: $30 $70

    jr nz, jr_01F_501F                            ; $507D: $20 $A0

    ld b, b                                       ; $507F: $40
    daa                                           ; $5080: $27
    jr @+$26                                      ; $5081: $18 $24

    dec de                                        ; $5083: $1B
    inc h                                         ; $5084: $24
    dec de                                        ; $5085: $1B
    jr jr_01F_508F                                ; $5086: $18 $07

    inc e                                         ; $5088: $1C
    inc bc                                        ; $5089: $03

jr_01F_508A:
    inc de                                        ; $508A: $13
    inc c                                         ; $508B: $0C
    inc [hl]                                      ; $508C: $34
    dec bc                                        ; $508D: $0B
    ld c, e                                       ; $508E: $4B

jr_01F_508F:
    inc [hl]                                      ; $508F: $34
    add sp, $57                                   ; $5090: $E8 $57
    call z, $3A33                                 ; $5092: $CC $33 $3A
    dec b                                         ; $5095: $05
    add hl, bc                                    ; $5096: $09
    ld b, $0F                                     ; $5097: $06 $0F
    nop                                           ; $5099: $00
    nop                                           ; $509A: $00
    nop                                           ; $509B: $00
    nop                                           ; $509C: $00
    nop                                           ; $509D: $00
    nop                                           ; $509E: $00
    nop                                           ; $509F: $00
    ret nz                                        ; $50A0: $C0

    nop                                           ; $50A1: $00
    ret nz                                        ; $50A2: $C0

    nop                                           ; $50A3: $00
    ld b, b                                       ; $50A4: $40
    add b                                         ; $50A5: $80
    jr nz, jr_01F_5068                            ; $50A6: $20 $C0

    ld h, b                                       ; $50A8: $60
    add b                                         ; $50A9: $80
    ret nz                                        ; $50AA: $C0

    nop                                           ; $50AB: $00
    add b                                         ; $50AC: $80
    nop                                           ; $50AD: $00
    nop                                           ; $50AE: $00
    nop                                           ; $50AF: $00
    ldh [rP1], a                                  ; $50B0: $E0 $00
    jr nz, jr_01F_5074                            ; $50B2: $20 $C0

    jr nz, jr_01F_5076                            ; $50B4: $20 $C0

    ret nz                                        ; $50B6: $C0

    nop                                           ; $50B7: $00
    add b                                         ; $50B8: $80
    nop                                           ; $50B9: $00
    nop                                           ; $50BA: $00
    nop                                           ; $50BB: $00
    nop                                           ; $50BC: $00
    nop                                           ; $50BD: $00
    nop                                           ; $50BE: $00
    nop                                           ; $50BF: $00
    rlca                                          ; $50C0: $07
    nop                                           ; $50C1: $00
    rra                                           ; $50C2: $1F
    rlca                                          ; $50C3: $07
    jr c, jr_01F_50E5                             ; $50C4: $38 $1F

    ld h, b                                       ; $50C6: $60
    ccf                                           ; $50C7: $3F
    ret nz                                        ; $50C8: $C0

    ld a, a                                       ; $50C9: $7F
    ret nz                                        ; $50CA: $C0

    ld a, a                                       ; $50CB: $7F
    ret nz                                        ; $50CC: $C0

    ld a, a                                       ; $50CD: $7F
    ret nz                                        ; $50CE: $C0

    ld a, a                                       ; $50CF: $7F
    ret nz                                        ; $50D0: $C0

    ld a, a                                       ; $50D1: $7F
    ret nz                                        ; $50D2: $C0

    ld a, a                                       ; $50D3: $7F
    pop bc                                        ; $50D4: $C1
    ld a, a                                       ; $50D5: $7F
    ld h, c                                       ; $50D6: $61
    ccf                                           ; $50D7: $3F
    ld h, c                                       ; $50D8: $61
    ccf                                           ; $50D9: $3F
    ld h, c                                       ; $50DA: $61
    ccf                                           ; $50DB: $3F
    ld h, c                                       ; $50DC: $61
    ccf                                           ; $50DD: $3F
    ld h, b                                       ; $50DE: $60
    ccf                                           ; $50DF: $3F
    nop                                           ; $50E0: $00
    nop                                           ; $50E1: $00
    add b                                         ; $50E2: $80
    nop                                           ; $50E3: $00
    ret nz                                        ; $50E4: $C0

jr_01F_50E5:
    add b                                         ; $50E5: $80
    ld h, b                                       ; $50E6: $60
    ret nz                                        ; $50E7: $C0

    ld [hl], b                                    ; $50E8: $70
    ldh [$FF58], a                                ; $50E9: $E0 $58
    ldh a, [rNR23]                                ; $50EB: $F0 $18

jr_01F_50ED:
    ldh a, [rNR23]                                ; $50ED: $F0 $18
    ldh a, [$FF30]                                ; $50EF: $F0 $30
    ldh [$FFE0], a                                ; $50F1: $E0 $E0
    ret nz                                        ; $50F3: $C0

    ret nz                                        ; $50F4: $C0

    nop                                           ; $50F5: $00
    adc h                                         ; $50F6: $8C
    nop                                           ; $50F7: $00
    sbc $8C                                       ; $50F8: $DE $8C
    or $9C                                        ; $50FA: $F6 $9C
    and $BC                                       ; $50FC: $E6 $BC
    db $EC                                        ; $50FE: $EC
    cp b                                          ; $50FF: $B8
    jr nc, jr_01F_5121                            ; $5100: $30 $1F

    jr nc, jr_01F_5123                            ; $5102: $30 $1F

    jr nc, jr_01F_5125                            ; $5104: $30 $1F

    jr nc, jr_01F_5127                            ; $5106: $30 $1F

    jr jr_01F_5119                                ; $5108: $18 $0F

    jr jr_01F_511B                                ; $510A: $18 $0F

    jr jr_01F_511D                                ; $510C: $18 $0F

    jr c, jr_01F_512F                             ; $510E: $38 $1F

    ld h, b                                       ; $5110: $60
    ccf                                           ; $5111: $3F
    ret nz                                        ; $5112: $C0

    ld a, a                                       ; $5113: $7F
    ldh [$FF7F], a                                ; $5114: $E0 $7F
    ld a, b                                       ; $5116: $78
    rra                                           ; $5117: $1F
    inc e                                         ; $5118: $1C

jr_01F_5119:
    rlca                                          ; $5119: $07
    inc c                                         ; $511A: $0C

jr_01F_511B:
    rlca                                          ; $511B: $07
    nop                                           ; $511C: $00

jr_01F_511D:
    nop                                           ; $511D: $00
    nop                                           ; $511E: $00
    nop                                           ; $511F: $00
    ret c                                         ; $5120: $D8

jr_01F_5121:
    ldh a, [$FF30]                                ; $5121: $F0 $30

jr_01F_5123:
    ldh [$FF30], a                                ; $5123: $E0 $30

jr_01F_5125:
    ldh [$FF30], a                                ; $5125: $E0 $30

jr_01F_5127:
    ldh [rNR23], a                                ; $5127: $E0 $18
    ldh a, [$FF38]                                ; $5129: $F0 $38
    ldh a, [$FF30]                                ; $512B: $F0 $30
    ldh [$FF60], a                                ; $512D: $E0 $60

jr_01F_512F:
    ret nz                                        ; $512F: $C0

    ldh a, [$FF80]                                ; $5130: $F0 $80
    ld a, b                                       ; $5132: $78
    ldh a, [rNR23]                                ; $5133: $F0 $18
    ldh a, [rNR23]                                ; $5135: $F0 $18
    ldh a, [$FF30]                                ; $5137: $F0 $30
    ldh [$FF60], a                                ; $5139: $E0 $60
    ret nz                                        ; $513B: $C0

    nop                                           ; $513C: $00
    nop                                           ; $513D: $00
    nop                                           ; $513E: $00
    nop                                           ; $513F: $00
    rlca                                          ; $5140: $07
    ld bc, $0033                                  ; $5141: $01 $33 $00
    ld c, e                                       ; $5144: $4B
    ld sp, $314B                                  ; $5145: $31 $4B $31
    add hl, sp                                    ; $5148: $39
    nop                                           ; $5149: $00
    rra                                           ; $514A: $1F
    nop                                           ; $514B: $00
    rrca                                          ; $514C: $0F

jr_01F_514D:
    nop                                           ; $514D: $00
    rra                                           ; $514E: $1F
    nop                                           ; $514F: $00
    daa                                           ; $5150: $27
    jr jr_01F_518D                                ; $5151: $18 $3A

    ld bc, $030C                                  ; $5153: $01 $0C $03
    rra                                           ; $5156: $1F
    inc c                                         ; $5157: $0C
    ld a, $0C                                     ; $5158: $3E $0C
    ld a, h                                       ; $515A: $7C
    jr nc, jr_01F_514D                            ; $515B: $30 $F0

    ld h, b                                       ; $515D: $60
    ldh a, [rP1]                                  ; $515E: $F0 $00
    rst RST_38                                    ; $5160: $FF
    xor $FF                                       ; $5161: $EE $FF
    inc l                                         ; $5163: $2C
    db $FD                                        ; $5164: $FD
    jp nz, $D4EB                                  ; $5165: $C2 $EB $D4

    ldh a, [c]                                    ; $5168: $F2
    adc h                                         ; $5169: $8C
    cp $60                                        ; $516A: $FE $60
    rst RST_38                                    ; $516C: $FF
    ld l, [hl]                                    ; $516D: $6E
    rst RST_38                                    ; $516E: $FF
    ld l, a                                       ; $516F: $6F
    rst RST_38                                    ; $5170: $FF
    ld b, $4E                                     ; $5171: $06 $4E
    or h                                          ; $5173: $B4
    ld a, [hl]                                    ; $5174: $7E
    adc b                                         ; $5175: $88
    sbc [hl]                                      ; $5176: $9E
    inc c                                         ; $5177: $0C
    inc a                                         ; $5178: $3C
    db $10                                        ; $5179: $10
    ld a, $1C                                     ; $517A: $3E $1C
    ld a, $00                                     ; $517C: $3E $00
    nop                                           ; $517E: $00
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
    nop                                           ; $518C: $00

jr_01F_518D:
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
    ret nz                                        ; $5198: $C0

    nop                                           ; $5199: $00
    xor a                                         ; $519A: $AF
    ld b, b                                       ; $519B: $40
    ld e, a                                       ; $519C: $5F
    cpl                                           ; $519D: $2F
    ld a, a                                       ; $519E: $7F
    rra                                           ; $519F: $1F
    nop                                           ; $51A0: $00
    nop                                           ; $51A1: $00

jr_01F_51A2:
    nop                                           ; $51A2: $00
    nop                                           ; $51A3: $00
    nop                                           ; $51A4: $00
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
    ld h, [hl]                                    ; $51B8: $66
    nop                                           ; $51B9: $00
    jp c, $FC24                                   ; $51BA: $DA $24 $FC

    sub b                                         ; $51BD: $90
    cp $B4                                        ; $51BE: $FE $B4
    ldh [$FFC0], a                                ; $51C0: $E0 $C0
    ldh [$FFC0], a                                ; $51C2: $E0 $C0
    ret nz                                        ; $51C4: $C0

    nop                                           ; $51C5: $00
    nop                                           ; $51C6: $00
    nop                                           ; $51C7: $00
    nop                                           ; $51C8: $00
    nop                                           ; $51C9: $00
    nop                                           ; $51CA: $00
    nop                                           ; $51CB: $00
    add b                                         ; $51CC: $80
    nop                                           ; $51CD: $00
    ldh a, [rP1]                                  ; $51CE: $F0 $00
    jr z, jr_01F_51A2                             ; $51D0: $28 $D0

    ret z                                         ; $51D2: $C8

    jr nc, jr_01F_5205                            ; $51D3: $30 $30

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
    ld a, a                                       ; $51E0: $7F
    dec sp                                        ; $51E1: $3B
    ccf                                           ; $51E2: $3F
    inc de                                        ; $51E3: $13
    rla                                           ; $51E4: $17
    nop                                           ; $51E5: $00
    ld b, $01                                     ; $51E6: $06 $01
    rrca                                          ; $51E8: $0F
    ld b, $0F                                     ; $51E9: $06 $0F
    rlca                                          ; $51EB: $07
    rrca                                          ; $51EC: $0F
    rlca                                          ; $51ED: $07
    rrca                                          ; $51EE: $0F
    rlca                                          ; $51EF: $07
    rrca                                          ; $51F0: $0F
    ld bc, $003F                                  ; $51F1: $01 $3F $00
    ld c, a                                       ; $51F4: $4F
    jr nc, jr_01F_5242                            ; $51F5: $30 $4B

    ld sp, $0337                                  ; $51F7: $31 $37 $03
    rrca                                          ; $51FA: $0F
    inc b                                         ; $51FB: $04
    rrca                                          ; $51FC: $0F
    ld b, $0F                                     ; $51FD: $06 $0F
    nop                                           ; $51FF: $00
    sbc a                                         ; $5200: $9F
    ld h, b                                       ; $5201: $60
    or [hl]                                       ; $5202: $B6
    ld c, c                                       ; $5203: $49
    dec hl                                        ; $5204: $2B

jr_01F_5205:
    call nz, Call_000_06F9                        ; $5205: $C4 $F9 $06
    jp nz, $FDBF                                  ; $5208: $C2 $BF $FD

    inc bc                                        ; $520B: $03
    push hl                                       ; $520C: $E5
    inc bc                                        ; $520D: $03
    inc hl                                        ; $520E: $23
    pop bc                                        ; $520F: $C1
    or c                                          ; $5210: $B1
    ld b, b                                       ; $5211: $40
    ld sp, hl                                     ; $5212: $F9
    sub b                                         ; $5213: $90
    ld hl, sp-$50                                 ; $5214: $F8 $B0
    ldh a, [rNR41]                                ; $5216: $F0 $20
    ld [hl], b                                    ; $5218: $70
    nop                                           ; $5219: $00
    ld a, b                                       ; $521A: $78
    jr nc, jr_01F_5299                            ; $521B: $30 $7C

    jr c, jr_01F_529B                             ; $521D: $38 $7C

    nop                                           ; $521F: $00
    ld d, d                                       ; $5220: $52
    adc h                                         ; $5221: $8C
    or l                                          ; $5222: $B5
    ld c, [hl]                                    ; $5223: $4E
    sub e                                         ; $5224: $93
    ld l, [hl]                                    ; $5225: $6E
    ld b, e                                       ; $5226: $43
    ccf                                           ; $5227: $3F
    srl a                                         ; $5228: $CB $3F
    rlca                                          ; $522A: $07
    rst RST_38                                    ; $522B: $FF
    and a                                         ; $522C: $A7
    ld a, a                                       ; $522D: $7F
    sbc a                                         ; $522E: $9F
    ld a, a                                       ; $522F: $7F
    rst RST_18                                    ; $5230: $DF
    ccf                                           ; $5231: $3F
    rst RST_18                                    ; $5232: $DF
    cp e                                          ; $5233: $BB
    rst RST_28                                    ; $5234: $EF
    sbc c                                         ; $5235: $99
    rst RST_28                                    ; $5236: $EF
    sbc c                                         ; $5237: $99
    db $DD                                        ; $5238: $DD
    adc b                                         ; $5239: $88
    db $DD                                        ; $523A: $DD
    ld [$081C], sp                                ; $523B: $08 $1C $08
    inc c                                         ; $523E: $0C
    nop                                           ; $523F: $00
    nop                                           ; $5240: $00

jr_01F_5241:
    nop                                           ; $5241: $00

jr_01F_5242:
    nop                                           ; $5242: $00
    nop                                           ; $5243: $00
    nop                                           ; $5244: $00
    nop                                           ; $5245: $00
    nop                                           ; $5246: $00
    nop                                           ; $5247: $00
    nop                                           ; $5248: $00
    nop                                           ; $5249: $00
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
    inc bc                                        ; $5258: $03
    nop                                           ; $5259: $00
    ld b, $01                                     ; $525A: $06 $01
    rra                                           ; $525C: $1F
    ld b, $7F                                     ; $525D: $06 $7F
    dec e                                         ; $525F: $1D
    nop                                           ; $5260: $00
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
    inc c                                         ; $5274: $0C
    nop                                           ; $5275: $00
    db $F4                                        ; $5276: $F4
    ld [$A0D9], sp                                ; $5277: $08 $D9 $A0
    sbc l                                         ; $527A: $9D
    ld l, b                                       ; $527B: $68
    cp $0C                                        ; $527C: $FE $0C
    cp [hl]                                       ; $527E: $BE
    ld c, h                                       ; $527F: $4C
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
    ret nz                                        ; $5294: $C0

    nop                                           ; $5295: $00
    and b                                         ; $5296: $A0
    ld b, b                                       ; $5297: $40
    ld d, b                                       ; $5298: $50

jr_01F_5299:
    jr nz, jr_01F_52E3                            ; $5299: $20 $48

jr_01F_529B:
    jr nc, @+$26                                  ; $529B: $30 $24

    jr jr_01F_5241                                ; $529D: $18 $A2

    inc e                                         ; $529F: $1C
    add b                                         ; $52A0: $80
    nop                                           ; $52A1: $00
    add b                                         ; $52A2: $80
    nop                                           ; $52A3: $00
    add b                                         ; $52A4: $80
    nop                                           ; $52A5: $00
    ret nz                                        ; $52A6: $C0

    add b                                         ; $52A7: $80
    ret nz                                        ; $52A8: $C0

    add b                                         ; $52A9: $80
    ret nz                                        ; $52AA: $C0

    add b                                         ; $52AB: $80
    ret nz                                        ; $52AC: $C0

    add b                                         ; $52AD: $80
    ret nz                                        ; $52AE: $C0

    add b                                         ; $52AF: $80
    ret nz                                        ; $52B0: $C0

    add b                                         ; $52B1: $80
    ret nz                                        ; $52B2: $C0

    add b                                         ; $52B3: $80
    ret nz                                        ; $52B4: $C0

    add b                                         ; $52B5: $80
    ret nz                                        ; $52B6: $C0

    nop                                           ; $52B7: $00
    nop                                           ; $52B8: $00
    nop                                           ; $52B9: $00
    nop                                           ; $52BA: $00
    nop                                           ; $52BB: $00
    nop                                           ; $52BC: $00
    nop                                           ; $52BD: $00
    nop                                           ; $52BE: $00
    nop                                           ; $52BF: $00
    ld bc, $0300                                  ; $52C0: $01 $00 $03
    ld bc, $0307                                  ; $52C3: $01 $07 $03
    rrca                                          ; $52C6: $0F
    rlca                                          ; $52C7: $07
    rra                                           ; $52C8: $1F
    rrca                                          ; $52C9: $0F
    ccf                                           ; $52CA: $3F
    rra                                           ; $52CB: $1F
    ccf                                           ; $52CC: $3F
    rra                                           ; $52CD: $1F
    ld a, a                                       ; $52CE: $7F
    ccf                                           ; $52CF: $3F
    ld a, a                                       ; $52D0: $7F
    scf                                           ; $52D1: $37
    rst RST_38                                    ; $52D2: $FF
    ld c, a                                       ; $52D3: $4F
    rst RST_38                                    ; $52D4: $FF
    rla                                           ; $52D5: $17
    ccf                                           ; $52D6: $3F
    rlca                                          ; $52D7: $07
    rra                                           ; $52D8: $1F
    ld c, $1E                                     ; $52D9: $0E $1E
    inc c                                         ; $52DB: $0C
    inc a                                         ; $52DC: $3C
    jr jr_01F_5317                                ; $52DD: $18 $38

    db $10                                        ; $52DF: $10
    ld bc, $0E00                                  ; $52E0: $01 $00 $0E

jr_01F_52E3:
    ld bc, $0F30                                  ; $52E3: $01 $30 $0F
    rst RST_08                                    ; $52E6: $CF
    ccf                                           ; $52E7: $3F
    ld a, a                                       ; $52E8: $7F
    rst RST_38                                    ; $52E9: $FF
    rst RST_38                                    ; $52EA: $FF
    rst RST_38                                    ; $52EB: $FF
    rst RST_38                                    ; $52EC: $FF
    rst RST_38                                    ; $52ED: $FF
    rst RST_38                                    ; $52EE: $FF
    rst RST_38                                    ; $52EF: $FF
    rst RST_38                                    ; $52F0: $FF
    rst RST_38                                    ; $52F1: $FF
    rst RST_38                                    ; $52F2: $FF
    rst RST_38                                    ; $52F3: $FF
    rst RST_38                                    ; $52F4: $FF
    rst RST_38                                    ; $52F5: $FF
    rst RST_38                                    ; $52F6: $FF
    rst RST_38                                    ; $52F7: $FF
    rst RST_38                                    ; $52F8: $FF
    cp $FF                                        ; $52F9: $FE $FF
    rst RST_38                                    ; $52FB: $FF
    rst RST_38                                    ; $52FC: $FF
    xor $FE                                       ; $52FD: $EE $FE
    sbc h                                         ; $52FF: $9C
    cp $00                                        ; $5300: $FE $00
    ld bc, $00FE                                  ; $5302: $01 $FE $00
    rst RST_38                                    ; $5305: $FF
    db $FC                                        ; $5306: $FC
    rst RST_38                                    ; $5307: $FF
    ldh [rIE], a                                  ; $5308: $E0 $FF
    add b                                         ; $530A: $80
    rst RST_38                                    ; $530B: $FF

jr_01F_530C:
    ldh [rIE], a                                  ; $530C: $E0 $FF
    rst RST_38                                    ; $530E: $FF
    rst RST_38                                    ; $530F: $FF
    db $FC                                        ; $5310: $FC
    rst RST_38                                    ; $5311: $FF
    ldh a, [rIE]                                  ; $5312: $F0 $FF
    rst RST_00                                    ; $5314: $C7
    ld hl, sp+$3E                                 ; $5315: $F8 $3E

jr_01F_5317:
    ret nz                                        ; $5317: $C0

    db $DD                                        ; $5318: $DD
    ld a, [hl+]                                   ; $5319: $2A
    cp a                                          ; $531A: $BF
    jr jr_01F_539A                                ; $531B: $18 $7D

    ld a, [de]                                    ; $531D: $1A
    db $FC                                        ; $531E: $FC
    ld h, e                                       ; $531F: $63
    ret nz                                        ; $5320: $C0

    nop                                           ; $5321: $00
    jr c, @-$3E                                   ; $5322: $38 $C0

    inc b                                         ; $5324: $04
    ld hl, sp+$1C                                 ; $5325: $F8 $1C
    ldh [$FFE0], a                                ; $5327: $E0 $E0
    nop                                           ; $5329: $00
    jr jr_01F_530C                                ; $532A: $18 $E0

    ld b, $F8                                     ; $532C: $06 $F8
    ld bc, $7FFE                                  ; $532E: $01 $FE $7F
    add b                                         ; $5331: $80
    add b                                         ; $5332: $80
    nop                                           ; $5333: $00
    nop                                           ; $5334: $00
    nop                                           ; $5335: $00
    add b                                         ; $5336: $80
    nop                                           ; $5337: $00
    ret nz                                        ; $5338: $C0

    add b                                         ; $5339: $80
    ldh [$FFC0], a                                ; $533A: $E0 $C0
    ldh [rLCDC], a                                ; $533C: $E0 $40
    ldh [rP1], a                                  ; $533E: $E0 $00
    nop                                           ; $5340: $00
    nop                                           ; $5341: $00
    add b                                         ; $5342: $80
    nop                                           ; $5343: $00
    ret nz                                        ; $5344: $C0

    add b                                         ; $5345: $80
    ldh [rLCDC], a                                ; $5346: $E0 $40
    ldh a, [$FF60]                                ; $5348: $F0 $60
    db $EB                                        ; $534A: $EB
    ret nc                                        ; $534B: $D0

    push af                                       ; $534C: $F5
    adc d                                         ; $534D: $8A
    adc c                                         ; $534E: $89
    ld b, $46                                     ; $534F: $06 $46
    add b                                         ; $5351: $80
    ldh [rP1], a                                  ; $5352: $E0 $00
    ldh a, [$FF60]                                ; $5354: $F0 $60
    cp $60                                        ; $5356: $FE $60
    ld a, [hl]                                    ; $5358: $7E
    nop                                           ; $5359: $00
    inc a                                         ; $535A: $3C
    nop                                           ; $535B: $00
    jr jr_01F_535E                                ; $535C: $18 $00

jr_01F_535E:
    nop                                           ; $535E: $00
    nop                                           ; $535F: $00
    push af                                       ; $5360: $F5
    ld l, d                                       ; $5361: $6A
    pop af                                        ; $5362: $F1
    adc [hl]                                      ; $5363: $8E
    ei                                            ; $5364: $FB
    db $E4                                        ; $5365: $E4
    rst RST_38                                    ; $5366: $FF
    ldh [$FFFA], a                                ; $5367: $E0 $FA
    rst RST_28                                    ; $5369: $EF
    ld a, [$DF5F]                                 ; $536A: $FA $5F $DF
    ld c, $1F                                     ; $536D: $0E $1F
    nop                                           ; $536F: $00
    cpl                                           ; $5370: $2F
    inc d                                         ; $5371: $14
    call z, $CA33                                 ; $5372: $CC $33 $CA
    or c                                          ; $5375: $B1
    pop af                                        ; $5376: $F1
    ret nz                                        ; $5377: $C0

    ret nz                                        ; $5378: $C0

    nop                                           ; $5379: $00
    nop                                           ; $537A: $00
    nop                                           ; $537B: $00
    nop                                           ; $537C: $00
    nop                                           ; $537D: $00
    nop                                           ; $537E: $00
    nop                                           ; $537F: $00
    db $FD                                        ; $5380: $FD
    ld [hl-], a                                   ; $5381: $32
    ld [hl], e                                    ; $5382: $73
    jr nz, @-$1B                                  ; $5383: $20 $E3

    ld b, c                                       ; $5385: $41
    pop bc                                        ; $5386: $C1
    nop                                           ; $5387: $00
    ld bc, $0000                                  ; $5388: $01 $00 $00
    nop                                           ; $538B: $00
    nop                                           ; $538C: $00
    nop                                           ; $538D: $00
    nop                                           ; $538E: $00
    nop                                           ; $538F: $00
    nop                                           ; $5390: $00
    nop                                           ; $5391: $00
    nop                                           ; $5392: $00
    nop                                           ; $5393: $00
    ld bc, $0700                                  ; $5394: $01 $00 $07
    ld bc, $0207                                  ; $5397: $01 $07 $02

jr_01F_539A:
    rrca                                          ; $539A: $0F
    ld b, $0E                                     ; $539B: $06 $0E
    inc b                                         ; $539D: $04
    inc c                                         ; $539E: $0C
    nop                                           ; $539F: $00
    rlca                                          ; $53A0: $07
    ld [bc], a                                    ; $53A1: $02
    ld b, $00                                     ; $53A2: $06 $00
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
    nop                                           ; $53BC: $00
    nop                                           ; $53BD: $00
    nop                                           ; $53BE: $00
    nop                                           ; $53BF: $00
    rst RST_38                                    ; $53C0: $FF
    ld [hl], a                                    ; $53C1: $77
    rst RST_38                                    ; $53C2: $FF
    inc [hl]                                      ; $53C3: $34
    cp a                                          ; $53C4: $BF
    ld b, b                                       ; $53C5: $40
    rst RST_10                                    ; $53C6: $D7
    add hl, hl                                    ; $53C7: $29
    rst RST_08                                    ; $53C8: $CF
    ld sp, $C6FB                                  ; $53C9: $31 $FB $C6
    db $EB                                        ; $53CC: $EB
    sbc $FF                                       ; $53CD: $DE $FF
    adc $FF                                       ; $53CF: $CE $FF
    add b                                         ; $53D1: $80
    rst RST_00                                    ; $53D2: $C7
    ld a, [hl-]                                   ; $53D3: $3A
    rst RST_20                                    ; $53D4: $E7
    ret c                                         ; $53D5: $D8

    ld sp, hl                                     ; $53D6: $F9
    ret nz                                        ; $53D7: $C0

    ldh [rP1], a                                  ; $53D8: $E0 $00
    ldh a, [$FF60]                                ; $53DA: $F0 $60
    ldh a, [$FFE0]                                ; $53DC: $F0 $E0
    ldh a, [rP1]                                  ; $53DE: $F0 $00
    ld a, [bc]                                    ; $53E0: $0A
    inc b                                         ; $53E1: $04
    ld a, [$E604]                                 ; $53E2: $FA $04 $E6
    ret c                                         ; $53E5: $D8

    ld hl, sp-$40                                 ; $53E6: $F8 $C0
    ldh a, [$FFC0]                                ; $53E8: $F0 $C0

jr_01F_53EA:
    ld hl, sp-$80                                 ; $53EA: $F8 $80
    cp $00                                        ; $53EC: $FE $00
    sbc c                                         ; $53EE: $99
    ld b, $C9                                     ; $53EF: $06 $C9
    ld b, $26                                     ; $53F1: $06 $26
    ret nz                                        ; $53F3: $C0

    ld h, b                                       ; $53F4: $60
    add b                                         ; $53F5: $80
    ldh a, [$FF60]                                ; $53F6: $F0 $60
    ld hl, sp+$60                                 ; $53F8: $F8 $60
    ld a, h                                       ; $53FA: $7C
    ld [$1C3E], sp                                ; $53FB: $08 $3E $1C
    ld a, $00                                     ; $53FE: $3E $00
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
    nop                                           ; $5414: $00
    nop                                           ; $5415: $00
    nop                                           ; $5416: $00
    nop                                           ; $5417: $00
    jr nc, jr_01F_541A                            ; $5418: $30 $00

jr_01F_541A:
    rst RST_18                                    ; $541A: $DF
    jr nz, @+$01                                  ; $541B: $20 $FF

    ld c, a                                       ; $541D: $4F
    rst RST_38                                    ; $541E: $FF
    ld l, a                                       ; $541F: $6F
    nop                                           ; $5420: $00
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
    add b                                         ; $5438: $80
    nop                                           ; $5439: $00
    ret nz                                        ; $543A: $C0

    add b                                         ; $543B: $80
    ret nz                                        ; $543C: $C0

    add b                                         ; $543D: $80
    add [hl]                                      ; $543E: $86
    nop                                           ; $543F: $00
    inc bc                                        ; $5440: $03
    nop                                           ; $5441: $00
    add d                                         ; $5442: $82
    ld bc, $0081                                  ; $5443: $01 $81 $00
    add e                                         ; $5446: $83
    ld bc, $0387                                  ; $5447: $01 $87 $03
    add a                                         ; $544A: $87
    inc bc                                        ; $544B: $03
    add e                                         ; $544C: $83
    nop                                           ; $544D: $00
    or b                                          ; $544E: $B0
    nop                                           ; $544F: $00
    pop de                                        ; $5450: $D1
    jr nz, jr_01F_53EA                            ; $5451: $20 $97

    ld h, c                                       ; $5453: $61
    ld c, a                                       ; $5454: $4F
    di                                            ; $5455: $F3
    ld d, a                                       ; $5456: $57
    ei                                            ; $5457: $FB
    rst RST_18                                    ; $5458: $DF
    pop af                                        ; $5459: $F1
    pop af                                        ; $545A: $F1
    ldh [$FFF1], a                                ; $545B: $E0 $F1
    ret nz                                        ; $545D: $C0

    pop de                                        ; $545E: $D1
    jr nz, @+$1A                                  ; $545F: $20 $18

    nop                                           ; $5461: $00
    jr z, jr_01F_5474                             ; $5462: $28 $10

    jr z, jr_01F_5476                             ; $5464: $28 $10

    ld c, c                                       ; $5466: $49
    jr nc, jr_01F_54B3                            ; $5467: $30 $4A

    ld sp, $314A                                  ; $5469: $31 $4A $31
    sub h                                         ; $546C: $94
    ld a, e                                       ; $546D: $7B
    sub h                                         ; $546E: $94
    ld a, e                                       ; $546F: $7B
    or b                                          ; $5470: $B0
    ld a, a                                       ; $5471: $7F
    ld [hl-], a                                   ; $5472: $32
    rst RST_38                                    ; $5473: $FF

jr_01F_5474:
    ld [hl], d                                    ; $5474: $72
    rst RST_38                                    ; $5475: $FF

jr_01F_5476:
    halt                                          ; $5476: $76
    rst RST_38                                    ; $5477: $FF
    or $FF                                        ; $5478: $F6 $FF
    cp $FF                                        ; $547A: $FE $FF
    cp $FF                                        ; $547C: $FE $FF
    rst RST_38                                    ; $547E: $FF
    rst RST_38                                    ; $547F: $FF
    ld bc, $0100                                  ; $5480: $01 $00 $01
    nop                                           ; $5483: $00
    ld bc, $0100                                  ; $5484: $01 $00 $01
    nop                                           ; $5487: $00
    inc bc                                        ; $5488: $03
    ld bc, $0103                                  ; $5489: $01 $03 $01
    inc bc                                        ; $548C: $03
    ld bc, $0103                                  ; $548D: $01 $03 $01
    inc bc                                        ; $5490: $03
    ld bc, $0103                                  ; $5491: $01 $03 $01
    inc bc                                        ; $5494: $03
    ld bc, $0001                                  ; $5495: $01 $01 $00
    nop                                           ; $5498: $00
    nop                                           ; $5499: $00
    nop                                           ; $549A: $00
    nop                                           ; $549B: $00
    nop                                           ; $549C: $00
    nop                                           ; $549D: $00
    nop                                           ; $549E: $00
    nop                                           ; $549F: $00
    rst RST_38                                    ; $54A0: $FF
    rst RST_38                                    ; $54A1: $FF
    rst RST_38                                    ; $54A2: $FF
    rst RST_38                                    ; $54A3: $FF
    rst RST_38                                    ; $54A4: $FF
    db $FC                                        ; $54A5: $FC
    db $FC                                        ; $54A6: $FC
    ldh a, [$FFF0]                                ; $54A7: $F0 $F0
    ret nz                                        ; $54A9: $C0

    ret nz                                        ; $54AA: $C0

    nop                                           ; $54AB: $00
    nop                                           ; $54AC: $00
    nop                                           ; $54AD: $00
    nop                                           ; $54AE: $00
    nop                                           ; $54AF: $00
    nop                                           ; $54B0: $00
    nop                                           ; $54B1: $00
    nop                                           ; $54B2: $00

jr_01F_54B3:
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
    ld h, b                                       ; $54C0: $60
    nop                                           ; $54C1: $00
    nop                                           ; $54C2: $00
    nop                                           ; $54C3: $00
    ld bc, $0100                                  ; $54C4: $01 $00 $01
    nop                                           ; $54C7: $00
    nop                                           ; $54C8: $00
    nop                                           ; $54C9: $00
    nop                                           ; $54CA: $00
    nop                                           ; $54CB: $00
    nop                                           ; $54CC: $00
    nop                                           ; $54CD: $00
    nop                                           ; $54CE: $00
    nop                                           ; $54CF: $00
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
    inc bc                                        ; $54E0: $03
    nop                                           ; $54E1: $00
    ld [bc], a                                    ; $54E2: $02
    ld bc, $0001                                  ; $54E3: $01 $01 $00
    inc bc                                        ; $54E6: $03
    ld bc, $0307                                  ; $54E7: $01 $07 $03
    rlca                                          ; $54EA: $07
    inc bc                                        ; $54EB: $03
    inc bc                                        ; $54EC: $03
    nop                                           ; $54ED: $00

jr_01F_54EE:
    nop                                           ; $54EE: $00
    nop                                           ; $54EF: $00
    ld bc, $0700                                  ; $54F0: $01 $00 $07
    ld bc, $030F                                  ; $54F3: $01 $0F $03
    rst RST_30                                    ; $54F6: $F7
    dec bc                                        ; $54F7: $0B
    ld c, a                                       ; $54F8: $4F
    or c                                          ; $54F9: $B1
    pop de                                        ; $54FA: $D1
    jr nz, jr_01F_54EE                            ; $54FB: $20 $F1

    ret nz                                        ; $54FD: $C0

    pop de                                        ; $54FE: $D1
    jr nz, jr_01F_5561                            ; $54FF: $20 $60

    nop                                           ; $5501: $00
    nop                                           ; $5502: $00
    nop                                           ; $5503: $00
    ld bc, $0100                                  ; $5504: $01 $00 $01
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
    nop                                           ; $5520: $00
    nop                                           ; $5521: $00
    nop                                           ; $5522: $00
    nop                                           ; $5523: $00
    nop                                           ; $5524: $00
    nop                                           ; $5525: $00
    nop                                           ; $5526: $00
    nop                                           ; $5527: $00
    ld bc, $0100                                  ; $5528: $01 $00 $01
    nop                                           ; $552B: $00
    inc bc                                        ; $552C: $03
    nop                                           ; $552D: $00
    rrca                                          ; $552E: $0F
    inc bc                                        ; $552F: $03
    ccf                                           ; $5530: $3F
    inc c                                         ; $5531: $0C
    ld a, h                                       ; $5532: $7C
    jr nc, jr_01F_55A5                            ; $5533: $30 $70

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
    rst RST_38                                    ; $5540: $FF
    rst RST_38                                    ; $5541: $FF
    rst RST_38                                    ; $5542: $FF
    rst RST_38                                    ; $5543: $FF
    rst RST_38                                    ; $5544: $FF
    rst RST_38                                    ; $5545: $FF
    rst RST_38                                    ; $5546: $FF
    rst RST_38                                    ; $5547: $FF
    rst RST_38                                    ; $5548: $FF
    rst RST_38                                    ; $5549: $FF
    rst RST_38                                    ; $554A: $FF
    rst RST_38                                    ; $554B: $FF
    rst RST_38                                    ; $554C: $FF
    rst RST_38                                    ; $554D: $FF
    rst RST_38                                    ; $554E: $FF
    rst RST_38                                    ; $554F: $FF
    rst RST_38                                    ; $5550: $FF
    rst RST_38                                    ; $5551: $FF
    rst RST_38                                    ; $5552: $FF
    rst RST_38                                    ; $5553: $FF
    rst RST_38                                    ; $5554: $FF
    rst RST_38                                    ; $5555: $FF
    rst RST_38                                    ; $5556: $FF
    rst RST_38                                    ; $5557: $FF
    rst RST_38                                    ; $5558: $FF
    rst RST_38                                    ; $5559: $FF
    rst RST_38                                    ; $555A: $FF
    rst RST_38                                    ; $555B: $FF
    rst RST_38                                    ; $555C: $FF
    rst RST_38                                    ; $555D: $FF
    rst RST_38                                    ; $555E: $FF
    rst RST_38                                    ; $555F: $FF
    rst RST_38                                    ; $5560: $FF

jr_01F_5561:
    rst RST_38                                    ; $5561: $FF
    rst RST_38                                    ; $5562: $FF
    rst RST_38                                    ; $5563: $FF
    rst RST_38                                    ; $5564: $FF
    rst RST_38                                    ; $5565: $FF
    rst RST_38                                    ; $5566: $FF
    rst RST_38                                    ; $5567: $FF
    rst RST_38                                    ; $5568: $FF
    rst RST_38                                    ; $5569: $FF
    rst RST_38                                    ; $556A: $FF
    rst RST_38                                    ; $556B: $FF
    rst RST_38                                    ; $556C: $FF
    rst RST_38                                    ; $556D: $FF
    rst RST_38                                    ; $556E: $FF
    rst RST_38                                    ; $556F: $FF
    rst RST_38                                    ; $5570: $FF
    rst RST_38                                    ; $5571: $FF
    rst RST_38                                    ; $5572: $FF
    rst RST_38                                    ; $5573: $FF
    rst RST_38                                    ; $5574: $FF
    rst RST_38                                    ; $5575: $FF
    rst RST_38                                    ; $5576: $FF
    rst RST_38                                    ; $5577: $FF
    rst RST_38                                    ; $5578: $FF
    rst RST_38                                    ; $5579: $FF
    rst RST_38                                    ; $557A: $FF
    rst RST_38                                    ; $557B: $FF
    rst RST_38                                    ; $557C: $FF
    rst RST_38                                    ; $557D: $FF
    rst RST_38                                    ; $557E: $FF
    rst RST_38                                    ; $557F: $FF
    rst RST_38                                    ; $5580: $FF
    rst RST_38                                    ; $5581: $FF
    rst RST_38                                    ; $5582: $FF
    rst RST_38                                    ; $5583: $FF
    rst RST_38                                    ; $5584: $FF
    rst RST_38                                    ; $5585: $FF
    rst RST_38                                    ; $5586: $FF
    rst RST_38                                    ; $5587: $FF
    rst RST_38                                    ; $5588: $FF
    rst RST_38                                    ; $5589: $FF
    rst RST_38                                    ; $558A: $FF
    rst RST_38                                    ; $558B: $FF
    rst RST_38                                    ; $558C: $FF
    rst RST_38                                    ; $558D: $FF
    rst RST_38                                    ; $558E: $FF
    rst RST_38                                    ; $558F: $FF
    rst RST_38                                    ; $5590: $FF
    rst RST_38                                    ; $5591: $FF
    rst RST_38                                    ; $5592: $FF
    rst RST_38                                    ; $5593: $FF
    rst RST_38                                    ; $5594: $FF
    rst RST_38                                    ; $5595: $FF
    rst RST_38                                    ; $5596: $FF
    rst RST_38                                    ; $5597: $FF
    rst RST_38                                    ; $5598: $FF
    rst RST_38                                    ; $5599: $FF
    rst RST_38                                    ; $559A: $FF
    rst RST_38                                    ; $559B: $FF
    rst RST_38                                    ; $559C: $FF
    rst RST_38                                    ; $559D: $FF
    rst RST_38                                    ; $559E: $FF
    rst RST_38                                    ; $559F: $FF
    rst RST_38                                    ; $55A0: $FF
    rst RST_38                                    ; $55A1: $FF
    rst RST_38                                    ; $55A2: $FF
    rst RST_38                                    ; $55A3: $FF
    rst RST_38                                    ; $55A4: $FF

jr_01F_55A5:
    rst RST_38                                    ; $55A5: $FF
    rst RST_38                                    ; $55A6: $FF
    rst RST_38                                    ; $55A7: $FF
    rst RST_38                                    ; $55A8: $FF
    rst RST_38                                    ; $55A9: $FF
    rst RST_38                                    ; $55AA: $FF
    rst RST_38                                    ; $55AB: $FF
    rst RST_38                                    ; $55AC: $FF
    rst RST_38                                    ; $55AD: $FF
    rst RST_38                                    ; $55AE: $FF
    rst RST_38                                    ; $55AF: $FF
    rst RST_38                                    ; $55B0: $FF
    rst RST_38                                    ; $55B1: $FF
    rst RST_38                                    ; $55B2: $FF
    rst RST_38                                    ; $55B3: $FF
    rst RST_38                                    ; $55B4: $FF
    rst RST_38                                    ; $55B5: $FF
    rst RST_38                                    ; $55B6: $FF
    rst RST_38                                    ; $55B7: $FF
    rst RST_38                                    ; $55B8: $FF
    rst RST_38                                    ; $55B9: $FF
    rst RST_38                                    ; $55BA: $FF
    rst RST_38                                    ; $55BB: $FF
    rst RST_38                                    ; $55BC: $FF
    rst RST_38                                    ; $55BD: $FF
    rst RST_38                                    ; $55BE: $FF
    rst RST_38                                    ; $55BF: $FF
    rst RST_38                                    ; $55C0: $FF
    rst RST_38                                    ; $55C1: $FF
    rst RST_38                                    ; $55C2: $FF
    rst RST_38                                    ; $55C3: $FF
    rst RST_38                                    ; $55C4: $FF
    rst RST_38                                    ; $55C5: $FF
    rst RST_38                                    ; $55C6: $FF
    rst RST_38                                    ; $55C7: $FF
    rst RST_38                                    ; $55C8: $FF
    rst RST_38                                    ; $55C9: $FF
    rst RST_38                                    ; $55CA: $FF
    rst RST_38                                    ; $55CB: $FF
    rst RST_38                                    ; $55CC: $FF
    rst RST_38                                    ; $55CD: $FF
    rst RST_38                                    ; $55CE: $FF
    rst RST_38                                    ; $55CF: $FF
    rst RST_38                                    ; $55D0: $FF
    rst RST_38                                    ; $55D1: $FF
    rst RST_38                                    ; $55D2: $FF
    rst RST_38                                    ; $55D3: $FF
    rst RST_38                                    ; $55D4: $FF
    rst RST_38                                    ; $55D5: $FF
    rst RST_38                                    ; $55D6: $FF
    rst RST_38                                    ; $55D7: $FF
    rst RST_38                                    ; $55D8: $FF
    rst RST_38                                    ; $55D9: $FF
    rst RST_38                                    ; $55DA: $FF
    rst RST_38                                    ; $55DB: $FF
    rst RST_38                                    ; $55DC: $FF
    rst RST_38                                    ; $55DD: $FF
    rst RST_38                                    ; $55DE: $FF
    rst RST_38                                    ; $55DF: $FF
    rst RST_38                                    ; $55E0: $FF
    rst RST_38                                    ; $55E1: $FF
    rst RST_38                                    ; $55E2: $FF
    rst RST_38                                    ; $55E3: $FF
    rst RST_38                                    ; $55E4: $FF
    rst RST_38                                    ; $55E5: $FF
    rst RST_38                                    ; $55E6: $FF
    rst RST_38                                    ; $55E7: $FF
    rst RST_38                                    ; $55E8: $FF
    rst RST_38                                    ; $55E9: $FF
    rst RST_38                                    ; $55EA: $FF
    rst RST_38                                    ; $55EB: $FF
    rst RST_38                                    ; $55EC: $FF
    rst RST_38                                    ; $55ED: $FF
    rst RST_38                                    ; $55EE: $FF
    rst RST_38                                    ; $55EF: $FF
    rst RST_38                                    ; $55F0: $FF
    rst RST_38                                    ; $55F1: $FF
    rst RST_38                                    ; $55F2: $FF
    rst RST_38                                    ; $55F3: $FF
    rst RST_38                                    ; $55F4: $FF
    rst RST_38                                    ; $55F5: $FF
    rst RST_38                                    ; $55F6: $FF
    rst RST_38                                    ; $55F7: $FF
    rst RST_38                                    ; $55F8: $FF
    rst RST_38                                    ; $55F9: $FF
    rst RST_38                                    ; $55FA: $FF
    rst RST_38                                    ; $55FB: $FF
    rst RST_38                                    ; $55FC: $FF
    rst RST_38                                    ; $55FD: $FF
    rst RST_38                                    ; $55FE: $FF
    rst RST_38                                    ; $55FF: $FF
    rst RST_38                                    ; $5600: $FF
    rst RST_38                                    ; $5601: $FF
    rst RST_38                                    ; $5602: $FF
    rst RST_38                                    ; $5603: $FF
    rst RST_38                                    ; $5604: $FF
    rst RST_38                                    ; $5605: $FF
    rst RST_38                                    ; $5606: $FF
    rst RST_38                                    ; $5607: $FF
    rst RST_38                                    ; $5608: $FF
    rst RST_38                                    ; $5609: $FF
    rst RST_38                                    ; $560A: $FF
    rst RST_38                                    ; $560B: $FF
    rst RST_38                                    ; $560C: $FF
    rst RST_38                                    ; $560D: $FF
    rst RST_38                                    ; $560E: $FF
    rst RST_38                                    ; $560F: $FF
    rst RST_38                                    ; $5610: $FF
    rst RST_38                                    ; $5611: $FF
    rst RST_38                                    ; $5612: $FF
    rst RST_38                                    ; $5613: $FF
    rst RST_38                                    ; $5614: $FF
    rst RST_38                                    ; $5615: $FF
    rst RST_38                                    ; $5616: $FF
    rst RST_38                                    ; $5617: $FF
    rst RST_38                                    ; $5618: $FF
    rst RST_38                                    ; $5619: $FF
    rst RST_38                                    ; $561A: $FF
    rst RST_38                                    ; $561B: $FF
    rst RST_38                                    ; $561C: $FF
    rst RST_38                                    ; $561D: $FF
    rst RST_38                                    ; $561E: $FF
    rst RST_38                                    ; $561F: $FF
    rst RST_38                                    ; $5620: $FF
    rst RST_38                                    ; $5621: $FF
    rst RST_38                                    ; $5622: $FF
    rst RST_38                                    ; $5623: $FF
    rst RST_38                                    ; $5624: $FF
    rst RST_38                                    ; $5625: $FF
    rst RST_38                                    ; $5626: $FF
    rst RST_38                                    ; $5627: $FF
    rst RST_38                                    ; $5628: $FF
    rst RST_38                                    ; $5629: $FF
    rst RST_38                                    ; $562A: $FF
    rst RST_38                                    ; $562B: $FF
    rst RST_38                                    ; $562C: $FF
    rst RST_38                                    ; $562D: $FF
    rst RST_38                                    ; $562E: $FF
    rst RST_38                                    ; $562F: $FF
    rst RST_38                                    ; $5630: $FF
    rst RST_38                                    ; $5631: $FF
    rst RST_38                                    ; $5632: $FF
    rst RST_38                                    ; $5633: $FF
    rst RST_38                                    ; $5634: $FF
    rst RST_38                                    ; $5635: $FF
    rst RST_38                                    ; $5636: $FF
    rst RST_38                                    ; $5637: $FF
    rst RST_38                                    ; $5638: $FF
    rst RST_38                                    ; $5639: $FF
    rst RST_38                                    ; $563A: $FF
    rst RST_38                                    ; $563B: $FF
    rst RST_38                                    ; $563C: $FF
    rst RST_38                                    ; $563D: $FF
    rst RST_38                                    ; $563E: $FF
    rst RST_38                                    ; $563F: $FF
    rst RST_38                                    ; $5640: $FF
    rst RST_38                                    ; $5641: $FF
    rst RST_38                                    ; $5642: $FF
    rst RST_38                                    ; $5643: $FF
    rst RST_38                                    ; $5644: $FF
    rst RST_38                                    ; $5645: $FF
    rst RST_38                                    ; $5646: $FF
    rst RST_38                                    ; $5647: $FF
    rst RST_38                                    ; $5648: $FF
    rst RST_38                                    ; $5649: $FF
    rst RST_38                                    ; $564A: $FF
    rst RST_38                                    ; $564B: $FF
    rst RST_38                                    ; $564C: $FF
    rst RST_38                                    ; $564D: $FF
    rst RST_38                                    ; $564E: $FF
    rst RST_38                                    ; $564F: $FF
    rst RST_38                                    ; $5650: $FF
    rst RST_38                                    ; $5651: $FF
    rst RST_38                                    ; $5652: $FF
    rst RST_38                                    ; $5653: $FF
    rst RST_38                                    ; $5654: $FF
    rst RST_38                                    ; $5655: $FF
    rst RST_38                                    ; $5656: $FF
    rst RST_38                                    ; $5657: $FF
    rst RST_38                                    ; $5658: $FF
    rst RST_38                                    ; $5659: $FF
    rst RST_38                                    ; $565A: $FF
    rst RST_38                                    ; $565B: $FF
    rst RST_38                                    ; $565C: $FF
    rst RST_38                                    ; $565D: $FF
    rst RST_38                                    ; $565E: $FF
    rst RST_38                                    ; $565F: $FF
    rst RST_38                                    ; $5660: $FF
    rst RST_38                                    ; $5661: $FF
    rst RST_38                                    ; $5662: $FF
    rst RST_38                                    ; $5663: $FF
    rst RST_38                                    ; $5664: $FF
    rst RST_38                                    ; $5665: $FF
    rst RST_38                                    ; $5666: $FF
    rst RST_38                                    ; $5667: $FF
    rst RST_38                                    ; $5668: $FF
    rst RST_38                                    ; $5669: $FF
    rst RST_38                                    ; $566A: $FF
    rst RST_38                                    ; $566B: $FF
    rst RST_38                                    ; $566C: $FF
    rst RST_38                                    ; $566D: $FF
    rst RST_38                                    ; $566E: $FF
    rst RST_38                                    ; $566F: $FF
    rst RST_38                                    ; $5670: $FF
    rst RST_38                                    ; $5671: $FF
    rst RST_38                                    ; $5672: $FF
    rst RST_38                                    ; $5673: $FF
    rst RST_38                                    ; $5674: $FF
    rst RST_38                                    ; $5675: $FF
    rst RST_38                                    ; $5676: $FF
    rst RST_38                                    ; $5677: $FF
    rst RST_38                                    ; $5678: $FF
    rst RST_38                                    ; $5679: $FF
    rst RST_38                                    ; $567A: $FF
    rst RST_38                                    ; $567B: $FF
    rst RST_38                                    ; $567C: $FF
    rst RST_38                                    ; $567D: $FF
    rst RST_38                                    ; $567E: $FF
    rst RST_38                                    ; $567F: $FF
    rst RST_38                                    ; $5680: $FF
    rst RST_38                                    ; $5681: $FF
    rst RST_38                                    ; $5682: $FF
    rst RST_38                                    ; $5683: $FF
    rst RST_38                                    ; $5684: $FF
    rst RST_38                                    ; $5685: $FF
    rst RST_38                                    ; $5686: $FF
    rst RST_38                                    ; $5687: $FF
    rst RST_38                                    ; $5688: $FF
    rst RST_38                                    ; $5689: $FF
    rst RST_38                                    ; $568A: $FF
    rst RST_38                                    ; $568B: $FF
    rst RST_38                                    ; $568C: $FF
    rst RST_38                                    ; $568D: $FF
    rst RST_38                                    ; $568E: $FF
    rst RST_38                                    ; $568F: $FF
    rst RST_38                                    ; $5690: $FF
    rst RST_38                                    ; $5691: $FF
    rst RST_38                                    ; $5692: $FF
    rst RST_38                                    ; $5693: $FF
    rst RST_38                                    ; $5694: $FF
    rst RST_38                                    ; $5695: $FF
    rst RST_38                                    ; $5696: $FF
    rst RST_38                                    ; $5697: $FF
    rst RST_38                                    ; $5698: $FF
    rst RST_38                                    ; $5699: $FF
    rst RST_38                                    ; $569A: $FF
    rst RST_38                                    ; $569B: $FF
    rst RST_38                                    ; $569C: $FF
    rst RST_38                                    ; $569D: $FF
    rst RST_38                                    ; $569E: $FF
    rst RST_38                                    ; $569F: $FF
    rst RST_38                                    ; $56A0: $FF
    rst RST_38                                    ; $56A1: $FF
    rst RST_38                                    ; $56A2: $FF
    rst RST_38                                    ; $56A3: $FF
    rst RST_38                                    ; $56A4: $FF
    rst RST_38                                    ; $56A5: $FF
    rst RST_38                                    ; $56A6: $FF
    rst RST_38                                    ; $56A7: $FF
    rst RST_38                                    ; $56A8: $FF
    rst RST_38                                    ; $56A9: $FF
    rst RST_38                                    ; $56AA: $FF
    rst RST_38                                    ; $56AB: $FF
    rst RST_38                                    ; $56AC: $FF
    rst RST_38                                    ; $56AD: $FF
    rst RST_38                                    ; $56AE: $FF
    rst RST_38                                    ; $56AF: $FF
    rst RST_38                                    ; $56B0: $FF
    rst RST_38                                    ; $56B1: $FF
    rst RST_38                                    ; $56B2: $FF
    rst RST_38                                    ; $56B3: $FF
    rst RST_38                                    ; $56B4: $FF
    rst RST_38                                    ; $56B5: $FF
    rst RST_38                                    ; $56B6: $FF
    rst RST_38                                    ; $56B7: $FF
    rst RST_38                                    ; $56B8: $FF
    rst RST_38                                    ; $56B9: $FF
    rst RST_38                                    ; $56BA: $FF
    rst RST_38                                    ; $56BB: $FF
    rst RST_38                                    ; $56BC: $FF
    rst RST_38                                    ; $56BD: $FF
    rst RST_38                                    ; $56BE: $FF
    rst RST_38                                    ; $56BF: $FF
    rst RST_38                                    ; $56C0: $FF
    rst RST_38                                    ; $56C1: $FF
    rst RST_38                                    ; $56C2: $FF
    rst RST_38                                    ; $56C3: $FF
    rst RST_38                                    ; $56C4: $FF
    rst RST_38                                    ; $56C5: $FF
    rst RST_38                                    ; $56C6: $FF
    rst RST_38                                    ; $56C7: $FF
    rst RST_38                                    ; $56C8: $FF
    rst RST_38                                    ; $56C9: $FF
    rst RST_38                                    ; $56CA: $FF
    rst RST_38                                    ; $56CB: $FF
    rst RST_38                                    ; $56CC: $FF
    rst RST_38                                    ; $56CD: $FF
    rst RST_38                                    ; $56CE: $FF
    rst RST_38                                    ; $56CF: $FF
    rst RST_38                                    ; $56D0: $FF
    rst RST_38                                    ; $56D1: $FF
    rst RST_38                                    ; $56D2: $FF
    rst RST_38                                    ; $56D3: $FF
    rst RST_38                                    ; $56D4: $FF
    rst RST_38                                    ; $56D5: $FF
    rst RST_38                                    ; $56D6: $FF
    rst RST_38                                    ; $56D7: $FF
    rst RST_38                                    ; $56D8: $FF
    rst RST_38                                    ; $56D9: $FF
    rst RST_38                                    ; $56DA: $FF
    rst RST_38                                    ; $56DB: $FF
    rst RST_38                                    ; $56DC: $FF
    rst RST_38                                    ; $56DD: $FF
    rst RST_38                                    ; $56DE: $FF
    rst RST_38                                    ; $56DF: $FF
    rst RST_38                                    ; $56E0: $FF
    rst RST_38                                    ; $56E1: $FF
    rst RST_38                                    ; $56E2: $FF
    rst RST_38                                    ; $56E3: $FF
    rst RST_38                                    ; $56E4: $FF
    rst RST_38                                    ; $56E5: $FF
    rst RST_38                                    ; $56E6: $FF
    rst RST_38                                    ; $56E7: $FF
    rst RST_38                                    ; $56E8: $FF
    rst RST_38                                    ; $56E9: $FF
    rst RST_38                                    ; $56EA: $FF
    rst RST_38                                    ; $56EB: $FF
    rst RST_38                                    ; $56EC: $FF
    rst RST_38                                    ; $56ED: $FF
    rst RST_38                                    ; $56EE: $FF
    rst RST_38                                    ; $56EF: $FF
    rst RST_38                                    ; $56F0: $FF
    rst RST_38                                    ; $56F1: $FF
    rst RST_38                                    ; $56F2: $FF
    rst RST_38                                    ; $56F3: $FF
    rst RST_38                                    ; $56F4: $FF
    rst RST_38                                    ; $56F5: $FF
    rst RST_38                                    ; $56F6: $FF
    rst RST_38                                    ; $56F7: $FF
    rst RST_38                                    ; $56F8: $FF
    rst RST_38                                    ; $56F9: $FF
    rst RST_38                                    ; $56FA: $FF
    rst RST_38                                    ; $56FB: $FF
    rst RST_38                                    ; $56FC: $FF
    rst RST_38                                    ; $56FD: $FF
    rst RST_38                                    ; $56FE: $FF
    rst RST_38                                    ; $56FF: $FF
    rst RST_38                                    ; $5700: $FF
    rst RST_38                                    ; $5701: $FF
    rst RST_38                                    ; $5702: $FF
    rst RST_38                                    ; $5703: $FF
    rst RST_38                                    ; $5704: $FF
    rst RST_38                                    ; $5705: $FF
    rst RST_38                                    ; $5706: $FF
    rst RST_38                                    ; $5707: $FF
    rst RST_38                                    ; $5708: $FF
    rst RST_38                                    ; $5709: $FF
    rst RST_38                                    ; $570A: $FF
    rst RST_38                                    ; $570B: $FF
    rst RST_38                                    ; $570C: $FF
    rst RST_38                                    ; $570D: $FF
    rst RST_38                                    ; $570E: $FF
    rst RST_38                                    ; $570F: $FF
    rst RST_38                                    ; $5710: $FF
    rst RST_38                                    ; $5711: $FF
    rst RST_38                                    ; $5712: $FF
    rst RST_38                                    ; $5713: $FF
    rst RST_38                                    ; $5714: $FF
    rst RST_38                                    ; $5715: $FF
    rst RST_38                                    ; $5716: $FF
    rst RST_38                                    ; $5717: $FF
    rst RST_38                                    ; $5718: $FF
    rst RST_38                                    ; $5719: $FF
    rst RST_38                                    ; $571A: $FF
    rst RST_38                                    ; $571B: $FF
    rst RST_38                                    ; $571C: $FF
    rst RST_38                                    ; $571D: $FF
    rst RST_38                                    ; $571E: $FF
    rst RST_38                                    ; $571F: $FF
    rst RST_38                                    ; $5720: $FF
    rst RST_38                                    ; $5721: $FF
    rst RST_38                                    ; $5722: $FF
    rst RST_38                                    ; $5723: $FF
    rst RST_38                                    ; $5724: $FF
    rst RST_38                                    ; $5725: $FF
    rst RST_38                                    ; $5726: $FF
    rst RST_38                                    ; $5727: $FF
    rst RST_38                                    ; $5728: $FF
    rst RST_38                                    ; $5729: $FF
    rst RST_38                                    ; $572A: $FF
    rst RST_38                                    ; $572B: $FF
    rst RST_38                                    ; $572C: $FF
    rst RST_38                                    ; $572D: $FF
    rst RST_38                                    ; $572E: $FF
    rst RST_38                                    ; $572F: $FF
    rst RST_38                                    ; $5730: $FF
    rst RST_38                                    ; $5731: $FF
    rst RST_38                                    ; $5732: $FF
    rst RST_38                                    ; $5733: $FF
    rst RST_38                                    ; $5734: $FF
    rst RST_38                                    ; $5735: $FF
    rst RST_38                                    ; $5736: $FF
    rst RST_38                                    ; $5737: $FF
    rst RST_38                                    ; $5738: $FF
    rst RST_38                                    ; $5739: $FF
    rst RST_38                                    ; $573A: $FF
    rst RST_38                                    ; $573B: $FF
    rst RST_38                                    ; $573C: $FF
    rst RST_38                                    ; $573D: $FF
    rst RST_38                                    ; $573E: $FF
    rst RST_38                                    ; $573F: $FF
    rst RST_38                                    ; $5740: $FF
    rst RST_38                                    ; $5741: $FF
    rst RST_38                                    ; $5742: $FF
    rst RST_38                                    ; $5743: $FF
    rst RST_38                                    ; $5744: $FF
    rst RST_38                                    ; $5745: $FF
    rst RST_38                                    ; $5746: $FF
    rst RST_38                                    ; $5747: $FF
    rst RST_38                                    ; $5748: $FF
    rst RST_38                                    ; $5749: $FF
    rst RST_38                                    ; $574A: $FF
    rst RST_38                                    ; $574B: $FF
    rst RST_38                                    ; $574C: $FF
    rst RST_38                                    ; $574D: $FF
    rst RST_38                                    ; $574E: $FF
    rst RST_38                                    ; $574F: $FF
    rst RST_38                                    ; $5750: $FF
    rst RST_38                                    ; $5751: $FF
    rst RST_38                                    ; $5752: $FF
    rst RST_38                                    ; $5753: $FF
    rst RST_38                                    ; $5754: $FF
    rst RST_38                                    ; $5755: $FF
    rst RST_38                                    ; $5756: $FF
    rst RST_38                                    ; $5757: $FF
    rst RST_38                                    ; $5758: $FF
    rst RST_38                                    ; $5759: $FF
    rst RST_38                                    ; $575A: $FF
    rst RST_38                                    ; $575B: $FF
    rst RST_38                                    ; $575C: $FF
    rst RST_38                                    ; $575D: $FF
    rst RST_38                                    ; $575E: $FF
    rst RST_38                                    ; $575F: $FF
    rst RST_38                                    ; $5760: $FF
    rst RST_38                                    ; $5761: $FF
    rst RST_38                                    ; $5762: $FF
    rst RST_38                                    ; $5763: $FF
    rst RST_38                                    ; $5764: $FF
    rst RST_38                                    ; $5765: $FF
    rst RST_38                                    ; $5766: $FF
    rst RST_38                                    ; $5767: $FF
    rst RST_38                                    ; $5768: $FF
    rst RST_38                                    ; $5769: $FF
    rst RST_38                                    ; $576A: $FF
    rst RST_38                                    ; $576B: $FF
    rst RST_38                                    ; $576C: $FF
    rst RST_38                                    ; $576D: $FF
    rst RST_38                                    ; $576E: $FF
    rst RST_38                                    ; $576F: $FF
    rst RST_38                                    ; $5770: $FF
    rst RST_38                                    ; $5771: $FF
    rst RST_38                                    ; $5772: $FF
    rst RST_38                                    ; $5773: $FF
    rst RST_38                                    ; $5774: $FF
    rst RST_38                                    ; $5775: $FF
    rst RST_38                                    ; $5776: $FF
    rst RST_38                                    ; $5777: $FF
    rst RST_38                                    ; $5778: $FF
    rst RST_38                                    ; $5779: $FF
    rst RST_38                                    ; $577A: $FF
    rst RST_38                                    ; $577B: $FF
    rst RST_38                                    ; $577C: $FF
    rst RST_38                                    ; $577D: $FF
    rst RST_38                                    ; $577E: $FF
    rst RST_38                                    ; $577F: $FF
    rst RST_38                                    ; $5780: $FF
    rst RST_38                                    ; $5781: $FF
    rst RST_38                                    ; $5782: $FF
    rst RST_38                                    ; $5783: $FF
    rst RST_38                                    ; $5784: $FF
    rst RST_38                                    ; $5785: $FF
    rst RST_38                                    ; $5786: $FF
    rst RST_38                                    ; $5787: $FF
    rst RST_38                                    ; $5788: $FF
    rst RST_38                                    ; $5789: $FF
    rst RST_38                                    ; $578A: $FF
    rst RST_38                                    ; $578B: $FF
    rst RST_38                                    ; $578C: $FF
    rst RST_38                                    ; $578D: $FF
    rst RST_38                                    ; $578E: $FF
    rst RST_38                                    ; $578F: $FF
    rst RST_38                                    ; $5790: $FF
    rst RST_38                                    ; $5791: $FF
    rst RST_38                                    ; $5792: $FF
    rst RST_38                                    ; $5793: $FF
    rst RST_38                                    ; $5794: $FF
    rst RST_38                                    ; $5795: $FF
    rst RST_38                                    ; $5796: $FF
    rst RST_38                                    ; $5797: $FF
    rst RST_38                                    ; $5798: $FF
    rst RST_38                                    ; $5799: $FF
    rst RST_38                                    ; $579A: $FF
    rst RST_38                                    ; $579B: $FF
    rst RST_38                                    ; $579C: $FF
    rst RST_38                                    ; $579D: $FF
    rst RST_38                                    ; $579E: $FF
    rst RST_38                                    ; $579F: $FF
    rst RST_38                                    ; $57A0: $FF
    rst RST_38                                    ; $57A1: $FF
    rst RST_38                                    ; $57A2: $FF
    rst RST_38                                    ; $57A3: $FF
    rst RST_38                                    ; $57A4: $FF
    rst RST_38                                    ; $57A5: $FF
    rst RST_38                                    ; $57A6: $FF
    rst RST_38                                    ; $57A7: $FF
    rst RST_38                                    ; $57A8: $FF
    rst RST_38                                    ; $57A9: $FF
    rst RST_38                                    ; $57AA: $FF
    rst RST_38                                    ; $57AB: $FF
    rst RST_38                                    ; $57AC: $FF
    rst RST_38                                    ; $57AD: $FF
    rst RST_38                                    ; $57AE: $FF
    rst RST_38                                    ; $57AF: $FF
    rst RST_38                                    ; $57B0: $FF
    rst RST_38                                    ; $57B1: $FF
    rst RST_38                                    ; $57B2: $FF
    rst RST_38                                    ; $57B3: $FF
    rst RST_38                                    ; $57B4: $FF
    rst RST_38                                    ; $57B5: $FF
    rst RST_38                                    ; $57B6: $FF
    rst RST_38                                    ; $57B7: $FF
    rst RST_38                                    ; $57B8: $FF
    rst RST_38                                    ; $57B9: $FF
    rst RST_38                                    ; $57BA: $FF
    rst RST_38                                    ; $57BB: $FF
    rst RST_38                                    ; $57BC: $FF
    rst RST_38                                    ; $57BD: $FF
    rst RST_38                                    ; $57BE: $FF
    rst RST_38                                    ; $57BF: $FF
    rst RST_38                                    ; $57C0: $FF
    rst RST_38                                    ; $57C1: $FF
    rst RST_38                                    ; $57C2: $FF
    rst RST_38                                    ; $57C3: $FF
    rst RST_38                                    ; $57C4: $FF
    rst RST_38                                    ; $57C5: $FF
    rst RST_38                                    ; $57C6: $FF
    rst RST_38                                    ; $57C7: $FF
    rst RST_38                                    ; $57C8: $FF
    rst RST_38                                    ; $57C9: $FF
    rst RST_38                                    ; $57CA: $FF
    rst RST_38                                    ; $57CB: $FF
    rst RST_38                                    ; $57CC: $FF
    rst RST_38                                    ; $57CD: $FF
    rst RST_38                                    ; $57CE: $FF
    rst RST_38                                    ; $57CF: $FF
    rst RST_38                                    ; $57D0: $FF
    rst RST_38                                    ; $57D1: $FF
    rst RST_38                                    ; $57D2: $FF
    rst RST_38                                    ; $57D3: $FF
    rst RST_38                                    ; $57D4: $FF
    rst RST_38                                    ; $57D5: $FF
    rst RST_38                                    ; $57D6: $FF
    rst RST_38                                    ; $57D7: $FF
    rst RST_38                                    ; $57D8: $FF
    rst RST_38                                    ; $57D9: $FF
    rst RST_38                                    ; $57DA: $FF
    rst RST_38                                    ; $57DB: $FF
    rst RST_38                                    ; $57DC: $FF
    rst RST_38                                    ; $57DD: $FF
    rst RST_38                                    ; $57DE: $FF
    rst RST_38                                    ; $57DF: $FF
    rst RST_38                                    ; $57E0: $FF
    rst RST_38                                    ; $57E1: $FF
    rst RST_38                                    ; $57E2: $FF
    rst RST_38                                    ; $57E3: $FF
    rst RST_38                                    ; $57E4: $FF
    rst RST_38                                    ; $57E5: $FF
    rst RST_38                                    ; $57E6: $FF
    rst RST_38                                    ; $57E7: $FF
    rst RST_38                                    ; $57E8: $FF
    rst RST_38                                    ; $57E9: $FF
    rst RST_38                                    ; $57EA: $FF
    rst RST_38                                    ; $57EB: $FF
    rst RST_38                                    ; $57EC: $FF
    rst RST_38                                    ; $57ED: $FF
    rst RST_38                                    ; $57EE: $FF
    rst RST_38                                    ; $57EF: $FF
    rst RST_38                                    ; $57F0: $FF
    rst RST_38                                    ; $57F1: $FF
    rst RST_38                                    ; $57F2: $FF
    rst RST_38                                    ; $57F3: $FF
    rst RST_38                                    ; $57F4: $FF
    rst RST_38                                    ; $57F5: $FF
    rst RST_38                                    ; $57F6: $FF
    rst RST_38                                    ; $57F7: $FF
    rst RST_38                                    ; $57F8: $FF
    rst RST_38                                    ; $57F9: $FF
    rst RST_38                                    ; $57FA: $FF
    rst RST_38                                    ; $57FB: $FF
    rst RST_38                                    ; $57FC: $FF
    rst RST_38                                    ; $57FD: $FF
    rst RST_38                                    ; $57FE: $FF
    rst RST_38                                    ; $57FF: $FF
    rst RST_38                                    ; $5800: $FF
    rst RST_38                                    ; $5801: $FF
    rst RST_38                                    ; $5802: $FF
    rst RST_38                                    ; $5803: $FF
    rst RST_38                                    ; $5804: $FF
    rst RST_38                                    ; $5805: $FF
    rst RST_38                                    ; $5806: $FF
    rst RST_38                                    ; $5807: $FF
    rst RST_38                                    ; $5808: $FF
    rst RST_38                                    ; $5809: $FF
    rst RST_38                                    ; $580A: $FF
    rst RST_38                                    ; $580B: $FF
    rst RST_38                                    ; $580C: $FF
    rst RST_38                                    ; $580D: $FF
    rst RST_38                                    ; $580E: $FF
    rst RST_38                                    ; $580F: $FF
    rst RST_38                                    ; $5810: $FF
    rst RST_38                                    ; $5811: $FF
    rst RST_38                                    ; $5812: $FF
    rst RST_38                                    ; $5813: $FF
    rst RST_38                                    ; $5814: $FF
    rst RST_38                                    ; $5815: $FF
    rst RST_38                                    ; $5816: $FF
    rst RST_38                                    ; $5817: $FF
    rst RST_38                                    ; $5818: $FF
    rst RST_38                                    ; $5819: $FF
    rst RST_38                                    ; $581A: $FF
    rst RST_38                                    ; $581B: $FF
    rst RST_38                                    ; $581C: $FF
    rst RST_38                                    ; $581D: $FF
    rst RST_38                                    ; $581E: $FF
    rst RST_38                                    ; $581F: $FF
    rst RST_38                                    ; $5820: $FF
    rst RST_38                                    ; $5821: $FF
    rst RST_38                                    ; $5822: $FF
    rst RST_38                                    ; $5823: $FF
    rst RST_38                                    ; $5824: $FF
    rst RST_38                                    ; $5825: $FF
    rst RST_38                                    ; $5826: $FF
    rst RST_38                                    ; $5827: $FF
    rst RST_38                                    ; $5828: $FF
    rst RST_38                                    ; $5829: $FF
    rst RST_38                                    ; $582A: $FF
    rst RST_38                                    ; $582B: $FF
    rst RST_38                                    ; $582C: $FF
    rst RST_38                                    ; $582D: $FF
    rst RST_38                                    ; $582E: $FF
    rst RST_38                                    ; $582F: $FF
    rst RST_38                                    ; $5830: $FF
    rst RST_38                                    ; $5831: $FF
    rst RST_38                                    ; $5832: $FF
    rst RST_38                                    ; $5833: $FF
    rst RST_38                                    ; $5834: $FF
    rst RST_38                                    ; $5835: $FF
    rst RST_38                                    ; $5836: $FF
    rst RST_38                                    ; $5837: $FF
    rst RST_38                                    ; $5838: $FF
    rst RST_38                                    ; $5839: $FF
    rst RST_38                                    ; $583A: $FF
    rst RST_38                                    ; $583B: $FF
    rst RST_38                                    ; $583C: $FF
    rst RST_38                                    ; $583D: $FF
    rst RST_38                                    ; $583E: $FF
    rst RST_38                                    ; $583F: $FF
    rst RST_38                                    ; $5840: $FF
    rst RST_38                                    ; $5841: $FF
    rst RST_38                                    ; $5842: $FF
    rst RST_38                                    ; $5843: $FF
    rst RST_38                                    ; $5844: $FF
    rst RST_38                                    ; $5845: $FF
    rst RST_38                                    ; $5846: $FF
    rst RST_38                                    ; $5847: $FF
    rst RST_38                                    ; $5848: $FF
    rst RST_38                                    ; $5849: $FF
    rst RST_38                                    ; $584A: $FF
    rst RST_38                                    ; $584B: $FF
    rst RST_38                                    ; $584C: $FF
    rst RST_38                                    ; $584D: $FF
    rst RST_38                                    ; $584E: $FF
    rst RST_38                                    ; $584F: $FF
    rst RST_38                                    ; $5850: $FF
    rst RST_38                                    ; $5851: $FF
    rst RST_38                                    ; $5852: $FF
    rst RST_38                                    ; $5853: $FF
    rst RST_38                                    ; $5854: $FF
    rst RST_38                                    ; $5855: $FF
    rst RST_38                                    ; $5856: $FF
    rst RST_38                                    ; $5857: $FF
    rst RST_38                                    ; $5858: $FF
    rst RST_38                                    ; $5859: $FF
    rst RST_38                                    ; $585A: $FF
    rst RST_38                                    ; $585B: $FF
    rst RST_38                                    ; $585C: $FF
    rst RST_38                                    ; $585D: $FF
    rst RST_38                                    ; $585E: $FF
    rst RST_38                                    ; $585F: $FF
    rst RST_38                                    ; $5860: $FF
    rst RST_38                                    ; $5861: $FF
    rst RST_38                                    ; $5862: $FF
    rst RST_38                                    ; $5863: $FF
    rst RST_38                                    ; $5864: $FF
    rst RST_38                                    ; $5865: $FF
    rst RST_38                                    ; $5866: $FF
    rst RST_38                                    ; $5867: $FF
    rst RST_38                                    ; $5868: $FF
    rst RST_38                                    ; $5869: $FF
    rst RST_38                                    ; $586A: $FF
    rst RST_38                                    ; $586B: $FF
    rst RST_38                                    ; $586C: $FF
    rst RST_38                                    ; $586D: $FF
    rst RST_38                                    ; $586E: $FF
    rst RST_38                                    ; $586F: $FF
    rst RST_38                                    ; $5870: $FF
    rst RST_38                                    ; $5871: $FF
    rst RST_38                                    ; $5872: $FF
    rst RST_38                                    ; $5873: $FF
    rst RST_38                                    ; $5874: $FF
    rst RST_38                                    ; $5875: $FF
    rst RST_38                                    ; $5876: $FF
    rst RST_38                                    ; $5877: $FF
    rst RST_38                                    ; $5878: $FF
    rst RST_38                                    ; $5879: $FF
    rst RST_38                                    ; $587A: $FF
    rst RST_38                                    ; $587B: $FF
    rst RST_38                                    ; $587C: $FF
    rst RST_38                                    ; $587D: $FF
    rst RST_38                                    ; $587E: $FF
    rst RST_38                                    ; $587F: $FF
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
    rst RST_38                                    ; $589D: $FF
    rst RST_38                                    ; $589E: $FF
    rst RST_38                                    ; $589F: $FF
    rst RST_38                                    ; $58A0: $FF
    rst RST_38                                    ; $58A1: $FF
    rst RST_38                                    ; $58A2: $FF
    rst RST_38                                    ; $58A3: $FF
    rst RST_38                                    ; $58A4: $FF
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
    rst RST_38                                    ; $58BD: $FF
    rst RST_38                                    ; $58BE: $FF
    rst RST_38                                    ; $58BF: $FF
    rst RST_38                                    ; $58C0: $FF
    rst RST_38                                    ; $58C1: $FF
    rst RST_38                                    ; $58C2: $FF
    rst RST_38                                    ; $58C3: $FF
    rst RST_38                                    ; $58C4: $FF
    rst RST_38                                    ; $58C5: $FF
    rst RST_38                                    ; $58C6: $FF
    rst RST_38                                    ; $58C7: $FF
    rst RST_38                                    ; $58C8: $FF
    rst RST_38                                    ; $58C9: $FF
    rst RST_38                                    ; $58CA: $FF
    rst RST_38                                    ; $58CB: $FF
    rst RST_38                                    ; $58CC: $FF
    rst RST_38                                    ; $58CD: $FF
    rst RST_38                                    ; $58CE: $FF
    rst RST_38                                    ; $58CF: $FF
    rst RST_38                                    ; $58D0: $FF
    rst RST_38                                    ; $58D1: $FF
    rst RST_38                                    ; $58D2: $FF
    rst RST_38                                    ; $58D3: $FF
    rst RST_38                                    ; $58D4: $FF
    rst RST_38                                    ; $58D5: $FF
    rst RST_38                                    ; $58D6: $FF
    rst RST_38                                    ; $58D7: $FF
    rst RST_38                                    ; $58D8: $FF
    rst RST_38                                    ; $58D9: $FF
    rst RST_38                                    ; $58DA: $FF
    rst RST_38                                    ; $58DB: $FF
    rst RST_38                                    ; $58DC: $FF
    rst RST_38                                    ; $58DD: $FF
    rst RST_38                                    ; $58DE: $FF
    rst RST_38                                    ; $58DF: $FF
    rst RST_38                                    ; $58E0: $FF
    rst RST_38                                    ; $58E1: $FF
    rst RST_38                                    ; $58E2: $FF
    rst RST_38                                    ; $58E3: $FF
    rst RST_38                                    ; $58E4: $FF
    rst RST_38                                    ; $58E5: $FF
    rst RST_38                                    ; $58E6: $FF
    rst RST_38                                    ; $58E7: $FF
    rst RST_38                                    ; $58E8: $FF
    rst RST_38                                    ; $58E9: $FF
    rst RST_38                                    ; $58EA: $FF
    rst RST_38                                    ; $58EB: $FF
    rst RST_38                                    ; $58EC: $FF
    rst RST_38                                    ; $58ED: $FF
    rst RST_38                                    ; $58EE: $FF
    rst RST_38                                    ; $58EF: $FF
    rst RST_38                                    ; $58F0: $FF
    rst RST_38                                    ; $58F1: $FF
    rst RST_38                                    ; $58F2: $FF
    rst RST_38                                    ; $58F3: $FF
    rst RST_38                                    ; $58F4: $FF
    rst RST_38                                    ; $58F5: $FF
    rst RST_38                                    ; $58F6: $FF
    rst RST_38                                    ; $58F7: $FF
    rst RST_38                                    ; $58F8: $FF
    rst RST_38                                    ; $58F9: $FF
    rst RST_38                                    ; $58FA: $FF
    rst RST_38                                    ; $58FB: $FF
    rst RST_38                                    ; $58FC: $FF
    rst RST_38                                    ; $58FD: $FF
    rst RST_38                                    ; $58FE: $FF
    rst RST_38                                    ; $58FF: $FF
    rst RST_38                                    ; $5900: $FF
    rst RST_38                                    ; $5901: $FF
    rst RST_38                                    ; $5902: $FF
    rst RST_38                                    ; $5903: $FF
    rst RST_38                                    ; $5904: $FF
    rst RST_38                                    ; $5905: $FF
    rst RST_38                                    ; $5906: $FF
    rst RST_38                                    ; $5907: $FF
    rst RST_38                                    ; $5908: $FF
    rst RST_38                                    ; $5909: $FF
    rst RST_38                                    ; $590A: $FF
    rst RST_38                                    ; $590B: $FF
    rst RST_38                                    ; $590C: $FF
    rst RST_38                                    ; $590D: $FF
    rst RST_38                                    ; $590E: $FF
    rst RST_38                                    ; $590F: $FF
    rst RST_38                                    ; $5910: $FF
    rst RST_38                                    ; $5911: $FF
    rst RST_38                                    ; $5912: $FF
    rst RST_38                                    ; $5913: $FF
    rst RST_38                                    ; $5914: $FF
    rst RST_38                                    ; $5915: $FF
    rst RST_38                                    ; $5916: $FF
    rst RST_38                                    ; $5917: $FF
    rst RST_38                                    ; $5918: $FF
    rst RST_38                                    ; $5919: $FF
    rst RST_38                                    ; $591A: $FF
    rst RST_38                                    ; $591B: $FF
    rst RST_38                                    ; $591C: $FF
    rst RST_38                                    ; $591D: $FF
    rst RST_38                                    ; $591E: $FF
    rst RST_38                                    ; $591F: $FF
    rst RST_38                                    ; $5920: $FF
    rst RST_38                                    ; $5921: $FF
    rst RST_38                                    ; $5922: $FF
    rst RST_38                                    ; $5923: $FF
    rst RST_38                                    ; $5924: $FF
    rst RST_38                                    ; $5925: $FF
    rst RST_38                                    ; $5926: $FF
    rst RST_38                                    ; $5927: $FF
    rst RST_38                                    ; $5928: $FF
    rst RST_38                                    ; $5929: $FF
    rst RST_38                                    ; $592A: $FF
    rst RST_38                                    ; $592B: $FF
    rst RST_38                                    ; $592C: $FF
    rst RST_38                                    ; $592D: $FF
    rst RST_38                                    ; $592E: $FF
    rst RST_38                                    ; $592F: $FF
    rst RST_38                                    ; $5930: $FF
    rst RST_38                                    ; $5931: $FF
    rst RST_38                                    ; $5932: $FF
    rst RST_38                                    ; $5933: $FF
    rst RST_38                                    ; $5934: $FF
    rst RST_38                                    ; $5935: $FF
    rst RST_38                                    ; $5936: $FF
    rst RST_38                                    ; $5937: $FF
    rst RST_38                                    ; $5938: $FF
    rst RST_38                                    ; $5939: $FF
    rst RST_38                                    ; $593A: $FF
    rst RST_38                                    ; $593B: $FF
    rst RST_38                                    ; $593C: $FF
    rst RST_38                                    ; $593D: $FF
    rst RST_38                                    ; $593E: $FF
    rst RST_38                                    ; $593F: $FF
    rst RST_38                                    ; $5940: $FF
    rst RST_38                                    ; $5941: $FF
    rst RST_38                                    ; $5942: $FF
    rst RST_38                                    ; $5943: $FF
    rst RST_38                                    ; $5944: $FF
    rst RST_38                                    ; $5945: $FF
    rst RST_38                                    ; $5946: $FF
    rst RST_38                                    ; $5947: $FF
    rst RST_38                                    ; $5948: $FF
    rst RST_38                                    ; $5949: $FF
    rst RST_38                                    ; $594A: $FF
    rst RST_38                                    ; $594B: $FF
    rst RST_38                                    ; $594C: $FF
    rst RST_38                                    ; $594D: $FF
    rst RST_38                                    ; $594E: $FF
    rst RST_38                                    ; $594F: $FF
    rst RST_38                                    ; $5950: $FF
    rst RST_38                                    ; $5951: $FF
    rst RST_38                                    ; $5952: $FF
    rst RST_38                                    ; $5953: $FF
    rst RST_38                                    ; $5954: $FF
    rst RST_38                                    ; $5955: $FF
    rst RST_38                                    ; $5956: $FF
    rst RST_38                                    ; $5957: $FF
    rst RST_38                                    ; $5958: $FF
    rst RST_38                                    ; $5959: $FF
    rst RST_38                                    ; $595A: $FF
    rst RST_38                                    ; $595B: $FF
    rst RST_38                                    ; $595C: $FF
    rst RST_38                                    ; $595D: $FF
    rst RST_38                                    ; $595E: $FF
    rst RST_38                                    ; $595F: $FF
    rst RST_38                                    ; $5960: $FF
    rst RST_38                                    ; $5961: $FF
    rst RST_38                                    ; $5962: $FF
    rst RST_38                                    ; $5963: $FF
    rst RST_38                                    ; $5964: $FF
    rst RST_38                                    ; $5965: $FF
    rst RST_38                                    ; $5966: $FF
    rst RST_38                                    ; $5967: $FF
    rst RST_38                                    ; $5968: $FF
    rst RST_38                                    ; $5969: $FF
    rst RST_38                                    ; $596A: $FF
    rst RST_38                                    ; $596B: $FF
    rst RST_38                                    ; $596C: $FF
    rst RST_38                                    ; $596D: $FF
    rst RST_38                                    ; $596E: $FF
    rst RST_38                                    ; $596F: $FF
    rst RST_38                                    ; $5970: $FF
    rst RST_38                                    ; $5971: $FF
    rst RST_38                                    ; $5972: $FF
    rst RST_38                                    ; $5973: $FF
    rst RST_38                                    ; $5974: $FF
    rst RST_38                                    ; $5975: $FF
    rst RST_38                                    ; $5976: $FF
    rst RST_38                                    ; $5977: $FF
    rst RST_38                                    ; $5978: $FF
    rst RST_38                                    ; $5979: $FF
    rst RST_38                                    ; $597A: $FF
    rst RST_38                                    ; $597B: $FF
    rst RST_38                                    ; $597C: $FF
    rst RST_38                                    ; $597D: $FF
    rst RST_38                                    ; $597E: $FF
    rst RST_38                                    ; $597F: $FF
    rst RST_38                                    ; $5980: $FF
    rst RST_38                                    ; $5981: $FF
    rst RST_38                                    ; $5982: $FF
    rst RST_38                                    ; $5983: $FF
    rst RST_38                                    ; $5984: $FF
    rst RST_38                                    ; $5985: $FF
    rst RST_38                                    ; $5986: $FF
    rst RST_38                                    ; $5987: $FF
    rst RST_38                                    ; $5988: $FF
    rst RST_38                                    ; $5989: $FF
    rst RST_38                                    ; $598A: $FF
    rst RST_38                                    ; $598B: $FF
    rst RST_38                                    ; $598C: $FF
    rst RST_38                                    ; $598D: $FF
    rst RST_38                                    ; $598E: $FF
    rst RST_38                                    ; $598F: $FF
    rst RST_38                                    ; $5990: $FF
    rst RST_38                                    ; $5991: $FF
    rst RST_38                                    ; $5992: $FF
    rst RST_38                                    ; $5993: $FF
    rst RST_38                                    ; $5994: $FF
    rst RST_38                                    ; $5995: $FF
    rst RST_38                                    ; $5996: $FF
    rst RST_38                                    ; $5997: $FF
    rst RST_38                                    ; $5998: $FF
    rst RST_38                                    ; $5999: $FF
    rst RST_38                                    ; $599A: $FF
    rst RST_38                                    ; $599B: $FF
    rst RST_38                                    ; $599C: $FF
    rst RST_38                                    ; $599D: $FF
    rst RST_38                                    ; $599E: $FF
    rst RST_38                                    ; $599F: $FF
    rst RST_38                                    ; $59A0: $FF
    rst RST_38                                    ; $59A1: $FF
    rst RST_38                                    ; $59A2: $FF
    rst RST_38                                    ; $59A3: $FF
    rst RST_38                                    ; $59A4: $FF
    rst RST_38                                    ; $59A5: $FF
    rst RST_38                                    ; $59A6: $FF
    rst RST_38                                    ; $59A7: $FF
    rst RST_38                                    ; $59A8: $FF
    rst RST_38                                    ; $59A9: $FF
    rst RST_38                                    ; $59AA: $FF
    rst RST_38                                    ; $59AB: $FF
    rst RST_38                                    ; $59AC: $FF
    rst RST_38                                    ; $59AD: $FF
    rst RST_38                                    ; $59AE: $FF
    rst RST_38                                    ; $59AF: $FF
    rst RST_38                                    ; $59B0: $FF
    rst RST_38                                    ; $59B1: $FF
    rst RST_38                                    ; $59B2: $FF
    rst RST_38                                    ; $59B3: $FF
    rst RST_38                                    ; $59B4: $FF
    rst RST_38                                    ; $59B5: $FF
    rst RST_38                                    ; $59B6: $FF
    rst RST_38                                    ; $59B7: $FF
    rst RST_38                                    ; $59B8: $FF
    rst RST_38                                    ; $59B9: $FF
    rst RST_38                                    ; $59BA: $FF
    rst RST_38                                    ; $59BB: $FF
    rst RST_38                                    ; $59BC: $FF
    rst RST_38                                    ; $59BD: $FF
    rst RST_38                                    ; $59BE: $FF
    rst RST_38                                    ; $59BF: $FF
    rst RST_38                                    ; $59C0: $FF
    rst RST_38                                    ; $59C1: $FF
    rst RST_38                                    ; $59C2: $FF
    rst RST_38                                    ; $59C3: $FF
    rst RST_38                                    ; $59C4: $FF
    rst RST_38                                    ; $59C5: $FF
    rst RST_38                                    ; $59C6: $FF
    rst RST_38                                    ; $59C7: $FF
    rst RST_38                                    ; $59C8: $FF
    rst RST_38                                    ; $59C9: $FF
    rst RST_38                                    ; $59CA: $FF
    rst RST_38                                    ; $59CB: $FF
    rst RST_38                                    ; $59CC: $FF
    rst RST_38                                    ; $59CD: $FF
    rst RST_38                                    ; $59CE: $FF
    rst RST_38                                    ; $59CF: $FF
    rst RST_38                                    ; $59D0: $FF
    rst RST_38                                    ; $59D1: $FF
    rst RST_38                                    ; $59D2: $FF
    rst RST_38                                    ; $59D3: $FF
    rst RST_38                                    ; $59D4: $FF
    rst RST_38                                    ; $59D5: $FF
    rst RST_38                                    ; $59D6: $FF
    rst RST_38                                    ; $59D7: $FF
    rst RST_38                                    ; $59D8: $FF
    rst RST_38                                    ; $59D9: $FF
    rst RST_38                                    ; $59DA: $FF
    rst RST_38                                    ; $59DB: $FF
    rst RST_38                                    ; $59DC: $FF
    rst RST_38                                    ; $59DD: $FF
    rst RST_38                                    ; $59DE: $FF
    rst RST_38                                    ; $59DF: $FF
    rst RST_38                                    ; $59E0: $FF
    rst RST_38                                    ; $59E1: $FF
    rst RST_38                                    ; $59E2: $FF
    rst RST_38                                    ; $59E3: $FF
    rst RST_38                                    ; $59E4: $FF
    rst RST_38                                    ; $59E5: $FF
    rst RST_38                                    ; $59E6: $FF
    rst RST_38                                    ; $59E7: $FF
    rst RST_38                                    ; $59E8: $FF
    rst RST_38                                    ; $59E9: $FF
    rst RST_38                                    ; $59EA: $FF
    rst RST_38                                    ; $59EB: $FF
    rst RST_38                                    ; $59EC: $FF
    rst RST_38                                    ; $59ED: $FF
    rst RST_38                                    ; $59EE: $FF
    rst RST_38                                    ; $59EF: $FF
    rst RST_38                                    ; $59F0: $FF
    rst RST_38                                    ; $59F1: $FF
    rst RST_38                                    ; $59F2: $FF
    rst RST_38                                    ; $59F3: $FF
    rst RST_38                                    ; $59F4: $FF
    rst RST_38                                    ; $59F5: $FF
    rst RST_38                                    ; $59F6: $FF
    rst RST_38                                    ; $59F7: $FF
    rst RST_38                                    ; $59F8: $FF
    rst RST_38                                    ; $59F9: $FF
    rst RST_38                                    ; $59FA: $FF
    rst RST_38                                    ; $59FB: $FF
    rst RST_38                                    ; $59FC: $FF
    rst RST_38                                    ; $59FD: $FF
    rst RST_38                                    ; $59FE: $FF
    rst RST_38                                    ; $59FF: $FF
    rst RST_38                                    ; $5A00: $FF
    rst RST_38                                    ; $5A01: $FF
    rst RST_38                                    ; $5A02: $FF
    rst RST_38                                    ; $5A03: $FF
    rst RST_38                                    ; $5A04: $FF
    rst RST_38                                    ; $5A05: $FF
    rst RST_38                                    ; $5A06: $FF
    rst RST_38                                    ; $5A07: $FF
    rst RST_38                                    ; $5A08: $FF
    rst RST_38                                    ; $5A09: $FF
    rst RST_38                                    ; $5A0A: $FF
    rst RST_38                                    ; $5A0B: $FF
    rst RST_38                                    ; $5A0C: $FF
    rst RST_38                                    ; $5A0D: $FF
    rst RST_38                                    ; $5A0E: $FF
    rst RST_38                                    ; $5A0F: $FF
    rst RST_38                                    ; $5A10: $FF
    rst RST_38                                    ; $5A11: $FF
    rst RST_38                                    ; $5A12: $FF
    rst RST_38                                    ; $5A13: $FF
    rst RST_38                                    ; $5A14: $FF
    rst RST_38                                    ; $5A15: $FF
    rst RST_38                                    ; $5A16: $FF
    rst RST_38                                    ; $5A17: $FF
    rst RST_38                                    ; $5A18: $FF
    rst RST_38                                    ; $5A19: $FF
    rst RST_38                                    ; $5A1A: $FF
    rst RST_38                                    ; $5A1B: $FF
    rst RST_38                                    ; $5A1C: $FF
    rst RST_38                                    ; $5A1D: $FF
    rst RST_38                                    ; $5A1E: $FF
    rst RST_38                                    ; $5A1F: $FF
    rst RST_38                                    ; $5A20: $FF
    rst RST_38                                    ; $5A21: $FF
    rst RST_38                                    ; $5A22: $FF
    rst RST_38                                    ; $5A23: $FF
    rst RST_38                                    ; $5A24: $FF
    rst RST_38                                    ; $5A25: $FF
    rst RST_38                                    ; $5A26: $FF
    rst RST_38                                    ; $5A27: $FF
    rst RST_38                                    ; $5A28: $FF
    rst RST_38                                    ; $5A29: $FF
    rst RST_38                                    ; $5A2A: $FF
    rst RST_38                                    ; $5A2B: $FF
    rst RST_38                                    ; $5A2C: $FF
    rst RST_38                                    ; $5A2D: $FF
    rst RST_38                                    ; $5A2E: $FF
    rst RST_38                                    ; $5A2F: $FF
    rst RST_38                                    ; $5A30: $FF
    rst RST_38                                    ; $5A31: $FF
    rst RST_38                                    ; $5A32: $FF
    rst RST_38                                    ; $5A33: $FF
    rst RST_38                                    ; $5A34: $FF
    rst RST_38                                    ; $5A35: $FF
    rst RST_38                                    ; $5A36: $FF
    rst RST_38                                    ; $5A37: $FF
    rst RST_38                                    ; $5A38: $FF
    rst RST_38                                    ; $5A39: $FF
    rst RST_38                                    ; $5A3A: $FF
    rst RST_38                                    ; $5A3B: $FF
    rst RST_38                                    ; $5A3C: $FF
    rst RST_38                                    ; $5A3D: $FF
    rst RST_38                                    ; $5A3E: $FF
    rst RST_38                                    ; $5A3F: $FF
    rst RST_38                                    ; $5A40: $FF
    rst RST_38                                    ; $5A41: $FF
    rst RST_38                                    ; $5A42: $FF
    rst RST_38                                    ; $5A43: $FF
    rst RST_38                                    ; $5A44: $FF
    rst RST_38                                    ; $5A45: $FF
    rst RST_38                                    ; $5A46: $FF
    rst RST_38                                    ; $5A47: $FF
    rst RST_38                                    ; $5A48: $FF
    rst RST_38                                    ; $5A49: $FF
    rst RST_38                                    ; $5A4A: $FF
    rst RST_38                                    ; $5A4B: $FF
    rst RST_38                                    ; $5A4C: $FF
    rst RST_38                                    ; $5A4D: $FF
    rst RST_38                                    ; $5A4E: $FF
    rst RST_38                                    ; $5A4F: $FF
    rst RST_38                                    ; $5A50: $FF
    rst RST_38                                    ; $5A51: $FF
    rst RST_38                                    ; $5A52: $FF
    rst RST_38                                    ; $5A53: $FF
    rst RST_38                                    ; $5A54: $FF
    rst RST_38                                    ; $5A55: $FF
    rst RST_38                                    ; $5A56: $FF
    rst RST_38                                    ; $5A57: $FF
    rst RST_38                                    ; $5A58: $FF
    rst RST_38                                    ; $5A59: $FF
    rst RST_38                                    ; $5A5A: $FF
    rst RST_38                                    ; $5A5B: $FF
    rst RST_38                                    ; $5A5C: $FF
    rst RST_38                                    ; $5A5D: $FF
    rst RST_38                                    ; $5A5E: $FF
    rst RST_38                                    ; $5A5F: $FF
    rst RST_38                                    ; $5A60: $FF
    rst RST_38                                    ; $5A61: $FF
    rst RST_38                                    ; $5A62: $FF
    rst RST_38                                    ; $5A63: $FF
    rst RST_38                                    ; $5A64: $FF
    rst RST_38                                    ; $5A65: $FF
    rst RST_38                                    ; $5A66: $FF
    rst RST_38                                    ; $5A67: $FF
    rst RST_38                                    ; $5A68: $FF
    rst RST_38                                    ; $5A69: $FF
    rst RST_38                                    ; $5A6A: $FF
    rst RST_38                                    ; $5A6B: $FF
    rst RST_38                                    ; $5A6C: $FF
    rst RST_38                                    ; $5A6D: $FF
    rst RST_38                                    ; $5A6E: $FF
    rst RST_38                                    ; $5A6F: $FF
    rst RST_38                                    ; $5A70: $FF
    rst RST_38                                    ; $5A71: $FF
    rst RST_38                                    ; $5A72: $FF
    rst RST_38                                    ; $5A73: $FF
    rst RST_38                                    ; $5A74: $FF
    rst RST_38                                    ; $5A75: $FF
    rst RST_38                                    ; $5A76: $FF
    rst RST_38                                    ; $5A77: $FF
    rst RST_38                                    ; $5A78: $FF
    rst RST_38                                    ; $5A79: $FF
    rst RST_38                                    ; $5A7A: $FF
    rst RST_38                                    ; $5A7B: $FF
    rst RST_38                                    ; $5A7C: $FF
    rst RST_38                                    ; $5A7D: $FF
    rst RST_38                                    ; $5A7E: $FF
    rst RST_38                                    ; $5A7F: $FF
    rst RST_38                                    ; $5A80: $FF
    rst RST_38                                    ; $5A81: $FF
    rst RST_38                                    ; $5A82: $FF
    rst RST_38                                    ; $5A83: $FF
    rst RST_38                                    ; $5A84: $FF
    rst RST_38                                    ; $5A85: $FF
    rst RST_38                                    ; $5A86: $FF
    rst RST_38                                    ; $5A87: $FF
    rst RST_38                                    ; $5A88: $FF
    rst RST_38                                    ; $5A89: $FF
    rst RST_38                                    ; $5A8A: $FF
    rst RST_38                                    ; $5A8B: $FF
    rst RST_38                                    ; $5A8C: $FF
    rst RST_38                                    ; $5A8D: $FF
    rst RST_38                                    ; $5A8E: $FF
    rst RST_38                                    ; $5A8F: $FF
    rst RST_38                                    ; $5A90: $FF
    rst RST_38                                    ; $5A91: $FF
    rst RST_38                                    ; $5A92: $FF
    rst RST_38                                    ; $5A93: $FF
    rst RST_38                                    ; $5A94: $FF
    rst RST_38                                    ; $5A95: $FF
    rst RST_38                                    ; $5A96: $FF
    rst RST_38                                    ; $5A97: $FF
    rst RST_38                                    ; $5A98: $FF
    rst RST_38                                    ; $5A99: $FF
    rst RST_38                                    ; $5A9A: $FF
    rst RST_38                                    ; $5A9B: $FF
    rst RST_38                                    ; $5A9C: $FF
    rst RST_38                                    ; $5A9D: $FF
    rst RST_38                                    ; $5A9E: $FF
    rst RST_38                                    ; $5A9F: $FF
    rst RST_38                                    ; $5AA0: $FF
    rst RST_38                                    ; $5AA1: $FF
    rst RST_38                                    ; $5AA2: $FF
    rst RST_38                                    ; $5AA3: $FF
    rst RST_38                                    ; $5AA4: $FF
    rst RST_38                                    ; $5AA5: $FF
    rst RST_38                                    ; $5AA6: $FF
    rst RST_38                                    ; $5AA7: $FF
    rst RST_38                                    ; $5AA8: $FF
    rst RST_38                                    ; $5AA9: $FF
    rst RST_38                                    ; $5AAA: $FF
    rst RST_38                                    ; $5AAB: $FF
    rst RST_38                                    ; $5AAC: $FF
    rst RST_38                                    ; $5AAD: $FF
    rst RST_38                                    ; $5AAE: $FF
    rst RST_38                                    ; $5AAF: $FF
    rst RST_38                                    ; $5AB0: $FF
    rst RST_38                                    ; $5AB1: $FF
    rst RST_38                                    ; $5AB2: $FF
    rst RST_38                                    ; $5AB3: $FF
    rst RST_38                                    ; $5AB4: $FF
    rst RST_38                                    ; $5AB5: $FF
    rst RST_38                                    ; $5AB6: $FF
    rst RST_38                                    ; $5AB7: $FF
    rst RST_38                                    ; $5AB8: $FF
    rst RST_38                                    ; $5AB9: $FF
    rst RST_38                                    ; $5ABA: $FF
    rst RST_38                                    ; $5ABB: $FF
    rst RST_38                                    ; $5ABC: $FF
    rst RST_38                                    ; $5ABD: $FF
    rst RST_38                                    ; $5ABE: $FF
    rst RST_38                                    ; $5ABF: $FF
    rst RST_38                                    ; $5AC0: $FF
    rst RST_38                                    ; $5AC1: $FF
    rst RST_38                                    ; $5AC2: $FF
    rst RST_38                                    ; $5AC3: $FF
    rst RST_38                                    ; $5AC4: $FF
    rst RST_38                                    ; $5AC5: $FF
    rst RST_38                                    ; $5AC6: $FF
    rst RST_38                                    ; $5AC7: $FF
    rst RST_38                                    ; $5AC8: $FF
    rst RST_38                                    ; $5AC9: $FF
    rst RST_38                                    ; $5ACA: $FF
    rst RST_38                                    ; $5ACB: $FF
    rst RST_38                                    ; $5ACC: $FF
    rst RST_38                                    ; $5ACD: $FF
    rst RST_38                                    ; $5ACE: $FF
    rst RST_38                                    ; $5ACF: $FF
    rst RST_38                                    ; $5AD0: $FF
    rst RST_38                                    ; $5AD1: $FF
    rst RST_38                                    ; $5AD2: $FF
    rst RST_38                                    ; $5AD3: $FF
    rst RST_38                                    ; $5AD4: $FF
    rst RST_38                                    ; $5AD5: $FF
    rst RST_38                                    ; $5AD6: $FF
    rst RST_38                                    ; $5AD7: $FF
    rst RST_38                                    ; $5AD8: $FF
    rst RST_38                                    ; $5AD9: $FF
    rst RST_38                                    ; $5ADA: $FF
    rst RST_38                                    ; $5ADB: $FF
    rst RST_38                                    ; $5ADC: $FF
    rst RST_38                                    ; $5ADD: $FF
    rst RST_38                                    ; $5ADE: $FF
    rst RST_38                                    ; $5ADF: $FF
    rst RST_38                                    ; $5AE0: $FF
    rst RST_38                                    ; $5AE1: $FF
    rst RST_38                                    ; $5AE2: $FF
    rst RST_38                                    ; $5AE3: $FF
    rst RST_38                                    ; $5AE4: $FF
    rst RST_38                                    ; $5AE5: $FF
    rst RST_38                                    ; $5AE6: $FF
    rst RST_38                                    ; $5AE7: $FF
    rst RST_38                                    ; $5AE8: $FF
    rst RST_38                                    ; $5AE9: $FF
    rst RST_38                                    ; $5AEA: $FF
    rst RST_38                                    ; $5AEB: $FF
    rst RST_38                                    ; $5AEC: $FF
    rst RST_38                                    ; $5AED: $FF
    rst RST_38                                    ; $5AEE: $FF
    rst RST_38                                    ; $5AEF: $FF
    rst RST_38                                    ; $5AF0: $FF
    rst RST_38                                    ; $5AF1: $FF
    rst RST_38                                    ; $5AF2: $FF
    rst RST_38                                    ; $5AF3: $FF
    rst RST_38                                    ; $5AF4: $FF
    rst RST_38                                    ; $5AF5: $FF
    rst RST_38                                    ; $5AF6: $FF
    rst RST_38                                    ; $5AF7: $FF
    rst RST_38                                    ; $5AF8: $FF
    rst RST_38                                    ; $5AF9: $FF
    rst RST_38                                    ; $5AFA: $FF
    rst RST_38                                    ; $5AFB: $FF
    rst RST_38                                    ; $5AFC: $FF
    rst RST_38                                    ; $5AFD: $FF
    rst RST_38                                    ; $5AFE: $FF
    rst RST_38                                    ; $5AFF: $FF
    rst RST_38                                    ; $5B00: $FF
    rst RST_38                                    ; $5B01: $FF
    rst RST_38                                    ; $5B02: $FF
    rst RST_38                                    ; $5B03: $FF
    rst RST_38                                    ; $5B04: $FF
    rst RST_38                                    ; $5B05: $FF
    rst RST_38                                    ; $5B06: $FF
    rst RST_38                                    ; $5B07: $FF
    rst RST_38                                    ; $5B08: $FF
    rst RST_38                                    ; $5B09: $FF
    rst RST_38                                    ; $5B0A: $FF
    rst RST_38                                    ; $5B0B: $FF
    rst RST_38                                    ; $5B0C: $FF
    rst RST_38                                    ; $5B0D: $FF
    rst RST_38                                    ; $5B0E: $FF
    rst RST_38                                    ; $5B0F: $FF
    rst RST_38                                    ; $5B10: $FF
    rst RST_38                                    ; $5B11: $FF
    rst RST_38                                    ; $5B12: $FF
    rst RST_38                                    ; $5B13: $FF
    rst RST_38                                    ; $5B14: $FF
    rst RST_38                                    ; $5B15: $FF
    rst RST_38                                    ; $5B16: $FF
    rst RST_38                                    ; $5B17: $FF
    rst RST_38                                    ; $5B18: $FF
    rst RST_38                                    ; $5B19: $FF
    rst RST_38                                    ; $5B1A: $FF
    rst RST_38                                    ; $5B1B: $FF
    rst RST_38                                    ; $5B1C: $FF
    rst RST_38                                    ; $5B1D: $FF
    rst RST_38                                    ; $5B1E: $FF
    rst RST_38                                    ; $5B1F: $FF
    rst RST_38                                    ; $5B20: $FF
    rst RST_38                                    ; $5B21: $FF
    rst RST_38                                    ; $5B22: $FF
    rst RST_38                                    ; $5B23: $FF
    rst RST_38                                    ; $5B24: $FF
    rst RST_38                                    ; $5B25: $FF
    rst RST_38                                    ; $5B26: $FF
    rst RST_38                                    ; $5B27: $FF
    rst RST_38                                    ; $5B28: $FF
    rst RST_38                                    ; $5B29: $FF
    rst RST_38                                    ; $5B2A: $FF
    rst RST_38                                    ; $5B2B: $FF
    rst RST_38                                    ; $5B2C: $FF
    rst RST_38                                    ; $5B2D: $FF
    rst RST_38                                    ; $5B2E: $FF
    rst RST_38                                    ; $5B2F: $FF
    rst RST_38                                    ; $5B30: $FF
    rst RST_38                                    ; $5B31: $FF
    rst RST_38                                    ; $5B32: $FF
    rst RST_38                                    ; $5B33: $FF
    rst RST_38                                    ; $5B34: $FF
    rst RST_38                                    ; $5B35: $FF
    rst RST_38                                    ; $5B36: $FF
    rst RST_38                                    ; $5B37: $FF
    rst RST_38                                    ; $5B38: $FF
    rst RST_38                                    ; $5B39: $FF
    rst RST_38                                    ; $5B3A: $FF
    rst RST_38                                    ; $5B3B: $FF
    rst RST_38                                    ; $5B3C: $FF
    rst RST_38                                    ; $5B3D: $FF
    rst RST_38                                    ; $5B3E: $FF
    rst RST_38                                    ; $5B3F: $FF
    rst RST_38                                    ; $5B40: $FF
    rst RST_38                                    ; $5B41: $FF
    rst RST_38                                    ; $5B42: $FF
    rst RST_38                                    ; $5B43: $FF
    rst RST_38                                    ; $5B44: $FF
    rst RST_38                                    ; $5B45: $FF
    rst RST_38                                    ; $5B46: $FF
    rst RST_38                                    ; $5B47: $FF
    rst RST_38                                    ; $5B48: $FF
    rst RST_38                                    ; $5B49: $FF
    rst RST_38                                    ; $5B4A: $FF
    rst RST_38                                    ; $5B4B: $FF
    rst RST_38                                    ; $5B4C: $FF
    rst RST_38                                    ; $5B4D: $FF
    rst RST_38                                    ; $5B4E: $FF
    rst RST_38                                    ; $5B4F: $FF
    rst RST_38                                    ; $5B50: $FF
    rst RST_38                                    ; $5B51: $FF
    rst RST_38                                    ; $5B52: $FF
    rst RST_38                                    ; $5B53: $FF
    rst RST_38                                    ; $5B54: $FF
    rst RST_38                                    ; $5B55: $FF
    rst RST_38                                    ; $5B56: $FF
    rst RST_38                                    ; $5B57: $FF
    rst RST_38                                    ; $5B58: $FF
    rst RST_38                                    ; $5B59: $FF
    rst RST_38                                    ; $5B5A: $FF
    rst RST_38                                    ; $5B5B: $FF
    rst RST_38                                    ; $5B5C: $FF
    rst RST_38                                    ; $5B5D: $FF
    rst RST_38                                    ; $5B5E: $FF
    rst RST_38                                    ; $5B5F: $FF
    rst RST_38                                    ; $5B60: $FF
    rst RST_38                                    ; $5B61: $FF
    rst RST_38                                    ; $5B62: $FF
    rst RST_38                                    ; $5B63: $FF
    rst RST_38                                    ; $5B64: $FF
    rst RST_38                                    ; $5B65: $FF
    rst RST_38                                    ; $5B66: $FF
    rst RST_38                                    ; $5B67: $FF
    rst RST_38                                    ; $5B68: $FF
    rst RST_38                                    ; $5B69: $FF
    rst RST_38                                    ; $5B6A: $FF
    rst RST_38                                    ; $5B6B: $FF
    rst RST_38                                    ; $5B6C: $FF
    rst RST_38                                    ; $5B6D: $FF
    rst RST_38                                    ; $5B6E: $FF
    rst RST_38                                    ; $5B6F: $FF
    rst RST_38                                    ; $5B70: $FF
    rst RST_38                                    ; $5B71: $FF
    rst RST_38                                    ; $5B72: $FF
    rst RST_38                                    ; $5B73: $FF
    rst RST_38                                    ; $5B74: $FF
    rst RST_38                                    ; $5B75: $FF
    rst RST_38                                    ; $5B76: $FF
    rst RST_38                                    ; $5B77: $FF
    rst RST_38                                    ; $5B78: $FF
    rst RST_38                                    ; $5B79: $FF
    rst RST_38                                    ; $5B7A: $FF
    rst RST_38                                    ; $5B7B: $FF
    rst RST_38                                    ; $5B7C: $FF
    rst RST_38                                    ; $5B7D: $FF
    rst RST_38                                    ; $5B7E: $FF
    rst RST_38                                    ; $5B7F: $FF
    rst RST_38                                    ; $5B80: $FF
    rst RST_38                                    ; $5B81: $FF
    rst RST_38                                    ; $5B82: $FF
    rst RST_38                                    ; $5B83: $FF
    rst RST_38                                    ; $5B84: $FF
    rst RST_38                                    ; $5B85: $FF
    rst RST_38                                    ; $5B86: $FF
    rst RST_38                                    ; $5B87: $FF
    rst RST_38                                    ; $5B88: $FF
    rst RST_38                                    ; $5B89: $FF
    rst RST_38                                    ; $5B8A: $FF
    rst RST_38                                    ; $5B8B: $FF
    rst RST_38                                    ; $5B8C: $FF
    rst RST_38                                    ; $5B8D: $FF
    rst RST_38                                    ; $5B8E: $FF
    rst RST_38                                    ; $5B8F: $FF
    rst RST_38                                    ; $5B90: $FF
    rst RST_38                                    ; $5B91: $FF
    rst RST_38                                    ; $5B92: $FF
    rst RST_38                                    ; $5B93: $FF
    rst RST_38                                    ; $5B94: $FF
    rst RST_38                                    ; $5B95: $FF
    rst RST_38                                    ; $5B96: $FF
    rst RST_38                                    ; $5B97: $FF
    rst RST_38                                    ; $5B98: $FF
    rst RST_38                                    ; $5B99: $FF
    rst RST_38                                    ; $5B9A: $FF
    rst RST_38                                    ; $5B9B: $FF
    rst RST_38                                    ; $5B9C: $FF
    rst RST_38                                    ; $5B9D: $FF
    rst RST_38                                    ; $5B9E: $FF
    rst RST_38                                    ; $5B9F: $FF
    rst RST_38                                    ; $5BA0: $FF
    rst RST_38                                    ; $5BA1: $FF
    rst RST_38                                    ; $5BA2: $FF
    rst RST_38                                    ; $5BA3: $FF
    rst RST_38                                    ; $5BA4: $FF
    rst RST_38                                    ; $5BA5: $FF
    rst RST_38                                    ; $5BA6: $FF
    rst RST_38                                    ; $5BA7: $FF
    rst RST_38                                    ; $5BA8: $FF
    rst RST_38                                    ; $5BA9: $FF
    rst RST_38                                    ; $5BAA: $FF
    rst RST_38                                    ; $5BAB: $FF
    rst RST_38                                    ; $5BAC: $FF
    rst RST_38                                    ; $5BAD: $FF
    rst RST_38                                    ; $5BAE: $FF
    rst RST_38                                    ; $5BAF: $FF
    rst RST_38                                    ; $5BB0: $FF
    rst RST_38                                    ; $5BB1: $FF
    rst RST_38                                    ; $5BB2: $FF
    rst RST_38                                    ; $5BB3: $FF
    rst RST_38                                    ; $5BB4: $FF
    rst RST_38                                    ; $5BB5: $FF
    rst RST_38                                    ; $5BB6: $FF
    rst RST_38                                    ; $5BB7: $FF
    rst RST_38                                    ; $5BB8: $FF
    rst RST_38                                    ; $5BB9: $FF
    rst RST_38                                    ; $5BBA: $FF
    rst RST_38                                    ; $5BBB: $FF
    rst RST_38                                    ; $5BBC: $FF
    rst RST_38                                    ; $5BBD: $FF
    rst RST_38                                    ; $5BBE: $FF
    rst RST_38                                    ; $5BBF: $FF
    rst RST_38                                    ; $5BC0: $FF
    rst RST_38                                    ; $5BC1: $FF
    rst RST_38                                    ; $5BC2: $FF
    rst RST_38                                    ; $5BC3: $FF
    rst RST_38                                    ; $5BC4: $FF
    rst RST_38                                    ; $5BC5: $FF
    rst RST_38                                    ; $5BC6: $FF
    rst RST_38                                    ; $5BC7: $FF
    rst RST_38                                    ; $5BC8: $FF
    rst RST_38                                    ; $5BC9: $FF
    rst RST_38                                    ; $5BCA: $FF
    rst RST_38                                    ; $5BCB: $FF
    rst RST_38                                    ; $5BCC: $FF
    rst RST_38                                    ; $5BCD: $FF
    rst RST_38                                    ; $5BCE: $FF
    rst RST_38                                    ; $5BCF: $FF
    rst RST_38                                    ; $5BD0: $FF
    rst RST_38                                    ; $5BD1: $FF
    rst RST_38                                    ; $5BD2: $FF
    rst RST_38                                    ; $5BD3: $FF
    rst RST_38                                    ; $5BD4: $FF
    rst RST_38                                    ; $5BD5: $FF
    rst RST_38                                    ; $5BD6: $FF
    rst RST_38                                    ; $5BD7: $FF
    rst RST_38                                    ; $5BD8: $FF
    rst RST_38                                    ; $5BD9: $FF
    rst RST_38                                    ; $5BDA: $FF
    rst RST_38                                    ; $5BDB: $FF
    rst RST_38                                    ; $5BDC: $FF
    rst RST_38                                    ; $5BDD: $FF
    rst RST_38                                    ; $5BDE: $FF
    rst RST_38                                    ; $5BDF: $FF
    rst RST_38                                    ; $5BE0: $FF
    rst RST_38                                    ; $5BE1: $FF
    rst RST_38                                    ; $5BE2: $FF
    rst RST_38                                    ; $5BE3: $FF
    rst RST_38                                    ; $5BE4: $FF
    rst RST_38                                    ; $5BE5: $FF
    rst RST_38                                    ; $5BE6: $FF
    rst RST_38                                    ; $5BE7: $FF
    rst RST_38                                    ; $5BE8: $FF
    rst RST_38                                    ; $5BE9: $FF
    rst RST_38                                    ; $5BEA: $FF
    rst RST_38                                    ; $5BEB: $FF
    rst RST_38                                    ; $5BEC: $FF
    rst RST_38                                    ; $5BED: $FF
    rst RST_38                                    ; $5BEE: $FF
    rst RST_38                                    ; $5BEF: $FF
    rst RST_38                                    ; $5BF0: $FF
    rst RST_38                                    ; $5BF1: $FF
    rst RST_38                                    ; $5BF2: $FF
    rst RST_38                                    ; $5BF3: $FF
    rst RST_38                                    ; $5BF4: $FF
    rst RST_38                                    ; $5BF5: $FF
    rst RST_38                                    ; $5BF6: $FF
    rst RST_38                                    ; $5BF7: $FF
    rst RST_38                                    ; $5BF8: $FF
    rst RST_38                                    ; $5BF9: $FF
    rst RST_38                                    ; $5BFA: $FF
    rst RST_38                                    ; $5BFB: $FF
    rst RST_38                                    ; $5BFC: $FF
    rst RST_38                                    ; $5BFD: $FF
    rst RST_38                                    ; $5BFE: $FF
    rst RST_38                                    ; $5BFF: $FF
    rst RST_38                                    ; $5C00: $FF
    rst RST_38                                    ; $5C01: $FF
    rst RST_38                                    ; $5C02: $FF
    rst RST_38                                    ; $5C03: $FF
    rst RST_38                                    ; $5C04: $FF
    rst RST_38                                    ; $5C05: $FF
    rst RST_38                                    ; $5C06: $FF
    rst RST_38                                    ; $5C07: $FF
    rst RST_38                                    ; $5C08: $FF
    rst RST_38                                    ; $5C09: $FF
    rst RST_38                                    ; $5C0A: $FF
    rst RST_38                                    ; $5C0B: $FF
    rst RST_38                                    ; $5C0C: $FF
    rst RST_38                                    ; $5C0D: $FF
    rst RST_38                                    ; $5C0E: $FF
    rst RST_38                                    ; $5C0F: $FF
    rst RST_38                                    ; $5C10: $FF
    rst RST_38                                    ; $5C11: $FF
    rst RST_38                                    ; $5C12: $FF
    rst RST_38                                    ; $5C13: $FF
    rst RST_38                                    ; $5C14: $FF
    rst RST_38                                    ; $5C15: $FF
    rst RST_38                                    ; $5C16: $FF
    rst RST_38                                    ; $5C17: $FF
    rst RST_38                                    ; $5C18: $FF
    rst RST_38                                    ; $5C19: $FF
    rst RST_38                                    ; $5C1A: $FF
    rst RST_38                                    ; $5C1B: $FF
    rst RST_38                                    ; $5C1C: $FF
    rst RST_38                                    ; $5C1D: $FF
    rst RST_38                                    ; $5C1E: $FF
    rst RST_38                                    ; $5C1F: $FF
    rst RST_38                                    ; $5C20: $FF
    rst RST_38                                    ; $5C21: $FF
    rst RST_38                                    ; $5C22: $FF
    rst RST_38                                    ; $5C23: $FF
    rst RST_38                                    ; $5C24: $FF
    rst RST_38                                    ; $5C25: $FF
    rst RST_38                                    ; $5C26: $FF
    rst RST_38                                    ; $5C27: $FF
    rst RST_38                                    ; $5C28: $FF
    rst RST_38                                    ; $5C29: $FF
    rst RST_38                                    ; $5C2A: $FF
    rst RST_38                                    ; $5C2B: $FF
    rst RST_38                                    ; $5C2C: $FF
    rst RST_38                                    ; $5C2D: $FF
    rst RST_38                                    ; $5C2E: $FF
    rst RST_38                                    ; $5C2F: $FF
    rst RST_38                                    ; $5C30: $FF
    rst RST_38                                    ; $5C31: $FF
    rst RST_38                                    ; $5C32: $FF
    rst RST_38                                    ; $5C33: $FF
    rst RST_38                                    ; $5C34: $FF
    rst RST_38                                    ; $5C35: $FF
    rst RST_38                                    ; $5C36: $FF
    rst RST_38                                    ; $5C37: $FF
    rst RST_38                                    ; $5C38: $FF
    rst RST_38                                    ; $5C39: $FF
    rst RST_38                                    ; $5C3A: $FF
    rst RST_38                                    ; $5C3B: $FF
    rst RST_38                                    ; $5C3C: $FF
    rst RST_38                                    ; $5C3D: $FF
    rst RST_38                                    ; $5C3E: $FF
    rst RST_38                                    ; $5C3F: $FF
    rst RST_38                                    ; $5C40: $FF
    rst RST_38                                    ; $5C41: $FF
    rst RST_38                                    ; $5C42: $FF
    rst RST_38                                    ; $5C43: $FF
    rst RST_38                                    ; $5C44: $FF
    rst RST_38                                    ; $5C45: $FF
    rst RST_38                                    ; $5C46: $FF
    rst RST_38                                    ; $5C47: $FF
    rst RST_38                                    ; $5C48: $FF
    rst RST_38                                    ; $5C49: $FF
    rst RST_38                                    ; $5C4A: $FF
    rst RST_38                                    ; $5C4B: $FF
    rst RST_38                                    ; $5C4C: $FF
    rst RST_38                                    ; $5C4D: $FF
    rst RST_38                                    ; $5C4E: $FF
    rst RST_38                                    ; $5C4F: $FF
    rst RST_38                                    ; $5C50: $FF
    rst RST_38                                    ; $5C51: $FF
    rst RST_38                                    ; $5C52: $FF
    rst RST_38                                    ; $5C53: $FF
    rst RST_38                                    ; $5C54: $FF
    rst RST_38                                    ; $5C55: $FF
    rst RST_38                                    ; $5C56: $FF
    rst RST_38                                    ; $5C57: $FF
    rst RST_38                                    ; $5C58: $FF
    rst RST_38                                    ; $5C59: $FF
    rst RST_38                                    ; $5C5A: $FF
    rst RST_38                                    ; $5C5B: $FF
    rst RST_38                                    ; $5C5C: $FF
    rst RST_38                                    ; $5C5D: $FF
    rst RST_38                                    ; $5C5E: $FF
    rst RST_38                                    ; $5C5F: $FF
    rst RST_38                                    ; $5C60: $FF
    rst RST_38                                    ; $5C61: $FF
    rst RST_38                                    ; $5C62: $FF
    rst RST_38                                    ; $5C63: $FF
    rst RST_38                                    ; $5C64: $FF
    rst RST_38                                    ; $5C65: $FF
    rst RST_38                                    ; $5C66: $FF
    rst RST_38                                    ; $5C67: $FF
    rst RST_38                                    ; $5C68: $FF
    rst RST_38                                    ; $5C69: $FF
    rst RST_38                                    ; $5C6A: $FF
    rst RST_38                                    ; $5C6B: $FF
    rst RST_38                                    ; $5C6C: $FF
    rst RST_38                                    ; $5C6D: $FF
    rst RST_38                                    ; $5C6E: $FF
    rst RST_38                                    ; $5C6F: $FF
    rst RST_38                                    ; $5C70: $FF
    rst RST_38                                    ; $5C71: $FF
    rst RST_38                                    ; $5C72: $FF
    rst RST_38                                    ; $5C73: $FF
    rst RST_38                                    ; $5C74: $FF
    rst RST_38                                    ; $5C75: $FF
    rst RST_38                                    ; $5C76: $FF
    rst RST_38                                    ; $5C77: $FF
    rst RST_38                                    ; $5C78: $FF
    rst RST_38                                    ; $5C79: $FF
    rst RST_38                                    ; $5C7A: $FF
    rst RST_38                                    ; $5C7B: $FF
    rst RST_38                                    ; $5C7C: $FF
    rst RST_38                                    ; $5C7D: $FF
    rst RST_38                                    ; $5C7E: $FF
    rst RST_38                                    ; $5C7F: $FF
    rst RST_38                                    ; $5C80: $FF
    rst RST_38                                    ; $5C81: $FF
    rst RST_38                                    ; $5C82: $FF
    rst RST_38                                    ; $5C83: $FF
    rst RST_38                                    ; $5C84: $FF
    rst RST_38                                    ; $5C85: $FF
    rst RST_38                                    ; $5C86: $FF
    rst RST_38                                    ; $5C87: $FF
    rst RST_38                                    ; $5C88: $FF
    rst RST_38                                    ; $5C89: $FF
    rst RST_38                                    ; $5C8A: $FF
    rst RST_38                                    ; $5C8B: $FF
    rst RST_38                                    ; $5C8C: $FF
    rst RST_38                                    ; $5C8D: $FF
    rst RST_38                                    ; $5C8E: $FF
    rst RST_38                                    ; $5C8F: $FF
    rst RST_38                                    ; $5C90: $FF
    rst RST_38                                    ; $5C91: $FF
    rst RST_38                                    ; $5C92: $FF
    rst RST_38                                    ; $5C93: $FF
    rst RST_38                                    ; $5C94: $FF
    rst RST_38                                    ; $5C95: $FF
    rst RST_38                                    ; $5C96: $FF
    rst RST_38                                    ; $5C97: $FF
    rst RST_38                                    ; $5C98: $FF
    rst RST_38                                    ; $5C99: $FF
    rst RST_38                                    ; $5C9A: $FF
    rst RST_38                                    ; $5C9B: $FF
    rst RST_38                                    ; $5C9C: $FF
    rst RST_38                                    ; $5C9D: $FF
    rst RST_38                                    ; $5C9E: $FF
    rst RST_38                                    ; $5C9F: $FF
    rst RST_38                                    ; $5CA0: $FF
    rst RST_38                                    ; $5CA1: $FF
    rst RST_38                                    ; $5CA2: $FF
    rst RST_38                                    ; $5CA3: $FF
    rst RST_38                                    ; $5CA4: $FF
    rst RST_38                                    ; $5CA5: $FF
    rst RST_38                                    ; $5CA6: $FF
    rst RST_38                                    ; $5CA7: $FF
    rst RST_38                                    ; $5CA8: $FF
    rst RST_38                                    ; $5CA9: $FF
    rst RST_38                                    ; $5CAA: $FF
    rst RST_38                                    ; $5CAB: $FF
    rst RST_38                                    ; $5CAC: $FF
    rst RST_38                                    ; $5CAD: $FF
    rst RST_38                                    ; $5CAE: $FF
    rst RST_38                                    ; $5CAF: $FF
    rst RST_38                                    ; $5CB0: $FF
    rst RST_38                                    ; $5CB1: $FF
    rst RST_38                                    ; $5CB2: $FF
    rst RST_38                                    ; $5CB3: $FF
    rst RST_38                                    ; $5CB4: $FF
    rst RST_38                                    ; $5CB5: $FF
    rst RST_38                                    ; $5CB6: $FF
    rst RST_38                                    ; $5CB7: $FF
    rst RST_38                                    ; $5CB8: $FF
    rst RST_38                                    ; $5CB9: $FF
    rst RST_38                                    ; $5CBA: $FF
    rst RST_38                                    ; $5CBB: $FF
    rst RST_38                                    ; $5CBC: $FF
    rst RST_38                                    ; $5CBD: $FF
    rst RST_38                                    ; $5CBE: $FF
    rst RST_38                                    ; $5CBF: $FF
    rst RST_38                                    ; $5CC0: $FF
    rst RST_38                                    ; $5CC1: $FF
    rst RST_38                                    ; $5CC2: $FF
    rst RST_38                                    ; $5CC3: $FF
    rst RST_38                                    ; $5CC4: $FF
    rst RST_38                                    ; $5CC5: $FF
    rst RST_38                                    ; $5CC6: $FF
    rst RST_38                                    ; $5CC7: $FF
    rst RST_38                                    ; $5CC8: $FF
    rst RST_38                                    ; $5CC9: $FF
    rst RST_38                                    ; $5CCA: $FF
    rst RST_38                                    ; $5CCB: $FF
    rst RST_38                                    ; $5CCC: $FF
    rst RST_38                                    ; $5CCD: $FF
    rst RST_38                                    ; $5CCE: $FF
    rst RST_38                                    ; $5CCF: $FF
    rst RST_38                                    ; $5CD0: $FF
    rst RST_38                                    ; $5CD1: $FF
    rst RST_38                                    ; $5CD2: $FF
    rst RST_38                                    ; $5CD3: $FF
    rst RST_38                                    ; $5CD4: $FF
    rst RST_38                                    ; $5CD5: $FF
    rst RST_38                                    ; $5CD6: $FF
    rst RST_38                                    ; $5CD7: $FF
    rst RST_38                                    ; $5CD8: $FF
    rst RST_38                                    ; $5CD9: $FF
    rst RST_38                                    ; $5CDA: $FF
    rst RST_38                                    ; $5CDB: $FF
    rst RST_38                                    ; $5CDC: $FF
    rst RST_38                                    ; $5CDD: $FF
    rst RST_38                                    ; $5CDE: $FF
    rst RST_38                                    ; $5CDF: $FF
    rst RST_38                                    ; $5CE0: $FF
    rst RST_38                                    ; $5CE1: $FF
    rst RST_38                                    ; $5CE2: $FF
    rst RST_38                                    ; $5CE3: $FF
    rst RST_38                                    ; $5CE4: $FF
    rst RST_38                                    ; $5CE5: $FF
    rst RST_38                                    ; $5CE6: $FF
    rst RST_38                                    ; $5CE7: $FF
    rst RST_38                                    ; $5CE8: $FF
    rst RST_38                                    ; $5CE9: $FF
    rst RST_38                                    ; $5CEA: $FF
    rst RST_38                                    ; $5CEB: $FF
    rst RST_38                                    ; $5CEC: $FF
    rst RST_38                                    ; $5CED: $FF
    rst RST_38                                    ; $5CEE: $FF
    rst RST_38                                    ; $5CEF: $FF
    rst RST_38                                    ; $5CF0: $FF
    rst RST_38                                    ; $5CF1: $FF
    rst RST_38                                    ; $5CF2: $FF
    rst RST_38                                    ; $5CF3: $FF
    rst RST_38                                    ; $5CF4: $FF
    rst RST_38                                    ; $5CF5: $FF
    rst RST_38                                    ; $5CF6: $FF
    rst RST_38                                    ; $5CF7: $FF
    rst RST_38                                    ; $5CF8: $FF
    rst RST_38                                    ; $5CF9: $FF
    rst RST_38                                    ; $5CFA: $FF
    rst RST_38                                    ; $5CFB: $FF
    rst RST_38                                    ; $5CFC: $FF
    rst RST_38                                    ; $5CFD: $FF
    rst RST_38                                    ; $5CFE: $FF
    rst RST_38                                    ; $5CFF: $FF
    rst RST_38                                    ; $5D00: $FF
    rst RST_38                                    ; $5D01: $FF
    rst RST_38                                    ; $5D02: $FF
    rst RST_38                                    ; $5D03: $FF
    rst RST_38                                    ; $5D04: $FF
    rst RST_38                                    ; $5D05: $FF
    rst RST_38                                    ; $5D06: $FF
    rst RST_38                                    ; $5D07: $FF
    rst RST_38                                    ; $5D08: $FF
    rst RST_38                                    ; $5D09: $FF
    rst RST_38                                    ; $5D0A: $FF
    rst RST_38                                    ; $5D0B: $FF
    rst RST_38                                    ; $5D0C: $FF
    rst RST_38                                    ; $5D0D: $FF
    rst RST_38                                    ; $5D0E: $FF
    rst RST_38                                    ; $5D0F: $FF
    rst RST_38                                    ; $5D10: $FF
    rst RST_38                                    ; $5D11: $FF
    rst RST_38                                    ; $5D12: $FF
    rst RST_38                                    ; $5D13: $FF
    rst RST_38                                    ; $5D14: $FF
    rst RST_38                                    ; $5D15: $FF
    rst RST_38                                    ; $5D16: $FF
    rst RST_38                                    ; $5D17: $FF
    rst RST_38                                    ; $5D18: $FF
    rst RST_38                                    ; $5D19: $FF
    rst RST_38                                    ; $5D1A: $FF
    rst RST_38                                    ; $5D1B: $FF
    rst RST_38                                    ; $5D1C: $FF
    rst RST_38                                    ; $5D1D: $FF
    rst RST_38                                    ; $5D1E: $FF
    rst RST_38                                    ; $5D1F: $FF
    rst RST_38                                    ; $5D20: $FF
    rst RST_38                                    ; $5D21: $FF
    rst RST_38                                    ; $5D22: $FF
    rst RST_38                                    ; $5D23: $FF
    rst RST_38                                    ; $5D24: $FF
    rst RST_38                                    ; $5D25: $FF
    rst RST_38                                    ; $5D26: $FF
    rst RST_38                                    ; $5D27: $FF
    rst RST_38                                    ; $5D28: $FF
    rst RST_38                                    ; $5D29: $FF
    rst RST_38                                    ; $5D2A: $FF
    rst RST_38                                    ; $5D2B: $FF
    rst RST_38                                    ; $5D2C: $FF
    rst RST_38                                    ; $5D2D: $FF
    rst RST_38                                    ; $5D2E: $FF
    rst RST_38                                    ; $5D2F: $FF
    rst RST_38                                    ; $5D30: $FF
    rst RST_38                                    ; $5D31: $FF
    rst RST_38                                    ; $5D32: $FF
    rst RST_38                                    ; $5D33: $FF
    rst RST_38                                    ; $5D34: $FF
    rst RST_38                                    ; $5D35: $FF
    rst RST_38                                    ; $5D36: $FF
    rst RST_38                                    ; $5D37: $FF
    rst RST_38                                    ; $5D38: $FF
    rst RST_38                                    ; $5D39: $FF
    rst RST_38                                    ; $5D3A: $FF
    rst RST_38                                    ; $5D3B: $FF
    rst RST_38                                    ; $5D3C: $FF
    rst RST_38                                    ; $5D3D: $FF
    rst RST_38                                    ; $5D3E: $FF
    rst RST_38                                    ; $5D3F: $FF
    rst RST_38                                    ; $5D40: $FF
    rst RST_38                                    ; $5D41: $FF
    rst RST_38                                    ; $5D42: $FF
    rst RST_38                                    ; $5D43: $FF
    rst RST_38                                    ; $5D44: $FF
    rst RST_38                                    ; $5D45: $FF
    rst RST_38                                    ; $5D46: $FF
    rst RST_38                                    ; $5D47: $FF
    rst RST_38                                    ; $5D48: $FF
    rst RST_38                                    ; $5D49: $FF
    rst RST_38                                    ; $5D4A: $FF
    rst RST_38                                    ; $5D4B: $FF
    rst RST_38                                    ; $5D4C: $FF
    rst RST_38                                    ; $5D4D: $FF
    rst RST_38                                    ; $5D4E: $FF
    rst RST_38                                    ; $5D4F: $FF
    rst RST_38                                    ; $5D50: $FF
    rst RST_38                                    ; $5D51: $FF
    rst RST_38                                    ; $5D52: $FF
    rst RST_38                                    ; $5D53: $FF
    rst RST_38                                    ; $5D54: $FF
    rst RST_38                                    ; $5D55: $FF
    rst RST_38                                    ; $5D56: $FF
    rst RST_38                                    ; $5D57: $FF
    rst RST_38                                    ; $5D58: $FF
    rst RST_38                                    ; $5D59: $FF
    rst RST_38                                    ; $5D5A: $FF
    rst RST_38                                    ; $5D5B: $FF
    rst RST_38                                    ; $5D5C: $FF
    rst RST_38                                    ; $5D5D: $FF
    rst RST_38                                    ; $5D5E: $FF
    rst RST_38                                    ; $5D5F: $FF
    rst RST_38                                    ; $5D60: $FF
    rst RST_38                                    ; $5D61: $FF
    rst RST_38                                    ; $5D62: $FF
    rst RST_38                                    ; $5D63: $FF
    rst RST_38                                    ; $5D64: $FF
    rst RST_38                                    ; $5D65: $FF
    rst RST_38                                    ; $5D66: $FF
    rst RST_38                                    ; $5D67: $FF
    rst RST_38                                    ; $5D68: $FF
    rst RST_38                                    ; $5D69: $FF
    rst RST_38                                    ; $5D6A: $FF
    rst RST_38                                    ; $5D6B: $FF
    rst RST_38                                    ; $5D6C: $FF
    rst RST_38                                    ; $5D6D: $FF
    rst RST_38                                    ; $5D6E: $FF
    rst RST_38                                    ; $5D6F: $FF
    rst RST_38                                    ; $5D70: $FF
    rst RST_38                                    ; $5D71: $FF
    rst RST_38                                    ; $5D72: $FF
    rst RST_38                                    ; $5D73: $FF
    rst RST_38                                    ; $5D74: $FF
    rst RST_38                                    ; $5D75: $FF
    rst RST_38                                    ; $5D76: $FF
    rst RST_38                                    ; $5D77: $FF
    rst RST_38                                    ; $5D78: $FF
    rst RST_38                                    ; $5D79: $FF
    rst RST_38                                    ; $5D7A: $FF
    rst RST_38                                    ; $5D7B: $FF
    rst RST_38                                    ; $5D7C: $FF
    rst RST_38                                    ; $5D7D: $FF
    rst RST_38                                    ; $5D7E: $FF
    rst RST_38                                    ; $5D7F: $FF
    rst RST_38                                    ; $5D80: $FF
    rst RST_38                                    ; $5D81: $FF
    rst RST_38                                    ; $5D82: $FF
    rst RST_38                                    ; $5D83: $FF
    rst RST_38                                    ; $5D84: $FF
    rst RST_38                                    ; $5D85: $FF
    rst RST_38                                    ; $5D86: $FF
    rst RST_38                                    ; $5D87: $FF
    rst RST_38                                    ; $5D88: $FF
    rst RST_38                                    ; $5D89: $FF
    rst RST_38                                    ; $5D8A: $FF
    rst RST_38                                    ; $5D8B: $FF
    rst RST_38                                    ; $5D8C: $FF
    rst RST_38                                    ; $5D8D: $FF
    rst RST_38                                    ; $5D8E: $FF
    rst RST_38                                    ; $5D8F: $FF
    rst RST_38                                    ; $5D90: $FF
    rst RST_38                                    ; $5D91: $FF
    rst RST_38                                    ; $5D92: $FF
    rst RST_38                                    ; $5D93: $FF
    rst RST_38                                    ; $5D94: $FF
    rst RST_38                                    ; $5D95: $FF
    rst RST_38                                    ; $5D96: $FF
    rst RST_38                                    ; $5D97: $FF
    rst RST_38                                    ; $5D98: $FF
    rst RST_38                                    ; $5D99: $FF
    rst RST_38                                    ; $5D9A: $FF
    rst RST_38                                    ; $5D9B: $FF
    rst RST_38                                    ; $5D9C: $FF
    rst RST_38                                    ; $5D9D: $FF
    rst RST_38                                    ; $5D9E: $FF
    rst RST_38                                    ; $5D9F: $FF
    rst RST_38                                    ; $5DA0: $FF
    rst RST_38                                    ; $5DA1: $FF
    rst RST_38                                    ; $5DA2: $FF
    rst RST_38                                    ; $5DA3: $FF
    rst RST_38                                    ; $5DA4: $FF
    rst RST_38                                    ; $5DA5: $FF
    rst RST_38                                    ; $5DA6: $FF
    rst RST_38                                    ; $5DA7: $FF
    rst RST_38                                    ; $5DA8: $FF
    rst RST_38                                    ; $5DA9: $FF
    rst RST_38                                    ; $5DAA: $FF
    rst RST_38                                    ; $5DAB: $FF
    rst RST_38                                    ; $5DAC: $FF
    rst RST_38                                    ; $5DAD: $FF
    rst RST_38                                    ; $5DAE: $FF
    rst RST_38                                    ; $5DAF: $FF
    rst RST_38                                    ; $5DB0: $FF
    rst RST_38                                    ; $5DB1: $FF
    rst RST_38                                    ; $5DB2: $FF
    rst RST_38                                    ; $5DB3: $FF
    rst RST_38                                    ; $5DB4: $FF
    rst RST_38                                    ; $5DB5: $FF
    rst RST_38                                    ; $5DB6: $FF
    rst RST_38                                    ; $5DB7: $FF
    rst RST_38                                    ; $5DB8: $FF
    rst RST_38                                    ; $5DB9: $FF
    rst RST_38                                    ; $5DBA: $FF
    rst RST_38                                    ; $5DBB: $FF
    rst RST_38                                    ; $5DBC: $FF
    rst RST_38                                    ; $5DBD: $FF
    rst RST_38                                    ; $5DBE: $FF
    rst RST_38                                    ; $5DBF: $FF
    rst RST_38                                    ; $5DC0: $FF
    rst RST_38                                    ; $5DC1: $FF
    rst RST_38                                    ; $5DC2: $FF
    rst RST_38                                    ; $5DC3: $FF
    rst RST_38                                    ; $5DC4: $FF
    rst RST_38                                    ; $5DC5: $FF
    rst RST_38                                    ; $5DC6: $FF
    rst RST_38                                    ; $5DC7: $FF
    rst RST_38                                    ; $5DC8: $FF
    rst RST_38                                    ; $5DC9: $FF
    rst RST_38                                    ; $5DCA: $FF
    rst RST_38                                    ; $5DCB: $FF
    rst RST_38                                    ; $5DCC: $FF
    rst RST_38                                    ; $5DCD: $FF
    rst RST_38                                    ; $5DCE: $FF
    rst RST_38                                    ; $5DCF: $FF
    rst RST_38                                    ; $5DD0: $FF
    rst RST_38                                    ; $5DD1: $FF
    rst RST_38                                    ; $5DD2: $FF
    rst RST_38                                    ; $5DD3: $FF
    rst RST_38                                    ; $5DD4: $FF
    rst RST_38                                    ; $5DD5: $FF
    rst RST_38                                    ; $5DD6: $FF
    rst RST_38                                    ; $5DD7: $FF
    rst RST_38                                    ; $5DD8: $FF
    rst RST_38                                    ; $5DD9: $FF
    rst RST_38                                    ; $5DDA: $FF
    rst RST_38                                    ; $5DDB: $FF
    rst RST_38                                    ; $5DDC: $FF
    rst RST_38                                    ; $5DDD: $FF
    rst RST_38                                    ; $5DDE: $FF
    rst RST_38                                    ; $5DDF: $FF
    rst RST_38                                    ; $5DE0: $FF
    rst RST_38                                    ; $5DE1: $FF
    rst RST_38                                    ; $5DE2: $FF
    rst RST_38                                    ; $5DE3: $FF
    rst RST_38                                    ; $5DE4: $FF
    rst RST_38                                    ; $5DE5: $FF
    rst RST_38                                    ; $5DE6: $FF
    rst RST_38                                    ; $5DE7: $FF
    rst RST_38                                    ; $5DE8: $FF
    rst RST_38                                    ; $5DE9: $FF
    rst RST_38                                    ; $5DEA: $FF
    rst RST_38                                    ; $5DEB: $FF
    rst RST_38                                    ; $5DEC: $FF
    rst RST_38                                    ; $5DED: $FF
    rst RST_38                                    ; $5DEE: $FF
    rst RST_38                                    ; $5DEF: $FF
    rst RST_38                                    ; $5DF0: $FF
    rst RST_38                                    ; $5DF1: $FF
    rst RST_38                                    ; $5DF2: $FF
    rst RST_38                                    ; $5DF3: $FF
    rst RST_38                                    ; $5DF4: $FF
    rst RST_38                                    ; $5DF5: $FF
    rst RST_38                                    ; $5DF6: $FF
    rst RST_38                                    ; $5DF7: $FF
    rst RST_38                                    ; $5DF8: $FF
    rst RST_38                                    ; $5DF9: $FF
    rst RST_38                                    ; $5DFA: $FF
    rst RST_38                                    ; $5DFB: $FF
    rst RST_38                                    ; $5DFC: $FF
    rst RST_38                                    ; $5DFD: $FF
    rst RST_38                                    ; $5DFE: $FF
    rst RST_38                                    ; $5DFF: $FF
    rst RST_38                                    ; $5E00: $FF
    rst RST_38                                    ; $5E01: $FF
    rst RST_38                                    ; $5E02: $FF
    rst RST_38                                    ; $5E03: $FF
    rst RST_38                                    ; $5E04: $FF
    rst RST_38                                    ; $5E05: $FF
    rst RST_38                                    ; $5E06: $FF
    rst RST_38                                    ; $5E07: $FF
    rst RST_38                                    ; $5E08: $FF
    rst RST_38                                    ; $5E09: $FF
    rst RST_38                                    ; $5E0A: $FF
    rst RST_38                                    ; $5E0B: $FF
    rst RST_38                                    ; $5E0C: $FF
    rst RST_38                                    ; $5E0D: $FF
    rst RST_38                                    ; $5E0E: $FF
    rst RST_38                                    ; $5E0F: $FF
    rst RST_38                                    ; $5E10: $FF
    rst RST_38                                    ; $5E11: $FF
    rst RST_38                                    ; $5E12: $FF
    rst RST_38                                    ; $5E13: $FF
    rst RST_38                                    ; $5E14: $FF
    rst RST_38                                    ; $5E15: $FF
    rst RST_38                                    ; $5E16: $FF
    rst RST_38                                    ; $5E17: $FF
    rst RST_38                                    ; $5E18: $FF
    rst RST_38                                    ; $5E19: $FF
    rst RST_38                                    ; $5E1A: $FF
    rst RST_38                                    ; $5E1B: $FF
    rst RST_38                                    ; $5E1C: $FF
    rst RST_38                                    ; $5E1D: $FF
    rst RST_38                                    ; $5E1E: $FF
    rst RST_38                                    ; $5E1F: $FF
    rst RST_38                                    ; $5E20: $FF
    rst RST_38                                    ; $5E21: $FF
    rst RST_38                                    ; $5E22: $FF
    rst RST_38                                    ; $5E23: $FF
    rst RST_38                                    ; $5E24: $FF
    rst RST_38                                    ; $5E25: $FF
    rst RST_38                                    ; $5E26: $FF
    rst RST_38                                    ; $5E27: $FF
    rst RST_38                                    ; $5E28: $FF
    rst RST_38                                    ; $5E29: $FF
    rst RST_38                                    ; $5E2A: $FF
    rst RST_38                                    ; $5E2B: $FF
    rst RST_38                                    ; $5E2C: $FF
    rst RST_38                                    ; $5E2D: $FF
    rst RST_38                                    ; $5E2E: $FF
    rst RST_38                                    ; $5E2F: $FF
    rst RST_38                                    ; $5E30: $FF
    rst RST_38                                    ; $5E31: $FF
    rst RST_38                                    ; $5E32: $FF
    rst RST_38                                    ; $5E33: $FF
    rst RST_38                                    ; $5E34: $FF
    rst RST_38                                    ; $5E35: $FF
    rst RST_38                                    ; $5E36: $FF
    rst RST_38                                    ; $5E37: $FF
    rst RST_38                                    ; $5E38: $FF
    rst RST_38                                    ; $5E39: $FF
    rst RST_38                                    ; $5E3A: $FF
    rst RST_38                                    ; $5E3B: $FF
    rst RST_38                                    ; $5E3C: $FF
    rst RST_38                                    ; $5E3D: $FF
    rst RST_38                                    ; $5E3E: $FF
    rst RST_38                                    ; $5E3F: $FF
    rst RST_38                                    ; $5E40: $FF
    rst RST_38                                    ; $5E41: $FF
    rst RST_38                                    ; $5E42: $FF
    rst RST_38                                    ; $5E43: $FF
    rst RST_38                                    ; $5E44: $FF
    rst RST_38                                    ; $5E45: $FF
    rst RST_38                                    ; $5E46: $FF
    rst RST_38                                    ; $5E47: $FF
    rst RST_38                                    ; $5E48: $FF
    rst RST_38                                    ; $5E49: $FF
    rst RST_38                                    ; $5E4A: $FF
    rst RST_38                                    ; $5E4B: $FF
    rst RST_38                                    ; $5E4C: $FF
    rst RST_38                                    ; $5E4D: $FF
    rst RST_38                                    ; $5E4E: $FF
    rst RST_38                                    ; $5E4F: $FF
    rst RST_38                                    ; $5E50: $FF
    rst RST_38                                    ; $5E51: $FF
    rst RST_38                                    ; $5E52: $FF
    rst RST_38                                    ; $5E53: $FF
    rst RST_38                                    ; $5E54: $FF
    rst RST_38                                    ; $5E55: $FF
    rst RST_38                                    ; $5E56: $FF
    rst RST_38                                    ; $5E57: $FF
    rst RST_38                                    ; $5E58: $FF
    rst RST_38                                    ; $5E59: $FF
    rst RST_38                                    ; $5E5A: $FF
    rst RST_38                                    ; $5E5B: $FF
    rst RST_38                                    ; $5E5C: $FF
    rst RST_38                                    ; $5E5D: $FF
    rst RST_38                                    ; $5E5E: $FF
    rst RST_38                                    ; $5E5F: $FF
    rst RST_38                                    ; $5E60: $FF
    rst RST_38                                    ; $5E61: $FF
    rst RST_38                                    ; $5E62: $FF
    rst RST_38                                    ; $5E63: $FF
    rst RST_38                                    ; $5E64: $FF
    rst RST_38                                    ; $5E65: $FF
    rst RST_38                                    ; $5E66: $FF
    rst RST_38                                    ; $5E67: $FF
    rst RST_38                                    ; $5E68: $FF
    rst RST_38                                    ; $5E69: $FF
    rst RST_38                                    ; $5E6A: $FF
    rst RST_38                                    ; $5E6B: $FF
    rst RST_38                                    ; $5E6C: $FF
    rst RST_38                                    ; $5E6D: $FF
    rst RST_38                                    ; $5E6E: $FF
    rst RST_38                                    ; $5E6F: $FF
    rst RST_38                                    ; $5E70: $FF
    rst RST_38                                    ; $5E71: $FF
    rst RST_38                                    ; $5E72: $FF
    rst RST_38                                    ; $5E73: $FF
    rst RST_38                                    ; $5E74: $FF
    rst RST_38                                    ; $5E75: $FF
    rst RST_38                                    ; $5E76: $FF
    rst RST_38                                    ; $5E77: $FF
    rst RST_38                                    ; $5E78: $FF
    rst RST_38                                    ; $5E79: $FF
    rst RST_38                                    ; $5E7A: $FF
    rst RST_38                                    ; $5E7B: $FF
    rst RST_38                                    ; $5E7C: $FF
    rst RST_38                                    ; $5E7D: $FF
    rst RST_38                                    ; $5E7E: $FF
    rst RST_38                                    ; $5E7F: $FF
    rst RST_38                                    ; $5E80: $FF
    rst RST_38                                    ; $5E81: $FF
    rst RST_38                                    ; $5E82: $FF
    rst RST_38                                    ; $5E83: $FF
    rst RST_38                                    ; $5E84: $FF
    rst RST_38                                    ; $5E85: $FF
    rst RST_38                                    ; $5E86: $FF
    rst RST_38                                    ; $5E87: $FF
    rst RST_38                                    ; $5E88: $FF
    rst RST_38                                    ; $5E89: $FF
    rst RST_38                                    ; $5E8A: $FF
    rst RST_38                                    ; $5E8B: $FF
    rst RST_38                                    ; $5E8C: $FF
    rst RST_38                                    ; $5E8D: $FF
    rst RST_38                                    ; $5E8E: $FF
    rst RST_38                                    ; $5E8F: $FF
    rst RST_38                                    ; $5E90: $FF
    rst RST_38                                    ; $5E91: $FF
    rst RST_38                                    ; $5E92: $FF
    rst RST_38                                    ; $5E93: $FF
    rst RST_38                                    ; $5E94: $FF
    rst RST_38                                    ; $5E95: $FF
    rst RST_38                                    ; $5E96: $FF
    rst RST_38                                    ; $5E97: $FF
    rst RST_38                                    ; $5E98: $FF
    rst RST_38                                    ; $5E99: $FF
    rst RST_38                                    ; $5E9A: $FF
    rst RST_38                                    ; $5E9B: $FF
    rst RST_38                                    ; $5E9C: $FF
    rst RST_38                                    ; $5E9D: $FF
    rst RST_38                                    ; $5E9E: $FF
    rst RST_38                                    ; $5E9F: $FF
    rst RST_38                                    ; $5EA0: $FF
    rst RST_38                                    ; $5EA1: $FF
    rst RST_38                                    ; $5EA2: $FF
    rst RST_38                                    ; $5EA3: $FF
    rst RST_38                                    ; $5EA4: $FF
    rst RST_38                                    ; $5EA5: $FF
    rst RST_38                                    ; $5EA6: $FF
    rst RST_38                                    ; $5EA7: $FF
    rst RST_38                                    ; $5EA8: $FF
    rst RST_38                                    ; $5EA9: $FF
    rst RST_38                                    ; $5EAA: $FF
    rst RST_38                                    ; $5EAB: $FF
    rst RST_38                                    ; $5EAC: $FF
    rst RST_38                                    ; $5EAD: $FF
    rst RST_38                                    ; $5EAE: $FF
    rst RST_38                                    ; $5EAF: $FF
    rst RST_38                                    ; $5EB0: $FF
    rst RST_38                                    ; $5EB1: $FF
    rst RST_38                                    ; $5EB2: $FF
    rst RST_38                                    ; $5EB3: $FF
    rst RST_38                                    ; $5EB4: $FF
    rst RST_38                                    ; $5EB5: $FF
    rst RST_38                                    ; $5EB6: $FF
    rst RST_38                                    ; $5EB7: $FF
    rst RST_38                                    ; $5EB8: $FF
    rst RST_38                                    ; $5EB9: $FF
    rst RST_38                                    ; $5EBA: $FF
    rst RST_38                                    ; $5EBB: $FF
    rst RST_38                                    ; $5EBC: $FF
    rst RST_38                                    ; $5EBD: $FF
    rst RST_38                                    ; $5EBE: $FF
    rst RST_38                                    ; $5EBF: $FF
    rst RST_38                                    ; $5EC0: $FF
    rst RST_38                                    ; $5EC1: $FF
    rst RST_38                                    ; $5EC2: $FF
    rst RST_38                                    ; $5EC3: $FF
    rst RST_38                                    ; $5EC4: $FF
    rst RST_38                                    ; $5EC5: $FF
    rst RST_38                                    ; $5EC6: $FF
    rst RST_38                                    ; $5EC7: $FF
    rst RST_38                                    ; $5EC8: $FF
    rst RST_38                                    ; $5EC9: $FF
    rst RST_38                                    ; $5ECA: $FF
    rst RST_38                                    ; $5ECB: $FF
    rst RST_38                                    ; $5ECC: $FF
    rst RST_38                                    ; $5ECD: $FF
    rst RST_38                                    ; $5ECE: $FF
    rst RST_38                                    ; $5ECF: $FF
    rst RST_38                                    ; $5ED0: $FF
    rst RST_38                                    ; $5ED1: $FF
    rst RST_38                                    ; $5ED2: $FF
    rst RST_38                                    ; $5ED3: $FF
    rst RST_38                                    ; $5ED4: $FF
    rst RST_38                                    ; $5ED5: $FF
    rst RST_38                                    ; $5ED6: $FF
    rst RST_38                                    ; $5ED7: $FF
    rst RST_38                                    ; $5ED8: $FF
    rst RST_38                                    ; $5ED9: $FF
    rst RST_38                                    ; $5EDA: $FF
    rst RST_38                                    ; $5EDB: $FF
    rst RST_38                                    ; $5EDC: $FF
    rst RST_38                                    ; $5EDD: $FF
    rst RST_38                                    ; $5EDE: $FF
    rst RST_38                                    ; $5EDF: $FF
    rst RST_38                                    ; $5EE0: $FF
    rst RST_38                                    ; $5EE1: $FF
    rst RST_38                                    ; $5EE2: $FF
    rst RST_38                                    ; $5EE3: $FF
    rst RST_38                                    ; $5EE4: $FF
    rst RST_38                                    ; $5EE5: $FF
    rst RST_38                                    ; $5EE6: $FF
    rst RST_38                                    ; $5EE7: $FF
    rst RST_38                                    ; $5EE8: $FF
    rst RST_38                                    ; $5EE9: $FF
    rst RST_38                                    ; $5EEA: $FF
    rst RST_38                                    ; $5EEB: $FF
    rst RST_38                                    ; $5EEC: $FF
    rst RST_38                                    ; $5EED: $FF
    rst RST_38                                    ; $5EEE: $FF
    rst RST_38                                    ; $5EEF: $FF
    rst RST_38                                    ; $5EF0: $FF
    rst RST_38                                    ; $5EF1: $FF
    rst RST_38                                    ; $5EF2: $FF
    rst RST_38                                    ; $5EF3: $FF
    rst RST_38                                    ; $5EF4: $FF
    rst RST_38                                    ; $5EF5: $FF
    rst RST_38                                    ; $5EF6: $FF
    rst RST_38                                    ; $5EF7: $FF
    rst RST_38                                    ; $5EF8: $FF
    rst RST_38                                    ; $5EF9: $FF
    rst RST_38                                    ; $5EFA: $FF
    rst RST_38                                    ; $5EFB: $FF
    rst RST_38                                    ; $5EFC: $FF
    rst RST_38                                    ; $5EFD: $FF
    rst RST_38                                    ; $5EFE: $FF
    rst RST_38                                    ; $5EFF: $FF
    rst RST_38                                    ; $5F00: $FF
    rst RST_38                                    ; $5F01: $FF
    rst RST_38                                    ; $5F02: $FF
    rst RST_38                                    ; $5F03: $FF
    rst RST_38                                    ; $5F04: $FF
    rst RST_38                                    ; $5F05: $FF
    rst RST_38                                    ; $5F06: $FF
    rst RST_38                                    ; $5F07: $FF
    rst RST_38                                    ; $5F08: $FF
    rst RST_38                                    ; $5F09: $FF
    rst RST_38                                    ; $5F0A: $FF
    rst RST_38                                    ; $5F0B: $FF
    rst RST_38                                    ; $5F0C: $FF
    rst RST_38                                    ; $5F0D: $FF
    rst RST_38                                    ; $5F0E: $FF
    rst RST_38                                    ; $5F0F: $FF
    rst RST_38                                    ; $5F10: $FF
    rst RST_38                                    ; $5F11: $FF
    rst RST_38                                    ; $5F12: $FF
    rst RST_38                                    ; $5F13: $FF
    rst RST_38                                    ; $5F14: $FF
    rst RST_38                                    ; $5F15: $FF
    rst RST_38                                    ; $5F16: $FF
    rst RST_38                                    ; $5F17: $FF
    rst RST_38                                    ; $5F18: $FF
    rst RST_38                                    ; $5F19: $FF
    rst RST_38                                    ; $5F1A: $FF
    rst RST_38                                    ; $5F1B: $FF
    rst RST_38                                    ; $5F1C: $FF
    rst RST_38                                    ; $5F1D: $FF
    rst RST_38                                    ; $5F1E: $FF
    rst RST_38                                    ; $5F1F: $FF
    rst RST_38                                    ; $5F20: $FF
    rst RST_38                                    ; $5F21: $FF
    rst RST_38                                    ; $5F22: $FF
    rst RST_38                                    ; $5F23: $FF
    rst RST_38                                    ; $5F24: $FF
    rst RST_38                                    ; $5F25: $FF
    rst RST_38                                    ; $5F26: $FF
    rst RST_38                                    ; $5F27: $FF
    rst RST_38                                    ; $5F28: $FF
    rst RST_38                                    ; $5F29: $FF
    rst RST_38                                    ; $5F2A: $FF
    rst RST_38                                    ; $5F2B: $FF
    rst RST_38                                    ; $5F2C: $FF
    rst RST_38                                    ; $5F2D: $FF
    rst RST_38                                    ; $5F2E: $FF
    rst RST_38                                    ; $5F2F: $FF
    rst RST_38                                    ; $5F30: $FF
    rst RST_38                                    ; $5F31: $FF
    rst RST_38                                    ; $5F32: $FF
    rst RST_38                                    ; $5F33: $FF
    rst RST_38                                    ; $5F34: $FF
    rst RST_38                                    ; $5F35: $FF
    rst RST_38                                    ; $5F36: $FF
    rst RST_38                                    ; $5F37: $FF
    rst RST_38                                    ; $5F38: $FF
    rst RST_38                                    ; $5F39: $FF
    rst RST_38                                    ; $5F3A: $FF
    rst RST_38                                    ; $5F3B: $FF
    rst RST_38                                    ; $5F3C: $FF
    rst RST_38                                    ; $5F3D: $FF
    rst RST_38                                    ; $5F3E: $FF
    rst RST_38                                    ; $5F3F: $FF
    rst RST_38                                    ; $5F40: $FF
    rst RST_38                                    ; $5F41: $FF
    rst RST_38                                    ; $5F42: $FF
    rst RST_38                                    ; $5F43: $FF
    rst RST_38                                    ; $5F44: $FF
    rst RST_38                                    ; $5F45: $FF
    rst RST_38                                    ; $5F46: $FF
    rst RST_38                                    ; $5F47: $FF
    rst RST_38                                    ; $5F48: $FF
    rst RST_38                                    ; $5F49: $FF
    rst RST_38                                    ; $5F4A: $FF
    rst RST_38                                    ; $5F4B: $FF
    rst RST_38                                    ; $5F4C: $FF
    rst RST_38                                    ; $5F4D: $FF
    rst RST_38                                    ; $5F4E: $FF
    rst RST_38                                    ; $5F4F: $FF
    rst RST_38                                    ; $5F50: $FF
    rst RST_38                                    ; $5F51: $FF
    rst RST_38                                    ; $5F52: $FF
    rst RST_38                                    ; $5F53: $FF
    rst RST_38                                    ; $5F54: $FF
    rst RST_38                                    ; $5F55: $FF
    rst RST_38                                    ; $5F56: $FF
    rst RST_38                                    ; $5F57: $FF
    rst RST_38                                    ; $5F58: $FF
    rst RST_38                                    ; $5F59: $FF
    rst RST_38                                    ; $5F5A: $FF
    rst RST_38                                    ; $5F5B: $FF
    rst RST_38                                    ; $5F5C: $FF
    rst RST_38                                    ; $5F5D: $FF
    rst RST_38                                    ; $5F5E: $FF
    rst RST_38                                    ; $5F5F: $FF
    rst RST_38                                    ; $5F60: $FF
    rst RST_38                                    ; $5F61: $FF
    rst RST_38                                    ; $5F62: $FF
    rst RST_38                                    ; $5F63: $FF
    rst RST_38                                    ; $5F64: $FF
    rst RST_38                                    ; $5F65: $FF
    rst RST_38                                    ; $5F66: $FF
    rst RST_38                                    ; $5F67: $FF
    rst RST_38                                    ; $5F68: $FF
    rst RST_38                                    ; $5F69: $FF
    rst RST_38                                    ; $5F6A: $FF
    rst RST_38                                    ; $5F6B: $FF
    rst RST_38                                    ; $5F6C: $FF
    rst RST_38                                    ; $5F6D: $FF
    rst RST_38                                    ; $5F6E: $FF
    rst RST_38                                    ; $5F6F: $FF
    rst RST_38                                    ; $5F70: $FF
    rst RST_38                                    ; $5F71: $FF
    rst RST_38                                    ; $5F72: $FF
    rst RST_38                                    ; $5F73: $FF
    rst RST_38                                    ; $5F74: $FF
    rst RST_38                                    ; $5F75: $FF
    rst RST_38                                    ; $5F76: $FF
    rst RST_38                                    ; $5F77: $FF
    rst RST_38                                    ; $5F78: $FF
    rst RST_38                                    ; $5F79: $FF
    rst RST_38                                    ; $5F7A: $FF
    rst RST_38                                    ; $5F7B: $FF
    rst RST_38                                    ; $5F7C: $FF
    rst RST_38                                    ; $5F7D: $FF
    rst RST_38                                    ; $5F7E: $FF
    rst RST_38                                    ; $5F7F: $FF
    rst RST_38                                    ; $5F80: $FF
    rst RST_38                                    ; $5F81: $FF
    rst RST_38                                    ; $5F82: $FF
    rst RST_38                                    ; $5F83: $FF
    rst RST_38                                    ; $5F84: $FF
    rst RST_38                                    ; $5F85: $FF
    rst RST_38                                    ; $5F86: $FF
    rst RST_38                                    ; $5F87: $FF
    rst RST_38                                    ; $5F88: $FF
    rst RST_38                                    ; $5F89: $FF
    rst RST_38                                    ; $5F8A: $FF
    rst RST_38                                    ; $5F8B: $FF
    rst RST_38                                    ; $5F8C: $FF
    rst RST_38                                    ; $5F8D: $FF
    rst RST_38                                    ; $5F8E: $FF
    rst RST_38                                    ; $5F8F: $FF
    rst RST_38                                    ; $5F90: $FF
    rst RST_38                                    ; $5F91: $FF
    rst RST_38                                    ; $5F92: $FF
    rst RST_38                                    ; $5F93: $FF
    rst RST_38                                    ; $5F94: $FF
    rst RST_38                                    ; $5F95: $FF
    rst RST_38                                    ; $5F96: $FF
    rst RST_38                                    ; $5F97: $FF
    rst RST_38                                    ; $5F98: $FF
    rst RST_38                                    ; $5F99: $FF
    rst RST_38                                    ; $5F9A: $FF
    rst RST_38                                    ; $5F9B: $FF
    rst RST_38                                    ; $5F9C: $FF
    rst RST_38                                    ; $5F9D: $FF
    rst RST_38                                    ; $5F9E: $FF
    rst RST_38                                    ; $5F9F: $FF
    rst RST_38                                    ; $5FA0: $FF
    rst RST_38                                    ; $5FA1: $FF
    rst RST_38                                    ; $5FA2: $FF
    rst RST_38                                    ; $5FA3: $FF
    rst RST_38                                    ; $5FA4: $FF
    rst RST_38                                    ; $5FA5: $FF
    rst RST_38                                    ; $5FA6: $FF
    rst RST_38                                    ; $5FA7: $FF
    rst RST_38                                    ; $5FA8: $FF
    rst RST_38                                    ; $5FA9: $FF
    rst RST_38                                    ; $5FAA: $FF
    rst RST_38                                    ; $5FAB: $FF
    rst RST_38                                    ; $5FAC: $FF
    rst RST_38                                    ; $5FAD: $FF
    rst RST_38                                    ; $5FAE: $FF
    rst RST_38                                    ; $5FAF: $FF
    rst RST_38                                    ; $5FB0: $FF
    rst RST_38                                    ; $5FB1: $FF
    rst RST_38                                    ; $5FB2: $FF
    rst RST_38                                    ; $5FB3: $FF
    rst RST_38                                    ; $5FB4: $FF
    rst RST_38                                    ; $5FB5: $FF
    rst RST_38                                    ; $5FB6: $FF
    rst RST_38                                    ; $5FB7: $FF
    rst RST_38                                    ; $5FB8: $FF
    rst RST_38                                    ; $5FB9: $FF
    rst RST_38                                    ; $5FBA: $FF
    rst RST_38                                    ; $5FBB: $FF
    rst RST_38                                    ; $5FBC: $FF
    rst RST_38                                    ; $5FBD: $FF
    rst RST_38                                    ; $5FBE: $FF
    rst RST_38                                    ; $5FBF: $FF
    rst RST_38                                    ; $5FC0: $FF
    rst RST_38                                    ; $5FC1: $FF
    rst RST_38                                    ; $5FC2: $FF
    rst RST_38                                    ; $5FC3: $FF
    rst RST_38                                    ; $5FC4: $FF
    rst RST_38                                    ; $5FC5: $FF
    rst RST_38                                    ; $5FC6: $FF
    rst RST_38                                    ; $5FC7: $FF
    rst RST_38                                    ; $5FC8: $FF
    rst RST_38                                    ; $5FC9: $FF
    rst RST_38                                    ; $5FCA: $FF
    rst RST_38                                    ; $5FCB: $FF
    rst RST_38                                    ; $5FCC: $FF
    rst RST_38                                    ; $5FCD: $FF
    rst RST_38                                    ; $5FCE: $FF
    rst RST_38                                    ; $5FCF: $FF
    rst RST_38                                    ; $5FD0: $FF
    rst RST_38                                    ; $5FD1: $FF
    rst RST_38                                    ; $5FD2: $FF
    rst RST_38                                    ; $5FD3: $FF
    rst RST_38                                    ; $5FD4: $FF
    rst RST_38                                    ; $5FD5: $FF
    rst RST_38                                    ; $5FD6: $FF
    rst RST_38                                    ; $5FD7: $FF
    rst RST_38                                    ; $5FD8: $FF
    rst RST_38                                    ; $5FD9: $FF
    rst RST_38                                    ; $5FDA: $FF
    rst RST_38                                    ; $5FDB: $FF
    rst RST_38                                    ; $5FDC: $FF
    rst RST_38                                    ; $5FDD: $FF
    rst RST_38                                    ; $5FDE: $FF
    rst RST_38                                    ; $5FDF: $FF
    rst RST_38                                    ; $5FE0: $FF
    rst RST_38                                    ; $5FE1: $FF
    rst RST_38                                    ; $5FE2: $FF
    rst RST_38                                    ; $5FE3: $FF
    rst RST_38                                    ; $5FE4: $FF
    rst RST_38                                    ; $5FE5: $FF
    rst RST_38                                    ; $5FE6: $FF
    rst RST_38                                    ; $5FE7: $FF
    rst RST_38                                    ; $5FE8: $FF
    rst RST_38                                    ; $5FE9: $FF
    rst RST_38                                    ; $5FEA: $FF
    rst RST_38                                    ; $5FEB: $FF
    rst RST_38                                    ; $5FEC: $FF
    rst RST_38                                    ; $5FED: $FF
    rst RST_38                                    ; $5FEE: $FF
    rst RST_38                                    ; $5FEF: $FF
    rst RST_38                                    ; $5FF0: $FF
    rst RST_38                                    ; $5FF1: $FF
    rst RST_38                                    ; $5FF2: $FF
    rst RST_38                                    ; $5FF3: $FF
    rst RST_38                                    ; $5FF4: $FF
    rst RST_38                                    ; $5FF5: $FF
    rst RST_38                                    ; $5FF6: $FF
    rst RST_38                                    ; $5FF7: $FF
    rst RST_38                                    ; $5FF8: $FF
    rst RST_38                                    ; $5FF9: $FF
    rst RST_38                                    ; $5FFA: $FF
    rst RST_38                                    ; $5FFB: $FF
    rst RST_38                                    ; $5FFC: $FF
    rst RST_38                                    ; $5FFD: $FF
    rst RST_38                                    ; $5FFE: $FF
    rst RST_38                                    ; $5FFF: $FF
    rst RST_38                                    ; $6000: $FF
    rst RST_38                                    ; $6001: $FF
    rst RST_38                                    ; $6002: $FF
    rst RST_38                                    ; $6003: $FF
    rst RST_38                                    ; $6004: $FF
    rst RST_38                                    ; $6005: $FF
    rst RST_38                                    ; $6006: $FF
    rst RST_38                                    ; $6007: $FF
    rst RST_38                                    ; $6008: $FF
    rst RST_38                                    ; $6009: $FF
    rst RST_38                                    ; $600A: $FF
    rst RST_38                                    ; $600B: $FF
    rst RST_38                                    ; $600C: $FF
    rst RST_38                                    ; $600D: $FF
    rst RST_38                                    ; $600E: $FF
    rst RST_38                                    ; $600F: $FF
    rst RST_38                                    ; $6010: $FF
    rst RST_38                                    ; $6011: $FF
    rst RST_38                                    ; $6012: $FF
    rst RST_38                                    ; $6013: $FF
    rst RST_38                                    ; $6014: $FF
    rst RST_38                                    ; $6015: $FF
    rst RST_38                                    ; $6016: $FF
    rst RST_38                                    ; $6017: $FF
    rst RST_38                                    ; $6018: $FF
    rst RST_38                                    ; $6019: $FF
    rst RST_38                                    ; $601A: $FF
    rst RST_38                                    ; $601B: $FF
    rst RST_38                                    ; $601C: $FF
    rst RST_38                                    ; $601D: $FF
    rst RST_38                                    ; $601E: $FF
    rst RST_38                                    ; $601F: $FF
    rst RST_38                                    ; $6020: $FF
    rst RST_38                                    ; $6021: $FF
    rst RST_38                                    ; $6022: $FF
    rst RST_38                                    ; $6023: $FF
    rst RST_38                                    ; $6024: $FF
    rst RST_38                                    ; $6025: $FF
    rst RST_38                                    ; $6026: $FF
    rst RST_38                                    ; $6027: $FF
    rst RST_38                                    ; $6028: $FF
    rst RST_38                                    ; $6029: $FF
    rst RST_38                                    ; $602A: $FF
    rst RST_38                                    ; $602B: $FF
    rst RST_38                                    ; $602C: $FF
    rst RST_38                                    ; $602D: $FF
    rst RST_38                                    ; $602E: $FF
    rst RST_38                                    ; $602F: $FF
    rst RST_38                                    ; $6030: $FF
    rst RST_38                                    ; $6031: $FF
    rst RST_38                                    ; $6032: $FF
    rst RST_38                                    ; $6033: $FF
    rst RST_38                                    ; $6034: $FF
    rst RST_38                                    ; $6035: $FF
    rst RST_38                                    ; $6036: $FF
    rst RST_38                                    ; $6037: $FF
    rst RST_38                                    ; $6038: $FF
    rst RST_38                                    ; $6039: $FF
    rst RST_38                                    ; $603A: $FF
    rst RST_38                                    ; $603B: $FF
    rst RST_38                                    ; $603C: $FF
    rst RST_38                                    ; $603D: $FF
    rst RST_38                                    ; $603E: $FF
    rst RST_38                                    ; $603F: $FF
    rst RST_38                                    ; $6040: $FF
    rst RST_38                                    ; $6041: $FF
    rst RST_38                                    ; $6042: $FF
    rst RST_38                                    ; $6043: $FF
    rst RST_38                                    ; $6044: $FF
    rst RST_38                                    ; $6045: $FF
    rst RST_38                                    ; $6046: $FF
    rst RST_38                                    ; $6047: $FF
    rst RST_38                                    ; $6048: $FF
    rst RST_38                                    ; $6049: $FF
    rst RST_38                                    ; $604A: $FF
    rst RST_38                                    ; $604B: $FF
    rst RST_38                                    ; $604C: $FF
    rst RST_38                                    ; $604D: $FF
    rst RST_38                                    ; $604E: $FF
    rst RST_38                                    ; $604F: $FF
    rst RST_38                                    ; $6050: $FF
    rst RST_38                                    ; $6051: $FF
    rst RST_38                                    ; $6052: $FF
    rst RST_38                                    ; $6053: $FF
    rst RST_38                                    ; $6054: $FF
    rst RST_38                                    ; $6055: $FF
    rst RST_38                                    ; $6056: $FF
    rst RST_38                                    ; $6057: $FF
    rst RST_38                                    ; $6058: $FF
    rst RST_38                                    ; $6059: $FF
    rst RST_38                                    ; $605A: $FF
    rst RST_38                                    ; $605B: $FF
    rst RST_38                                    ; $605C: $FF
    rst RST_38                                    ; $605D: $FF
    rst RST_38                                    ; $605E: $FF
    rst RST_38                                    ; $605F: $FF
    rst RST_38                                    ; $6060: $FF
    rst RST_38                                    ; $6061: $FF
    rst RST_38                                    ; $6062: $FF
    rst RST_38                                    ; $6063: $FF
    rst RST_38                                    ; $6064: $FF
    rst RST_38                                    ; $6065: $FF
    rst RST_38                                    ; $6066: $FF
    rst RST_38                                    ; $6067: $FF
    rst RST_38                                    ; $6068: $FF
    rst RST_38                                    ; $6069: $FF
    rst RST_38                                    ; $606A: $FF
    rst RST_38                                    ; $606B: $FF
    rst RST_38                                    ; $606C: $FF
    rst RST_38                                    ; $606D: $FF
    rst RST_38                                    ; $606E: $FF
    rst RST_38                                    ; $606F: $FF
    rst RST_38                                    ; $6070: $FF
    rst RST_38                                    ; $6071: $FF
    rst RST_38                                    ; $6072: $FF
    rst RST_38                                    ; $6073: $FF
    rst RST_38                                    ; $6074: $FF
    rst RST_38                                    ; $6075: $FF
    rst RST_38                                    ; $6076: $FF
    rst RST_38                                    ; $6077: $FF
    rst RST_38                                    ; $6078: $FF
    rst RST_38                                    ; $6079: $FF
    rst RST_38                                    ; $607A: $FF
    rst RST_38                                    ; $607B: $FF
    rst RST_38                                    ; $607C: $FF
    rst RST_38                                    ; $607D: $FF
    rst RST_38                                    ; $607E: $FF
    rst RST_38                                    ; $607F: $FF
    rst RST_38                                    ; $6080: $FF
    rst RST_38                                    ; $6081: $FF
    rst RST_38                                    ; $6082: $FF
    rst RST_38                                    ; $6083: $FF
    rst RST_38                                    ; $6084: $FF
    rst RST_38                                    ; $6085: $FF
    rst RST_38                                    ; $6086: $FF
    rst RST_38                                    ; $6087: $FF
    rst RST_38                                    ; $6088: $FF
    rst RST_38                                    ; $6089: $FF
    rst RST_38                                    ; $608A: $FF
    rst RST_38                                    ; $608B: $FF
    rst RST_38                                    ; $608C: $FF
    rst RST_38                                    ; $608D: $FF
    rst RST_38                                    ; $608E: $FF
    rst RST_38                                    ; $608F: $FF
    rst RST_38                                    ; $6090: $FF
    rst RST_38                                    ; $6091: $FF
    rst RST_38                                    ; $6092: $FF
    rst RST_38                                    ; $6093: $FF
    rst RST_38                                    ; $6094: $FF
    rst RST_38                                    ; $6095: $FF
    rst RST_38                                    ; $6096: $FF
    rst RST_38                                    ; $6097: $FF
    rst RST_38                                    ; $6098: $FF
    rst RST_38                                    ; $6099: $FF
    rst RST_38                                    ; $609A: $FF
    rst RST_38                                    ; $609B: $FF
    rst RST_38                                    ; $609C: $FF
    rst RST_38                                    ; $609D: $FF
    rst RST_38                                    ; $609E: $FF
    rst RST_38                                    ; $609F: $FF
    rst RST_38                                    ; $60A0: $FF
    rst RST_38                                    ; $60A1: $FF
    rst RST_38                                    ; $60A2: $FF
    rst RST_38                                    ; $60A3: $FF
    rst RST_38                                    ; $60A4: $FF
    rst RST_38                                    ; $60A5: $FF
    rst RST_38                                    ; $60A6: $FF
    rst RST_38                                    ; $60A7: $FF
    rst RST_38                                    ; $60A8: $FF
    rst RST_38                                    ; $60A9: $FF
    rst RST_38                                    ; $60AA: $FF
    rst RST_38                                    ; $60AB: $FF
    rst RST_38                                    ; $60AC: $FF
    rst RST_38                                    ; $60AD: $FF
    rst RST_38                                    ; $60AE: $FF
    rst RST_38                                    ; $60AF: $FF
    rst RST_38                                    ; $60B0: $FF
    rst RST_38                                    ; $60B1: $FF
    rst RST_38                                    ; $60B2: $FF
    rst RST_38                                    ; $60B3: $FF
    rst RST_38                                    ; $60B4: $FF
    rst RST_38                                    ; $60B5: $FF
    rst RST_38                                    ; $60B6: $FF
    rst RST_38                                    ; $60B7: $FF
    rst RST_38                                    ; $60B8: $FF
    rst RST_38                                    ; $60B9: $FF
    rst RST_38                                    ; $60BA: $FF
    rst RST_38                                    ; $60BB: $FF
    rst RST_38                                    ; $60BC: $FF
    rst RST_38                                    ; $60BD: $FF
    rst RST_38                                    ; $60BE: $FF
    rst RST_38                                    ; $60BF: $FF
    rst RST_38                                    ; $60C0: $FF
    rst RST_38                                    ; $60C1: $FF
    rst RST_38                                    ; $60C2: $FF
    rst RST_38                                    ; $60C3: $FF
    rst RST_38                                    ; $60C4: $FF
    rst RST_38                                    ; $60C5: $FF
    rst RST_38                                    ; $60C6: $FF
    rst RST_38                                    ; $60C7: $FF
    rst RST_38                                    ; $60C8: $FF
    rst RST_38                                    ; $60C9: $FF
    rst RST_38                                    ; $60CA: $FF
    rst RST_38                                    ; $60CB: $FF
    rst RST_38                                    ; $60CC: $FF
    rst RST_38                                    ; $60CD: $FF
    rst RST_38                                    ; $60CE: $FF
    rst RST_38                                    ; $60CF: $FF
    rst RST_38                                    ; $60D0: $FF
    rst RST_38                                    ; $60D1: $FF
    rst RST_38                                    ; $60D2: $FF
    rst RST_38                                    ; $60D3: $FF
    rst RST_38                                    ; $60D4: $FF
    rst RST_38                                    ; $60D5: $FF
    rst RST_38                                    ; $60D6: $FF
    rst RST_38                                    ; $60D7: $FF
    rst RST_38                                    ; $60D8: $FF
    rst RST_38                                    ; $60D9: $FF
    rst RST_38                                    ; $60DA: $FF
    rst RST_38                                    ; $60DB: $FF
    rst RST_38                                    ; $60DC: $FF
    rst RST_38                                    ; $60DD: $FF
    rst RST_38                                    ; $60DE: $FF
    rst RST_38                                    ; $60DF: $FF
    rst RST_38                                    ; $60E0: $FF
    rst RST_38                                    ; $60E1: $FF
    rst RST_38                                    ; $60E2: $FF
    rst RST_38                                    ; $60E3: $FF
    rst RST_38                                    ; $60E4: $FF
    rst RST_38                                    ; $60E5: $FF
    rst RST_38                                    ; $60E6: $FF
    rst RST_38                                    ; $60E7: $FF
    rst RST_38                                    ; $60E8: $FF
    rst RST_38                                    ; $60E9: $FF
    rst RST_38                                    ; $60EA: $FF
    rst RST_38                                    ; $60EB: $FF
    rst RST_38                                    ; $60EC: $FF
    rst RST_38                                    ; $60ED: $FF
    rst RST_38                                    ; $60EE: $FF
    rst RST_38                                    ; $60EF: $FF
    rst RST_38                                    ; $60F0: $FF
    rst RST_38                                    ; $60F1: $FF
    rst RST_38                                    ; $60F2: $FF
    rst RST_38                                    ; $60F3: $FF
    rst RST_38                                    ; $60F4: $FF
    rst RST_38                                    ; $60F5: $FF
    rst RST_38                                    ; $60F6: $FF
    rst RST_38                                    ; $60F7: $FF
    rst RST_38                                    ; $60F8: $FF
    rst RST_38                                    ; $60F9: $FF
    rst RST_38                                    ; $60FA: $FF
    rst RST_38                                    ; $60FB: $FF
    rst RST_38                                    ; $60FC: $FF
    rst RST_38                                    ; $60FD: $FF
    rst RST_38                                    ; $60FE: $FF
    rst RST_38                                    ; $60FF: $FF
    rst RST_38                                    ; $6100: $FF
    rst RST_38                                    ; $6101: $FF
    rst RST_38                                    ; $6102: $FF
    rst RST_38                                    ; $6103: $FF
    rst RST_38                                    ; $6104: $FF
    rst RST_38                                    ; $6105: $FF
    rst RST_38                                    ; $6106: $FF
    rst RST_38                                    ; $6107: $FF
    rst RST_38                                    ; $6108: $FF
    rst RST_38                                    ; $6109: $FF
    rst RST_38                                    ; $610A: $FF
    rst RST_38                                    ; $610B: $FF
    rst RST_38                                    ; $610C: $FF
    rst RST_38                                    ; $610D: $FF
    rst RST_38                                    ; $610E: $FF
    rst RST_38                                    ; $610F: $FF
    rst RST_38                                    ; $6110: $FF
    rst RST_38                                    ; $6111: $FF
    rst RST_38                                    ; $6112: $FF
    rst RST_38                                    ; $6113: $FF
    rst RST_38                                    ; $6114: $FF
    rst RST_38                                    ; $6115: $FF
    rst RST_38                                    ; $6116: $FF
    rst RST_38                                    ; $6117: $FF
    rst RST_38                                    ; $6118: $FF
    rst RST_38                                    ; $6119: $FF
    rst RST_38                                    ; $611A: $FF
    rst RST_38                                    ; $611B: $FF
    rst RST_38                                    ; $611C: $FF
    rst RST_38                                    ; $611D: $FF
    rst RST_38                                    ; $611E: $FF
    rst RST_38                                    ; $611F: $FF
    rst RST_38                                    ; $6120: $FF
    rst RST_38                                    ; $6121: $FF
    rst RST_38                                    ; $6122: $FF
    rst RST_38                                    ; $6123: $FF
    rst RST_38                                    ; $6124: $FF
    rst RST_38                                    ; $6125: $FF
    rst RST_38                                    ; $6126: $FF
    rst RST_38                                    ; $6127: $FF
    rst RST_38                                    ; $6128: $FF
    rst RST_38                                    ; $6129: $FF
    rst RST_38                                    ; $612A: $FF
    rst RST_38                                    ; $612B: $FF
    rst RST_38                                    ; $612C: $FF
    rst RST_38                                    ; $612D: $FF
    rst RST_38                                    ; $612E: $FF
    rst RST_38                                    ; $612F: $FF
    rst RST_38                                    ; $6130: $FF
    rst RST_38                                    ; $6131: $FF
    rst RST_38                                    ; $6132: $FF
    rst RST_38                                    ; $6133: $FF
    rst RST_38                                    ; $6134: $FF
    rst RST_38                                    ; $6135: $FF
    rst RST_38                                    ; $6136: $FF
    rst RST_38                                    ; $6137: $FF
    rst RST_38                                    ; $6138: $FF
    rst RST_38                                    ; $6139: $FF
    rst RST_38                                    ; $613A: $FF
    rst RST_38                                    ; $613B: $FF
    rst RST_38                                    ; $613C: $FF
    rst RST_38                                    ; $613D: $FF
    rst RST_38                                    ; $613E: $FF
    rst RST_38                                    ; $613F: $FF
    rst RST_38                                    ; $6140: $FF
    rst RST_38                                    ; $6141: $FF
    rst RST_38                                    ; $6142: $FF
    rst RST_38                                    ; $6143: $FF
    rst RST_38                                    ; $6144: $FF
    rst RST_38                                    ; $6145: $FF
    rst RST_38                                    ; $6146: $FF
    rst RST_38                                    ; $6147: $FF
    rst RST_38                                    ; $6148: $FF
    rst RST_38                                    ; $6149: $FF
    rst RST_38                                    ; $614A: $FF
    rst RST_38                                    ; $614B: $FF
    rst RST_38                                    ; $614C: $FF
    rst RST_38                                    ; $614D: $FF
    rst RST_38                                    ; $614E: $FF
    rst RST_38                                    ; $614F: $FF
    rst RST_38                                    ; $6150: $FF
    rst RST_38                                    ; $6151: $FF
    rst RST_38                                    ; $6152: $FF
    rst RST_38                                    ; $6153: $FF
    rst RST_38                                    ; $6154: $FF
    rst RST_38                                    ; $6155: $FF
    rst RST_38                                    ; $6156: $FF
    rst RST_38                                    ; $6157: $FF
    rst RST_38                                    ; $6158: $FF
    rst RST_38                                    ; $6159: $FF
    rst RST_38                                    ; $615A: $FF
    rst RST_38                                    ; $615B: $FF
    rst RST_38                                    ; $615C: $FF
    rst RST_38                                    ; $615D: $FF
    rst RST_38                                    ; $615E: $FF
    rst RST_38                                    ; $615F: $FF
    rst RST_38                                    ; $6160: $FF
    rst RST_38                                    ; $6161: $FF
    rst RST_38                                    ; $6162: $FF
    rst RST_38                                    ; $6163: $FF
    rst RST_38                                    ; $6164: $FF
    rst RST_38                                    ; $6165: $FF
    rst RST_38                                    ; $6166: $FF
    rst RST_38                                    ; $6167: $FF
    rst RST_38                                    ; $6168: $FF
    rst RST_38                                    ; $6169: $FF
    rst RST_38                                    ; $616A: $FF
    rst RST_38                                    ; $616B: $FF
    rst RST_38                                    ; $616C: $FF
    rst RST_38                                    ; $616D: $FF
    rst RST_38                                    ; $616E: $FF
    rst RST_38                                    ; $616F: $FF
    rst RST_38                                    ; $6170: $FF
    rst RST_38                                    ; $6171: $FF
    rst RST_38                                    ; $6172: $FF
    rst RST_38                                    ; $6173: $FF
    rst RST_38                                    ; $6174: $FF
    rst RST_38                                    ; $6175: $FF
    rst RST_38                                    ; $6176: $FF
    rst RST_38                                    ; $6177: $FF
    rst RST_38                                    ; $6178: $FF
    rst RST_38                                    ; $6179: $FF
    rst RST_38                                    ; $617A: $FF
    rst RST_38                                    ; $617B: $FF
    rst RST_38                                    ; $617C: $FF
    rst RST_38                                    ; $617D: $FF
    rst RST_38                                    ; $617E: $FF
    rst RST_38                                    ; $617F: $FF
    rst RST_38                                    ; $6180: $FF
    rst RST_38                                    ; $6181: $FF
    rst RST_38                                    ; $6182: $FF
    rst RST_38                                    ; $6183: $FF
    rst RST_38                                    ; $6184: $FF
    rst RST_38                                    ; $6185: $FF
    rst RST_38                                    ; $6186: $FF
    rst RST_38                                    ; $6187: $FF
    rst RST_38                                    ; $6188: $FF
    rst RST_38                                    ; $6189: $FF
    rst RST_38                                    ; $618A: $FF
    rst RST_38                                    ; $618B: $FF
    rst RST_38                                    ; $618C: $FF
    rst RST_38                                    ; $618D: $FF
    rst RST_38                                    ; $618E: $FF
    rst RST_38                                    ; $618F: $FF
    rst RST_38                                    ; $6190: $FF
    rst RST_38                                    ; $6191: $FF
    rst RST_38                                    ; $6192: $FF
    rst RST_38                                    ; $6193: $FF
    rst RST_38                                    ; $6194: $FF
    rst RST_38                                    ; $6195: $FF
    rst RST_38                                    ; $6196: $FF
    rst RST_38                                    ; $6197: $FF
    rst RST_38                                    ; $6198: $FF
    rst RST_38                                    ; $6199: $FF
    rst RST_38                                    ; $619A: $FF
    rst RST_38                                    ; $619B: $FF
    rst RST_38                                    ; $619C: $FF
    rst RST_38                                    ; $619D: $FF
    rst RST_38                                    ; $619E: $FF
    rst RST_38                                    ; $619F: $FF
    rst RST_38                                    ; $61A0: $FF
    rst RST_38                                    ; $61A1: $FF
    rst RST_38                                    ; $61A2: $FF
    rst RST_38                                    ; $61A3: $FF
    rst RST_38                                    ; $61A4: $FF
    rst RST_38                                    ; $61A5: $FF
    rst RST_38                                    ; $61A6: $FF
    rst RST_38                                    ; $61A7: $FF
    rst RST_38                                    ; $61A8: $FF
    rst RST_38                                    ; $61A9: $FF
    rst RST_38                                    ; $61AA: $FF
    rst RST_38                                    ; $61AB: $FF
    rst RST_38                                    ; $61AC: $FF
    rst RST_38                                    ; $61AD: $FF
    rst RST_38                                    ; $61AE: $FF
    rst RST_38                                    ; $61AF: $FF
    rst RST_38                                    ; $61B0: $FF
    rst RST_38                                    ; $61B1: $FF
    rst RST_38                                    ; $61B2: $FF
    rst RST_38                                    ; $61B3: $FF
    rst RST_38                                    ; $61B4: $FF
    rst RST_38                                    ; $61B5: $FF
    rst RST_38                                    ; $61B6: $FF
    rst RST_38                                    ; $61B7: $FF
    rst RST_38                                    ; $61B8: $FF
    rst RST_38                                    ; $61B9: $FF
    rst RST_38                                    ; $61BA: $FF
    rst RST_38                                    ; $61BB: $FF
    rst RST_38                                    ; $61BC: $FF
    rst RST_38                                    ; $61BD: $FF
    rst RST_38                                    ; $61BE: $FF
    rst RST_38                                    ; $61BF: $FF
    rst RST_38                                    ; $61C0: $FF
    rst RST_38                                    ; $61C1: $FF
    rst RST_38                                    ; $61C2: $FF
    rst RST_38                                    ; $61C3: $FF
    rst RST_38                                    ; $61C4: $FF
    rst RST_38                                    ; $61C5: $FF
    rst RST_38                                    ; $61C6: $FF
    rst RST_38                                    ; $61C7: $FF
    rst RST_38                                    ; $61C8: $FF
    rst RST_38                                    ; $61C9: $FF
    rst RST_38                                    ; $61CA: $FF
    rst RST_38                                    ; $61CB: $FF
    rst RST_38                                    ; $61CC: $FF
    rst RST_38                                    ; $61CD: $FF
    rst RST_38                                    ; $61CE: $FF
    rst RST_38                                    ; $61CF: $FF
    rst RST_38                                    ; $61D0: $FF
    rst RST_38                                    ; $61D1: $FF
    rst RST_38                                    ; $61D2: $FF
    rst RST_38                                    ; $61D3: $FF
    rst RST_38                                    ; $61D4: $FF
    rst RST_38                                    ; $61D5: $FF
    rst RST_38                                    ; $61D6: $FF
    rst RST_38                                    ; $61D7: $FF
    rst RST_38                                    ; $61D8: $FF
    rst RST_38                                    ; $61D9: $FF
    rst RST_38                                    ; $61DA: $FF
    rst RST_38                                    ; $61DB: $FF
    rst RST_38                                    ; $61DC: $FF
    rst RST_38                                    ; $61DD: $FF
    rst RST_38                                    ; $61DE: $FF
    rst RST_38                                    ; $61DF: $FF
    rst RST_38                                    ; $61E0: $FF
    rst RST_38                                    ; $61E1: $FF
    rst RST_38                                    ; $61E2: $FF
    rst RST_38                                    ; $61E3: $FF
    rst RST_38                                    ; $61E4: $FF
    rst RST_38                                    ; $61E5: $FF
    rst RST_38                                    ; $61E6: $FF
    rst RST_38                                    ; $61E7: $FF
    rst RST_38                                    ; $61E8: $FF
    rst RST_38                                    ; $61E9: $FF
    rst RST_38                                    ; $61EA: $FF
    rst RST_38                                    ; $61EB: $FF
    rst RST_38                                    ; $61EC: $FF
    rst RST_38                                    ; $61ED: $FF
    rst RST_38                                    ; $61EE: $FF
    rst RST_38                                    ; $61EF: $FF
    rst RST_38                                    ; $61F0: $FF
    rst RST_38                                    ; $61F1: $FF
    rst RST_38                                    ; $61F2: $FF
    rst RST_38                                    ; $61F3: $FF
    rst RST_38                                    ; $61F4: $FF
    rst RST_38                                    ; $61F5: $FF
    rst RST_38                                    ; $61F6: $FF
    rst RST_38                                    ; $61F7: $FF
    rst RST_38                                    ; $61F8: $FF
    rst RST_38                                    ; $61F9: $FF
    rst RST_38                                    ; $61FA: $FF
    rst RST_38                                    ; $61FB: $FF
    rst RST_38                                    ; $61FC: $FF
    rst RST_38                                    ; $61FD: $FF
    rst RST_38                                    ; $61FE: $FF
    rst RST_38                                    ; $61FF: $FF
    rst RST_38                                    ; $6200: $FF
    rst RST_38                                    ; $6201: $FF
    rst RST_38                                    ; $6202: $FF
    rst RST_38                                    ; $6203: $FF
    rst RST_38                                    ; $6204: $FF
    rst RST_38                                    ; $6205: $FF
    rst RST_38                                    ; $6206: $FF
    rst RST_38                                    ; $6207: $FF
    rst RST_38                                    ; $6208: $FF
    rst RST_38                                    ; $6209: $FF
    rst RST_38                                    ; $620A: $FF
    rst RST_38                                    ; $620B: $FF
    rst RST_38                                    ; $620C: $FF
    rst RST_38                                    ; $620D: $FF
    rst RST_38                                    ; $620E: $FF
    rst RST_38                                    ; $620F: $FF
    rst RST_38                                    ; $6210: $FF
    rst RST_38                                    ; $6211: $FF
    rst RST_38                                    ; $6212: $FF
    rst RST_38                                    ; $6213: $FF
    rst RST_38                                    ; $6214: $FF
    rst RST_38                                    ; $6215: $FF
    rst RST_38                                    ; $6216: $FF
    rst RST_38                                    ; $6217: $FF
    rst RST_38                                    ; $6218: $FF
    rst RST_38                                    ; $6219: $FF
    rst RST_38                                    ; $621A: $FF
    rst RST_38                                    ; $621B: $FF
    rst RST_38                                    ; $621C: $FF
    rst RST_38                                    ; $621D: $FF
    rst RST_38                                    ; $621E: $FF
    rst RST_38                                    ; $621F: $FF
    rst RST_38                                    ; $6220: $FF
    rst RST_38                                    ; $6221: $FF
    rst RST_38                                    ; $6222: $FF
    rst RST_38                                    ; $6223: $FF
    rst RST_38                                    ; $6224: $FF
    rst RST_38                                    ; $6225: $FF
    rst RST_38                                    ; $6226: $FF
    rst RST_38                                    ; $6227: $FF
    rst RST_38                                    ; $6228: $FF
    rst RST_38                                    ; $6229: $FF
    rst RST_38                                    ; $622A: $FF
    rst RST_38                                    ; $622B: $FF
    rst RST_38                                    ; $622C: $FF
    rst RST_38                                    ; $622D: $FF
    rst RST_38                                    ; $622E: $FF
    rst RST_38                                    ; $622F: $FF
    rst RST_38                                    ; $6230: $FF
    rst RST_38                                    ; $6231: $FF
    rst RST_38                                    ; $6232: $FF
    rst RST_38                                    ; $6233: $FF
    rst RST_38                                    ; $6234: $FF
    rst RST_38                                    ; $6235: $FF
    rst RST_38                                    ; $6236: $FF
    rst RST_38                                    ; $6237: $FF
    rst RST_38                                    ; $6238: $FF
    rst RST_38                                    ; $6239: $FF
    rst RST_38                                    ; $623A: $FF
    rst RST_38                                    ; $623B: $FF
    rst RST_38                                    ; $623C: $FF
    rst RST_38                                    ; $623D: $FF
    rst RST_38                                    ; $623E: $FF
    rst RST_38                                    ; $623F: $FF
    rst RST_38                                    ; $6240: $FF
    rst RST_38                                    ; $6241: $FF
    rst RST_38                                    ; $6242: $FF
    rst RST_38                                    ; $6243: $FF
    rst RST_38                                    ; $6244: $FF
    rst RST_38                                    ; $6245: $FF
    rst RST_38                                    ; $6246: $FF
    rst RST_38                                    ; $6247: $FF
    rst RST_38                                    ; $6248: $FF
    rst RST_38                                    ; $6249: $FF
    rst RST_38                                    ; $624A: $FF
    rst RST_38                                    ; $624B: $FF
    rst RST_38                                    ; $624C: $FF
    rst RST_38                                    ; $624D: $FF
    rst RST_38                                    ; $624E: $FF
    rst RST_38                                    ; $624F: $FF
    rst RST_38                                    ; $6250: $FF
    rst RST_38                                    ; $6251: $FF
    rst RST_38                                    ; $6252: $FF
    rst RST_38                                    ; $6253: $FF
    rst RST_38                                    ; $6254: $FF
    rst RST_38                                    ; $6255: $FF
    rst RST_38                                    ; $6256: $FF
    rst RST_38                                    ; $6257: $FF
    rst RST_38                                    ; $6258: $FF
    rst RST_38                                    ; $6259: $FF
    rst RST_38                                    ; $625A: $FF
    rst RST_38                                    ; $625B: $FF
    rst RST_38                                    ; $625C: $FF
    rst RST_38                                    ; $625D: $FF
    rst RST_38                                    ; $625E: $FF
    rst RST_38                                    ; $625F: $FF
    rst RST_38                                    ; $6260: $FF
    rst RST_38                                    ; $6261: $FF
    rst RST_38                                    ; $6262: $FF
    rst RST_38                                    ; $6263: $FF
    rst RST_38                                    ; $6264: $FF
    rst RST_38                                    ; $6265: $FF
    rst RST_38                                    ; $6266: $FF
    rst RST_38                                    ; $6267: $FF
    rst RST_38                                    ; $6268: $FF
    rst RST_38                                    ; $6269: $FF
    rst RST_38                                    ; $626A: $FF
    rst RST_38                                    ; $626B: $FF
    rst RST_38                                    ; $626C: $FF
    rst RST_38                                    ; $626D: $FF
    rst RST_38                                    ; $626E: $FF
    rst RST_38                                    ; $626F: $FF
    rst RST_38                                    ; $6270: $FF
    rst RST_38                                    ; $6271: $FF
    rst RST_38                                    ; $6272: $FF
    rst RST_38                                    ; $6273: $FF
    rst RST_38                                    ; $6274: $FF
    rst RST_38                                    ; $6275: $FF
    rst RST_38                                    ; $6276: $FF
    rst RST_38                                    ; $6277: $FF
    rst RST_38                                    ; $6278: $FF
    rst RST_38                                    ; $6279: $FF
    rst RST_38                                    ; $627A: $FF
    rst RST_38                                    ; $627B: $FF
    rst RST_38                                    ; $627C: $FF
    rst RST_38                                    ; $627D: $FF
    rst RST_38                                    ; $627E: $FF
    rst RST_38                                    ; $627F: $FF
    rst RST_38                                    ; $6280: $FF
    rst RST_38                                    ; $6281: $FF
    rst RST_38                                    ; $6282: $FF
    rst RST_38                                    ; $6283: $FF
    rst RST_38                                    ; $6284: $FF
    rst RST_38                                    ; $6285: $FF
    rst RST_38                                    ; $6286: $FF
    rst RST_38                                    ; $6287: $FF
    rst RST_38                                    ; $6288: $FF
    rst RST_38                                    ; $6289: $FF
    rst RST_38                                    ; $628A: $FF
    rst RST_38                                    ; $628B: $FF
    rst RST_38                                    ; $628C: $FF
    rst RST_38                                    ; $628D: $FF
    rst RST_38                                    ; $628E: $FF
    rst RST_38                                    ; $628F: $FF
    rst RST_38                                    ; $6290: $FF
    rst RST_38                                    ; $6291: $FF
    rst RST_38                                    ; $6292: $FF
    rst RST_38                                    ; $6293: $FF
    rst RST_38                                    ; $6294: $FF
    rst RST_38                                    ; $6295: $FF
    rst RST_38                                    ; $6296: $FF
    rst RST_38                                    ; $6297: $FF
    rst RST_38                                    ; $6298: $FF
    rst RST_38                                    ; $6299: $FF
    rst RST_38                                    ; $629A: $FF
    rst RST_38                                    ; $629B: $FF
    rst RST_38                                    ; $629C: $FF
    rst RST_38                                    ; $629D: $FF
    rst RST_38                                    ; $629E: $FF
    rst RST_38                                    ; $629F: $FF
    rst RST_38                                    ; $62A0: $FF
    rst RST_38                                    ; $62A1: $FF
    rst RST_38                                    ; $62A2: $FF
    rst RST_38                                    ; $62A3: $FF
    rst RST_38                                    ; $62A4: $FF
    rst RST_38                                    ; $62A5: $FF
    rst RST_38                                    ; $62A6: $FF
    rst RST_38                                    ; $62A7: $FF
    rst RST_38                                    ; $62A8: $FF
    rst RST_38                                    ; $62A9: $FF
    rst RST_38                                    ; $62AA: $FF
    rst RST_38                                    ; $62AB: $FF
    rst RST_38                                    ; $62AC: $FF
    rst RST_38                                    ; $62AD: $FF
    rst RST_38                                    ; $62AE: $FF
    rst RST_38                                    ; $62AF: $FF
    rst RST_38                                    ; $62B0: $FF
    rst RST_38                                    ; $62B1: $FF
    rst RST_38                                    ; $62B2: $FF
    rst RST_38                                    ; $62B3: $FF
    rst RST_38                                    ; $62B4: $FF
    rst RST_38                                    ; $62B5: $FF
    rst RST_38                                    ; $62B6: $FF
    rst RST_38                                    ; $62B7: $FF
    rst RST_38                                    ; $62B8: $FF
    rst RST_38                                    ; $62B9: $FF
    rst RST_38                                    ; $62BA: $FF
    rst RST_38                                    ; $62BB: $FF
    rst RST_38                                    ; $62BC: $FF
    rst RST_38                                    ; $62BD: $FF
    rst RST_38                                    ; $62BE: $FF
    rst RST_38                                    ; $62BF: $FF
    rst RST_38                                    ; $62C0: $FF
    rst RST_38                                    ; $62C1: $FF
    rst RST_38                                    ; $62C2: $FF
    rst RST_38                                    ; $62C3: $FF
    rst RST_38                                    ; $62C4: $FF
    rst RST_38                                    ; $62C5: $FF
    rst RST_38                                    ; $62C6: $FF
    rst RST_38                                    ; $62C7: $FF
    rst RST_38                                    ; $62C8: $FF
    rst RST_38                                    ; $62C9: $FF
    rst RST_38                                    ; $62CA: $FF
    rst RST_38                                    ; $62CB: $FF
    rst RST_38                                    ; $62CC: $FF
    rst RST_38                                    ; $62CD: $FF
    rst RST_38                                    ; $62CE: $FF
    rst RST_38                                    ; $62CF: $FF
    rst RST_38                                    ; $62D0: $FF
    rst RST_38                                    ; $62D1: $FF
    rst RST_38                                    ; $62D2: $FF
    rst RST_38                                    ; $62D3: $FF
    rst RST_38                                    ; $62D4: $FF
    rst RST_38                                    ; $62D5: $FF
    rst RST_38                                    ; $62D6: $FF
    rst RST_38                                    ; $62D7: $FF
    rst RST_38                                    ; $62D8: $FF
    rst RST_38                                    ; $62D9: $FF
    rst RST_38                                    ; $62DA: $FF
    rst RST_38                                    ; $62DB: $FF
    rst RST_38                                    ; $62DC: $FF
    rst RST_38                                    ; $62DD: $FF
    rst RST_38                                    ; $62DE: $FF
    rst RST_38                                    ; $62DF: $FF
    rst RST_38                                    ; $62E0: $FF
    rst RST_38                                    ; $62E1: $FF
    rst RST_38                                    ; $62E2: $FF
    rst RST_38                                    ; $62E3: $FF
    rst RST_38                                    ; $62E4: $FF
    rst RST_38                                    ; $62E5: $FF
    rst RST_38                                    ; $62E6: $FF
    rst RST_38                                    ; $62E7: $FF
    rst RST_38                                    ; $62E8: $FF
    rst RST_38                                    ; $62E9: $FF
    rst RST_38                                    ; $62EA: $FF
    rst RST_38                                    ; $62EB: $FF
    rst RST_38                                    ; $62EC: $FF
    rst RST_38                                    ; $62ED: $FF
    rst RST_38                                    ; $62EE: $FF
    rst RST_38                                    ; $62EF: $FF
    rst RST_38                                    ; $62F0: $FF
    rst RST_38                                    ; $62F1: $FF
    rst RST_38                                    ; $62F2: $FF
    rst RST_38                                    ; $62F3: $FF
    rst RST_38                                    ; $62F4: $FF
    rst RST_38                                    ; $62F5: $FF
    rst RST_38                                    ; $62F6: $FF
    rst RST_38                                    ; $62F7: $FF
    rst RST_38                                    ; $62F8: $FF
    rst RST_38                                    ; $62F9: $FF
    rst RST_38                                    ; $62FA: $FF
    rst RST_38                                    ; $62FB: $FF
    rst RST_38                                    ; $62FC: $FF
    rst RST_38                                    ; $62FD: $FF
    rst RST_38                                    ; $62FE: $FF
    rst RST_38                                    ; $62FF: $FF
    rst RST_38                                    ; $6300: $FF
    rst RST_38                                    ; $6301: $FF
    rst RST_38                                    ; $6302: $FF
    rst RST_38                                    ; $6303: $FF
    rst RST_38                                    ; $6304: $FF
    rst RST_38                                    ; $6305: $FF
    rst RST_38                                    ; $6306: $FF
    rst RST_38                                    ; $6307: $FF
    rst RST_38                                    ; $6308: $FF
    rst RST_38                                    ; $6309: $FF
    rst RST_38                                    ; $630A: $FF
    rst RST_38                                    ; $630B: $FF
    rst RST_38                                    ; $630C: $FF
    rst RST_38                                    ; $630D: $FF
    rst RST_38                                    ; $630E: $FF
    rst RST_38                                    ; $630F: $FF
    rst RST_38                                    ; $6310: $FF
    rst RST_38                                    ; $6311: $FF
    rst RST_38                                    ; $6312: $FF
    rst RST_38                                    ; $6313: $FF
    rst RST_38                                    ; $6314: $FF
    rst RST_38                                    ; $6315: $FF
    rst RST_38                                    ; $6316: $FF
    rst RST_38                                    ; $6317: $FF
    rst RST_38                                    ; $6318: $FF
    rst RST_38                                    ; $6319: $FF
    rst RST_38                                    ; $631A: $FF
    rst RST_38                                    ; $631B: $FF
    rst RST_38                                    ; $631C: $FF
    rst RST_38                                    ; $631D: $FF
    rst RST_38                                    ; $631E: $FF
    rst RST_38                                    ; $631F: $FF
    rst RST_38                                    ; $6320: $FF
    rst RST_38                                    ; $6321: $FF
    rst RST_38                                    ; $6322: $FF
    rst RST_38                                    ; $6323: $FF
    rst RST_38                                    ; $6324: $FF
    rst RST_38                                    ; $6325: $FF
    rst RST_38                                    ; $6326: $FF
    rst RST_38                                    ; $6327: $FF
    rst RST_38                                    ; $6328: $FF
    rst RST_38                                    ; $6329: $FF
    rst RST_38                                    ; $632A: $FF
    rst RST_38                                    ; $632B: $FF
    rst RST_38                                    ; $632C: $FF
    rst RST_38                                    ; $632D: $FF
    rst RST_38                                    ; $632E: $FF
    rst RST_38                                    ; $632F: $FF
    rst RST_38                                    ; $6330: $FF
    rst RST_38                                    ; $6331: $FF
    rst RST_38                                    ; $6332: $FF
    rst RST_38                                    ; $6333: $FF
    rst RST_38                                    ; $6334: $FF
    rst RST_38                                    ; $6335: $FF
    rst RST_38                                    ; $6336: $FF
    rst RST_38                                    ; $6337: $FF
    rst RST_38                                    ; $6338: $FF
    rst RST_38                                    ; $6339: $FF
    rst RST_38                                    ; $633A: $FF
    rst RST_38                                    ; $633B: $FF
    rst RST_38                                    ; $633C: $FF
    rst RST_38                                    ; $633D: $FF
    rst RST_38                                    ; $633E: $FF
    rst RST_38                                    ; $633F: $FF
    rst RST_38                                    ; $6340: $FF
    rst RST_38                                    ; $6341: $FF
    rst RST_38                                    ; $6342: $FF
    rst RST_38                                    ; $6343: $FF
    rst RST_38                                    ; $6344: $FF
    rst RST_38                                    ; $6345: $FF
    rst RST_38                                    ; $6346: $FF
    rst RST_38                                    ; $6347: $FF
    rst RST_38                                    ; $6348: $FF
    rst RST_38                                    ; $6349: $FF
    rst RST_38                                    ; $634A: $FF
    rst RST_38                                    ; $634B: $FF
    rst RST_38                                    ; $634C: $FF
    rst RST_38                                    ; $634D: $FF
    rst RST_38                                    ; $634E: $FF
    rst RST_38                                    ; $634F: $FF
    rst RST_38                                    ; $6350: $FF
    rst RST_38                                    ; $6351: $FF
    rst RST_38                                    ; $6352: $FF
    rst RST_38                                    ; $6353: $FF
    rst RST_38                                    ; $6354: $FF
    rst RST_38                                    ; $6355: $FF
    rst RST_38                                    ; $6356: $FF
    rst RST_38                                    ; $6357: $FF
    rst RST_38                                    ; $6358: $FF
    rst RST_38                                    ; $6359: $FF
    rst RST_38                                    ; $635A: $FF
    rst RST_38                                    ; $635B: $FF
    rst RST_38                                    ; $635C: $FF
    rst RST_38                                    ; $635D: $FF
    rst RST_38                                    ; $635E: $FF
    rst RST_38                                    ; $635F: $FF
    rst RST_38                                    ; $6360: $FF
    rst RST_38                                    ; $6361: $FF
    rst RST_38                                    ; $6362: $FF
    rst RST_38                                    ; $6363: $FF
    rst RST_38                                    ; $6364: $FF
    rst RST_38                                    ; $6365: $FF
    rst RST_38                                    ; $6366: $FF
    rst RST_38                                    ; $6367: $FF
    rst RST_38                                    ; $6368: $FF
    rst RST_38                                    ; $6369: $FF
    rst RST_38                                    ; $636A: $FF
    rst RST_38                                    ; $636B: $FF
    rst RST_38                                    ; $636C: $FF
    rst RST_38                                    ; $636D: $FF
    rst RST_38                                    ; $636E: $FF
    rst RST_38                                    ; $636F: $FF
    rst RST_38                                    ; $6370: $FF
    rst RST_38                                    ; $6371: $FF
    rst RST_38                                    ; $6372: $FF
    rst RST_38                                    ; $6373: $FF
    rst RST_38                                    ; $6374: $FF
    rst RST_38                                    ; $6375: $FF
    rst RST_38                                    ; $6376: $FF
    rst RST_38                                    ; $6377: $FF
    rst RST_38                                    ; $6378: $FF
    rst RST_38                                    ; $6379: $FF
    rst RST_38                                    ; $637A: $FF
    rst RST_38                                    ; $637B: $FF
    rst RST_38                                    ; $637C: $FF
    rst RST_38                                    ; $637D: $FF
    rst RST_38                                    ; $637E: $FF
    rst RST_38                                    ; $637F: $FF
    rst RST_38                                    ; $6380: $FF
    rst RST_38                                    ; $6381: $FF
    rst RST_38                                    ; $6382: $FF
    rst RST_38                                    ; $6383: $FF
    rst RST_38                                    ; $6384: $FF
    rst RST_38                                    ; $6385: $FF
    rst RST_38                                    ; $6386: $FF
    rst RST_38                                    ; $6387: $FF
    rst RST_38                                    ; $6388: $FF
    rst RST_38                                    ; $6389: $FF
    rst RST_38                                    ; $638A: $FF
    rst RST_38                                    ; $638B: $FF
    rst RST_38                                    ; $638C: $FF
    rst RST_38                                    ; $638D: $FF
    rst RST_38                                    ; $638E: $FF
    rst RST_38                                    ; $638F: $FF
    rst RST_38                                    ; $6390: $FF
    rst RST_38                                    ; $6391: $FF
    rst RST_38                                    ; $6392: $FF
    rst RST_38                                    ; $6393: $FF
    rst RST_38                                    ; $6394: $FF
    rst RST_38                                    ; $6395: $FF
    rst RST_38                                    ; $6396: $FF
    rst RST_38                                    ; $6397: $FF
    rst RST_38                                    ; $6398: $FF
    rst RST_38                                    ; $6399: $FF
    rst RST_38                                    ; $639A: $FF
    rst RST_38                                    ; $639B: $FF
    rst RST_38                                    ; $639C: $FF
    rst RST_38                                    ; $639D: $FF
    rst RST_38                                    ; $639E: $FF
    rst RST_38                                    ; $639F: $FF
    rst RST_38                                    ; $63A0: $FF
    rst RST_38                                    ; $63A1: $FF
    rst RST_38                                    ; $63A2: $FF
    rst RST_38                                    ; $63A3: $FF
    rst RST_38                                    ; $63A4: $FF
    rst RST_38                                    ; $63A5: $FF
    rst RST_38                                    ; $63A6: $FF
    rst RST_38                                    ; $63A7: $FF
    rst RST_38                                    ; $63A8: $FF
    rst RST_38                                    ; $63A9: $FF
    rst RST_38                                    ; $63AA: $FF
    rst RST_38                                    ; $63AB: $FF
    rst RST_38                                    ; $63AC: $FF
    rst RST_38                                    ; $63AD: $FF
    rst RST_38                                    ; $63AE: $FF
    rst RST_38                                    ; $63AF: $FF
    rst RST_38                                    ; $63B0: $FF
    rst RST_38                                    ; $63B1: $FF
    rst RST_38                                    ; $63B2: $FF
    rst RST_38                                    ; $63B3: $FF
    rst RST_38                                    ; $63B4: $FF
    rst RST_38                                    ; $63B5: $FF
    rst RST_38                                    ; $63B6: $FF
    rst RST_38                                    ; $63B7: $FF
    rst RST_38                                    ; $63B8: $FF
    rst RST_38                                    ; $63B9: $FF
    rst RST_38                                    ; $63BA: $FF
    rst RST_38                                    ; $63BB: $FF
    rst RST_38                                    ; $63BC: $FF
    rst RST_38                                    ; $63BD: $FF
    rst RST_38                                    ; $63BE: $FF
    rst RST_38                                    ; $63BF: $FF
    rst RST_38                                    ; $63C0: $FF
    rst RST_38                                    ; $63C1: $FF
    rst RST_38                                    ; $63C2: $FF
    rst RST_38                                    ; $63C3: $FF
    rst RST_38                                    ; $63C4: $FF
    rst RST_38                                    ; $63C5: $FF
    rst RST_38                                    ; $63C6: $FF
    rst RST_38                                    ; $63C7: $FF
    rst RST_38                                    ; $63C8: $FF
    rst RST_38                                    ; $63C9: $FF
    rst RST_38                                    ; $63CA: $FF
    rst RST_38                                    ; $63CB: $FF
    rst RST_38                                    ; $63CC: $FF
    rst RST_38                                    ; $63CD: $FF
    rst RST_38                                    ; $63CE: $FF
    rst RST_38                                    ; $63CF: $FF
    rst RST_38                                    ; $63D0: $FF
    rst RST_38                                    ; $63D1: $FF
    rst RST_38                                    ; $63D2: $FF
    rst RST_38                                    ; $63D3: $FF
    rst RST_38                                    ; $63D4: $FF
    rst RST_38                                    ; $63D5: $FF
    rst RST_38                                    ; $63D6: $FF
    rst RST_38                                    ; $63D7: $FF
    rst RST_38                                    ; $63D8: $FF
    rst RST_38                                    ; $63D9: $FF
    rst RST_38                                    ; $63DA: $FF
    rst RST_38                                    ; $63DB: $FF
    rst RST_38                                    ; $63DC: $FF
    rst RST_38                                    ; $63DD: $FF
    rst RST_38                                    ; $63DE: $FF
    rst RST_38                                    ; $63DF: $FF
    rst RST_38                                    ; $63E0: $FF
    rst RST_38                                    ; $63E1: $FF
    rst RST_38                                    ; $63E2: $FF
    rst RST_38                                    ; $63E3: $FF
    rst RST_38                                    ; $63E4: $FF
    rst RST_38                                    ; $63E5: $FF
    rst RST_38                                    ; $63E6: $FF
    rst RST_38                                    ; $63E7: $FF
    rst RST_38                                    ; $63E8: $FF
    rst RST_38                                    ; $63E9: $FF
    rst RST_38                                    ; $63EA: $FF
    rst RST_38                                    ; $63EB: $FF
    rst RST_38                                    ; $63EC: $FF
    rst RST_38                                    ; $63ED: $FF
    rst RST_38                                    ; $63EE: $FF
    rst RST_38                                    ; $63EF: $FF
    rst RST_38                                    ; $63F0: $FF
    rst RST_38                                    ; $63F1: $FF
    rst RST_38                                    ; $63F2: $FF
    rst RST_38                                    ; $63F3: $FF
    rst RST_38                                    ; $63F4: $FF
    rst RST_38                                    ; $63F5: $FF
    rst RST_38                                    ; $63F6: $FF
    rst RST_38                                    ; $63F7: $FF
    rst RST_38                                    ; $63F8: $FF
    rst RST_38                                    ; $63F9: $FF
    rst RST_38                                    ; $63FA: $FF
    rst RST_38                                    ; $63FB: $FF
    rst RST_38                                    ; $63FC: $FF
    rst RST_38                                    ; $63FD: $FF
    rst RST_38                                    ; $63FE: $FF
    rst RST_38                                    ; $63FF: $FF
    rst RST_38                                    ; $6400: $FF
    rst RST_38                                    ; $6401: $FF
    rst RST_38                                    ; $6402: $FF
    rst RST_38                                    ; $6403: $FF
    rst RST_38                                    ; $6404: $FF
    rst RST_38                                    ; $6405: $FF
    rst RST_38                                    ; $6406: $FF
    rst RST_38                                    ; $6407: $FF
    rst RST_38                                    ; $6408: $FF
    rst RST_38                                    ; $6409: $FF
    rst RST_38                                    ; $640A: $FF
    rst RST_38                                    ; $640B: $FF
    rst RST_38                                    ; $640C: $FF
    rst RST_38                                    ; $640D: $FF
    rst RST_38                                    ; $640E: $FF
    rst RST_38                                    ; $640F: $FF
    rst RST_38                                    ; $6410: $FF
    rst RST_38                                    ; $6411: $FF
    rst RST_38                                    ; $6412: $FF
    rst RST_38                                    ; $6413: $FF
    rst RST_38                                    ; $6414: $FF
    rst RST_38                                    ; $6415: $FF
    rst RST_38                                    ; $6416: $FF
    rst RST_38                                    ; $6417: $FF
    rst RST_38                                    ; $6418: $FF
    rst RST_38                                    ; $6419: $FF
    rst RST_38                                    ; $641A: $FF
    rst RST_38                                    ; $641B: $FF
    rst RST_38                                    ; $641C: $FF
    rst RST_38                                    ; $641D: $FF
    rst RST_38                                    ; $641E: $FF
    rst RST_38                                    ; $641F: $FF
    rst RST_38                                    ; $6420: $FF
    rst RST_38                                    ; $6421: $FF
    rst RST_38                                    ; $6422: $FF
    rst RST_38                                    ; $6423: $FF
    rst RST_38                                    ; $6424: $FF
    rst RST_38                                    ; $6425: $FF
    rst RST_38                                    ; $6426: $FF
    rst RST_38                                    ; $6427: $FF
    rst RST_38                                    ; $6428: $FF
    rst RST_38                                    ; $6429: $FF
    rst RST_38                                    ; $642A: $FF
    rst RST_38                                    ; $642B: $FF
    rst RST_38                                    ; $642C: $FF
    rst RST_38                                    ; $642D: $FF
    rst RST_38                                    ; $642E: $FF
    rst RST_38                                    ; $642F: $FF
    rst RST_38                                    ; $6430: $FF
    rst RST_38                                    ; $6431: $FF
    rst RST_38                                    ; $6432: $FF
    rst RST_38                                    ; $6433: $FF
    rst RST_38                                    ; $6434: $FF
    rst RST_38                                    ; $6435: $FF
    rst RST_38                                    ; $6436: $FF
    rst RST_38                                    ; $6437: $FF
    rst RST_38                                    ; $6438: $FF
    rst RST_38                                    ; $6439: $FF
    rst RST_38                                    ; $643A: $FF
    rst RST_38                                    ; $643B: $FF
    rst RST_38                                    ; $643C: $FF
    rst RST_38                                    ; $643D: $FF
    rst RST_38                                    ; $643E: $FF
    rst RST_38                                    ; $643F: $FF
    rst RST_38                                    ; $6440: $FF
    rst RST_38                                    ; $6441: $FF
    rst RST_38                                    ; $6442: $FF
    rst RST_38                                    ; $6443: $FF
    rst RST_38                                    ; $6444: $FF
    rst RST_38                                    ; $6445: $FF
    rst RST_38                                    ; $6446: $FF
    rst RST_38                                    ; $6447: $FF
    rst RST_38                                    ; $6448: $FF
    rst RST_38                                    ; $6449: $FF
    rst RST_38                                    ; $644A: $FF
    rst RST_38                                    ; $644B: $FF
    rst RST_38                                    ; $644C: $FF
    rst RST_38                                    ; $644D: $FF
    rst RST_38                                    ; $644E: $FF
    rst RST_38                                    ; $644F: $FF
    rst RST_38                                    ; $6450: $FF
    rst RST_38                                    ; $6451: $FF
    rst RST_38                                    ; $6452: $FF
    rst RST_38                                    ; $6453: $FF
    rst RST_38                                    ; $6454: $FF
    rst RST_38                                    ; $6455: $FF
    rst RST_38                                    ; $6456: $FF
    rst RST_38                                    ; $6457: $FF
    rst RST_38                                    ; $6458: $FF
    rst RST_38                                    ; $6459: $FF
    rst RST_38                                    ; $645A: $FF
    rst RST_38                                    ; $645B: $FF
    rst RST_38                                    ; $645C: $FF
    rst RST_38                                    ; $645D: $FF
    rst RST_38                                    ; $645E: $FF
    rst RST_38                                    ; $645F: $FF
    rst RST_38                                    ; $6460: $FF
    rst RST_38                                    ; $6461: $FF
    rst RST_38                                    ; $6462: $FF
    rst RST_38                                    ; $6463: $FF
    rst RST_38                                    ; $6464: $FF
    rst RST_38                                    ; $6465: $FF
    rst RST_38                                    ; $6466: $FF
    rst RST_38                                    ; $6467: $FF
    rst RST_38                                    ; $6468: $FF
    rst RST_38                                    ; $6469: $FF
    rst RST_38                                    ; $646A: $FF
    rst RST_38                                    ; $646B: $FF
    rst RST_38                                    ; $646C: $FF
    rst RST_38                                    ; $646D: $FF
    rst RST_38                                    ; $646E: $FF
    rst RST_38                                    ; $646F: $FF
    rst RST_38                                    ; $6470: $FF
    rst RST_38                                    ; $6471: $FF
    rst RST_38                                    ; $6472: $FF
    rst RST_38                                    ; $6473: $FF
    rst RST_38                                    ; $6474: $FF
    rst RST_38                                    ; $6475: $FF
    rst RST_38                                    ; $6476: $FF
    rst RST_38                                    ; $6477: $FF
    rst RST_38                                    ; $6478: $FF
    rst RST_38                                    ; $6479: $FF
    rst RST_38                                    ; $647A: $FF
    rst RST_38                                    ; $647B: $FF
    rst RST_38                                    ; $647C: $FF
    rst RST_38                                    ; $647D: $FF
    rst RST_38                                    ; $647E: $FF
    rst RST_38                                    ; $647F: $FF
    rst RST_38                                    ; $6480: $FF
    rst RST_38                                    ; $6481: $FF
    rst RST_38                                    ; $6482: $FF
    rst RST_38                                    ; $6483: $FF
    rst RST_38                                    ; $6484: $FF
    rst RST_38                                    ; $6485: $FF
    rst RST_38                                    ; $6486: $FF
    rst RST_38                                    ; $6487: $FF
    rst RST_38                                    ; $6488: $FF
    rst RST_38                                    ; $6489: $FF
    rst RST_38                                    ; $648A: $FF
    rst RST_38                                    ; $648B: $FF
    rst RST_38                                    ; $648C: $FF
    rst RST_38                                    ; $648D: $FF
    rst RST_38                                    ; $648E: $FF
    rst RST_38                                    ; $648F: $FF
    rst RST_38                                    ; $6490: $FF
    rst RST_38                                    ; $6491: $FF
    rst RST_38                                    ; $6492: $FF
    rst RST_38                                    ; $6493: $FF
    rst RST_38                                    ; $6494: $FF
    rst RST_38                                    ; $6495: $FF
    rst RST_38                                    ; $6496: $FF
    rst RST_38                                    ; $6497: $FF
    rst RST_38                                    ; $6498: $FF
    rst RST_38                                    ; $6499: $FF
    rst RST_38                                    ; $649A: $FF
    rst RST_38                                    ; $649B: $FF
    rst RST_38                                    ; $649C: $FF
    rst RST_38                                    ; $649D: $FF
    rst RST_38                                    ; $649E: $FF
    rst RST_38                                    ; $649F: $FF
    rst RST_38                                    ; $64A0: $FF
    rst RST_38                                    ; $64A1: $FF
    rst RST_38                                    ; $64A2: $FF
    rst RST_38                                    ; $64A3: $FF
    rst RST_38                                    ; $64A4: $FF
    rst RST_38                                    ; $64A5: $FF
    rst RST_38                                    ; $64A6: $FF
    rst RST_38                                    ; $64A7: $FF
    rst RST_38                                    ; $64A8: $FF
    rst RST_38                                    ; $64A9: $FF
    rst RST_38                                    ; $64AA: $FF
    rst RST_38                                    ; $64AB: $FF
    rst RST_38                                    ; $64AC: $FF
    rst RST_38                                    ; $64AD: $FF
    rst RST_38                                    ; $64AE: $FF
    rst RST_38                                    ; $64AF: $FF
    rst RST_38                                    ; $64B0: $FF
    rst RST_38                                    ; $64B1: $FF
    rst RST_38                                    ; $64B2: $FF
    rst RST_38                                    ; $64B3: $FF
    rst RST_38                                    ; $64B4: $FF
    rst RST_38                                    ; $64B5: $FF
    rst RST_38                                    ; $64B6: $FF
    rst RST_38                                    ; $64B7: $FF
    rst RST_38                                    ; $64B8: $FF
    rst RST_38                                    ; $64B9: $FF
    rst RST_38                                    ; $64BA: $FF
    rst RST_38                                    ; $64BB: $FF
    rst RST_38                                    ; $64BC: $FF
    rst RST_38                                    ; $64BD: $FF
    rst RST_38                                    ; $64BE: $FF
    rst RST_38                                    ; $64BF: $FF
    rst RST_38                                    ; $64C0: $FF
    rst RST_38                                    ; $64C1: $FF
    rst RST_38                                    ; $64C2: $FF
    rst RST_38                                    ; $64C3: $FF
    rst RST_38                                    ; $64C4: $FF
    rst RST_38                                    ; $64C5: $FF
    rst RST_38                                    ; $64C6: $FF
    rst RST_38                                    ; $64C7: $FF
    rst RST_38                                    ; $64C8: $FF
    rst RST_38                                    ; $64C9: $FF
    rst RST_38                                    ; $64CA: $FF
    rst RST_38                                    ; $64CB: $FF
    rst RST_38                                    ; $64CC: $FF
    rst RST_38                                    ; $64CD: $FF
    rst RST_38                                    ; $64CE: $FF
    rst RST_38                                    ; $64CF: $FF
    rst RST_38                                    ; $64D0: $FF
    rst RST_38                                    ; $64D1: $FF
    rst RST_38                                    ; $64D2: $FF
    rst RST_38                                    ; $64D3: $FF
    rst RST_38                                    ; $64D4: $FF
    rst RST_38                                    ; $64D5: $FF
    rst RST_38                                    ; $64D6: $FF
    rst RST_38                                    ; $64D7: $FF
    rst RST_38                                    ; $64D8: $FF
    rst RST_38                                    ; $64D9: $FF
    rst RST_38                                    ; $64DA: $FF
    rst RST_38                                    ; $64DB: $FF
    rst RST_38                                    ; $64DC: $FF
    rst RST_38                                    ; $64DD: $FF
    rst RST_38                                    ; $64DE: $FF
    rst RST_38                                    ; $64DF: $FF
    rst RST_38                                    ; $64E0: $FF
    rst RST_38                                    ; $64E1: $FF
    rst RST_38                                    ; $64E2: $FF
    rst RST_38                                    ; $64E3: $FF
    rst RST_38                                    ; $64E4: $FF
    rst RST_38                                    ; $64E5: $FF
    rst RST_38                                    ; $64E6: $FF
    rst RST_38                                    ; $64E7: $FF
    rst RST_38                                    ; $64E8: $FF
    rst RST_38                                    ; $64E9: $FF
    rst RST_38                                    ; $64EA: $FF
    rst RST_38                                    ; $64EB: $FF
    rst RST_38                                    ; $64EC: $FF
    rst RST_38                                    ; $64ED: $FF
    rst RST_38                                    ; $64EE: $FF
    rst RST_38                                    ; $64EF: $FF
    rst RST_38                                    ; $64F0: $FF
    rst RST_38                                    ; $64F1: $FF
    rst RST_38                                    ; $64F2: $FF
    rst RST_38                                    ; $64F3: $FF
    rst RST_38                                    ; $64F4: $FF
    rst RST_38                                    ; $64F5: $FF
    rst RST_38                                    ; $64F6: $FF
    rst RST_38                                    ; $64F7: $FF
    rst RST_38                                    ; $64F8: $FF
    rst RST_38                                    ; $64F9: $FF
    rst RST_38                                    ; $64FA: $FF
    rst RST_38                                    ; $64FB: $FF
    rst RST_38                                    ; $64FC: $FF
    rst RST_38                                    ; $64FD: $FF
    rst RST_38                                    ; $64FE: $FF
    rst RST_38                                    ; $64FF: $FF
    rst RST_38                                    ; $6500: $FF
    rst RST_38                                    ; $6501: $FF
    rst RST_38                                    ; $6502: $FF
    rst RST_38                                    ; $6503: $FF
    rst RST_38                                    ; $6504: $FF
    rst RST_38                                    ; $6505: $FF
    rst RST_38                                    ; $6506: $FF
    rst RST_38                                    ; $6507: $FF
    rst RST_38                                    ; $6508: $FF
    rst RST_38                                    ; $6509: $FF
    rst RST_38                                    ; $650A: $FF
    rst RST_38                                    ; $650B: $FF
    rst RST_38                                    ; $650C: $FF
    rst RST_38                                    ; $650D: $FF
    rst RST_38                                    ; $650E: $FF
    rst RST_38                                    ; $650F: $FF
    rst RST_38                                    ; $6510: $FF
    rst RST_38                                    ; $6511: $FF
    rst RST_38                                    ; $6512: $FF
    rst RST_38                                    ; $6513: $FF
    rst RST_38                                    ; $6514: $FF
    rst RST_38                                    ; $6515: $FF
    rst RST_38                                    ; $6516: $FF
    rst RST_38                                    ; $6517: $FF
    rst RST_38                                    ; $6518: $FF
    rst RST_38                                    ; $6519: $FF
    rst RST_38                                    ; $651A: $FF
    rst RST_38                                    ; $651B: $FF
    rst RST_38                                    ; $651C: $FF
    rst RST_38                                    ; $651D: $FF
    rst RST_38                                    ; $651E: $FF
    rst RST_38                                    ; $651F: $FF
    rst RST_38                                    ; $6520: $FF
    rst RST_38                                    ; $6521: $FF
    rst RST_38                                    ; $6522: $FF
    rst RST_38                                    ; $6523: $FF
    rst RST_38                                    ; $6524: $FF
    rst RST_38                                    ; $6525: $FF
    rst RST_38                                    ; $6526: $FF
    rst RST_38                                    ; $6527: $FF
    rst RST_38                                    ; $6528: $FF
    rst RST_38                                    ; $6529: $FF
    rst RST_38                                    ; $652A: $FF
    rst RST_38                                    ; $652B: $FF
    rst RST_38                                    ; $652C: $FF
    rst RST_38                                    ; $652D: $FF
    rst RST_38                                    ; $652E: $FF
    rst RST_38                                    ; $652F: $FF
    rst RST_38                                    ; $6530: $FF
    rst RST_38                                    ; $6531: $FF
    rst RST_38                                    ; $6532: $FF
    rst RST_38                                    ; $6533: $FF
    rst RST_38                                    ; $6534: $FF
    rst RST_38                                    ; $6535: $FF
    rst RST_38                                    ; $6536: $FF
    rst RST_38                                    ; $6537: $FF
    rst RST_38                                    ; $6538: $FF
    rst RST_38                                    ; $6539: $FF
    rst RST_38                                    ; $653A: $FF
    rst RST_38                                    ; $653B: $FF
    rst RST_38                                    ; $653C: $FF
    rst RST_38                                    ; $653D: $FF
    rst RST_38                                    ; $653E: $FF
    rst RST_38                                    ; $653F: $FF
    rst RST_38                                    ; $6540: $FF
    rst RST_38                                    ; $6541: $FF
    rst RST_38                                    ; $6542: $FF
    rst RST_38                                    ; $6543: $FF
    rst RST_38                                    ; $6544: $FF
    rst RST_38                                    ; $6545: $FF
    rst RST_38                                    ; $6546: $FF
    rst RST_38                                    ; $6547: $FF
    rst RST_38                                    ; $6548: $FF
    rst RST_38                                    ; $6549: $FF
    rst RST_38                                    ; $654A: $FF
    rst RST_38                                    ; $654B: $FF
    rst RST_38                                    ; $654C: $FF
    rst RST_38                                    ; $654D: $FF
    rst RST_38                                    ; $654E: $FF
    rst RST_38                                    ; $654F: $FF
    rst RST_38                                    ; $6550: $FF
    rst RST_38                                    ; $6551: $FF
    rst RST_38                                    ; $6552: $FF
    rst RST_38                                    ; $6553: $FF
    rst RST_38                                    ; $6554: $FF
    rst RST_38                                    ; $6555: $FF
    rst RST_38                                    ; $6556: $FF
    rst RST_38                                    ; $6557: $FF
    rst RST_38                                    ; $6558: $FF
    rst RST_38                                    ; $6559: $FF
    rst RST_38                                    ; $655A: $FF
    rst RST_38                                    ; $655B: $FF
    rst RST_38                                    ; $655C: $FF
    rst RST_38                                    ; $655D: $FF
    rst RST_38                                    ; $655E: $FF
    rst RST_38                                    ; $655F: $FF
    rst RST_38                                    ; $6560: $FF
    rst RST_38                                    ; $6561: $FF
    rst RST_38                                    ; $6562: $FF
    rst RST_38                                    ; $6563: $FF
    rst RST_38                                    ; $6564: $FF
    rst RST_38                                    ; $6565: $FF
    rst RST_38                                    ; $6566: $FF
    rst RST_38                                    ; $6567: $FF
    rst RST_38                                    ; $6568: $FF
    rst RST_38                                    ; $6569: $FF
    rst RST_38                                    ; $656A: $FF
    rst RST_38                                    ; $656B: $FF
    rst RST_38                                    ; $656C: $FF
    rst RST_38                                    ; $656D: $FF
    rst RST_38                                    ; $656E: $FF
    rst RST_38                                    ; $656F: $FF
    rst RST_38                                    ; $6570: $FF
    rst RST_38                                    ; $6571: $FF
    rst RST_38                                    ; $6572: $FF
    rst RST_38                                    ; $6573: $FF
    rst RST_38                                    ; $6574: $FF
    rst RST_38                                    ; $6575: $FF
    rst RST_38                                    ; $6576: $FF
    rst RST_38                                    ; $6577: $FF
    rst RST_38                                    ; $6578: $FF
    rst RST_38                                    ; $6579: $FF
    rst RST_38                                    ; $657A: $FF
    rst RST_38                                    ; $657B: $FF
    rst RST_38                                    ; $657C: $FF
    rst RST_38                                    ; $657D: $FF
    rst RST_38                                    ; $657E: $FF
    rst RST_38                                    ; $657F: $FF
    rst RST_38                                    ; $6580: $FF
    rst RST_38                                    ; $6581: $FF
    rst RST_38                                    ; $6582: $FF
    rst RST_38                                    ; $6583: $FF
    rst RST_38                                    ; $6584: $FF
    rst RST_38                                    ; $6585: $FF
    rst RST_38                                    ; $6586: $FF
    rst RST_38                                    ; $6587: $FF
    rst RST_38                                    ; $6588: $FF
    rst RST_38                                    ; $6589: $FF
    rst RST_38                                    ; $658A: $FF
    rst RST_38                                    ; $658B: $FF
    rst RST_38                                    ; $658C: $FF
    rst RST_38                                    ; $658D: $FF
    rst RST_38                                    ; $658E: $FF
    rst RST_38                                    ; $658F: $FF
    rst RST_38                                    ; $6590: $FF
    rst RST_38                                    ; $6591: $FF
    rst RST_38                                    ; $6592: $FF
    rst RST_38                                    ; $6593: $FF
    rst RST_38                                    ; $6594: $FF
    rst RST_38                                    ; $6595: $FF
    rst RST_38                                    ; $6596: $FF
    rst RST_38                                    ; $6597: $FF
    rst RST_38                                    ; $6598: $FF
    rst RST_38                                    ; $6599: $FF
    rst RST_38                                    ; $659A: $FF
    rst RST_38                                    ; $659B: $FF
    rst RST_38                                    ; $659C: $FF
    rst RST_38                                    ; $659D: $FF
    rst RST_38                                    ; $659E: $FF
    rst RST_38                                    ; $659F: $FF
    rst RST_38                                    ; $65A0: $FF
    rst RST_38                                    ; $65A1: $FF
    rst RST_38                                    ; $65A2: $FF
    rst RST_38                                    ; $65A3: $FF
    rst RST_38                                    ; $65A4: $FF
    rst RST_38                                    ; $65A5: $FF
    rst RST_38                                    ; $65A6: $FF
    rst RST_38                                    ; $65A7: $FF
    rst RST_38                                    ; $65A8: $FF
    rst RST_38                                    ; $65A9: $FF
    rst RST_38                                    ; $65AA: $FF
    rst RST_38                                    ; $65AB: $FF
    rst RST_38                                    ; $65AC: $FF
    rst RST_38                                    ; $65AD: $FF
    rst RST_38                                    ; $65AE: $FF
    rst RST_38                                    ; $65AF: $FF
    rst RST_38                                    ; $65B0: $FF
    rst RST_38                                    ; $65B1: $FF
    rst RST_38                                    ; $65B2: $FF
    rst RST_38                                    ; $65B3: $FF
    rst RST_38                                    ; $65B4: $FF
    rst RST_38                                    ; $65B5: $FF
    rst RST_38                                    ; $65B6: $FF
    rst RST_38                                    ; $65B7: $FF
    rst RST_38                                    ; $65B8: $FF
    rst RST_38                                    ; $65B9: $FF
    rst RST_38                                    ; $65BA: $FF
    rst RST_38                                    ; $65BB: $FF
    rst RST_38                                    ; $65BC: $FF
    rst RST_38                                    ; $65BD: $FF
    rst RST_38                                    ; $65BE: $FF
    rst RST_38                                    ; $65BF: $FF
    rst RST_38                                    ; $65C0: $FF
    rst RST_38                                    ; $65C1: $FF
    rst RST_38                                    ; $65C2: $FF
    rst RST_38                                    ; $65C3: $FF
    rst RST_38                                    ; $65C4: $FF
    rst RST_38                                    ; $65C5: $FF
    rst RST_38                                    ; $65C6: $FF
    rst RST_38                                    ; $65C7: $FF
    rst RST_38                                    ; $65C8: $FF
    rst RST_38                                    ; $65C9: $FF
    rst RST_38                                    ; $65CA: $FF
    rst RST_38                                    ; $65CB: $FF
    rst RST_38                                    ; $65CC: $FF
    rst RST_38                                    ; $65CD: $FF
    rst RST_38                                    ; $65CE: $FF
    rst RST_38                                    ; $65CF: $FF
    rst RST_38                                    ; $65D0: $FF
    rst RST_38                                    ; $65D1: $FF
    rst RST_38                                    ; $65D2: $FF
    rst RST_38                                    ; $65D3: $FF
    rst RST_38                                    ; $65D4: $FF
    rst RST_38                                    ; $65D5: $FF
    rst RST_38                                    ; $65D6: $FF
    rst RST_38                                    ; $65D7: $FF
    rst RST_38                                    ; $65D8: $FF
    rst RST_38                                    ; $65D9: $FF
    rst RST_38                                    ; $65DA: $FF
    rst RST_38                                    ; $65DB: $FF
    rst RST_38                                    ; $65DC: $FF
    rst RST_38                                    ; $65DD: $FF
    rst RST_38                                    ; $65DE: $FF
    rst RST_38                                    ; $65DF: $FF
    rst RST_38                                    ; $65E0: $FF
    rst RST_38                                    ; $65E1: $FF
    rst RST_38                                    ; $65E2: $FF
    rst RST_38                                    ; $65E3: $FF
    rst RST_38                                    ; $65E4: $FF
    rst RST_38                                    ; $65E5: $FF
    rst RST_38                                    ; $65E6: $FF
    rst RST_38                                    ; $65E7: $FF
    rst RST_38                                    ; $65E8: $FF
    rst RST_38                                    ; $65E9: $FF
    rst RST_38                                    ; $65EA: $FF
    rst RST_38                                    ; $65EB: $FF
    rst RST_38                                    ; $65EC: $FF
    rst RST_38                                    ; $65ED: $FF
    rst RST_38                                    ; $65EE: $FF
    rst RST_38                                    ; $65EF: $FF
    rst RST_38                                    ; $65F0: $FF
    rst RST_38                                    ; $65F1: $FF
    rst RST_38                                    ; $65F2: $FF
    rst RST_38                                    ; $65F3: $FF
    rst RST_38                                    ; $65F4: $FF
    rst RST_38                                    ; $65F5: $FF
    rst RST_38                                    ; $65F6: $FF
    rst RST_38                                    ; $65F7: $FF
    rst RST_38                                    ; $65F8: $FF
    rst RST_38                                    ; $65F9: $FF
    rst RST_38                                    ; $65FA: $FF
    rst RST_38                                    ; $65FB: $FF
    rst RST_38                                    ; $65FC: $FF
    rst RST_38                                    ; $65FD: $FF
    rst RST_38                                    ; $65FE: $FF
    rst RST_38                                    ; $65FF: $FF
    rst RST_38                                    ; $6600: $FF
    rst RST_38                                    ; $6601: $FF
    rst RST_38                                    ; $6602: $FF
    rst RST_38                                    ; $6603: $FF
    rst RST_38                                    ; $6604: $FF
    rst RST_38                                    ; $6605: $FF
    rst RST_38                                    ; $6606: $FF
    rst RST_38                                    ; $6607: $FF
    rst RST_38                                    ; $6608: $FF
    rst RST_38                                    ; $6609: $FF
    rst RST_38                                    ; $660A: $FF
    rst RST_38                                    ; $660B: $FF
    rst RST_38                                    ; $660C: $FF
    rst RST_38                                    ; $660D: $FF
    rst RST_38                                    ; $660E: $FF
    rst RST_38                                    ; $660F: $FF
    rst RST_38                                    ; $6610: $FF
    rst RST_38                                    ; $6611: $FF
    rst RST_38                                    ; $6612: $FF
    rst RST_38                                    ; $6613: $FF
    rst RST_38                                    ; $6614: $FF
    rst RST_38                                    ; $6615: $FF
    rst RST_38                                    ; $6616: $FF
    rst RST_38                                    ; $6617: $FF
    rst RST_38                                    ; $6618: $FF
    rst RST_38                                    ; $6619: $FF
    rst RST_38                                    ; $661A: $FF
    rst RST_38                                    ; $661B: $FF
    rst RST_38                                    ; $661C: $FF
    rst RST_38                                    ; $661D: $FF
    rst RST_38                                    ; $661E: $FF
    rst RST_38                                    ; $661F: $FF
    rst RST_38                                    ; $6620: $FF
    rst RST_38                                    ; $6621: $FF
    rst RST_38                                    ; $6622: $FF
    rst RST_38                                    ; $6623: $FF
    rst RST_38                                    ; $6624: $FF
    rst RST_38                                    ; $6625: $FF
    rst RST_38                                    ; $6626: $FF
    rst RST_38                                    ; $6627: $FF
    rst RST_38                                    ; $6628: $FF
    rst RST_38                                    ; $6629: $FF
    rst RST_38                                    ; $662A: $FF
    rst RST_38                                    ; $662B: $FF
    rst RST_38                                    ; $662C: $FF
    rst RST_38                                    ; $662D: $FF
    rst RST_38                                    ; $662E: $FF
    rst RST_38                                    ; $662F: $FF
    rst RST_38                                    ; $6630: $FF
    rst RST_38                                    ; $6631: $FF
    rst RST_38                                    ; $6632: $FF
    rst RST_38                                    ; $6633: $FF
    rst RST_38                                    ; $6634: $FF
    rst RST_38                                    ; $6635: $FF
    rst RST_38                                    ; $6636: $FF
    rst RST_38                                    ; $6637: $FF
    rst RST_38                                    ; $6638: $FF
    rst RST_38                                    ; $6639: $FF
    rst RST_38                                    ; $663A: $FF
    rst RST_38                                    ; $663B: $FF
    rst RST_38                                    ; $663C: $FF
    rst RST_38                                    ; $663D: $FF
    rst RST_38                                    ; $663E: $FF
    rst RST_38                                    ; $663F: $FF
    rst RST_38                                    ; $6640: $FF
    rst RST_38                                    ; $6641: $FF
    rst RST_38                                    ; $6642: $FF
    rst RST_38                                    ; $6643: $FF
    rst RST_38                                    ; $6644: $FF
    rst RST_38                                    ; $6645: $FF
    rst RST_38                                    ; $6646: $FF
    rst RST_38                                    ; $6647: $FF
    rst RST_38                                    ; $6648: $FF
    rst RST_38                                    ; $6649: $FF
    rst RST_38                                    ; $664A: $FF
    rst RST_38                                    ; $664B: $FF
    rst RST_38                                    ; $664C: $FF
    rst RST_38                                    ; $664D: $FF
    rst RST_38                                    ; $664E: $FF
    rst RST_38                                    ; $664F: $FF
    rst RST_38                                    ; $6650: $FF
    rst RST_38                                    ; $6651: $FF
    rst RST_38                                    ; $6652: $FF
    rst RST_38                                    ; $6653: $FF
    rst RST_38                                    ; $6654: $FF
    rst RST_38                                    ; $6655: $FF
    rst RST_38                                    ; $6656: $FF
    rst RST_38                                    ; $6657: $FF
    rst RST_38                                    ; $6658: $FF
    rst RST_38                                    ; $6659: $FF
    rst RST_38                                    ; $665A: $FF
    rst RST_38                                    ; $665B: $FF
    rst RST_38                                    ; $665C: $FF
    rst RST_38                                    ; $665D: $FF
    rst RST_38                                    ; $665E: $FF
    rst RST_38                                    ; $665F: $FF
    rst RST_38                                    ; $6660: $FF
    rst RST_38                                    ; $6661: $FF
    rst RST_38                                    ; $6662: $FF
    rst RST_38                                    ; $6663: $FF
    rst RST_38                                    ; $6664: $FF
    rst RST_38                                    ; $6665: $FF
    rst RST_38                                    ; $6666: $FF
    rst RST_38                                    ; $6667: $FF
    rst RST_38                                    ; $6668: $FF
    rst RST_38                                    ; $6669: $FF
    rst RST_38                                    ; $666A: $FF
    rst RST_38                                    ; $666B: $FF
    rst RST_38                                    ; $666C: $FF
    rst RST_38                                    ; $666D: $FF
    rst RST_38                                    ; $666E: $FF
    rst RST_38                                    ; $666F: $FF
    rst RST_38                                    ; $6670: $FF
    rst RST_38                                    ; $6671: $FF
    rst RST_38                                    ; $6672: $FF
    rst RST_38                                    ; $6673: $FF
    rst RST_38                                    ; $6674: $FF
    rst RST_38                                    ; $6675: $FF
    rst RST_38                                    ; $6676: $FF
    rst RST_38                                    ; $6677: $FF
    rst RST_38                                    ; $6678: $FF
    rst RST_38                                    ; $6679: $FF
    rst RST_38                                    ; $667A: $FF
    rst RST_38                                    ; $667B: $FF
    rst RST_38                                    ; $667C: $FF
    rst RST_38                                    ; $667D: $FF
    rst RST_38                                    ; $667E: $FF
    rst RST_38                                    ; $667F: $FF
    rst RST_38                                    ; $6680: $FF
    rst RST_38                                    ; $6681: $FF
    rst RST_38                                    ; $6682: $FF
    rst RST_38                                    ; $6683: $FF
    rst RST_38                                    ; $6684: $FF
    rst RST_38                                    ; $6685: $FF
    rst RST_38                                    ; $6686: $FF
    rst RST_38                                    ; $6687: $FF
    rst RST_38                                    ; $6688: $FF
    rst RST_38                                    ; $6689: $FF
    rst RST_38                                    ; $668A: $FF
    rst RST_38                                    ; $668B: $FF
    rst RST_38                                    ; $668C: $FF
    rst RST_38                                    ; $668D: $FF
    rst RST_38                                    ; $668E: $FF
    rst RST_38                                    ; $668F: $FF
    rst RST_38                                    ; $6690: $FF
    rst RST_38                                    ; $6691: $FF
    rst RST_38                                    ; $6692: $FF
    rst RST_38                                    ; $6693: $FF
    rst RST_38                                    ; $6694: $FF
    rst RST_38                                    ; $6695: $FF
    rst RST_38                                    ; $6696: $FF
    rst RST_38                                    ; $6697: $FF
    rst RST_38                                    ; $6698: $FF
    rst RST_38                                    ; $6699: $FF
    rst RST_38                                    ; $669A: $FF
    rst RST_38                                    ; $669B: $FF
    rst RST_38                                    ; $669C: $FF
    rst RST_38                                    ; $669D: $FF
    rst RST_38                                    ; $669E: $FF
    rst RST_38                                    ; $669F: $FF
    rst RST_38                                    ; $66A0: $FF
    rst RST_38                                    ; $66A1: $FF
    rst RST_38                                    ; $66A2: $FF
    rst RST_38                                    ; $66A3: $FF
    rst RST_38                                    ; $66A4: $FF
    rst RST_38                                    ; $66A5: $FF
    rst RST_38                                    ; $66A6: $FF
    rst RST_38                                    ; $66A7: $FF
    rst RST_38                                    ; $66A8: $FF
    rst RST_38                                    ; $66A9: $FF
    rst RST_38                                    ; $66AA: $FF
    rst RST_38                                    ; $66AB: $FF
    rst RST_38                                    ; $66AC: $FF
    rst RST_38                                    ; $66AD: $FF
    rst RST_38                                    ; $66AE: $FF
    rst RST_38                                    ; $66AF: $FF
    rst RST_38                                    ; $66B0: $FF
    rst RST_38                                    ; $66B1: $FF
    rst RST_38                                    ; $66B2: $FF
    rst RST_38                                    ; $66B3: $FF
    rst RST_38                                    ; $66B4: $FF
    rst RST_38                                    ; $66B5: $FF
    rst RST_38                                    ; $66B6: $FF
    rst RST_38                                    ; $66B7: $FF
    rst RST_38                                    ; $66B8: $FF
    rst RST_38                                    ; $66B9: $FF
    rst RST_38                                    ; $66BA: $FF
    rst RST_38                                    ; $66BB: $FF
    rst RST_38                                    ; $66BC: $FF
    rst RST_38                                    ; $66BD: $FF
    rst RST_38                                    ; $66BE: $FF
    rst RST_38                                    ; $66BF: $FF
    rst RST_38                                    ; $66C0: $FF
    rst RST_38                                    ; $66C1: $FF
    rst RST_38                                    ; $66C2: $FF
    rst RST_38                                    ; $66C3: $FF
    rst RST_38                                    ; $66C4: $FF
    rst RST_38                                    ; $66C5: $FF
    rst RST_38                                    ; $66C6: $FF
    rst RST_38                                    ; $66C7: $FF
    rst RST_38                                    ; $66C8: $FF
    rst RST_38                                    ; $66C9: $FF
    rst RST_38                                    ; $66CA: $FF
    rst RST_38                                    ; $66CB: $FF
    rst RST_38                                    ; $66CC: $FF
    rst RST_38                                    ; $66CD: $FF
    rst RST_38                                    ; $66CE: $FF
    rst RST_38                                    ; $66CF: $FF
    rst RST_38                                    ; $66D0: $FF
    rst RST_38                                    ; $66D1: $FF
    rst RST_38                                    ; $66D2: $FF
    rst RST_38                                    ; $66D3: $FF
    rst RST_38                                    ; $66D4: $FF
    rst RST_38                                    ; $66D5: $FF
    rst RST_38                                    ; $66D6: $FF
    rst RST_38                                    ; $66D7: $FF
    rst RST_38                                    ; $66D8: $FF
    rst RST_38                                    ; $66D9: $FF
    rst RST_38                                    ; $66DA: $FF
    rst RST_38                                    ; $66DB: $FF
    rst RST_38                                    ; $66DC: $FF
    rst RST_38                                    ; $66DD: $FF
    rst RST_38                                    ; $66DE: $FF
    rst RST_38                                    ; $66DF: $FF
    rst RST_38                                    ; $66E0: $FF
    rst RST_38                                    ; $66E1: $FF
    rst RST_38                                    ; $66E2: $FF
    rst RST_38                                    ; $66E3: $FF
    rst RST_38                                    ; $66E4: $FF
    rst RST_38                                    ; $66E5: $FF
    rst RST_38                                    ; $66E6: $FF
    rst RST_38                                    ; $66E7: $FF
    rst RST_38                                    ; $66E8: $FF
    rst RST_38                                    ; $66E9: $FF
    rst RST_38                                    ; $66EA: $FF
    rst RST_38                                    ; $66EB: $FF
    rst RST_38                                    ; $66EC: $FF
    rst RST_38                                    ; $66ED: $FF
    rst RST_38                                    ; $66EE: $FF
    rst RST_38                                    ; $66EF: $FF
    rst RST_38                                    ; $66F0: $FF
    rst RST_38                                    ; $66F1: $FF
    rst RST_38                                    ; $66F2: $FF
    rst RST_38                                    ; $66F3: $FF
    rst RST_38                                    ; $66F4: $FF
    rst RST_38                                    ; $66F5: $FF
    rst RST_38                                    ; $66F6: $FF
    rst RST_38                                    ; $66F7: $FF
    rst RST_38                                    ; $66F8: $FF
    rst RST_38                                    ; $66F9: $FF
    rst RST_38                                    ; $66FA: $FF
    rst RST_38                                    ; $66FB: $FF
    rst RST_38                                    ; $66FC: $FF
    rst RST_38                                    ; $66FD: $FF
    rst RST_38                                    ; $66FE: $FF
    rst RST_38                                    ; $66FF: $FF
    rst RST_38                                    ; $6700: $FF
    rst RST_38                                    ; $6701: $FF
    rst RST_38                                    ; $6702: $FF
    rst RST_38                                    ; $6703: $FF
    rst RST_38                                    ; $6704: $FF
    rst RST_38                                    ; $6705: $FF
    rst RST_38                                    ; $6706: $FF
    rst RST_38                                    ; $6707: $FF
    rst RST_38                                    ; $6708: $FF
    rst RST_38                                    ; $6709: $FF
    rst RST_38                                    ; $670A: $FF
    rst RST_38                                    ; $670B: $FF
    rst RST_38                                    ; $670C: $FF
    rst RST_38                                    ; $670D: $FF
    rst RST_38                                    ; $670E: $FF
    rst RST_38                                    ; $670F: $FF
    rst RST_38                                    ; $6710: $FF
    rst RST_38                                    ; $6711: $FF
    rst RST_38                                    ; $6712: $FF
    rst RST_38                                    ; $6713: $FF
    rst RST_38                                    ; $6714: $FF
    rst RST_38                                    ; $6715: $FF
    rst RST_38                                    ; $6716: $FF
    rst RST_38                                    ; $6717: $FF
    rst RST_38                                    ; $6718: $FF
    rst RST_38                                    ; $6719: $FF
    rst RST_38                                    ; $671A: $FF
    rst RST_38                                    ; $671B: $FF
    rst RST_38                                    ; $671C: $FF
    rst RST_38                                    ; $671D: $FF
    rst RST_38                                    ; $671E: $FF
    rst RST_38                                    ; $671F: $FF
    rst RST_38                                    ; $6720: $FF
    rst RST_38                                    ; $6721: $FF
    rst RST_38                                    ; $6722: $FF
    rst RST_38                                    ; $6723: $FF
    rst RST_38                                    ; $6724: $FF
    rst RST_38                                    ; $6725: $FF
    rst RST_38                                    ; $6726: $FF
    rst RST_38                                    ; $6727: $FF
    rst RST_38                                    ; $6728: $FF
    rst RST_38                                    ; $6729: $FF
    rst RST_38                                    ; $672A: $FF
    rst RST_38                                    ; $672B: $FF
    rst RST_38                                    ; $672C: $FF
    rst RST_38                                    ; $672D: $FF
    rst RST_38                                    ; $672E: $FF
    rst RST_38                                    ; $672F: $FF
    rst RST_38                                    ; $6730: $FF
    rst RST_38                                    ; $6731: $FF
    rst RST_38                                    ; $6732: $FF
    rst RST_38                                    ; $6733: $FF
    rst RST_38                                    ; $6734: $FF
    rst RST_38                                    ; $6735: $FF
    rst RST_38                                    ; $6736: $FF
    rst RST_38                                    ; $6737: $FF
    rst RST_38                                    ; $6738: $FF
    rst RST_38                                    ; $6739: $FF
    rst RST_38                                    ; $673A: $FF
    rst RST_38                                    ; $673B: $FF
    rst RST_38                                    ; $673C: $FF
    rst RST_38                                    ; $673D: $FF
    rst RST_38                                    ; $673E: $FF
    rst RST_38                                    ; $673F: $FF
    rst RST_38                                    ; $6740: $FF
    rst RST_38                                    ; $6741: $FF
    rst RST_38                                    ; $6742: $FF
    rst RST_38                                    ; $6743: $FF
    rst RST_38                                    ; $6744: $FF
    rst RST_38                                    ; $6745: $FF
    rst RST_38                                    ; $6746: $FF
    rst RST_38                                    ; $6747: $FF
    rst RST_38                                    ; $6748: $FF
    rst RST_38                                    ; $6749: $FF
    rst RST_38                                    ; $674A: $FF
    rst RST_38                                    ; $674B: $FF
    rst RST_38                                    ; $674C: $FF
    rst RST_38                                    ; $674D: $FF
    rst RST_38                                    ; $674E: $FF
    rst RST_38                                    ; $674F: $FF
    rst RST_38                                    ; $6750: $FF
    rst RST_38                                    ; $6751: $FF
    rst RST_38                                    ; $6752: $FF
    rst RST_38                                    ; $6753: $FF
    rst RST_38                                    ; $6754: $FF
    rst RST_38                                    ; $6755: $FF
    rst RST_38                                    ; $6756: $FF
    rst RST_38                                    ; $6757: $FF
    rst RST_38                                    ; $6758: $FF
    rst RST_38                                    ; $6759: $FF
    rst RST_38                                    ; $675A: $FF
    rst RST_38                                    ; $675B: $FF
    rst RST_38                                    ; $675C: $FF
    rst RST_38                                    ; $675D: $FF
    rst RST_38                                    ; $675E: $FF
    rst RST_38                                    ; $675F: $FF
    rst RST_38                                    ; $6760: $FF
    rst RST_38                                    ; $6761: $FF
    rst RST_38                                    ; $6762: $FF
    rst RST_38                                    ; $6763: $FF
    rst RST_38                                    ; $6764: $FF
    rst RST_38                                    ; $6765: $FF
    rst RST_38                                    ; $6766: $FF
    rst RST_38                                    ; $6767: $FF
    rst RST_38                                    ; $6768: $FF
    rst RST_38                                    ; $6769: $FF
    rst RST_38                                    ; $676A: $FF
    rst RST_38                                    ; $676B: $FF
    rst RST_38                                    ; $676C: $FF
    rst RST_38                                    ; $676D: $FF
    rst RST_38                                    ; $676E: $FF
    rst RST_38                                    ; $676F: $FF
    rst RST_38                                    ; $6770: $FF
    rst RST_38                                    ; $6771: $FF
    rst RST_38                                    ; $6772: $FF
    rst RST_38                                    ; $6773: $FF
    rst RST_38                                    ; $6774: $FF
    rst RST_38                                    ; $6775: $FF
    rst RST_38                                    ; $6776: $FF
    rst RST_38                                    ; $6777: $FF
    rst RST_38                                    ; $6778: $FF
    rst RST_38                                    ; $6779: $FF
    rst RST_38                                    ; $677A: $FF
    rst RST_38                                    ; $677B: $FF
    rst RST_38                                    ; $677C: $FF
    rst RST_38                                    ; $677D: $FF
    rst RST_38                                    ; $677E: $FF
    rst RST_38                                    ; $677F: $FF
    rst RST_38                                    ; $6780: $FF
    rst RST_38                                    ; $6781: $FF
    rst RST_38                                    ; $6782: $FF
    rst RST_38                                    ; $6783: $FF
    rst RST_38                                    ; $6784: $FF
    rst RST_38                                    ; $6785: $FF
    rst RST_38                                    ; $6786: $FF
    rst RST_38                                    ; $6787: $FF
    rst RST_38                                    ; $6788: $FF
    rst RST_38                                    ; $6789: $FF
    rst RST_38                                    ; $678A: $FF
    rst RST_38                                    ; $678B: $FF
    rst RST_38                                    ; $678C: $FF
    rst RST_38                                    ; $678D: $FF
    rst RST_38                                    ; $678E: $FF
    rst RST_38                                    ; $678F: $FF
    rst RST_38                                    ; $6790: $FF
    rst RST_38                                    ; $6791: $FF
    rst RST_38                                    ; $6792: $FF
    rst RST_38                                    ; $6793: $FF
    rst RST_38                                    ; $6794: $FF
    rst RST_38                                    ; $6795: $FF
    rst RST_38                                    ; $6796: $FF
    rst RST_38                                    ; $6797: $FF
    rst RST_38                                    ; $6798: $FF
    rst RST_38                                    ; $6799: $FF
    rst RST_38                                    ; $679A: $FF
    rst RST_38                                    ; $679B: $FF
    rst RST_38                                    ; $679C: $FF
    rst RST_38                                    ; $679D: $FF
    rst RST_38                                    ; $679E: $FF
    rst RST_38                                    ; $679F: $FF
    rst RST_38                                    ; $67A0: $FF
    rst RST_38                                    ; $67A1: $FF
    rst RST_38                                    ; $67A2: $FF
    rst RST_38                                    ; $67A3: $FF
    rst RST_38                                    ; $67A4: $FF
    rst RST_38                                    ; $67A5: $FF
    rst RST_38                                    ; $67A6: $FF
    rst RST_38                                    ; $67A7: $FF
    rst RST_38                                    ; $67A8: $FF
    rst RST_38                                    ; $67A9: $FF
    rst RST_38                                    ; $67AA: $FF
    rst RST_38                                    ; $67AB: $FF
    rst RST_38                                    ; $67AC: $FF
    rst RST_38                                    ; $67AD: $FF
    rst RST_38                                    ; $67AE: $FF
    rst RST_38                                    ; $67AF: $FF
    rst RST_38                                    ; $67B0: $FF
    rst RST_38                                    ; $67B1: $FF
    rst RST_38                                    ; $67B2: $FF
    rst RST_38                                    ; $67B3: $FF
    rst RST_38                                    ; $67B4: $FF
    rst RST_38                                    ; $67B5: $FF
    rst RST_38                                    ; $67B6: $FF
    rst RST_38                                    ; $67B7: $FF
    rst RST_38                                    ; $67B8: $FF
    rst RST_38                                    ; $67B9: $FF
    rst RST_38                                    ; $67BA: $FF
    rst RST_38                                    ; $67BB: $FF
    rst RST_38                                    ; $67BC: $FF
    rst RST_38                                    ; $67BD: $FF
    rst RST_38                                    ; $67BE: $FF
    rst RST_38                                    ; $67BF: $FF
    rst RST_38                                    ; $67C0: $FF
    rst RST_38                                    ; $67C1: $FF
    rst RST_38                                    ; $67C2: $FF
    rst RST_38                                    ; $67C3: $FF
    rst RST_38                                    ; $67C4: $FF
    rst RST_38                                    ; $67C5: $FF
    rst RST_38                                    ; $67C6: $FF
    rst RST_38                                    ; $67C7: $FF
    rst RST_38                                    ; $67C8: $FF
    rst RST_38                                    ; $67C9: $FF
    rst RST_38                                    ; $67CA: $FF
    rst RST_38                                    ; $67CB: $FF
    rst RST_38                                    ; $67CC: $FF
    rst RST_38                                    ; $67CD: $FF
    rst RST_38                                    ; $67CE: $FF
    rst RST_38                                    ; $67CF: $FF
    rst RST_38                                    ; $67D0: $FF
    rst RST_38                                    ; $67D1: $FF
    rst RST_38                                    ; $67D2: $FF
    rst RST_38                                    ; $67D3: $FF
    rst RST_38                                    ; $67D4: $FF
    rst RST_38                                    ; $67D5: $FF
    rst RST_38                                    ; $67D6: $FF
    rst RST_38                                    ; $67D7: $FF
    rst RST_38                                    ; $67D8: $FF
    rst RST_38                                    ; $67D9: $FF
    rst RST_38                                    ; $67DA: $FF
    rst RST_38                                    ; $67DB: $FF
    rst RST_38                                    ; $67DC: $FF
    rst RST_38                                    ; $67DD: $FF
    rst RST_38                                    ; $67DE: $FF
    rst RST_38                                    ; $67DF: $FF
    rst RST_38                                    ; $67E0: $FF
    rst RST_38                                    ; $67E1: $FF
    rst RST_38                                    ; $67E2: $FF
    rst RST_38                                    ; $67E3: $FF
    rst RST_38                                    ; $67E4: $FF
    rst RST_38                                    ; $67E5: $FF
    rst RST_38                                    ; $67E6: $FF
    rst RST_38                                    ; $67E7: $FF
    rst RST_38                                    ; $67E8: $FF
    rst RST_38                                    ; $67E9: $FF
    rst RST_38                                    ; $67EA: $FF
    rst RST_38                                    ; $67EB: $FF
    rst RST_38                                    ; $67EC: $FF
    rst RST_38                                    ; $67ED: $FF
    rst RST_38                                    ; $67EE: $FF
    rst RST_38                                    ; $67EF: $FF
    rst RST_38                                    ; $67F0: $FF
    rst RST_38                                    ; $67F1: $FF
    rst RST_38                                    ; $67F2: $FF
    rst RST_38                                    ; $67F3: $FF
    rst RST_38                                    ; $67F4: $FF
    rst RST_38                                    ; $67F5: $FF
    rst RST_38                                    ; $67F6: $FF
    rst RST_38                                    ; $67F7: $FF
    rst RST_38                                    ; $67F8: $FF
    rst RST_38                                    ; $67F9: $FF
    rst RST_38                                    ; $67FA: $FF
    rst RST_38                                    ; $67FB: $FF
    rst RST_38                                    ; $67FC: $FF
    rst RST_38                                    ; $67FD: $FF
    rst RST_38                                    ; $67FE: $FF
    rst RST_38                                    ; $67FF: $FF
    rst RST_38                                    ; $6800: $FF
    rst RST_38                                    ; $6801: $FF
    rst RST_38                                    ; $6802: $FF
    rst RST_38                                    ; $6803: $FF
    rst RST_38                                    ; $6804: $FF
    rst RST_38                                    ; $6805: $FF
    rst RST_38                                    ; $6806: $FF
    rst RST_38                                    ; $6807: $FF
    rst RST_38                                    ; $6808: $FF
    rst RST_38                                    ; $6809: $FF
    rst RST_38                                    ; $680A: $FF
    rst RST_38                                    ; $680B: $FF
    rst RST_38                                    ; $680C: $FF
    rst RST_38                                    ; $680D: $FF
    rst RST_38                                    ; $680E: $FF
    rst RST_38                                    ; $680F: $FF
    rst RST_38                                    ; $6810: $FF
    rst RST_38                                    ; $6811: $FF
    rst RST_38                                    ; $6812: $FF
    rst RST_38                                    ; $6813: $FF
    rst RST_38                                    ; $6814: $FF
    rst RST_38                                    ; $6815: $FF
    rst RST_38                                    ; $6816: $FF
    rst RST_38                                    ; $6817: $FF
    rst RST_38                                    ; $6818: $FF
    rst RST_38                                    ; $6819: $FF
    rst RST_38                                    ; $681A: $FF
    rst RST_38                                    ; $681B: $FF
    rst RST_38                                    ; $681C: $FF
    rst RST_38                                    ; $681D: $FF
    rst RST_38                                    ; $681E: $FF
    rst RST_38                                    ; $681F: $FF
    rst RST_38                                    ; $6820: $FF
    rst RST_38                                    ; $6821: $FF
    rst RST_38                                    ; $6822: $FF
    rst RST_38                                    ; $6823: $FF
    rst RST_38                                    ; $6824: $FF
    rst RST_38                                    ; $6825: $FF
    rst RST_38                                    ; $6826: $FF
    rst RST_38                                    ; $6827: $FF
    rst RST_38                                    ; $6828: $FF
    rst RST_38                                    ; $6829: $FF
    rst RST_38                                    ; $682A: $FF
    rst RST_38                                    ; $682B: $FF
    rst RST_38                                    ; $682C: $FF
    rst RST_38                                    ; $682D: $FF
    rst RST_38                                    ; $682E: $FF
    rst RST_38                                    ; $682F: $FF
    rst RST_38                                    ; $6830: $FF
    rst RST_38                                    ; $6831: $FF
    rst RST_38                                    ; $6832: $FF
    rst RST_38                                    ; $6833: $FF
    rst RST_38                                    ; $6834: $FF
    rst RST_38                                    ; $6835: $FF
    rst RST_38                                    ; $6836: $FF
    rst RST_38                                    ; $6837: $FF
    rst RST_38                                    ; $6838: $FF
    rst RST_38                                    ; $6839: $FF
    rst RST_38                                    ; $683A: $FF
    rst RST_38                                    ; $683B: $FF
    rst RST_38                                    ; $683C: $FF
    rst RST_38                                    ; $683D: $FF
    rst RST_38                                    ; $683E: $FF
    rst RST_38                                    ; $683F: $FF
    rst RST_38                                    ; $6840: $FF
    rst RST_38                                    ; $6841: $FF
    rst RST_38                                    ; $6842: $FF
    rst RST_38                                    ; $6843: $FF
    rst RST_38                                    ; $6844: $FF
    rst RST_38                                    ; $6845: $FF
    rst RST_38                                    ; $6846: $FF
    rst RST_38                                    ; $6847: $FF
    rst RST_38                                    ; $6848: $FF
    rst RST_38                                    ; $6849: $FF
    rst RST_38                                    ; $684A: $FF
    rst RST_38                                    ; $684B: $FF
    rst RST_38                                    ; $684C: $FF
    rst RST_38                                    ; $684D: $FF
    rst RST_38                                    ; $684E: $FF
    rst RST_38                                    ; $684F: $FF
    rst RST_38                                    ; $6850: $FF
    rst RST_38                                    ; $6851: $FF
    rst RST_38                                    ; $6852: $FF
    rst RST_38                                    ; $6853: $FF
    rst RST_38                                    ; $6854: $FF
    rst RST_38                                    ; $6855: $FF
    rst RST_38                                    ; $6856: $FF
    rst RST_38                                    ; $6857: $FF
    rst RST_38                                    ; $6858: $FF
    rst RST_38                                    ; $6859: $FF
    rst RST_38                                    ; $685A: $FF
    rst RST_38                                    ; $685B: $FF
    rst RST_38                                    ; $685C: $FF
    rst RST_38                                    ; $685D: $FF
    rst RST_38                                    ; $685E: $FF
    rst RST_38                                    ; $685F: $FF
    rst RST_38                                    ; $6860: $FF
    rst RST_38                                    ; $6861: $FF
    rst RST_38                                    ; $6862: $FF
    rst RST_38                                    ; $6863: $FF
    rst RST_38                                    ; $6864: $FF
    rst RST_38                                    ; $6865: $FF
    rst RST_38                                    ; $6866: $FF
    rst RST_38                                    ; $6867: $FF
    rst RST_38                                    ; $6868: $FF
    rst RST_38                                    ; $6869: $FF
    rst RST_38                                    ; $686A: $FF
    rst RST_38                                    ; $686B: $FF
    rst RST_38                                    ; $686C: $FF
    rst RST_38                                    ; $686D: $FF
    rst RST_38                                    ; $686E: $FF
    rst RST_38                                    ; $686F: $FF
    rst RST_38                                    ; $6870: $FF
    rst RST_38                                    ; $6871: $FF
    rst RST_38                                    ; $6872: $FF
    rst RST_38                                    ; $6873: $FF
    rst RST_38                                    ; $6874: $FF
    rst RST_38                                    ; $6875: $FF
    rst RST_38                                    ; $6876: $FF
    rst RST_38                                    ; $6877: $FF
    rst RST_38                                    ; $6878: $FF
    rst RST_38                                    ; $6879: $FF
    rst RST_38                                    ; $687A: $FF
    rst RST_38                                    ; $687B: $FF
    rst RST_38                                    ; $687C: $FF
    rst RST_38                                    ; $687D: $FF
    rst RST_38                                    ; $687E: $FF
    rst RST_38                                    ; $687F: $FF
    rst RST_38                                    ; $6880: $FF
    rst RST_38                                    ; $6881: $FF
    rst RST_38                                    ; $6882: $FF
    rst RST_38                                    ; $6883: $FF
    rst RST_38                                    ; $6884: $FF
    rst RST_38                                    ; $6885: $FF
    rst RST_38                                    ; $6886: $FF
    rst RST_38                                    ; $6887: $FF
    rst RST_38                                    ; $6888: $FF
    rst RST_38                                    ; $6889: $FF
    rst RST_38                                    ; $688A: $FF
    rst RST_38                                    ; $688B: $FF
    rst RST_38                                    ; $688C: $FF
    rst RST_38                                    ; $688D: $FF
    rst RST_38                                    ; $688E: $FF
    rst RST_38                                    ; $688F: $FF
    rst RST_38                                    ; $6890: $FF
    rst RST_38                                    ; $6891: $FF
    rst RST_38                                    ; $6892: $FF
    rst RST_38                                    ; $6893: $FF
    rst RST_38                                    ; $6894: $FF
    rst RST_38                                    ; $6895: $FF
    rst RST_38                                    ; $6896: $FF
    rst RST_38                                    ; $6897: $FF
    rst RST_38                                    ; $6898: $FF
    rst RST_38                                    ; $6899: $FF
    rst RST_38                                    ; $689A: $FF
    rst RST_38                                    ; $689B: $FF
    rst RST_38                                    ; $689C: $FF
    rst RST_38                                    ; $689D: $FF
    rst RST_38                                    ; $689E: $FF
    rst RST_38                                    ; $689F: $FF
    rst RST_38                                    ; $68A0: $FF
    rst RST_38                                    ; $68A1: $FF
    rst RST_38                                    ; $68A2: $FF
    rst RST_38                                    ; $68A3: $FF
    rst RST_38                                    ; $68A4: $FF
    rst RST_38                                    ; $68A5: $FF
    rst RST_38                                    ; $68A6: $FF
    rst RST_38                                    ; $68A7: $FF
    rst RST_38                                    ; $68A8: $FF
    rst RST_38                                    ; $68A9: $FF
    rst RST_38                                    ; $68AA: $FF
    rst RST_38                                    ; $68AB: $FF
    rst RST_38                                    ; $68AC: $FF
    rst RST_38                                    ; $68AD: $FF
    rst RST_38                                    ; $68AE: $FF
    rst RST_38                                    ; $68AF: $FF
    rst RST_38                                    ; $68B0: $FF
    rst RST_38                                    ; $68B1: $FF
    rst RST_38                                    ; $68B2: $FF
    rst RST_38                                    ; $68B3: $FF
    rst RST_38                                    ; $68B4: $FF
    rst RST_38                                    ; $68B5: $FF
    rst RST_38                                    ; $68B6: $FF
    rst RST_38                                    ; $68B7: $FF
    rst RST_38                                    ; $68B8: $FF
    rst RST_38                                    ; $68B9: $FF
    rst RST_38                                    ; $68BA: $FF
    rst RST_38                                    ; $68BB: $FF
    rst RST_38                                    ; $68BC: $FF
    rst RST_38                                    ; $68BD: $FF
    rst RST_38                                    ; $68BE: $FF
    rst RST_38                                    ; $68BF: $FF
    rst RST_38                                    ; $68C0: $FF
    rst RST_38                                    ; $68C1: $FF
    rst RST_38                                    ; $68C2: $FF
    rst RST_38                                    ; $68C3: $FF
    rst RST_38                                    ; $68C4: $FF
    rst RST_38                                    ; $68C5: $FF
    rst RST_38                                    ; $68C6: $FF
    rst RST_38                                    ; $68C7: $FF
    rst RST_38                                    ; $68C8: $FF
    rst RST_38                                    ; $68C9: $FF
    rst RST_38                                    ; $68CA: $FF
    rst RST_38                                    ; $68CB: $FF
    rst RST_38                                    ; $68CC: $FF
    rst RST_38                                    ; $68CD: $FF
    rst RST_38                                    ; $68CE: $FF
    rst RST_38                                    ; $68CF: $FF
    rst RST_38                                    ; $68D0: $FF
    rst RST_38                                    ; $68D1: $FF
    rst RST_38                                    ; $68D2: $FF
    rst RST_38                                    ; $68D3: $FF
    rst RST_38                                    ; $68D4: $FF
    rst RST_38                                    ; $68D5: $FF
    rst RST_38                                    ; $68D6: $FF
    rst RST_38                                    ; $68D7: $FF
    rst RST_38                                    ; $68D8: $FF
    rst RST_38                                    ; $68D9: $FF
    rst RST_38                                    ; $68DA: $FF
    rst RST_38                                    ; $68DB: $FF
    rst RST_38                                    ; $68DC: $FF
    rst RST_38                                    ; $68DD: $FF
    rst RST_38                                    ; $68DE: $FF
    rst RST_38                                    ; $68DF: $FF
    rst RST_38                                    ; $68E0: $FF
    rst RST_38                                    ; $68E1: $FF
    rst RST_38                                    ; $68E2: $FF
    rst RST_38                                    ; $68E3: $FF
    rst RST_38                                    ; $68E4: $FF
    rst RST_38                                    ; $68E5: $FF
    rst RST_38                                    ; $68E6: $FF
    rst RST_38                                    ; $68E7: $FF
    rst RST_38                                    ; $68E8: $FF
    rst RST_38                                    ; $68E9: $FF
    rst RST_38                                    ; $68EA: $FF
    rst RST_38                                    ; $68EB: $FF
    rst RST_38                                    ; $68EC: $FF
    rst RST_38                                    ; $68ED: $FF
    rst RST_38                                    ; $68EE: $FF
    rst RST_38                                    ; $68EF: $FF
    rst RST_38                                    ; $68F0: $FF
    rst RST_38                                    ; $68F1: $FF
    rst RST_38                                    ; $68F2: $FF
    rst RST_38                                    ; $68F3: $FF
    rst RST_38                                    ; $68F4: $FF
    rst RST_38                                    ; $68F5: $FF
    rst RST_38                                    ; $68F6: $FF
    rst RST_38                                    ; $68F7: $FF
    rst RST_38                                    ; $68F8: $FF
    rst RST_38                                    ; $68F9: $FF
    rst RST_38                                    ; $68FA: $FF
    rst RST_38                                    ; $68FB: $FF
    rst RST_38                                    ; $68FC: $FF
    rst RST_38                                    ; $68FD: $FF
    rst RST_38                                    ; $68FE: $FF
    rst RST_38                                    ; $68FF: $FF
    rst RST_38                                    ; $6900: $FF
    rst RST_38                                    ; $6901: $FF
    rst RST_38                                    ; $6902: $FF
    rst RST_38                                    ; $6903: $FF
    rst RST_38                                    ; $6904: $FF
    rst RST_38                                    ; $6905: $FF
    rst RST_38                                    ; $6906: $FF
    rst RST_38                                    ; $6907: $FF
    rst RST_38                                    ; $6908: $FF
    rst RST_38                                    ; $6909: $FF
    rst RST_38                                    ; $690A: $FF
    rst RST_38                                    ; $690B: $FF
    rst RST_38                                    ; $690C: $FF
    rst RST_38                                    ; $690D: $FF
    rst RST_38                                    ; $690E: $FF
    rst RST_38                                    ; $690F: $FF
    rst RST_38                                    ; $6910: $FF
    rst RST_38                                    ; $6911: $FF
    rst RST_38                                    ; $6912: $FF
    rst RST_38                                    ; $6913: $FF
    rst RST_38                                    ; $6914: $FF
    rst RST_38                                    ; $6915: $FF
    rst RST_38                                    ; $6916: $FF
    rst RST_38                                    ; $6917: $FF
    rst RST_38                                    ; $6918: $FF
    rst RST_38                                    ; $6919: $FF
    rst RST_38                                    ; $691A: $FF
    rst RST_38                                    ; $691B: $FF
    rst RST_38                                    ; $691C: $FF
    rst RST_38                                    ; $691D: $FF
    rst RST_38                                    ; $691E: $FF
    rst RST_38                                    ; $691F: $FF
    rst RST_38                                    ; $6920: $FF
    rst RST_38                                    ; $6921: $FF
    rst RST_38                                    ; $6922: $FF
    rst RST_38                                    ; $6923: $FF
    rst RST_38                                    ; $6924: $FF
    rst RST_38                                    ; $6925: $FF
    rst RST_38                                    ; $6926: $FF
    rst RST_38                                    ; $6927: $FF
    rst RST_38                                    ; $6928: $FF
    rst RST_38                                    ; $6929: $FF
    rst RST_38                                    ; $692A: $FF
    rst RST_38                                    ; $692B: $FF
    rst RST_38                                    ; $692C: $FF
    rst RST_38                                    ; $692D: $FF
    rst RST_38                                    ; $692E: $FF
    rst RST_38                                    ; $692F: $FF
    rst RST_38                                    ; $6930: $FF
    rst RST_38                                    ; $6931: $FF
    rst RST_38                                    ; $6932: $FF
    rst RST_38                                    ; $6933: $FF
    rst RST_38                                    ; $6934: $FF
    rst RST_38                                    ; $6935: $FF
    rst RST_38                                    ; $6936: $FF
    rst RST_38                                    ; $6937: $FF
    rst RST_38                                    ; $6938: $FF
    rst RST_38                                    ; $6939: $FF
    rst RST_38                                    ; $693A: $FF
    rst RST_38                                    ; $693B: $FF
    rst RST_38                                    ; $693C: $FF
    rst RST_38                                    ; $693D: $FF
    rst RST_38                                    ; $693E: $FF
    rst RST_38                                    ; $693F: $FF
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

Call_01F_7838:
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

Jump_01F_7C3C:
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

Call_01F_7F3B:
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
