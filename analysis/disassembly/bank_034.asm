; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $034", ROMX[$4000], BANK[$34]

    ld a, [$C31B]                                 ; $4000: $FA $1B $C3
    swap a                                        ; $4003: $CB $37
    ld e, a                                       ; $4005: $5F
    ld d, $00                                     ; $4006: $16 $00
    ld hl, $7EDB                                  ; $4008: $21 $DB $7E
    add hl, de                                    ; $400B: $19
    ld de, $D3C0                                  ; $400C: $11 $C0 $D3
    ld c, $10                                     ; $400F: $0E $10

jr_034_4011:
    ld a, [hl+]                                   ; $4011: $2A
    ld [de], a                                    ; $4012: $12
    inc de                                        ; $4013: $13
    dec c                                         ; $4014: $0D
    jr nz, jr_034_4011                            ; $4015: $20 $FA

    ret                                           ; $4017: $C9


    ld hl, $C32F                                  ; $4018: $21 $2F $C3
    ld e, [hl]                                    ; $401B: $5E
    inc hl                                        ; $401C: $23
    ld d, [hl]                                    ; $401D: $56
    inc hl                                        ; $401E: $23
    ld a, [hl+]                                   ; $401F: $2A
    ld b, [hl]                                    ; $4020: $46
    ld l, a                                       ; $4021: $6F
    ld h, b                                       ; $4022: $60
    ld b, $04                                     ; $4023: $06 $04
    jp Jump_000_11C2                              ; $4025: $C3 $C2 $11


    ld a, [$C315]                                 ; $4028: $FA $15 $C3
    ld l, a                                       ; $402B: $6F
    ld a, [$C316]                                 ; $402C: $FA $16 $C3
    ld h, a                                       ; $402F: $67
    ld de, $8000                                  ; $4030: $11 $00 $80
    ld b, $40                                     ; $4033: $06 $40
    jp Jump_000_1188                              ; $4035: $C3 $88 $11


    nop                                           ; $4038: $00
    nop                                           ; $4039: $00
    nop                                           ; $403A: $00
    nop                                           ; $403B: $00
    nop                                           ; $403C: $00
    nop                                           ; $403D: $00
    nop                                           ; $403E: $00
    nop                                           ; $403F: $00
    nop                                           ; $4040: $00
    nop                                           ; $4041: $00
    inc bc                                        ; $4042: $03
    nop                                           ; $4043: $00
    rlca                                          ; $4044: $07
    inc bc                                        ; $4045: $03
    rlca                                          ; $4046: $07
    ld [bc], a                                    ; $4047: $02
    ld b, $01                                     ; $4048: $06 $01
    ld c, $01                                     ; $404A: $0E $01
    ld a, [bc]                                    ; $404C: $0A
    dec b                                         ; $404D: $05
    ld d, $09                                     ; $404E: $16 $09
    dec d                                         ; $4050: $15
    ld a, [bc]                                    ; $4051: $0A
    dec hl                                        ; $4052: $2B
    dec d                                         ; $4053: $15
    rla                                           ; $4054: $17
    nop                                           ; $4055: $00
    rlca                                          ; $4056: $07
    ld bc, $0000                                  ; $4057: $01 $00 $00
    nop                                           ; $405A: $00
    nop                                           ; $405B: $00
    nop                                           ; $405C: $00
    nop                                           ; $405D: $00
    nop                                           ; $405E: $00
    nop                                           ; $405F: $00
    nop                                           ; $4060: $00
    nop                                           ; $4061: $00
    nop                                           ; $4062: $00
    nop                                           ; $4063: $00
    rst RST_38                                    ; $4064: $FF
    nop                                           ; $4065: $00
    add hl, hl                                    ; $4066: $29
    sub $AA                                       ; $4067: $D6 $AA
    ld d, l                                       ; $4069: $55
    xor d                                         ; $406A: $AA
    ld d, l                                       ; $406B: $55
    xor d                                         ; $406C: $AA
    ld d, l                                       ; $406D: $55
    xor l                                         ; $406E: $AD
    ld d, d                                       ; $406F: $52
    xor l                                         ; $4070: $AD
    ld d, d                                       ; $4071: $52
    rst RST_38                                    ; $4072: $FF
    xor l                                         ; $4073: $AD
    rst RST_38                                    ; $4074: $FF
    rst RST_38                                    ; $4075: $FF
    rst RST_38                                    ; $4076: $FF
    rst RST_38                                    ; $4077: $FF
    nop                                           ; $4078: $00
    nop                                           ; $4079: $00
    nop                                           ; $407A: $00
    nop                                           ; $407B: $00
    nop                                           ; $407C: $00
    nop                                           ; $407D: $00
    nop                                           ; $407E: $00
    nop                                           ; $407F: $00
    nop                                           ; $4080: $00
    nop                                           ; $4081: $00
    ret nz                                        ; $4082: $C0

    nop                                           ; $4083: $00
    ldh [$FFC0], a                                ; $4084: $E0 $C0
    ldh [rLCDC], a                                ; $4086: $E0 $40
    ret nz                                        ; $4088: $C0

    nop                                           ; $4089: $00
    and b                                         ; $408A: $A0
    ld b, b                                       ; $408B: $40
    and b                                         ; $408C: $A0
    ld b, b                                       ; $408D: $40
    ld d, b                                       ; $408E: $50
    and b                                         ; $408F: $A0
    ld d, b                                       ; $4090: $50
    and b                                         ; $4091: $A0
    xor b                                         ; $4092: $A8
    ld d, b                                       ; $4093: $50
    ret c                                         ; $4094: $D8

    nop                                           ; $4095: $00
    ret nz                                        ; $4096: $C0

    add b                                         ; $4097: $80
    nop                                           ; $4098: $00
    nop                                           ; $4099: $00
    nop                                           ; $409A: $00
    nop                                           ; $409B: $00
    nop                                           ; $409C: $00
    nop                                           ; $409D: $00
    nop                                           ; $409E: $00
    nop                                           ; $409F: $00
    nop                                           ; $40A0: $00
    nop                                           ; $40A1: $00
    nop                                           ; $40A2: $00
    nop                                           ; $40A3: $00
    inc bc                                        ; $40A4: $03
    nop                                           ; $40A5: $00
    rlca                                          ; $40A6: $07
    inc bc                                        ; $40A7: $03
    rlca                                          ; $40A8: $07
    ld [bc], a                                    ; $40A9: $02
    ld b, $01                                     ; $40AA: $06 $01
    ld c, $01                                     ; $40AC: $0E $01
    ld a, [bc]                                    ; $40AE: $0A
    dec b                                         ; $40AF: $05
    ld d, $09                                     ; $40B0: $16 $09
    dec d                                         ; $40B2: $15
    ld a, [bc]                                    ; $40B3: $0A
    dec d                                         ; $40B4: $15
    ld a, [bc]                                    ; $40B5: $0A
    rla                                           ; $40B6: $17
    ld [$0000], sp                                ; $40B7: $08 $00 $00
    nop                                           ; $40BA: $00
    nop                                           ; $40BB: $00
    nop                                           ; $40BC: $00
    nop                                           ; $40BD: $00
    nop                                           ; $40BE: $00
    nop                                           ; $40BF: $00
    nop                                           ; $40C0: $00
    nop                                           ; $40C1: $00
    nop                                           ; $40C2: $00
    nop                                           ; $40C3: $00
    nop                                           ; $40C4: $00
    nop                                           ; $40C5: $00
    rst RST_38                                    ; $40C6: $FF

jr_034_40C7:
    nop                                           ; $40C7: $00
    add hl, hl                                    ; $40C8: $29
    sub $AA                                       ; $40C9: $D6 $AA
    ld d, l                                       ; $40CB: $55
    xor d                                         ; $40CC: $AA
    ld d, l                                       ; $40CD: $55
    xor d                                         ; $40CE: $AA
    ld d, l                                       ; $40CF: $55
    xor e                                         ; $40D0: $AB
    ld d, h                                       ; $40D1: $54
    xor e                                         ; $40D2: $AB
    ld d, h                                       ; $40D3: $54
    rst RST_38                                    ; $40D4: $FF
    xor e                                         ; $40D5: $AB
    rst RST_38                                    ; $40D6: $FF
    rst RST_38                                    ; $40D7: $FF
    nop                                           ; $40D8: $00
    nop                                           ; $40D9: $00
    nop                                           ; $40DA: $00
    nop                                           ; $40DB: $00
    nop                                           ; $40DC: $00
    nop                                           ; $40DD: $00
    nop                                           ; $40DE: $00
    nop                                           ; $40DF: $00
    nop                                           ; $40E0: $00
    nop                                           ; $40E1: $00
    nop                                           ; $40E2: $00
    nop                                           ; $40E3: $00
    ret nz                                        ; $40E4: $C0

    nop                                           ; $40E5: $00
    ldh [$FFC0], a                                ; $40E6: $E0 $C0
    ldh [rLCDC], a                                ; $40E8: $E0 $40
    ret nz                                        ; $40EA: $C0

    nop                                           ; $40EB: $00
    and b                                         ; $40EC: $A0
    ld b, b                                       ; $40ED: $40
    and b                                         ; $40EE: $A0
    ld b, b                                       ; $40EF: $40
    ld d, b                                       ; $40F0: $50
    and b                                         ; $40F1: $A0
    ld d, b                                       ; $40F2: $50
    and b                                         ; $40F3: $A0
    ret nc                                        ; $40F4: $D0

    jr nz, jr_034_40C7                            ; $40F5: $20 $D0

    jr nz, jr_034_40F9                            ; $40F7: $20 $00

jr_034_40F9:
    nop                                           ; $40F9: $00
    nop                                           ; $40FA: $00
    nop                                           ; $40FB: $00
    nop                                           ; $40FC: $00
    nop                                           ; $40FD: $00
    nop                                           ; $40FE: $00
    nop                                           ; $40FF: $00
    nop                                           ; $4100: $00
    nop                                           ; $4101: $00
    inc bc                                        ; $4102: $03
    nop                                           ; $4103: $00
    rlca                                          ; $4104: $07
    inc bc                                        ; $4105: $03
    rlca                                          ; $4106: $07
    ld [bc], a                                    ; $4107: $02
    inc bc                                        ; $4108: $03
    nop                                           ; $4109: $00
    dec b                                         ; $410A: $05
    ld [bc], a                                    ; $410B: $02
    dec b                                         ; $410C: $05
    ld [bc], a                                    ; $410D: $02
    ld a, [bc]                                    ; $410E: $0A
    dec b                                         ; $410F: $05
    ld a, [bc]                                    ; $4110: $0A
    dec b                                         ; $4111: $05
    dec d                                         ; $4112: $15
    ld a, [bc]                                    ; $4113: $0A
    rra                                           ; $4114: $1F
    nop                                           ; $4115: $00
    rlca                                          ; $4116: $07
    ld bc, $0000                                  ; $4117: $01 $00 $00
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
    rst RST_38                                    ; $4124: $FF
    nop                                           ; $4125: $00
    sub h                                         ; $4126: $94
    ld l, e                                       ; $4127: $6B
    ld d, l                                       ; $4128: $55
    xor d                                         ; $4129: $AA
    ld d, l                                       ; $412A: $55
    xor d                                         ; $412B: $AA
    ld d, l                                       ; $412C: $55
    xor d                                         ; $412D: $AA
    or l                                          ; $412E: $B5
    ld c, d                                       ; $412F: $4A
    or l                                          ; $4130: $B5
    ld c, d                                       ; $4131: $4A
    rst RST_38                                    ; $4132: $FF
    or l                                          ; $4133: $B5
    rst RST_38                                    ; $4134: $FF
    rst RST_38                                    ; $4135: $FF
    rst RST_38                                    ; $4136: $FF
    rst RST_38                                    ; $4137: $FF
    nop                                           ; $4138: $00
    nop                                           ; $4139: $00
    nop                                           ; $413A: $00
    nop                                           ; $413B: $00
    nop                                           ; $413C: $00
    nop                                           ; $413D: $00
    nop                                           ; $413E: $00
    nop                                           ; $413F: $00
    nop                                           ; $4140: $00
    nop                                           ; $4141: $00
    ret nz                                        ; $4142: $C0

    nop                                           ; $4143: $00
    ldh [$FFC0], a                                ; $4144: $E0 $C0
    ldh [rLCDC], a                                ; $4146: $E0 $40
    ld h, b                                       ; $4148: $60
    add b                                         ; $4149: $80
    ld [hl], b                                    ; $414A: $70
    add b                                         ; $414B: $80
    ld d, b                                       ; $414C: $50
    and b                                         ; $414D: $A0
    ld l, b                                       ; $414E: $68
    sub b                                         ; $414F: $90
    xor b                                         ; $4150: $A8
    ld d, b                                       ; $4151: $50
    call nc, $F8A8                                ; $4152: $D4 $A8 $F8
    nop                                           ; $4155: $00
    ldh [$FF80], a                                ; $4156: $E0 $80
    rlca                                          ; $4158: $07
    inc bc                                        ; $4159: $03
    rlca                                          ; $415A: $07
    inc bc                                        ; $415B: $03
    rlca                                          ; $415C: $07
    inc bc                                        ; $415D: $03
    rlca                                          ; $415E: $07
    inc bc                                        ; $415F: $03
    rlca                                          ; $4160: $07
    inc bc                                        ; $4161: $03
    rlca                                          ; $4162: $07
    inc bc                                        ; $4163: $03
    inc bc                                        ; $4164: $03
    ld bc, $0001                                  ; $4165: $01 $01 $00
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
    rst RST_38                                    ; $4178: $FF
    rst RST_38                                    ; $4179: $FF
    rst RST_38                                    ; $417A: $FF
    rst RST_10                                    ; $417B: $D7
    rst RST_38                                    ; $417C: $FF
    rst RST_10                                    ; $417D: $D7
    rst RST_38                                    ; $417E: $FF
    rst RST_10                                    ; $417F: $D7
    rst RST_38                                    ; $4180: $FF
    db $D3                                        ; $4181: $D3
    rst RST_38                                    ; $4182: $FF
    db $D3                                        ; $4183: $D3
    rst RST_38                                    ; $4184: $FF
    db $D3                                        ; $4185: $D3
    cpl                                           ; $4186: $2F
    pop de                                        ; $4187: $D1
    call nz, RST_08                               ; $4188: $C4 $08 $00
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
    and b                                         ; $4198: $A0
    ret nz                                        ; $4199: $C0

    and b                                         ; $419A: $A0
    ret nz                                        ; $419B: $C0

    and b                                         ; $419C: $A0
    ret nz                                        ; $419D: $C0

    and b                                         ; $419E: $A0
    ret nz                                        ; $419F: $C0

    and b                                         ; $41A0: $A0
    ret nz                                        ; $41A1: $C0

    and b                                         ; $41A2: $A0
    ret nz                                        ; $41A3: $C0

    and b                                         ; $41A4: $A0
    ret nz                                        ; $41A5: $C0

    and b                                         ; $41A6: $A0
    ret nz                                        ; $41A7: $C0

    add b                                         ; $41A8: $80
    ret nz                                        ; $41A9: $C0

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
    rlca                                          ; $41B8: $07
    inc bc                                        ; $41B9: $03
    rlca                                          ; $41BA: $07
    inc bc                                        ; $41BB: $03
    rlca                                          ; $41BC: $07
    inc bc                                        ; $41BD: $03
    rlca                                          ; $41BE: $07
    inc bc                                        ; $41BF: $03
    rlca                                          ; $41C0: $07
    inc bc                                        ; $41C1: $03
    rlca                                          ; $41C2: $07
    inc bc                                        ; $41C3: $03
    rlca                                          ; $41C4: $07
    inc bc                                        ; $41C5: $03
    rlca                                          ; $41C6: $07
    inc bc                                        ; $41C7: $03
    inc b                                         ; $41C8: $04
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
    rst RST_38                                    ; $41D8: $FF
    rst RST_38                                    ; $41D9: $FF
    rst RST_38                                    ; $41DA: $FF
    rst RST_10                                    ; $41DB: $D7
    rst RST_38                                    ; $41DC: $FF
    rst RST_10                                    ; $41DD: $D7
    rst RST_38                                    ; $41DE: $FF
    rst RST_10                                    ; $41DF: $D7
    rst RST_38                                    ; $41E0: $FF
    db $EB                                        ; $41E1: $EB
    rst RST_38                                    ; $41E2: $FF
    db $EB                                        ; $41E3: $EB
    rst RST_38                                    ; $41E4: $FF
    push hl                                       ; $41E5: $E5
    ld [$C8C5], a                                 ; $41E6: $EA $C5 $C8
    call nz, RST_00                               ; $41E9: $C4 $00 $00
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
    ld bc, $0E01                                  ; $41FB: $01 $01 $0E
    dec c                                         ; $41FE: $0D
    ld [de], a                                    ; $41FF: $12
    ld e, $21                                     ; $4200: $1E $21
    ld e, $21                                     ; $4202: $1E $21
    dec c                                         ; $4204: $0D
    ld [de], a                                    ; $4205: $12
    inc bc                                        ; $4206: $03
    inc c                                         ; $4207: $0C
    inc bc                                        ; $4208: $03
    inc b                                         ; $4209: $04
    inc bc                                        ; $420A: $03
    inc b                                         ; $420B: $04
    ld bc, $0002                                  ; $420C: $01 $02 $00
    ld bc, $0000                                  ; $420F: $01 $00 $00
    nop                                           ; $4212: $00
    nop                                           ; $4213: $00
    nop                                           ; $4214: $00
    nop                                           ; $4215: $00
    rrca                                          ; $4216: $0F
    nop                                           ; $4217: $00
    nop                                           ; $4218: $00
    ret nz                                        ; $4219: $C0

    ret nz                                        ; $421A: $C0

    jr nz, @-$1E                                  ; $421B: $20 $E0

    inc e                                         ; $421D: $1C
    db $EC                                        ; $421E: $EC
    ld [de], a                                    ; $421F: $12
    sbc $21                                       ; $4220: $DE $21
    ld e, $E1                                     ; $4222: $1E $E1
    db $EC                                        ; $4224: $EC
    ld [de], a                                    ; $4225: $12
    ldh a, [$FF0C]                                ; $4226: $F0 $0C
    ldh a, [$FF08]                                ; $4228: $F0 $08
    ldh a, [$FF08]                                ; $422A: $F0 $08
    ldh [rNR10], a                                ; $422C: $E0 $10
    nop                                           ; $422E: $00
    ldh [rP1], a                                  ; $422F: $E0 $00
    nop                                           ; $4231: $00
    nop                                           ; $4232: $00
    nop                                           ; $4233: $00
    nop                                           ; $4234: $00
    nop                                           ; $4235: $00
    db $FC                                        ; $4236: $FC
    nop                                           ; $4237: $00
    rlca                                          ; $4238: $07
    inc bc                                        ; $4239: $03
    rlca                                          ; $423A: $07
    inc bc                                        ; $423B: $03
    rlca                                          ; $423C: $07
    inc bc                                        ; $423D: $03
    rlca                                          ; $423E: $07
    inc bc                                        ; $423F: $03
    rrca                                          ; $4240: $0F
    inc bc                                        ; $4241: $03
    rrca                                          ; $4242: $0F
    inc bc                                        ; $4243: $03
    rrca                                          ; $4244: $0F
    ld bc, $000F                                  ; $4245: $01 $0F $00
    rrca                                          ; $4248: $0F
    nop                                           ; $4249: $00
    rlca                                          ; $424A: $07
    nop                                           ; $424B: $00
    inc bc                                        ; $424C: $03
    nop                                           ; $424D: $00

jr_034_424E:
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
    rst RST_38                                    ; $4258: $FF
    rst RST_38                                    ; $4259: $FF
    rst RST_38                                    ; $425A: $FF
    rst RST_10                                    ; $425B: $D7

jr_034_425C:
    rst RST_38                                    ; $425C: $FF
    rst RST_10                                    ; $425D: $D7
    rst RST_38                                    ; $425E: $FF
    rst RST_10                                    ; $425F: $D7
    rst RST_38                                    ; $4260: $FF
    db $D3                                        ; $4261: $D3
    rst RST_38                                    ; $4262: $FF
    db $D3                                        ; $4263: $D3
    rst RST_38                                    ; $4264: $FF
    db $D3                                        ; $4265: $D3
    cpl                                           ; $4266: $2F
    pop de                                        ; $4267: $D1
    rst RST_20                                    ; $4268: $E7
    add hl, de                                    ; $4269: $19
    rst RST_20                                    ; $426A: $E7
    jr jr_034_425C                                ; $426B: $18 $EF

    db $10                                        ; $426D: $10
    jr jr_034_4270                                ; $426E: $18 $00

jr_034_4270:
    nop                                           ; $4270: $00
    nop                                           ; $4271: $00
    nop                                           ; $4272: $00
    nop                                           ; $4273: $00
    nop                                           ; $4274: $00
    nop                                           ; $4275: $00
    nop                                           ; $4276: $00
    nop                                           ; $4277: $00
    and b                                         ; $4278: $A0
    ret nz                                        ; $4279: $C0

    and b                                         ; $427A: $A0
    ret nz                                        ; $427B: $C0

    and b                                         ; $427C: $A0
    ret nz                                        ; $427D: $C0

    or b                                          ; $427E: $B0
    ret nz                                        ; $427F: $C0

    cp b                                          ; $4280: $B8
    ret nz                                        ; $4281: $C0

    cp b                                          ; $4282: $B8
    ret nz                                        ; $4283: $C0

    cp b                                          ; $4284: $B8
    ret nz                                        ; $4285: $C0

    cp b                                          ; $4286: $B8
    ret nz                                        ; $4287: $C0

    cp b                                          ; $4288: $B8
    ret nz                                        ; $4289: $C0

    or b                                          ; $428A: $B0
    ret nz                                        ; $428B: $C0

    jr nz, jr_034_424E                            ; $428C: $20 $C0

    ret nz                                        ; $428E: $C0

    nop                                           ; $428F: $00
    nop                                           ; $4290: $00
    nop                                           ; $4291: $00
    nop                                           ; $4292: $00
    nop                                           ; $4293: $00
    nop                                           ; $4294: $00
    nop                                           ; $4295: $00
    nop                                           ; $4296: $00
    nop                                           ; $4297: $00
    rrca                                          ; $4298: $0F
    ld bc, $0307                                  ; $4299: $01 $07 $03
    rlca                                          ; $429C: $07
    inc bc                                        ; $429D: $03
    rlca                                          ; $429E: $07
    inc bc                                        ; $429F: $03
    rrca                                          ; $42A0: $0F
    inc bc                                        ; $42A1: $03
    rrca                                          ; $42A2: $0F
    inc bc                                        ; $42A3: $03
    rrca                                          ; $42A4: $0F
    inc bc                                        ; $42A5: $03
    rrca                                          ; $42A6: $0F
    inc bc                                        ; $42A7: $03
    rrca                                          ; $42A8: $0F
    ld bc, $0107                                  ; $42A9: $01 $07 $01

jr_034_42AC:
    inc bc                                        ; $42AC: $03
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
    rst RST_38                                    ; $42B8: $FF
    rst RST_38                                    ; $42B9: $FF
    rst RST_38                                    ; $42BA: $FF
    rst RST_38                                    ; $42BB: $FF
    rst RST_38                                    ; $42BC: $FF
    rst RST_10                                    ; $42BD: $D7
    rst RST_38                                    ; $42BE: $FF
    rst RST_10                                    ; $42BF: $D7
    rst RST_38                                    ; $42C0: $FF
    rst RST_10                                    ; $42C1: $D7
    rst RST_38                                    ; $42C2: $FF
    db $D3                                        ; $42C3: $D3
    rst RST_38                                    ; $42C4: $FF
    pop de                                        ; $42C5: $D1
    rst RST_38                                    ; $42C6: $FF
    ret                                           ; $42C7: $C9


    rst RST_30                                    ; $42C8: $F7
    adc b                                         ; $42C9: $88
    di                                            ; $42CA: $F3
    adc h                                         ; $42CB: $8C
    di                                            ; $42CC: $F3
    inc c                                         ; $42CD: $0C
    ld a, [bc]                                    ; $42CE: $0A
    inc b                                         ; $42CF: $04
    inc b                                         ; $42D0: $04
    nop                                           ; $42D1: $00
    nop                                           ; $42D2: $00
    nop                                           ; $42D3: $00
    nop                                           ; $42D4: $00
    nop                                           ; $42D5: $00
    nop                                           ; $42D6: $00
    nop                                           ; $42D7: $00
    ldh [$FF80], a                                ; $42D8: $E0 $80
    and b                                         ; $42DA: $A0
    ret nz                                        ; $42DB: $C0

    and b                                         ; $42DC: $A0
    ret nz                                        ; $42DD: $C0

    or b                                          ; $42DE: $B0
    ret nz                                        ; $42DF: $C0

    cp b                                          ; $42E0: $B8
    ret nz                                        ; $42E1: $C0

    cp b                                          ; $42E2: $B8
    ret nz                                        ; $42E3: $C0

    cp b                                          ; $42E4: $B8
    ret nz                                        ; $42E5: $C0

    cp b                                          ; $42E6: $B8
    ret nz                                        ; $42E7: $C0

    cp b                                          ; $42E8: $B8
    ret nz                                        ; $42E9: $C0

    jr nc, jr_034_42AC                            ; $42EA: $30 $C0

    ldh [rP1], a                                  ; $42EC: $E0 $00
    nop                                           ; $42EE: $00
    nop                                           ; $42EF: $00
    nop                                           ; $42F0: $00
    nop                                           ; $42F1: $00
    nop                                           ; $42F2: $00
    nop                                           ; $42F3: $00
    nop                                           ; $42F4: $00
    nop                                           ; $42F5: $00
    nop                                           ; $42F6: $00
    nop                                           ; $42F7: $00
    rlca                                          ; $42F8: $07
    inc bc                                        ; $42F9: $03
    rlca                                          ; $42FA: $07
    inc bc                                        ; $42FB: $03
    rlca                                          ; $42FC: $07
    inc bc                                        ; $42FD: $03
    rlca                                          ; $42FE: $07
    inc bc                                        ; $42FF: $03
    rrca                                          ; $4300: $0F
    inc bc                                        ; $4301: $03
    rrca                                          ; $4302: $0F
    inc bc                                        ; $4303: $03
    rrca                                          ; $4304: $0F
    inc bc                                        ; $4305: $03
    rrca                                          ; $4306: $0F
    inc bc                                        ; $4307: $03
    rrca                                          ; $4308: $0F
    inc bc                                        ; $4309: $03
    rlca                                          ; $430A: $07
    ld bc, $0103                                  ; $430B: $01 $03 $01
    ld bc, $0000                                  ; $430E: $01 $00 $00
    nop                                           ; $4311: $00
    nop                                           ; $4312: $00
    nop                                           ; $4313: $00
    nop                                           ; $4314: $00
    nop                                           ; $4315: $00
    nop                                           ; $4316: $00
    nop                                           ; $4317: $00
    rst RST_38                                    ; $4318: $FF
    rst RST_38                                    ; $4319: $FF
    rst RST_38                                    ; $431A: $FF
    rst RST_10                                    ; $431B: $D7
    rst RST_38                                    ; $431C: $FF
    rst RST_10                                    ; $431D: $D7
    rst RST_38                                    ; $431E: $FF
    rst RST_10                                    ; $431F: $D7
    rst RST_38                                    ; $4320: $FF
    db $EB                                        ; $4321: $EB
    rst RST_38                                    ; $4322: $FF
    db $EB                                        ; $4323: $EB
    rst RST_38                                    ; $4324: $FF
    push hl                                       ; $4325: $E5
    ld a, [$F9C5]                                 ; $4326: $FA $C5 $F9
    add $F8                                       ; $4329: $C6 $F8
    add a                                         ; $432B: $87
    cp $81                                        ; $432C: $FE $81
    add c                                         ; $432E: $81
    nop                                           ; $432F: $00
    nop                                           ; $4330: $00
    nop                                           ; $4331: $00
    nop                                           ; $4332: $00
    nop                                           ; $4333: $00
    nop                                           ; $4334: $00
    nop                                           ; $4335: $00
    nop                                           ; $4336: $00
    nop                                           ; $4337: $00
    and b                                         ; $4338: $A0
    ret nz                                        ; $4339: $C0

    and b                                         ; $433A: $A0
    ret nz                                        ; $433B: $C0

    and b                                         ; $433C: $A0
    ret nz                                        ; $433D: $C0

    or b                                          ; $433E: $B0
    ret nz                                        ; $433F: $C0

    cp b                                          ; $4340: $B8
    ret nz                                        ; $4341: $C0

    cp b                                          ; $4342: $B8
    ret nz                                        ; $4343: $C0

    cp b                                          ; $4344: $B8
    ret nz                                        ; $4345: $C0

    ld a, b                                       ; $4346: $78
    add b                                         ; $4347: $80
    ld hl, sp+$00                                 ; $4348: $F8 $00
    ldh a, [rP1]                                  ; $434A: $F0 $00
    ldh [rP1], a                                  ; $434C: $E0 $00
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
    rrca                                          ; $4358: $0F
    ld bc, $0307                                  ; $4359: $01 $07 $03
    rlca                                          ; $435C: $07
    inc bc                                        ; $435D: $03
    rlca                                          ; $435E: $07
    inc bc                                        ; $435F: $03
    rlca                                          ; $4360: $07
    inc bc                                        ; $4361: $03
    rlca                                          ; $4362: $07
    inc bc                                        ; $4363: $03
    rlca                                          ; $4364: $07
    inc bc                                        ; $4365: $03
    rlca                                          ; $4366: $07
    inc bc                                        ; $4367: $03
    inc bc                                        ; $4368: $03
    ld bc, $0000                                  ; $4369: $01 $00 $00
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
    rst RST_38                                    ; $4378: $FF
    rst RST_38                                    ; $4379: $FF
    rst RST_38                                    ; $437A: $FF
    rst RST_38                                    ; $437B: $FF
    rst RST_38                                    ; $437C: $FF
    rst RST_10                                    ; $437D: $D7
    rst RST_38                                    ; $437E: $FF
    rst RST_10                                    ; $437F: $D7
    rst RST_38                                    ; $4380: $FF
    rst RST_10                                    ; $4381: $D7
    rst RST_38                                    ; $4382: $FF
    db $D3                                        ; $4383: $D3
    ei                                            ; $4384: $FB
    pop de                                        ; $4385: $D1
    rst RST_38                                    ; $4386: $FF
    ret                                           ; $4387: $C9


    ld de, $0000                                  ; $4388: $11 $00 $00
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
    ldh [$FF80], a                                ; $4398: $E0 $80
    and b                                         ; $439A: $A0
    ret nz                                        ; $439B: $C0

    and b                                         ; $439C: $A0
    ret nz                                        ; $439D: $C0

    and b                                         ; $439E: $A0
    ret nz                                        ; $439F: $C0

    and b                                         ; $43A0: $A0
    ret nz                                        ; $43A1: $C0

    and b                                         ; $43A2: $A0
    ret nz                                        ; $43A3: $C0

    and b                                         ; $43A4: $A0
    ret nz                                        ; $43A5: $C0

    and b                                         ; $43A6: $A0
    ret nz                                        ; $43A7: $C0

    jr nz, jr_034_43AA                            ; $43A8: $20 $00

jr_034_43AA:
    nop                                           ; $43AA: $00
    nop                                           ; $43AB: $00
    nop                                           ; $43AC: $00
    nop                                           ; $43AD: $00
    nop                                           ; $43AE: $00
    nop                                           ; $43AF: $00
    nop                                           ; $43B0: $00
    nop                                           ; $43B1: $00
    nop                                           ; $43B2: $00
    nop                                           ; $43B3: $00
    nop                                           ; $43B4: $00
    nop                                           ; $43B5: $00
    nop                                           ; $43B6: $00
    nop                                           ; $43B7: $00
    and b                                         ; $43B8: $A0
    ret nz                                        ; $43B9: $C0

    and b                                         ; $43BA: $A0
    ret nz                                        ; $43BB: $C0

    and b                                         ; $43BC: $A0
    ret nz                                        ; $43BD: $C0

    and b                                         ; $43BE: $A0
    ret nz                                        ; $43BF: $C0

    and b                                         ; $43C0: $A0
    ret nz                                        ; $43C1: $C0

    and b                                         ; $43C2: $A0
    ret nz                                        ; $43C3: $C0

    and b                                         ; $43C4: $A0
    ret nz                                        ; $43C5: $C0

    ld b, b                                       ; $43C6: $40
    add b                                         ; $43C7: $80
    add b                                         ; $43C8: $80
    nop                                           ; $43C9: $00
    nop                                           ; $43CA: $00
    nop                                           ; $43CB: $00
    nop                                           ; $43CC: $00
    nop                                           ; $43CD: $00
    nop                                           ; $43CE: $00
    nop                                           ; $43CF: $00
    nop                                           ; $43D0: $00
    nop                                           ; $43D1: $00
    nop                                           ; $43D2: $00
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
    nop                                           ; $43F0: $00
    nop                                           ; $43F1: $00
    nop                                           ; $43F2: $00
    nop                                           ; $43F3: $00
    nop                                           ; $43F4: $00
    nop                                           ; $43F5: $00
    nop                                           ; $43F6: $00
    nop                                           ; $43F7: $00
    ld bc, $0301                                  ; $43F8: $01 $01 $03
    ld [bc], a                                    ; $43FB: $02
    rra                                           ; $43FC: $1F
    inc e                                         ; $43FD: $1C
    ccf                                           ; $43FE: $3F
    inc h                                         ; $43FF: $24
    ld a, a                                       ; $4400: $7F
    ld b, d                                       ; $4401: $42
    ld a, a                                       ; $4402: $7F
    ld b, e                                       ; $4403: $43
    ccf                                           ; $4404: $3F
    inc h                                         ; $4405: $24
    rra                                           ; $4406: $1F

jr_034_4407:
    jr jr_034_4418                                ; $4407: $18 $0F

    ld [$080F], sp                                ; $4409: $08 $0F $08
    rlca                                          ; $440C: $07
    inc b                                         ; $440D: $04
    inc bc                                        ; $440E: $03
    inc bc                                        ; $440F: $03
    nop                                           ; $4410: $00
    nop                                           ; $4411: $00
    nop                                           ; $4412: $00
    nop                                           ; $4413: $00
    nop                                           ; $4414: $00
    nop                                           ; $4415: $00
    rra                                           ; $4416: $1F
    nop                                           ; $4417: $00

jr_034_4418:
    add b                                         ; $4418: $80
    add b                                         ; $4419: $80
    ret nz                                        ; $441A: $C0

    ld b, b                                       ; $441B: $40
    ld hl, sp+$38                                 ; $441C: $F8 $38
    db $FC                                        ; $441E: $FC
    inc h                                         ; $441F: $24
    cp $42                                        ; $4420: $FE $42
    cp $C2                                        ; $4422: $FE $C2
    db $FC                                        ; $4424: $FC
    inc h                                         ; $4425: $24
    ld hl, sp+$18                                 ; $4426: $F8 $18
    ldh a, [rNR10]                                ; $4428: $F0 $10
    ldh a, [rNR10]                                ; $442A: $F0 $10
    ldh [rNR41], a                                ; $442C: $E0 $20
    ret nz                                        ; $442E: $C0

    ret nz                                        ; $442F: $C0

jr_034_4430:
    nop                                           ; $4430: $00
    nop                                           ; $4431: $00
    nop                                           ; $4432: $00
    nop                                           ; $4433: $00
    nop                                           ; $4434: $00
    nop                                           ; $4435: $00
    ld hl, sp+$00                                 ; $4436: $F8 $00
    nop                                           ; $4438: $00
    nop                                           ; $4439: $00
    nop                                           ; $443A: $00
    nop                                           ; $443B: $00
    nop                                           ; $443C: $00
    nop                                           ; $443D: $00
    nop                                           ; $443E: $00
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
    ld bc, $0300                                  ; $444E: $01 $00 $03
    nop                                           ; $4451: $00
    rlca                                          ; $4452: $07
    nop                                           ; $4453: $00
    rlca                                          ; $4454: $07
    nop                                           ; $4455: $00
    rlca                                          ; $4456: $07
    nop                                           ; $4457: $00
    nop                                           ; $4458: $00
    nop                                           ; $4459: $00
    nop                                           ; $445A: $00
    nop                                           ; $445B: $00
    nop                                           ; $445C: $00
    nop                                           ; $445D: $00
    nop                                           ; $445E: $00
    nop                                           ; $445F: $00
    nop                                           ; $4460: $00
    nop                                           ; $4461: $00
    stop                                          ; $4462: $10 $00
    jr c, jr_034_4466                             ; $4464: $38 $00

jr_034_4466:
    ld a, h                                       ; $4466: $7C
    nop                                           ; $4467: $00
    xor $10                                       ; $4468: $EE $10
    ld c, h                                       ; $446A: $4C
    jr c, jr_034_4407                             ; $446B: $38 $9A

    ld a, h                                       ; $446D: $7C
    or e                                          ; $446E: $B3
    ld a, h                                       ; $446F: $7C
    ld a, a                                       ; $4470: $7F
    add $C7                                       ; $4471: $C6 $C7
    jr c, jr_034_4430                             ; $4473: $38 $BB

    ld b, h                                       ; $4475: $44
    ld b, l                                       ; $4476: $45
    cp d                                          ; $4477: $BA
    nop                                           ; $4478: $00
    nop                                           ; $4479: $00
    nop                                           ; $447A: $00
    nop                                           ; $447B: $00
    nop                                           ; $447C: $00
    nop                                           ; $447D: $00
    nop                                           ; $447E: $00
    nop                                           ; $447F: $00

jr_034_4480:
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
    nop                                           ; $448E: $00
    nop                                           ; $448F: $00
    add b                                         ; $4490: $80
    nop                                           ; $4491: $00
    ret nz                                        ; $4492: $C0

    nop                                           ; $4493: $00
    ret nz                                        ; $4494: $C0

    nop                                           ; $4495: $00
    ret nz                                        ; $4496: $C0

    nop                                           ; $4497: $00
    nop                                           ; $4498: $00
    nop                                           ; $4499: $00
    nop                                           ; $449A: $00
    nop                                           ; $449B: $00
    nop                                           ; $449C: $00
    nop                                           ; $449D: $00
    nop                                           ; $449E: $00
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
    nop                                           ; $44AD: $00
    nop                                           ; $44AE: $00
    nop                                           ; $44AF: $00
    ld bc, $0100                                  ; $44B0: $01 $00 $01

jr_034_44B3:
    nop                                           ; $44B3: $00
    inc bc                                        ; $44B4: $03
    nop                                           ; $44B5: $00
    rlca                                          ; $44B6: $07
    nop                                           ; $44B7: $00
    nop                                           ; $44B8: $00
    nop                                           ; $44B9: $00
    nop                                           ; $44BA: $00
    nop                                           ; $44BB: $00
    nop                                           ; $44BC: $00
    nop                                           ; $44BD: $00
    nop                                           ; $44BE: $00
    nop                                           ; $44BF: $00
    nop                                           ; $44C0: $00
    nop                                           ; $44C1: $00
    stop                                          ; $44C2: $10 $00
    jr c, jr_034_44C6                             ; $44C4: $38 $00

jr_034_44C6:
    ld a, h                                       ; $44C6: $7C

jr_034_44C7:
    nop                                           ; $44C7: $00
    cp $10                                        ; $44C8: $FE $10
    ld [hl], h                                    ; $44CA: $74
    jr c, jr_034_44B3                             ; $44CB: $38 $E6

    ld a, h                                       ; $44CD: $7C
    adc $7C                                       ; $44CE: $CE $7C
    cp c                                          ; $44D0: $B9
    add $C7                                       ; $44D1: $C6 $C7
    jr c, jr_034_4480                             ; $44D3: $38 $AB

    ld a, h                                       ; $44D5: $7C
    rst RST_38                                    ; $44D6: $FF
    ld b, h                                       ; $44D7: $44
    nop                                           ; $44D8: $00
    nop                                           ; $44D9: $00
    nop                                           ; $44DA: $00
    nop                                           ; $44DB: $00
    nop                                           ; $44DC: $00
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
    add b                                         ; $44F4: $80
    nop                                           ; $44F5: $00
    ret nz                                        ; $44F6: $C0

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

jr_034_450C:
    nop                                           ; $450C: $00
    nop                                           ; $450D: $00
    nop                                           ; $450E: $00
    nop                                           ; $450F: $00
    ld bc, $0100                                  ; $4510: $01 $00 $01
    nop                                           ; $4513: $00
    ld bc, $0700                                  ; $4514: $01 $00 $07
    nop                                           ; $4517: $00
    nop                                           ; $4518: $00
    nop                                           ; $4519: $00
    nop                                           ; $451A: $00
    nop                                           ; $451B: $00
    nop                                           ; $451C: $00
    nop                                           ; $451D: $00
    nop                                           ; $451E: $00
    nop                                           ; $451F: $00
    nop                                           ; $4520: $00
    nop                                           ; $4521: $00
    stop                                          ; $4522: $10 $00
    jr c, jr_034_4526                             ; $4524: $38 $00

jr_034_4526:
    ld a, h                                       ; $4526: $7C
    nop                                           ; $4527: $00
    xor $10                                       ; $4528: $EE $10
    ld c, h                                       ; $452A: $4C
    jr c, jr_034_44C7                             ; $452B: $38 $9A

    ld a, h                                       ; $452D: $7C
    or d                                          ; $452E: $B2
    ld a, h                                       ; $452F: $7C
    ld a, a                                       ; $4530: $7F
    add $C5                                       ; $4531: $C6 $C5
    cp d                                          ; $4533: $BA
    xor e                                         ; $4534: $AB
    ld a, h                                       ; $4535: $7C
    rst RST_00                                    ; $4536: $C7
    ld a, h                                       ; $4537: $7C
    nop                                           ; $4538: $00
    nop                                           ; $4539: $00
    nop                                           ; $453A: $00
    nop                                           ; $453B: $00

jr_034_453C:
    nop                                           ; $453C: $00
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
    nop                                           ; $4554: $00
    nop                                           ; $4555: $00
    ret nz                                        ; $4556: $C0

    nop                                           ; $4557: $00
    ccf                                           ; $4558: $3F
    nop                                           ; $4559: $00
    ccf                                           ; $455A: $3F
    nop                                           ; $455B: $00
    dec hl                                        ; $455C: $2B
    inc d                                         ; $455D: $14
    dec hl                                        ; $455E: $2B
    inc d                                         ; $455F: $14
    ld c, e                                       ; $4560: $4B
    inc [hl]                                      ; $4561: $34
    ld b, a                                       ; $4562: $47
    jr c, jr_034_450C                             ; $4563: $38 $A7

    ld e, d                                       ; $4565: $5A
    cp a                                          ; $4566: $BF
    ld b, b                                       ; $4567: $40
    inc sp                                        ; $4568: $33
    ld [hl-], a                                   ; $4569: $32
    nop                                           ; $456A: $00
    nop                                           ; $456B: $00

jr_034_456C:
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
    add e                                         ; $4578: $83
    ld a, h                                       ; $4579: $7C
    add e                                         ; $457A: $83
    ld a, h                                       ; $457B: $7C
    add e                                         ; $457C: $83
    ld a, h                                       ; $457D: $7C
    rst RST_00                                    ; $457E: $C7
    jr c, jr_034_453C                             ; $457F: $38 $BB

    ld b, h                                       ; $4581: $44
    ld b, l                                       ; $4582: $45
    cp d                                          ; $4583: $BA
    cp e                                          ; $4584: $BB
    ld b, h                                       ; $4585: $44
    ld b, l                                       ; $4586: $45
    cp d                                          ; $4587: $BA
    inc sp                                        ; $4588: $33
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
    nop                                           ; $4594: $00
    nop                                           ; $4595: $00
    nop                                           ; $4596: $00
    nop                                           ; $4597: $00
    ld hl, sp+$00                                 ; $4598: $F8 $00
    ld hl, sp+$00                                 ; $459A: $F8 $00
    xor b                                         ; $459C: $A8
    ld d, b                                       ; $459D: $50
    xor b                                         ; $459E: $A8
    ld d, b                                       ; $459F: $50
    and h                                         ; $45A0: $A4
    ld e, b                                       ; $45A1: $58
    call nz, $CA38                                ; $45A2: $C4 $38 $CA
    or h                                          ; $45A5: $B4
    ld a, [$3004]                                 ; $45A6: $FA $04 $30
    jr nc, jr_034_45AB                            ; $45A9: $30 $00

jr_034_45AB:
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
    ccf                                           ; $45B8: $3F
    nop                                           ; $45B9: $00
    ccf                                           ; $45BA: $3F
    nop                                           ; $45BB: $00
    cpl                                           ; $45BC: $2F
    db $10                                        ; $45BD: $10
    dec hl                                        ; $45BE: $2B
    inc d                                         ; $45BF: $14
    ld c, e                                       ; $45C0: $4B
    inc [hl]                                      ; $45C1: $34
    ld b, a                                       ; $45C2: $47
    jr c, jr_034_456C                             ; $45C3: $38 $A7

    ld e, d                                       ; $45C5: $5A
    cp a                                          ; $45C6: $BF
    ld b, b                                       ; $45C7: $40
    inc sp                                        ; $45C8: $33
    ld [hl-], a                                   ; $45C9: $32
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
    nop                                           ; $45D6: $00
    nop                                           ; $45D7: $00
    add hl, sp                                    ; $45D8: $39
    add $45                                       ; $45D9: $C6 $45
    cp d                                          ; $45DB: $BA
    add e                                         ; $45DC: $83
    ld a, h                                       ; $45DD: $7C
    add e                                         ; $45DE: $83
    ld a, h                                       ; $45DF: $7C
    add e                                         ; $45E0: $83
    ld a, h                                       ; $45E1: $7C
    ld b, l                                       ; $45E2: $45
    cp d                                          ; $45E3: $BA
    cp e                                          ; $45E4: $BB
    ld b, h                                       ; $45E5: $44
    ld b, l                                       ; $45E6: $45
    cp d                                          ; $45E7: $BA

jr_034_45E8:
    inc sp                                        ; $45E8: $33
    nop                                           ; $45E9: $00
    nop                                           ; $45EA: $00
    nop                                           ; $45EB: $00

jr_034_45EC:
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
    ld bc, $0300                                  ; $45FA: $01 $00 $03
    nop                                           ; $45FD: $00
    rlca                                          ; $45FE: $07
    nop                                           ; $45FF: $00
    ld c, $01                                     ; $4600: $0E $01
    inc b                                         ; $4602: $04
    inc bc                                        ; $4603: $03
    add hl, bc                                    ; $4604: $09
    rlca                                          ; $4605: $07
    dec bc                                        ; $4606: $0B
    rlca                                          ; $4607: $07
    ld d, $0F                                     ; $4608: $16 $0F
    rra                                           ; $460A: $1F
    ld [$000F], sp                                ; $460B: $08 $0F $00
    rlca                                          ; $460E: $07
    nop                                           ; $460F: $00
    nop                                           ; $4610: $00
    nop                                           ; $4611: $00
    nop                                           ; $4612: $00
    nop                                           ; $4613: $00
    nop                                           ; $4614: $00
    nop                                           ; $4615: $00
    rrca                                          ; $4616: $0F
    nop                                           ; $4617: $00
    nop                                           ; $4618: $00
    nop                                           ; $4619: $00
    nop                                           ; $461A: $00
    nop                                           ; $461B: $00

jr_034_461C:
    add b                                         ; $461C: $80
    nop                                           ; $461D: $00
    ret nz                                        ; $461E: $C0

    nop                                           ; $461F: $00
    ldh [rP1], a                                  ; $4620: $E0 $00
    ret nz                                        ; $4622: $C0

    add b                                         ; $4623: $80
    and b                                         ; $4624: $A0
    ret nz                                        ; $4625: $C0

    jr nz, jr_034_45E8                            ; $4626: $20 $C0

    ld [hl], b                                    ; $4628: $70
    ldh [$FFD0], a                                ; $4629: $E0 $D0
    jr nz, @-$1E                                  ; $462B: $20 $E0

    nop                                           ; $462D: $00
    ret nz                                        ; $462E: $C0

    nop                                           ; $462F: $00
    nop                                           ; $4630: $00
    nop                                           ; $4631: $00
    nop                                           ; $4632: $00
    nop                                           ; $4633: $00
    nop                                           ; $4634: $00
    nop                                           ; $4635: $00
    ldh [rP1], a                                  ; $4636: $E0 $00
    ccf                                           ; $4638: $3F
    nop                                           ; $4639: $00
    ccf                                           ; $463A: $3F
    nop                                           ; $463B: $00
    dec hl                                        ; $463C: $2B
    inc d                                         ; $463D: $14
    dec hl                                        ; $463E: $2B
    inc d                                         ; $463F: $14
    ld c, e                                       ; $4640: $4B
    inc [hl]                                      ; $4641: $34
    ld b, a                                       ; $4642: $47
    jr c, jr_034_45EC                             ; $4643: $38 $A7

    ld e, d                                       ; $4645: $5A
    cp a                                          ; $4646: $BF
    ld b, b                                       ; $4647: $40
    ld a, a                                       ; $4648: $7F
    ld a, $7F                                     ; $4649: $3E $7F
    nop                                           ; $464B: $00

jr_034_464C:
    ccf                                           ; $464C: $3F
    nop                                           ; $464D: $00
    rrca                                          ; $464E: $0F
    nop                                           ; $464F: $00
    nop                                           ; $4650: $00
    nop                                           ; $4651: $00
    nop                                           ; $4652: $00
    nop                                           ; $4653: $00
    nop                                           ; $4654: $00
    nop                                           ; $4655: $00
    nop                                           ; $4656: $00
    nop                                           ; $4657: $00
    add e                                         ; $4658: $83
    ld a, h                                       ; $4659: $7C
    add e                                         ; $465A: $83
    ld a, h                                       ; $465B: $7C
    add e                                         ; $465C: $83
    ld a, h                                       ; $465D: $7C
    rst RST_00                                    ; $465E: $C7
    jr c, jr_034_461C                             ; $465F: $38 $BB

    ld b, h                                       ; $4661: $44
    ld b, l                                       ; $4662: $45
    cp d                                          ; $4663: $BA
    cp e                                          ; $4664: $BB
    ld b, h                                       ; $4665: $44
    ld b, l                                       ; $4666: $45
    cp d                                          ; $4667: $BA
    cp e                                          ; $4668: $BB
    ld b, h                                       ; $4669: $44
    rst RST_38                                    ; $466A: $FF
    nop                                           ; $466B: $00
    rst RST_38                                    ; $466C: $FF
    nop                                           ; $466D: $00
    rst RST_38                                    ; $466E: $FF
    nop                                           ; $466F: $00
    nop                                           ; $4670: $00
    nop                                           ; $4671: $00
    nop                                           ; $4672: $00
    nop                                           ; $4673: $00
    nop                                           ; $4674: $00
    nop                                           ; $4675: $00
    nop                                           ; $4676: $00
    nop                                           ; $4677: $00
    ld hl, sp+$00                                 ; $4678: $F8 $00
    ld hl, sp+$00                                 ; $467A: $F8 $00
    xor h                                         ; $467C: $AC
    ld d, b                                       ; $467D: $50

jr_034_467E:
    xor h                                         ; $467E: $AC
    ld d, b                                       ; $467F: $50
    and [hl]                                      ; $4680: $A6
    ld e, b                                       ; $4681: $58
    add $38                                       ; $4682: $C6 $38
    jp z, $FAB4                                   ; $4684: $CA $B4 $FA

    inc b                                         ; $4687: $04
    cp $F8                                        ; $4688: $FE $F8
    cp $00                                        ; $468A: $FE $00
    db $FC                                        ; $468C: $FC
    nop                                           ; $468D: $00
    ldh a, [rP1]                                  ; $468E: $F0 $00
    nop                                           ; $4690: $00
    nop                                           ; $4691: $00
    nop                                           ; $4692: $00
    nop                                           ; $4693: $00
    nop                                           ; $4694: $00
    nop                                           ; $4695: $00
    nop                                           ; $4696: $00
    nop                                           ; $4697: $00
    ccf                                           ; $4698: $3F
    nop                                           ; $4699: $00
    ccf                                           ; $469A: $3F
    nop                                           ; $469B: $00
    cpl                                           ; $469C: $2F
    db $10                                        ; $469D: $10
    dec hl                                        ; $469E: $2B
    inc d                                         ; $469F: $14
    ld c, e                                       ; $46A0: $4B
    inc [hl]                                      ; $46A1: $34
    ld b, a                                       ; $46A2: $47
    jr c, jr_034_464C                             ; $46A3: $38 $A7

    ld e, d                                       ; $46A5: $5A
    cp a                                          ; $46A6: $BF
    ld b, b                                       ; $46A7: $40
    ld a, a                                       ; $46A8: $7F
    ld a, $7F                                     ; $46A9: $3E $7F
    nop                                           ; $46AB: $00

jr_034_46AC:
    ccf                                           ; $46AC: $3F
    nop                                           ; $46AD: $00
    rrca                                          ; $46AE: $0F
    nop                                           ; $46AF: $00
    nop                                           ; $46B0: $00
    nop                                           ; $46B1: $00
    nop                                           ; $46B2: $00
    nop                                           ; $46B3: $00
    nop                                           ; $46B4: $00
    nop                                           ; $46B5: $00
    nop                                           ; $46B6: $00
    nop                                           ; $46B7: $00
    ld b, l                                       ; $46B8: $45
    cp d                                          ; $46B9: $BA
    add e                                         ; $46BA: $83
    ld a, h                                       ; $46BB: $7C
    add e                                         ; $46BC: $83
    ld a, h                                       ; $46BD: $7C
    add e                                         ; $46BE: $83
    ld a, h                                       ; $46BF: $7C
    rst RST_00                                    ; $46C0: $C7
    jr c, jr_034_467E                             ; $46C1: $38 $BB

    ld b, h                                       ; $46C3: $44
    ld b, l                                       ; $46C4: $45
    cp d                                          ; $46C5: $BA
    cp e                                          ; $46C6: $BB
    ld b, h                                       ; $46C7: $44
    rst RST_00                                    ; $46C8: $C7
    jr c, @+$01                                   ; $46C9: $38 $FF

    nop                                           ; $46CB: $00
    rst RST_38                                    ; $46CC: $FF
    nop                                           ; $46CD: $00
    rst RST_38                                    ; $46CE: $FF
    nop                                           ; $46CF: $00
    nop                                           ; $46D0: $00
    nop                                           ; $46D1: $00
    nop                                           ; $46D2: $00
    nop                                           ; $46D3: $00
    nop                                           ; $46D4: $00
    nop                                           ; $46D5: $00
    nop                                           ; $46D6: $00
    nop                                           ; $46D7: $00
    ld hl, sp+$00                                 ; $46D8: $F8 $00
    ld hl, sp+$00                                 ; $46DA: $F8 $00
    db $EC                                        ; $46DC: $EC
    db $10                                        ; $46DD: $10
    xor h                                         ; $46DE: $AC
    ld d, b                                       ; $46DF: $50
    and [hl]                                      ; $46E0: $A6
    ld e, b                                       ; $46E1: $58
    add $38                                       ; $46E2: $C6 $38
    jp z, $FAB4                                   ; $46E4: $CA $B4 $FA

    inc b                                         ; $46E7: $04
    cp $F8                                        ; $46E8: $FE $F8
    cp $00                                        ; $46EA: $FE $00
    db $FC                                        ; $46EC: $FC
    nop                                           ; $46ED: $00
    ldh a, [rP1]                                  ; $46EE: $F0 $00
    nop                                           ; $46F0: $00
    nop                                           ; $46F1: $00
    nop                                           ; $46F2: $00
    nop                                           ; $46F3: $00
    nop                                           ; $46F4: $00
    nop                                           ; $46F5: $00
    nop                                           ; $46F6: $00
    nop                                           ; $46F7: $00
    ccf                                           ; $46F8: $3F
    nop                                           ; $46F9: $00
    ccf                                           ; $46FA: $3F
    nop                                           ; $46FB: $00
    cpl                                           ; $46FC: $2F
    db $10                                        ; $46FD: $10
    dec hl                                        ; $46FE: $2B
    inc d                                         ; $46FF: $14
    ld c, e                                       ; $4700: $4B
    inc [hl]                                      ; $4701: $34
    ld b, a                                       ; $4702: $47
    jr c, jr_034_46AC                             ; $4703: $38 $A7

    ld e, d                                       ; $4705: $5A
    cp a                                          ; $4706: $BF
    ld b, b                                       ; $4707: $40
    ld a, a                                       ; $4708: $7F
    ld a, $7F                                     ; $4709: $3E $7F
    nop                                           ; $470B: $00

jr_034_470C:
    ccf                                           ; $470C: $3F
    nop                                           ; $470D: $00
    rrca                                          ; $470E: $0F
    nop                                           ; $470F: $00
    nop                                           ; $4710: $00
    nop                                           ; $4711: $00
    nop                                           ; $4712: $00
    nop                                           ; $4713: $00
    nop                                           ; $4714: $00
    nop                                           ; $4715: $00
    nop                                           ; $4716: $00
    nop                                           ; $4717: $00
    add hl, sp                                    ; $4718: $39
    add $45                                       ; $4719: $C6 $45
    cp d                                          ; $471B: $BA
    add e                                         ; $471C: $83
    ld a, h                                       ; $471D: $7C
    add e                                         ; $471E: $83
    ld a, h                                       ; $471F: $7C
    add e                                         ; $4720: $83
    ld a, h                                       ; $4721: $7C
    ld b, l                                       ; $4722: $45
    cp d                                          ; $4723: $BA
    cp e                                          ; $4724: $BB
    ld b, h                                       ; $4725: $44
    ld b, l                                       ; $4726: $45
    cp d                                          ; $4727: $BA
    cp e                                          ; $4728: $BB
    ld b, h                                       ; $4729: $44
    rst RST_38                                    ; $472A: $FF
    nop                                           ; $472B: $00
    rst RST_38                                    ; $472C: $FF
    nop                                           ; $472D: $00
    rst RST_38                                    ; $472E: $FF
    nop                                           ; $472F: $00
    nop                                           ; $4730: $00
    nop                                           ; $4731: $00
    nop                                           ; $4732: $00
    nop                                           ; $4733: $00
    nop                                           ; $4734: $00
    nop                                           ; $4735: $00
    nop                                           ; $4736: $00
    nop                                           ; $4737: $00
    ld hl, sp+$00                                 ; $4738: $F8 $00
    ld hl, sp+$00                                 ; $473A: $F8 $00
    db $EC                                        ; $473C: $EC
    db $10                                        ; $473D: $10

jr_034_473E:
    xor h                                         ; $473E: $AC
    ld d, b                                       ; $473F: $50
    and [hl]                                      ; $4740: $A6
    ld e, b                                       ; $4741: $58
    add $38                                       ; $4742: $C6 $38
    jp z, $FAB4                                   ; $4744: $CA $B4 $FA

    inc b                                         ; $4747: $04
    cp $F8                                        ; $4748: $FE $F8
    cp $00                                        ; $474A: $FE $00
    db $FC                                        ; $474C: $FC
    nop                                           ; $474D: $00
    ldh a, [rP1]                                  ; $474E: $F0 $00
    nop                                           ; $4750: $00
    nop                                           ; $4751: $00
    nop                                           ; $4752: $00
    nop                                           ; $4753: $00
    nop                                           ; $4754: $00
    nop                                           ; $4755: $00
    nop                                           ; $4756: $00
    nop                                           ; $4757: $00
    ccf                                           ; $4758: $3F
    nop                                           ; $4759: $00
    ccf                                           ; $475A: $3F
    nop                                           ; $475B: $00
    cpl                                           ; $475C: $2F
    db $10                                        ; $475D: $10
    dec hl                                        ; $475E: $2B
    inc d                                         ; $475F: $14
    ld c, e                                       ; $4760: $4B
    inc [hl]                                      ; $4761: $34
    ld b, a                                       ; $4762: $47
    jr c, jr_034_470C                             ; $4763: $38 $A7

    ld e, d                                       ; $4765: $5A
    cp a                                          ; $4766: $BF
    ld b, b                                       ; $4767: $40
    ld c, h                                       ; $4768: $4C
    inc c                                         ; $4769: $0C
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
    nop                                           ; $4776: $00
    nop                                           ; $4777: $00
    ld b, l                                       ; $4778: $45
    cp d                                          ; $4779: $BA
    add e                                         ; $477A: $83
    ld a, h                                       ; $477B: $7C
    add e                                         ; $477C: $83
    ld a, h                                       ; $477D: $7C
    add e                                         ; $477E: $83
    ld a, h                                       ; $477F: $7C
    rst RST_00                                    ; $4780: $C7
    jr c, jr_034_473E                             ; $4781: $38 $BB

    ld b, h                                       ; $4783: $44
    ld b, l                                       ; $4784: $45
    cp d                                          ; $4785: $BA
    cp e                                          ; $4786: $BB
    ld b, h                                       ; $4787: $44
    call nz, RST_08                               ; $4788: $C4 $08 $00
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
    ld hl, sp+$00                                 ; $4798: $F8 $00
    ld hl, sp+$00                                 ; $479A: $F8 $00
    add sp, $10                                   ; $479C: $E8 $10
    xor b                                         ; $479E: $A8
    ld d, b                                       ; $479F: $50
    and h                                         ; $47A0: $A4
    ld e, b                                       ; $47A1: $58
    call nz, $CA38                                ; $47A2: $C4 $38 $CA
    or h                                          ; $47A5: $B4
    ld a, [$CC04]                                 ; $47A6: $FA $04 $CC
    ret z                                         ; $47A9: $C8

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
    nop                                           ; $47B6: $00
    nop                                           ; $47B7: $00
    ld hl, sp+$00                                 ; $47B8: $F8 $00
    ld hl, sp+$00                                 ; $47BA: $F8 $00
    add sp, $10                                   ; $47BC: $E8 $10
    xor b                                         ; $47BE: $A8
    ld d, b                                       ; $47BF: $50
    and h                                         ; $47C0: $A4
    ld e, b                                       ; $47C1: $58
    call nz, $CA38                                ; $47C2: $C4 $38 $CA
    or h                                          ; $47C5: $B4
    ld a, [$3004]                                 ; $47C6: $FA $04 $30
    jr nc, jr_034_47CB                            ; $47C9: $30 $00

jr_034_47CB:
    nop                                           ; $47CB: $00
    nop                                           ; $47CC: $00
    nop                                           ; $47CD: $00
    nop                                           ; $47CE: $00
    nop                                           ; $47CF: $00
    nop                                           ; $47D0: $00
    nop                                           ; $47D1: $00
    nop                                           ; $47D2: $00
    nop                                           ; $47D3: $00
    nop                                           ; $47D4: $00
    nop                                           ; $47D5: $00
    nop                                           ; $47D6: $00
    nop                                           ; $47D7: $00
    nop                                           ; $47D8: $00
    nop                                           ; $47D9: $00
    nop                                           ; $47DA: $00
    nop                                           ; $47DB: $00
    nop                                           ; $47DC: $00
    nop                                           ; $47DD: $00
    nop                                           ; $47DE: $00
    nop                                           ; $47DF: $00
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
    ld bc, $0300                                  ; $47FA: $01 $00 $03
    nop                                           ; $47FD: $00
    rlca                                          ; $47FE: $07
    nop                                           ; $47FF: $00
    rrca                                          ; $4800: $0F
    ld bc, $0307                                  ; $4801: $01 $07 $03
    ld c, $07                                     ; $4804: $0E $07
    inc c                                         ; $4806: $0C
    rlca                                          ; $4807: $07
    add hl, de                                    ; $4808: $19
    rrca                                          ; $4809: $0F
    rla                                           ; $480A: $17
    ld [$000F], sp                                ; $480B: $08 $0F $00
    rlca                                          ; $480E: $07
    nop                                           ; $480F: $00
    nop                                           ; $4810: $00
    nop                                           ; $4811: $00
    nop                                           ; $4812: $00
    nop                                           ; $4813: $00
    nop                                           ; $4814: $00
    nop                                           ; $4815: $00
    rrca                                          ; $4816: $0F
    nop                                           ; $4817: $00
    nop                                           ; $4818: $00
    nop                                           ; $4819: $00
    nop                                           ; $481A: $00
    nop                                           ; $481B: $00
    add b                                         ; $481C: $80
    nop                                           ; $481D: $00
    ret nz                                        ; $481E: $C0

    nop                                           ; $481F: $00
    ldh [rP1], a                                  ; $4820: $E0 $00
    ld b, b                                       ; $4822: $40
    add b                                         ; $4823: $80
    ld h, b                                       ; $4824: $60
    ret nz                                        ; $4825: $C0

    ldh [$FFC0], a                                ; $4826: $E0 $C0
    sub b                                         ; $4828: $90
    ldh [$FFF0], a                                ; $4829: $E0 $F0
    jr nz, @-$1E                                  ; $482B: $20 $E0

    nop                                           ; $482D: $00
    ret nz                                        ; $482E: $C0

    nop                                           ; $482F: $00
    nop                                           ; $4830: $00
    nop                                           ; $4831: $00
    nop                                           ; $4832: $00
    nop                                           ; $4833: $00
    nop                                           ; $4834: $00
    nop                                           ; $4835: $00
    ldh [rP1], a                                  ; $4836: $E0 $00
    nop                                           ; $4838: $00
    nop                                           ; $4839: $00
    nop                                           ; $483A: $00
    nop                                           ; $483B: $00
    nop                                           ; $483C: $00
    nop                                           ; $483D: $00
    nop                                           ; $483E: $00
    nop                                           ; $483F: $00
    nop                                           ; $4840: $00
    nop                                           ; $4841: $00
    nop                                           ; $4842: $00
    nop                                           ; $4843: $00
    nop                                           ; $4844: $00
    nop                                           ; $4845: $00
    nop                                           ; $4846: $00

jr_034_4847:
    nop                                           ; $4847: $00
    ld bc, $0200                                  ; $4848: $01 $00 $02
    ld bc, $0304                                  ; $484B: $01 $04 $03
    inc b                                         ; $484E: $04
    inc bc                                        ; $484F: $03
    ld [bc], a                                    ; $4850: $02
    ld bc, $0001                                  ; $4851: $01 $01 $00
    ld [bc], a                                    ; $4854: $02
    ld bc, $0102                                  ; $4855: $01 $02 $01
    nop                                           ; $4858: $00
    nop                                           ; $4859: $00
    nop                                           ; $485A: $00
    nop                                           ; $485B: $00
    nop                                           ; $485C: $00
    nop                                           ; $485D: $00
    nop                                           ; $485E: $00
    nop                                           ; $485F: $00
    inc c                                         ; $4860: $0C
    nop                                           ; $4861: $00
    ld [hl-], a                                   ; $4862: $32
    inc c                                         ; $4863: $0C
    ld b, c                                       ; $4864: $41
    ld a, $80                                     ; $4865: $3E $80
    ld a, a                                       ; $4867: $7F
    nop                                           ; $4868: $00
    rst RST_38                                    ; $4869: $FF
    nop                                           ; $486A: $00
    rst RST_38                                    ; $486B: $FF
    nop                                           ; $486C: $00
    rst RST_38                                    ; $486D: $FF
    nop                                           ; $486E: $00
    rst RST_38                                    ; $486F: $FF
    nop                                           ; $4870: $00
    rst RST_38                                    ; $4871: $FF
    nop                                           ; $4872: $00
    rst RST_38                                    ; $4873: $FF
    nop                                           ; $4874: $00
    rst RST_38                                    ; $4875: $FF
    nop                                           ; $4876: $00
    rst RST_38                                    ; $4877: $FF
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
    add b                                         ; $4886: $80
    nop                                           ; $4887: $00
    ld b, b                                       ; $4888: $40
    add b                                         ; $4889: $80
    jr nz, @-$3E                                  ; $488A: $20 $C0

    db $10                                        ; $488C: $10
    ldh [rNR10], a                                ; $488D: $E0 $10
    ldh [$FF60], a                                ; $488F: $E0 $60
    add b                                         ; $4891: $80
    add b                                         ; $4892: $80
    nop                                           ; $4893: $00
    add h                                         ; $4894: $84
    nop                                           ; $4895: $00
    adc [hl]                                      ; $4896: $8E
    inc b                                         ; $4897: $04
    nop                                           ; $4898: $00
    nop                                           ; $4899: $00
    nop                                           ; $489A: $00
    nop                                           ; $489B: $00
    nop                                           ; $489C: $00
    nop                                           ; $489D: $00
    nop                                           ; $489E: $00
    nop                                           ; $489F: $00
    nop                                           ; $48A0: $00
    nop                                           ; $48A1: $00
    nop                                           ; $48A2: $00
    nop                                           ; $48A3: $00
    nop                                           ; $48A4: $00
    nop                                           ; $48A5: $00
    ld bc, $0200                                  ; $48A6: $01 $00 $02
    ld bc, $0304                                  ; $48A9: $01 $04 $03
    ld [$0807], sp                                ; $48AC: $08 $07 $08
    rlca                                          ; $48AF: $07

jr_034_48B0:
    ld b, $01                                     ; $48B0: $06 $01
    ld bc, $2100                                  ; $48B2: $01 $00 $21
    nop                                           ; $48B5: $00
    ld [hl], c                                    ; $48B6: $71
    jr nz, jr_034_48B9                            ; $48B7: $20 $00

jr_034_48B9:
    nop                                           ; $48B9: $00
    nop                                           ; $48BA: $00
    nop                                           ; $48BB: $00
    nop                                           ; $48BC: $00
    nop                                           ; $48BD: $00
    nop                                           ; $48BE: $00
    nop                                           ; $48BF: $00
    jr nc, jr_034_48C2                            ; $48C0: $30 $00

jr_034_48C2:
    ld c, h                                       ; $48C2: $4C
    jr nc, jr_034_4847                            ; $48C3: $30 $82

    ld a, h                                       ; $48C5: $7C
    ld bc, $00FE                                  ; $48C6: $01 $FE $00
    rst RST_38                                    ; $48C9: $FF
    nop                                           ; $48CA: $00
    rst RST_38                                    ; $48CB: $FF
    nop                                           ; $48CC: $00
    rst RST_38                                    ; $48CD: $FF
    nop                                           ; $48CE: $00
    rst RST_38                                    ; $48CF: $FF
    nop                                           ; $48D0: $00
    rst RST_38                                    ; $48D1: $FF
    nop                                           ; $48D2: $00
    rst RST_38                                    ; $48D3: $FF
    nop                                           ; $48D4: $00
    rst RST_38                                    ; $48D5: $FF
    nop                                           ; $48D6: $00
    rst RST_38                                    ; $48D7: $FF
    nop                                           ; $48D8: $00
    nop                                           ; $48D9: $00
    nop                                           ; $48DA: $00
    nop                                           ; $48DB: $00
    nop                                           ; $48DC: $00
    nop                                           ; $48DD: $00
    nop                                           ; $48DE: $00
    nop                                           ; $48DF: $00
    nop                                           ; $48E0: $00
    nop                                           ; $48E1: $00
    nop                                           ; $48E2: $00
    nop                                           ; $48E3: $00
    nop                                           ; $48E4: $00
    nop                                           ; $48E5: $00
    nop                                           ; $48E6: $00
    nop                                           ; $48E7: $00
    add b                                         ; $48E8: $80
    nop                                           ; $48E9: $00
    ld b, b                                       ; $48EA: $40
    add b                                         ; $48EB: $80
    jr nz, @-$3E                                  ; $48EC: $20 $C0

    jr nz, jr_034_48B0                            ; $48EE: $20 $C0

    ld b, b                                       ; $48F0: $40
    add b                                         ; $48F1: $80
    add b                                         ; $48F2: $80
    nop                                           ; $48F3: $00
    add b                                         ; $48F4: $80
    nop                                           ; $48F5: $00
    ld b, b                                       ; $48F6: $40
    add b                                         ; $48F7: $80
    ld h, h                                       ; $48F8: $64
    inc bc                                        ; $48F9: $03
    ld [hl], h                                    ; $48FA: $74
    inc hl                                        ; $48FB: $23
    ld a, h                                       ; $48FC: $7C
    inc sp                                        ; $48FD: $33
    ld a, $19                                     ; $48FE: $3E $19
    ccf                                           ; $4900: $3F
    inc e                                         ; $4901: $1C
    rra                                           ; $4902: $1F
    rrca                                          ; $4903: $0F
    rrca                                          ; $4904: $0F
    ld b, $07                                     ; $4905: $06 $07
    ld bc, $000C                                  ; $4907: $01 $0C $00
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
    nop                                           ; $4918: $00
    rst RST_38                                    ; $4919: $FF
    nop                                           ; $491A: $00
    rst RST_38                                    ; $491B: $FF
    nop                                           ; $491C: $00
    rst RST_38                                    ; $491D: $FF
    nop                                           ; $491E: $00
    rst RST_38                                    ; $491F: $FF
    nop                                           ; $4920: $00
    rst RST_38                                    ; $4921: $FF
    add b                                         ; $4922: $80
    ld a, a                                       ; $4923: $7F
    rst RST_38                                    ; $4924: $FF
    add b                                         ; $4925: $80
    rst RST_38                                    ; $4926: $FF
    cp l                                          ; $4927: $BD
    call z, Call_000_008C                         ; $4928: $CC $8C $00
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
    adc [hl]                                      ; $4938: $8E
    inc b                                         ; $4939: $04
    ld e, [hl]                                    ; $493A: $5E
    adc h                                         ; $493B: $8C
    ld a, $DC                                     ; $493C: $3E $DC
    inc a                                         ; $493E: $3C
    ret c                                         ; $493F: $D8

    inc a                                         ; $4940: $3C
    ret c                                         ; $4941: $D8

    ld hl, sp+$30                                 ; $4942: $F8 $30
    ldh a, [$FFC0]                                ; $4944: $F0 $C0
    ldh [$FFC0], a                                ; $4946: $E0 $C0
    ret nz                                        ; $4948: $C0

    ret nz                                        ; $4949: $C0

    nop                                           ; $494A: $00
    nop                                           ; $494B: $00
    nop                                           ; $494C: $00
    nop                                           ; $494D: $00
    nop                                           ; $494E: $00
    nop                                           ; $494F: $00
    nop                                           ; $4950: $00
    nop                                           ; $4951: $00
    nop                                           ; $4952: $00
    nop                                           ; $4953: $00
    nop                                           ; $4954: $00
    nop                                           ; $4955: $00
    nop                                           ; $4956: $00
    nop                                           ; $4957: $00
    rlca                                          ; $4958: $07
    nop                                           ; $4959: $00
    rrca                                          ; $495A: $0F
    rlca                                          ; $495B: $07
    jr @+$11                                      ; $495C: $18 $0F

    rra                                           ; $495E: $1F
    rrca                                          ; $495F: $0F
    jr jr_034_4971                                ; $4960: $18 $0F

    rra                                           ; $4962: $1F
    rrca                                          ; $4963: $0F
    jr jr_034_4975                                ; $4964: $18 $0F

    rra                                           ; $4966: $1F
    rrca                                          ; $4967: $0F
    jr @+$11                                      ; $4968: $18 $0F

    rra                                           ; $496A: $1F
    rrca                                          ; $496B: $0F
    jr @+$11                                      ; $496C: $18 $0F

    ld [$0707], sp                                ; $496E: $08 $07 $07

jr_034_4971:
    nop                                           ; $4971: $00
    nop                                           ; $4972: $00
    nop                                           ; $4973: $00
    nop                                           ; $4974: $00

jr_034_4975:
    nop                                           ; $4975: $00
    rra                                           ; $4976: $1F
    nop                                           ; $4977: $00
    ld bc, $0300                                  ; $4978: $01 $00 $03
    ld bc, $0305                                  ; $497B: $01 $05 $03
    ld c, $07                                     ; $497E: $0E $07
    dec de                                        ; $4980: $1B
    rrca                                          ; $4981: $0F
    dec l                                         ; $4982: $2D
    rra                                           ; $4983: $1F
    halt                                          ; $4984: $76
    ccf                                           ; $4985: $3F
    ld e, e                                       ; $4986: $5B
    ccf                                           ; $4987: $3F
    ld c, l                                       ; $4988: $4D
    ccf                                           ; $4989: $3F
    jr nz, jr_034_49AB                            ; $498A: $20 $1F

    db $10                                        ; $498C: $10
    rrca                                          ; $498D: $0F
    rrca                                          ; $498E: $0F
    nop                                           ; $498F: $00
    nop                                           ; $4990: $00
    nop                                           ; $4991: $00
    nop                                           ; $4992: $00
    nop                                           ; $4993: $00
    nop                                           ; $4994: $00
    nop                                           ; $4995: $00
    ccf                                           ; $4996: $3F
    nop                                           ; $4997: $00
    ldh [rP1], a                                  ; $4998: $E0 $00
    ld [hl], b                                    ; $499A: $70
    ldh [$FFB8], a                                ; $499B: $E0 $B8
    ldh a, [$FFD4]                                ; $499D: $F0 $D4
    ld hl, sp+$64                                 ; $499F: $F8 $64
    ld hl, sp-$5C                                 ; $49A1: $F8 $A4
    ld hl, sp-$78                                 ; $49A3: $F8 $88
    ldh a, [rNR10]                                ; $49A5: $F0 $10
    ldh [rNR41], a                                ; $49A7: $E0 $20
    ret nz                                        ; $49A9: $C0

    ld b, b                                       ; $49AA: $40

jr_034_49AB:
    add b                                         ; $49AB: $80
    add b                                         ; $49AC: $80
    nop                                           ; $49AD: $00
    nop                                           ; $49AE: $00
    nop                                           ; $49AF: $00
    nop                                           ; $49B0: $00
    nop                                           ; $49B1: $00
    nop                                           ; $49B2: $00
    nop                                           ; $49B3: $00
    nop                                           ; $49B4: $00
    nop                                           ; $49B5: $00
    db $FC                                        ; $49B6: $FC
    nop                                           ; $49B7: $00
    nop                                           ; $49B8: $00
    nop                                           ; $49B9: $00
    nop                                           ; $49BA: $00
    nop                                           ; $49BB: $00
    rlca                                          ; $49BC: $07
    nop                                           ; $49BD: $00

Jump_034_49BE:
    rra                                           ; $49BE: $1F
    rlca                                          ; $49BF: $07
    ld a, a                                       ; $49C0: $7F
    rra                                           ; $49C1: $1F
    rst RST_38                                    ; $49C2: $FF
    ld a, a                                       ; $49C3: $7F
    rst RST_38                                    ; $49C4: $FF
    ld [hl], c                                    ; $49C5: $71
    ld [hl], c                                    ; $49C6: $71
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
    rst RST_38                                    ; $49D6: $FF
    nop                                           ; $49D7: $00
    nop                                           ; $49D8: $00
    nop                                           ; $49D9: $00
    nop                                           ; $49DA: $00
    nop                                           ; $49DB: $00
    nop                                           ; $49DC: $00
    nop                                           ; $49DD: $00
    add b                                         ; $49DE: $80
    nop                                           ; $49DF: $00
    ret nz                                        ; $49E0: $C0

    add b                                         ; $49E1: $80
    and b                                         ; $49E2: $A0
    ret nz                                        ; $49E3: $C0

    sub b                                         ; $49E4: $90
    ldh [$FF88], a                                ; $49E5: $E0 $88
    ld [hl], b                                    ; $49E7: $70
    ld c, b                                       ; $49E8: $48
    jr nc, @+$32                                  ; $49E9: $30 $30

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
    ld hl, sp+$00                                 ; $49F6: $F8 $00
    nop                                           ; $49F8: $00
    nop                                           ; $49F9: $00
    ld bc, $0000                                  ; $49FA: $01 $00 $00
    nop                                           ; $49FD: $00
    nop                                           ; $49FE: $00
    nop                                           ; $49FF: $00
    nop                                           ; $4A00: $00
    nop                                           ; $4A01: $00
    nop                                           ; $4A02: $00
    nop                                           ; $4A03: $00
    nop                                           ; $4A04: $00
    nop                                           ; $4A05: $00
    ld bc, $0200                                  ; $4A06: $01 $00 $02
    ld bc, $0102                                  ; $4A09: $01 $02 $01
    ld bc, $0000                                  ; $4A0C: $01 $00 $00
    nop                                           ; $4A0F: $00
    nop                                           ; $4A10: $00
    nop                                           ; $4A11: $00
    nop                                           ; $4A12: $00
    nop                                           ; $4A13: $00
    nop                                           ; $4A14: $00
    nop                                           ; $4A15: $00
    inc bc                                        ; $4A16: $03
    nop                                           ; $4A17: $00
    ret nz                                        ; $4A18: $C0

    nop                                           ; $4A19: $00
    ldh [$FFC0], a                                ; $4A1A: $E0 $C0
    ldh a, [$FF60]                                ; $4A1C: $F0 $60
    ld a, b                                       ; $4A1E: $78
    jr nc, jr_034_4A9D                            ; $4A1F: $30 $7C

jr_034_4A21:
    jr c, jr_034_4A9F                             ; $4A21: $38 $7C

    jr c, jr_034_4A21                             ; $4A23: $38 $FC

    ld a, b                                       ; $4A25: $78
    ld hl, sp-$10                                 ; $4A26: $F8 $F0
    jr nc, @-$3E                                  ; $4A28: $30 $C0

    ld b, b                                       ; $4A2A: $40
    add b                                         ; $4A2B: $80
    add b                                         ; $4A2C: $80
    nop                                           ; $4A2D: $00
    nop                                           ; $4A2E: $00
    nop                                           ; $4A2F: $00
    nop                                           ; $4A30: $00
    nop                                           ; $4A31: $00
    nop                                           ; $4A32: $00
    nop                                           ; $4A33: $00
    nop                                           ; $4A34: $00
    nop                                           ; $4A35: $00
    db $FC                                        ; $4A36: $FC
    nop                                           ; $4A37: $00
    ld h, h                                       ; $4A38: $64
    inc bc                                        ; $4A39: $03
    ld [hl], h                                    ; $4A3A: $74
    inc hl                                        ; $4A3B: $23
    ld a, h                                       ; $4A3C: $7C
    inc sp                                        ; $4A3D: $33
    ld a, $19                                     ; $4A3E: $3E $19
    ccf                                           ; $4A40: $3F
    inc e                                         ; $4A41: $1C
    ld a, a                                       ; $4A42: $7F
    rrca                                          ; $4A43: $0F
    ld a, a                                       ; $4A44: $7F
    ld b, $7F                                     ; $4A45: $06 $7F
    ld bc, $037F                                  ; $4A47: $01 $7F $03
    ccf                                           ; $4A4A: $3F
    rrca                                          ; $4A4B: $0F
    rra                                           ; $4A4C: $1F
    nop                                           ; $4A4D: $00
    rlca                                          ; $4A4E: $07
    nop                                           ; $4A4F: $00
    nop                                           ; $4A50: $00
    nop                                           ; $4A51: $00
    nop                                           ; $4A52: $00
    nop                                           ; $4A53: $00
    nop                                           ; $4A54: $00
    nop                                           ; $4A55: $00
    nop                                           ; $4A56: $00
    nop                                           ; $4A57: $00
    nop                                           ; $4A58: $00
    rst RST_38                                    ; $4A59: $FF
    nop                                           ; $4A5A: $00
    rst RST_38                                    ; $4A5B: $FF
    nop                                           ; $4A5C: $00
    rst RST_38                                    ; $4A5D: $FF
    nop                                           ; $4A5E: $00
    rst RST_38                                    ; $4A5F: $FF
    nop                                           ; $4A60: $00
    rst RST_38                                    ; $4A61: $FF
    add b                                         ; $4A62: $80
    ld a, a                                       ; $4A63: $7F
    rst RST_38                                    ; $4A64: $FF
    add b                                         ; $4A65: $80
    rst RST_38                                    ; $4A66: $FF
    cp l                                          ; $4A67: $BD
    rst RST_38                                    ; $4A68: $FF
    sbc h                                         ; $4A69: $9C
    rst RST_38                                    ; $4A6A: $FF
    inc e                                         ; $4A6B: $1C
    rst RST_38                                    ; $4A6C: $FF
    inc c                                         ; $4A6D: $0C
    rst RST_38                                    ; $4A6E: $FF
    nop                                           ; $4A6F: $00
    nop                                           ; $4A70: $00
    nop                                           ; $4A71: $00
    nop                                           ; $4A72: $00
    nop                                           ; $4A73: $00
    nop                                           ; $4A74: $00
    nop                                           ; $4A75: $00
    nop                                           ; $4A76: $00
    nop                                           ; $4A77: $00
    adc [hl]                                      ; $4A78: $8E
    inc b                                         ; $4A79: $04
    ld e, [hl]                                    ; $4A7A: $5E
    adc h                                         ; $4A7B: $8C
    ld a, $DC                                     ; $4A7C: $3E $DC
    inc a                                         ; $4A7E: $3C
    ret c                                         ; $4A7F: $D8

    inc a                                         ; $4A80: $3C
    ret c                                         ; $4A81: $D8

    cp $30                                        ; $4A82: $FE $30
    cp $C0                                        ; $4A84: $FE $C0
    cp $C0                                        ; $4A86: $FE $C0
    cp $E0                                        ; $4A88: $FE $E0
    db $FC                                        ; $4A8A: $FC
    jr nc, @-$06                                  ; $4A8B: $30 $F8

    nop                                           ; $4A8D: $00
    ldh [rP1], a                                  ; $4A8E: $E0 $00
    nop                                           ; $4A90: $00
    nop                                           ; $4A91: $00
    nop                                           ; $4A92: $00
    nop                                           ; $4A93: $00
    nop                                           ; $4A94: $00
    nop                                           ; $4A95: $00
    nop                                           ; $4A96: $00
    nop                                           ; $4A97: $00
    ld [hl], d                                    ; $4A98: $72
    ld hl, $317A                                  ; $4A99: $21 $7A $31
    ld a, h                                       ; $4A9C: $7C

jr_034_4A9D:
    dec sp                                        ; $4A9D: $3B
    inc a                                         ; $4A9E: $3C

jr_034_4A9F:
    dec de                                        ; $4A9F: $1B
    inc a                                         ; $4AA0: $3C
    dec de                                        ; $4AA1: $1B
    ld a, a                                       ; $4AA2: $7F
    inc c                                         ; $4AA3: $0C
    ld a, a                                       ; $4AA4: $7F
    inc bc                                        ; $4AA5: $03
    ld a, a                                       ; $4AA6: $7F
    inc bc                                        ; $4AA7: $03
    ld a, a                                       ; $4AA8: $7F
    rlca                                          ; $4AA9: $07
    ccf                                           ; $4AAA: $3F
    ld b, $1F                                     ; $4AAB: $06 $1F
    inc b                                         ; $4AAD: $04
    rlca                                          ; $4AAE: $07
    nop                                           ; $4AAF: $00
    nop                                           ; $4AB0: $00
    nop                                           ; $4AB1: $00
    nop                                           ; $4AB2: $00
    nop                                           ; $4AB3: $00
    nop                                           ; $4AB4: $00

Jump_034_4AB5:
    nop                                           ; $4AB5: $00
    nop                                           ; $4AB6: $00
    nop                                           ; $4AB7: $00
    nop                                           ; $4AB8: $00
    rst RST_38                                    ; $4AB9: $FF
    nop                                           ; $4ABA: $00
    rst RST_38                                    ; $4ABB: $FF
    nop                                           ; $4ABC: $00
    rst RST_38                                    ; $4ABD: $FF
    nop                                           ; $4ABE: $00
    rst RST_38                                    ; $4ABF: $FF
    nop                                           ; $4AC0: $00
    rst RST_38                                    ; $4AC1: $FF
    ld bc, $FFFE                                  ; $4AC2: $01 $FE $FF
    ld bc, $BDFF                                  ; $4AC5: $01 $FF $BD
    rst RST_38                                    ; $4AC8: $FF
    add hl, sp                                    ; $4AC9: $39
    rst RST_38                                    ; $4ACA: $FF
    jr @+$01                                      ; $4ACB: $18 $FF

    jr @+$01                                      ; $4ACD: $18 $FF

    nop                                           ; $4ACF: $00
    nop                                           ; $4AD0: $00
    nop                                           ; $4AD1: $00
    nop                                           ; $4AD2: $00
    nop                                           ; $4AD3: $00
    nop                                           ; $4AD4: $00
    nop                                           ; $4AD5: $00
    nop                                           ; $4AD6: $00
    nop                                           ; $4AD7: $00
    ld b, h                                       ; $4AD8: $44
    add b                                         ; $4AD9: $80
    ld l, $C4                                     ; $4ADA: $2E $C4
    ld a, $CC                                     ; $4ADC: $3E $CC
    ld a, h                                       ; $4ADE: $7C

jr_034_4ADF:
    sbc b                                         ; $4ADF: $98
    db $FC                                        ; $4AE0: $FC
    jr c, jr_034_4ADF                             ; $4AE1: $38 $FC

    ldh a, [$FFFC]                                ; $4AE3: $F0 $FC
    ld h, b                                       ; $4AE5: $60
    db $FC                                        ; $4AE6: $FC
    add b                                         ; $4AE7: $80
    db $FC                                        ; $4AE8: $FC
    ret nz                                        ; $4AE9: $C0

    ld hl, sp-$20                                 ; $4AEA: $F8 $E0
    ldh a, [rNR41]                                ; $4AEC: $F0 $20
    ldh [rP1], a                                  ; $4AEE: $E0 $00
    nop                                           ; $4AF0: $00
    nop                                           ; $4AF1: $00
    nop                                           ; $4AF2: $00
    nop                                           ; $4AF3: $00
    nop                                           ; $4AF4: $00
    nop                                           ; $4AF5: $00
    nop                                           ; $4AF6: $00
    nop                                           ; $4AF7: $00
    ld [hl], d                                    ; $4AF8: $72
    ld hl, $317A                                  ; $4AF9: $21 $7A $31
    ld a, h                                       ; $4AFC: $7C
    dec sp                                        ; $4AFD: $3B
    inc a                                         ; $4AFE: $3C
    dec de                                        ; $4AFF: $1B
    inc a                                         ; $4B00: $3C
    dec de                                        ; $4B01: $1B
    rra                                           ; $4B02: $1F
    inc c                                         ; $4B03: $0C
    rrca                                          ; $4B04: $0F
    inc bc                                        ; $4B05: $03
    rlca                                          ; $4B06: $07
    inc bc                                        ; $4B07: $03
    inc bc                                        ; $4B08: $03
    inc bc                                        ; $4B09: $03
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
    rst RST_38                                    ; $4B19: $FF
    nop                                           ; $4B1A: $00
    rst RST_38                                    ; $4B1B: $FF
    nop                                           ; $4B1C: $00
    rst RST_38                                    ; $4B1D: $FF
    nop                                           ; $4B1E: $00
    rst RST_38                                    ; $4B1F: $FF
    nop                                           ; $4B20: $00
    rst RST_38                                    ; $4B21: $FF
    ld bc, $FFFE                                  ; $4B22: $01 $FE $FF
    ld bc, $BDFF                                  ; $4B25: $01 $FF $BD
    inc sp                                        ; $4B28: $33
    ld sp, $0000                                  ; $4B29: $31 $00 $00
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
    ld b, h                                       ; $4B38: $44
    add b                                         ; $4B39: $80
    ld l, $C4                                     ; $4B3A: $2E $C4
    ld a, $CC                                     ; $4B3C: $3E $CC
    ld a, h                                       ; $4B3E: $7C
    sbc b                                         ; $4B3F: $98
    db $FC                                        ; $4B40: $FC
    jr c, @-$06                                   ; $4B41: $38 $F8

    ldh a, [$FFF0]                                ; $4B43: $F0 $F0
    ld h, b                                       ; $4B45: $60
    ldh [$FF80], a                                ; $4B46: $E0 $80
    jr nz, jr_034_4B4A                            ; $4B48: $20 $00

jr_034_4B4A:
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
    ret nz                                        ; $4B58: $C0

    nop                                           ; $4B59: $00
    ldh [$FFC0], a                                ; $4B5A: $E0 $C0
    db $10                                        ; $4B5C: $10
    ldh [$FFD0], a                                ; $4B5D: $E0 $D0
    ldh [rNR10], a                                ; $4B5F: $E0 $10
    ldh [$FFD0], a                                ; $4B61: $E0 $D0
    ldh [rNR10], a                                ; $4B63: $E0 $10
    ldh [$FFD0], a                                ; $4B65: $E0 $D0
    ldh [rNR10], a                                ; $4B67: $E0 $10
    ldh [$FFD0], a                                ; $4B69: $E0 $D0
    ldh [rNR10], a                                ; $4B6B: $E0 $10
    ldh [rNR41], a                                ; $4B6D: $E0 $20
    ret nz                                        ; $4B6F: $C0

    ret nz                                        ; $4B70: $C0

    nop                                           ; $4B71: $00
    nop                                           ; $4B72: $00
    nop                                           ; $4B73: $00
    nop                                           ; $4B74: $00
    nop                                           ; $4B75: $00
    ldh a, [rP1]                                  ; $4B76: $F0 $00
    nop                                           ; $4B78: $00
    nop                                           ; $4B79: $00
    rrca                                          ; $4B7A: $0F
    nop                                           ; $4B7B: $00
    inc e                                         ; $4B7C: $1C
    rrca                                          ; $4B7D: $0F
    dec sp                                        ; $4B7E: $3B
    rra                                           ; $4B7F: $1F
    halt                                          ; $4B80: $76
    ccf                                           ; $4B81: $3F
    ld l, l                                       ; $4B82: $6D
    ccf                                           ; $4B83: $3F
    ld e, e                                       ; $4B84: $5B
    ccf                                           ; $4B85: $3F
    ld [hl], $1F                                  ; $4B86: $36 $1F
    dec e                                         ; $4B88: $1D
    rrca                                          ; $4B89: $0F
    dec bc                                        ; $4B8A: $0B
    rlca                                          ; $4B8B: $07
    ld b, $03                                     ; $4B8C: $06 $03
    ld [bc], a                                    ; $4B8E: $02
    ld bc, $0001                                  ; $4B8F: $01 $01 $00
    nop                                           ; $4B92: $00
    nop                                           ; $4B93: $00
    nop                                           ; $4B94: $00
    nop                                           ; $4B95: $00
    ld a, a                                       ; $4B96: $7F
    nop                                           ; $4B97: $00
    nop                                           ; $4B98: $00
    nop                                           ; $4B99: $00
    nop                                           ; $4B9A: $00
    nop                                           ; $4B9B: $00
    add b                                         ; $4B9C: $80
    nop                                           ; $4B9D: $00
    ld b, b                                       ; $4B9E: $40
    add b                                         ; $4B9F: $80
    and b                                         ; $4BA0: $A0
    ret nz                                        ; $4BA1: $C0

    sub b                                         ; $4BA2: $90
    ldh [rBCPS], a                                ; $4BA3: $E0 $68
    ldh a, [$FFC4]                                ; $4BA5: $F0 $C4
    ld hl, sp-$5C                                 ; $4BA7: $F8 $A4
    ld hl, sp+$44                                 ; $4BA9: $F8 $44
    ld hl, sp-$78                                 ; $4BAB: $F8 $88
    ldh a, [rNR10]                                ; $4BAD: $F0 $10
    ldh [$FFE0], a                                ; $4BAF: $E0 $E0
    nop                                           ; $4BB1: $00
    nop                                           ; $4BB2: $00
    nop                                           ; $4BB3: $00
    nop                                           ; $4BB4: $00
    nop                                           ; $4BB5: $00
    ld hl, sp+$00                                 ; $4BB6: $F8 $00
    nop                                           ; $4BB8: $00
    nop                                           ; $4BB9: $00
    nop                                           ; $4BBA: $00
    nop                                           ; $4BBB: $00
    nop                                           ; $4BBC: $00
    nop                                           ; $4BBD: $00
    nop                                           ; $4BBE: $00
    nop                                           ; $4BBF: $00
    inc c                                         ; $4BC0: $0C
    nop                                           ; $4BC1: $00
    ld [de], a                                    ; $4BC2: $12
    inc c                                         ; $4BC3: $0C
    ld de, $090E                                  ; $4BC4: $11 $0E $09
    rlca                                          ; $4BC7: $07
    dec b                                         ; $4BC8: $05
    inc bc                                        ; $4BC9: $03
    inc bc                                        ; $4BCA: $03
    ld bc, $0001                                  ; $4BCB: $01 $01 $00
    nop                                           ; $4BCE: $00
    nop                                           ; $4BCF: $00
    nop                                           ; $4BD0: $00
    nop                                           ; $4BD1: $00
    nop                                           ; $4BD2: $00
    nop                                           ; $4BD3: $00
    nop                                           ; $4BD4: $00
    nop                                           ; $4BD5: $00
    rra                                           ; $4BD6: $1F
    nop                                           ; $4BD7: $00
    nop                                           ; $4BD8: $00
    nop                                           ; $4BD9: $00
    nop                                           ; $4BDA: $00
    nop                                           ; $4BDB: $00
    nop                                           ; $4BDC: $00
    nop                                           ; $4BDD: $00
    nop                                           ; $4BDE: $00
    nop                                           ; $4BDF: $00
    nop                                           ; $4BE0: $00
    nop                                           ; $4BE1: $00
    nop                                           ; $4BE2: $00
    nop                                           ; $4BE3: $00
    adc [hl]                                      ; $4BE4: $8E
    nop                                           ; $4BE5: $00
    rst RST_38                                    ; $4BE6: $FF
    adc [hl]                                      ; $4BE7: $8E
    rst RST_38                                    ; $4BE8: $FF
    cp $FE                                        ; $4BE9: $FE $FE
    ld hl, sp-$08                                 ; $4BEB: $F8 $F8
    ldh [$FFE0], a                                ; $4BED: $E0 $E0
    nop                                           ; $4BEF: $00
    nop                                           ; $4BF0: $00
    nop                                           ; $4BF1: $00
    nop                                           ; $4BF2: $00
    nop                                           ; $4BF3: $00
    nop                                           ; $4BF4: $00
    nop                                           ; $4BF5: $00
    rst RST_38                                    ; $4BF6: $FF
    nop                                           ; $4BF7: $00
    nop                                           ; $4BF8: $00
    nop                                           ; $4BF9: $00
    nop                                           ; $4BFA: $00
    nop                                           ; $4BFB: $00
    nop                                           ; $4BFC: $00
    nop                                           ; $4BFD: $00
    ld bc, $0200                                  ; $4BFE: $01 $00 $02
    ld bc, $030C                                  ; $4C01: $01 $0C $03
    rra                                           ; $4C04: $1F
    rrca                                          ; $4C05: $0F
    ccf                                           ; $4C06: $3F
    ld e, $3E                                     ; $4C07: $1E $3E
    inc e                                         ; $4C09: $1C
    ld a, $1C                                     ; $4C0A: $3E $1C
    ld e, $0C                                     ; $4C0C: $1E $0C
    rrca                                          ; $4C0E: $0F
    ld b, $07                                     ; $4C0F: $06 $07
    inc bc                                        ; $4C11: $03
    inc bc                                        ; $4C12: $03
    nop                                           ; $4C13: $00
    nop                                           ; $4C14: $00
    nop                                           ; $4C15: $00
    ccf                                           ; $4C16: $3F
    nop                                           ; $4C17: $00
    nop                                           ; $4C18: $00
    nop                                           ; $4C19: $00
    nop                                           ; $4C1A: $00
    nop                                           ; $4C1B: $00
    nop                                           ; $4C1C: $00
    nop                                           ; $4C1D: $00
    add b                                         ; $4C1E: $80
    nop                                           ; $4C1F: $00
    ld b, b                                       ; $4C20: $40
    add b                                         ; $4C21: $80
    ld b, b                                       ; $4C22: $40
    add b                                         ; $4C23: $80
    add b                                         ; $4C24: $80
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
    add b                                         ; $4C30: $80
    nop                                           ; $4C31: $00
    nop                                           ; $4C32: $00
    nop                                           ; $4C33: $00
    nop                                           ; $4C34: $00
    nop                                           ; $4C35: $00
    ret nz                                        ; $4C36: $C0

    nop                                           ; $4C37: $00
    nop                                           ; $4C38: $00
    nop                                           ; $4C39: $00
    nop                                           ; $4C3A: $00
    nop                                           ; $4C3B: $00
    nop                                           ; $4C3C: $00
    nop                                           ; $4C3D: $00
    nop                                           ; $4C3E: $00
    nop                                           ; $4C3F: $00
    nop                                           ; $4C40: $00
    nop                                           ; $4C41: $00
    nop                                           ; $4C42: $00
    nop                                           ; $4C43: $00
    nop                                           ; $4C44: $00
    nop                                           ; $4C45: $00
    nop                                           ; $4C46: $00
    nop                                           ; $4C47: $00
    nop                                           ; $4C48: $00
    nop                                           ; $4C49: $00
    inc bc                                        ; $4C4A: $03
    nop                                           ; $4C4B: $00
    ld c, $01                                     ; $4C4C: $0E $01
    ld [de], a                                    ; $4C4E: $12
    dec c                                         ; $4C4F: $0D
    inc de                                        ; $4C50: $13
    inc c                                         ; $4C51: $0C
    rla                                           ; $4C52: $17
    ld [$041B], sp                                ; $4C53: $08 $1B $04
    db $10                                        ; $4C56: $10
    rrca                                          ; $4C57: $0F
    nop                                           ; $4C58: $00
    nop                                           ; $4C59: $00
    jr jr_034_4C5C                                ; $4C5A: $18 $00

jr_034_4C5C:
    inc a                                         ; $4C5C: $3C
    jr jr_034_4CD9                                ; $4C5D: $18 $7A

    inc a                                         ; $4C5F: $3C
    ld a, d                                       ; $4C60: $7A
    inc h                                         ; $4C61: $24
    ld a, [hl]                                    ; $4C62: $7E
    jr jr_034_4CDF                                ; $4C63: $18 $7A

    inc a                                         ; $4C65: $3C
    ld a, d                                       ; $4C66: $7A
    inc h                                         ; $4C67: $24
    ld a, [hl]                                    ; $4C68: $7E
    nop                                           ; $4C69: $00
    jp c, $D93C                                   ; $4C6A: $DA $3C $D9

    ld a, [hl]                                    ; $4C6D: $7E
    reti                                          ; $4C6E: $D9


    ld a, [hl]                                    ; $4C6F: $7E
    reti                                          ; $4C70: $D9


    ld a, [hl]                                    ; $4C71: $7E
    reti                                          ; $4C72: $D9


    ld a, [hl]                                    ; $4C73: $7E
    reti                                          ; $4C74: $D9


    ld a, [hl]                                    ; $4C75: $7E
    rst RST_38                                    ; $4C76: $FF
    nop                                           ; $4C77: $00
    nop                                           ; $4C78: $00
    nop                                           ; $4C79: $00
    nop                                           ; $4C7A: $00

jr_034_4C7B:
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
    nop                                           ; $4C86: $00
    nop                                           ; $4C87: $00
    nop                                           ; $4C88: $00
    nop                                           ; $4C89: $00
    add b                                         ; $4C8A: $80
    nop                                           ; $4C8B: $00
    ldh a, [rP1]                                  ; $4C8C: $F0 $00
    adc b                                         ; $4C8E: $88
    ld [hl], b                                    ; $4C8F: $70
    ret z                                         ; $4C90: $C8

    jr nc, jr_034_4C7B                            ; $4C91: $30 $E8

    db $10                                        ; $4C93: $10
    ld e, b                                       ; $4C94: $58
    and b                                         ; $4C95: $A0
    ret z                                         ; $4C96: $C8

    jr nc, jr_034_4C99                            ; $4C97: $30 $00

jr_034_4C99:
    nop                                           ; $4C99: $00
    nop                                           ; $4C9A: $00
    nop                                           ; $4C9B: $00
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
    inc bc                                        ; $4CAA: $03
    nop                                           ; $4CAB: $00
    ld c, $01                                     ; $4CAC: $0E $01
    ld [de], a                                    ; $4CAE: $12
    dec c                                         ; $4CAF: $0D
    inc de                                        ; $4CB0: $13
    inc c                                         ; $4CB1: $0C
    rla                                           ; $4CB2: $17
    ld [$041B], sp                                ; $4CB3: $08 $1B $04
    db $10                                        ; $4CB6: $10
    rrca                                          ; $4CB7: $0F
    nop                                           ; $4CB8: $00
    nop                                           ; $4CB9: $00
    jr jr_034_4CBC                                ; $4CBA: $18 $00

jr_034_4CBC:
    inc a                                         ; $4CBC: $3C
    jr @+$7C                                      ; $4CBD: $18 $7A

    inc a                                         ; $4CBF: $3C
    ld a, d                                       ; $4CC0: $7A
    inc h                                         ; $4CC1: $24
    ld a, [hl]                                    ; $4CC2: $7E
    jr @+$7C                                      ; $4CC3: $18 $7A

    inc a                                         ; $4CC5: $3C
    ld a, d                                       ; $4CC6: $7A
    inc h                                         ; $4CC7: $24
    ld a, [hl]                                    ; $4CC8: $7E
    nop                                           ; $4CC9: $00
    jp c, $D93C                                   ; $4CCA: $DA $3C $D9

    ld a, [hl]                                    ; $4CCD: $7E
    reti                                          ; $4CCE: $D9


    ld a, [hl]                                    ; $4CCF: $7E
    reti                                          ; $4CD0: $D9


    ld a, [hl]                                    ; $4CD1: $7E
    reti                                          ; $4CD2: $D9


    ld a, [hl]                                    ; $4CD3: $7E
    reti                                          ; $4CD4: $D9


    ld a, [hl]                                    ; $4CD5: $7E
    rst RST_38                                    ; $4CD6: $FF
    nop                                           ; $4CD7: $00
    nop                                           ; $4CD8: $00

jr_034_4CD9:
    nop                                           ; $4CD9: $00
    nop                                           ; $4CDA: $00

jr_034_4CDB:
    nop                                           ; $4CDB: $00
    nop                                           ; $4CDC: $00
    nop                                           ; $4CDD: $00
    nop                                           ; $4CDE: $00

jr_034_4CDF:
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
    ldh a, [rP1]                                  ; $4CEC: $F0 $00
    adc b                                         ; $4CEE: $88
    ld [hl], b                                    ; $4CEF: $70
    ret z                                         ; $4CF0: $C8

    jr nc, jr_034_4CDB                            ; $4CF1: $30 $E8

    db $10                                        ; $4CF3: $10
    ld e, b                                       ; $4CF4: $58
    and b                                         ; $4CF5: $A0
    ret z                                         ; $4CF6: $C8

    jr nc, jr_034_4D10                            ; $4CF7: $30 $17

    ld [$001F], sp                                ; $4CF9: $08 $1F $00
    rra                                           ; $4CFC: $1F
    nop                                           ; $4CFD: $00
    db $10                                        ; $4CFE: $10
    rrca                                          ; $4CFF: $0F
    db $10                                        ; $4D00: $10
    rrca                                          ; $4D01: $0F
    rra                                           ; $4D02: $1F
    nop                                           ; $4D03: $00
    rra                                           ; $4D04: $1F
    nop                                           ; $4D05: $00
    rra                                           ; $4D06: $1F
    rrca                                          ; $4D07: $0F
    inc de                                        ; $4D08: $13
    nop                                           ; $4D09: $00
    nop                                           ; $4D0A: $00
    nop                                           ; $4D0B: $00
    nop                                           ; $4D0C: $00
    nop                                           ; $4D0D: $00
    nop                                           ; $4D0E: $00
    nop                                           ; $4D0F: $00

jr_034_4D10:
    nop                                           ; $4D10: $00
    nop                                           ; $4D11: $00
    nop                                           ; $4D12: $00
    nop                                           ; $4D13: $00
    nop                                           ; $4D14: $00
    nop                                           ; $4D15: $00
    nop                                           ; $4D16: $00
    nop                                           ; $4D17: $00
    db $FD                                        ; $4D18: $FD
    ld a, [hl]                                    ; $4D19: $7E
    ei                                            ; $4D1A: $FB
    inc a                                         ; $4D1B: $3C
    jp Jump_000_3C3C                              ; $4D1C: $C3 $3C $3C


    jp $817E                                      ; $4D1F: $C3 $7E $81


    db $DB                                        ; $4D22: $DB
    inc h                                         ; $4D23: $24
    db $DB                                        ; $4D24: $DB
    inc h                                         ; $4D25: $24
    rst RST_38                                    ; $4D26: $FF
    nop                                           ; $4D27: $00
    inc sp                                        ; $4D28: $33
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
    add sp, $10                                   ; $4D38: $E8 $10
    ld hl, sp+$00                                 ; $4D3A: $F8 $00
    ld hl, sp+$00                                 ; $4D3C: $F8 $00
    ld [$08F0], sp                                ; $4D3E: $08 $F0 $08
    ldh a, [$FFF8]                                ; $4D41: $F0 $F8
    nop                                           ; $4D43: $00
    ld hl, sp+$00                                 ; $4D44: $F8 $00
    ld hl, sp-$10                                 ; $4D46: $F8 $F0
    jr nc, jr_034_4D4A                            ; $4D48: $30 $00

jr_034_4D4A:
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
    nop                                           ; $4D5E: $00
    nop                                           ; $4D5F: $00
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
    nop                                           ; $4DA0: $00
    nop                                           ; $4DA1: $00
    nop                                           ; $4DA2: $00
    nop                                           ; $4DA3: $00
    nop                                           ; $4DA4: $00
    nop                                           ; $4DA5: $00
    nop                                           ; $4DA6: $00
    nop                                           ; $4DA7: $00
    nop                                           ; $4DA8: $00
    nop                                           ; $4DA9: $00
    nop                                           ; $4DAA: $00
    nop                                           ; $4DAB: $00
    nop                                           ; $4DAC: $00
    nop                                           ; $4DAD: $00
    nop                                           ; $4DAE: $00
    nop                                           ; $4DAF: $00
    nop                                           ; $4DB0: $00
    nop                                           ; $4DB1: $00
    nop                                           ; $4DB2: $00
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
    nop                                           ; $4DC0: $00
    nop                                           ; $4DC1: $00
    nop                                           ; $4DC2: $00
    nop                                           ; $4DC3: $00
    nop                                           ; $4DC4: $00
    nop                                           ; $4DC5: $00
    nop                                           ; $4DC6: $00
    nop                                           ; $4DC7: $00
    nop                                           ; $4DC8: $00
    nop                                           ; $4DC9: $00
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

jr_034_4DDC:
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
    nop                                           ; $4DF4: $00
    nop                                           ; $4DF5: $00
    nop                                           ; $4DF6: $00
    nop                                           ; $4DF7: $00
    inc bc                                        ; $4DF8: $03
    nop                                           ; $4DF9: $00
    rlca                                          ; $4DFA: $07
    inc bc                                        ; $4DFB: $03
    ld c, $07                                     ; $4DFC: $0E $07
    ld c, $07                                     ; $4DFE: $0E $07
    ld d, $0F                                     ; $4E00: $16 $0F
    ld d, $0F                                     ; $4E02: $16 $0F
    ld d, $0F                                     ; $4E04: $16 $0F
    ld d, $0F                                     ; $4E06: $16 $0F
    rla                                           ; $4E08: $17
    ld [$001F], sp                                ; $4E09: $08 $1F $00
    rrca                                          ; $4E0C: $0F
    nop                                           ; $4E0D: $00
    rlca                                          ; $4E0E: $07
    nop                                           ; $4E0F: $00
    nop                                           ; $4E10: $00
    nop                                           ; $4E11: $00
    nop                                           ; $4E12: $00
    nop                                           ; $4E13: $00
    nop                                           ; $4E14: $00
    nop                                           ; $4E15: $00
    rra                                           ; $4E16: $1F
    nop                                           ; $4E17: $00
    ret nz                                        ; $4E18: $C0

    nop                                           ; $4E19: $00
    jr nz, jr_034_4DDC                            ; $4E1A: $20 $C0

    db $10                                        ; $4E1C: $10
    ldh [rNR10], a                                ; $4E1D: $E0 $10
    ldh [$FF08], a                                ; $4E1F: $E0 $08
    ldh a, [$FF08]                                ; $4E21: $F0 $08
    ldh a, [$FF08]                                ; $4E23: $F0 $08
    ldh a, [$FF08]                                ; $4E25: $F0 $08
    ldh a, [$FFE8]                                ; $4E27: $F0 $E8
    db $10                                        ; $4E29: $10
    ld hl, sp+$00                                 ; $4E2A: $F8 $00
    ldh a, [rP1]                                  ; $4E2C: $F0 $00
    ldh [rP1], a                                  ; $4E2E: $E0 $00
    nop                                           ; $4E30: $00
    nop                                           ; $4E31: $00
    nop                                           ; $4E32: $00
    nop                                           ; $4E33: $00
    nop                                           ; $4E34: $00
    nop                                           ; $4E35: $00
    ld hl, sp+$00                                 ; $4E36: $F8 $00
    rla                                           ; $4E38: $17
    ld [$001F], sp                                ; $4E39: $08 $1F $00
    rra                                           ; $4E3C: $1F
    nop                                           ; $4E3D: $00
    db $10                                        ; $4E3E: $10
    rrca                                          ; $4E3F: $0F
    db $10                                        ; $4E40: $10
    rrca                                          ; $4E41: $0F
    rra                                           ; $4E42: $1F
    nop                                           ; $4E43: $00
    rra                                           ; $4E44: $1F
    nop                                           ; $4E45: $00
    rra                                           ; $4E46: $1F
    rrca                                          ; $4E47: $0F
    rra                                           ; $4E48: $1F
    nop                                           ; $4E49: $00
    rra                                           ; $4E4A: $1F
    rrca                                          ; $4E4B: $0F
    rra                                           ; $4E4C: $1F
    nop                                           ; $4E4D: $00
    rrca                                          ; $4E4E: $0F
    nop                                           ; $4E4F: $00
    nop                                           ; $4E50: $00
    nop                                           ; $4E51: $00
    nop                                           ; $4E52: $00
    nop                                           ; $4E53: $00
    nop                                           ; $4E54: $00
    nop                                           ; $4E55: $00
    nop                                           ; $4E56: $00
    nop                                           ; $4E57: $00
    db $FD                                        ; $4E58: $FD
    ld a, [hl]                                    ; $4E59: $7E
    ei                                            ; $4E5A: $FB
    inc a                                         ; $4E5B: $3C
    jp Jump_000_3C3C                              ; $4E5C: $C3 $3C $3C


    jp $817E                                      ; $4E5F: $C3 $7E $81


    db $DB                                        ; $4E62: $DB
    inc h                                         ; $4E63: $24
    db $DB                                        ; $4E64: $DB
    inc h                                         ; $4E65: $24
    rst RST_38                                    ; $4E66: $FF
    nop                                           ; $4E67: $00
    rst RST_38                                    ; $4E68: $FF
    nop                                           ; $4E69: $00
    rst RST_38                                    ; $4E6A: $FF
    nop                                           ; $4E6B: $00
    rst RST_38                                    ; $4E6C: $FF
    nop                                           ; $4E6D: $00
    rst RST_38                                    ; $4E6E: $FF
    nop                                           ; $4E6F: $00
    nop                                           ; $4E70: $00
    nop                                           ; $4E71: $00
    nop                                           ; $4E72: $00
    nop                                           ; $4E73: $00
    nop                                           ; $4E74: $00
    nop                                           ; $4E75: $00
    nop                                           ; $4E76: $00
    nop                                           ; $4E77: $00
    db $EC                                        ; $4E78: $EC
    db $10                                        ; $4E79: $10
    cp $00                                        ; $4E7A: $FE $00
    cp $00                                        ; $4E7C: $FE $00
    ld c, $F0                                     ; $4E7E: $0E $F0
    ld c, $F0                                     ; $4E80: $0E $F0
    cp $00                                        ; $4E82: $FE $00
    cp $00                                        ; $4E84: $FE $00
    cp $F0                                        ; $4E86: $FE $F0
    cp $00                                        ; $4E88: $FE $00
    cp $F0                                        ; $4E8A: $FE $F0
    cp $00                                        ; $4E8C: $FE $00
    db $FC                                        ; $4E8E: $FC
    nop                                           ; $4E8F: $00
    nop                                           ; $4E90: $00
    nop                                           ; $4E91: $00
    nop                                           ; $4E92: $00
    nop                                           ; $4E93: $00
    nop                                           ; $4E94: $00
    nop                                           ; $4E95: $00
    nop                                           ; $4E96: $00
    nop                                           ; $4E97: $00
    rla                                           ; $4E98: $17
    ld [$001F], sp                                ; $4E99: $08 $1F $00
    rra                                           ; $4E9C: $1F
    nop                                           ; $4E9D: $00
    db $10                                        ; $4E9E: $10
    rrca                                          ; $4E9F: $0F
    db $10                                        ; $4EA0: $10
    rrca                                          ; $4EA1: $0F
    rra                                           ; $4EA2: $1F
    nop                                           ; $4EA3: $00
    rra                                           ; $4EA4: $1F
    rrca                                          ; $4EA5: $0F
    rra                                           ; $4EA6: $1F
    nop                                           ; $4EA7: $00
    rra                                           ; $4EA8: $1F
    rrca                                          ; $4EA9: $0F
    rra                                           ; $4EAA: $1F
    nop                                           ; $4EAB: $00
    rra                                           ; $4EAC: $1F
    nop                                           ; $4EAD: $00
    rrca                                          ; $4EAE: $0F
    nop                                           ; $4EAF: $00
    nop                                           ; $4EB0: $00
    nop                                           ; $4EB1: $00
    nop                                           ; $4EB2: $00
    nop                                           ; $4EB3: $00
    nop                                           ; $4EB4: $00
    nop                                           ; $4EB5: $00
    nop                                           ; $4EB6: $00
    nop                                           ; $4EB7: $00
    db $FD                                        ; $4EB8: $FD
    ld a, [hl]                                    ; $4EB9: $7E
    ei                                            ; $4EBA: $FB
    inc a                                         ; $4EBB: $3C
    jp Jump_000_3C3C                              ; $4EBC: $C3 $3C $3C


    jp $817E                                      ; $4EBF: $C3 $7E $81


    db $DB                                        ; $4EC2: $DB
    inc h                                         ; $4EC3: $24
    db $DB                                        ; $4EC4: $DB
    inc h                                         ; $4EC5: $24
    rst RST_38                                    ; $4EC6: $FF
    nop                                           ; $4EC7: $00
    rst RST_38                                    ; $4EC8: $FF
    nop                                           ; $4EC9: $00
    rst RST_38                                    ; $4ECA: $FF
    nop                                           ; $4ECB: $00
    rst RST_38                                    ; $4ECC: $FF
    nop                                           ; $4ECD: $00
    rst RST_38                                    ; $4ECE: $FF
    nop                                           ; $4ECF: $00
    nop                                           ; $4ED0: $00
    nop                                           ; $4ED1: $00
    nop                                           ; $4ED2: $00
    nop                                           ; $4ED3: $00
    nop                                           ; $4ED4: $00
    nop                                           ; $4ED5: $00
    nop                                           ; $4ED6: $00
    nop                                           ; $4ED7: $00
    db $EC                                        ; $4ED8: $EC
    db $10                                        ; $4ED9: $10
    cp $00                                        ; $4EDA: $FE $00
    cp $00                                        ; $4EDC: $FE $00
    ld c, $F0                                     ; $4EDE: $0E $F0
    ld c, $F0                                     ; $4EE0: $0E $F0
    cp $00                                        ; $4EE2: $FE $00
    cp $F0                                        ; $4EE4: $FE $F0
    cp $00                                        ; $4EE6: $FE $00
    cp $F0                                        ; $4EE8: $FE $F0
    cp $00                                        ; $4EEA: $FE $00
    db $FC                                        ; $4EEC: $FC
    nop                                           ; $4EED: $00
    ld hl, sp+$00                                 ; $4EEE: $F8 $00
    nop                                           ; $4EF0: $00
    nop                                           ; $4EF1: $00
    nop                                           ; $4EF2: $00
    nop                                           ; $4EF3: $00
    nop                                           ; $4EF4: $00
    nop                                           ; $4EF5: $00
    nop                                           ; $4EF6: $00
    nop                                           ; $4EF7: $00
    rla                                           ; $4EF8: $17
    ld [$001F], sp                                ; $4EF9: $08 $1F $00
    rra                                           ; $4EFC: $1F
    nop                                           ; $4EFD: $00
    db $10                                        ; $4EFE: $10
    rrca                                          ; $4EFF: $0F
    db $10                                        ; $4F00: $10
    rrca                                          ; $4F01: $0F
    rra                                           ; $4F02: $1F
    nop                                           ; $4F03: $00
    rra                                           ; $4F04: $1F
    rrca                                          ; $4F05: $0F
    rra                                           ; $4F06: $1F
    nop                                           ; $4F07: $00
    inc c                                         ; $4F08: $0C
    inc c                                         ; $4F09: $0C
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
    db $FD                                        ; $4F18: $FD
    ld a, [hl]                                    ; $4F19: $7E
    ei                                            ; $4F1A: $FB
    inc a                                         ; $4F1B: $3C
    jp Jump_000_3C3C                              ; $4F1C: $C3 $3C $3C


    jp $817E                                      ; $4F1F: $C3 $7E $81


    db $DB                                        ; $4F22: $DB
    inc h                                         ; $4F23: $24
    db $DB                                        ; $4F24: $DB
    inc h                                         ; $4F25: $24
    rst RST_38                                    ; $4F26: $FF
    nop                                           ; $4F27: $00
    call z, RST_00                                ; $4F28: $CC $00 $00
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
    add sp, $10                                   ; $4F38: $E8 $10
    ld hl, sp+$00                                 ; $4F3A: $F8 $00
    ld hl, sp+$00                                 ; $4F3C: $F8 $00
    ld [$08F0], sp                                ; $4F3E: $08 $F0 $08
    ldh a, [$FFF8]                                ; $4F41: $F0 $F8
    nop                                           ; $4F43: $00
    ld hl, sp-$10                                 ; $4F44: $F8 $F0
    ld hl, sp+$00                                 ; $4F46: $F8 $00
    ret z                                         ; $4F48: $C8

    ret nz                                        ; $4F49: $C0

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
    nop                                           ; $4FAE: $00
    nop                                           ; $4FAF: $00
    nop                                           ; $4FB0: $00
    nop                                           ; $4FB1: $00
    nop                                           ; $4FB2: $00
    nop                                           ; $4FB3: $00
    nop                                           ; $4FB4: $00
    nop                                           ; $4FB5: $00
    nop                                           ; $4FB6: $00
    nop                                           ; $4FB7: $00
    nop                                           ; $4FB8: $00
    nop                                           ; $4FB9: $00
    nop                                           ; $4FBA: $00
    nop                                           ; $4FBB: $00
    nop                                           ; $4FBC: $00
    nop                                           ; $4FBD: $00
    nop                                           ; $4FBE: $00
    nop                                           ; $4FBF: $00
    nop                                           ; $4FC0: $00
    nop                                           ; $4FC1: $00
    nop                                           ; $4FC2: $00
    nop                                           ; $4FC3: $00
    nop                                           ; $4FC4: $00
    nop                                           ; $4FC5: $00
    nop                                           ; $4FC6: $00
    nop                                           ; $4FC7: $00
    nop                                           ; $4FC8: $00
    nop                                           ; $4FC9: $00
    nop                                           ; $4FCA: $00
    nop                                           ; $4FCB: $00
    nop                                           ; $4FCC: $00
    nop                                           ; $4FCD: $00
    nop                                           ; $4FCE: $00
    nop                                           ; $4FCF: $00
    nop                                           ; $4FD0: $00
    nop                                           ; $4FD1: $00
    nop                                           ; $4FD2: $00
    nop                                           ; $4FD3: $00
    nop                                           ; $4FD4: $00
    nop                                           ; $4FD5: $00
    nop                                           ; $4FD6: $00
    nop                                           ; $4FD7: $00
    nop                                           ; $4FD8: $00
    nop                                           ; $4FD9: $00
    nop                                           ; $4FDA: $00
    nop                                           ; $4FDB: $00
    nop                                           ; $4FDC: $00
    nop                                           ; $4FDD: $00

jr_034_4FDE:
    nop                                           ; $4FDE: $00
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
    nop                                           ; $4FF2: $00
    nop                                           ; $4FF3: $00
    nop                                           ; $4FF4: $00
    nop                                           ; $4FF5: $00
    nop                                           ; $4FF6: $00
    nop                                           ; $4FF7: $00
    nop                                           ; $4FF8: $00
    nop                                           ; $4FF9: $00
    inc bc                                        ; $4FFA: $03
    nop                                           ; $4FFB: $00
    rlca                                          ; $4FFC: $07
    inc bc                                        ; $4FFD: $03
    ld c, $07                                     ; $4FFE: $0E $07
    ld c, $07                                     ; $5000: $0E $07
    ld d, $0F                                     ; $5002: $16 $0F
    ld d, $0F                                     ; $5004: $16 $0F
    ld d, $0F                                     ; $5006: $16 $0F
    ld d, $0F                                     ; $5008: $16 $0F
    rla                                           ; $500A: $17
    ld [$001F], sp                                ; $500B: $08 $1F $00
    rrca                                          ; $500E: $0F
    nop                                           ; $500F: $00
    rlca                                          ; $5010: $07
    nop                                           ; $5011: $00
    nop                                           ; $5012: $00
    nop                                           ; $5013: $00
    nop                                           ; $5014: $00
    nop                                           ; $5015: $00
    rra                                           ; $5016: $1F
    nop                                           ; $5017: $00
    nop                                           ; $5018: $00
    nop                                           ; $5019: $00
    ret nz                                        ; $501A: $C0

    nop                                           ; $501B: $00
    jr nz, jr_034_4FDE                            ; $501C: $20 $C0

    db $10                                        ; $501E: $10
    ldh [rNR10], a                                ; $501F: $E0 $10
    ldh [$FF08], a                                ; $5021: $E0 $08
    ldh a, [$FF08]                                ; $5023: $F0 $08
    ldh a, [$FF08]                                ; $5025: $F0 $08
    ldh a, [$FF08]                                ; $5027: $F0 $08
    ldh a, [$FFE8]                                ; $5029: $F0 $E8
    db $10                                        ; $502B: $10
    ld hl, sp+$00                                 ; $502C: $F8 $00
    ldh a, [rP1]                                  ; $502E: $F0 $00
    ldh [rP1], a                                  ; $5030: $E0 $00
    nop                                           ; $5032: $00
    nop                                           ; $5033: $00
    nop                                           ; $5034: $00
    nop                                           ; $5035: $00
    ld hl, sp+$00                                 ; $5036: $F8 $00
    nop                                           ; $5038: $00
    nop                                           ; $5039: $00
    nop                                           ; $503A: $00
    nop                                           ; $503B: $00
    nop                                           ; $503C: $00
    nop                                           ; $503D: $00
    nop                                           ; $503E: $00
    nop                                           ; $503F: $00
    nop                                           ; $5040: $00
    nop                                           ; $5041: $00
    nop                                           ; $5042: $00
    nop                                           ; $5043: $00
    inc bc                                        ; $5044: $03
    nop                                           ; $5045: $00
    rlca                                          ; $5046: $07
    inc bc                                        ; $5047: $03
    rlca                                          ; $5048: $07
    inc bc                                        ; $5049: $03
    rlca                                          ; $504A: $07
    inc bc                                        ; $504B: $03
    rrca                                          ; $504C: $0F
    rlca                                          ; $504D: $07
    rra                                           ; $504E: $1F
    ld b, $0F                                     ; $504F: $06 $0F
    dec b                                         ; $5051: $05
    rra                                           ; $5052: $1F
    inc bc                                        ; $5053: $03
    rrca                                          ; $5054: $0F
    inc bc                                        ; $5055: $03
    rrca                                          ; $5056: $0F
    inc b                                         ; $5057: $04
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
    nop                                           ; $5062: $00
    nop                                           ; $5063: $00
    inc bc                                        ; $5064: $03
    nop                                           ; $5065: $00
    call z, $F003                                 ; $5066: $CC $03 $F0
    rst RST_08                                    ; $5069: $CF
    ld hl, sp-$01                                 ; $506A: $F8 $FF
    ld hl, sp-$01                                 ; $506C: $F8 $FF
    add [hl]                                      ; $506E: $86
    ld a, c                                       ; $506F: $79
    reti                                          ; $5070: $D9


    and $F8                                       ; $5071: $E6 $F8
    ld h, a                                       ; $5073: $67
    ldh [c], a                                    ; $5074: $E2
    db $FD                                        ; $5075: $FD
    ldh a, [c]                                    ; $5076: $F2
    xor l                                         ; $5077: $AD
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
    add b                                         ; $5086: $80
    nop                                           ; $5087: $00
    add b                                         ; $5088: $80
    nop                                           ; $5089: $00
    add b                                         ; $508A: $80
    nop                                           ; $508B: $00
    ld b, b                                       ; $508C: $40
    add b                                         ; $508D: $80
    ld h, b                                       ; $508E: $60
    add b                                         ; $508F: $80
    ld b, b                                       ; $5090: $40
    add b                                         ; $5091: $80
    ldh [rP1], a                                  ; $5092: $E0 $00
    add b                                         ; $5094: $80
    nop                                           ; $5095: $00
    ld b, b                                       ; $5096: $40
    add b                                         ; $5097: $80
    nop                                           ; $5098: $00
    nop                                           ; $5099: $00
    nop                                           ; $509A: $00
    nop                                           ; $509B: $00
    nop                                           ; $509C: $00
    nop                                           ; $509D: $00
    nop                                           ; $509E: $00
    nop                                           ; $509F: $00
    nop                                           ; $50A0: $00
    nop                                           ; $50A1: $00
    ld bc, $0300                                  ; $50A2: $01 $00 $03
    ld bc, $0307                                  ; $50A5: $01 $07 $03
    rlca                                          ; $50A8: $07
    inc bc                                        ; $50A9: $03
    rrca                                          ; $50AA: $0F
    rlca                                          ; $50AB: $07
    rra                                           ; $50AC: $1F
    ld b, $0F                                     ; $50AD: $06 $0F
    dec b                                         ; $50AF: $05
    rra                                           ; $50B0: $1F
    inc bc                                        ; $50B1: $03
    rrca                                          ; $50B2: $0F
    inc bc                                        ; $50B3: $03
    rrca                                          ; $50B4: $0F
    inc b                                         ; $50B5: $04
    rrca                                          ; $50B6: $0F
    inc b                                         ; $50B7: $04
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
    add [hl]                                      ; $50C2: $86
    nop                                           ; $50C3: $00
    ret                                           ; $50C4: $C9


    add [hl]                                      ; $50C5: $86
    ldh a, [$FFCF]                                ; $50C6: $F0 $CF
    ld hl, sp-$01                                 ; $50C8: $F8 $FF
    ld hl, sp-$01                                 ; $50CA: $F8 $FF
    add [hl]                                      ; $50CC: $86
    ld a, c                                       ; $50CD: $79
    reti                                          ; $50CE: $D9


    and $F8                                       ; $50CF: $E6 $F8
    ld h, a                                       ; $50D1: $67
    ldh [c], a                                    ; $50D2: $E2
    db $FD                                        ; $50D3: $FD
    ldh a, [c]                                    ; $50D4: $F2
    xor l                                         ; $50D5: $AD
    ld hl, sp-$49                                 ; $50D6: $F8 $B7
    nop                                           ; $50D8: $00
    nop                                           ; $50D9: $00
    nop                                           ; $50DA: $00
    nop                                           ; $50DB: $00
    nop                                           ; $50DC: $00
    nop                                           ; $50DD: $00
    nop                                           ; $50DE: $00
    nop                                           ; $50DF: $00
    nop                                           ; $50E0: $00
    nop                                           ; $50E1: $00
    nop                                           ; $50E2: $00
    nop                                           ; $50E3: $00
    nop                                           ; $50E4: $00
    nop                                           ; $50E5: $00
    add b                                         ; $50E6: $80
    nop                                           ; $50E7: $00
    add b                                         ; $50E8: $80
    nop                                           ; $50E9: $00
    ld b, b                                       ; $50EA: $40
    add b                                         ; $50EB: $80
    ld h, b                                       ; $50EC: $60
    add b                                         ; $50ED: $80
    ld b, b                                       ; $50EE: $40
    add b                                         ; $50EF: $80
    ldh [rP1], a                                  ; $50F0: $E0 $00
    add b                                         ; $50F2: $80
    nop                                           ; $50F3: $00
    ld b, b                                       ; $50F4: $40
    add b                                         ; $50F5: $80
    ld b, b                                       ; $50F6: $40
    add b                                         ; $50F7: $80
    nop                                           ; $50F8: $00
    nop                                           ; $50F9: $00
    nop                                           ; $50FA: $00
    nop                                           ; $50FB: $00
    nop                                           ; $50FC: $00
    nop                                           ; $50FD: $00
    nop                                           ; $50FE: $00
    nop                                           ; $50FF: $00
    inc bc                                        ; $5100: $03
    nop                                           ; $5101: $00
    rlca                                          ; $5102: $07
    inc bc                                        ; $5103: $03
    rlca                                          ; $5104: $07
    inc bc                                        ; $5105: $03
    rlca                                          ; $5106: $07
    inc bc                                        ; $5107: $03
    rrca                                          ; $5108: $0F
    rlca                                          ; $5109: $07
    rra                                           ; $510A: $1F
    ld b, $0F                                     ; $510B: $06 $0F
    dec b                                         ; $510D: $05
    rra                                           ; $510E: $1F
    inc bc                                        ; $510F: $03
    rrca                                          ; $5110: $0F
    inc bc                                        ; $5111: $03
    rrca                                          ; $5112: $0F
    inc b                                         ; $5113: $04
    rrca                                          ; $5114: $0F
    inc b                                         ; $5115: $04
    rrca                                          ; $5116: $0F
    rlca                                          ; $5117: $07
    nop                                           ; $5118: $00
    nop                                           ; $5119: $00
    nop                                           ; $511A: $00
    nop                                           ; $511B: $00
    nop                                           ; $511C: $00
    nop                                           ; $511D: $00
    nop                                           ; $511E: $00
    nop                                           ; $511F: $00
    inc bc                                        ; $5120: $03
    nop                                           ; $5121: $00
    call z, $F003                                 ; $5122: $CC $03 $F0
    rst RST_08                                    ; $5125: $CF
    ld hl, sp-$01                                 ; $5126: $F8 $FF
    ld hl, sp-$01                                 ; $5128: $F8 $FF
    add [hl]                                      ; $512A: $86
    ld a, c                                       ; $512B: $79
    reti                                          ; $512C: $D9


    and $F8                                       ; $512D: $E6 $F8
    ld h, a                                       ; $512F: $67
    ldh [c], a                                    ; $5130: $E2
    db $FD                                        ; $5131: $FD
    ldh a, [c]                                    ; $5132: $F2
    xor l                                         ; $5133: $AD
    ld hl, sp-$49                                 ; $5134: $F8 $B7
    ei                                            ; $5136: $FB
    or h                                          ; $5137: $B4
    nop                                           ; $5138: $00
    nop                                           ; $5139: $00
    nop                                           ; $513A: $00
    nop                                           ; $513B: $00
    nop                                           ; $513C: $00
    nop                                           ; $513D: $00
    nop                                           ; $513E: $00
    nop                                           ; $513F: $00
    nop                                           ; $5140: $00
    nop                                           ; $5141: $00
    add b                                         ; $5142: $80
    nop                                           ; $5143: $00
    add b                                         ; $5144: $80
    nop                                           ; $5145: $00
    add b                                         ; $5146: $80
    nop                                           ; $5147: $00
    ld b, b                                       ; $5148: $40
    add b                                         ; $5149: $80
    ld h, b                                       ; $514A: $60
    add b                                         ; $514B: $80
    ld b, b                                       ; $514C: $40
    add b                                         ; $514D: $80
    ldh [rP1], a                                  ; $514E: $E0 $00
    add b                                         ; $5150: $80
    nop                                           ; $5151: $00
    ld b, b                                       ; $5152: $40
    add b                                         ; $5153: $80
    ld b, b                                       ; $5154: $40
    add b                                         ; $5155: $80
    ld b, b                                       ; $5156: $40
    add b                                         ; $5157: $80
    rrca                                          ; $5158: $0F
    inc b                                         ; $5159: $04
    rrca                                          ; $515A: $0F
    rlca                                          ; $515B: $07
    rrca                                          ; $515C: $0F
    dec b                                         ; $515D: $05
    rrca                                          ; $515E: $0F
    rlca                                          ; $515F: $07
    rrca                                          ; $5160: $0F
    ld [bc], a                                    ; $5161: $02
    rlca                                          ; $5162: $07
    inc bc                                        ; $5163: $03
    rlca                                          ; $5164: $07
    ld [bc], a                                    ; $5165: $02
    rlca                                          ; $5166: $07
    inc bc                                        ; $5167: $03
    inc bc                                        ; $5168: $03
    inc bc                                        ; $5169: $03
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
    ld hl, sp-$49                                 ; $5178: $F8 $B7
    ei                                            ; $517A: $FB
    or h                                          ; $517B: $B4
    ei                                            ; $517C: $FB
    or h                                          ; $517D: $B4
    cp h                                          ; $517E: $BC
    ld e, e                                       ; $517F: $5B
    cp l                                          ; $5180: $BD
    ld d, d                                       ; $5181: $52
    cp h                                          ; $5182: $BC
    db $DB                                        ; $5183: $DB
    ld a, h                                       ; $5184: $7C
    adc e                                         ; $5185: $8B
    ld a, h                                       ; $5186: $7C
    or e                                          ; $5187: $B3
    ld [hl-], a                                   ; $5188: $32
    ld sp, $0000                                  ; $5189: $31 $00 $00
    nop                                           ; $518C: $00
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
    ld b, b                                       ; $5198: $40
    add b                                         ; $5199: $80
    ld b, b                                       ; $519A: $40
    add b                                         ; $519B: $80
    ld b, b                                       ; $519C: $40
    add b                                         ; $519D: $80
    ld b, b                                       ; $519E: $40
    add b                                         ; $519F: $80
    ld b, b                                       ; $51A0: $40
    add b                                         ; $51A1: $80
    ld b, b                                       ; $51A2: $40
    add b                                         ; $51A3: $80
    ld b, b                                       ; $51A4: $40
    add b                                         ; $51A5: $80
    ld b, b                                       ; $51A6: $40
    add b                                         ; $51A7: $80
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
    rrca                                          ; $51B8: $0F
    dec b                                         ; $51B9: $05
    rrca                                          ; $51BA: $0F
    rlca                                          ; $51BB: $07
    rrca                                          ; $51BC: $0F
    ld [bc], a                                    ; $51BD: $02
    rlca                                          ; $51BE: $07
    inc bc                                        ; $51BF: $03
    rlca                                          ; $51C0: $07
    ld [bc], a                                    ; $51C1: $02
    inc bc                                        ; $51C2: $03
    ld bc, $0001                                  ; $51C3: $01 $01 $00
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
    cp a                                          ; $51D8: $BF
    ret c                                         ; $51D9: $D8

    cp h                                          ; $51DA: $BC
    ld e, e                                       ; $51DB: $5B
    cp l                                          ; $51DC: $BD
    ld d, d                                       ; $51DD: $52
    cp h                                          ; $51DE: $BC
    db $DB                                        ; $51DF: $DB
    ld a, $CD                                     ; $51E0: $3E $CD
    ld e, [hl]                                    ; $51E2: $5E
    add l                                         ; $51E3: $85
    sbc a                                         ; $51E4: $9F
    ld c, $0F                                     ; $51E5: $0E $0F
    ld b, $02                                     ; $51E7: $06 $02
    nop                                           ; $51E9: $00
    nop                                           ; $51EA: $00
    nop                                           ; $51EB: $00
    nop                                           ; $51EC: $00
    nop                                           ; $51ED: $00
    nop                                           ; $51EE: $00
    nop                                           ; $51EF: $00

jr_034_51F0:
    nop                                           ; $51F0: $00
    nop                                           ; $51F1: $00
    nop                                           ; $51F2: $00
    nop                                           ; $51F3: $00
    nop                                           ; $51F4: $00
    nop                                           ; $51F5: $00
    nop                                           ; $51F6: $00
    nop                                           ; $51F7: $00
    inc bc                                        ; $51F8: $03
    nop                                           ; $51F9: $00
    ld b, $01                                     ; $51FA: $06 $01
    ld c, $07                                     ; $51FC: $0E $07
    ld e, $0F                                     ; $51FE: $1E $0F
    rrca                                          ; $5200: $0F
    nop                                           ; $5201: $00
    ld bc, $0F00                                  ; $5202: $01 $00 $0F
    nop                                           ; $5205: $00
    ld bc, $0700                                  ; $5206: $01 $00 $07
    nop                                           ; $5209: $00
    ld bc, $0300                                  ; $520A: $01 $00 $03
    nop                                           ; $520D: $00
    inc b                                         ; $520E: $04
    inc bc                                        ; $520F: $03
    rrca                                          ; $5210: $0F
    nop                                           ; $5211: $00
    nop                                           ; $5212: $00
    nop                                           ; $5213: $00
    nop                                           ; $5214: $00
    nop                                           ; $5215: $00
    rrca                                          ; $5216: $0F
    nop                                           ; $5217: $00
    add b                                         ; $5218: $80
    nop                                           ; $5219: $00
    ld b, b                                       ; $521A: $40
    add b                                         ; $521B: $80
    and b                                         ; $521C: $A0
    ld b, b                                       ; $521D: $40
    db $10                                        ; $521E: $10
    ldh [$FFE0], a                                ; $521F: $E0 $E0
    nop                                           ; $5221: $00
    nop                                           ; $5222: $00
    nop                                           ; $5223: $00
    ldh [rP1], a                                  ; $5224: $E0 $00
    nop                                           ; $5226: $00
    nop                                           ; $5227: $00
    ret nz                                        ; $5228: $C0

    nop                                           ; $5229: $00
    nop                                           ; $522A: $00
    nop                                           ; $522B: $00
    ret nz                                        ; $522C: $C0

    nop                                           ; $522D: $00
    jr nz, jr_034_51F0                            ; $522E: $20 $C0

    ldh a, [rP1]                                  ; $5230: $F0 $00
    nop                                           ; $5232: $00
    nop                                           ; $5233: $00
    nop                                           ; $5234: $00
    nop                                           ; $5235: $00
    ld hl, sp+$00                                 ; $5236: $F8 $00
    rrca                                          ; $5238: $0F
    inc b                                         ; $5239: $04
    rrca                                          ; $523A: $0F
    rlca                                          ; $523B: $07
    rrca                                          ; $523C: $0F
    dec b                                         ; $523D: $05
    rrca                                          ; $523E: $0F
    rlca                                          ; $523F: $07
    rrca                                          ; $5240: $0F
    ld [bc], a                                    ; $5241: $02
    rlca                                          ; $5242: $07
    inc bc                                        ; $5243: $03
    rrca                                          ; $5244: $0F
    ld [bc], a                                    ; $5245: $02
    rrca                                          ; $5246: $0F
    inc bc                                        ; $5247: $03
    rrca                                          ; $5248: $0F
    inc bc                                        ; $5249: $03
    rrca                                          ; $524A: $0F
    nop                                           ; $524B: $00
    rlca                                          ; $524C: $07
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
    ld hl, sp-$49                                 ; $5258: $F8 $B7
    ei                                            ; $525A: $FB
    or h                                          ; $525B: $B4
    ei                                            ; $525C: $FB
    or h                                          ; $525D: $B4
    cp h                                          ; $525E: $BC
    ld e, e                                       ; $525F: $5B
    cp l                                          ; $5260: $BD
    ld d, d                                       ; $5261: $52
    cp h                                          ; $5262: $BC
    db $DB                                        ; $5263: $DB
    ld a, h                                       ; $5264: $7C
    adc e                                         ; $5265: $8B
    ld a, h                                       ; $5266: $7C
    or e                                          ; $5267: $B3
    cp $71                                        ; $5268: $FE $71
    rst RST_38                                    ; $526A: $FF
    ld h, b                                       ; $526B: $60
    rst RST_38                                    ; $526C: $FF
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
    ld b, b                                       ; $5278: $40
    add b                                         ; $5279: $80
    ld b, b                                       ; $527A: $40
    add b                                         ; $527B: $80
    ld b, b                                       ; $527C: $40
    add b                                         ; $527D: $80
    ld b, b                                       ; $527E: $40
    add b                                         ; $527F: $80
    ld h, b                                       ; $5280: $60
    add b                                         ; $5281: $80
    ld h, b                                       ; $5282: $60
    add b                                         ; $5283: $80
    ld [hl], b                                    ; $5284: $70
    add b                                         ; $5285: $80
    ld [hl], b                                    ; $5286: $70
    add b                                         ; $5287: $80
    ld [hl], b                                    ; $5288: $70
    add b                                         ; $5289: $80
    ldh a, [rP1]                                  ; $528A: $F0 $00
    ldh [rP1], a                                  ; $528C: $E0 $00
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
    rrca                                          ; $5298: $0F
    rlca                                          ; $5299: $07
    rrca                                          ; $529A: $0F
    dec b                                         ; $529B: $05
    rrca                                          ; $529C: $0F
    rlca                                          ; $529D: $07
    rrca                                          ; $529E: $0F
    ld [bc], a                                    ; $529F: $02
    rlca                                          ; $52A0: $07
    inc bc                                        ; $52A1: $03
    rlca                                          ; $52A2: $07
    ld [bc], a                                    ; $52A3: $02
    rrca                                          ; $52A4: $0F
    inc bc                                        ; $52A5: $03
    rrca                                          ; $52A6: $0F
    ld bc, $000F                                  ; $52A7: $01 $0F $00
    rrca                                          ; $52AA: $0F
    nop                                           ; $52AB: $00
    rlca                                          ; $52AC: $07
    nop                                           ; $52AD: $00
    nop                                           ; $52AE: $00
    nop                                           ; $52AF: $00
    nop                                           ; $52B0: $00
    nop                                           ; $52B1: $00
    nop                                           ; $52B2: $00
    nop                                           ; $52B3: $00
    nop                                           ; $52B4: $00
    nop                                           ; $52B5: $00
    nop                                           ; $52B6: $00
    nop                                           ; $52B7: $00
    ei                                            ; $52B8: $FB
    or h                                          ; $52B9: $B4
    cp a                                          ; $52BA: $BF
    ret c                                         ; $52BB: $D8

    cp h                                          ; $52BC: $BC
    ld e, e                                       ; $52BD: $5B
    cp l                                          ; $52BE: $BD
    ld d, d                                       ; $52BF: $52
    cp h                                          ; $52C0: $BC
    db $DB                                        ; $52C1: $DB
    cp h                                          ; $52C2: $BC
    db $DB                                        ; $52C3: $DB
    ld a, h                                       ; $52C4: $7C
    adc e                                         ; $52C5: $8B
    ld a, [hl]                                    ; $52C6: $7E
    sbc c                                         ; $52C7: $99
    rst RST_38                                    ; $52C8: $FF
    jr @+$01                                      ; $52C9: $18 $FF

    nop                                           ; $52CB: $00
    rst RST_38                                    ; $52CC: $FF
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
    ld b, b                                       ; $52D8: $40
    add b                                         ; $52D9: $80
    ld b, b                                       ; $52DA: $40
    add b                                         ; $52DB: $80
    ld b, b                                       ; $52DC: $40
    add b                                         ; $52DD: $80
    ld b, b                                       ; $52DE: $40
    add b                                         ; $52DF: $80
    ld h, b                                       ; $52E0: $60
    add b                                         ; $52E1: $80
    ld h, b                                       ; $52E2: $60
    add b                                         ; $52E3: $80
    ld [hl], b                                    ; $52E4: $70
    add b                                         ; $52E5: $80
    ld [hl], b                                    ; $52E6: $70
    add b                                         ; $52E7: $80
    ldh a, [rP1]                                  ; $52E8: $F0 $00
    ldh a, [rP1]                                  ; $52EA: $F0 $00
    ldh [rP1], a                                  ; $52EC: $E0 $00
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
    rrca                                          ; $52F8: $0F
    dec b                                         ; $52F9: $05
    rrca                                          ; $52FA: $0F
    rlca                                          ; $52FB: $07
    rrca                                          ; $52FC: $0F
    ld [bc], a                                    ; $52FD: $02
    rlca                                          ; $52FE: $07
    inc bc                                        ; $52FF: $03
    rlca                                          ; $5300: $07
    ld [bc], a                                    ; $5301: $02
    rlca                                          ; $5302: $07
    ld bc, $000F                                  ; $5303: $01 $0F $00
    rrca                                          ; $5306: $0F
    nop                                           ; $5307: $00
    rrca                                          ; $5308: $0F
    nop                                           ; $5309: $00
    rrca                                          ; $530A: $0F
    nop                                           ; $530B: $00
    rlca                                          ; $530C: $07
    nop                                           ; $530D: $00
    nop                                           ; $530E: $00
    nop                                           ; $530F: $00
    nop                                           ; $5310: $00
    nop                                           ; $5311: $00
    nop                                           ; $5312: $00
    nop                                           ; $5313: $00
    nop                                           ; $5314: $00
    nop                                           ; $5315: $00
    nop                                           ; $5316: $00
    nop                                           ; $5317: $00
    cp a                                          ; $5318: $BF
    ret c                                         ; $5319: $D8

    cp h                                          ; $531A: $BC
    ld e, e                                       ; $531B: $5B
    cp l                                          ; $531C: $BD
    ld d, d                                       ; $531D: $52
    cp h                                          ; $531E: $BC
    db $DB                                        ; $531F: $DB
    ld a, $CD                                     ; $5320: $3E $CD
    ld a, [hl]                                    ; $5322: $7E
    add l                                         ; $5323: $85
    rst RST_38                                    ; $5324: $FF
    ld c, $FF                                     ; $5325: $0E $FF
    ld b, $FF                                     ; $5327: $06 $FF
    nop                                           ; $5329: $00
    rst RST_38                                    ; $532A: $FF
    nop                                           ; $532B: $00
    rst RST_38                                    ; $532C: $FF
    nop                                           ; $532D: $00
    nop                                           ; $532E: $00
    nop                                           ; $532F: $00
    nop                                           ; $5330: $00
    nop                                           ; $5331: $00
    nop                                           ; $5332: $00
    nop                                           ; $5333: $00
    nop                                           ; $5334: $00
    nop                                           ; $5335: $00
    nop                                           ; $5336: $00
    nop                                           ; $5337: $00
    ld b, b                                       ; $5338: $40
    add b                                         ; $5339: $80
    ld b, b                                       ; $533A: $40
    add b                                         ; $533B: $80
    ld b, b                                       ; $533C: $40
    add b                                         ; $533D: $80
    ld b, b                                       ; $533E: $40
    add b                                         ; $533F: $80
    ld h, b                                       ; $5340: $60
    add b                                         ; $5341: $80
    ldh [rP1], a                                  ; $5342: $E0 $00
    ldh a, [rP1]                                  ; $5344: $F0 $00
    ldh a, [rP1]                                  ; $5346: $F0 $00
    ldh a, [rP1]                                  ; $5348: $F0 $00
    ldh a, [rP1]                                  ; $534A: $F0 $00
    ldh [rP1], a                                  ; $534C: $E0 $00
    nop                                           ; $534E: $00
    nop                                           ; $534F: $00
    nop                                           ; $5350: $00
    nop                                           ; $5351: $00
    nop                                           ; $5352: $00
    nop                                           ; $5353: $00
    nop                                           ; $5354: $00
    nop                                           ; $5355: $00
    nop                                           ; $5356: $00
    nop                                           ; $5357: $00
    rrca                                          ; $5358: $0F
    rlca                                          ; $5359: $07
    rrca                                          ; $535A: $0F
    dec b                                         ; $535B: $05
    rrca                                          ; $535C: $0F
    rlca                                          ; $535D: $07
    rrca                                          ; $535E: $0F
    ld [bc], a                                    ; $535F: $02
    rlca                                          ; $5360: $07
    inc bc                                        ; $5361: $03
    rlca                                          ; $5362: $07
    ld [bc], a                                    ; $5363: $02
    rlca                                          ; $5364: $07
    inc bc                                        ; $5365: $03
    inc bc                                        ; $5366: $03
    ld bc, $0000                                  ; $5367: $01 $00 $00
    nop                                           ; $536A: $00
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
    ei                                            ; $5378: $FB
    or h                                          ; $5379: $B4
    cp a                                          ; $537A: $BF
    ret c                                         ; $537B: $D8

    cp h                                          ; $537C: $BC
    ld e, e                                       ; $537D: $5B
    cp l                                          ; $537E: $BD
    ld d, d                                       ; $537F: $52
    cp h                                          ; $5380: $BC
    db $DB                                        ; $5381: $DB
    cp h                                          ; $5382: $BC
    db $DB                                        ; $5383: $DB
    ld a, h                                       ; $5384: $7C
    adc e                                         ; $5385: $8B
    ld a, [hl]                                    ; $5386: $7E
    sbc c                                         ; $5387: $99
    adc h                                         ; $5388: $8C
    ld [$0000], sp                                ; $5389: $08 $00 $00
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
    ld b, b                                       ; $5398: $40
    add b                                         ; $5399: $80
    ld b, b                                       ; $539A: $40
    add b                                         ; $539B: $80
    ld b, b                                       ; $539C: $40
    add b                                         ; $539D: $80
    ld b, b                                       ; $539E: $40
    add b                                         ; $539F: $80
    ld b, b                                       ; $53A0: $40
    add b                                         ; $53A1: $80
    ld b, b                                       ; $53A2: $40
    add b                                         ; $53A3: $80
    ld b, b                                       ; $53A4: $40
    add b                                         ; $53A5: $80
    ld b, b                                       ; $53A6: $40
    add b                                         ; $53A7: $80
    add b                                         ; $53A8: $80
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
    ld b, b                                       ; $53B8: $40
    add b                                         ; $53B9: $80
    ld b, b                                       ; $53BA: $40
    add b                                         ; $53BB: $80
    ld b, b                                       ; $53BC: $40
    add b                                         ; $53BD: $80
    ld b, b                                       ; $53BE: $40
    add b                                         ; $53BF: $80
    ld b, b                                       ; $53C0: $40
    add b                                         ; $53C1: $80
    add b                                         ; $53C2: $80
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
    nop                                           ; $53DE: $00
    nop                                           ; $53DF: $00
    nop                                           ; $53E0: $00
    nop                                           ; $53E1: $00
    nop                                           ; $53E2: $00
    nop                                           ; $53E3: $00
    nop                                           ; $53E4: $00
    nop                                           ; $53E5: $00
    nop                                           ; $53E6: $00
    nop                                           ; $53E7: $00
    nop                                           ; $53E8: $00
    nop                                           ; $53E9: $00
    nop                                           ; $53EA: $00
    nop                                           ; $53EB: $00
    nop                                           ; $53EC: $00
    nop                                           ; $53ED: $00
    nop                                           ; $53EE: $00
    nop                                           ; $53EF: $00

jr_034_53F0:
    nop                                           ; $53F0: $00
    nop                                           ; $53F1: $00
    nop                                           ; $53F2: $00
    nop                                           ; $53F3: $00
    nop                                           ; $53F4: $00
    nop                                           ; $53F5: $00
    nop                                           ; $53F6: $00
    nop                                           ; $53F7: $00
    dec b                                         ; $53F8: $05
    nop                                           ; $53F9: $00
    ld b, $01                                     ; $53FA: $06 $01
    ld c, $07                                     ; $53FC: $0E $07
    ld e, $0F                                     ; $53FE: $1E $0F
    rrca                                          ; $5400: $0F
    nop                                           ; $5401: $00
    ld bc, $0F00                                  ; $5402: $01 $00 $0F
    nop                                           ; $5405: $00
    ld bc, $0700                                  ; $5406: $01 $00 $07
    nop                                           ; $5409: $00
    ld bc, $0300                                  ; $540A: $01 $00 $03
    nop                                           ; $540D: $00
    inc b                                         ; $540E: $04
    inc bc                                        ; $540F: $03
    rrca                                          ; $5410: $0F
    nop                                           ; $5411: $00
    nop                                           ; $5412: $00
    nop                                           ; $5413: $00
    nop                                           ; $5414: $00
    nop                                           ; $5415: $00
    rrca                                          ; $5416: $0F
    nop                                           ; $5417: $00
    add b                                         ; $5418: $80
    nop                                           ; $5419: $00
    ld b, b                                       ; $541A: $40
    add b                                         ; $541B: $80
    and b                                         ; $541C: $A0
    ld b, b                                       ; $541D: $40
    db $10                                        ; $541E: $10
    ldh [$FFE0], a                                ; $541F: $E0 $E0
    nop                                           ; $5421: $00
    nop                                           ; $5422: $00
    nop                                           ; $5423: $00
    ldh [rP1], a                                  ; $5424: $E0 $00
    nop                                           ; $5426: $00
    nop                                           ; $5427: $00
    ret nz                                        ; $5428: $C0

    nop                                           ; $5429: $00
    nop                                           ; $542A: $00
    nop                                           ; $542B: $00
    ret nz                                        ; $542C: $C0

    nop                                           ; $542D: $00
    jr nz, jr_034_53F0                            ; $542E: $20 $C0

    ldh a, [rP1]                                  ; $5430: $F0 $00
    nop                                           ; $5432: $00
    nop                                           ; $5433: $00
    nop                                           ; $5434: $00
    nop                                           ; $5435: $00
    ld hl, sp+$00                                 ; $5436: $F8 $00
    nop                                           ; $5438: $00
    nop                                           ; $5439: $00
    nop                                           ; $543A: $00
    nop                                           ; $543B: $00
    nop                                           ; $543C: $00
    nop                                           ; $543D: $00
    nop                                           ; $543E: $00
    nop                                           ; $543F: $00
    nop                                           ; $5440: $00
    nop                                           ; $5441: $00
    nop                                           ; $5442: $00
    nop                                           ; $5443: $00
    ld bc, $0300                                  ; $5444: $01 $00 $03
    ld bc, $0103                                  ; $5447: $01 $03 $01
    inc bc                                        ; $544A: $03
    nop                                           ; $544B: $00
    inc bc                                        ; $544C: $03
    ld bc, $0306                                  ; $544D: $01 $06 $03
    dec c                                         ; $5450: $0D
    ld b, $0B                                     ; $5451: $06 $0B
    dec b                                         ; $5453: $05
    ld c, $03                                     ; $5454: $0E $03

jr_034_5456:
    ld b, $03                                     ; $5456: $06 $03

jr_034_5458:
    nop                                           ; $5458: $00
    nop                                           ; $5459: $00
    nop                                           ; $545A: $00
    nop                                           ; $545B: $00
    nop                                           ; $545C: $00
    nop                                           ; $545D: $00
    nop                                           ; $545E: $00
    nop                                           ; $545F: $00
    nop                                           ; $5460: $00
    nop                                           ; $5461: $00
    nop                                           ; $5462: $00
    nop                                           ; $5463: $00
    nop                                           ; $5464: $00
    nop                                           ; $5465: $00
    cp [hl]                                       ; $5466: $BE
    nop                                           ; $5467: $00
    rst RST_38                                    ; $5468: $FF
    ld a, $C0                                     ; $5469: $3E $C0
    rst RST_38                                    ; $546B: $FF
    ld a, $C1                                     ; $546C: $3E $C1
    rst RST_38                                    ; $546E: $FF
    inc a                                         ; $546F: $3C
    ret nz                                        ; $5470: $C0

    rst RST_38                                    ; $5471: $FF
    nop                                           ; $5472: $00
    rst RST_38                                    ; $5473: $FF
    nop                                           ; $5474: $00
    rst RST_38                                    ; $5475: $FF
    nop                                           ; $5476: $00
    rst RST_38                                    ; $5477: $FF
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
    ld b, b                                       ; $5484: $40
    nop                                           ; $5485: $00
    ldh [rLCDC], a                                ; $5486: $E0 $40
    ldh [rLCDC], a                                ; $5488: $E0 $40
    ld h, b                                       ; $548A: $60
    add b                                         ; $548B: $80
    jr nz, @-$3E                                  ; $548C: $20 $C0

    sub b                                         ; $548E: $90
    ld h, b                                       ; $548F: $60
    ret z                                         ; $5490: $C8

    jr nc, jr_034_54FB                            ; $5491: $30 $68

    sub b                                         ; $5493: $90
    jr c, jr_034_5456                             ; $5494: $38 $C0

    jr nc, jr_034_5458                            ; $5496: $30 $C0

    nop                                           ; $5498: $00
    nop                                           ; $5499: $00
    nop                                           ; $549A: $00
    nop                                           ; $549B: $00
    nop                                           ; $549C: $00
    nop                                           ; $549D: $00
    nop                                           ; $549E: $00
    nop                                           ; $549F: $00
    nop                                           ; $54A0: $00
    nop                                           ; $54A1: $00
    ld bc, $0300                                  ; $54A2: $01 $00 $03
    ld bc, $0103                                  ; $54A5: $01 $03 $01
    inc bc                                        ; $54A8: $03
    nop                                           ; $54A9: $00
    inc bc                                        ; $54AA: $03
    ld bc, $0306                                  ; $54AB: $01 $06 $03
    dec c                                         ; $54AE: $0D
    ld b, $0B                                     ; $54AF: $06 $0B
    dec b                                         ; $54B1: $05
    ld c, $03                                     ; $54B2: $0E $03

jr_034_54B4:
    ld b, $03                                     ; $54B4: $06 $03

jr_034_54B6:
    inc c                                         ; $54B6: $0C
    rlca                                          ; $54B7: $07
    nop                                           ; $54B8: $00
    nop                                           ; $54B9: $00
    nop                                           ; $54BA: $00
    nop                                           ; $54BB: $00
    nop                                           ; $54BC: $00
    nop                                           ; $54BD: $00
    nop                                           ; $54BE: $00
    nop                                           ; $54BF: $00
    nop                                           ; $54C0: $00
    nop                                           ; $54C1: $00
    nop                                           ; $54C2: $00
    nop                                           ; $54C3: $00
    cp [hl]                                       ; $54C4: $BE
    nop                                           ; $54C5: $00
    rst RST_38                                    ; $54C6: $FF
    ld a, $C0                                     ; $54C7: $3E $C0
    rst RST_38                                    ; $54C9: $FF
    ld a, $C1                                     ; $54CA: $3E $C1
    rst RST_38                                    ; $54CC: $FF
    inc a                                         ; $54CD: $3C
    ret nz                                        ; $54CE: $C0

    rst RST_38                                    ; $54CF: $FF
    nop                                           ; $54D0: $00
    rst RST_38                                    ; $54D1: $FF
    nop                                           ; $54D2: $00
    rst RST_38                                    ; $54D3: $FF
    nop                                           ; $54D4: $00
    rst RST_38                                    ; $54D5: $FF
    nop                                           ; $54D6: $00
    rst RST_38                                    ; $54D7: $FF
    nop                                           ; $54D8: $00
    nop                                           ; $54D9: $00
    nop                                           ; $54DA: $00
    nop                                           ; $54DB: $00
    nop                                           ; $54DC: $00
    nop                                           ; $54DD: $00
    nop                                           ; $54DE: $00
    nop                                           ; $54DF: $00
    nop                                           ; $54E0: $00
    nop                                           ; $54E1: $00
    ld b, b                                       ; $54E2: $40
    nop                                           ; $54E3: $00
    ldh [rLCDC], a                                ; $54E4: $E0 $40
    ldh [rLCDC], a                                ; $54E6: $E0 $40
    ld h, b                                       ; $54E8: $60
    add b                                         ; $54E9: $80
    jr nz, @-$3E                                  ; $54EA: $20 $C0

    sub b                                         ; $54EC: $90
    ld h, b                                       ; $54ED: $60
    ret z                                         ; $54EE: $C8

    jr nc, jr_034_5559                            ; $54EF: $30 $68

    sub b                                         ; $54F1: $90
    jr c, jr_034_54B4                             ; $54F2: $38 $C0

    jr nc, jr_034_54B6                            ; $54F4: $30 $C0

    db $10                                        ; $54F6: $10
    ldh [rP1], a                                  ; $54F7: $E0 $00
    nop                                           ; $54F9: $00
    nop                                           ; $54FA: $00

jr_034_54FB:
    nop                                           ; $54FB: $00
    nop                                           ; $54FC: $00
    nop                                           ; $54FD: $00
    nop                                           ; $54FE: $00
    nop                                           ; $54FF: $00
    nop                                           ; $5500: $00
    nop                                           ; $5501: $00
    nop                                           ; $5502: $00
    nop                                           ; $5503: $00
    ld bc, $0300                                  ; $5504: $01 $00 $03
    ld bc, $0103                                  ; $5507: $01 $03 $01
    inc bc                                        ; $550A: $03
    nop                                           ; $550B: $00
    inc bc                                        ; $550C: $03
    ld bc, $0306                                  ; $550D: $01 $06 $03
    dec c                                         ; $5510: $0D
    ld b, $0B                                     ; $5511: $06 $0B
    dec b                                         ; $5513: $05
    ld c, $03                                     ; $5514: $0E $03

jr_034_5516:
    ld b, $03                                     ; $5516: $06 $03

jr_034_5518:
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
    cp [hl]                                       ; $5526: $BE
    nop                                           ; $5527: $00
    rst RST_38                                    ; $5528: $FF
    ld a, $C0                                     ; $5529: $3E $C0
    rst RST_38                                    ; $552B: $FF
    ld a, $C1                                     ; $552C: $3E $C1
    rst RST_38                                    ; $552E: $FF
    inc a                                         ; $552F: $3C
    ret nz                                        ; $5530: $C0

    rst RST_38                                    ; $5531: $FF
    nop                                           ; $5532: $00
    rst RST_38                                    ; $5533: $FF
    nop                                           ; $5534: $00
    rst RST_38                                    ; $5535: $FF
    nop                                           ; $5536: $00
    rst RST_38                                    ; $5537: $FF
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
    ld b, b                                       ; $5544: $40
    nop                                           ; $5545: $00
    ldh [rLCDC], a                                ; $5546: $E0 $40
    ldh [rLCDC], a                                ; $5548: $E0 $40
    ld h, b                                       ; $554A: $60
    add b                                         ; $554B: $80
    jr nz, @-$3E                                  ; $554C: $20 $C0

    sub b                                         ; $554E: $90
    ld h, b                                       ; $554F: $60
    ret z                                         ; $5550: $C8

    jr nc, jr_034_55BB                            ; $5551: $30 $68

    sub b                                         ; $5553: $90
    jr c, jr_034_5516                             ; $5554: $38 $C0

    jr nc, jr_034_5518                            ; $5556: $30 $C0

    inc c                                         ; $5558: $0C

jr_034_5559:
    rlca                                          ; $5559: $07
    inc c                                         ; $555A: $0C
    rlca                                          ; $555B: $07
    inc c                                         ; $555C: $0C
    rlca                                          ; $555D: $07
    inc c                                         ; $555E: $0C
    rlca                                          ; $555F: $07
    inc c                                         ; $5560: $0C
    rlca                                          ; $5561: $07
    inc b                                         ; $5562: $04
    inc bc                                        ; $5563: $03
    inc b                                         ; $5564: $04
    inc bc                                        ; $5565: $03
    ld [$0407], sp                                ; $5566: $08 $07 $04
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
    nop                                           ; $5576: $00
    nop                                           ; $5577: $00
    nop                                           ; $5578: $00
    rst RST_38                                    ; $5579: $FF
    nop                                           ; $557A: $00
    rst RST_38                                    ; $557B: $FF
    nop                                           ; $557C: $00
    rst RST_38                                    ; $557D: $FF
    nop                                           ; $557E: $00
    rst RST_38                                    ; $557F: $FF
    nop                                           ; $5580: $00
    rst RST_38                                    ; $5581: $FF
    nop                                           ; $5582: $00
    rst RST_38                                    ; $5583: $FF
    nop                                           ; $5584: $00
    rst RST_38                                    ; $5585: $FF
    pop bc                                        ; $5586: $C1
    ld a, $C0                                     ; $5587: $3E $C0
    inc c                                         ; $5589: $0C
    nop                                           ; $558A: $00
    nop                                           ; $558B: $00
    nop                                           ; $558C: $00
    nop                                           ; $558D: $00
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
    db $10                                        ; $5598: $10
    ldh [rNR10], a                                ; $5599: $E0 $10
    ldh [rNR10], a                                ; $559B: $E0 $10
    ldh [rNR10], a                                ; $559D: $E0 $10
    ldh [rNR10], a                                ; $559F: $E0 $10
    ldh [rNR10], a                                ; $55A1: $E0 $10
    ldh [rNR10], a                                ; $55A3: $E0 $10
    ldh [rNR10], a                                ; $55A5: $E0 $10
    ldh [rP1], a                                  ; $55A7: $E0 $00
    ret nz                                        ; $55A9: $C0

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
    inc c                                         ; $55B8: $0C
    rlca                                          ; $55B9: $07
    inc c                                         ; $55BA: $0C

jr_034_55BB:
    rlca                                          ; $55BB: $07
    inc c                                         ; $55BC: $0C
    rlca                                          ; $55BD: $07
    inc c                                         ; $55BE: $0C
    rlca                                          ; $55BF: $07
    inc c                                         ; $55C0: $0C
    rlca                                          ; $55C1: $07
    inc c                                         ; $55C2: $0C
    rlca                                          ; $55C3: $07
    inc c                                         ; $55C4: $0C
    rlca                                          ; $55C5: $07
    inc b                                         ; $55C6: $04
    inc bc                                        ; $55C7: $03
    inc b                                         ; $55C8: $04
    nop                                           ; $55C9: $00
    nop                                           ; $55CA: $00
    nop                                           ; $55CB: $00
    nop                                           ; $55CC: $00
    nop                                           ; $55CD: $00
    nop                                           ; $55CE: $00
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
    rst RST_38                                    ; $55D9: $FF
    nop                                           ; $55DA: $00
    rst RST_38                                    ; $55DB: $FF
    nop                                           ; $55DC: $00
    rst RST_38                                    ; $55DD: $FF
    nop                                           ; $55DE: $00
    rst RST_38                                    ; $55DF: $FF
    nop                                           ; $55E0: $00
    rst RST_38                                    ; $55E1: $FF
    nop                                           ; $55E2: $00
    rst RST_38                                    ; $55E3: $FF
    nop                                           ; $55E4: $00
    rst RST_38                                    ; $55E5: $FF
    ld b, c                                       ; $55E6: $41
    cp [hl]                                       ; $55E7: $BE
    ld b, b                                       ; $55E8: $40
    adc h                                         ; $55E9: $8C
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
    ld [$0800], sp                                ; $55FE: $08 $00 $08
    nop                                           ; $5601: $00
    inc e                                         ; $5602: $1C
    ld [$081C], sp                                ; $5603: $08 $1C $08
    ld a, [hl-]                                   ; $5606: $3A
    inc e                                         ; $5607: $1C
    ld a, [hl-]                                   ; $5608: $3A
    inc e                                         ; $5609: $1C
    ld [hl+], a                                   ; $560A: $22
    inc e                                         ; $560B: $1C
    ld [hl+], a                                   ; $560C: $22
    inc e                                         ; $560D: $1C
    inc e                                         ; $560E: $1C
    nop                                           ; $560F: $00
    nop                                           ; $5610: $00
    nop                                           ; $5611: $00
    nop                                           ; $5612: $00
    nop                                           ; $5613: $00
    nop                                           ; $5614: $00
    nop                                           ; $5615: $00
    inc e                                         ; $5616: $1C
    nop                                           ; $5617: $00
    nop                                           ; $5618: $00
    nop                                           ; $5619: $00
    nop                                           ; $561A: $00
    nop                                           ; $561B: $00
    ld [$0800], sp                                ; $561C: $08 $00 $08
    nop                                           ; $561F: $00
    inc e                                         ; $5620: $1C
    ld [$081C], sp                                ; $5621: $08 $1C $08
    ld a, [hl-]                                   ; $5624: $3A
    inc e                                         ; $5625: $1C
    ld a, [hl-]                                   ; $5626: $3A
    inc e                                         ; $5627: $1C
    ld [hl+], a                                   ; $5628: $22
    inc e                                         ; $5629: $1C
    ld [hl+], a                                   ; $562A: $22
    inc e                                         ; $562B: $1C
    inc e                                         ; $562C: $1C
    nop                                           ; $562D: $00
    nop                                           ; $562E: $00
    nop                                           ; $562F: $00
    nop                                           ; $5630: $00
    nop                                           ; $5631: $00
    nop                                           ; $5632: $00
    nop                                           ; $5633: $00
    nop                                           ; $5634: $00
    nop                                           ; $5635: $00
    inc e                                         ; $5636: $1C
    nop                                           ; $5637: $00
    inc c                                         ; $5638: $0C
    rlca                                          ; $5639: $07
    inc c                                         ; $563A: $0C
    rlca                                          ; $563B: $07
    inc c                                         ; $563C: $0C
    rlca                                          ; $563D: $07
    inc c                                         ; $563E: $0C
    rlca                                          ; $563F: $07
    inc c                                         ; $5640: $0C
    rlca                                          ; $5641: $07
    inc b                                         ; $5642: $04
    inc bc                                        ; $5643: $03
    inc c                                         ; $5644: $0C
    inc bc                                        ; $5645: $03
    ld [$0F07], sp                                ; $5646: $08 $07 $0F
    nop                                           ; $5649: $00
    rlca                                          ; $564A: $07
    nop                                           ; $564B: $00
    inc bc                                        ; $564C: $03
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
    rst RST_38                                    ; $5659: $FF
    nop                                           ; $565A: $00
    rst RST_38                                    ; $565B: $FF
    nop                                           ; $565C: $00
    rst RST_38                                    ; $565D: $FF
    nop                                           ; $565E: $00
    rst RST_38                                    ; $565F: $FF
    nop                                           ; $5660: $00
    rst RST_38                                    ; $5661: $FF
    nop                                           ; $5662: $00
    rst RST_38                                    ; $5663: $FF
    nop                                           ; $5664: $00
    rst RST_38                                    ; $5665: $FF
    pop bc                                        ; $5666: $C1
    ld a, $C1                                     ; $5667: $3E $C1
    ld a, $E1                                     ; $5669: $3E $E1
    ld e, $E1                                     ; $566B: $1E $E1
    ld e, $11                                     ; $566D: $1E $11
    ld c, $08                                     ; $566F: $0E $08
    rlca                                          ; $5671: $07
    ld b, $01                                     ; $5672: $06 $01
    ld bc, $0000                                  ; $5674: $01 $00 $00
    nop                                           ; $5677: $00
    db $10                                        ; $5678: $10
    ldh [rNR10], a                                ; $5679: $E0 $10
    ldh [rNR10], a                                ; $567B: $E0 $10
    ldh [rNR10], a                                ; $567D: $E0 $10
    ldh [rNR23], a                                ; $567F: $E0 $18
    ldh [rNR23], a                                ; $5681: $E0 $18
    ldh [rNR32], a                                ; $5683: $E0 $1C
    ldh [rNR32], a                                ; $5685: $E0 $1C
    ldh [rNR32], a                                ; $5687: $E0 $1C
    ldh [$FF8C], a                                ; $5689: $E0 $8C
    ld [hl], b                                    ; $568B: $70
    ld hl, sp+$00                                 ; $568C: $F8 $00
    add b                                         ; $568E: $80
    nop                                           ; $568F: $00
    ret nz                                        ; $5690: $C0

    nop                                           ; $5691: $00
    ld h, b                                       ; $5692: $60
    add b                                         ; $5693: $80
    ret nz                                        ; $5694: $C0

    nop                                           ; $5695: $00
    nop                                           ; $5696: $00
    nop                                           ; $5697: $00
    inc c                                         ; $5698: $0C
    rlca                                          ; $5699: $07
    inc c                                         ; $569A: $0C
    rlca                                          ; $569B: $07
    inc c                                         ; $569C: $0C
    rlca                                          ; $569D: $07
    inc c                                         ; $569E: $0C
    rlca                                          ; $569F: $07
    inc c                                         ; $56A0: $0C
    rlca                                          ; $56A1: $07
    inc c                                         ; $56A2: $0C
    rlca                                          ; $56A3: $07
    inc c                                         ; $56A4: $0C
    inc bc                                        ; $56A5: $03
    inc c                                         ; $56A6: $0C
    inc bc                                        ; $56A7: $03
    ld [$0F07], sp                                ; $56A8: $08 $07 $0F
    nop                                           ; $56AB: $00
    rlca                                          ; $56AC: $07
    nop                                           ; $56AD: $00
    nop                                           ; $56AE: $00
    nop                                           ; $56AF: $00
    nop                                           ; $56B0: $00
    nop                                           ; $56B1: $00

jr_034_56B2:
    nop                                           ; $56B2: $00
    nop                                           ; $56B3: $00
    nop                                           ; $56B4: $00
    nop                                           ; $56B5: $00
    nop                                           ; $56B6: $00
    nop                                           ; $56B7: $00
    nop                                           ; $56B8: $00
    rst RST_38                                    ; $56B9: $FF
    nop                                           ; $56BA: $00
    rst RST_38                                    ; $56BB: $FF
    nop                                           ; $56BC: $00
    rst RST_38                                    ; $56BD: $FF
    nop                                           ; $56BE: $00
    rst RST_38                                    ; $56BF: $FF
    nop                                           ; $56C0: $00
    rst RST_38                                    ; $56C1: $FF
    nop                                           ; $56C2: $00
    rst RST_38                                    ; $56C3: $FF
    nop                                           ; $56C4: $00
    rst RST_38                                    ; $56C5: $FF
    ld b, c                                       ; $56C6: $41
    cp [hl]                                       ; $56C7: $BE
    pop bc                                        ; $56C8: $C1
    ld a, $E1                                     ; $56C9: $3E $E1
    ld e, $F1                                     ; $56CB: $1E $F1
    ld c, $08                                     ; $56CD: $0E $08
    rlca                                          ; $56CF: $07
    ld b, $01                                     ; $56D0: $06 $01
    ld bc, $0000                                  ; $56D2: $01 $00 $00
    nop                                           ; $56D5: $00
    nop                                           ; $56D6: $00
    nop                                           ; $56D7: $00
    db $10                                        ; $56D8: $10
    ldh [rNR10], a                                ; $56D9: $E0 $10
    ldh [rNR10], a                                ; $56DB: $E0 $10
    ldh [rNR10], a                                ; $56DD: $E0 $10
    ldh [rNR23], a                                ; $56DF: $E0 $18
    ldh [rNR23], a                                ; $56E1: $E0 $18
    ldh [rNR32], a                                ; $56E3: $E0 $1C
    ldh [rNR32], a                                ; $56E5: $E0 $1C
    ldh [$FF8C], a                                ; $56E7: $E0 $8C
    ld [hl], b                                    ; $56E9: $70
    db $FC                                        ; $56EA: $FC
    nop                                           ; $56EB: $00
    ld hl, sp+$00                                 ; $56EC: $F8 $00
    ldh [rP1], a                                  ; $56EE: $E0 $00
    jr nc, jr_034_56B2                            ; $56F0: $30 $C0

    ldh [rP1], a                                  ; $56F2: $E0 $00
    nop                                           ; $56F4: $00
    nop                                           ; $56F5: $00
    nop                                           ; $56F6: $00
    nop                                           ; $56F7: $00
    inc c                                         ; $56F8: $0C
    rlca                                          ; $56F9: $07
    inc c                                         ; $56FA: $0C
    rlca                                          ; $56FB: $07
    inc c                                         ; $56FC: $0C
    rlca                                          ; $56FD: $07
    inc c                                         ; $56FE: $0C
    rlca                                          ; $56FF: $07
    inc c                                         ; $5700: $0C
    rlca                                          ; $5701: $07
    inc c                                         ; $5702: $0C
    rlca                                          ; $5703: $07
    inc c                                         ; $5704: $0C
    rlca                                          ; $5705: $07
    inc c                                         ; $5706: $0C
    inc bc                                        ; $5707: $03
    inc c                                         ; $5708: $0C
    inc bc                                        ; $5709: $03
    ld [$0F07], sp                                ; $570A: $08 $07 $0F
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
    rst RST_38                                    ; $5719: $FF
    nop                                           ; $571A: $00
    rst RST_38                                    ; $571B: $FF
    nop                                           ; $571C: $00
    rst RST_38                                    ; $571D: $FF
    nop                                           ; $571E: $00
    rst RST_38                                    ; $571F: $FF
    nop                                           ; $5720: $00
    rst RST_38                                    ; $5721: $FF
    nop                                           ; $5722: $00
    rst RST_38                                    ; $5723: $FF
    nop                                           ; $5724: $00
    rst RST_38                                    ; $5725: $FF
    ld b, c                                       ; $5726: $41
    cp [hl]                                       ; $5727: $BE
    ld b, c                                       ; $5728: $41
    cp [hl]                                       ; $5729: $BE
    pop hl                                        ; $572A: $E1
    ld e, $F0                                     ; $572B: $1E $F0
    rrca                                          ; $572D: $0F
    inc c                                         ; $572E: $0C
    inc bc                                        ; $572F: $03
    inc bc                                        ; $5730: $03
    nop                                           ; $5731: $00

jr_034_5732:
    nop                                           ; $5732: $00
    nop                                           ; $5733: $00
    nop                                           ; $5734: $00
    nop                                           ; $5735: $00
    nop                                           ; $5736: $00
    nop                                           ; $5737: $00
    db $10                                        ; $5738: $10
    ldh [rNR10], a                                ; $5739: $E0 $10
    ldh [rNR10], a                                ; $573B: $E0 $10
    ldh [rNR10], a                                ; $573D: $E0 $10
    ldh [rNR23], a                                ; $573F: $E0 $18
    ldh [rNR23], a                                ; $5741: $E0 $18
    ldh [rNR32], a                                ; $5743: $E0 $1C
    ldh [$FF8C], a                                ; $5745: $E0 $8C
    ld [hl], b                                    ; $5747: $70
    db $FC                                        ; $5748: $FC
    nop                                           ; $5749: $00
    db $FC                                        ; $574A: $FC
    nop                                           ; $574B: $00
    ld hl, sp+$00                                 ; $574C: $F8 $00
    ld [hl], b                                    ; $574E: $70
    add b                                         ; $574F: $80
    jr jr_034_5732                                ; $5750: $18 $E0

    ldh a, [rP1]                                  ; $5752: $F0 $00
    nop                                           ; $5754: $00
    nop                                           ; $5755: $00
    nop                                           ; $5756: $00
    nop                                           ; $5757: $00
    inc c                                         ; $5758: $0C
    rlca                                          ; $5759: $07
    inc c                                         ; $575A: $0C
    rlca                                          ; $575B: $07
    inc c                                         ; $575C: $0C
    rlca                                          ; $575D: $07
    inc c                                         ; $575E: $0C
    rlca                                          ; $575F: $07
    inc c                                         ; $5760: $0C
    rlca                                          ; $5761: $07
    inc c                                         ; $5762: $0C
    rlca                                          ; $5763: $07
    inc b                                         ; $5764: $04
    inc bc                                        ; $5765: $03
    inc b                                         ; $5766: $04
    inc bc                                        ; $5767: $03
    nop                                           ; $5768: $00
    inc bc                                        ; $5769: $03
    nop                                           ; $576A: $00
    nop                                           ; $576B: $00
    nop                                           ; $576C: $00
    nop                                           ; $576D: $00
    nop                                           ; $576E: $00
    nop                                           ; $576F: $00
    nop                                           ; $5770: $00
    nop                                           ; $5771: $00
    nop                                           ; $5772: $00
    nop                                           ; $5773: $00
    nop                                           ; $5774: $00
    nop                                           ; $5775: $00
    nop                                           ; $5776: $00
    nop                                           ; $5777: $00
    nop                                           ; $5778: $00
    rst RST_38                                    ; $5779: $FF
    nop                                           ; $577A: $00
    rst RST_38                                    ; $577B: $FF
    nop                                           ; $577C: $00
    rst RST_38                                    ; $577D: $FF
    nop                                           ; $577E: $00
    rst RST_38                                    ; $577F: $FF
    nop                                           ; $5780: $00
    rst RST_38                                    ; $5781: $FF
    nop                                           ; $5782: $00
    rst RST_38                                    ; $5783: $FF
    nop                                           ; $5784: $00
    rst RST_38                                    ; $5785: $FF
    ld b, c                                       ; $5786: $41
    cp [hl]                                       ; $5787: $BE
    ld bc, $0032                                  ; $5788: $01 $32 $00
    nop                                           ; $578B: $00
    nop                                           ; $578C: $00
    nop                                           ; $578D: $00
    nop                                           ; $578E: $00
    nop                                           ; $578F: $00
    nop                                           ; $5790: $00
    nop                                           ; $5791: $00
    nop                                           ; $5792: $00
    nop                                           ; $5793: $00
    nop                                           ; $5794: $00
    nop                                           ; $5795: $00
    nop                                           ; $5796: $00
    nop                                           ; $5797: $00
    db $10                                        ; $5798: $10
    ldh [rNR10], a                                ; $5799: $E0 $10
    ldh [rNR10], a                                ; $579B: $E0 $10
    ldh [rNR10], a                                ; $579D: $E0 $10
    ldh [rNR10], a                                ; $579F: $E0 $10
    ldh [rNR10], a                                ; $57A1: $E0 $10
    ldh [rNR10], a                                ; $57A3: $E0 $10
    ldh [rNR10], a                                ; $57A5: $E0 $10
    ldh [rP1], a                                  ; $57A7: $E0 $00
    jr nc, jr_034_57AB                            ; $57A9: $30 $00

jr_034_57AB:
    nop                                           ; $57AB: $00
    nop                                           ; $57AC: $00
    nop                                           ; $57AD: $00
    nop                                           ; $57AE: $00
    nop                                           ; $57AF: $00
    nop                                           ; $57B0: $00
    nop                                           ; $57B1: $00
    nop                                           ; $57B2: $00
    nop                                           ; $57B3: $00
    nop                                           ; $57B4: $00
    nop                                           ; $57B5: $00
    nop                                           ; $57B6: $00
    nop                                           ; $57B7: $00
    db $10                                        ; $57B8: $10
    ldh [rNR10], a                                ; $57B9: $E0 $10
    ldh [rNR10], a                                ; $57BB: $E0 $10
    ldh [rNR10], a                                ; $57BD: $E0 $10
    ldh [rNR10], a                                ; $57BF: $E0 $10
    ldh [rNR10], a                                ; $57C1: $E0 $10
    ldh [rNR10], a                                ; $57C3: $E0 $10
    ldh [$FF88], a                                ; $57C5: $E0 $88
    ld [hl], b                                    ; $57C7: $70
    ret nz                                        ; $57C8: $C0

    nop                                           ; $57C9: $00
    nop                                           ; $57CA: $00
    nop                                           ; $57CB: $00
    nop                                           ; $57CC: $00
    nop                                           ; $57CD: $00
    nop                                           ; $57CE: $00
    nop                                           ; $57CF: $00
    nop                                           ; $57D0: $00

jr_034_57D1:
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
    nop                                           ; $57F8: $00
    nop                                           ; $57F9: $00
    nop                                           ; $57FA: $00
    nop                                           ; $57FB: $00
    ld [$0800], sp                                ; $57FC: $08 $00 $08
    nop                                           ; $57FF: $00
    inc e                                         ; $5800: $1C
    ld [$081C], sp                                ; $5801: $08 $1C $08
    ld a, [hl-]                                   ; $5804: $3A
    inc e                                         ; $5805: $1C
    ld a, [hl-]                                   ; $5806: $3A
    inc e                                         ; $5807: $1C
    ld [hl+], a                                   ; $5808: $22
    inc e                                         ; $5809: $1C
    ld [hl+], a                                   ; $580A: $22
    inc e                                         ; $580B: $1C
    inc e                                         ; $580C: $1C
    nop                                           ; $580D: $00
    nop                                           ; $580E: $00
    nop                                           ; $580F: $00
    nop                                           ; $5810: $00
    nop                                           ; $5811: $00
    nop                                           ; $5812: $00
    nop                                           ; $5813: $00
    nop                                           ; $5814: $00
    nop                                           ; $5815: $00
    inc e                                         ; $5816: $1C
    nop                                           ; $5817: $00
    nop                                           ; $5818: $00
    nop                                           ; $5819: $00
    nop                                           ; $581A: $00
    nop                                           ; $581B: $00
    nop                                           ; $581C: $00
    nop                                           ; $581D: $00
    ld [$0800], sp                                ; $581E: $08 $00 $08
    nop                                           ; $5821: $00
    inc e                                         ; $5822: $1C
    ld [$081C], sp                                ; $5823: $08 $1C $08
    ld a, [hl-]                                   ; $5826: $3A
    inc e                                         ; $5827: $1C
    ld a, [hl-]                                   ; $5828: $3A
    inc e                                         ; $5829: $1C
    ld [hl+], a                                   ; $582A: $22
    inc e                                         ; $582B: $1C
    ld [hl+], a                                   ; $582C: $22
    inc e                                         ; $582D: $1C
    inc e                                         ; $582E: $1C
    nop                                           ; $582F: $00
    nop                                           ; $5830: $00
    nop                                           ; $5831: $00
    nop                                           ; $5832: $00
    nop                                           ; $5833: $00
    nop                                           ; $5834: $00
    nop                                           ; $5835: $00
    inc e                                         ; $5836: $1C
    nop                                           ; $5837: $00
    nop                                           ; $5838: $00
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
    ld bc, $0100                                  ; $5846: $01 $00 $01
    nop                                           ; $5849: $00
    ld [bc], a                                    ; $584A: $02
    ld bc, $013A                                  ; $584B: $01 $3A $01
    ld b, a                                       ; $584E: $47
    jr c, jr_034_57D1                             ; $584F: $38 $80

    ld a, a                                       ; $5851: $7F
    add b                                         ; $5852: $80
    ld a, a                                       ; $5853: $7F
    add b                                         ; $5854: $80
    ld a, a                                       ; $5855: $7F
    ld b, b                                       ; $5856: $40
    ccf                                           ; $5857: $3F
    nop                                           ; $5858: $00
    nop                                           ; $5859: $00
    nop                                           ; $585A: $00
    nop                                           ; $585B: $00
    nop                                           ; $585C: $00
    nop                                           ; $585D: $00
    ld a, [bc]                                    ; $585E: $0A
    nop                                           ; $585F: $00
    inc c                                         ; $5860: $0C
    nop                                           ; $5861: $00
    ld a, [hl]                                    ; $5862: $7E
    nop                                           ; $5863: $00
    add c                                         ; $5864: $81
    ld a, [hl]                                    ; $5865: $7E
    nop                                           ; $5866: $00
    rst RST_38                                    ; $5867: $FF
    nop                                           ; $5868: $00
    rst RST_38                                    ; $5869: $FF
    nop                                           ; $586A: $00
    rst RST_38                                    ; $586B: $FF
    nop                                           ; $586C: $00
    rst RST_38                                    ; $586D: $FF
    nop                                           ; $586E: $00
    rst RST_38                                    ; $586F: $FF
    nop                                           ; $5870: $00
    rst RST_38                                    ; $5871: $FF
    nop                                           ; $5872: $00
    rst RST_38                                    ; $5873: $FF

jr_034_5874:
    nop                                           ; $5874: $00
    rst RST_38                                    ; $5875: $FF
    nop                                           ; $5876: $00
    rst RST_38                                    ; $5877: $FF
    nop                                           ; $5878: $00
    nop                                           ; $5879: $00
    nop                                           ; $587A: $00
    nop                                           ; $587B: $00
    nop                                           ; $587C: $00
    nop                                           ; $587D: $00
    nop                                           ; $587E: $00
    nop                                           ; $587F: $00
    nop                                           ; $5880: $00
    nop                                           ; $5881: $00
    nop                                           ; $5882: $00
    nop                                           ; $5883: $00
    nop                                           ; $5884: $00
    nop                                           ; $5885: $00
    add b                                         ; $5886: $80
    nop                                           ; $5887: $00
    add b                                         ; $5888: $80
    nop                                           ; $5889: $00
    ld b, b                                       ; $588A: $40
    add b                                         ; $588B: $80
    ld b, b                                       ; $588C: $40
    add b                                         ; $588D: $80
    ld b, b                                       ; $588E: $40
    add b                                         ; $588F: $80
    ldh [rP1], a                                  ; $5890: $E0 $00
    jr jr_034_5874                                ; $5892: $18 $E0

    inc b                                         ; $5894: $04
    ld hl, sp+$02                                 ; $5895: $F8 $02
    db $FC                                        ; $5897: $FC
    nop                                           ; $5898: $00
    nop                                           ; $5899: $00
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
    ld bc, $0100                                  ; $58A4: $01 $00 $01
    nop                                           ; $58A7: $00
    ld [bc], a                                    ; $58A8: $02
    ld bc, $0102                                  ; $58A9: $01 $02 $01
    ld [bc], a                                    ; $58AC: $02
    ld bc, $003F                                  ; $58AD: $01 $3F $00
    ld b, b                                       ; $58B0: $40
    ccf                                           ; $58B1: $3F
    add b                                         ; $58B2: $80
    ld a, a                                       ; $58B3: $7F
    add b                                         ; $58B4: $80
    ld a, a                                       ; $58B5: $7F
    add b                                         ; $58B6: $80
    ld a, a                                       ; $58B7: $7F
    nop                                           ; $58B8: $00
    nop                                           ; $58B9: $00
    nop                                           ; $58BA: $00
    nop                                           ; $58BB: $00
    ld a, [bc]                                    ; $58BC: $0A
    nop                                           ; $58BD: $00
    inc c                                         ; $58BE: $0C
    nop                                           ; $58BF: $00
    ld a, [hl]                                    ; $58C0: $7E
    nop                                           ; $58C1: $00
    add c                                         ; $58C2: $81
    ld a, [hl]                                    ; $58C3: $7E
    nop                                           ; $58C4: $00
    rst RST_38                                    ; $58C5: $FF
    nop                                           ; $58C6: $00
    rst RST_38                                    ; $58C7: $FF
    nop                                           ; $58C8: $00
    rst RST_38                                    ; $58C9: $FF
    nop                                           ; $58CA: $00
    rst RST_38                                    ; $58CB: $FF
    nop                                           ; $58CC: $00
    rst RST_38                                    ; $58CD: $FF
    nop                                           ; $58CE: $00
    rst RST_38                                    ; $58CF: $FF
    nop                                           ; $58D0: $00
    rst RST_38                                    ; $58D1: $FF
    nop                                           ; $58D2: $00
    rst RST_38                                    ; $58D3: $FF
    nop                                           ; $58D4: $00
    rst RST_38                                    ; $58D5: $FF
    nop                                           ; $58D6: $00
    rst RST_38                                    ; $58D7: $FF
    nop                                           ; $58D8: $00
    nop                                           ; $58D9: $00
    nop                                           ; $58DA: $00
    nop                                           ; $58DB: $00
    nop                                           ; $58DC: $00
    nop                                           ; $58DD: $00
    nop                                           ; $58DE: $00
    nop                                           ; $58DF: $00
    nop                                           ; $58E0: $00
    nop                                           ; $58E1: $00
    nop                                           ; $58E2: $00
    nop                                           ; $58E3: $00
    add b                                         ; $58E4: $80
    nop                                           ; $58E5: $00
    add b                                         ; $58E6: $80
    nop                                           ; $58E7: $00
    ld b, b                                       ; $58E8: $40
    add b                                         ; $58E9: $80
    ld b, b                                       ; $58EA: $40
    add b                                         ; $58EB: $80
    ld b, b                                       ; $58EC: $40
    add b                                         ; $58ED: $80
    ld hl, sp+$00                                 ; $58EE: $F8 $00
    inc b                                         ; $58F0: $04
    ld hl, sp+$02                                 ; $58F1: $F8 $02
    db $FC                                        ; $58F3: $FC
    ld [bc], a                                    ; $58F4: $02
    db $FC                                        ; $58F5: $FC
    ld [bc], a                                    ; $58F6: $02
    db $FC                                        ; $58F7: $FC
    nop                                           ; $58F8: $00
    nop                                           ; $58F9: $00
    nop                                           ; $58FA: $00
    nop                                           ; $58FB: $00
    nop                                           ; $58FC: $00
    nop                                           ; $58FD: $00
    nop                                           ; $58FE: $00
    nop                                           ; $58FF: $00
    nop                                           ; $5900: $00
    nop                                           ; $5901: $00
    nop                                           ; $5902: $00
    nop                                           ; $5903: $00
    nop                                           ; $5904: $00
    nop                                           ; $5905: $00
    ld bc, $0100                                  ; $5906: $01 $00 $01
    nop                                           ; $5909: $00
    ld [bc], a                                    ; $590A: $02
    ld bc, $0102                                  ; $590B: $01 $02 $01
    ld [bc], a                                    ; $590E: $02
    ld bc, $000F                                  ; $590F: $01 $0F $00
    jr nc, jr_034_5923                            ; $5912: $30 $0F

    ld b, b                                       ; $5914: $40
    ccf                                           ; $5915: $3F
    add b                                         ; $5916: $80
    ld a, a                                       ; $5917: $7F
    nop                                           ; $5918: $00
    nop                                           ; $5919: $00
    nop                                           ; $591A: $00
    nop                                           ; $591B: $00
    nop                                           ; $591C: $00
    nop                                           ; $591D: $00
    inc d                                         ; $591E: $14
    nop                                           ; $591F: $00
    inc c                                         ; $5920: $0C
    nop                                           ; $5921: $00
    ld a, [hl]                                    ; $5922: $7E

jr_034_5923:
    nop                                           ; $5923: $00
    add c                                         ; $5924: $81
    ld a, [hl]                                    ; $5925: $7E
    nop                                           ; $5926: $00
    rst RST_38                                    ; $5927: $FF
    nop                                           ; $5928: $00
    rst RST_38                                    ; $5929: $FF
    nop                                           ; $592A: $00
    rst RST_38                                    ; $592B: $FF
    nop                                           ; $592C: $00
    rst RST_38                                    ; $592D: $FF
    nop                                           ; $592E: $00
    rst RST_38                                    ; $592F: $FF
    nop                                           ; $5930: $00
    rst RST_38                                    ; $5931: $FF
    nop                                           ; $5932: $00
    rst RST_38                                    ; $5933: $FF
    nop                                           ; $5934: $00
    rst RST_38                                    ; $5935: $FF
    nop                                           ; $5936: $00
    rst RST_38                                    ; $5937: $FF
    nop                                           ; $5938: $00
    nop                                           ; $5939: $00
    nop                                           ; $593A: $00
    nop                                           ; $593B: $00
    nop                                           ; $593C: $00
    nop                                           ; $593D: $00
    nop                                           ; $593E: $00
    nop                                           ; $593F: $00
    nop                                           ; $5940: $00
    nop                                           ; $5941: $00
    nop                                           ; $5942: $00
    nop                                           ; $5943: $00
    nop                                           ; $5944: $00
    nop                                           ; $5945: $00
    add b                                         ; $5946: $80
    nop                                           ; $5947: $00
    add b                                         ; $5948: $80
    nop                                           ; $5949: $00
    ld b, b                                       ; $594A: $40
    add b                                         ; $594B: $80
    ld a, b                                       ; $594C: $78
    add b                                         ; $594D: $80
    call nz, $0238                                ; $594E: $C4 $38 $02
    db $FC                                        ; $5951: $FC
    ld [bc], a                                    ; $5952: $02
    db $FC                                        ; $5953: $FC
    ld [bc], a                                    ; $5954: $02
    db $FC                                        ; $5955: $FC
    inc b                                         ; $5956: $04
    ld hl, sp+$38                                 ; $5957: $F8 $38
    rlca                                          ; $5959: $07
    ld [$0807], sp                                ; $595A: $08 $07 $08
    rlca                                          ; $595D: $07
    inc e                                         ; $595E: $1C
    rrca                                          ; $595F: $0F

jr_034_5960:
    ld e, $0F                                     ; $5960: $1E $0F
    rra                                           ; $5962: $1F
    rrca                                          ; $5963: $0F
    rrca                                          ; $5964: $0F
    rlca                                          ; $5965: $07
    rrca                                          ; $5966: $0F
    nop                                           ; $5967: $00

jr_034_5968:
    inc de                                        ; $5968: $13
    inc bc                                        ; $5969: $03
    nop                                           ; $596A: $00
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
    rst RST_38                                    ; $5979: $FF
    nop                                           ; $597A: $00
    rst RST_38                                    ; $597B: $FF
    nop                                           ; $597C: $00
    rst RST_38                                    ; $597D: $FF
    nop                                           ; $597E: $00
    rst RST_38                                    ; $597F: $FF
    jr c, @+$01                                   ; $5980: $38 $FF

    rst RST_38                                    ; $5982: $FF
    rst RST_18                                    ; $5983: $DF
    rst RST_38                                    ; $5984: $FF
    rst RST_08                                    ; $5985: $CF
    rst RST_18                                    ; $5986: $DF
    jr nz, jr_034_59B9                            ; $5987: $20 $30

    inc bc                                        ; $5989: $03
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
    nop                                           ; $5996: $00
    nop                                           ; $5997: $00
    ld [bc], a                                    ; $5998: $02
    db $FC                                        ; $5999: $FC
    ld [hl+], a                                   ; $599A: $22
    call c, $D824                                 ; $599B: $DC $24 $D8
    jr c, jr_034_5960                             ; $599E: $38 $C0

    ld h, b                                       ; $59A0: $60
    ret nz                                        ; $59A1: $C0

    ldh [$FF80], a                                ; $59A2: $E0 $80
    and b                                         ; $59A4: $A0
    ld b, b                                       ; $59A5: $40
    jr nz, jr_034_5968                            ; $59A6: $20 $C0

    jr nz, jr_034_59AA                            ; $59A8: $20 $00

jr_034_59AA:
    nop                                           ; $59AA: $00
    nop                                           ; $59AB: $00
    nop                                           ; $59AC: $00
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
    add b                                         ; $59B8: $80

jr_034_59B9:
    ld a, a                                       ; $59B9: $7F
    adc b                                         ; $59BA: $88
    ld [hl], a                                    ; $59BB: $77
    ld c, b                                       ; $59BC: $48
    scf                                           ; $59BD: $37
    jr c, jr_034_59C7                             ; $59BE: $38 $07

    inc c                                         ; $59C0: $0C
    rlca                                          ; $59C1: $07
    rrca                                          ; $59C2: $0F
    inc bc                                        ; $59C3: $03
    dec bc                                        ; $59C4: $0B
    dec b                                         ; $59C5: $05
    add hl, bc                                    ; $59C6: $09

jr_034_59C7:
    ld b, $00                                     ; $59C7: $06 $00
    inc bc                                        ; $59C9: $03
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
    rst RST_38                                    ; $59D9: $FF
    nop                                           ; $59DA: $00
    rst RST_38                                    ; $59DB: $FF
    nop                                           ; $59DC: $00
    rst RST_38                                    ; $59DD: $FF
    nop                                           ; $59DE: $00
    rst RST_38                                    ; $59DF: $FF

jr_034_59E0:
    jr c, @+$01                                   ; $59E0: $38 $FF

    rst RST_38                                    ; $59E2: $FF
    rst RST_30                                    ; $59E3: $F7
    rst RST_38                                    ; $59E4: $FF
    rst RST_20                                    ; $59E5: $E7
    rst RST_30                                    ; $59E6: $F7
    ld [$2313], sp                                ; $59E7: $08 $13 $23
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
    rrca                                          ; $59FC: $0F
    nop                                           ; $59FD: $00
    ld de, $250E                                  ; $59FE: $11 $0E $25
    ld a, [de]                                    ; $5A01: $1A
    inc hl                                        ; $5A02: $23
    inc e                                         ; $5A03: $1C
    jr nz, jr_034_5A25                            ; $5A04: $20 $1F

    jr nz, jr_034_5A27                            ; $5A06: $20 $1F

    inc hl                                        ; $5A08: $23
    rra                                           ; $5A09: $1F
    rra                                           ; $5A0A: $1F
    rrca                                          ; $5A0B: $0F
    rrca                                          ; $5A0C: $0F
    rlca                                          ; $5A0D: $07
    rlca                                          ; $5A0E: $07
    nop                                           ; $5A0F: $00
    nop                                           ; $5A10: $00
    nop                                           ; $5A11: $00
    nop                                           ; $5A12: $00
    nop                                           ; $5A13: $00
    nop                                           ; $5A14: $00
    nop                                           ; $5A15: $00
    rra                                           ; $5A16: $1F
    nop                                           ; $5A17: $00
    add b                                         ; $5A18: $80
    nop                                           ; $5A19: $00
    add b                                         ; $5A1A: $80
    nop                                           ; $5A1B: $00
    ret nz                                        ; $5A1C: $C0

    nop                                           ; $5A1D: $00
    jr nz, jr_034_59E0                            ; $5A1E: $20 $C0

    ld d, b                                       ; $5A20: $50
    and b                                         ; $5A21: $A0
    sub b                                         ; $5A22: $90
    ld h, b                                       ; $5A23: $60
    db $10                                        ; $5A24: $10

jr_034_5A25:
    ldh [rNR10], a                                ; $5A25: $E0 $10

jr_034_5A27:
    ldh [$FFD0], a                                ; $5A27: $E0 $D0
    ldh [$FFE0], a                                ; $5A29: $E0 $E0
    ret nz                                        ; $5A2B: $C0

    ret nz                                        ; $5A2C: $C0

    add b                                         ; $5A2D: $80
    add b                                         ; $5A2E: $80
    nop                                           ; $5A2F: $00
    nop                                           ; $5A30: $00
    nop                                           ; $5A31: $00
    nop                                           ; $5A32: $00
    nop                                           ; $5A33: $00
    nop                                           ; $5A34: $00
    nop                                           ; $5A35: $00
    ldh a, [rP1]                                  ; $5A36: $F0 $00
    jr c, @+$09                                   ; $5A38: $38 $07

    ld [$0807], sp                                ; $5A3A: $08 $07 $08
    rlca                                          ; $5A3D: $07
    inc e                                         ; $5A3E: $1C
    rrca                                          ; $5A3F: $0F

jr_034_5A40:
    ld e, $0F                                     ; $5A40: $1E $0F
    rra                                           ; $5A42: $1F
    rrca                                          ; $5A43: $0F
    rrca                                          ; $5A44: $0F
    rlca                                          ; $5A45: $07
    rrca                                          ; $5A46: $0F
    nop                                           ; $5A47: $00

jr_034_5A48:
    ccf                                           ; $5A48: $3F
    rrca                                          ; $5A49: $0F

jr_034_5A4A:
    ld a, a                                       ; $5A4A: $7F
    nop                                           ; $5A4B: $00
    ld a, a                                       ; $5A4C: $7F
    nop                                           ; $5A4D: $00
    ccf                                           ; $5A4E: $3F
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

jr_034_5A59:
    rst RST_38                                    ; $5A59: $FF
    nop                                           ; $5A5A: $00
    rst RST_38                                    ; $5A5B: $FF
    nop                                           ; $5A5C: $00
    rst RST_38                                    ; $5A5D: $FF
    nop                                           ; $5A5E: $00
    rst RST_38                                    ; $5A5F: $FF
    jr c, @+$01                                   ; $5A60: $38 $FF

    rst RST_38                                    ; $5A62: $FF
    rst RST_18                                    ; $5A63: $DF
    rst RST_38                                    ; $5A64: $FF
    rst RST_08                                    ; $5A65: $CF
    rst RST_18                                    ; $5A66: $DF
    jr nz, jr_034_5A59                            ; $5A67: $20 $F0

    rst RST_08                                    ; $5A69: $CF
    ldh a, [rIF]                                  ; $5A6A: $F0 $0F
    rst RST_38                                    ; $5A6C: $FF
    rlca                                          ; $5A6D: $07
    rst RST_38                                    ; $5A6E: $FF
    nop                                           ; $5A6F: $00
    nop                                           ; $5A70: $00
    nop                                           ; $5A71: $00
    nop                                           ; $5A72: $00
    nop                                           ; $5A73: $00
    nop                                           ; $5A74: $00
    nop                                           ; $5A75: $00
    nop                                           ; $5A76: $00
    nop                                           ; $5A77: $00
    ld [bc], a                                    ; $5A78: $02
    db $FC                                        ; $5A79: $FC
    ld [hl+], a                                   ; $5A7A: $22
    call c, $D824                                 ; $5A7B: $DC $24 $D8
    jr c, jr_034_5A40                             ; $5A7E: $38 $C0

    ld h, b                                       ; $5A80: $60
    ret nz                                        ; $5A81: $C0

    ldh [$FF80], a                                ; $5A82: $E0 $80
    and b                                         ; $5A84: $A0
    ld b, b                                       ; $5A85: $40
    jr nz, jr_034_5A48                            ; $5A86: $20 $C0

    jr c, jr_034_5A4A                             ; $5A88: $38 $C0

    inc a                                         ; $5A8A: $3C
    ret nz                                        ; $5A8B: $C0

    db $FC                                        ; $5A8C: $FC
    ldh [$FFF8], a                                ; $5A8D: $E0 $F8
    nop                                           ; $5A8F: $00
    nop                                           ; $5A90: $00
    nop                                           ; $5A91: $00
    nop                                           ; $5A92: $00
    nop                                           ; $5A93: $00
    nop                                           ; $5A94: $00
    nop                                           ; $5A95: $00
    nop                                           ; $5A96: $00
    nop                                           ; $5A97: $00
    ld c, b                                       ; $5A98: $48
    scf                                           ; $5A99: $37
    jr c, jr_034_5AA3                             ; $5A9A: $38 $07

jr_034_5A9C:
    ld [$0807], sp                                ; $5A9C: $08 $07 $08
    rlca                                          ; $5A9F: $07

jr_034_5AA0:
    inc c                                         ; $5AA0: $0C
    rlca                                          ; $5AA1: $07
    rrca                                          ; $5AA2: $0F

jr_034_5AA3:
    rlca                                          ; $5AA3: $07
    rrca                                          ; $5AA4: $0F
    inc bc                                        ; $5AA5: $03
    dec bc                                        ; $5AA6: $0B
    inc b                                         ; $5AA7: $04
    jr c, jr_034_5AB1                             ; $5AA8: $38 $07

jr_034_5AAA:
    ld a, a                                       ; $5AAA: $7F
    rrca                                          ; $5AAB: $0F
    ld a, a                                       ; $5AAC: $7F
    nop                                           ; $5AAD: $00
    ccf                                           ; $5AAE: $3F
    nop                                           ; $5AAF: $00
    nop                                           ; $5AB0: $00

jr_034_5AB1:
    nop                                           ; $5AB1: $00
    nop                                           ; $5AB2: $00
    nop                                           ; $5AB3: $00
    nop                                           ; $5AB4: $00
    nop                                           ; $5AB5: $00
    nop                                           ; $5AB6: $00
    nop                                           ; $5AB7: $00
    nop                                           ; $5AB8: $00
    rst RST_38                                    ; $5AB9: $FF
    nop                                           ; $5ABA: $00
    rst RST_38                                    ; $5ABB: $FF
    nop                                           ; $5ABC: $00
    rst RST_38                                    ; $5ABD: $FF
    nop                                           ; $5ABE: $00
    rst RST_38                                    ; $5ABF: $FF
    db $10                                        ; $5AC0: $10
    rst RST_38                                    ; $5AC1: $FF
    rst RST_38                                    ; $5AC2: $FF
    rst RST_28                                    ; $5AC3: $EF
    rst RST_38                                    ; $5AC4: $FF
    rst RST_00                                    ; $5AC5: $C7
    rst RST_10                                    ; $5AC6: $D7
    jr z, jr_034_5AD9                             ; $5AC7: $28 $10

    rst RST_28                                    ; $5AC9: $EF
    rst RST_38                                    ; $5ACA: $FF
    rst RST_00                                    ; $5ACB: $C7
    rst RST_38                                    ; $5ACC: $FF
    nop                                           ; $5ACD: $00
    rst RST_38                                    ; $5ACE: $FF
    nop                                           ; $5ACF: $00
    nop                                           ; $5AD0: $00
    nop                                           ; $5AD1: $00
    nop                                           ; $5AD2: $00
    nop                                           ; $5AD3: $00
    nop                                           ; $5AD4: $00
    nop                                           ; $5AD5: $00
    nop                                           ; $5AD6: $00
    nop                                           ; $5AD7: $00
    inc h                                         ; $5AD8: $24

jr_034_5AD9:
    ret c                                         ; $5AD9: $D8

    jr c, jr_034_5A9C                             ; $5ADA: $38 $C0

    jr nz, @-$3E                                  ; $5ADC: $20 $C0

    jr nz, jr_034_5AA0                            ; $5ADE: $20 $C0

    ld h, b                                       ; $5AE0: $60
    ret nz                                        ; $5AE1: $C0

    ldh [$FFC0], a                                ; $5AE2: $E0 $C0
    ldh [$FF80], a                                ; $5AE4: $E0 $80
    and b                                         ; $5AE6: $A0
    ld b, b                                       ; $5AE7: $40
    jr c, jr_034_5AAA                             ; $5AE8: $38 $C0

    db $FC                                        ; $5AEA: $FC
    ldh [$FFFC], a                                ; $5AEB: $E0 $FC
    nop                                           ; $5AED: $00
    ld hl, sp+$00                                 ; $5AEE: $F8 $00
    nop                                           ; $5AF0: $00
    nop                                           ; $5AF1: $00
    nop                                           ; $5AF2: $00
    nop                                           ; $5AF3: $00
    nop                                           ; $5AF4: $00
    nop                                           ; $5AF5: $00
    nop                                           ; $5AF6: $00
    nop                                           ; $5AF7: $00
    add b                                         ; $5AF8: $80
    ld a, a                                       ; $5AF9: $7F

jr_034_5AFA:
    adc b                                         ; $5AFA: $88
    ld [hl], a                                    ; $5AFB: $77

jr_034_5AFC:
    ld c, b                                       ; $5AFC: $48
    scf                                           ; $5AFD: $37

jr_034_5AFE:
    jr c, jr_034_5B07                             ; $5AFE: $38 $07

    inc c                                         ; $5B00: $0C
    rlca                                          ; $5B01: $07
    rrca                                          ; $5B02: $0F
    inc bc                                        ; $5B03: $03
    dec bc                                        ; $5B04: $0B
    dec b                                         ; $5B05: $05
    add hl, bc                                    ; $5B06: $09

jr_034_5B07:
    ld b, $38                                     ; $5B07: $06 $38
    rlca                                          ; $5B09: $07
    ld a, b                                       ; $5B0A: $78
    rlca                                          ; $5B0B: $07
    ld a, a                                       ; $5B0C: $7F
    rrca                                          ; $5B0D: $0F
    ccf                                           ; $5B0E: $3F
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
    rst RST_38                                    ; $5B19: $FF
    nop                                           ; $5B1A: $00
    rst RST_38                                    ; $5B1B: $FF
    nop                                           ; $5B1C: $00
    rst RST_38                                    ; $5B1D: $FF
    nop                                           ; $5B1E: $00
    rst RST_38                                    ; $5B1F: $FF
    jr c, @+$01                                   ; $5B20: $38 $FF

    rst RST_38                                    ; $5B22: $FF
    rst RST_30                                    ; $5B23: $F7
    rst RST_38                                    ; $5B24: $FF
    rst RST_20                                    ; $5B25: $E7
    rst RST_30                                    ; $5B26: $F7
    ld [$E71F], sp                                ; $5B27: $08 $1F $E7
    rra                                           ; $5B2A: $1F
    ldh [rIE], a                                  ; $5B2B: $E0 $FF
    ret nz                                        ; $5B2D: $C0

    rst RST_38                                    ; $5B2E: $FF
    nop                                           ; $5B2F: $00
    nop                                           ; $5B30: $00
    nop                                           ; $5B31: $00
    nop                                           ; $5B32: $00
    nop                                           ; $5B33: $00
    nop                                           ; $5B34: $00
    nop                                           ; $5B35: $00
    nop                                           ; $5B36: $00
    nop                                           ; $5B37: $00
    jr c, jr_034_5AFA                             ; $5B38: $38 $C0

    jr nz, jr_034_5AFC                            ; $5B3A: $20 $C0

    jr nz, jr_034_5AFE                            ; $5B3C: $20 $C0

    ld [hl], b                                    ; $5B3E: $70
    ldh [$FFF0], a                                ; $5B3F: $E0 $F0
    ldh [$FFF0], a                                ; $5B41: $E0 $F0
    ldh [$FFE0], a                                ; $5B43: $E0 $E0
    ret nz                                        ; $5B45: $C0

    ldh [rP1], a                                  ; $5B46: $E0 $00
    ld hl, sp-$20                                 ; $5B48: $F8 $E0
    db $FC                                        ; $5B4A: $FC
    nop                                           ; $5B4B: $00
    db $FC                                        ; $5B4C: $FC
    nop                                           ; $5B4D: $00
    ld hl, sp+$00                                 ; $5B4E: $F8 $00
    nop                                           ; $5B50: $00
    nop                                           ; $5B51: $00
    nop                                           ; $5B52: $00
    nop                                           ; $5B53: $00
    nop                                           ; $5B54: $00
    nop                                           ; $5B55: $00
    nop                                           ; $5B56: $00
    nop                                           ; $5B57: $00
    ld c, b                                       ; $5B58: $48
    scf                                           ; $5B59: $37
    jr c, jr_034_5B63                             ; $5B5A: $38 $07

jr_034_5B5C:
    ld [$0807], sp                                ; $5B5C: $08 $07 $08
    rlca                                          ; $5B5F: $07

jr_034_5B60:
    inc c                                         ; $5B60: $0C
    rlca                                          ; $5B61: $07
    rrca                                          ; $5B62: $0F

jr_034_5B63:
    rlca                                          ; $5B63: $07
    rrca                                          ; $5B64: $0F
    inc bc                                        ; $5B65: $03
    dec bc                                        ; $5B66: $0B
    inc b                                         ; $5B67: $04
    ld [$0004], sp                                ; $5B68: $08 $04 $00
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
    rst RST_38                                    ; $5B79: $FF

jr_034_5B7A:
    nop                                           ; $5B7A: $00
    rst RST_38                                    ; $5B7B: $FF

jr_034_5B7C:
    nop                                           ; $5B7C: $00
    rst RST_38                                    ; $5B7D: $FF

jr_034_5B7E:
    nop                                           ; $5B7E: $00
    rst RST_38                                    ; $5B7F: $FF
    db $10                                        ; $5B80: $10
    rst RST_38                                    ; $5B81: $FF
    rst RST_38                                    ; $5B82: $FF
    rst RST_28                                    ; $5B83: $EF
    rst RST_38                                    ; $5B84: $FF
    rst RST_00                                    ; $5B85: $C7
    rst RST_10                                    ; $5B86: $D7
    jr z, jr_034_5B89                             ; $5B87: $28 $00

jr_034_5B89:
    call z, RST_00                                ; $5B89: $CC $00 $00
    nop                                           ; $5B8C: $00
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
    inc h                                         ; $5B98: $24
    ret c                                         ; $5B99: $D8

    jr c, jr_034_5B5C                             ; $5B9A: $38 $C0

    jr nz, @-$3E                                  ; $5B9C: $20 $C0

    jr nz, jr_034_5B60                            ; $5B9E: $20 $C0

    ld h, b                                       ; $5BA0: $60
    ret nz                                        ; $5BA1: $C0

    ldh [$FFC0], a                                ; $5BA2: $E0 $C0
    ldh [$FF80], a                                ; $5BA4: $E0 $80
    and b                                         ; $5BA6: $A0
    ld b, b                                       ; $5BA7: $40
    nop                                           ; $5BA8: $00
    ret nz                                        ; $5BA9: $C0

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
    nop                                           ; $5BB4: $00
    nop                                           ; $5BB5: $00
    nop                                           ; $5BB6: $00
    nop                                           ; $5BB7: $00
    jr c, jr_034_5B7A                             ; $5BB8: $38 $C0

    jr nz, jr_034_5B7C                            ; $5BBA: $20 $C0

    jr nz, jr_034_5B7E                            ; $5BBC: $20 $C0

    ld [hl], b                                    ; $5BBE: $70
    ldh [$FFF0], a                                ; $5BBF: $E0 $F0
    ldh [$FFF0], a                                ; $5BC1: $E0 $F0
    ldh [$FFE0], a                                ; $5BC3: $E0 $E0
    ret nz                                        ; $5BC5: $C0

    ldh [rP1], a                                  ; $5BC6: $E0 $00
    jr nc, jr_034_5BEA                            ; $5BC8: $30 $20

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

jr_034_5BEA:
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
    rlca                                          ; $5BFC: $07
    nop                                           ; $5BFD: $00
    ld [$1207], sp                                ; $5BFE: $08 $07 $12
    dec c                                         ; $5C01: $0D
    ld de, $100E                                  ; $5C02: $11 $0E $10
    rrca                                          ; $5C05: $0F
    db $10                                        ; $5C06: $10
    rrca                                          ; $5C07: $0F
    ld de, $0F0F                                  ; $5C08: $11 $0F $0F
    rlca                                          ; $5C0B: $07
    rlca                                          ; $5C0C: $07
    inc bc                                        ; $5C0D: $03
    inc bc                                        ; $5C0E: $03
    nop                                           ; $5C0F: $00
    nop                                           ; $5C10: $00
    nop                                           ; $5C11: $00
    nop                                           ; $5C12: $00
    nop                                           ; $5C13: $00
    nop                                           ; $5C14: $00
    nop                                           ; $5C15: $00
    rrca                                          ; $5C16: $0F
    nop                                           ; $5C17: $00
    ld b, b                                       ; $5C18: $40
    nop                                           ; $5C19: $00
    ld b, b                                       ; $5C1A: $40
    nop                                           ; $5C1B: $00
    ldh [rP1], a                                  ; $5C1C: $E0 $00
    sub b                                         ; $5C1E: $90
    ld h, b                                       ; $5C1F: $60
    xor b                                         ; $5C20: $A8
    ld d, b                                       ; $5C21: $50
    ret z                                         ; $5C22: $C8

    jr nc, jr_034_5C2D                            ; $5C23: $30 $08

    ldh a, [$FF08]                                ; $5C25: $F0 $08
    ldh a, [$FFE8]                                ; $5C27: $F0 $E8
    ldh a, [$FFF0]                                ; $5C29: $F0 $F0
    ldh [$FFE0], a                                ; $5C2B: $E0 $E0

jr_034_5C2D:
    ret nz                                        ; $5C2D: $C0

    ret nz                                        ; $5C2E: $C0

    nop                                           ; $5C2F: $00
    nop                                           ; $5C30: $00
    nop                                           ; $5C31: $00
    nop                                           ; $5C32: $00
    nop                                           ; $5C33: $00
    nop                                           ; $5C34: $00
    nop                                           ; $5C35: $00
    ld hl, sp+$00                                 ; $5C36: $F8 $00
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
    ld bc, $0300                                  ; $5C44: $01 $00 $03
    nop                                           ; $5C47: $00
    rlca                                          ; $5C48: $07
    inc bc                                        ; $5C49: $03
    rlca                                          ; $5C4A: $07
    ld bc, $0307                                  ; $5C4B: $01 $07 $03
    dec bc                                        ; $5C4E: $0B
    nop                                           ; $5C4F: $00
    dec e                                         ; $5C50: $1D
    ld [$081F], sp                                ; $5C51: $08 $1F $08
    rrca                                          ; $5C54: $0F
    rlca                                          ; $5C55: $07
    rlca                                          ; $5C56: $07
    nop                                           ; $5C57: $00
    nop                                           ; $5C58: $00
    nop                                           ; $5C59: $00
    nop                                           ; $5C5A: $00
    nop                                           ; $5C5B: $00
    nop                                           ; $5C5C: $00
    nop                                           ; $5C5D: $00
    nop                                           ; $5C5E: $00
    nop                                           ; $5C5F: $00
    ld a, h                                       ; $5C60: $7C
    nop                                           ; $5C61: $00
    db $E3                                        ; $5C62: $E3
    ld a, h                                       ; $5C63: $7C
    ldh a, [rIE]                                  ; $5C64: $F0 $FF
    ld hl, sp-$01                                 ; $5C66: $F8 $FF
    db $FD                                        ; $5C68: $FD
    ld a, [hl]                                    ; $5C69: $7E
    db $FD                                        ; $5C6A: $FD
    ld a, [hl]                                    ; $5C6B: $7E
    ld sp, hl                                     ; $5C6C: $F9
    ld a, [hl]                                    ; $5C6D: $7E
    ld hl, sp-$01                                 ; $5C6E: $F8 $FF
    ldh [rIE], a                                  ; $5C70: $E0 $FF
    add sp, -$09                                  ; $5C72: $E8 $F7
    add sp, -$09                                  ; $5C74: $E8 $F7
    ldh [rIE], a                                  ; $5C76: $E0 $FF
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
    nop                                           ; $5C82: $00
    nop                                           ; $5C83: $00
    add b                                         ; $5C84: $80
    nop                                           ; $5C85: $00
    ret nz                                        ; $5C86: $C0

    nop                                           ; $5C87: $00
    ldh [$FFC0], a                                ; $5C88: $E0 $C0
    ldh [$FF80], a                                ; $5C8A: $E0 $80
    add sp, -$40                                  ; $5C8C: $E8 $C0
    call nc, $5408                                ; $5C8E: $D4 $08 $54
    adc b                                         ; $5C91: $88
    ld l, b                                       ; $5C92: $68
    sub b                                         ; $5C93: $90
    db $10                                        ; $5C94: $10
    ldh [$FF60], a                                ; $5C95: $E0 $60
    add b                                         ; $5C97: $80
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
    nop                                           ; $5CA2: $00
    nop                                           ; $5CA3: $00
    ld bc, $0100                                  ; $5CA4: $01 $00 $01
    nop                                           ; $5CA7: $00
    inc bc                                        ; $5CA8: $03
    ld bc, $0003                                  ; $5CA9: $01 $03 $00
    dec bc                                        ; $5CAC: $0B
    ld bc, $081D                                  ; $5CAD: $01 $1D $08
    dec e                                         ; $5CB0: $1D
    ld [$040F], sp                                ; $5CB1: $08 $0F $04
    rlca                                          ; $5CB4: $07
    inc bc                                        ; $5CB5: $03
    inc bc                                        ; $5CB6: $03
    nop                                           ; $5CB7: $00
    nop                                           ; $5CB8: $00
    nop                                           ; $5CB9: $00
    nop                                           ; $5CBA: $00
    nop                                           ; $5CBB: $00
    nop                                           ; $5CBC: $00
    nop                                           ; $5CBD: $00
    ld a, $00                                     ; $5CBE: $3E $00
    ld a, c                                       ; $5CC0: $79
    ld a, $FC                                     ; $5CC1: $3E $FC
    ld a, a                                       ; $5CC3: $7F
    db $FC                                        ; $5CC4: $FC
    rst RST_38                                    ; $5CC5: $FF
    db $FC                                        ; $5CC6: $FC
    ld a, a                                       ; $5CC7: $7F
    db $FD                                        ; $5CC8: $FD
    cp [hl]                                       ; $5CC9: $BE
    db $FD                                        ; $5CCA: $FD
    cp [hl]                                       ; $5CCB: $BE
    db $FD                                        ; $5CCC: $FD
    cp [hl]                                       ; $5CCD: $BE
    db $FC                                        ; $5CCE: $FC
    ld a, a                                       ; $5CCF: $7F
    ldh a, [rIE]                                  ; $5CD0: $F0 $FF
    add sp, -$09                                  ; $5CD2: $E8 $F7
    add sp, -$09                                  ; $5CD4: $E8 $F7
    ldh [rIE], a                                  ; $5CD6: $E0 $FF
    nop                                           ; $5CD8: $00
    nop                                           ; $5CD9: $00
    nop                                           ; $5CDA: $00
    nop                                           ; $5CDB: $00
    nop                                           ; $5CDC: $00
    nop                                           ; $5CDD: $00
    nop                                           ; $5CDE: $00
    nop                                           ; $5CDF: $00
    nop                                           ; $5CE0: $00
    nop                                           ; $5CE1: $00
    add b                                         ; $5CE2: $80
    nop                                           ; $5CE3: $00
    ld b, b                                       ; $5CE4: $40
    add b                                         ; $5CE5: $80
    ret nz                                        ; $5CE6: $C0

    nop                                           ; $5CE7: $00
    ldh [$FFC0], a                                ; $5CE8: $E0 $C0
    ldh [$FF80], a                                ; $5CEA: $E0 $80
    add sp, -$40                                  ; $5CEC: $E8 $C0
    call nc, $5408                                ; $5CEE: $D4 $08 $54
    adc b                                         ; $5CF1: $88
    ld l, b                                       ; $5CF2: $68
    sub b                                         ; $5CF3: $90
    db $10                                        ; $5CF4: $10
    ldh [$FF60], a                                ; $5CF5: $E0 $60
    add b                                         ; $5CF7: $80
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

jr_034_5D06:
    ld bc, $0300                                  ; $5D06: $01 $00 $03
    ld bc, $0003                                  ; $5D09: $01 $03 $00
    dec bc                                        ; $5D0C: $0B
    ld bc, $081D                                  ; $5D0D: $01 $1D $08
    dec e                                         ; $5D10: $1D
    ld [$040F], sp                                ; $5D11: $08 $0F $04
    rlca                                          ; $5D14: $07
    inc bc                                        ; $5D15: $03
    inc bc                                        ; $5D16: $03
    nop                                           ; $5D17: $00
    nop                                           ; $5D18: $00
    nop                                           ; $5D19: $00
    nop                                           ; $5D1A: $00
    nop                                           ; $5D1B: $00
    nop                                           ; $5D1C: $00
    nop                                           ; $5D1D: $00
    nop                                           ; $5D1E: $00
    nop                                           ; $5D1F: $00
    rra                                           ; $5D20: $1F
    nop                                           ; $5D21: $00
    ld a, [hl]                                    ; $5D22: $7E
    rra                                           ; $5D23: $1F
    db $FC                                        ; $5D24: $FC
    ld a, a                                       ; $5D25: $7F
    db $FC                                        ; $5D26: $FC
    ld a, a                                       ; $5D27: $7F
    db $FC                                        ; $5D28: $FC
    cp a                                          ; $5D29: $BF
    db $FC                                        ; $5D2A: $FC
    cp a                                          ; $5D2B: $BF
    db $FC                                        ; $5D2C: $FC
    cp a                                          ; $5D2D: $BF
    db $FC                                        ; $5D2E: $FC
    ld a, a                                       ; $5D2F: $7F
    ld hl, sp-$01                                 ; $5D30: $F8 $FF
    ld hl, sp-$09                                 ; $5D32: $F8 $F7
    add sp, -$09                                  ; $5D34: $E8 $F7
    ldh [rIE], a                                  ; $5D36: $E0 $FF
    nop                                           ; $5D38: $00
    nop                                           ; $5D39: $00
    nop                                           ; $5D3A: $00
    nop                                           ; $5D3B: $00
    nop                                           ; $5D3C: $00
    nop                                           ; $5D3D: $00
    nop                                           ; $5D3E: $00
    nop                                           ; $5D3F: $00
    add b                                         ; $5D40: $80
    nop                                           ; $5D41: $00
    ld b, b                                       ; $5D42: $40
    add b                                         ; $5D43: $80
    jr nz, jr_034_5D06                            ; $5D44: $20 $C0

    ld h, b                                       ; $5D46: $60
    add b                                         ; $5D47: $80
    ldh a, [$FF60]                                ; $5D48: $F0 $60
    ldh a, [rLCDC]                                ; $5D4A: $F0 $40
    ldh a, [$FF60]                                ; $5D4C: $F0 $60
    ld l, b                                       ; $5D4E: $68
    add b                                         ; $5D4F: $80
    ld d, h                                       ; $5D50: $54
    adc b                                         ; $5D51: $88
    ld [hl], h                                    ; $5D52: $74
    adc b                                         ; $5D53: $88
    ld [$70F0], sp                                ; $5D54: $08 $F0 $70
    add b                                         ; $5D57: $80
    ld bc, $0300                                  ; $5D58: $01 $00 $03
    ld bc, $0307                                  ; $5D5B: $01 $07 $03
    rlca                                          ; $5D5E: $07
    inc bc                                        ; $5D5F: $03
    rrca                                          ; $5D60: $0F
    ld b, $0E                                     ; $5D61: $06 $0E
    rlca                                          ; $5D63: $07
    ld c, $07                                     ; $5D64: $0E $07
    ld e, $03                                     ; $5D66: $1E $03
    inc c                                         ; $5D68: $0C
    ld [$0000], sp                                ; $5D69: $08 $00 $00
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
    add sp, -$09                                  ; $5D78: $E8 $F7
    add sp, -$09                                  ; $5D7A: $E8 $F7
    ldh [rIE], a                                  ; $5D7C: $E0 $FF
    add sp, -$09                                  ; $5D7E: $E8 $F7
    add sp, -$09                                  ; $5D80: $E8 $F7
    pop hl                                        ; $5D82: $E1
    ld a, [hl]                                    ; $5D83: $7E

jr_034_5D84:
    ld [hl], l                                    ; $5D84: $75
    cp d                                          ; $5D85: $BA
    ld [hl], l                                    ; $5D86: $75
    sbc d                                         ; $5D87: $9A
    ld b, b                                       ; $5D88: $40
    adc h                                         ; $5D89: $8C
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
    jr nc, @-$3E                                  ; $5D98: $30 $C0

    ld [$08F0], sp                                ; $5D9A: $08 $F0 $08
    ldh a, [rOBP0]                                ; $5D9D: $F0 $48
    or b                                          ; $5D9F: $B0
    adc b                                         ; $5DA0: $88
    ld [hl], b                                    ; $5DA1: $70
    jr jr_034_5D84                                ; $5DA2: $18 $E0

    inc d                                         ; $5DA4: $14
    add sp, -$78                                  ; $5DA5: $E8 $88
    ld [hl], b                                    ; $5DA7: $70
    ld b, b                                       ; $5DA8: $40
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
    rlca                                          ; $5DB8: $07
    ld bc, $070F                                  ; $5DB9: $01 $0F $07
    rrca                                          ; $5DBC: $0F
    rlca                                          ; $5DBD: $07
    rrca                                          ; $5DBE: $0F
    ld b, $0E                                     ; $5DBF: $06 $0E
    rlca                                          ; $5DC1: $07
    ld c, $03                                     ; $5DC2: $0E $03
    ld e, $0B                                     ; $5DC4: $1E $0B
    ld c, $07                                     ; $5DC6: $0E $07
    inc b                                         ; $5DC8: $04
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
    add sp, -$09                                  ; $5DD8: $E8 $F7
    add sp, -$09                                  ; $5DDA: $E8 $F7
    ldh [rIE], a                                  ; $5DDC: $E0 $FF
    add sp, -$09                                  ; $5DDE: $E8 $F7
    add sp, $77                                   ; $5DE0: $E8 $77
    ld h, b                                       ; $5DE2: $60
    cp a                                          ; $5DE3: $BF
    ld [hl], c                                    ; $5DE4: $71
    xor [hl]                                      ; $5DE5: $AE
    di                                            ; $5DE6: $F3
    inc l                                         ; $5DE7: $2C
    ld b, b                                       ; $5DE8: $40
    inc c                                         ; $5DE9: $0C
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
    ld b, $00                                     ; $5DFA: $06 $00
    dec c                                         ; $5DFC: $0D
    ld b, $0F                                     ; $5DFD: $06 $0F
    rlca                                          ; $5DFF: $07
    dec b                                         ; $5E00: $05
    inc bc                                        ; $5E01: $03
    inc bc                                        ; $5E02: $03
    ld bc, $0103                                  ; $5E03: $01 $03 $01
    inc bc                                        ; $5E06: $03
    ld bc, $0103                                  ; $5E07: $01 $03 $01
    inc bc                                        ; $5E0A: $03
    ld bc, $0103                                  ; $5E0B: $01 $03 $01
    rlca                                          ; $5E0E: $07
    inc bc                                        ; $5E0F: $03
    dec bc                                        ; $5E10: $0B
    rlca                                          ; $5E11: $07
    ld [$0707], sp                                ; $5E12: $08 $07 $07
    nop                                           ; $5E15: $00
    rrca                                          ; $5E16: $0F
    nop                                           ; $5E17: $00
    nop                                           ; $5E18: $00
    nop                                           ; $5E19: $00
    ld [hl], b                                    ; $5E1A: $70
    nop                                           ; $5E1B: $00
    adc b                                         ; $5E1C: $88
    ld [hl], b                                    ; $5E1D: $70
    ld [$B0F0], sp                                ; $5E1E: $08 $F0 $B0
    ret nz                                        ; $5E21: $C0

    and b                                         ; $5E22: $A0
    ret nz                                        ; $5E23: $C0

    and b                                         ; $5E24: $A0
    ret nz                                        ; $5E25: $C0

    and b                                         ; $5E26: $A0
    ret nz                                        ; $5E27: $C0

    and b                                         ; $5E28: $A0
    ret nz                                        ; $5E29: $C0

    and b                                         ; $5E2A: $A0
    ret nz                                        ; $5E2B: $C0

    ret nc                                        ; $5E2C: $D0

    ldh [$FFE8], a                                ; $5E2D: $E0 $E8
    ldh a, [rOBP0]                                ; $5E2F: $F0 $48
    or b                                          ; $5E31: $B0
    or b                                          ; $5E32: $B0
    nop                                           ; $5E33: $00
    nop                                           ; $5E34: $00
    nop                                           ; $5E35: $00
    ld hl, sp+$00                                 ; $5E36: $F8 $00
    ld bc, $0300                                  ; $5E38: $01 $00 $03
    ld bc, $0307                                  ; $5E3B: $01 $07 $03
    rlca                                          ; $5E3E: $07
    inc bc                                        ; $5E3F: $03
    rrca                                          ; $5E40: $0F
    ld b, $0E                                     ; $5E41: $06 $0E
    rlca                                          ; $5E43: $07
    ld c, $07                                     ; $5E44: $0E $07
    ld e, $03                                     ; $5E46: $1E $03
    ld e, $0B                                     ; $5E48: $1E $0B
    ld e, $07                                     ; $5E4A: $1E $07
    rrca                                          ; $5E4C: $0F
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
    add sp, -$09                                  ; $5E58: $E8 $F7
    add sp, -$09                                  ; $5E5A: $E8 $F7
    ldh [rIE], a                                  ; $5E5C: $E0 $FF
    add sp, -$09                                  ; $5E5E: $E8 $F7
    add sp, -$09                                  ; $5E60: $E8 $F7
    pop hl                                        ; $5E62: $E1
    ld a, [hl]                                    ; $5E63: $7E

jr_034_5E64:
    ld [hl], l                                    ; $5E64: $75
    cp d                                          ; $5E65: $BA
    ld [hl], l                                    ; $5E66: $75
    sbc d                                         ; $5E67: $9A
    ld [hl], c                                    ; $5E68: $71
    sbc [hl]                                      ; $5E69: $9E
    rst RST_38                                    ; $5E6A: $FF
    ld [$08FF], sp                                ; $5E6B: $08 $FF $08
    rrca                                          ; $5E6E: $0F
    inc b                                         ; $5E6F: $04
    rrca                                          ; $5E70: $0F
    inc b                                         ; $5E71: $04
    rlca                                          ; $5E72: $07
    ld [bc], a                                    ; $5E73: $02
    inc bc                                        ; $5E74: $03
    nop                                           ; $5E75: $00
    nop                                           ; $5E76: $00
    nop                                           ; $5E77: $00
    jr nc, @-$3E                                  ; $5E78: $30 $C0

    ld [$08F0], sp                                ; $5E7A: $08 $F0 $08
    ldh a, [rOBP0]                                ; $5E7D: $F0 $48
    or b                                          ; $5E7F: $B0
    adc b                                         ; $5E80: $88
    ld [hl], b                                    ; $5E81: $70
    jr jr_034_5E64                                ; $5E82: $18 $E0

    inc d                                         ; $5E84: $14
    add sp, -$74                                  ; $5E85: $E8 $8C
    ld [hl], b                                    ; $5E87: $70
    db $FC                                        ; $5E88: $FC
    nop                                           ; $5E89: $00
    ld hl, sp+$00                                 ; $5E8A: $F8 $00
    ldh a, [rP1]                                  ; $5E8C: $F0 $00
    add b                                         ; $5E8E: $80
    nop                                           ; $5E8F: $00
    nop                                           ; $5E90: $00
    nop                                           ; $5E91: $00
    add b                                         ; $5E92: $80
    nop                                           ; $5E93: $00
    nop                                           ; $5E94: $00
    nop                                           ; $5E95: $00
    nop                                           ; $5E96: $00
    nop                                           ; $5E97: $00
    inc bc                                        ; $5E98: $03
    ld bc, $0307                                  ; $5E99: $01 $07 $03
    rlca                                          ; $5E9C: $07
    inc bc                                        ; $5E9D: $03
    rrca                                          ; $5E9E: $0F
    ld b, $0C                                     ; $5E9F: $06 $0C
    rlca                                          ; $5EA1: $07
    inc c                                         ; $5EA2: $0C
    rlca                                          ; $5EA3: $07
    ld c, $03                                     ; $5EA4: $0E $03
    ld e, $0B                                     ; $5EA6: $1E $0B
    ld e, $07                                     ; $5EA8: $1E $07
    rra                                           ; $5EAA: $1F
    nop                                           ; $5EAB: $00
    rrca                                          ; $5EAC: $0F
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
    add sp, -$09                                  ; $5EB8: $E8 $F7
    add sp, -$09                                  ; $5EBA: $E8 $F7
    ldh [rIE], a                                  ; $5EBC: $E0 $FF
    add sp, -$09                                  ; $5EBE: $E8 $F7
    add sp, $77                                   ; $5EC0: $E8 $77
    ld h, c                                       ; $5EC2: $61
    cp [hl]                                       ; $5EC3: $BE
    ld l, c                                       ; $5EC4: $69
    or [hl]                                       ; $5EC5: $B6
    ld l, c                                       ; $5EC6: $69
    or [hl]                                       ; $5EC7: $B6
    di                                            ; $5EC8: $F3
    inc e                                         ; $5EC9: $1C
    ei                                            ; $5ECA: $FB
    inc d                                         ; $5ECB: $14
    ei                                            ; $5ECC: $FB
    inc d                                         ; $5ECD: $14
    ld e, $08                                     ; $5ECE: $1E $08
    ld e, $08                                     ; $5ED0: $1E $08
    ld e, $08                                     ; $5ED2: $1E $08
    inc c                                         ; $5ED4: $0C
    nop                                           ; $5ED5: $00
    nop                                           ; $5ED6: $00
    nop                                           ; $5ED7: $00
    jr nz, @-$3E                                  ; $5ED8: $20 $C0

    db $10                                        ; $5EDA: $10
    ldh [rNR10], a                                ; $5EDB: $E0 $10
    ldh [rOBP0], a                                ; $5EDD: $E0 $48
    or b                                          ; $5EDF: $B0
    adc b                                         ; $5EE0: $88
    ld [hl], b                                    ; $5EE1: $70
    ld [$18F0], sp                                ; $5EE2: $08 $F0 $18
    ldh [rNR14], a                                ; $5EE5: $E0 $14
    add sp, -$74                                  ; $5EE7: $E8 $8C
    ld [hl], b                                    ; $5EE9: $70
    db $FC                                        ; $5EEA: $FC
    nop                                           ; $5EEB: $00
    ld hl, sp+$00                                 ; $5EEC: $F8 $00
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
    rlca                                          ; $5EF8: $07
    ld bc, $070F                                  ; $5EF9: $01 $0F $07

jr_034_5EFC:
    rrca                                          ; $5EFC: $0F
    rlca                                          ; $5EFD: $07
    rrca                                          ; $5EFE: $0F
    ld b, $0E                                     ; $5EFF: $06 $0E
    rlca                                          ; $5F01: $07
    ld c, $03                                     ; $5F02: $0E $03
    ld e, $0B                                     ; $5F04: $1E $0B
    ld e, $07                                     ; $5F06: $1E $07
    rra                                           ; $5F08: $1F
    nop                                           ; $5F09: $00
    rrca                                          ; $5F0A: $0F
    nop                                           ; $5F0B: $00
    rlca                                          ; $5F0C: $07
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
    add sp, -$09                                  ; $5F18: $E8 $F7
    add sp, -$09                                  ; $5F1A: $E8 $F7
    ldh [rIE], a                                  ; $5F1C: $E0 $FF
    add sp, -$09                                  ; $5F1E: $E8 $F7
    add sp, $77                                   ; $5F20: $E8 $77
    ld h, b                                       ; $5F22: $60
    cp a                                          ; $5F23: $BF
    ld [hl], c                                    ; $5F24: $71
    xor [hl]                                      ; $5F25: $AE
    di                                            ; $5F26: $F3
    inc l                                         ; $5F27: $2C
    di                                            ; $5F28: $F3
    inc a                                         ; $5F29: $3C
    rst RST_30                                    ; $5F2A: $F7
    ld [$08F7], sp                                ; $5F2B: $08 $F7 $08
    inc a                                         ; $5F2E: $3C
    db $10                                        ; $5F2F: $10
    inc a                                         ; $5F30: $3C
    db $10                                        ; $5F31: $10
    ld a, b                                       ; $5F32: $78
    jr nz, @+$32                                  ; $5F33: $20 $30

    nop                                           ; $5F35: $00
    nop                                           ; $5F36: $00
    nop                                           ; $5F37: $00
    ld b, b                                       ; $5F38: $40
    add b                                         ; $5F39: $80
    jr nz, jr_034_5EFC                            ; $5F3A: $20 $C0

    db $10                                        ; $5F3C: $10
    ldh [rNR10], a                                ; $5F3D: $E0 $10
    ldh [rOBP0], a                                ; $5F3F: $E0 $48
    or b                                          ; $5F41: $B0
    adc b                                         ; $5F42: $88
    ld [hl], b                                    ; $5F43: $70
    ld [$1CF0], sp                                ; $5F44: $08 $F0 $1C
    ldh [rNR14], a                                ; $5F47: $E0 $14
    add sp, -$74                                  ; $5F49: $E8 $8C
    ld [hl], b                                    ; $5F4B: $70
    ld hl, sp+$00                                 ; $5F4C: $F8 $00
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
    ld bc, $0307                                  ; $5F59: $01 $07 $03
    rlca                                          ; $5F5C: $07
    inc bc                                        ; $5F5D: $03
    rrca                                          ; $5F5E: $0F
    ld b, $0C                                     ; $5F5F: $06 $0C
    rlca                                          ; $5F61: $07
    inc c                                         ; $5F62: $0C
    rlca                                          ; $5F63: $07
    ld c, $03                                     ; $5F64: $0E $03
    ld e, $0B                                     ; $5F66: $1E $0B
    ld [bc], a                                    ; $5F68: $02
    inc bc                                        ; $5F69: $03
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
    add sp, -$09                                  ; $5F78: $E8 $F7
    add sp, -$09                                  ; $5F7A: $E8 $F7

jr_034_5F7C:
    ldh [rIE], a                                  ; $5F7C: $E0 $FF
    add sp, -$09                                  ; $5F7E: $E8 $F7
    add sp, $77                                   ; $5F80: $E8 $77
    ld h, c                                       ; $5F82: $61
    cp [hl]                                       ; $5F83: $BE
    ld l, c                                       ; $5F84: $69
    or [hl]                                       ; $5F85: $B6
    ld l, c                                       ; $5F86: $69
    or [hl]                                       ; $5F87: $B6
    ld [hl-], a                                   ; $5F88: $32
    stop                                          ; $5F89: $10 $00
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
    jr nz, @-$3E                                  ; $5F98: $20 $C0

    db $10                                        ; $5F9A: $10
    ldh [rNR10], a                                ; $5F9B: $E0 $10
    ldh [rOBP0], a                                ; $5F9D: $E0 $48
    or b                                          ; $5F9F: $B0
    adc b                                         ; $5FA0: $88
    ld [hl], b                                    ; $5FA1: $70
    ld [$18F0], sp                                ; $5FA2: $08 $F0 $18
    ldh [rNR14], a                                ; $5FA5: $E0 $14
    add sp, $00                                   ; $5FA7: $E8 $00
    jr nc, jr_034_5FAB                            ; $5FA9: $30 $00

jr_034_5FAB:
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
    ld b, b                                       ; $5FB8: $40
    add b                                         ; $5FB9: $80
    jr nz, jr_034_5F7C                            ; $5FBA: $20 $C0

    db $10                                        ; $5FBC: $10
    ldh [rNR10], a                                ; $5FBD: $E0 $10
    ldh [rOBP0], a                                ; $5FBF: $E0 $48
    or b                                          ; $5FC1: $B0
    adc b                                         ; $5FC2: $88
    ld [hl], b                                    ; $5FC3: $70
    ld [$1CF0], sp                                ; $5FC4: $08 $F0 $1C
    ldh [rDIV], a                                 ; $5FC7: $E0 $04
    ret z                                         ; $5FC9: $C8

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
    nop                                           ; $5FE0: $00
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
    ld b, $00                                     ; $5FF8: $06 $00
    dec c                                         ; $5FFA: $0D
    ld b, $0F                                     ; $5FFB: $06 $0F
    rlca                                          ; $5FFD: $07
    dec b                                         ; $5FFE: $05
    inc bc                                        ; $5FFF: $03
    inc bc                                        ; $6000: $03
    ld bc, $0103                                  ; $6001: $01 $03 $01
    inc bc                                        ; $6004: $03
    ld bc, $0103                                  ; $6005: $01 $03 $01
    inc bc                                        ; $6008: $03
    ld bc, $0103                                  ; $6009: $01 $03 $01
    rlca                                          ; $600C: $07
    inc bc                                        ; $600D: $03
    dec bc                                        ; $600E: $0B
    rlca                                          ; $600F: $07
    ld [$0707], sp                                ; $6010: $08 $07 $07
    nop                                           ; $6013: $00
    nop                                           ; $6014: $00
    nop                                           ; $6015: $00
    rrca                                          ; $6016: $0F
    nop                                           ; $6017: $00
    ld [hl], b                                    ; $6018: $70
    nop                                           ; $6019: $00
    adc b                                         ; $601A: $88
    ld [hl], b                                    ; $601B: $70
    ld [$B0F0], sp                                ; $601C: $08 $F0 $B0
    ret nz                                        ; $601F: $C0

    and b                                         ; $6020: $A0
    ret nz                                        ; $6021: $C0

    and b                                         ; $6022: $A0
    ret nz                                        ; $6023: $C0

    and b                                         ; $6024: $A0
    ret nz                                        ; $6025: $C0

    and b                                         ; $6026: $A0
    ret nz                                        ; $6027: $C0

    and b                                         ; $6028: $A0
    ret nz                                        ; $6029: $C0

    ret nc                                        ; $602A: $D0

    ldh [$FFE8], a                                ; $602B: $E0 $E8
    ldh a, [rOBP0]                                ; $602D: $F0 $48
    or b                                          ; $602F: $B0
    or b                                          ; $6030: $B0
    nop                                           ; $6031: $00
    nop                                           ; $6032: $00
    nop                                           ; $6033: $00
    nop                                           ; $6034: $00
    nop                                           ; $6035: $00
    ld hl, sp+$00                                 ; $6036: $F8 $00
    nop                                           ; $6038: $00
    nop                                           ; $6039: $00
    nop                                           ; $603A: $00
    nop                                           ; $603B: $00
    nop                                           ; $603C: $00
    nop                                           ; $603D: $00
    ld bc, $0300                                  ; $603E: $01 $00 $03
    ld bc, $0103                                  ; $6041: $01 $03 $01
    ld bc, $0000                                  ; $6044: $01 $00 $00
    nop                                           ; $6047: $00
    inc bc                                        ; $6048: $03
    nop                                           ; $6049: $00
    inc b                                         ; $604A: $04
    inc bc                                        ; $604B: $03
    ld [$0807], sp                                ; $604C: $08 $07 $08
    rlca                                          ; $604F: $07
    dec bc                                        ; $6050: $0B
    inc b                                         ; $6051: $04
    scf                                           ; $6052: $37
    ld [bc], a                                    ; $6053: $02
    dec bc                                        ; $6054: $0B
    nop                                           ; $6055: $00
    ld de, $0000                                  ; $6056: $11 $00 $00
    nop                                           ; $6059: $00
    nop                                           ; $605A: $00
    nop                                           ; $605B: $00
    nop                                           ; $605C: $00
    nop                                           ; $605D: $00
    nop                                           ; $605E: $00
    nop                                           ; $605F: $00
    xor d                                         ; $6060: $AA
    nop                                           ; $6061: $00
    push de                                       ; $6062: $D5
    xor d                                         ; $6063: $AA
    db $E3                                        ; $6064: $E3
    db $DD                                        ; $6065: $DD
    rst RST_38                                    ; $6066: $FF
    ld h, e                                       ; $6067: $63
    rst RST_38                                    ; $6068: $FF
    ld [hl], $FF                                  ; $6069: $36 $FF
    ld l, e                                       ; $606B: $6B
    ld a, a                                       ; $606C: $7F
    xor d                                         ; $606D: $AA
    ld a, a                                       ; $606E: $7F
    add b                                         ; $606F: $80
    sub h                                         ; $6070: $94
    ld l, e                                       ; $6071: $6B
    inc h                                         ; $6072: $24
    db $DB                                        ; $6073: $DB
    ld [$80F7], sp                                ; $6074: $08 $F7 $80
    ld a, a                                       ; $6077: $7F
    nop                                           ; $6078: $00
    nop                                           ; $6079: $00
    nop                                           ; $607A: $00
    nop                                           ; $607B: $00
    nop                                           ; $607C: $00
    nop                                           ; $607D: $00
    ld b, b                                       ; $607E: $40
    nop                                           ; $607F: $00
    ldh [rLCDC], a                                ; $6080: $E0 $40
    ldh [$FFC0], a                                ; $6082: $E0 $C0
    ret nz                                        ; $6084: $C0

    add b                                         ; $6085: $80
    add b                                         ; $6086: $80
    nop                                           ; $6087: $00
    ldh [rP1], a                                  ; $6088: $E0 $00
    sub b                                         ; $608A: $90
    ld h, b                                       ; $608B: $60
    ld [$08F0], sp                                ; $608C: $08 $F0 $08
    ldh a, [$FFE8]                                ; $608F: $F0 $E8
    db $10                                        ; $6091: $10
    halt                                          ; $6092: $76
    and b                                         ; $6093: $A0
    ld l, b                                       ; $6094: $68
    add b                                         ; $6095: $80
    call nz, RST_00                               ; $6096: $C4 $00 $00
    nop                                           ; $6099: $00
    nop                                           ; $609A: $00
    nop                                           ; $609B: $00
    inc bc                                        ; $609C: $03
    nop                                           ; $609D: $00
    rlca                                          ; $609E: $07
    inc bc                                        ; $609F: $03
    inc bc                                        ; $60A0: $03
    ld bc, $0001                                  ; $60A1: $01 $01 $00
    nop                                           ; $60A4: $00
    nop                                           ; $60A5: $00
    inc bc                                        ; $60A6: $03
    nop                                           ; $60A7: $00
    inc b                                         ; $60A8: $04
    inc bc                                        ; $60A9: $03
    ld [$0B07], sp                                ; $60AA: $08 $07 $0B
    inc b                                         ; $60AD: $04
    rrca                                          ; $60AE: $0F
    ld [bc], a                                    ; $60AF: $02
    rla                                           ; $60B0: $17
    ld [bc], a                                    ; $60B1: $02
    dec hl                                        ; $60B2: $2B
    nop                                           ; $60B3: $00
    ld [$0100], sp                                ; $60B4: $08 $00 $01
    nop                                           ; $60B7: $00
    nop                                           ; $60B8: $00
    nop                                           ; $60B9: $00
    nop                                           ; $60BA: $00
    nop                                           ; $60BB: $00
    nop                                           ; $60BC: $00
    nop                                           ; $60BD: $00
    xor d                                         ; $60BE: $AA
    nop                                           ; $60BF: $00
    push de                                       ; $60C0: $D5
    xor d                                         ; $60C1: $AA
    db $E3                                        ; $60C2: $E3
    db $DD                                        ; $60C3: $DD
    rst RST_38                                    ; $60C4: $FF
    ld [hl+], a                                   ; $60C5: $22
    rst RST_38                                    ; $60C6: $FF
    ld [hl], a                                    ; $60C7: $77
    rst RST_38                                    ; $60C8: $FF
    ld a, [hl+]                                   ; $60C9: $2A
    ld a, a                                       ; $60CA: $7F
    add b                                         ; $60CB: $80
    and h                                         ; $60CC: $A4
    ld e, e                                       ; $60CD: $5B
    ld c, b                                       ; $60CE: $48
    or a                                          ; $60CF: $B7
    db $10                                        ; $60D0: $10
    rst RST_28                                    ; $60D1: $EF
    add b                                         ; $60D2: $80
    ld a, a                                       ; $60D3: $7F
    add b                                         ; $60D4: $80
    ld a, a                                       ; $60D5: $7F
    rst RST_38                                    ; $60D6: $FF
    add b                                         ; $60D7: $80
    nop                                           ; $60D8: $00
    nop                                           ; $60D9: $00
    nop                                           ; $60DA: $00
    nop                                           ; $60DB: $00
    ld h, b                                       ; $60DC: $60
    nop                                           ; $60DD: $00
    ldh a, [$FF60]                                ; $60DE: $F0 $60
    ldh [$FFC0], a                                ; $60E0: $E0 $C0
    ret nz                                        ; $60E2: $C0

    add b                                         ; $60E3: $80
    add b                                         ; $60E4: $80
    nop                                           ; $60E5: $00
    ldh [rP1], a                                  ; $60E6: $E0 $00
    sub b                                         ; $60E8: $90
    ld h, b                                       ; $60E9: $60
    ld [$E8F0], sp                                ; $60EA: $08 $F0 $E8
    db $10                                        ; $60ED: $10
    ld a, b                                       ; $60EE: $78
    and b                                         ; $60EF: $A0
    ld [hl], h                                    ; $60F0: $74
    and b                                         ; $60F1: $A0
    ld [$8800], a                                 ; $60F2: $EA $00 $88
    nop                                           ; $60F5: $00
    ret nz                                        ; $60F6: $C0

    add b                                         ; $60F7: $80
    nop                                           ; $60F8: $00
    nop                                           ; $60F9: $00
    inc bc                                        ; $60FA: $03
    nop                                           ; $60FB: $00
    rlca                                          ; $60FC: $07
    inc bc                                        ; $60FD: $03
    inc bc                                        ; $60FE: $03
    nop                                           ; $60FF: $00
    nop                                           ; $6100: $00
    nop                                           ; $6101: $00
    nop                                           ; $6102: $00
    nop                                           ; $6103: $00
    inc bc                                        ; $6104: $03
    nop                                           ; $6105: $00
    inc b                                         ; $6106: $04
    inc bc                                        ; $6107: $03
    add hl, bc                                    ; $6108: $09
    ld b, $0B                                     ; $6109: $06 $0B
    inc b                                         ; $610B: $04
    rrca                                          ; $610C: $0F
    ld [bc], a                                    ; $610D: $02
    rla                                           ; $610E: $17
    nop                                           ; $610F: $00
    dec de                                        ; $6110: $1B
    nop                                           ; $6111: $00
    add hl, bc                                    ; $6112: $09
    nop                                           ; $6113: $00
    inc bc                                        ; $6114: $03
    ld bc, $0307                                  ; $6115: $01 $07 $03
    nop                                           ; $6118: $00
    nop                                           ; $6119: $00
    xor d                                         ; $611A: $AA
    nop                                           ; $611B: $00
    push de                                       ; $611C: $D5
    xor d                                         ; $611D: $AA
    db $E3                                        ; $611E: $E3
    db $DD                                        ; $611F: $DD
    rst RST_38                                    ; $6120: $FF
    ld [hl+], a                                   ; $6121: $22
    rst RST_38                                    ; $6122: $FF
    ld [hl], a                                    ; $6123: $77
    ld a, a                                       ; $6124: $7F
    ld a, [hl+]                                   ; $6125: $2A
    rst RST_38                                    ; $6126: $FF
    nop                                           ; $6127: $00
    ret z                                         ; $6128: $C8

    scf                                           ; $6129: $37
    sub b                                         ; $612A: $90
    ld l, a                                       ; $612B: $6F
    ld h, b                                       ; $612C: $60
    sbc a                                         ; $612D: $9F
    add b                                         ; $612E: $80
    ld a, a                                       ; $612F: $7F
    add b                                         ; $6130: $80
    ld a, a                                       ; $6131: $7F
    rst RST_38                                    ; $6132: $FF
    add b                                         ; $6133: $80
    rst RST_38                                    ; $6134: $FF
    rst RST_38                                    ; $6135: $FF
    rst RST_38                                    ; $6136: $FF
    rst RST_38                                    ; $6137: $FF
    nop                                           ; $6138: $00
    nop                                           ; $6139: $00
    ldh [rP1], a                                  ; $613A: $E0 $00
    ldh a, [$FFE0]                                ; $613C: $F0 $E0
    ldh [$FF80], a                                ; $613E: $E0 $80
    add b                                         ; $6140: $80
    nop                                           ; $6141: $00
    add b                                         ; $6142: $80
    nop                                           ; $6143: $00
    ld h, b                                       ; $6144: $60
    nop                                           ; $6145: $00
    sub b                                         ; $6146: $90
    ld h, b                                       ; $6147: $60
    ret z                                         ; $6148: $C8

    jr nc, jr_034_61B3                            ; $6149: $30 $68

    sub b                                         ; $614B: $90
    ld a, b                                       ; $614C: $78
    and b                                         ; $614D: $A0
    db $F4                                        ; $614E: $F4
    nop                                           ; $614F: $00
    db $EC                                        ; $6150: $EC
    nop                                           ; $6151: $00
    ret z                                         ; $6152: $C8

    add b                                         ; $6153: $80
    ldh [$FFC0], a                                ; $6154: $E0 $C0
    ldh a, [$FFE0]                                ; $6156: $F0 $E0
    nop                                           ; $6158: $00
    nop                                           ; $6159: $00
    ld bc, $0300                                  ; $615A: $01 $00 $03
    ld bc, $0307                                  ; $615D: $01 $07 $03
    rlca                                          ; $6160: $07
    inc bc                                        ; $6161: $03
    rlca                                          ; $6162: $07
    inc bc                                        ; $6163: $03
    inc bc                                        ; $6164: $03
    ld bc, $010F                                  ; $6165: $01 $0F $01
    inc de                                        ; $6168: $13
    inc bc                                        ; $6169: $03
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
    add b                                         ; $6178: $80
    ld a, a                                       ; $6179: $7F
    rst RST_38                                    ; $617A: $FF
    add b                                         ; $617B: $80
    rst RST_38                                    ; $617C: $FF
    rst RST_38                                    ; $617D: $FF
    rst RST_38                                    ; $617E: $FF
    rst RST_38                                    ; $617F: $FF
    rst RST_38                                    ; $6180: $FF
    rst RST_38                                    ; $6181: $FF
    rst RST_38                                    ; $6182: $FF
    db $DD                                        ; $6183: $DD
    rst RST_38                                    ; $6184: $FF
    db $DD                                        ; $6185: $DD
    rst RST_38                                    ; $6186: $FF
    sbc h                                         ; $6187: $9C
    inc sp                                        ; $6188: $33
    stop                                          ; $6189: $10 $00
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
    add b                                         ; $6198: $80
    nop                                           ; $6199: $00
    ret nz                                        ; $619A: $C0

    add b                                         ; $619B: $80
    ldh [$FFC0], a                                ; $619C: $E0 $C0
    ldh a, [$FFE0]                                ; $619E: $F0 $E0
    ldh a, [$FFE0]                                ; $61A0: $F0 $E0
    ldh a, [$FFE0]                                ; $61A2: $F0 $E0
    ldh [$FFC0], a                                ; $61A4: $E0 $C0
    ld hl, sp-$40                                 ; $61A6: $F8 $C0
    jr nc, jr_034_61DA                            ; $61A8: $30 $30

    nop                                           ; $61AA: $00
    nop                                           ; $61AB: $00
    nop                                           ; $61AC: $00
    nop                                           ; $61AD: $00
    nop                                           ; $61AE: $00
    nop                                           ; $61AF: $00
    nop                                           ; $61B0: $00
    nop                                           ; $61B1: $00
    nop                                           ; $61B2: $00

jr_034_61B3:
    nop                                           ; $61B3: $00
    nop                                           ; $61B4: $00
    nop                                           ; $61B5: $00
    nop                                           ; $61B6: $00
    nop                                           ; $61B7: $00
    rlca                                          ; $61B8: $07
    inc bc                                        ; $61B9: $03
    rlca                                          ; $61BA: $07
    inc bc                                        ; $61BB: $03
    inc bc                                        ; $61BC: $03
    ld bc, $0103                                  ; $61BD: $01 $03 $01
    inc bc                                        ; $61C0: $03
    ld bc, $0307                                  ; $61C1: $01 $07 $03
    rrca                                          ; $61C4: $0F
    ld b, $1E                                     ; $61C5: $06 $1E
    inc c                                         ; $61C7: $0C
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
    rst RST_38                                    ; $61D8: $FF
    rst RST_38                                    ; $61D9: $FF

jr_034_61DA:
    rst RST_38                                    ; $61DA: $FF
    db $DD                                        ; $61DB: $DD
    rst RST_38                                    ; $61DC: $FF
    db $DD                                        ; $61DD: $DD
    rst RST_38                                    ; $61DE: $FF
    sbc h                                         ; $61DF: $9C
    rst RST_38                                    ; $61E0: $FF
    sbc h                                         ; $61E1: $9C
    cp [hl]                                       ; $61E2: $BE
    inc e                                         ; $61E3: $1C
    inc e                                         ; $61E4: $1C
    ld [$081C], sp                                ; $61E5: $08 $1C $08
    stop                                          ; $61E8: $10 $00
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
    nop                                           ; $61F4: $00
    nop                                           ; $61F5: $00
    nop                                           ; $61F6: $00
    nop                                           ; $61F7: $00
    nop                                           ; $61F8: $00
    nop                                           ; $61F9: $00
    inc bc                                        ; $61FA: $03
    nop                                           ; $61FB: $00
    inc c                                         ; $61FC: $0C
    inc bc                                        ; $61FD: $03
    rla                                           ; $61FE: $17
    dec bc                                        ; $61FF: $0B
    dec d                                         ; $6200: $15
    dec bc                                        ; $6201: $0B
    dec d                                         ; $6202: $15
    dec bc                                        ; $6203: $0B
    ld [de], a                                    ; $6204: $12
    rrca                                          ; $6205: $0F
    ld [$0707], sp                                ; $6206: $08 $07 $07
    nop                                           ; $6209: $00
    ld [$0807], sp                                ; $620A: $08 $07 $08
    rlca                                          ; $620D: $07
    rlca                                          ; $620E: $07
    nop                                           ; $620F: $00
    nop                                           ; $6210: $00
    nop                                           ; $6211: $00
    nop                                           ; $6212: $00
    nop                                           ; $6213: $00
    nop                                           ; $6214: $00
    nop                                           ; $6215: $00
    rra                                           ; $6216: $1F
    nop                                           ; $6217: $00
    nop                                           ; $6218: $00
    nop                                           ; $6219: $00
    ldh [rP1], a                                  ; $621A: $E0 $00
    sub b                                         ; $621C: $90
    ldh [$FFE8], a                                ; $621D: $E0 $E8
    ldh a, [$FFC8]                                ; $621F: $F0 $C8
    ldh a, [rOBP0]                                ; $6221: $F0 $48
    ldh a, [$FF28]                                ; $6223: $F0 $28
    ldh a, [rNR10]                                ; $6225: $F0 $10
    ldh [$FFF0], a                                ; $6227: $E0 $F0
    nop                                           ; $6229: $00
    jr @-$1E                                      ; $622A: $18 $E0

    inc d                                         ; $622C: $14
    ldh [$FFF4], a                                ; $622D: $E0 $F4
    nop                                           ; $622F: $00
    inc d                                         ; $6230: $14
    nop                                           ; $6231: $00
    jr nz, jr_034_6234                            ; $6232: $20 $00

jr_034_6234:
    nop                                           ; $6234: $00
    nop                                           ; $6235: $00
    ld hl, sp+$00                                 ; $6236: $F8 $00
    nop                                           ; $6238: $00
    nop                                           ; $6239: $00
    ld bc, $0300                                  ; $623A: $01 $00 $03
    ld bc, $0307                                  ; $623D: $01 $07 $03
    rlca                                          ; $6240: $07
    inc bc                                        ; $6241: $03
    rlca                                          ; $6242: $07
    inc bc                                        ; $6243: $03
    inc bc                                        ; $6244: $03
    ld bc, $010F                                  ; $6245: $01 $0F $01
    rra                                           ; $6248: $1F
    rrca                                          ; $6249: $0F
    rra                                           ; $624A: $1F
    nop                                           ; $624B: $00
    rrca                                          ; $624C: $0F
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
    add b                                         ; $6258: $80
    ld a, a                                       ; $6259: $7F
    rst RST_38                                    ; $625A: $FF
    add b                                         ; $625B: $80
    rst RST_38                                    ; $625C: $FF
    rst RST_38                                    ; $625D: $FF
    rst RST_38                                    ; $625E: $FF
    rst RST_38                                    ; $625F: $FF
    rst RST_38                                    ; $6260: $FF
    rst RST_38                                    ; $6261: $FF
    rst RST_38                                    ; $6262: $FF
    db $DD                                        ; $6263: $DD
    rst RST_38                                    ; $6264: $FF
    db $DD                                        ; $6265: $DD
    rst RST_38                                    ; $6266: $FF
    sbc h                                         ; $6267: $9C
    rst RST_38                                    ; $6268: $FF
    sbc h                                         ; $6269: $9C
    rst RST_38                                    ; $626A: $FF
    inc e                                         ; $626B: $1C
    rst RST_38                                    ; $626C: $FF
    ld [$081E], sp                                ; $626D: $08 $1E $08
    ld e, $08                                     ; $6270: $1E $08
    ld e, $08                                     ; $6272: $1E $08
    inc c                                         ; $6274: $0C
    nop                                           ; $6275: $00
    nop                                           ; $6276: $00
    nop                                           ; $6277: $00
    add b                                         ; $6278: $80
    nop                                           ; $6279: $00
    ret nz                                        ; $627A: $C0

    add b                                         ; $627B: $80
    ldh [$FFC0], a                                ; $627C: $E0 $C0
    ldh a, [$FFE0]                                ; $627E: $F0 $E0
    ldh a, [$FFE0]                                ; $6280: $F0 $E0
    ldh a, [$FFE0]                                ; $6282: $F0 $E0
    ldh [$FFC0], a                                ; $6284: $E0 $C0
    ld hl, sp-$40                                 ; $6286: $F8 $C0
    db $FC                                        ; $6288: $FC
    ld hl, sp-$04                                 ; $6289: $F8 $FC
    nop                                           ; $628B: $00
    ld hl, sp+$00                                 ; $628C: $F8 $00
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
    inc bc                                        ; $6298: $03
    ld bc, $0307                                  ; $6299: $01 $07 $03
    rlca                                          ; $629C: $07
    inc bc                                        ; $629D: $03
    rlca                                          ; $629E: $07
    inc bc                                        ; $629F: $03
    inc bc                                        ; $62A0: $03
    ld bc, $0103                                  ; $62A1: $01 $03 $01
    rrca                                          ; $62A4: $0F
    inc bc                                        ; $62A5: $03
    rra                                           ; $62A6: $1F
    ld c, $1F                                     ; $62A7: $0E $1F
    nop                                           ; $62A9: $00
    rra                                           ; $62AA: $1F
    nop                                           ; $62AB: $00
    rrca                                          ; $62AC: $0F
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
    nop                                           ; $62B7: $00
    rst RST_38                                    ; $62B8: $FF
    rst RST_38                                    ; $62B9: $FF
    rst RST_38                                    ; $62BA: $FF
    rst RST_38                                    ; $62BB: $FF
    rst RST_38                                    ; $62BC: $FF
    rst RST_38                                    ; $62BD: $FF
    rst RST_38                                    ; $62BE: $FF
    db $DD                                        ; $62BF: $DD
    rst RST_38                                    ; $62C0: $FF
    db $DD                                        ; $62C1: $DD
    rst RST_38                                    ; $62C2: $FF
    sbc h                                         ; $62C3: $9C
    rst RST_38                                    ; $62C4: $FF
    sbc h                                         ; $62C5: $9C
    rst RST_38                                    ; $62C6: $FF
    inc e                                         ; $62C7: $1C
    rst RST_38                                    ; $62C8: $FF
    inc e                                         ; $62C9: $1C
    rst RST_38                                    ; $62CA: $FF
    ld [$08FF], sp                                ; $62CB: $08 $FF $08
    ld e, $08                                     ; $62CE: $1E $08
    ld e, $08                                     ; $62D0: $1E $08
    inc c                                         ; $62D2: $0C
    nop                                           ; $62D3: $00
    nop                                           ; $62D4: $00
    nop                                           ; $62D5: $00
    nop                                           ; $62D6: $00
    nop                                           ; $62D7: $00
    ldh [$FFC0], a                                ; $62D8: $E0 $C0
    ldh a, [$FFE0]                                ; $62DA: $F0 $E0
    ldh a, [$FFE0]                                ; $62DC: $F0 $E0
    ldh a, [$FFE0]                                ; $62DE: $F0 $E0
    ldh [$FFC0], a                                ; $62E0: $E0 $C0
    ldh [$FFC0], a                                ; $62E2: $E0 $C0
    ld hl, sp-$20                                 ; $62E4: $F8 $E0
    db $FC                                        ; $62E6: $FC
    jr c, @-$02                                   ; $62E7: $38 $FC

    nop                                           ; $62E9: $00
    db $FC                                        ; $62EA: $FC
    nop                                           ; $62EB: $00
    ld hl, sp+$00                                 ; $62EC: $F8 $00
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
    rlca                                          ; $62F8: $07
    inc bc                                        ; $62F9: $03
    rlca                                          ; $62FA: $07
    inc bc                                        ; $62FB: $03
    inc bc                                        ; $62FC: $03
    ld bc, $0103                                  ; $62FD: $01 $03 $01
    inc bc                                        ; $6300: $03
    ld bc, $0307                                  ; $6301: $01 $07 $03
    rrca                                          ; $6304: $0F
    ld b, $1F                                     ; $6305: $06 $1F
    inc c                                         ; $6307: $0C
    rra                                           ; $6308: $1F
    nop                                           ; $6309: $00
    rra                                           ; $630A: $1F
    nop                                           ; $630B: $00
    rrca                                          ; $630C: $0F
    nop                                           ; $630D: $00
    nop                                           ; $630E: $00
    nop                                           ; $630F: $00
    nop                                           ; $6310: $00
    nop                                           ; $6311: $00
    nop                                           ; $6312: $00
    nop                                           ; $6313: $00
    nop                                           ; $6314: $00
    nop                                           ; $6315: $00
    nop                                           ; $6316: $00
    nop                                           ; $6317: $00
    rst RST_38                                    ; $6318: $FF
    rst RST_38                                    ; $6319: $FF
    rst RST_38                                    ; $631A: $FF
    db $DD                                        ; $631B: $DD
    rst RST_38                                    ; $631C: $FF
    db $DD                                        ; $631D: $DD
    rst RST_38                                    ; $631E: $FF
    sbc h                                         ; $631F: $9C
    rst RST_38                                    ; $6320: $FF
    sbc h                                         ; $6321: $9C
    cp [hl]                                       ; $6322: $BE
    inc e                                         ; $6323: $1C
    inc e                                         ; $6324: $1C
    ld [$08FF], sp                                ; $6325: $08 $FF $08
    rst RST_38                                    ; $6328: $FF
    ld [$08FF], sp                                ; $6329: $08 $FF $08
    rst RST_38                                    ; $632C: $FF
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
    ldh a, [$FFE0]                                ; $6338: $F0 $E0
    ldh a, [$FFE0]                                ; $633A: $F0 $E0
    ldh [$FFC0], a                                ; $633C: $E0 $C0
    ldh [$FFC0], a                                ; $633E: $E0 $C0
    ldh [$FFC0], a                                ; $6340: $E0 $C0
    ldh a, [$FF60]                                ; $6342: $F0 $60
    ld a, b                                       ; $6344: $78

jr_034_6345:
    jr nc, @-$02                                  ; $6345: $30 $FC

    jr jr_034_6345                                ; $6347: $18 $FC

    nop                                           ; $6349: $00
    db $FC                                        ; $634A: $FC
    nop                                           ; $634B: $00
    ld hl, sp+$00                                 ; $634C: $F8 $00
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
    inc bc                                        ; $6358: $03
    ld bc, $0307                                  ; $6359: $01 $07 $03
    rlca                                          ; $635C: $07
    inc bc                                        ; $635D: $03
    rlca                                          ; $635E: $07
    inc bc                                        ; $635F: $03
    inc bc                                        ; $6360: $03
    ld bc, $0103                                  ; $6361: $01 $03 $01
    rrca                                          ; $6364: $0F
    inc bc                                        ; $6365: $03
    rra                                           ; $6366: $1F
    ld c, $0C                                     ; $6367: $0E $0C
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
    rst RST_38                                    ; $6378: $FF
    rst RST_38                                    ; $6379: $FF
    rst RST_38                                    ; $637A: $FF
    rst RST_38                                    ; $637B: $FF
    rst RST_38                                    ; $637C: $FF
    rst RST_38                                    ; $637D: $FF
    rst RST_38                                    ; $637E: $FF
    db $DD                                        ; $637F: $DD
    rst RST_38                                    ; $6380: $FF
    db $DD                                        ; $6381: $DD
    rst RST_38                                    ; $6382: $FF
    sbc h                                         ; $6383: $9C
    rst RST_38                                    ; $6384: $FF
    sbc h                                         ; $6385: $9C
    cp [hl]                                       ; $6386: $BE
    inc e                                         ; $6387: $1C
    inc c                                         ; $6388: $0C
    inc c                                         ; $6389: $0C
    nop                                           ; $638A: $00
    nop                                           ; $638B: $00
    nop                                           ; $638C: $00
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
    ldh [$FFC0], a                                ; $6398: $E0 $C0
    ldh a, [$FFE0]                                ; $639A: $F0 $E0
    ldh a, [$FFE0]                                ; $639C: $F0 $E0
    ldh a, [$FFE0]                                ; $639E: $F0 $E0
    ldh [$FFC0], a                                ; $63A0: $E0 $C0
    ldh [$FFC0], a                                ; $63A2: $E0 $C0
    ld hl, sp-$20                                 ; $63A4: $F8 $E0
    db $FC                                        ; $63A6: $FC
    jr c, jr_034_63B1                             ; $63A7: $38 $08

    nop                                           ; $63A9: $00
    nop                                           ; $63AA: $00
    nop                                           ; $63AB: $00
    nop                                           ; $63AC: $00
    nop                                           ; $63AD: $00
    nop                                           ; $63AE: $00
    nop                                           ; $63AF: $00
    nop                                           ; $63B0: $00

jr_034_63B1:
    nop                                           ; $63B1: $00
    nop                                           ; $63B2: $00
    nop                                           ; $63B3: $00
    nop                                           ; $63B4: $00
    nop                                           ; $63B5: $00
    nop                                           ; $63B6: $00
    nop                                           ; $63B7: $00
    ldh a, [$FFE0]                                ; $63B8: $F0 $E0
    ldh a, [$FFE0]                                ; $63BA: $F0 $E0
    ldh [$FFC0], a                                ; $63BC: $E0 $C0
    ldh [$FFC0], a                                ; $63BE: $E0 $C0
    ldh [$FFC0], a                                ; $63C0: $E0 $C0
    ldh a, [$FF60]                                ; $63C2: $F0 $60
    ld a, b                                       ; $63C4: $78
    jr nc, jr_034_6403                            ; $63C5: $30 $3C

    jr jr_034_63D9                                ; $63C7: $18 $10

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
    nop                                           ; $63D4: $00
    nop                                           ; $63D5: $00
    nop                                           ; $63D6: $00
    nop                                           ; $63D7: $00
    nop                                           ; $63D8: $00

jr_034_63D9:
    nop                                           ; $63D9: $00
    nop                                           ; $63DA: $00
    nop                                           ; $63DB: $00
    nop                                           ; $63DC: $00
    nop                                           ; $63DD: $00
    nop                                           ; $63DE: $00
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
    inc bc                                        ; $63FA: $03
    nop                                           ; $63FB: $00
    inc c                                         ; $63FC: $0C
    inc bc                                        ; $63FD: $03
    rla                                           ; $63FE: $17
    dec bc                                        ; $63FF: $0B
    dec d                                         ; $6400: $15
    dec bc                                        ; $6401: $0B
    dec d                                         ; $6402: $15

jr_034_6403:
    dec bc                                        ; $6403: $0B
    ld [de], a                                    ; $6404: $12
    rrca                                          ; $6405: $0F
    ld [$0707], sp                                ; $6406: $08 $07 $07
    nop                                           ; $6409: $00
    ld [$0807], sp                                ; $640A: $08 $07 $08
    rlca                                          ; $640D: $07
    rlca                                          ; $640E: $07
    nop                                           ; $640F: $00
    nop                                           ; $6410: $00
    nop                                           ; $6411: $00
    nop                                           ; $6412: $00
    nop                                           ; $6413: $00
    nop                                           ; $6414: $00
    nop                                           ; $6415: $00
    rra                                           ; $6416: $1F
    nop                                           ; $6417: $00
    nop                                           ; $6418: $00
    nop                                           ; $6419: $00
    ldh [rP1], a                                  ; $641A: $E0 $00
    sub b                                         ; $641C: $90
    ldh [$FFE8], a                                ; $641D: $E0 $E8
    ldh a, [$FFC8]                                ; $641F: $F0 $C8
    ldh a, [rOBP0]                                ; $6421: $F0 $48
    ldh a, [$FF28]                                ; $6423: $F0 $28
    ldh a, [rNR10]                                ; $6425: $F0 $10
    ldh [$FFF0], a                                ; $6427: $E0 $F0
    nop                                           ; $6429: $00
    jr @-$1E                                      ; $642A: $18 $E0

    inc e                                         ; $642C: $1C
    ldh [$FFEA], a                                ; $642D: $E0 $EA
    nop                                           ; $642F: $00
    ld a, [bc]                                    ; $6430: $0A
    nop                                           ; $6431: $00
    stop                                          ; $6432: $10 $00
    nop                                           ; $6434: $00
    nop                                           ; $6435: $00
    ld hl, sp+$00                                 ; $6436: $F8 $00
    nop                                           ; $6438: $00
    nop                                           ; $6439: $00
    nop                                           ; $643A: $00
    nop                                           ; $643B: $00
    nop                                           ; $643C: $00
    nop                                           ; $643D: $00
    nop                                           ; $643E: $00
    nop                                           ; $643F: $00
    nop                                           ; $6440: $00
    nop                                           ; $6441: $00
    inc b                                         ; $6442: $04
    nop                                           ; $6443: $00
    ld c, $04                                     ; $6444: $0E $04
    rlca                                          ; $6446: $07
    ld [bc], a                                    ; $6447: $02
    ld [bc], a                                    ; $6448: $02
    ld bc, $0205                                  ; $6449: $01 $05 $02

jr_034_644C:
    add hl, bc                                    ; $644C: $09
    ld b, $09                                     ; $644D: $06 $09
    ld b, $11                                     ; $644F: $06 $11
    ld c, $12                                     ; $6451: $0E $12
    dec c                                         ; $6453: $0D
    ld [de], a                                    ; $6454: $12
    dec c                                         ; $6455: $0D
    ld [de], a                                    ; $6456: $12
    dec c                                         ; $6457: $0D
    nop                                           ; $6458: $00
    nop                                           ; $6459: $00
    nop                                           ; $645A: $00
    nop                                           ; $645B: $00
    nop                                           ; $645C: $00
    nop                                           ; $645D: $00
    nop                                           ; $645E: $00
    nop                                           ; $645F: $00
    nop                                           ; $6460: $00
    nop                                           ; $6461: $00
    jr jr_034_6464                                ; $6462: $18 $00

jr_034_6464:
    inc a                                         ; $6464: $3C
    jr jr_034_64E5                                ; $6465: $18 $7E

jr_034_6467:
    nop                                           ; $6467: $00
    add c                                         ; $6468: $81
    ld a, [hl]                                    ; $6469: $7E
    add c                                         ; $646A: $81
    ld a, [hl]                                    ; $646B: $7E
    nop                                           ; $646C: $00
    rst RST_38                                    ; $646D: $FF
    nop                                           ; $646E: $00
    rst RST_38                                    ; $646F: $FF
    nop                                           ; $6470: $00
    rst RST_38                                    ; $6471: $FF
    nop                                           ; $6472: $00
    rst RST_38                                    ; $6473: $FF
    nop                                           ; $6474: $00
    rst RST_38                                    ; $6475: $FF
    nop                                           ; $6476: $00
    rst RST_38                                    ; $6477: $FF
    nop                                           ; $6478: $00
    nop                                           ; $6479: $00
    nop                                           ; $647A: $00
    nop                                           ; $647B: $00
    nop                                           ; $647C: $00
    nop                                           ; $647D: $00
    nop                                           ; $647E: $00
    nop                                           ; $647F: $00
    nop                                           ; $6480: $00
    nop                                           ; $6481: $00
    jr nz, jr_034_6484                            ; $6482: $20 $00

jr_034_6484:
    ld [hl], b                                    ; $6484: $70
    jr nz, jr_034_6467                            ; $6485: $20 $E0

    ld b, b                                       ; $6487: $40
    ld b, b                                       ; $6488: $40
    add b                                         ; $6489: $80
    jr nz, jr_034_644C                            ; $648A: $20 $C0

    sub b                                         ; $648C: $90
    ld h, b                                       ; $648D: $60
    sub b                                         ; $648E: $90
    ld h, b                                       ; $648F: $60
    adc b                                         ; $6490: $88
    ld [hl], b                                    ; $6491: $70
    ld c, b                                       ; $6492: $48
    or b                                          ; $6493: $B0
    ld c, b                                       ; $6494: $48
    or b                                          ; $6495: $B0
    ld c, b                                       ; $6496: $48
    or b                                          ; $6497: $B0
    nop                                           ; $6498: $00
    nop                                           ; $6499: $00
    nop                                           ; $649A: $00
    nop                                           ; $649B: $00
    nop                                           ; $649C: $00
    nop                                           ; $649D: $00
    nop                                           ; $649E: $00
    nop                                           ; $649F: $00
    inc b                                         ; $64A0: $04
    nop                                           ; $64A1: $00
    ld c, $04                                     ; $64A2: $0E $04
    rlca                                          ; $64A4: $07
    ld [bc], a                                    ; $64A5: $02
    ld [bc], a                                    ; $64A6: $02
    ld bc, $0205                                  ; $64A7: $01 $05 $02

jr_034_64AA:
    add hl, bc                                    ; $64AA: $09
    ld b, $09                                     ; $64AB: $06 $09
    ld b, $11                                     ; $64AD: $06 $11
    ld c, $12                                     ; $64AF: $0E $12
    dec c                                         ; $64B1: $0D
    ld [de], a                                    ; $64B2: $12
    dec c                                         ; $64B3: $0D
    ld [de], a                                    ; $64B4: $12
    dec c                                         ; $64B5: $0D
    ld c, $01                                     ; $64B6: $0E $01
    nop                                           ; $64B8: $00
    nop                                           ; $64B9: $00
    nop                                           ; $64BA: $00
    nop                                           ; $64BB: $00
    nop                                           ; $64BC: $00
    nop                                           ; $64BD: $00
    nop                                           ; $64BE: $00
    nop                                           ; $64BF: $00
    jr jr_034_64C2                                ; $64C0: $18 $00

jr_034_64C2:
    inc a                                         ; $64C2: $3C
    jr @+$80                                      ; $64C3: $18 $7E

jr_034_64C5:
    nop                                           ; $64C5: $00
    add c                                         ; $64C6: $81
    ld a, [hl]                                    ; $64C7: $7E
    add c                                         ; $64C8: $81
    ld a, [hl]                                    ; $64C9: $7E
    nop                                           ; $64CA: $00
    rst RST_38                                    ; $64CB: $FF
    nop                                           ; $64CC: $00
    rst RST_38                                    ; $64CD: $FF
    nop                                           ; $64CE: $00
    rst RST_38                                    ; $64CF: $FF
    nop                                           ; $64D0: $00
    rst RST_38                                    ; $64D1: $FF
    nop                                           ; $64D2: $00
    rst RST_38                                    ; $64D3: $FF
    nop                                           ; $64D4: $00
    rst RST_38                                    ; $64D5: $FF
    nop                                           ; $64D6: $00
    rst RST_38                                    ; $64D7: $FF
    nop                                           ; $64D8: $00
    nop                                           ; $64D9: $00
    nop                                           ; $64DA: $00
    nop                                           ; $64DB: $00
    nop                                           ; $64DC: $00
    nop                                           ; $64DD: $00
    nop                                           ; $64DE: $00
    nop                                           ; $64DF: $00
    jr nz, jr_034_64E2                            ; $64E0: $20 $00

jr_034_64E2:
    ld [hl], b                                    ; $64E2: $70
    jr nz, jr_034_64C5                            ; $64E3: $20 $E0

jr_034_64E5:
    ld b, b                                       ; $64E5: $40
    ld b, b                                       ; $64E6: $40
    add b                                         ; $64E7: $80
    jr nz, jr_034_64AA                            ; $64E8: $20 $C0

    sub b                                         ; $64EA: $90
    ld h, b                                       ; $64EB: $60
    sub b                                         ; $64EC: $90
    ld h, b                                       ; $64ED: $60
    adc b                                         ; $64EE: $88
    ld [hl], b                                    ; $64EF: $70
    ld c, b                                       ; $64F0: $48
    or b                                          ; $64F1: $B0
    ld c, b                                       ; $64F2: $48
    or b                                          ; $64F3: $B0
    ld c, b                                       ; $64F4: $48
    or b                                          ; $64F5: $B0
    ld [hl], b                                    ; $64F6: $70
    add b                                         ; $64F7: $80
    nop                                           ; $64F8: $00
    nop                                           ; $64F9: $00
    nop                                           ; $64FA: $00
    nop                                           ; $64FB: $00
    nop                                           ; $64FC: $00
    nop                                           ; $64FD: $00
    nop                                           ; $64FE: $00
    nop                                           ; $64FF: $00
    nop                                           ; $6500: $00
    nop                                           ; $6501: $00
    inc b                                         ; $6502: $04
    nop                                           ; $6503: $00
    ld c, $04                                     ; $6504: $0E $04
    rlca                                          ; $6506: $07
    ld [bc], a                                    ; $6507: $02
    ld [bc], a                                    ; $6508: $02
    ld bc, $0205                                  ; $6509: $01 $05 $02

jr_034_650C:
    add hl, bc                                    ; $650C: $09
    ld b, $09                                     ; $650D: $06 $09
    ld b, $11                                     ; $650F: $06 $11
    ld c, $12                                     ; $6511: $0E $12
    dec c                                         ; $6513: $0D
    ld [de], a                                    ; $6514: $12
    dec c                                         ; $6515: $0D
    ld [de], a                                    ; $6516: $12
    dec c                                         ; $6517: $0D
    nop                                           ; $6518: $00
    nop                                           ; $6519: $00
    nop                                           ; $651A: $00
    nop                                           ; $651B: $00
    nop                                           ; $651C: $00
    nop                                           ; $651D: $00
    nop                                           ; $651E: $00
    nop                                           ; $651F: $00
    nop                                           ; $6520: $00
    nop                                           ; $6521: $00
    jr jr_034_6524                                ; $6522: $18 $00

jr_034_6524:
    inc a                                         ; $6524: $3C
    jr jr_034_65A5                                ; $6525: $18 $7E

jr_034_6527:
    nop                                           ; $6527: $00
    add c                                         ; $6528: $81
    ld a, [hl]                                    ; $6529: $7E
    add c                                         ; $652A: $81
    ld a, [hl]                                    ; $652B: $7E
    nop                                           ; $652C: $00
    rst RST_38                                    ; $652D: $FF
    nop                                           ; $652E: $00
    rst RST_38                                    ; $652F: $FF
    nop                                           ; $6530: $00
    rst RST_38                                    ; $6531: $FF
    nop                                           ; $6532: $00
    rst RST_38                                    ; $6533: $FF
    nop                                           ; $6534: $00
    rst RST_38                                    ; $6535: $FF
    nop                                           ; $6536: $00
    rst RST_38                                    ; $6537: $FF
    nop                                           ; $6538: $00
    nop                                           ; $6539: $00
    nop                                           ; $653A: $00
    nop                                           ; $653B: $00
    nop                                           ; $653C: $00
    nop                                           ; $653D: $00
    nop                                           ; $653E: $00
    nop                                           ; $653F: $00
    nop                                           ; $6540: $00
    nop                                           ; $6541: $00
    jr nz, jr_034_6544                            ; $6542: $20 $00

jr_034_6544:
    ld [hl], b                                    ; $6544: $70
    jr nz, jr_034_6527                            ; $6545: $20 $E0

    ld b, b                                       ; $6547: $40
    ld b, b                                       ; $6548: $40
    add b                                         ; $6549: $80
    jr nz, jr_034_650C                            ; $654A: $20 $C0

    sub b                                         ; $654C: $90
    ld h, b                                       ; $654D: $60
    sub b                                         ; $654E: $90
    ld h, b                                       ; $654F: $60
    adc b                                         ; $6550: $88
    ld [hl], b                                    ; $6551: $70
    ld c, b                                       ; $6552: $48
    or b                                          ; $6553: $B0
    ld c, b                                       ; $6554: $48
    or b                                          ; $6555: $B0
    ld c, b                                       ; $6556: $48
    or b                                          ; $6557: $B0
    ld c, $01                                     ; $6558: $0E $01
    inc bc                                        ; $655A: $03
    nop                                           ; $655B: $00
    ld bc, $0200                                  ; $655C: $01 $00 $02
    ld bc, $000F                                  ; $655F: $01 $0F $00
    ld a, [de]                                    ; $6562: $1A
    dec c                                         ; $6563: $0D
    ld [de], a                                    ; $6564: $12
    dec c                                         ; $6565: $0D
    rrca                                          ; $6566: $0F
    nop                                           ; $6567: $00
    inc b                                         ; $6568: $04
    ld [$0000], sp                                ; $6569: $08 $00 $00
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
    rst RST_38                                    ; $6579: $FF
    nop                                           ; $657A: $00
    rst RST_38                                    ; $657B: $FF
    add c                                         ; $657C: $81
    ld a, [hl]                                    ; $657D: $7E
    jp Jump_034_7E3C                              ; $657E: $C3 $3C $7E


    jp $FFFE                                      ; $6581: $C3 $FE $FF


    db $EC                                        ; $6584: $EC
    rst RST_38                                    ; $6585: $FF
    sbc c                                         ; $6586: $99
    ld h, [hl]                                    ; $6587: $66
    ld c, h                                       ; $6588: $4C
    add b                                         ; $6589: $80
    nop                                           ; $658A: $00
    nop                                           ; $658B: $00
    nop                                           ; $658C: $00
    nop                                           ; $658D: $00
    nop                                           ; $658E: $00
    nop                                           ; $658F: $00
    nop                                           ; $6590: $00
    nop                                           ; $6591: $00
    nop                                           ; $6592: $00
    nop                                           ; $6593: $00
    nop                                           ; $6594: $00
    nop                                           ; $6595: $00
    nop                                           ; $6596: $00
    nop                                           ; $6597: $00
    ld [hl], b                                    ; $6598: $70
    add b                                         ; $6599: $80
    ld b, b                                       ; $659A: $40
    add b                                         ; $659B: $80
    add b                                         ; $659C: $80
    nop                                           ; $659D: $00
    ld b, b                                       ; $659E: $40
    add b                                         ; $659F: $80
    ldh [rP1], a                                  ; $65A0: $E0 $00
    ret nc                                        ; $65A2: $D0

    ld h, b                                       ; $65A3: $60
    sub b                                         ; $65A4: $90

jr_034_65A5:
    ld h, b                                       ; $65A5: $60
    ldh [rP1], a                                  ; $65A6: $E0 $00
    ret nz                                        ; $65A8: $C0

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
    ld c, $01                                     ; $65B8: $0E $01
    inc bc                                        ; $65BA: $03
    nop                                           ; $65BB: $00
    ld bc, $0200                                  ; $65BC: $01 $00 $02
    ld bc, $0007                                  ; $65BF: $01 $07 $00
    dec c                                         ; $65C2: $0D
    ld b, $09                                     ; $65C3: $06 $09
    ld b, $07                                     ; $65C5: $06 $07
    nop                                           ; $65C7: $00
    ld [$0004], sp                                ; $65C8: $08 $04 $00
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
    rst RST_38                                    ; $65D9: $FF
    nop                                           ; $65DA: $00
    rst RST_38                                    ; $65DB: $FF
    add c                                         ; $65DC: $81
    ld a, [hl]                                    ; $65DD: $7E
    jp Jump_034_7E3C                              ; $65DE: $C3 $3C $7E


    jp $FF7F                                      ; $65E1: $C3 $7F $FF


    ld l, [hl]                                    ; $65E4: $6E
    rst RST_38                                    ; $65E5: $FF
    sbc c                                         ; $65E6: $99
    ld h, [hl]                                    ; $65E7: $66
    ld c, h                                       ; $65E8: $4C
    add b                                         ; $65E9: $80
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
    rlca                                          ; $65F8: $07
    nop                                           ; $65F9: $00
    dec e                                         ; $65FA: $1D
    rlca                                          ; $65FB: $07
    dec [hl]                                      ; $65FC: $35
    rra                                           ; $65FD: $1F
    ld d, l                                       ; $65FE: $55
    ccf                                           ; $65FF: $3F
    ld c, e                                       ; $6600: $4B
    ccf                                           ; $6601: $3F
    dec hl                                        ; $6602: $2B
    rra                                           ; $6603: $1F
    dec d                                         ; $6604: $15
    rrca                                          ; $6605: $0F
    dec bc                                        ; $6606: $0B
    rlca                                          ; $6607: $07
    dec b                                         ; $6608: $05
    inc bc                                        ; $6609: $03
    ld [bc], a                                    ; $660A: $02
    ld bc, $0001                                  ; $660B: $01 $01 $00
    ld bc, $0100                                  ; $660E: $01 $00 $01
    nop                                           ; $6611: $00
    ld bc, $0000                                  ; $6612: $01 $00 $00
    nop                                           ; $6615: $00
    ld a, a                                       ; $6616: $7F
    nop                                           ; $6617: $00
    ldh [rP1], a                                  ; $6618: $E0 $00
    ld e, b                                       ; $661A: $58
    ldh [rRP], a                                  ; $661B: $E0 $56
    ld hl, sp+$57                                 ; $661D: $F8 $57
    db $FC                                        ; $661F: $FC
    cpl                                           ; $6620: $2F
    db $FC                                        ; $6621: $FC
    ld l, $F8                                     ; $6622: $2E $F8
    ld e, h                                       ; $6624: $5C
    ldh a, [$FF38]                                ; $6625: $F0 $38
    ldh [rSVBK], a                                ; $6627: $E0 $70
    ret nz                                        ; $6629: $C0

    ldh [$FF80], a                                ; $662A: $E0 $80
    ret nz                                        ; $662C: $C0

    nop                                           ; $662D: $00
    ret nz                                        ; $662E: $C0

    nop                                           ; $662F: $00
    ret nz                                        ; $6630: $C0

    nop                                           ; $6631: $00
    ret nz                                        ; $6632: $C0

    nop                                           ; $6633: $00
    nop                                           ; $6634: $00
    nop                                           ; $6635: $00
    cp $00                                        ; $6636: $FE $00
    ld c, $01                                     ; $6638: $0E $01
    inc bc                                        ; $663A: $03
    nop                                           ; $663B: $00
    ld bc, $0200                                  ; $663C: $01 $00 $02
    ld bc, $000F                                  ; $663F: $01 $0F $00
    ld a, [de]                                    ; $6642: $1A
    dec c                                         ; $6643: $0D
    ld [de], a                                    ; $6644: $12
    dec c                                         ; $6645: $0D
    rrca                                          ; $6646: $0F
    nop                                           ; $6647: $00
    rla                                           ; $6648: $17
    ld [$000F], sp                                ; $6649: $08 $0F $00
    inc bc                                        ; $664C: $03
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
    rst RST_38                                    ; $6659: $FF
    nop                                           ; $665A: $00
    rst RST_38                                    ; $665B: $FF
    add c                                         ; $665C: $81
    ld a, [hl]                                    ; $665D: $7E
    jp Jump_034_7E3C                              ; $665E: $C3 $3C $7E


    jp $FFFE                                      ; $6661: $C3 $FE $FF


    db $EC                                        ; $6664: $EC
    rst RST_38                                    ; $6665: $FF
    sbc c                                         ; $6666: $99
    ld h, [hl]                                    ; $6667: $66
    ld a, [hl]                                    ; $6668: $7E
    add c                                         ; $6669: $81
    ld hl, sp+$07                                 ; $666A: $F8 $07
    ld hl, sp+$07                                 ; $666C: $F8 $07
    rlca                                          ; $666E: $07
    nop                                           ; $666F: $00
    nop                                           ; $6670: $00
    nop                                           ; $6671: $00
    nop                                           ; $6672: $00
    nop                                           ; $6673: $00
    nop                                           ; $6674: $00
    nop                                           ; $6675: $00
    nop                                           ; $6676: $00
    nop                                           ; $6677: $00
    ld [hl], b                                    ; $6678: $70
    add b                                         ; $6679: $80
    ld b, b                                       ; $667A: $40

jr_034_667B:
    add b                                         ; $667B: $80
    add b                                         ; $667C: $80
    nop                                           ; $667D: $00
    ld b, b                                       ; $667E: $40
    add b                                         ; $667F: $80
    ldh [rP1], a                                  ; $6680: $E0 $00
    ret nc                                        ; $6682: $D0

    ld h, b                                       ; $6683: $60
    sub b                                         ; $6684: $90
    ld h, b                                       ; $6685: $60
    ldh [rP1], a                                  ; $6686: $E0 $00
    ret nc                                        ; $6688: $D0

    jr nz, jr_034_667B                            ; $6689: $20 $F0

    nop                                           ; $668B: $00
    ldh [rP1], a                                  ; $668C: $E0 $00
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
    inc bc                                        ; $6698: $03
    nop                                           ; $6699: $00
    ld bc, $0200                                  ; $669A: $01 $00 $02
    ld bc, $0007                                  ; $669D: $01 $07 $00
    dec c                                         ; $66A0: $0D
    ld b, $09                                     ; $66A1: $06 $09
    ld b, $07                                     ; $66A3: $06 $07
    nop                                           ; $66A5: $00
    dec bc                                        ; $66A6: $0B
    inc b                                         ; $66A7: $04
    rrca                                          ; $66A8: $0F
    nop                                           ; $66A9: $00
    rrca                                          ; $66AA: $0F
    nop                                           ; $66AB: $00
    rlca                                          ; $66AC: $07
    nop                                           ; $66AD: $00
    nop                                           ; $66AE: $00
    nop                                           ; $66AF: $00
    nop                                           ; $66B0: $00

jr_034_66B1:
    nop                                           ; $66B1: $00
    nop                                           ; $66B2: $00

jr_034_66B3:
    nop                                           ; $66B3: $00
    nop                                           ; $66B4: $00
    nop                                           ; $66B5: $00
    nop                                           ; $66B6: $00
    nop                                           ; $66B7: $00
    nop                                           ; $66B8: $00
    rst RST_38                                    ; $66B9: $FF
    add c                                         ; $66BA: $81
    ld a, [hl]                                    ; $66BB: $7E
    jp Jump_034_7E3C                              ; $66BC: $C3 $3C $7E


    jp $FF7E                                      ; $66BF: $C3 $7E $FF


    ld l, h                                       ; $66C2: $6C
    rst RST_38                                    ; $66C3: $FF
    sbc c                                         ; $66C4: $99
    ld h, [hl]                                    ; $66C5: $66
    ld a, [hl]                                    ; $66C6: $7E
    add c                                         ; $66C7: $81
    jr jr_034_66B1                                ; $66C8: $18 $E7

    jr jr_034_66B3                                ; $66CA: $18 $E7

    rst RST_38                                    ; $66CC: $FF
    nop                                           ; $66CD: $00
    nop                                           ; $66CE: $00
    nop                                           ; $66CF: $00
    nop                                           ; $66D0: $00
    nop                                           ; $66D1: $00
    nop                                           ; $66D2: $00
    nop                                           ; $66D3: $00
    nop                                           ; $66D4: $00
    nop                                           ; $66D5: $00
    nop                                           ; $66D6: $00
    nop                                           ; $66D7: $00
    ld b, b                                       ; $66D8: $40

jr_034_66D9:
    add b                                         ; $66D9: $80
    add b                                         ; $66DA: $80
    nop                                           ; $66DB: $00
    ld b, b                                       ; $66DC: $40
    add b                                         ; $66DD: $80
    ldh [rP1], a                                  ; $66DE: $E0 $00
    ret nc                                        ; $66E0: $D0

    ld h, b                                       ; $66E1: $60
    sub b                                         ; $66E2: $90
    ld h, b                                       ; $66E3: $60
    ldh [rP1], a                                  ; $66E4: $E0 $00
    ret nc                                        ; $66E6: $D0

    jr nz, jr_034_66D9                            ; $66E7: $20 $F0

    nop                                           ; $66E9: $00
    ldh a, [rP1]                                  ; $66EA: $F0 $00
    ldh [rP1], a                                  ; $66EC: $E0 $00
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
    ld c, $01                                     ; $66F8: $0E $01
    inc bc                                        ; $66FA: $03
    nop                                           ; $66FB: $00
    ld bc, $0200                                  ; $66FC: $01 $00 $02
    ld bc, $0007                                  ; $66FF: $01 $07 $00
    dec c                                         ; $6702: $0D
    ld b, $09                                     ; $6703: $06 $09
    ld b, $07                                     ; $6705: $06 $07
    nop                                           ; $6707: $00
    dec bc                                        ; $6708: $0B
    inc b                                         ; $6709: $04
    rrca                                          ; $670A: $0F
    nop                                           ; $670B: $00
    rlca                                          ; $670C: $07
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
    rst RST_38                                    ; $6719: $FF
    nop                                           ; $671A: $00
    rst RST_38                                    ; $671B: $FF
    add c                                         ; $671C: $81
    ld a, [hl]                                    ; $671D: $7E
    jp Jump_034_7E3C                              ; $671E: $C3 $3C $7E


    jp $FF7F                                      ; $6721: $C3 $7F $FF


    ld l, [hl]                                    ; $6724: $6E
    rst RST_38                                    ; $6725: $FF
    sbc c                                         ; $6726: $99
    ld h, [hl]                                    ; $6727: $66
    ld a, [hl]                                    ; $6728: $7E
    add c                                         ; $6729: $81
    rra                                           ; $672A: $1F
    ldh [$FF1F], a                                ; $672B: $E0 $1F
    ldh [$FFE0], a                                ; $672D: $E0 $E0
    nop                                           ; $672F: $00
    nop                                           ; $6730: $00
    nop                                           ; $6731: $00
    nop                                           ; $6732: $00
    nop                                           ; $6733: $00
    nop                                           ; $6734: $00
    nop                                           ; $6735: $00
    nop                                           ; $6736: $00
    nop                                           ; $6737: $00
    ld [hl], b                                    ; $6738: $70
    add b                                         ; $6739: $80
    ld b, b                                       ; $673A: $40
    add b                                         ; $673B: $80
    add b                                         ; $673C: $80
    nop                                           ; $673D: $00
    ld b, b                                       ; $673E: $40
    add b                                         ; $673F: $80
    ldh a, [rP1]                                  ; $6740: $F0 $00
    ld l, b                                       ; $6742: $68
    or b                                          ; $6743: $B0
    ld c, b                                       ; $6744: $48
    or b                                          ; $6745: $B0
    ldh a, [rP1]                                  ; $6746: $F0 $00
    add sp, $10                                   ; $6748: $E8 $10
    ldh a, [rP1]                                  ; $674A: $F0 $00
    ret nz                                        ; $674C: $C0

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
    inc bc                                        ; $6758: $03
    nop                                           ; $6759: $00
    ld bc, $0200                                  ; $675A: $01 $00 $02
    ld bc, $0007                                  ; $675D: $01 $07 $00
    dec c                                         ; $6760: $0D
    ld b, $09                                     ; $6761: $06 $09
    ld b, $07                                     ; $6763: $06 $07
    nop                                           ; $6765: $00
    dec bc                                        ; $6766: $0B
    inc b                                         ; $6767: $04
    ld bc, $0000                                  ; $6768: $01 $00 $00
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
    rst RST_38                                    ; $6779: $FF
    add c                                         ; $677A: $81
    ld a, [hl]                                    ; $677B: $7E
    jp Jump_034_7E3C                              ; $677C: $C3 $3C $7E


    jp $FF7E                                      ; $677F: $C3 $7E $FF


    ld l, h                                       ; $6782: $6C
    rst RST_38                                    ; $6783: $FF
    sbc c                                         ; $6784: $99
    ld h, [hl]                                    ; $6785: $66
    ld a, [hl]                                    ; $6786: $7E
    add c                                         ; $6787: $81
    db $10                                        ; $6788: $10
    inc hl                                        ; $6789: $23
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
    ld b, b                                       ; $6798: $40
    add b                                         ; $6799: $80
    add b                                         ; $679A: $80
    nop                                           ; $679B: $00
    ld b, b                                       ; $679C: $40
    add b                                         ; $679D: $80
    ldh [rP1], a                                  ; $679E: $E0 $00
    ret nc                                        ; $67A0: $D0

    ld h, b                                       ; $67A1: $60
    sub b                                         ; $67A2: $90
    ld h, b                                       ; $67A3: $60
    ldh [rP1], a                                  ; $67A4: $E0 $00
    ret nc                                        ; $67A6: $D0

    jr nz, jr_034_67D9                            ; $67A7: $20 $30

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
    nop                                           ; $67B6: $00
    nop                                           ; $67B7: $00
    ld [hl], b                                    ; $67B8: $70
    add b                                         ; $67B9: $80
    ld b, b                                       ; $67BA: $40
    add b                                         ; $67BB: $80
    add b                                         ; $67BC: $80
    nop                                           ; $67BD: $00
    ld b, b                                       ; $67BE: $40
    add b                                         ; $67BF: $80
    ldh a, [rP1]                                  ; $67C0: $F0 $00
    ld l, b                                       ; $67C2: $68
    or b                                          ; $67C3: $B0
    ld c, b                                       ; $67C4: $48
    or b                                          ; $67C5: $B0
    ldh a, [rP1]                                  ; $67C6: $F0 $00
    adc b                                         ; $67C8: $88
    nop                                           ; $67C9: $00
    nop                                           ; $67CA: $00
    nop                                           ; $67CB: $00
    nop                                           ; $67CC: $00
    nop                                           ; $67CD: $00
    nop                                           ; $67CE: $00
    nop                                           ; $67CF: $00
    nop                                           ; $67D0: $00
    nop                                           ; $67D1: $00
    nop                                           ; $67D2: $00
    nop                                           ; $67D3: $00
    nop                                           ; $67D4: $00
    nop                                           ; $67D5: $00
    nop                                           ; $67D6: $00
    nop                                           ; $67D7: $00
    inc a                                         ; $67D8: $3C

jr_034_67D9:
    nop                                           ; $67D9: $00
    ld d, a                                       ; $67DA: $57
    inc a                                         ; $67DB: $3C
    ld d, a                                       ; $67DC: $57
    inc a                                         ; $67DD: $3C
    ld d, a                                       ; $67DE: $57
    inc a                                         ; $67DF: $3C
    ld d, a                                       ; $67E0: $57
    inc a                                         ; $67E1: $3C
    ld d, a                                       ; $67E2: $57
    inc a                                         ; $67E3: $3C
    ld [hl], $18                                  ; $67E4: $36 $18
    ld [hl], $18                                  ; $67E6: $36 $18
    ld [hl], $18                                  ; $67E8: $36 $18
    ld [hl], $18                                  ; $67EA: $36 $18
    inc e                                         ; $67EC: $1C
    nop                                           ; $67ED: $00
    inc e                                         ; $67EE: $1C
    nop                                           ; $67EF: $00
    inc e                                         ; $67F0: $1C
    nop                                           ; $67F1: $00
    inc e                                         ; $67F2: $1C
    nop                                           ; $67F3: $00

jr_034_67F4:
    nop                                           ; $67F4: $00
    nop                                           ; $67F5: $00
    ld a, [hl]                                    ; $67F6: $7E
    nop                                           ; $67F7: $00
    rlca                                          ; $67F8: $07
    nop                                           ; $67F9: $00
    dec c                                         ; $67FA: $0D
    rlca                                          ; $67FB: $07
    dec d                                         ; $67FC: $15
    rrca                                          ; $67FD: $0F
    dec d                                         ; $67FE: $15
    rrca                                          ; $67FF: $0F
    dec bc                                        ; $6800: $0B
    rlca                                          ; $6801: $07
    dec bc                                        ; $6802: $0B
    rlca                                          ; $6803: $07
    rlca                                          ; $6804: $07
    inc bc                                        ; $6805: $03
    dec b                                         ; $6806: $05
    inc bc                                        ; $6807: $03
    inc bc                                        ; $6808: $03
    ld bc, $0103                                  ; $6809: $01 $03 $01
    ld bc, $0100                                  ; $680C: $01 $00 $01
    nop                                           ; $680F: $00
    ld bc, $0100                                  ; $6810: $01 $00 $01
    nop                                           ; $6813: $00
    nop                                           ; $6814: $00
    nop                                           ; $6815: $00
    rrca                                          ; $6816: $0F
    nop                                           ; $6817: $00
    ldh [rP1], a                                  ; $6818: $E0 $00
    ld e, b                                       ; $681A: $58
    ldh [$FF5C], a                                ; $681B: $E0 $5C
    ldh a, [$FF5C]                                ; $681D: $F0 $5C
    ldh a, [$FF38]                                ; $681F: $F0 $38
    ldh [$FF38], a                                ; $6821: $E0 $38
    ldh [$FF30], a                                ; $6823: $E0 $30
    ret nz                                        ; $6825: $C0

    ld [hl], b                                    ; $6826: $70
    ret nz                                        ; $6827: $C0

    ld h, b                                       ; $6828: $60
    add b                                         ; $6829: $80
    ld h, b                                       ; $682A: $60
    add b                                         ; $682B: $80
    ret nz                                        ; $682C: $C0

    nop                                           ; $682D: $00
    ret nz                                        ; $682E: $C0

    nop                                           ; $682F: $00
    ret nz                                        ; $6830: $C0

    nop                                           ; $6831: $00
    ret nz                                        ; $6832: $C0

    nop                                           ; $6833: $00
    nop                                           ; $6834: $00
    nop                                           ; $6835: $00
    ldh a, [rP1]                                  ; $6836: $F0 $00
    nop                                           ; $6838: $00
    nop                                           ; $6839: $00
    nop                                           ; $683A: $00
    nop                                           ; $683B: $00
    nop                                           ; $683C: $00
    nop                                           ; $683D: $00
    nop                                           ; $683E: $00
    nop                                           ; $683F: $00
    nop                                           ; $6840: $00
    nop                                           ; $6841: $00
    nop                                           ; $6842: $00
    nop                                           ; $6843: $00
    nop                                           ; $6844: $00
    nop                                           ; $6845: $00
    nop                                           ; $6846: $00
    nop                                           ; $6847: $00
    nop                                           ; $6848: $00
    nop                                           ; $6849: $00
    nop                                           ; $684A: $00
    nop                                           ; $684B: $00
    nop                                           ; $684C: $00
    nop                                           ; $684D: $00
    nop                                           ; $684E: $00
    nop                                           ; $684F: $00
    ld bc, $0200                                  ; $6850: $01 $00 $02
    ld bc, $0205                                  ; $6853: $01 $05 $02

jr_034_6856:
    dec bc                                        ; $6856: $0B
    inc b                                         ; $6857: $04
    nop                                           ; $6858: $00
    nop                                           ; $6859: $00
    nop                                           ; $685A: $00
    nop                                           ; $685B: $00
    jr jr_034_685E                                ; $685C: $18 $00

jr_034_685E:
    inc a                                         ; $685E: $3C
    nop                                           ; $685F: $00
    inc a                                         ; $6860: $3C
    nop                                           ; $6861: $00
    halt                                          ; $6862: $76
    jr jr_034_68DF                                ; $6863: $18 $7A

    inc a                                         ; $6865: $3C
    ld a, d                                       ; $6866: $7A
    inc a                                         ; $6867: $3C
    ld a, d                                       ; $6868: $7A
    inc a                                         ; $6869: $3C
    ld [hl], d                                    ; $686A: $72
    inc a                                         ; $686B: $3C
    rst RST_20                                    ; $686C: $E7
    jr @+$01                                      ; $686D: $18 $FF

    nop                                           ; $686F: $00
    rst RST_20                                    ; $6870: $E7
    jr jr_034_67F4                                ; $6871: $18 $81

    ld a, [hl]                                    ; $6873: $7E
    add c                                         ; $6874: $81
    ld a, [hl]                                    ; $6875: $7E
    rst RST_38                                    ; $6876: $FF
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
    nop                                           ; $688C: $00
    nop                                           ; $688D: $00
    nop                                           ; $688E: $00
    nop                                           ; $688F: $00
    add b                                         ; $6890: $80
    nop                                           ; $6891: $00
    ld b, b                                       ; $6892: $40
    add b                                         ; $6893: $80
    and b                                         ; $6894: $A0
    ld b, b                                       ; $6895: $40
    ret nc                                        ; $6896: $D0

    jr nz, jr_034_6899                            ; $6897: $20 $00

jr_034_6899:
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
    ld bc, $0300                                  ; $68B2: $01 $00 $03
    nop                                           ; $68B5: $00
    dec b                                         ; $68B6: $05
    ld [bc], a                                    ; $68B7: $02
    nop                                           ; $68B8: $00
    nop                                           ; $68B9: $00
    nop                                           ; $68BA: $00

jr_034_68BB:
    nop                                           ; $68BB: $00
    jr jr_034_68BE                                ; $68BC: $18 $00

jr_034_68BE:
    inc a                                         ; $68BE: $3C
    nop                                           ; $68BF: $00
    inc a                                         ; $68C0: $3C
    nop                                           ; $68C1: $00
    ld l, [hl]                                    ; $68C2: $6E
    jr nc, jr_034_68BB                            ; $68C3: $30 $F6

    ld a, b                                       ; $68C5: $78
    or $78                                        ; $68C6: $F6 $78
    or $78                                        ; $68C8: $F6 $78
    and $78                                       ; $68CA: $E6 $78
    rst RST_08                                    ; $68CC: $CF
    jr nc, @+$01                                  ; $68CD: $30 $FF

    nop                                           ; $68CF: $00
    rst RST_08                                    ; $68D0: $CF
    jr nc, jr_034_6856                            ; $68D1: $30 $83

    ld a, h                                       ; $68D3: $7C
    add e                                         ; $68D4: $83
    ld a, h                                       ; $68D5: $7C
    rst RST_38                                    ; $68D6: $FF
    nop                                           ; $68D7: $00
    nop                                           ; $68D8: $00
    nop                                           ; $68D9: $00
    nop                                           ; $68DA: $00
    nop                                           ; $68DB: $00
    nop                                           ; $68DC: $00
    nop                                           ; $68DD: $00
    nop                                           ; $68DE: $00

jr_034_68DF:
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
    nop                                           ; $68E9: $00
    nop                                           ; $68EA: $00
    nop                                           ; $68EB: $00
    nop                                           ; $68EC: $00
    nop                                           ; $68ED: $00
    nop                                           ; $68EE: $00
    nop                                           ; $68EF: $00
    add b                                         ; $68F0: $80
    nop                                           ; $68F1: $00
    ld b, b                                       ; $68F2: $40
    add b                                         ; $68F3: $80
    and b                                         ; $68F4: $A0
    ld b, b                                       ; $68F5: $40
    sub b                                         ; $68F6: $90
    ld h, b                                       ; $68F7: $60
    nop                                           ; $68F8: $00
    nop                                           ; $68F9: $00
    nop                                           ; $68FA: $00
    nop                                           ; $68FB: $00
    nop                                           ; $68FC: $00
    nop                                           ; $68FD: $00
    nop                                           ; $68FE: $00
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
    nop                                           ; $690E: $00
    nop                                           ; $690F: $00
    ld bc, $0200                                  ; $6910: $01 $00 $02
    ld bc, $0205                                  ; $6913: $01 $05 $02
    add hl, bc                                    ; $6916: $09
    ld b, $00                                     ; $6917: $06 $00
    nop                                           ; $6919: $00
    nop                                           ; $691A: $00
    nop                                           ; $691B: $00
    jr jr_034_691E                                ; $691C: $18 $00

jr_034_691E:
    inc a                                         ; $691E: $3C
    nop                                           ; $691F: $00
    inc a                                         ; $6920: $3C
    nop                                           ; $6921: $00
    halt                                          ; $6922: $76
    inc c                                         ; $6923: $0C
    ld l, a                                       ; $6924: $6F
    ld e, $6F                                     ; $6925: $1E $6F
    ld e, $6F                                     ; $6927: $1E $6F
    ld e, $67                                     ; $6929: $1E $67
    ld e, $F3                                     ; $692B: $1E $F3
    inc c                                         ; $692D: $0C
    rst RST_38                                    ; $692E: $FF
    nop                                           ; $692F: $00
    di                                            ; $6930: $F3
    inc c                                         ; $6931: $0C
    pop bc                                        ; $6932: $C1
    ld a, $C1                                     ; $6933: $3E $C1
    ld a, $FF                                     ; $6935: $3E $FF
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
    add b                                         ; $6952: $80
    nop                                           ; $6953: $00
    ret nz                                        ; $6954: $C0

    nop                                           ; $6955: $00
    and b                                         ; $6956: $A0
    ld b, b                                       ; $6957: $40
    nop                                           ; $6958: $00
    nop                                           ; $6959: $00
    nop                                           ; $695A: $00
    nop                                           ; $695B: $00
    nop                                           ; $695C: $00
    nop                                           ; $695D: $00
    nop                                           ; $695E: $00
    nop                                           ; $695F: $00
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
    nop                                           ; $6976: $00
    nop                                           ; $6977: $00
    nop                                           ; $6978: $00
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
    ret nz                                        ; $6994: $C0

    nop                                           ; $6995: $00
    ret nz                                        ; $6996: $C0

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
    nop                                           ; $69A8: $00
    nop                                           ; $69A9: $00
    nop                                           ; $69AA: $00
    nop                                           ; $69AB: $00
    nop                                           ; $69AC: $00
    nop                                           ; $69AD: $00
    nop                                           ; $69AE: $00
    nop                                           ; $69AF: $00
    nop                                           ; $69B0: $00
    nop                                           ; $69B1: $00
    nop                                           ; $69B2: $00
    nop                                           ; $69B3: $00
    nop                                           ; $69B4: $00
    nop                                           ; $69B5: $00
    nop                                           ; $69B6: $00
    nop                                           ; $69B7: $00
    jr jr_034_69BA                                ; $69B8: $18 $00

jr_034_69BA:
    inc a                                         ; $69BA: $3C
    jr jr_034_69F9                                ; $69BB: $18 $3C

    jr jr_034_69FB                                ; $69BD: $18 $3C

    nop                                           ; $69BF: $00
    inc a                                         ; $69C0: $3C
    nop                                           ; $69C1: $00
    inc a                                         ; $69C2: $3C
    jr jr_034_6A01                                ; $69C3: $18 $3C

    jr jr_034_6A45                                ; $69C5: $18 $7E

    nop                                           ; $69C7: $00
    ld a, [hl]                                    ; $69C8: $7E
    inc c                                         ; $69C9: $0C
    ld a, [hl]                                    ; $69CA: $7E
    inc c                                         ; $69CB: $0C
    ld a, [hl]                                    ; $69CC: $7E
    nop                                           ; $69CD: $00
    nop                                           ; $69CE: $00
    inc a                                         ; $69CF: $3C
    nop                                           ; $69D0: $00
    inc a                                         ; $69D1: $3C
    nop                                           ; $69D2: $00
    inc a                                         ; $69D3: $3C
    nop                                           ; $69D4: $00
    jr jr_034_69D7                                ; $69D5: $18 $00

jr_034_69D7:
    jr jr_034_69F1                                ; $69D7: $18 $18

    nop                                           ; $69D9: $00
    inc a                                         ; $69DA: $3C
    jr @+$3E                                      ; $69DB: $18 $3C

    jr jr_034_6A1B                                ; $69DD: $18 $3C

    nop                                           ; $69DF: $00
    inc a                                         ; $69E0: $3C
    nop                                           ; $69E1: $00
    inc a                                         ; $69E2: $3C
    jr jr_034_6A21                                ; $69E3: $18 $3C

    jr jr_034_6A65                                ; $69E5: $18 $7E

    nop                                           ; $69E7: $00
    ld a, [hl]                                    ; $69E8: $7E
    inc c                                         ; $69E9: $0C
    ld a, [hl]                                    ; $69EA: $7E
    inc c                                         ; $69EB: $0C
    ld a, [hl]                                    ; $69EC: $7E
    nop                                           ; $69ED: $00
    nop                                           ; $69EE: $00
    inc a                                         ; $69EF: $3C
    nop                                           ; $69F0: $00

jr_034_69F1:
    inc a                                         ; $69F1: $3C
    nop                                           ; $69F2: $00
    inc a                                         ; $69F3: $3C
    nop                                           ; $69F4: $00
    jr jr_034_69F7                                ; $69F5: $18 $00

jr_034_69F7:
    jr jr_034_6A11                                ; $69F7: $18 $18

jr_034_69F9:
    nop                                           ; $69F9: $00
    inc a                                         ; $69FA: $3C

jr_034_69FB:
    jr jr_034_6A39                                ; $69FB: $18 $3C

    jr jr_034_6A3B                                ; $69FD: $18 $3C

    nop                                           ; $69FF: $00
    inc a                                         ; $6A00: $3C

jr_034_6A01:
    nop                                           ; $6A01: $00
    inc a                                         ; $6A02: $3C
    jr jr_034_6A41                                ; $6A03: $18 $3C

    jr jr_034_6A85                                ; $6A05: $18 $7E

    nop                                           ; $6A07: $00
    ld a, [hl]                                    ; $6A08: $7E
    jr nc, @+$80                                  ; $6A09: $30 $7E

    jr nc, @+$80                                  ; $6A0B: $30 $7E

    nop                                           ; $6A0D: $00
    nop                                           ; $6A0E: $00
    jr jr_034_6A11                                ; $6A0F: $18 $00

jr_034_6A11:
    nop                                           ; $6A11: $00
    nop                                           ; $6A12: $00
    nop                                           ; $6A13: $00
    nop                                           ; $6A14: $00
    nop                                           ; $6A15: $00
    nop                                           ; $6A16: $00
    nop                                           ; $6A17: $00
    jr jr_034_6A1A                                ; $6A18: $18 $00

jr_034_6A1A:
    inc a                                         ; $6A1A: $3C

jr_034_6A1B:
    jr jr_034_6A59                                ; $6A1B: $18 $3C

    jr jr_034_6A5B                                ; $6A1D: $18 $3C

    nop                                           ; $6A1F: $00
    inc a                                         ; $6A20: $3C

jr_034_6A21:
    nop                                           ; $6A21: $00
    inc a                                         ; $6A22: $3C
    jr jr_034_6A61                                ; $6A23: $18 $3C

    jr jr_034_6AA5                                ; $6A25: $18 $7E

    nop                                           ; $6A27: $00
    ld a, [hl]                                    ; $6A28: $7E
    jr nc, @+$80                                  ; $6A29: $30 $7E

    jr nc, jr_034_6AAB                            ; $6A2B: $30 $7E

    nop                                           ; $6A2D: $00
    nop                                           ; $6A2E: $00
    jr jr_034_6A31                                ; $6A2F: $18 $00

jr_034_6A31:
    nop                                           ; $6A31: $00
    nop                                           ; $6A32: $00
    nop                                           ; $6A33: $00
    nop                                           ; $6A34: $00
    nop                                           ; $6A35: $00
    nop                                           ; $6A36: $00
    nop                                           ; $6A37: $00
    rrca                                          ; $6A38: $0F

jr_034_6A39:
    inc b                                         ; $6A39: $04
    rrca                                          ; $6A3A: $0F

jr_034_6A3B:
    inc b                                         ; $6A3B: $04
    rrca                                          ; $6A3C: $0F
    inc b                                         ; $6A3D: $04
    rrca                                          ; $6A3E: $0F
    inc b                                         ; $6A3F: $04
    rrca                                          ; $6A40: $0F

jr_034_6A41:
    nop                                           ; $6A41: $00
    ld e, $01                                     ; $6A42: $1E $01
    dec a                                         ; $6A44: $3D

jr_034_6A45:
    ld [bc], a                                    ; $6A45: $02
    ld a, e                                       ; $6A46: $7B
    inc b                                         ; $6A47: $04
    ld a, b                                       ; $6A48: $78
    rlca                                          ; $6A49: $07
    ccf                                           ; $6A4A: $3F
    ld b, $0F                                     ; $6A4B: $06 $0F
    rlca                                          ; $6A4D: $07
    rrca                                          ; $6A4E: $0F
    rlca                                          ; $6A4F: $07
    inc b                                         ; $6A50: $04
    inc bc                                        ; $6A51: $03
    inc bc                                        ; $6A52: $03
    nop                                           ; $6A53: $00
    nop                                           ; $6A54: $00
    nop                                           ; $6A55: $00
    nop                                           ; $6A56: $00
    nop                                           ; $6A57: $00
    and l                                         ; $6A58: $A5

jr_034_6A59:
    ld a, [hl]                                    ; $6A59: $7E
    rst RST_20                                    ; $6A5A: $E7

jr_034_6A5B:
    ld a, [hl]                                    ; $6A5B: $7E
    jp $817E                                      ; $6A5C: $C3 $7E $81


    ld a, [hl]                                    ; $6A5F: $7E
    ld e, d                                       ; $6A60: $5A

jr_034_6A61:
    and l                                         ; $6A61: $A5
    db $DB                                        ; $6A62: $DB
    inc h                                         ; $6A63: $24
    db $DB                                        ; $6A64: $DB

jr_034_6A65:
    inc h                                         ; $6A65: $24
    add c                                         ; $6A66: $81
    ld a, [hl]                                    ; $6A67: $7E
    ld b, d                                       ; $6A68: $42
    cp l                                          ; $6A69: $BD
    add c                                         ; $6A6A: $81
    nop                                           ; $6A6B: $00
    add c                                         ; $6A6C: $81
    nop                                           ; $6A6D: $00
    add c                                         ; $6A6E: $81
    nop                                           ; $6A6F: $00
    add c                                         ; $6A70: $81
    nop                                           ; $6A71: $00
    nop                                           ; $6A72: $00
    nop                                           ; $6A73: $00
    nop                                           ; $6A74: $00
    nop                                           ; $6A75: $00
    nop                                           ; $6A76: $00
    nop                                           ; $6A77: $00
    ldh a, [rNR41]                                ; $6A78: $F0 $20
    ldh a, [rNR41]                                ; $6A7A: $F0 $20
    ldh a, [rNR41]                                ; $6A7C: $F0 $20
    ldh a, [rNR41]                                ; $6A7E: $F0 $20
    ldh a, [rP1]                                  ; $6A80: $F0 $00
    ld a, b                                       ; $6A82: $78
    add b                                         ; $6A83: $80
    cp h                                          ; $6A84: $BC

jr_034_6A85:
    ld b, b                                       ; $6A85: $40
    sbc $20                                       ; $6A86: $DE $20
    ld e, $E0                                     ; $6A88: $1E $E0
    call c, $D060                                 ; $6A8A: $DC $60 $D0
    ldh [$FFD0], a                                ; $6A8D: $E0 $D0
    ldh [rNR41], a                                ; $6A8F: $E0 $20
    ret nz                                        ; $6A91: $C0

    ret nz                                        ; $6A92: $C0

    nop                                           ; $6A93: $00
    nop                                           ; $6A94: $00
    nop                                           ; $6A95: $00
    nop                                           ; $6A96: $00
    nop                                           ; $6A97: $00
    rlca                                          ; $6A98: $07
    ld [bc], a                                    ; $6A99: $02
    rlca                                          ; $6A9A: $07
    ld [bc], a                                    ; $6A9B: $02
    rlca                                          ; $6A9C: $07
    ld [bc], a                                    ; $6A9D: $02
    rlca                                          ; $6A9E: $07
    ld [bc], a                                    ; $6A9F: $02
    rlca                                          ; $6AA0: $07
    nop                                           ; $6AA1: $00
    inc c                                         ; $6AA2: $0C
    inc bc                                        ; $6AA3: $03
    dec de                                        ; $6AA4: $1B

jr_034_6AA5:
    inc b                                         ; $6AA5: $04
    scf                                           ; $6AA6: $37
    ld [$0F30], sp                                ; $6AA7: $08 $30 $0F
    rra                                           ; $6AAA: $1F

jr_034_6AAB:
    ld [bc], a                                    ; $6AAB: $02
    rlca                                          ; $6AAC: $07
    inc bc                                        ; $6AAD: $03
    rlca                                          ; $6AAE: $07
    inc bc                                        ; $6AAF: $03
    ld [bc], a                                    ; $6AB0: $02
    ld bc, $0001                                  ; $6AB1: $01 $01 $00
    nop                                           ; $6AB4: $00
    nop                                           ; $6AB5: $00
    nop                                           ; $6AB6: $00
    nop                                           ; $6AB7: $00
    bit 7, h                                      ; $6AB8: $CB $7C
    rst RST_08                                    ; $6ABA: $CF
    ld a, h                                       ; $6ABB: $7C
    rst RST_00                                    ; $6ABC: $C7
    ld a, h                                       ; $6ABD: $7C
    add e                                         ; $6ABE: $83
    ld a, h                                       ; $6ABF: $7C
    dec [hl]                                      ; $6AC0: $35
    jp z, Jump_034_4AB5                           ; $6AC1: $CA $B5 $4A

    or [hl]                                       ; $6AC4: $B6
    ld c, c                                       ; $6AC5: $49
    add d                                         ; $6AC6: $82
    ld a, l                                       ; $6AC7: $7D
    ld b, b                                       ; $6AC8: $40
    cp a                                          ; $6AC9: $BF
    add e                                         ; $6ACA: $83
    nop                                           ; $6ACB: $00
    add e                                         ; $6ACC: $83
    ld bc, $0183                                  ; $6ACD: $01 $83 $01
    add d                                         ; $6AD0: $82
    ld bc, $0081                                  ; $6AD1: $01 $81 $00
    nop                                           ; $6AD4: $00
    nop                                           ; $6AD5: $00
    nop                                           ; $6AD6: $00
    nop                                           ; $6AD7: $00
    sub b                                         ; $6AD8: $90
    ld h, b                                       ; $6AD9: $60
    ldh a, [$FF60]                                ; $6ADA: $F0 $60
    ldh a, [$FF60]                                ; $6ADC: $F0 $60
    ldh a, [rNR41]                                ; $6ADE: $F0 $20
    ldh a, [rP1]                                  ; $6AE0: $F0 $00
    ldh a, [rP1]                                  ; $6AE2: $F0 $00
    ld hl, sp+$00                                 ; $6AE4: $F8 $00
    db $FC                                        ; $6AE6: $FC
    nop                                           ; $6AE7: $00
    db $FC                                        ; $6AE8: $FC
    nop                                           ; $6AE9: $00
    cp b                                          ; $6AEA: $B8
    ret nz                                        ; $6AEB: $C0

    and b                                         ; $6AEC: $A0
    ret nz                                        ; $6AED: $C0

    and b                                         ; $6AEE: $A0
    ret nz                                        ; $6AEF: $C0

    ld b, b                                       ; $6AF0: $40
    add b                                         ; $6AF1: $80
    add b                                         ; $6AF2: $80
    nop                                           ; $6AF3: $00
    nop                                           ; $6AF4: $00
    nop                                           ; $6AF5: $00
    nop                                           ; $6AF6: $00
    nop                                           ; $6AF7: $00
    add hl, bc                                    ; $6AF8: $09
    ld b, $0F                                     ; $6AF9: $06 $0F
    ld b, $0F                                     ; $6AFB: $06 $0F
    ld b, $0F                                     ; $6AFD: $06 $0F
    inc b                                         ; $6AFF: $04
    rrca                                          ; $6B00: $0F
    nop                                           ; $6B01: $00
    rrca                                          ; $6B02: $0F
    nop                                           ; $6B03: $00

jr_034_6B04:
    rra                                           ; $6B04: $1F
    nop                                           ; $6B05: $00
    ccf                                           ; $6B06: $3F
    nop                                           ; $6B07: $00
    ccf                                           ; $6B08: $3F
    nop                                           ; $6B09: $00
    dec e                                         ; $6B0A: $1D
    inc bc                                        ; $6B0B: $03
    dec b                                         ; $6B0C: $05
    inc bc                                        ; $6B0D: $03
    dec b                                         ; $6B0E: $05
    inc bc                                        ; $6B0F: $03
    ld [bc], a                                    ; $6B10: $02
    ld bc, $0001                                  ; $6B11: $01 $01 $00
    nop                                           ; $6B14: $00
    nop                                           ; $6B15: $00
    nop                                           ; $6B16: $00
    nop                                           ; $6B17: $00
    db $D3                                        ; $6B18: $D3
    ld a, $F3                                     ; $6B19: $3E $F3
    ld a, $E3                                     ; $6B1B: $3E $E3
    ld a, $C1                                     ; $6B1D: $3E $C1
    ld a, $AC                                     ; $6B1F: $3E $AC
    ld d, e                                       ; $6B21: $53
    xor l                                         ; $6B22: $AD
    ld d, d                                       ; $6B23: $52
    ld l, l                                       ; $6B24: $6D
    sub d                                         ; $6B25: $92
    ld b, c                                       ; $6B26: $41
    cp [hl]                                       ; $6B27: $BE
    ld [bc], a                                    ; $6B28: $02
    db $FD                                        ; $6B29: $FD
    pop bc                                        ; $6B2A: $C1
    nop                                           ; $6B2B: $00
    pop bc                                        ; $6B2C: $C1
    add b                                         ; $6B2D: $80
    pop bc                                        ; $6B2E: $C1
    add b                                         ; $6B2F: $80
    ld b, c                                       ; $6B30: $41
    add b                                         ; $6B31: $80
    add c                                         ; $6B32: $81

jr_034_6B33:
    nop                                           ; $6B33: $00
    nop                                           ; $6B34: $00
    nop                                           ; $6B35: $00
    nop                                           ; $6B36: $00
    nop                                           ; $6B37: $00
    ldh [rLCDC], a                                ; $6B38: $E0 $40
    ldh [rLCDC], a                                ; $6B3A: $E0 $40
    ldh [rLCDC], a                                ; $6B3C: $E0 $40
    ldh [rLCDC], a                                ; $6B3E: $E0 $40
    ldh [rP1], a                                  ; $6B40: $E0 $00
    jr nc, jr_034_6B04                            ; $6B42: $30 $C0

    ret c                                         ; $6B44: $D8

    jr nz, jr_034_6B33                            ; $6B45: $20 $EC

    db $10                                        ; $6B47: $10
    inc c                                         ; $6B48: $0C
    ldh a, [$FFF8]                                ; $6B49: $F0 $F8
    ld b, b                                       ; $6B4B: $40
    ldh [$FFC0], a                                ; $6B4C: $E0 $C0
    ldh [$FFC0], a                                ; $6B4E: $E0 $C0
    ld b, b                                       ; $6B50: $40
    add b                                         ; $6B51: $80
    add b                                         ; $6B52: $80
    nop                                           ; $6B53: $00
    nop                                           ; $6B54: $00
    nop                                           ; $6B55: $00
    nop                                           ; $6B56: $00
    nop                                           ; $6B57: $00
    nop                                           ; $6B58: $00
    nop                                           ; $6B59: $00
    ld bc, $0100                                  ; $6B5A: $01 $00 $01
    nop                                           ; $6B5D: $00
    ld bc, $0300                                  ; $6B5E: $01 $00 $03
    nop                                           ; $6B61: $00
    inc bc                                        ; $6B62: $03
    nop                                           ; $6B63: $00
    rlca                                          ; $6B64: $07
    nop                                           ; $6B65: $00
    rrca                                          ; $6B66: $0F
    nop                                           ; $6B67: $00
    rrca                                          ; $6B68: $0F
    nop                                           ; $6B69: $00
    rrca                                          ; $6B6A: $0F
    nop                                           ; $6B6B: $00
    rrca                                          ; $6B6C: $0F
    nop                                           ; $6B6D: $00
    rra                                           ; $6B6E: $1F
    nop                                           ; $6B6F: $00
    ccf                                           ; $6B70: $3F
    nop                                           ; $6B71: $00
    ccf                                           ; $6B72: $3F
    nop                                           ; $6B73: $00
    ld b, $00                                     ; $6B74: $06 $00
    ld [bc], a                                    ; $6B76: $02
    nop                                           ; $6B77: $00
    ret nz                                        ; $6B78: $C0

    nop                                           ; $6B79: $00
    ldh [rP1], a                                  ; $6B7A: $E0 $00
    ldh [rP1], a                                  ; $6B7C: $E0 $00
    ldh [rP1], a                                  ; $6B7E: $E0 $00
    ldh a, [rP1]                                  ; $6B80: $F0 $00
    ldh a, [rP1]                                  ; $6B82: $F0 $00
    ld hl, sp+$00                                 ; $6B84: $F8 $00
    db $FC                                        ; $6B86: $FC
    nop                                           ; $6B87: $00
    db $FC                                        ; $6B88: $FC
    nop                                           ; $6B89: $00
    db $FC                                        ; $6B8A: $FC
    nop                                           ; $6B8B: $00
    db $FC                                        ; $6B8C: $FC
    nop                                           ; $6B8D: $00
    cp $00                                        ; $6B8E: $FE $00
    rst RST_38                                    ; $6B90: $FF
    nop                                           ; $6B91: $00
    rst RST_38                                    ; $6B92: $FF
    nop                                           ; $6B93: $00
    jr jr_034_6B96                                ; $6B94: $18 $00

jr_034_6B96:
    stop                                          ; $6B96: $10 $00
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
    jr jr_034_6BBA                                ; $6BB8: $18 $00

jr_034_6BBA:
    inc a                                         ; $6BBA: $3C
    jr @+$3E                                      ; $6BBB: $18 $3C

    jr jr_034_6BFB                                ; $6BBD: $18 $3C

    nop                                           ; $6BBF: $00
    inc a                                         ; $6BC0: $3C
    nop                                           ; $6BC1: $00
    inc a                                         ; $6BC2: $3C
    jr jr_034_6C01                                ; $6BC3: $18 $3C

    jr jr_034_6C45                                ; $6BC5: $18 $7E

    nop                                           ; $6BC7: $00
    ld a, [hl]                                    ; $6BC8: $7E
    inc h                                         ; $6BC9: $24
    ld a, [hl]                                    ; $6BCA: $7E
    inc h                                         ; $6BCB: $24
    ld a, [hl]                                    ; $6BCC: $7E
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
    jr jr_034_6BDA                                ; $6BD8: $18 $00

jr_034_6BDA:
    inc a                                         ; $6BDA: $3C
    jr @+$3E                                      ; $6BDB: $18 $3C

    jr jr_034_6C1B                                ; $6BDD: $18 $3C

    nop                                           ; $6BDF: $00
    inc a                                         ; $6BE0: $3C
    nop                                           ; $6BE1: $00
    inc a                                         ; $6BE2: $3C
    jr jr_034_6C21                                ; $6BE3: $18 $3C

    jr jr_034_6C65                                ; $6BE5: $18 $7E

    nop                                           ; $6BE7: $00
    ld a, [hl]                                    ; $6BE8: $7E
    inc h                                         ; $6BE9: $24
    ld a, [hl]                                    ; $6BEA: $7E
    inc h                                         ; $6BEB: $24
    ld a, [hl]                                    ; $6BEC: $7E
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
    jr jr_034_6BFA                                ; $6BF8: $18 $00

jr_034_6BFA:
    inc a                                         ; $6BFA: $3C

jr_034_6BFB:
    jr jr_034_6C39                                ; $6BFB: $18 $3C

    jr jr_034_6C3B                                ; $6BFD: $18 $3C

    nop                                           ; $6BFF: $00
    inc a                                         ; $6C00: $3C

jr_034_6C01:
    nop                                           ; $6C01: $00
    inc a                                         ; $6C02: $3C
    jr jr_034_6C41                                ; $6C03: $18 $3C

    jr jr_034_6C85                                ; $6C05: $18 $7E

    nop                                           ; $6C07: $00
    ld a, [hl]                                    ; $6C08: $7E
    jr jr_034_6C89                                ; $6C09: $18 $7E

    jr jr_034_6C8B                                ; $6C0B: $18 $7E

    nop                                           ; $6C0D: $00
    nop                                           ; $6C0E: $00
    inc a                                         ; $6C0F: $3C
    nop                                           ; $6C10: $00
    jr jr_034_6C13                                ; $6C11: $18 $00

jr_034_6C13:
    jr jr_034_6C15                                ; $6C13: $18 $00

jr_034_6C15:
    nop                                           ; $6C15: $00
    nop                                           ; $6C16: $00
    nop                                           ; $6C17: $00
    jr jr_034_6C1A                                ; $6C18: $18 $00

jr_034_6C1A:
    inc a                                         ; $6C1A: $3C

jr_034_6C1B:
    jr jr_034_6C59                                ; $6C1B: $18 $3C

    jr jr_034_6C5B                                ; $6C1D: $18 $3C

    nop                                           ; $6C1F: $00
    inc a                                         ; $6C20: $3C

jr_034_6C21:
    nop                                           ; $6C21: $00
    inc a                                         ; $6C22: $3C
    jr jr_034_6C61                                ; $6C23: $18 $3C

    jr jr_034_6CA5                                ; $6C25: $18 $7E

    nop                                           ; $6C27: $00
    ld a, [hl]                                    ; $6C28: $7E
    jr jr_034_6CA9                                ; $6C29: $18 $7E

    jr jr_034_6CAB                                ; $6C2B: $18 $7E

    nop                                           ; $6C2D: $00
    nop                                           ; $6C2E: $00
    inc a                                         ; $6C2F: $3C
    nop                                           ; $6C30: $00
    jr jr_034_6C33                                ; $6C31: $18 $00

jr_034_6C33:
    jr jr_034_6C35                                ; $6C33: $18 $00

jr_034_6C35:
    nop                                           ; $6C35: $00
    nop                                           ; $6C36: $00
    nop                                           ; $6C37: $00
    nop                                           ; $6C38: $00

jr_034_6C39:
    nop                                           ; $6C39: $00
    nop                                           ; $6C3A: $00

jr_034_6C3B:
    nop                                           ; $6C3B: $00
    nop                                           ; $6C3C: $00
    nop                                           ; $6C3D: $00
    nop                                           ; $6C3E: $00
    nop                                           ; $6C3F: $00
    nop                                           ; $6C40: $00

jr_034_6C41:
    nop                                           ; $6C41: $00
    nop                                           ; $6C42: $00
    nop                                           ; $6C43: $00
    nop                                           ; $6C44: $00

jr_034_6C45:
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

jr_034_6C59:
    nop                                           ; $6C59: $00
    nop                                           ; $6C5A: $00

jr_034_6C5B:
    nop                                           ; $6C5B: $00
    nop                                           ; $6C5C: $00
    nop                                           ; $6C5D: $00
    nop                                           ; $6C5E: $00
    nop                                           ; $6C5F: $00
    nop                                           ; $6C60: $00

jr_034_6C61:
    nop                                           ; $6C61: $00
    nop                                           ; $6C62: $00
    nop                                           ; $6C63: $00
    nop                                           ; $6C64: $00

jr_034_6C65:
    nop                                           ; $6C65: $00
    nop                                           ; $6C66: $00
    nop                                           ; $6C67: $00
    nop                                           ; $6C68: $00
    nop                                           ; $6C69: $00
    nop                                           ; $6C6A: $00
    nop                                           ; $6C6B: $00
    nop                                           ; $6C6C: $00
    nop                                           ; $6C6D: $00
    nop                                           ; $6C6E: $00
    nop                                           ; $6C6F: $00
    nop                                           ; $6C70: $00
    nop                                           ; $6C71: $00
    nop                                           ; $6C72: $00
    nop                                           ; $6C73: $00
    nop                                           ; $6C74: $00
    nop                                           ; $6C75: $00
    nop                                           ; $6C76: $00
    nop                                           ; $6C77: $00
    nop                                           ; $6C78: $00
    nop                                           ; $6C79: $00
    nop                                           ; $6C7A: $00
    nop                                           ; $6C7B: $00
    nop                                           ; $6C7C: $00
    nop                                           ; $6C7D: $00
    nop                                           ; $6C7E: $00
    nop                                           ; $6C7F: $00
    nop                                           ; $6C80: $00
    nop                                           ; $6C81: $00
    nop                                           ; $6C82: $00
    nop                                           ; $6C83: $00
    nop                                           ; $6C84: $00

jr_034_6C85:
    nop                                           ; $6C85: $00
    nop                                           ; $6C86: $00
    nop                                           ; $6C87: $00
    nop                                           ; $6C88: $00

jr_034_6C89:
    nop                                           ; $6C89: $00
    nop                                           ; $6C8A: $00

jr_034_6C8B:
    nop                                           ; $6C8B: $00
    nop                                           ; $6C8C: $00
    nop                                           ; $6C8D: $00
    nop                                           ; $6C8E: $00
    nop                                           ; $6C8F: $00
    jr jr_034_6C92                                ; $6C90: $18 $00

jr_034_6C92:
    inc a                                         ; $6C92: $3C
    nop                                           ; $6C93: $00
    ld a, [hl]                                    ; $6C94: $7E
    inc h                                         ; $6C95: $24
    rst RST_38                                    ; $6C96: $FF
    ld h, [hl]                                    ; $6C97: $66
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

jr_034_6CA5:
    nop                                           ; $6CA5: $00
    nop                                           ; $6CA6: $00
    nop                                           ; $6CA7: $00
    nop                                           ; $6CA8: $00

jr_034_6CA9:
    nop                                           ; $6CA9: $00
    nop                                           ; $6CAA: $00

jr_034_6CAB:
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
    nop                                           ; $6CB8: $00
    nop                                           ; $6CB9: $00
    nop                                           ; $6CBA: $00
    nop                                           ; $6CBB: $00
    nop                                           ; $6CBC: $00
    nop                                           ; $6CBD: $00
    nop                                           ; $6CBE: $00
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
    nop                                           ; $6CD8: $00
    nop                                           ; $6CD9: $00
    nop                                           ; $6CDA: $00
    nop                                           ; $6CDB: $00
    nop                                           ; $6CDC: $00
    nop                                           ; $6CDD: $00
    nop                                           ; $6CDE: $00
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
    nop                                           ; $6CF8: $00
    nop                                           ; $6CF9: $00
    nop                                           ; $6CFA: $00
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
    nop                                           ; $6D08: $00
    nop                                           ; $6D09: $00
    nop                                           ; $6D0A: $00
    nop                                           ; $6D0B: $00
    nop                                           ; $6D0C: $00
    nop                                           ; $6D0D: $00
    nop                                           ; $6D0E: $00
    nop                                           ; $6D0F: $00
    inc bc                                        ; $6D10: $03
    nop                                           ; $6D11: $00
    rlca                                          ; $6D12: $07
    nop                                           ; $6D13: $00
    rrca                                          ; $6D14: $0F
    dec b                                         ; $6D15: $05
    rra                                           ; $6D16: $1F
    ld [$0000], sp                                ; $6D17: $08 $00 $00
    nop                                           ; $6D1A: $00
    nop                                           ; $6D1B: $00
    nop                                           ; $6D1C: $00
    nop                                           ; $6D1D: $00
    nop                                           ; $6D1E: $00
    nop                                           ; $6D1F: $00
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
    add b                                         ; $6D32: $80
    nop                                           ; $6D33: $00
    ret nz                                        ; $6D34: $C0

    add b                                         ; $6D35: $80
    ldh [$FFC0], a                                ; $6D36: $E0 $C0
    nop                                           ; $6D38: $00
    nop                                           ; $6D39: $00
    nop                                           ; $6D3A: $00
    nop                                           ; $6D3B: $00
    nop                                           ; $6D3C: $00
    nop                                           ; $6D3D: $00
    nop                                           ; $6D3E: $00
    nop                                           ; $6D3F: $00
    nop                                           ; $6D40: $00
    nop                                           ; $6D41: $00
    nop                                           ; $6D42: $00
    nop                                           ; $6D43: $00
    nop                                           ; $6D44: $00
    nop                                           ; $6D45: $00
    nop                                           ; $6D46: $00
    nop                                           ; $6D47: $00
    nop                                           ; $6D48: $00
    nop                                           ; $6D49: $00
    nop                                           ; $6D4A: $00
    nop                                           ; $6D4B: $00
    nop                                           ; $6D4C: $00
    nop                                           ; $6D4D: $00
    nop                                           ; $6D4E: $00
    nop                                           ; $6D4F: $00
    nop                                           ; $6D50: $00
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
    nop                                           ; $6D60: $00
    nop                                           ; $6D61: $00
    nop                                           ; $6D62: $00
    nop                                           ; $6D63: $00
    nop                                           ; $6D64: $00
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
    nop                                           ; $6D83: $00
    nop                                           ; $6D84: $00
    nop                                           ; $6D85: $00
    nop                                           ; $6D86: $00
    nop                                           ; $6D87: $00
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
    ld bc, $0300                                  ; $6D92: $01 $00 $03
    ld bc, $0307                                  ; $6D95: $01 $07 $03
    nop                                           ; $6D98: $00
    nop                                           ; $6D99: $00
    nop                                           ; $6D9A: $00
    nop                                           ; $6D9B: $00
    nop                                           ; $6D9C: $00
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
    nop                                           ; $6DAC: $00
    nop                                           ; $6DAD: $00
    nop                                           ; $6DAE: $00
    nop                                           ; $6DAF: $00
    ret nz                                        ; $6DB0: $C0

    nop                                           ; $6DB1: $00
    ldh [rP1], a                                  ; $6DB2: $E0 $00
    ldh a, [$FFA0]                                ; $6DB4: $F0 $A0
    ld hl, sp+$10                                 ; $6DB6: $F8 $10
    inc bc                                        ; $6DB8: $03
    nop                                           ; $6DB9: $00
    rlca                                          ; $6DBA: $07
    inc bc                                        ; $6DBB: $03
    rrca                                          ; $6DBC: $0F
    rlca                                          ; $6DBD: $07
    ld [$0807], sp                                ; $6DBE: $08 $07 $08
    rlca                                          ; $6DC1: $07
    ld [$0F07], sp                                ; $6DC2: $08 $07 $0F
    rlca                                          ; $6DC5: $07
    rrca                                          ; $6DC6: $0F
    inc b                                         ; $6DC7: $04
    rra                                           ; $6DC8: $1F
    ld [bc], a                                    ; $6DC9: $02
    rra                                           ; $6DCA: $1F
    ld [bc], a                                    ; $6DCB: $02
    rra                                           ; $6DCC: $1F
    ld [bc], a                                    ; $6DCD: $02
    rra                                           ; $6DCE: $1F
    ld a, [bc]                                    ; $6DCF: $0A
    ld e, $00                                     ; $6DD0: $1E $00
    nop                                           ; $6DD2: $00
    nop                                           ; $6DD3: $00
    nop                                           ; $6DD4: $00
    nop                                           ; $6DD5: $00
    nop                                           ; $6DD6: $00
    nop                                           ; $6DD7: $00
    ret nz                                        ; $6DD8: $C0

    nop                                           ; $6DD9: $00
    ldh [$FFC0], a                                ; $6DDA: $E0 $C0
    ldh a, [$FFE0]                                ; $6DDC: $F0 $E0
    db $10                                        ; $6DDE: $10
    ldh [rNR10], a                                ; $6DDF: $E0 $10
    ldh [rNR10], a                                ; $6DE1: $E0 $10
    ldh [$FFF0], a                                ; $6DE3: $E0 $F0
    ldh [$FFF0], a                                ; $6DE5: $E0 $F0
    add b                                         ; $6DE7: $80
    ld hl, sp-$50                                 ; $6DE8: $F8 $B0
    ld hl, sp-$50                                 ; $6DEA: $F8 $B0
    ld hl, sp+$30                                 ; $6DEC: $F8 $30
    ld a, b                                       ; $6DEE: $78
    db $10                                        ; $6DEF: $10
    ld a, b                                       ; $6DF0: $78
    nop                                           ; $6DF1: $00
    nop                                           ; $6DF2: $00
    nop                                           ; $6DF3: $00
    nop                                           ; $6DF4: $00
    nop                                           ; $6DF5: $00
    nop                                           ; $6DF6: $00
    nop                                           ; $6DF7: $00
    inc bc                                        ; $6DF8: $03
    nop                                           ; $6DF9: $00
    rlca                                          ; $6DFA: $07
    inc bc                                        ; $6DFB: $03
    rrca                                          ; $6DFC: $0F
    rlca                                          ; $6DFD: $07
    ld [$0807], sp                                ; $6DFE: $08 $07 $08
    rlca                                          ; $6E01: $07
    ld [$0F07], sp                                ; $6E02: $08 $07 $0F
    rlca                                          ; $6E05: $07
    rrca                                          ; $6E06: $0F
    ld bc, $0D1F                                  ; $6E07: $01 $1F $0D
    rra                                           ; $6E0A: $1F
    dec c                                         ; $6E0B: $0D
    rra                                           ; $6E0C: $1F
    inc c                                         ; $6E0D: $0C
    inc e                                         ; $6E0E: $1C
    dec bc                                        ; $6E0F: $0B
    jr @+$05                                      ; $6E10: $18 $03

    nop                                           ; $6E12: $00
    ld bc, $0100                                  ; $6E13: $01 $00 $01
    nop                                           ; $6E16: $00
    nop                                           ; $6E17: $00
    ret nz                                        ; $6E18: $C0

    nop                                           ; $6E19: $00
    ldh [$FFC0], a                                ; $6E1A: $E0 $C0
    ldh a, [$FFE0]                                ; $6E1C: $F0 $E0
    db $10                                        ; $6E1E: $10
    ldh [rNR10], a                                ; $6E1F: $E0 $10

jr_034_6E21:
    ldh [rNR10], a                                ; $6E21: $E0 $10
    ldh [$FFF0], a                                ; $6E23: $E0 $F0
    ldh [$FFF0], a                                ; $6E25: $E0 $F0
    jr nz, jr_034_6E21                            ; $6E27: $20 $F8

    ld b, b                                       ; $6E29: $40
    ld hl, sp+$40                                 ; $6E2A: $F8 $40
    ld hl, sp+$40                                 ; $6E2C: $F8 $40
    ld hl, sp+$50                                 ; $6E2E: $F8 $50
    ld a, b                                       ; $6E30: $78
    add b                                         ; $6E31: $80
    nop                                           ; $6E32: $00
    add b                                         ; $6E33: $80
    nop                                           ; $6E34: $00
    add b                                         ; $6E35: $80
    nop                                           ; $6E36: $00
    nop                                           ; $6E37: $00
    nop                                           ; $6E38: $00
    nop                                           ; $6E39: $00
    nop                                           ; $6E3A: $00
    nop                                           ; $6E3B: $00
    nop                                           ; $6E3C: $00
    nop                                           ; $6E3D: $00
    nop                                           ; $6E3E: $00
    nop                                           ; $6E3F: $00
    nop                                           ; $6E40: $00
    nop                                           ; $6E41: $00
    nop                                           ; $6E42: $00
    nop                                           ; $6E43: $00
    nop                                           ; $6E44: $00
    nop                                           ; $6E45: $00
    nop                                           ; $6E46: $00
    nop                                           ; $6E47: $00
    ld bc, $0200                                  ; $6E48: $01 $00 $02
    ld bc, $0205                                  ; $6E4B: $01 $05 $02
    ld a, [bc]                                    ; $6E4E: $0A
    dec b                                         ; $6E4F: $05
    rla                                           ; $6E50: $17
    ld [$102F], sp                                ; $6E51: $08 $2F $10
    rra                                           ; $6E54: $1F
    nop                                           ; $6E55: $00
    ld c, $00                                     ; $6E56: $0E $00
    ld bc, $0300                                  ; $6E58: $01 $00 $03
    nop                                           ; $6E5B: $00
    dec b                                         ; $6E5C: $05
    ld [bc], a                                    ; $6E5D: $02
    dec bc                                        ; $6E5E: $0B
    inc b                                         ; $6E5F: $04
    inc d                                         ; $6E60: $14
    dec bc                                        ; $6E61: $0B
    inc l                                         ; $6E62: $2C
    rla                                           ; $6E63: $17
    ld e, l                                       ; $6E64: $5D
    ld h, $BD                                     ; $6E65: $26 $BD
    ld d, e                                       ; $6E67: $53
    ld a, l                                       ; $6E68: $7D
    sub d                                         ; $6E69: $92
    ld sp, hl                                     ; $6E6A: $F9
    ld b, [hl]                                    ; $6E6B: $46
    push af                                       ; $6E6C: $F5
    ld c, d                                       ; $6E6D: $4A
    db $FD                                        ; $6E6E: $FD
    ld [bc], a                                    ; $6E6F: $02
    ld c, h                                       ; $6E70: $4C
    add e                                         ; $6E71: $83
    add a                                         ; $6E72: $87
    nop                                           ; $6E73: $00
    inc bc                                        ; $6E74: $03
    nop                                           ; $6E75: $00
    ld bc, $FF00                                  ; $6E76: $01 $00 $FF
    ld b, d                                       ; $6E79: $42
    rst RST_38                                    ; $6E7A: $FF
    nop                                           ; $6E7B: $00
    rst RST_38                                    ; $6E7C: $FF
    inc h                                         ; $6E7D: $24
    rst RST_38                                    ; $6E7E: $FF
    nop                                           ; $6E7F: $00
    inc a                                         ; $6E80: $3C
    jp $DB24                                      ; $6E81: $C3 $24 $DB


    and l                                         ; $6E84: $A5
    ld e, d                                       ; $6E85: $5A
    jp $997E                                      ; $6E86: $C3 $7E $99


    rst RST_20                                    ; $6E89: $E7
    cp l                                          ; $6E8A: $BD
    ld b, d                                       ; $6E8B: $42
    and l                                         ; $6E8C: $A5
    ld e, d                                       ; $6E8D: $5A
    cp l                                          ; $6E8E: $BD
    ld b, d                                       ; $6E8F: $42
    inc a                                         ; $6E90: $3C
    jp Jump_000_00C3                              ; $6E91: $C3 $C3 $00


    jp $8100                                      ; $6E94: $C3 $00 $81


    nop                                           ; $6E97: $00
    add b                                         ; $6E98: $80
    nop                                           ; $6E99: $00
    ret nz                                        ; $6E9A: $C0

    nop                                           ; $6E9B: $00
    and b                                         ; $6E9C: $A0
    ld b, b                                       ; $6E9D: $40
    ret nc                                        ; $6E9E: $D0

    jr nz, jr_034_6EC9                            ; $6E9F: $20 $28

    ret nc                                        ; $6EA1: $D0

    inc [hl]                                      ; $6EA2: $34
    add sp, -$46                                  ; $6EA3: $E8 $BA
    ld h, h                                       ; $6EA5: $64
    cp l                                          ; $6EA6: $BD
    jp z, Jump_034_49BE                           ; $6EA7: $CA $BE $49

    sbc a                                         ; $6EAA: $9F
    ld h, d                                       ; $6EAB: $62
    xor a                                         ; $6EAC: $AF
    ld d, d                                       ; $6EAD: $52
    cp a                                          ; $6EAE: $BF
    ld b, b                                       ; $6EAF: $40
    ld [hl-], a                                   ; $6EB0: $32
    pop bc                                        ; $6EB1: $C1
    pop hl                                        ; $6EB2: $E1
    nop                                           ; $6EB3: $00
    ret nz                                        ; $6EB4: $C0

    nop                                           ; $6EB5: $00
    add b                                         ; $6EB6: $80
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
    add b                                         ; $6EC8: $80

jr_034_6EC9:
    nop                                           ; $6EC9: $00
    ld b, b                                       ; $6ECA: $40
    add b                                         ; $6ECB: $80
    and b                                         ; $6ECC: $A0
    ld b, b                                       ; $6ECD: $40
    ld d, b                                       ; $6ECE: $50
    and b                                         ; $6ECF: $A0
    add sp, $10                                   ; $6ED0: $E8 $10
    db $F4                                        ; $6ED2: $F4
    ld [$00F8], sp                                ; $6ED3: $08 $F8 $00
    ld [hl], b                                    ; $6ED6: $70
    nop                                           ; $6ED7: $00
    nop                                           ; $6ED8: $00
    nop                                           ; $6ED9: $00
    nop                                           ; $6EDA: $00
    nop                                           ; $6EDB: $00
    nop                                           ; $6EDC: $00
    nop                                           ; $6EDD: $00
    nop                                           ; $6EDE: $00
    nop                                           ; $6EDF: $00
    nop                                           ; $6EE0: $00
    nop                                           ; $6EE1: $00
    ld bc, $0200                                  ; $6EE2: $01 $00 $02
    ld bc, $0305                                  ; $6EE5: $01 $05 $03
    dec b                                         ; $6EE8: $05
    inc bc                                        ; $6EE9: $03
    dec bc                                        ; $6EEA: $0B
    ld b, $17                                     ; $6EEB: $06 $17
    ld a, [bc]                                    ; $6EED: $0A
    dec hl                                        ; $6EEE: $2B
    inc d                                         ; $6EEF: $14
    dec l                                         ; $6EF0: $2D
    ld [de], a                                    ; $6EF1: $12
    ld e, [hl]                                    ; $6EF2: $5E
    jr nz, jr_034_6F31                            ; $6EF3: $20 $3C

    nop                                           ; $6EF5: $00
    jr jr_034_6EF8                                ; $6EF6: $18 $00

jr_034_6EF8:
    rra                                           ; $6EF8: $1F
    ld [$003F], sp                                ; $6EF9: $08 $3F $00
    ld e, a                                       ; $6EFC: $5F
    add hl, hl                                    ; $6EFD: $29
    cp a                                          ; $6EFE: $BF
    ld b, b                                       ; $6EFF: $40
    and a                                         ; $6F00: $A7
    ld e, b                                       ; $6F01: $58
    ld bc, $61FE                                  ; $6F02: $01 $FE $61
    sbc [hl]                                      ; $6F05: $9E
    ld [hl], b                                    ; $6F06: $70
    rst RST_18                                    ; $6F07: $DF
    ld h, a                                       ; $6F08: $67
    cp b                                          ; $6F09: $B8
    ld h, b                                       ; $6F0A: $60
    sbc a                                         ; $6F0B: $9F
    ld h, a                                       ; $6F0C: $67
    sbc b                                         ; $6F0D: $98
    ld h, a                                       ; $6F0E: $67
    sbc b                                         ; $6F0F: $98
    add hl, bc                                    ; $6F10: $09
    ldh a, [$FFF0]                                ; $6F11: $F0 $F0
    nop                                           ; $6F13: $00
    jr nc, jr_034_6F16                            ; $6F14: $30 $00

jr_034_6F16:
    stop                                          ; $6F16: $10 $00
    ldh a, [$FFC0]                                ; $6F18: $F0 $C0
    ld hl, sp+$00                                 ; $6F1A: $F8 $00
    db $F4                                        ; $6F1C: $F4
    ld [$04FA], sp                                ; $6F1D: $08 $FA $04
    jp nz, Jump_000_053C                          ; $6F20: $C2 $3C $05

    cp $66                                        ; $6F23: $FE $66
    sbc l                                         ; $6F25: $9D
    rst RST_20                                    ; $6F26: $E7
    cp c                                          ; $6F27: $B9
    ld h, a                                       ; $6F28: $67
    reti                                          ; $6F29: $D9


    ld h, a                                       ; $6F2A: $67
    sbc b                                         ; $6F2B: $98
    ld h, a                                       ; $6F2C: $67
    sbc b                                         ; $6F2D: $98
    ld h, a                                       ; $6F2E: $67
    sbc b                                         ; $6F2F: $98
    dec b                                         ; $6F30: $05

jr_034_6F31:
    ld hl, sp-$08                                 ; $6F31: $F8 $F8
    nop                                           ; $6F33: $00
    ldh a, [rP1]                                  ; $6F34: $F0 $00
    ld h, b                                       ; $6F36: $60
    nop                                           ; $6F37: $00
    nop                                           ; $6F38: $00
    nop                                           ; $6F39: $00
    nop                                           ; $6F3A: $00
    nop                                           ; $6F3B: $00
    nop                                           ; $6F3C: $00
    nop                                           ; $6F3D: $00
    nop                                           ; $6F3E: $00
    nop                                           ; $6F3F: $00
    nop                                           ; $6F40: $00
    nop                                           ; $6F41: $00
    nop                                           ; $6F42: $00
    nop                                           ; $6F43: $00
    add b                                         ; $6F44: $80
    nop                                           ; $6F45: $00
    ld b, b                                       ; $6F46: $40
    add b                                         ; $6F47: $80
    ld b, b                                       ; $6F48: $40
    add b                                         ; $6F49: $80
    and b                                         ; $6F4A: $A0
    ret nz                                        ; $6F4B: $C0

    ret nc                                        ; $6F4C: $D0

    and b                                         ; $6F4D: $A0
    xor b                                         ; $6F4E: $A8
    ld d, b                                       ; $6F4F: $50
    ld l, b                                       ; $6F50: $68
    sub b                                         ; $6F51: $90
    db $F4                                        ; $6F52: $F4
    ld [$0078], sp                                ; $6F53: $08 $78 $00
    jr nc, jr_034_6F58                            ; $6F56: $30 $00

jr_034_6F58:
    nop                                           ; $6F58: $00
    nop                                           ; $6F59: $00
    nop                                           ; $6F5A: $00
    nop                                           ; $6F5B: $00
    nop                                           ; $6F5C: $00
    nop                                           ; $6F5D: $00
    nop                                           ; $6F5E: $00
    nop                                           ; $6F5F: $00
    nop                                           ; $6F60: $00
    nop                                           ; $6F61: $00
    nop                                           ; $6F62: $00
    nop                                           ; $6F63: $00
    ld bc, $0200                                  ; $6F64: $01 $00 $02
    ld bc, $0102                                  ; $6F67: $01 $02 $01
    dec b                                         ; $6F6A: $05
    inc bc                                        ; $6F6B: $03
    dec bc                                        ; $6F6C: $0B
    dec b                                         ; $6F6D: $05
    dec d                                         ; $6F6E: $15
    ld a, [bc]                                    ; $6F6F: $0A
    ld d, $09                                     ; $6F70: $16 $09
    cpl                                           ; $6F72: $2F
    db $10                                        ; $6F73: $10
    ld e, $00                                     ; $6F74: $1E $00
    inc c                                         ; $6F76: $0C
    nop                                           ; $6F77: $00
    rrca                                          ; $6F78: $0F
    inc bc                                        ; $6F79: $03
    rra                                           ; $6F7A: $1F
    nop                                           ; $6F7B: $00
    cpl                                           ; $6F7C: $2F
    db $10                                        ; $6F7D: $10
    ld e, a                                       ; $6F7E: $5F
    jr nz, jr_034_6FC4                            ; $6F7F: $20 $43

    inc a                                         ; $6F81: $3C
    and b                                         ; $6F82: $A0
    ld a, a                                       ; $6F83: $7F
    ld h, [hl]                                    ; $6F84: $66
    cp c                                          ; $6F85: $B9
    rst RST_20                                    ; $6F86: $E7
    sbc l                                         ; $6F87: $9D
    and $9B                                       ; $6F88: $E6 $9B
    and $19                                       ; $6F8A: $E6 $19
    and $19                                       ; $6F8C: $E6 $19
    and $19                                       ; $6F8E: $E6 $19
    and b                                         ; $6F90: $A0
    rra                                           ; $6F91: $1F
    rra                                           ; $6F92: $1F
    nop                                           ; $6F93: $00
    rrca                                          ; $6F94: $0F
    nop                                           ; $6F95: $00
    ld b, $00                                     ; $6F96: $06 $00
    ld hl, sp+$10                                 ; $6F98: $F8 $10
    db $FC                                        ; $6F9A: $FC
    nop                                           ; $6F9B: $00
    ld a, [$FD94]                                 ; $6F9C: $FA $94 $FD
    ld [bc], a                                    ; $6F9F: $02
    push hl                                       ; $6FA0: $E5
    ld a, [de]                                    ; $6FA1: $1A
    add b                                         ; $6FA2: $80
    ld a, a                                       ; $6FA3: $7F
    add [hl]                                      ; $6FA4: $86
    ld a, c                                       ; $6FA5: $79
    ld c, $FB                                     ; $6FA6: $0E $FB
    and $1D                                       ; $6FA8: $E6 $1D
    ld b, $F9                                     ; $6FAA: $06 $F9
    and $19                                       ; $6FAC: $E6 $19
    and $19                                       ; $6FAE: $E6 $19
    sub b                                         ; $6FB0: $90
    rrca                                          ; $6FB1: $0F
    rrca                                          ; $6FB2: $0F
    nop                                           ; $6FB3: $00
    inc c                                         ; $6FB4: $0C
    nop                                           ; $6FB5: $00
    ld [$0000], sp                                ; $6FB6: $08 $00 $00
    nop                                           ; $6FB9: $00
    nop                                           ; $6FBA: $00
    nop                                           ; $6FBB: $00
    nop                                           ; $6FBC: $00
    nop                                           ; $6FBD: $00
    nop                                           ; $6FBE: $00
    nop                                           ; $6FBF: $00
    nop                                           ; $6FC0: $00
    nop                                           ; $6FC1: $00
    add b                                         ; $6FC2: $80
    nop                                           ; $6FC3: $00

jr_034_6FC4:
    ld b, b                                       ; $6FC4: $40
    add b                                         ; $6FC5: $80
    and b                                         ; $6FC6: $A0
    ret nz                                        ; $6FC7: $C0

    and b                                         ; $6FC8: $A0
    ret nz                                        ; $6FC9: $C0

    ret nc                                        ; $6FCA: $D0

jr_034_6FCB:
    ld h, b                                       ; $6FCB: $60
    add sp, $50                                   ; $6FCC: $E8 $50
    call nc, $B428                                ; $6FCE: $D4 $28 $B4
    ld c, b                                       ; $6FD1: $48
    ld a, d                                       ; $6FD2: $7A
    inc b                                         ; $6FD3: $04
    inc a                                         ; $6FD4: $3C
    nop                                           ; $6FD5: $00
    jr jr_034_6FD8                                ; $6FD6: $18 $00

jr_034_6FD8:
    nop                                           ; $6FD8: $00
    nop                                           ; $6FD9: $00
    nop                                           ; $6FDA: $00
    nop                                           ; $6FDB: $00
    nop                                           ; $6FDC: $00
    nop                                           ; $6FDD: $00
    nop                                           ; $6FDE: $00
    nop                                           ; $6FDF: $00
    nop                                           ; $6FE0: $00
    nop                                           ; $6FE1: $00
    nop                                           ; $6FE2: $00
    nop                                           ; $6FE3: $00
    nop                                           ; $6FE4: $00
    nop                                           ; $6FE5: $00
    nop                                           ; $6FE6: $00
    nop                                           ; $6FE7: $00
    nop                                           ; $6FE8: $00
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
    inc bc                                        ; $6FF8: $03
    nop                                           ; $6FF9: $00
    rlca                                          ; $6FFA: $07
    inc bc                                        ; $6FFB: $03
    rrca                                          ; $6FFC: $0F
    rlca                                          ; $6FFD: $07
    ld [$0807], sp                                ; $6FFE: $08 $07 $08
    rlca                                          ; $7001: $07
    ld [$0F07], sp                                ; $7002: $08 $07 $0F
    rlca                                          ; $7005: $07
    rra                                           ; $7006: $1F
    ld [bc], a                                    ; $7007: $02
    ccf                                           ; $7008: $3F
    ld a, [de]                                    ; $7009: $1A
    ccf                                           ; $700A: $3F
    ld a, [de]                                    ; $700B: $1A
    ccf                                           ; $700C: $3F
    jr jr_034_7048                                ; $700D: $18 $39

    ld d, $31                                     ; $700F: $16 $31
    ld b, $00                                     ; $7011: $06 $00
    rlca                                          ; $7013: $07
    nop                                           ; $7014: $00
    inc bc                                        ; $7015: $03
    nop                                           ; $7016: $00
    ld bc, $00C0                                  ; $7017: $01 $C0 $00
    ldh [$FFC0], a                                ; $701A: $E0 $C0
    ldh a, [$FFE0]                                ; $701C: $F0 $E0
    db $10                                        ; $701E: $10
    ldh [rNR10], a                                ; $701F: $E0 $10
    ldh [rNR10], a                                ; $7021: $E0 $10
    ldh [$FFF0], a                                ; $7023: $E0 $F0
    ldh [$FFF8], a                                ; $7025: $E0 $F8
    ld b, b                                       ; $7027: $40
    db $FC                                        ; $7028: $FC
    ld e, b                                       ; $7029: $58
    db $FC                                        ; $702A: $FC
    ld e, b                                       ; $702B: $58
    db $FC                                        ; $702C: $FC
    jr jr_034_6FCB                                ; $702D: $18 $9C

    ld l, b                                       ; $702F: $68
    adc h                                         ; $7030: $8C
    ld h, b                                       ; $7031: $60
    nop                                           ; $7032: $00
    ldh [rP1], a                                  ; $7033: $E0 $00
    ret nz                                        ; $7035: $C0

    nop                                           ; $7036: $00
    add b                                         ; $7037: $80
    nop                                           ; $7038: $00
    nop                                           ; $7039: $00
    nop                                           ; $703A: $00
    nop                                           ; $703B: $00
    nop                                           ; $703C: $00
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

jr_034_7048:
    ld bc, $0300                                  ; $7048: $01 $00 $03
    nop                                           ; $704B: $00
    rlca                                          ; $704C: $07
    ld [bc], a                                    ; $704D: $02
    dec c                                         ; $704E: $0D
    ld b, $05                                     ; $704F: $06 $05
    ld [bc], a                                    ; $7051: $02
    ld [bc], a                                    ; $7052: $02
    ld bc, $0071                                  ; $7053: $01 $71 $00
    ld c, d                                       ; $7056: $4A
    ld sp, $0000                                  ; $7057: $31 $00 $00
    nop                                           ; $705A: $00
    nop                                           ; $705B: $00
    nop                                           ; $705C: $00
    nop                                           ; $705D: $00
    nop                                           ; $705E: $00
    nop                                           ; $705F: $00
    nop                                           ; $7060: $00
    nop                                           ; $7061: $00
    ld a, [hl]                                    ; $7062: $7E
    nop                                           ; $7063: $00
    rst RST_38                                    ; $7064: $FF
    ld a, [hl]                                    ; $7065: $7E
    pop bc                                        ; $7066: $C1
    ld a, [hl]                                    ; $7067: $7E
    add b                                         ; $7068: $80
    rst RST_38                                    ; $7069: $FF
    add b                                         ; $706A: $80
    rst RST_38                                    ; $706B: $FF
    add b                                         ; $706C: $80
    rst RST_38                                    ; $706D: $FF
    cp $81                                        ; $706E: $FE $81
    cp $81                                        ; $7070: $FE $81
    rst RST_38                                    ; $7072: $FF
    nop                                           ; $7073: $00
    nop                                           ; $7074: $00
    rst RST_38                                    ; $7075: $FF
    ld b, d                                       ; $7076: $42
    rst RST_38                                    ; $7077: $FF
    nop                                           ; $7078: $00
    nop                                           ; $7079: $00
    nop                                           ; $707A: $00
    nop                                           ; $707B: $00
    nop                                           ; $707C: $00
    nop                                           ; $707D: $00
    nop                                           ; $707E: $00
    nop                                           ; $707F: $00
    nop                                           ; $7080: $00
    nop                                           ; $7081: $00
    nop                                           ; $7082: $00
    nop                                           ; $7083: $00
    nop                                           ; $7084: $00
    nop                                           ; $7085: $00
    nop                                           ; $7086: $00
    nop                                           ; $7087: $00
    add b                                         ; $7088: $80
    nop                                           ; $7089: $00
    ret nz                                        ; $708A: $C0

    nop                                           ; $708B: $00
    and b                                         ; $708C: $A0
    ld b, b                                       ; $708D: $40
    sub b                                         ; $708E: $90
    ld h, b                                       ; $708F: $60
    and b                                         ; $7090: $A0
    ld b, b                                       ; $7091: $40
    ld b, b                                       ; $7092: $40
    add b                                         ; $7093: $80
    adc [hl]                                      ; $7094: $8E
    nop                                           ; $7095: $00
    ld d, d                                       ; $7096: $52
    adc h                                         ; $7097: $8C
    nop                                           ; $7098: $00
    nop                                           ; $7099: $00
    nop                                           ; $709A: $00
    nop                                           ; $709B: $00
    nop                                           ; $709C: $00
    nop                                           ; $709D: $00
    nop                                           ; $709E: $00
    nop                                           ; $709F: $00
    nop                                           ; $70A0: $00
    nop                                           ; $70A1: $00
    nop                                           ; $70A2: $00
    nop                                           ; $70A3: $00
    nop                                           ; $70A4: $00
    nop                                           ; $70A5: $00
    ld bc, $0300                                  ; $70A6: $01 $00 $03
    nop                                           ; $70A9: $00
    rlca                                          ; $70AA: $07
    ld [bc], a                                    ; $70AB: $02
    dec c                                         ; $70AC: $0D
    ld b, $05                                     ; $70AD: $06 $05
    ld [bc], a                                    ; $70AF: $02
    ld [hl], d                                    ; $70B0: $72
    ld bc, $3049                                  ; $70B1: $01 $49 $30
    ld a, [hl+]                                   ; $70B4: $2A
    ld de, $1926                                  ; $70B5: $11 $26 $19
    nop                                           ; $70B8: $00
    nop                                           ; $70B9: $00
    nop                                           ; $70BA: $00
    nop                                           ; $70BB: $00
    nop                                           ; $70BC: $00
    nop                                           ; $70BD: $00
    nop                                           ; $70BE: $00
    nop                                           ; $70BF: $00
    ld a, [hl]                                    ; $70C0: $7E
    nop                                           ; $70C1: $00
    rst RST_38                                    ; $70C2: $FF
    ld a, [hl]                                    ; $70C3: $7E
    pop bc                                        ; $70C4: $C1
    ld a, [hl]                                    ; $70C5: $7E
    add b                                         ; $70C6: $80
    rst RST_38                                    ; $70C7: $FF
    add b                                         ; $70C8: $80
    rst RST_38                                    ; $70C9: $FF
    add b                                         ; $70CA: $80
    rst RST_38                                    ; $70CB: $FF
    cp $81                                        ; $70CC: $FE $81
    cp $81                                        ; $70CE: $FE $81
    rst RST_38                                    ; $70D0: $FF
    nop                                           ; $70D1: $00
    nop                                           ; $70D2: $00
    rst RST_38                                    ; $70D3: $FF
    ld b, d                                       ; $70D4: $42
    rst RST_38                                    ; $70D5: $FF
    inc h                                         ; $70D6: $24
    rst RST_38                                    ; $70D7: $FF
    nop                                           ; $70D8: $00
    nop                                           ; $70D9: $00
    nop                                           ; $70DA: $00
    nop                                           ; $70DB: $00
    nop                                           ; $70DC: $00
    nop                                           ; $70DD: $00
    nop                                           ; $70DE: $00
    nop                                           ; $70DF: $00
    nop                                           ; $70E0: $00
    nop                                           ; $70E1: $00
    nop                                           ; $70E2: $00
    nop                                           ; $70E3: $00
    nop                                           ; $70E4: $00
    nop                                           ; $70E5: $00
    add b                                         ; $70E6: $80
    nop                                           ; $70E7: $00
    ret nz                                        ; $70E8: $C0

    nop                                           ; $70E9: $00
    and b                                         ; $70EA: $A0
    ld b, b                                       ; $70EB: $40
    sub b                                         ; $70EC: $90
    ld h, b                                       ; $70ED: $60
    and b                                         ; $70EE: $A0
    ld b, b                                       ; $70EF: $40
    ld c, [hl]                                    ; $70F0: $4E
    add b                                         ; $70F1: $80
    sub d                                         ; $70F2: $92
    inc c                                         ; $70F3: $0C
    ld d, h                                       ; $70F4: $54
    adc b                                         ; $70F5: $88
    ld h, h                                       ; $70F6: $64
    sbc b                                         ; $70F7: $98
    nop                                           ; $70F8: $00
    nop                                           ; $70F9: $00
    nop                                           ; $70FA: $00
    nop                                           ; $70FB: $00
    nop                                           ; $70FC: $00
    nop                                           ; $70FD: $00
    nop                                           ; $70FE: $00
    nop                                           ; $70FF: $00
    nop                                           ; $7100: $00
    nop                                           ; $7101: $00
    nop                                           ; $7102: $00
    nop                                           ; $7103: $00
    nop                                           ; $7104: $00
    nop                                           ; $7105: $00
    nop                                           ; $7106: $00
    nop                                           ; $7107: $00
    ld bc, $0300                                  ; $7108: $01 $00 $03
    nop                                           ; $710B: $00
    rlca                                          ; $710C: $07
    ld [bc], a                                    ; $710D: $02
    dec c                                         ; $710E: $0D
    ld b, $05                                     ; $710F: $06 $05
    ld [bc], a                                    ; $7111: $02
    ld [bc], a                                    ; $7112: $02
    ld bc, $0071                                  ; $7113: $01 $71 $00
    ld c, d                                       ; $7116: $4A
    ld sp, $0000                                  ; $7117: $31 $00 $00
    nop                                           ; $711A: $00
    nop                                           ; $711B: $00
    nop                                           ; $711C: $00
    nop                                           ; $711D: $00
    nop                                           ; $711E: $00
    nop                                           ; $711F: $00
    nop                                           ; $7120: $00
    nop                                           ; $7121: $00
    ld a, [hl]                                    ; $7122: $7E
    nop                                           ; $7123: $00
    rst RST_38                                    ; $7124: $FF
    ld a, [hl]                                    ; $7125: $7E
    pop bc                                        ; $7126: $C1
    ld a, [hl]                                    ; $7127: $7E
    add b                                         ; $7128: $80
    rst RST_38                                    ; $7129: $FF
    add b                                         ; $712A: $80
    rst RST_38                                    ; $712B: $FF
    add b                                         ; $712C: $80
    rst RST_38                                    ; $712D: $FF
    cp $81                                        ; $712E: $FE $81
    cp $81                                        ; $7130: $FE $81
    rst RST_38                                    ; $7132: $FF
    nop                                           ; $7133: $00
    nop                                           ; $7134: $00
    rst RST_38                                    ; $7135: $FF
    ld b, d                                       ; $7136: $42
    rst RST_38                                    ; $7137: $FF
    nop                                           ; $7138: $00
    nop                                           ; $7139: $00
    nop                                           ; $713A: $00
    nop                                           ; $713B: $00
    nop                                           ; $713C: $00
    nop                                           ; $713D: $00
    nop                                           ; $713E: $00
    nop                                           ; $713F: $00
    nop                                           ; $7140: $00

jr_034_7141:
    nop                                           ; $7141: $00
    nop                                           ; $7142: $00
    nop                                           ; $7143: $00
    nop                                           ; $7144: $00
    nop                                           ; $7145: $00
    nop                                           ; $7146: $00

jr_034_7147:
    nop                                           ; $7147: $00
    add b                                         ; $7148: $80
    nop                                           ; $7149: $00
    ret nz                                        ; $714A: $C0

    nop                                           ; $714B: $00
    and b                                         ; $714C: $A0
    ld b, b                                       ; $714D: $40
    sub b                                         ; $714E: $90
    ld h, b                                       ; $714F: $60
    and b                                         ; $7150: $A0
    ld b, b                                       ; $7151: $40
    ld b, b                                       ; $7152: $40
    add b                                         ; $7153: $80
    adc [hl]                                      ; $7154: $8E
    nop                                           ; $7155: $00
    ld d, d                                       ; $7156: $52
    adc h                                         ; $7157: $8C
    dec e                                         ; $7158: $1D
    ld [bc], a                                    ; $7159: $02
    ld [hl], d                                    ; $715A: $72
    dec c                                         ; $715B: $0D
    add a                                         ; $715C: $87
    ld a, b                                       ; $715D: $78
    db $FD                                        ; $715E: $FD
    ld [bc], a                                    ; $715F: $02
    dec de                                        ; $7160: $1B
    inc b                                         ; $7161: $04
    dec h                                         ; $7162: $25
    jr @+$3B                                      ; $7163: $18 $39

    nop                                           ; $7165: $00
    inc bc                                        ; $7166: $03
    nop                                           ; $7167: $00
    inc bc                                        ; $7168: $03
    ld [bc], a                                    ; $7169: $02
    nop                                           ; $716A: $00
    nop                                           ; $716B: $00
    nop                                           ; $716C: $00
    nop                                           ; $716D: $00
    nop                                           ; $716E: $00
    nop                                           ; $716F: $00
    nop                                           ; $7170: $00
    nop                                           ; $7171: $00
    nop                                           ; $7172: $00
    nop                                           ; $7173: $00
    nop                                           ; $7174: $00
    nop                                           ; $7175: $00
    nop                                           ; $7176: $00
    nop                                           ; $7177: $00
    inc h                                         ; $7178: $24
    rst RST_38                                    ; $7179: $FF
    inc h                                         ; $717A: $24
    rst RST_38                                    ; $717B: $FF
    nop                                           ; $717C: $00
    rst RST_38                                    ; $717D: $FF
    inc h                                         ; $717E: $24
    db $DB                                        ; $717F: $DB
    db $DB                                        ; $7180: $DB
    inc h                                         ; $7181: $24
    db $DB                                        ; $7182: $DB
    and l                                         ; $7183: $A5
    db $DB                                        ; $7184: $DB
    and l                                         ; $7185: $A5
    or l                                          ; $7186: $B5
    ld b, d                                       ; $7187: $42
    ld [hl-], a                                   ; $7188: $32
    ld hl, $0000                                  ; $7189: $21 $00 $00
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
    nop                                           ; $7196: $00
    nop                                           ; $7197: $00
    cp b                                          ; $7198: $B8
    ld b, b                                       ; $7199: $40
    ld c, [hl]                                    ; $719A: $4E
    or b                                          ; $719B: $B0
    pop hl                                        ; $719C: $E1
    ld e, $BF                                     ; $719D: $1E $BF
    ld b, b                                       ; $719F: $40
    ret c                                         ; $71A0: $D8

    jr nz, jr_034_7147                            ; $71A1: $20 $A4

    jr jr_034_7141                                ; $71A3: $18 $9C

    nop                                           ; $71A5: $00
    ldh [rP1], a                                  ; $71A6: $E0 $00
    jr nc, jr_034_71CA                            ; $71A8: $30 $20

    nop                                           ; $71AA: $00
    nop                                           ; $71AB: $00
    nop                                           ; $71AC: $00
    nop                                           ; $71AD: $00
    nop                                           ; $71AE: $00
    nop                                           ; $71AF: $00
    nop                                           ; $71B0: $00
    nop                                           ; $71B1: $00
    nop                                           ; $71B2: $00
    nop                                           ; $71B3: $00
    nop                                           ; $71B4: $00
    nop                                           ; $71B5: $00
    nop                                           ; $71B6: $00
    nop                                           ; $71B7: $00
    dec e                                         ; $71B8: $1D
    ld [bc], a                                    ; $71B9: $02
    ld [hl], d                                    ; $71BA: $72
    dec c                                         ; $71BB: $0D
    add a                                         ; $71BC: $87
    ld a, b                                       ; $71BD: $78
    db $FD                                        ; $71BE: $FD
    ld [bc], a                                    ; $71BF: $02
    dec de                                        ; $71C0: $1B
    inc b                                         ; $71C1: $04
    dec h                                         ; $71C2: $25
    jr jr_034_71FE                                ; $71C3: $18 $39

    nop                                           ; $71C5: $00
    rlca                                          ; $71C6: $07
    nop                                           ; $71C7: $00
    inc bc                                        ; $71C8: $03
    ld [bc], a                                    ; $71C9: $02

jr_034_71CA:
    nop                                           ; $71CA: $00
    nop                                           ; $71CB: $00
    nop                                           ; $71CC: $00
    nop                                           ; $71CD: $00
    nop                                           ; $71CE: $00
    nop                                           ; $71CF: $00
    nop                                           ; $71D0: $00
    nop                                           ; $71D1: $00
    nop                                           ; $71D2: $00
    nop                                           ; $71D3: $00
    nop                                           ; $71D4: $00
    nop                                           ; $71D5: $00
    nop                                           ; $71D6: $00
    nop                                           ; $71D7: $00
    inc h                                         ; $71D8: $24
    rst RST_38                                    ; $71D9: $FF
    inc h                                         ; $71DA: $24
    rst RST_38                                    ; $71DB: $FF
    nop                                           ; $71DC: $00
    rst RST_38                                    ; $71DD: $FF
    inc h                                         ; $71DE: $24
    db $DB                                        ; $71DF: $DB
    db $DB                                        ; $71E0: $DB
    inc h                                         ; $71E1: $24
    db $DB                                        ; $71E2: $DB

jr_034_71E3:
    and l                                         ; $71E3: $A5
    db $DB                                        ; $71E4: $DB
    and l                                         ; $71E5: $A5
    xor l                                         ; $71E6: $AD
    ld b, d                                       ; $71E7: $42
    ld [bc], a                                    ; $71E8: $02
    ld bc, $0000                                  ; $71E9: $01 $00 $00
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
    nop                                           ; $71F6: $00
    nop                                           ; $71F7: $00
    nop                                           ; $71F8: $00
    nop                                           ; $71F9: $00
    nop                                           ; $71FA: $00
    nop                                           ; $71FB: $00
    inc e                                         ; $71FC: $1C
    nop                                           ; $71FD: $00

jr_034_71FE:
    ld a, $1C                                     ; $71FE: $3E $1C
    ld [hl], c                                    ; $7200: $71
    ld a, $78                                     ; $7201: $3E $78
    ccf                                           ; $7203: $3F
    ld a, b                                       ; $7204: $78
    ccf                                           ; $7205: $3F
    ld [hl], b                                    ; $7206: $70
    ccf                                           ; $7207: $3F
    jr nc, jr_034_7229                            ; $7208: $30 $1F

    jr jr_034_721B                                ; $720A: $18 $0F

    inc c                                         ; $720C: $0C
    rlca                                          ; $720D: $07
    ld b, $03                                     ; $720E: $06 $03
    inc bc                                        ; $7210: $03
    ld bc, $0001                                  ; $7211: $01 $01 $00
    nop                                           ; $7214: $00
    nop                                           ; $7215: $00
    ld a, a                                       ; $7216: $7F
    nop                                           ; $7217: $00
    nop                                           ; $7218: $00
    nop                                           ; $7219: $00
    nop                                           ; $721A: $00

jr_034_721B:
    nop                                           ; $721B: $00
    jr c, jr_034_721E                             ; $721C: $38 $00

jr_034_721E:
    ld a, h                                       ; $721E: $7C
    jr c, jr_034_71E3                             ; $721F: $38 $C2

    ld a, h                                       ; $7221: $7C
    add d                                         ; $7222: $82
    db $FC                                        ; $7223: $FC
    ld [bc], a                                    ; $7224: $02
    db $FC                                        ; $7225: $FC
    ld [bc], a                                    ; $7226: $02
    db $FC                                        ; $7227: $FC
    inc b                                         ; $7228: $04

jr_034_7229:
    ld hl, sp+$08                                 ; $7229: $F8 $08
    ldh a, [rNR10]                                ; $722B: $F0 $10
    ldh [rNR41], a                                ; $722D: $E0 $20
    ret nz                                        ; $722F: $C0

    ld b, b                                       ; $7230: $40
    add b                                         ; $7231: $80
    add b                                         ; $7232: $80
    nop                                           ; $7233: $00
    nop                                           ; $7234: $00
    nop                                           ; $7235: $00
    cp $00                                        ; $7236: $FE $00
    ld h, $19                                     ; $7238: $26 $19
    dec e                                         ; $723A: $1D
    ld [bc], a                                    ; $723B: $02
    ld [hl], d                                    ; $723C: $72
    dec c                                         ; $723D: $0D
    add a                                         ; $723E: $87
    ld a, b                                       ; $723F: $78
    db $FD                                        ; $7240: $FD
    ld [bc], a                                    ; $7241: $02
    dec de                                        ; $7242: $1B
    inc b                                         ; $7243: $04
    dec h                                         ; $7244: $25
    jr jr_034_7282                                ; $7245: $18 $3B

    ld bc, $030F                                  ; $7247: $01 $0F $03
    rra                                           ; $724A: $1F
    ld c, $1F                                     ; $724B: $0E $1F
    rrca                                          ; $724D: $0F
    rrca                                          ; $724E: $0F
    nop                                           ; $724F: $00
    nop                                           ; $7250: $00
    nop                                           ; $7251: $00
    nop                                           ; $7252: $00
    nop                                           ; $7253: $00
    nop                                           ; $7254: $00
    nop                                           ; $7255: $00
    nop                                           ; $7256: $00
    nop                                           ; $7257: $00
    inc h                                         ; $7258: $24
    rst RST_38                                    ; $7259: $FF
    inc h                                         ; $725A: $24
    rst RST_38                                    ; $725B: $FF
    inc h                                         ; $725C: $24
    rst RST_38                                    ; $725D: $FF
    nop                                           ; $725E: $00
    rst RST_38                                    ; $725F: $FF
    inc h                                         ; $7260: $24
    db $DB                                        ; $7261: $DB
    db $DB                                        ; $7262: $DB

jr_034_7263:
    inc h                                         ; $7263: $24
    db $DB                                        ; $7264: $DB
    and l                                         ; $7265: $A5
    db $DB                                        ; $7266: $DB
    and l                                         ; $7267: $A5
    cp l                                          ; $7268: $BD
    ld b, d                                       ; $7269: $42
    ld a, [hl]                                    ; $726A: $7E
    add l                                         ; $726B: $85
    rst RST_38                                    ; $726C: $FF
    ld [bc], a                                    ; $726D: $02
    rst RST_38                                    ; $726E: $FF
    nop                                           ; $726F: $00
    nop                                           ; $7270: $00
    nop                                           ; $7271: $00
    nop                                           ; $7272: $00
    nop                                           ; $7273: $00
    nop                                           ; $7274: $00
    nop                                           ; $7275: $00
    nop                                           ; $7276: $00
    nop                                           ; $7277: $00
    ld h, h                                       ; $7278: $64
    sbc b                                         ; $7279: $98
    cp b                                          ; $727A: $B8
    ld b, b                                       ; $727B: $40
    ld c, [hl]                                    ; $727C: $4E
    or b                                          ; $727D: $B0
    pop hl                                        ; $727E: $E1
    ld e, $BF                                     ; $727F: $1E $BF
    ld b, b                                       ; $7281: $40

jr_034_7282:
    ret c                                         ; $7282: $D8

    jr nz, jr_034_7229                            ; $7283: $20 $A4

    jr jr_034_7263                                ; $7285: $18 $DC

    nop                                           ; $7287: $00
    ldh a, [$FF80]                                ; $7288: $F0 $80
    ld hl, sp+$40                                 ; $728A: $F8 $40
    ld hl, sp-$40                                 ; $728C: $F8 $C0
    ldh a, [rP1]                                  ; $728E: $F0 $00
    nop                                           ; $7290: $00
    nop                                           ; $7291: $00
    nop                                           ; $7292: $00
    nop                                           ; $7293: $00
    nop                                           ; $7294: $00
    nop                                           ; $7295: $00
    nop                                           ; $7296: $00
    nop                                           ; $7297: $00
    ld a, l                                       ; $7298: $7D
    ld [bc], a                                    ; $7299: $02
    add d                                         ; $729A: $82
    ld a, l                                       ; $729B: $7D
    rst RST_38                                    ; $729C: $FF
    nop                                           ; $729D: $00
    add hl, de                                    ; $729E: $19
    ld b, $23                                     ; $729F: $06 $23
    inc e                                         ; $72A1: $1C
    dec a                                         ; $72A2: $3D
    nop                                           ; $72A3: $00
    ld bc, $0300                                  ; $72A4: $01 $00 $03
    ld bc, $030F                                  ; $72A7: $01 $0F $03
    rra                                           ; $72AA: $1F
    rlca                                          ; $72AB: $07
    rra                                           ; $72AC: $1F
    rlca                                          ; $72AD: $07
    rrca                                          ; $72AE: $0F
    nop                                           ; $72AF: $00
    nop                                           ; $72B0: $00
    nop                                           ; $72B1: $00
    nop                                           ; $72B2: $00
    nop                                           ; $72B3: $00
    nop                                           ; $72B4: $00
    nop                                           ; $72B5: $00
    nop                                           ; $72B6: $00
    nop                                           ; $72B7: $00
    inc h                                         ; $72B8: $24
    rst RST_38                                    ; $72B9: $FF
    inc h                                         ; $72BA: $24
    rst RST_38                                    ; $72BB: $FF
    nop                                           ; $72BC: $00
    rst RST_38                                    ; $72BD: $FF
    inc h                                         ; $72BE: $24
    db $DB                                        ; $72BF: $DB
    db $DB                                        ; $72C0: $DB
    inc h                                         ; $72C1: $24
    db $DB                                        ; $72C2: $DB
    and l                                         ; $72C3: $A5
    cp l                                          ; $72C4: $BD
    ld b, d                                       ; $72C5: $42
    cp l                                          ; $72C6: $BD
    ld b, d                                       ; $72C7: $42
    cp l                                          ; $72C8: $BD
    ld b, d                                       ; $72C9: $42
    rst RST_38                                    ; $72CA: $FF
    add c                                         ; $72CB: $81
    rst RST_38                                    ; $72CC: $FF
    add c                                         ; $72CD: $81
    rst RST_38                                    ; $72CE: $FF
    nop                                           ; $72CF: $00
    nop                                           ; $72D0: $00
    nop                                           ; $72D1: $00
    nop                                           ; $72D2: $00
    nop                                           ; $72D3: $00
    nop                                           ; $72D4: $00
    nop                                           ; $72D5: $00
    nop                                           ; $72D6: $00
    nop                                           ; $72D7: $00
    cp [hl]                                       ; $72D8: $BE
    ld b, b                                       ; $72D9: $40
    ld b, c                                       ; $72DA: $41
    cp [hl]                                       ; $72DB: $BE
    rst RST_38                                    ; $72DC: $FF
    nop                                           ; $72DD: $00
    sbc b                                         ; $72DE: $98
    ld h, b                                       ; $72DF: $60
    call nz, $BC38                                ; $72E0: $C4 $38 $BC
    nop                                           ; $72E3: $00
    add b                                         ; $72E4: $80
    nop                                           ; $72E5: $00
    ret nz                                        ; $72E6: $C0

    add b                                         ; $72E7: $80
    ldh a, [$FFC0]                                ; $72E8: $F0 $C0
    ld hl, sp-$20                                 ; $72EA: $F8 $E0
    ld hl, sp-$20                                 ; $72EC: $F8 $E0
    ldh a, [rP1]                                  ; $72EE: $F0 $00
    nop                                           ; $72F0: $00
    nop                                           ; $72F1: $00
    nop                                           ; $72F2: $00
    nop                                           ; $72F3: $00
    nop                                           ; $72F4: $00
    nop                                           ; $72F5: $00
    nop                                           ; $72F6: $00
    nop                                           ; $72F7: $00
    ld h, $19                                     ; $72F8: $26 $19
    dec e                                         ; $72FA: $1D
    ld [bc], a                                    ; $72FB: $02
    ld [hl], d                                    ; $72FC: $72
    dec c                                         ; $72FD: $0D
    add a                                         ; $72FE: $87
    ld a, b                                       ; $72FF: $78
    db $FD                                        ; $7300: $FD
    ld [bc], a                                    ; $7301: $02
    dec de                                        ; $7302: $1B
    inc b                                         ; $7303: $04
    dec h                                         ; $7304: $25
    jr jr_034_7342                                ; $7305: $18 $3B

    nop                                           ; $7307: $00
    rrca                                          ; $7308: $0F
    ld bc, $021F                                  ; $7309: $01 $1F $02
    rra                                           ; $730C: $1F
    inc bc                                        ; $730D: $03
    rrca                                          ; $730E: $0F
    nop                                           ; $730F: $00
    nop                                           ; $7310: $00
    nop                                           ; $7311: $00
    nop                                           ; $7312: $00
    nop                                           ; $7313: $00
    nop                                           ; $7314: $00
    nop                                           ; $7315: $00
    nop                                           ; $7316: $00
    nop                                           ; $7317: $00
    inc h                                         ; $7318: $24
    rst RST_38                                    ; $7319: $FF
    inc h                                         ; $731A: $24
    rst RST_38                                    ; $731B: $FF
    inc h                                         ; $731C: $24
    rst RST_38                                    ; $731D: $FF
    nop                                           ; $731E: $00
    rst RST_38                                    ; $731F: $FF
    inc h                                         ; $7320: $24
    db $DB                                        ; $7321: $DB
    db $DB                                        ; $7322: $DB

jr_034_7323:
    inc h                                         ; $7323: $24
    db $DB                                        ; $7324: $DB
    and l                                         ; $7325: $A5
    db $DB                                        ; $7326: $DB
    and l                                         ; $7327: $A5
    cp l                                          ; $7328: $BD
    ld b, d                                       ; $7329: $42
    ld a, [hl]                                    ; $732A: $7E
    and c                                         ; $732B: $A1
    rst RST_38                                    ; $732C: $FF
    ld b, b                                       ; $732D: $40
    rst RST_38                                    ; $732E: $FF
    nop                                           ; $732F: $00
    nop                                           ; $7330: $00
    nop                                           ; $7331: $00
    nop                                           ; $7332: $00
    nop                                           ; $7333: $00
    nop                                           ; $7334: $00
    nop                                           ; $7335: $00
    nop                                           ; $7336: $00
    nop                                           ; $7337: $00
    ld h, h                                       ; $7338: $64
    sbc b                                         ; $7339: $98
    cp b                                          ; $733A: $B8
    ld b, b                                       ; $733B: $40
    ld c, [hl]                                    ; $733C: $4E
    or b                                          ; $733D: $B0
    pop hl                                        ; $733E: $E1
    ld e, $BF                                     ; $733F: $1E $BF
    ld b, b                                       ; $7341: $40

jr_034_7342:
    ret c                                         ; $7342: $D8

    jr nz, @-$5A                                  ; $7343: $20 $A4

    jr jr_034_7323                                ; $7345: $18 $DC

    add b                                         ; $7347: $80
    ldh a, [$FFC0]                                ; $7348: $F0 $C0
    ld hl, sp+$70                                 ; $734A: $F8 $70
    ld hl, sp-$10                                 ; $734C: $F8 $F0
    ldh a, [rP1]                                  ; $734E: $F0 $00
    nop                                           ; $7350: $00
    nop                                           ; $7351: $00
    nop                                           ; $7352: $00
    nop                                           ; $7353: $00
    nop                                           ; $7354: $00
    nop                                           ; $7355: $00
    nop                                           ; $7356: $00
    nop                                           ; $7357: $00
    ld a, l                                       ; $7358: $7D
    ld [bc], a                                    ; $7359: $02
    add d                                         ; $735A: $82
    ld a, l                                       ; $735B: $7D
    rst RST_38                                    ; $735C: $FF
    nop                                           ; $735D: $00
    add hl, de                                    ; $735E: $19
    ld b, $23                                     ; $735F: $06 $23

jr_034_7361:
    inc e                                         ; $7361: $1C
    dec a                                         ; $7362: $3D
    nop                                           ; $7363: $00
    ld bc, $0300                                  ; $7364: $01 $00 $03

jr_034_7367:
    ld bc, $0004                                  ; $7367: $01 $04 $00
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
    inc h                                         ; $7378: $24
    rst RST_38                                    ; $7379: $FF
    inc h                                         ; $737A: $24
    rst RST_38                                    ; $737B: $FF
    nop                                           ; $737C: $00
    rst RST_38                                    ; $737D: $FF
    inc h                                         ; $737E: $24
    db $DB                                        ; $737F: $DB
    db $DB                                        ; $7380: $DB
    inc h                                         ; $7381: $24
    db $DB                                        ; $7382: $DB
    and l                                         ; $7383: $A5
    cp l                                          ; $7384: $BD
    ld b, d                                       ; $7385: $42
    cp l                                          ; $7386: $BD
    ld b, d                                       ; $7387: $42
    add h                                         ; $7388: $84
    ld b, b                                       ; $7389: $40
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
    cp [hl]                                       ; $7398: $BE
    ld b, b                                       ; $7399: $40
    ld b, c                                       ; $739A: $41
    cp [hl]                                       ; $739B: $BE
    rst RST_38                                    ; $739C: $FF
    nop                                           ; $739D: $00
    sbc b                                         ; $739E: $98
    ld h, b                                       ; $739F: $60
    call nz, $BC38                                ; $73A0: $C4 $38 $BC
    nop                                           ; $73A3: $00
    add b                                         ; $73A4: $80
    nop                                           ; $73A5: $00
    ret nz                                        ; $73A6: $C0

    add b                                         ; $73A7: $80
    ret nz                                        ; $73A8: $C0

    ret nz                                        ; $73A9: $C0

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
    nop                                           ; $73B4: $00
    nop                                           ; $73B5: $00
    nop                                           ; $73B6: $00
    nop                                           ; $73B7: $00
    cp b                                          ; $73B8: $B8
    ld b, b                                       ; $73B9: $40
    ld c, [hl]                                    ; $73BA: $4E
    or b                                          ; $73BB: $B0
    pop hl                                        ; $73BC: $E1
    ld e, $BF                                     ; $73BD: $1E $BF
    ld b, b                                       ; $73BF: $40
    ret c                                         ; $73C0: $D8

    jr nz, jr_034_7367                            ; $73C1: $20 $A4

    jr jr_034_7361                                ; $73C3: $18 $9C

    nop                                           ; $73C5: $00
    ret nz                                        ; $73C6: $C0

    nop                                           ; $73C7: $00
    jr nz, jr_034_73CA                            ; $73C8: $20 $00

jr_034_73CA:
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
    nop                                           ; $73E0: $00
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
    ld c, $00                                     ; $73FE: $0E $00
    rra                                           ; $7400: $1F
    ld c, $38                                     ; $7401: $0E $38
    rra                                           ; $7403: $1F
    inc a                                         ; $7404: $3C
    rra                                           ; $7405: $1F
    inc a                                         ; $7406: $3C
    rra                                           ; $7407: $1F
    jr jr_034_7419                                ; $7408: $18 $0F

    inc c                                         ; $740A: $0C
    rlca                                          ; $740B: $07
    ld b, $03                                     ; $740C: $06 $03
    inc bc                                        ; $740E: $03
    ld bc, $0001                                  ; $740F: $01 $01 $00
    nop                                           ; $7412: $00
    nop                                           ; $7413: $00
    nop                                           ; $7414: $00
    nop                                           ; $7415: $00
    ccf                                           ; $7416: $3F
    nop                                           ; $7417: $00
    nop                                           ; $7418: $00

jr_034_7419:
    nop                                           ; $7419: $00
    nop                                           ; $741A: $00
    nop                                           ; $741B: $00
    nop                                           ; $741C: $00
    nop                                           ; $741D: $00
    ld [hl], b                                    ; $741E: $70
    nop                                           ; $741F: $00
    ld hl, sp+$70                                 ; $7420: $F8 $70
    add h                                         ; $7422: $84
    ld hl, sp+$04                                 ; $7423: $F8 $04
    ld hl, sp+$04                                 ; $7425: $F8 $04
    ld hl, sp+$08                                 ; $7427: $F8 $08
    ldh a, [rNR10]                                ; $7429: $F0 $10
    ldh [rNR41], a                                ; $742B: $E0 $20
    ret nz                                        ; $742D: $C0

    ld b, b                                       ; $742E: $40
    add b                                         ; $742F: $80
    add b                                         ; $7430: $80
    nop                                           ; $7431: $00
    nop                                           ; $7432: $00
    nop                                           ; $7433: $00
    nop                                           ; $7434: $00
    nop                                           ; $7435: $00
    db $FC                                        ; $7436: $FC
    nop                                           ; $7437: $00
    nop                                           ; $7438: $00
    nop                                           ; $7439: $00
    inc a                                         ; $743A: $3C
    nop                                           ; $743B: $00
    ld b, e                                       ; $743C: $43
    nop                                           ; $743D: $00
    ld b, b                                       ; $743E: $40
    nop                                           ; $743F: $00
    jr nz, jr_034_7442                            ; $7440: $20 $00

jr_034_7442:
    stop                                          ; $7442: $10 $00
    rrca                                          ; $7444: $0F
    nop                                           ; $7445: $00
    inc bc                                        ; $7446: $03
    nop                                           ; $7447: $00
    inc c                                         ; $7448: $0C
    nop                                           ; $7449: $00
    stop                                          ; $744A: $10 $00
    ld de, $0E00                                  ; $744C: $11 $00 $0E
    nop                                           ; $744F: $00
    nop                                           ; $7450: $00
    nop                                           ; $7451: $00
    nop                                           ; $7452: $00
    nop                                           ; $7453: $00
    nop                                           ; $7454: $00
    nop                                           ; $7455: $00
    inc bc                                        ; $7456: $03
    nop                                           ; $7457: $00
    inc c                                         ; $7458: $0C
    nop                                           ; $7459: $00
    rra                                           ; $745A: $1F
    inc c                                         ; $745B: $0C
    rra                                           ; $745C: $1F
    dec c                                         ; $745D: $0D
    cp h                                          ; $745E: $BC
    inc de                                        ; $745F: $13
    ld [hl], b                                    ; $7460: $70
    rra                                           ; $7461: $1F
    inc e                                         ; $7462: $1C
    rrca                                          ; $7463: $0F
    ld a, h                                       ; $7464: $7C
    inc de                                        ; $7465: $13
    cp e                                          ; $7466: $BB
    inc b                                         ; $7467: $04
    jr nc, jr_034_7489                            ; $7468: $30 $1F

    ld a, a                                       ; $746A: $7F
    db $10                                        ; $746B: $10
    or b                                          ; $746C: $B0
    rra                                           ; $746D: $1F
    scf                                           ; $746E: $37
    jr @+$7A                                      ; $746F: $18 $78

    rrca                                          ; $7471: $0F
    call $8706                                    ; $7472: $CD $06 $87
    ld bc, $0081                                  ; $7475: $01 $81 $00
    jr nc, jr_034_747A                            ; $7478: $30 $00

jr_034_747A:
    ld hl, sp+$30                                 ; $747A: $F8 $30
    ld hl, sp-$50                                 ; $747C: $F8 $B0
    dec [hl]                                      ; $747E: $35
    ret z                                         ; $747F: $C8

    ld b, $F8                                     ; $7480: $06 $F8
    jr c, @-$0E                                   ; $7482: $38 $F0

    ld a, $C8                                     ; $7484: $3E $C8
    db $DD                                        ; $7486: $DD
    jr nz, @+$06                                  ; $7487: $20 $04

jr_034_7489:
    ld hl, sp-$0A                                 ; $7489: $F8 $F6
    ld [$F805], sp                                ; $748B: $08 $05 $F8
    db $E4                                        ; $748E: $E4
    jr jr_034_749F                                ; $748F: $18 $0E

    ldh a, [$FF93]                                ; $7491: $F0 $93
    ld h, b                                       ; $7493: $60
    ld h, c                                       ; $7494: $61
    add b                                         ; $7495: $80
    add c                                         ; $7496: $81
    nop                                           ; $7497: $00
    nop                                           ; $7498: $00
    nop                                           ; $7499: $00
    inc a                                         ; $749A: $3C
    nop                                           ; $749B: $00
    jp nz, $0200                                  ; $749C: $C2 $00 $02

jr_034_749F:
    nop                                           ; $749F: $00
    inc b                                         ; $74A0: $04
    nop                                           ; $74A1: $00
    ld [$F000], sp                                ; $74A2: $08 $00 $F0
    nop                                           ; $74A5: $00
    ret nz                                        ; $74A6: $C0

    nop                                           ; $74A7: $00
    jr nc, jr_034_74AA                            ; $74A8: $30 $00

jr_034_74AA:
    ld [$8800], sp                                ; $74AA: $08 $00 $88
    nop                                           ; $74AD: $00
    ld [hl], b                                    ; $74AE: $70
    nop                                           ; $74AF: $00
    nop                                           ; $74B0: $00
    nop                                           ; $74B1: $00
    nop                                           ; $74B2: $00
    nop                                           ; $74B3: $00
    nop                                           ; $74B4: $00
    nop                                           ; $74B5: $00
    ret nz                                        ; $74B6: $C0

    nop                                           ; $74B7: $00
    nop                                           ; $74B8: $00
    nop                                           ; $74B9: $00
    nop                                           ; $74BA: $00
    nop                                           ; $74BB: $00
    nop                                           ; $74BC: $00
    nop                                           ; $74BD: $00
    nop                                           ; $74BE: $00
    nop                                           ; $74BF: $00
    rlca                                          ; $74C0: $07
    nop                                           ; $74C1: $00
    jr c, jr_034_74C4                             ; $74C2: $38 $00

jr_034_74C4:
    ld b, b                                       ; $74C4: $40
    nop                                           ; $74C5: $00
    ld b, b                                       ; $74C6: $40
    nop                                           ; $74C7: $00
    ccf                                           ; $74C8: $3F
    nop                                           ; $74C9: $00
    inc b                                         ; $74CA: $04
    nop                                           ; $74CB: $00
    ld [$0800], sp                                ; $74CC: $08 $00 $08
    nop                                           ; $74CF: $00
    add hl, bc                                    ; $74D0: $09
    nop                                           ; $74D1: $00
    ld b, $00                                     ; $74D2: $06 $00
    nop                                           ; $74D4: $00
    nop                                           ; $74D5: $00
    inc bc                                        ; $74D6: $03
    nop                                           ; $74D7: $00
    inc c                                         ; $74D8: $0C
    nop                                           ; $74D9: $00
    rra                                           ; $74DA: $1F
    inc c                                         ; $74DB: $0C
    rra                                           ; $74DC: $1F
    dec c                                         ; $74DD: $0D
    inc a                                         ; $74DE: $3C
    inc de                                        ; $74DF: $13
    ldh a, [$FF1F]                                ; $74E0: $F0 $1F
    inc e                                         ; $74E2: $1C
    rrca                                          ; $74E3: $0F
    ld a, h                                       ; $74E4: $7C
    inc de                                        ; $74E5: $13
    cp e                                          ; $74E6: $BB
    inc b                                         ; $74E7: $04
    jr nc, jr_034_7509                            ; $74E8: $30 $1F

    ld a, a                                       ; $74EA: $7F
    db $10                                        ; $74EB: $10
    or b                                          ; $74EC: $B0
    rra                                           ; $74ED: $1F
    or a                                          ; $74EE: $B7
    jr jr_034_7569                                ; $74EF: $18 $78

    rrca                                          ; $74F1: $0F
    call $8706                                    ; $74F2: $CD $06 $87
    ld bc, $0081                                  ; $74F5: $01 $81 $00
    jr nc, jr_034_74FA                            ; $74F8: $30 $00

jr_034_74FA:
    ld hl, sp+$30                                 ; $74FA: $F8 $30
    ld hl, sp-$50                                 ; $74FC: $F8 $B0
    inc [hl]                                      ; $74FE: $34
    ret z                                         ; $74FF: $C8

    rlca                                          ; $7500: $07
    ld hl, sp+$38                                 ; $7501: $F8 $38
    ldh a, [$FF3E]                                ; $7503: $F0 $3E
    ret z                                         ; $7505: $C8

    db $DD                                        ; $7506: $DD
    jr nz, @+$06                                  ; $7507: $20 $04

jr_034_7509:
    ld hl, sp-$0A                                 ; $7509: $F8 $F6
    ld [$F805], sp                                ; $750B: $08 $05 $F8
    push hl                                       ; $750E: $E5
    jr jr_034_751F                                ; $750F: $18 $0E

    ldh a, [$FF93]                                ; $7511: $F0 $93
    ld h, b                                       ; $7513: $60
    ld h, c                                       ; $7514: $61
    add b                                         ; $7515: $80
    add c                                         ; $7516: $81
    nop                                           ; $7517: $00
    nop                                           ; $7518: $00
    nop                                           ; $7519: $00
    nop                                           ; $751A: $00
    nop                                           ; $751B: $00
    nop                                           ; $751C: $00
    nop                                           ; $751D: $00
    nop                                           ; $751E: $00

jr_034_751F:
    nop                                           ; $751F: $00
    ldh [rP1], a                                  ; $7520: $E0 $00
    inc e                                         ; $7522: $1C
    nop                                           ; $7523: $00
    ld [bc], a                                    ; $7524: $02
    nop                                           ; $7525: $00
    ld [bc], a                                    ; $7526: $02
    nop                                           ; $7527: $00
    db $FC                                        ; $7528: $FC
    nop                                           ; $7529: $00
    jr nz, jr_034_752C                            ; $752A: $20 $00

jr_034_752C:
    stop                                          ; $752C: $10 $00
    stop                                          ; $752E: $10 $00
    sub b                                         ; $7530: $90
    nop                                           ; $7531: $00
    ld h, b                                       ; $7532: $60
    nop                                           ; $7533: $00
    nop                                           ; $7534: $00
    nop                                           ; $7535: $00
    ret nz                                        ; $7536: $C0

    nop                                           ; $7537: $00
    nop                                           ; $7538: $00
    nop                                           ; $7539: $00
    nop                                           ; $753A: $00
    nop                                           ; $753B: $00
    nop                                           ; $753C: $00
    nop                                           ; $753D: $00
    nop                                           ; $753E: $00
    nop                                           ; $753F: $00
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
    nop                                           ; $7560: $00
    nop                                           ; $7561: $00
    nop                                           ; $7562: $00
    nop                                           ; $7563: $00
    nop                                           ; $7564: $00
    nop                                           ; $7565: $00
    nop                                           ; $7566: $00
    nop                                           ; $7567: $00
    nop                                           ; $7568: $00

jr_034_7569:
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
    nop                                           ; $75A0: $00
    nop                                           ; $75A1: $00
    nop                                           ; $75A2: $00
    nop                                           ; $75A3: $00
    nop                                           ; $75A4: $00
    nop                                           ; $75A5: $00
    nop                                           ; $75A6: $00
    nop                                           ; $75A7: $00
    nop                                           ; $75A8: $00
    nop                                           ; $75A9: $00
    nop                                           ; $75AA: $00
    nop                                           ; $75AB: $00
    nop                                           ; $75AC: $00
    nop                                           ; $75AD: $00
    nop                                           ; $75AE: $00
    nop                                           ; $75AF: $00
    nop                                           ; $75B0: $00
    nop                                           ; $75B1: $00
    nop                                           ; $75B2: $00
    nop                                           ; $75B3: $00
    nop                                           ; $75B4: $00
    nop                                           ; $75B5: $00

jr_034_75B6:
    nop                                           ; $75B6: $00
    nop                                           ; $75B7: $00
    rrca                                          ; $75B8: $0F
    nop                                           ; $75B9: $00
    ccf                                           ; $75BA: $3F
    rrca                                          ; $75BB: $0F
    ld a, a                                       ; $75BC: $7F

jr_034_75BD:
    jr nc, jr_034_75B6                            ; $75BD: $30 $F7

    ld b, b                                       ; $75BF: $40
    ld e, a                                       ; $75C0: $5F
    rlca                                          ; $75C1: $07
    ccf                                           ; $75C2: $3F
    jr jr_034_7640                                ; $75C3: $18 $7B

    jr nz, jr_034_75F6                            ; $75C5: $20 $2F

    inc bc                                        ; $75C7: $03
    rra                                           ; $75C8: $1F
    inc c                                         ; $75C9: $0C
    ccf                                           ; $75CA: $3F
    db $10                                        ; $75CB: $10
    rla                                           ; $75CC: $17
    inc bc                                        ; $75CD: $03
    rrca                                          ; $75CE: $0F
    inc b                                         ; $75CF: $04
    rrca                                          ; $75D0: $0F
    inc b                                         ; $75D1: $04
    rlca                                          ; $75D2: $07

jr_034_75D3:
    ld bc, $0001                                  ; $75D3: $01 $01 $00
    nop                                           ; $75D6: $00
    nop                                           ; $75D7: $00
    ldh a, [rP1]                                  ; $75D8: $F0 $00
    db $FC                                        ; $75DA: $FC
    ldh a, [$FFFE]                                ; $75DB: $F0 $FE
    inc c                                         ; $75DD: $0C
    db $EC                                        ; $75DE: $EC
    nop                                           ; $75DF: $00
    ld hl, sp-$20                                 ; $75E0: $F8 $E0
    db $FC                                        ; $75E2: $FC
    jr jr_034_75BD                                ; $75E3: $18 $D8

    nop                                           ; $75E5: $00
    ldh a, [$FFC0]                                ; $75E6: $F0 $C0
    ld hl, sp+$30                                 ; $75E8: $F8 $30
    ldh a, [rP1]                                  ; $75EA: $F0 $00
    ldh [$FFC0], a                                ; $75EC: $E0 $C0
    ret nz                                        ; $75EE: $C0

    nop                                           ; $75EF: $00
    add b                                         ; $75F0: $80
    nop                                           ; $75F1: $00
    ret nz                                        ; $75F2: $C0

    add b                                         ; $75F3: $80
    add b                                         ; $75F4: $80
    nop                                           ; $75F5: $00

jr_034_75F6:
    nop                                           ; $75F6: $00
    nop                                           ; $75F7: $00
    nop                                           ; $75F8: $00
    nop                                           ; $75F9: $00
    ld bc, $0000                                  ; $75FA: $01 $00 $00
    nop                                           ; $75FD: $00
    nop                                           ; $75FE: $00
    nop                                           ; $75FF: $00
    ld bc, $0100                                  ; $7600: $01 $00 $01
    nop                                           ; $7603: $00
    nop                                           ; $7604: $00
    nop                                           ; $7605: $00
    ld bc, $0100                                  ; $7606: $01 $00 $01
    nop                                           ; $7609: $00
    nop                                           ; $760A: $00
    nop                                           ; $760B: $00
    ld bc, $0100                                  ; $760C: $01 $00 $01
    nop                                           ; $760F: $00
    nop                                           ; $7610: $00
    nop                                           ; $7611: $00
    ld bc, $0100                                  ; $7612: $01 $00 $01
    nop                                           ; $7615: $00
    nop                                           ; $7616: $00
    nop                                           ; $7617: $00
    ldh a, [rP1]                                  ; $7618: $F0 $00

jr_034_761A:
    db $FC                                        ; $761A: $FC
    ldh a, [$FFFE]                                ; $761B: $F0 $FE
    inc c                                         ; $761D: $0C
    db $ED                                        ; $761E: $ED
    ld [bc], a                                    ; $761F: $02
    ldh a, [c]                                    ; $7620: $F2
    db $EC                                        ; $7621: $EC
    inc e                                         ; $7622: $1C
    ld hl, sp-$06                                 ; $7623: $F8 $FA
    inc b                                         ; $7625: $04
    db $E4                                        ; $7626: $E4
    ret c                                         ; $7627: $D8

    jr c, jr_034_761A                             ; $7628: $38 $F0

    db $F4                                        ; $762A: $F4
    ld [$F0C8], sp                                ; $762B: $08 $C8 $F0
    db $10                                        ; $762E: $10
    ldh [$FFD0], a                                ; $762F: $E0 $D0
    jr nz, jr_034_75D3                            ; $7631: $20 $A0

    ret nz                                        ; $7633: $C0

    ld b, b                                       ; $7634: $40
    add b                                         ; $7635: $80
    add b                                         ; $7636: $80
    nop                                           ; $7637: $00
    nop                                           ; $7638: $00
    nop                                           ; $7639: $00
    nop                                           ; $763A: $00
    nop                                           ; $763B: $00
    nop                                           ; $763C: $00
    nop                                           ; $763D: $00
    ccf                                           ; $763E: $3F
    ccf                                           ; $763F: $3F

jr_034_7640:
    ld b, b                                       ; $7640: $40
    ld b, b                                       ; $7641: $40
    ld b, b                                       ; $7642: $40
    ld b, b                                       ; $7643: $40
    jr nz, jr_034_7666                            ; $7644: $20 $20

    jr jr_034_7660                                ; $7646: $18 $18

    rlca                                          ; $7648: $07
    rlca                                          ; $7649: $07
    ld [$1008], sp                                ; $764A: $08 $08 $10
    db $10                                        ; $764D: $10
    ld de, $0E11                                  ; $764E: $11 $11 $0E
    ld c, $00                                     ; $7651: $0E $00
    nop                                           ; $7653: $00
    nop                                           ; $7654: $00
    nop                                           ; $7655: $00
    inc bc                                        ; $7656: $03
    nop                                           ; $7657: $00
    inc c                                         ; $7658: $0C
    nop                                           ; $7659: $00
    rra                                           ; $765A: $1F
    inc c                                         ; $765B: $0C
    rra                                           ; $765C: $1F
    dec c                                         ; $765D: $0D
    cp h                                          ; $765E: $BC
    sub e                                         ; $765F: $93

jr_034_7660:
    ld [hl], b                                    ; $7660: $70
    ld e, a                                       ; $7661: $5F
    inc e                                         ; $7662: $1C
    rrca                                          ; $7663: $0F
    inc a                                         ; $7664: $3C
    inc de                                        ; $7665: $13

jr_034_7666:
    ei                                            ; $7666: $FB
    call nz, $1F30                                ; $7667: $C4 $30 $1F
    ld a, a                                       ; $766A: $7F
    ld d, b                                       ; $766B: $50
    or b                                          ; $766C: $B0
    sbc a                                         ; $766D: $9F
    scf                                           ; $766E: $37
    jr jr_034_76E9                                ; $766F: $18 $78

    rrca                                          ; $7671: $0F
    call $8706                                    ; $7672: $CD $06 $87
    ld bc, $0081                                  ; $7675: $01 $81 $00
    jr nc, jr_034_767A                            ; $7678: $30 $00

jr_034_767A:
    ld hl, sp+$30                                 ; $767A: $F8 $30
    ld hl, sp-$50                                 ; $767C: $F8 $B0
    dec [hl]                                      ; $767E: $35
    ret                                           ; $767F: $C9


    ld b, $FA                                     ; $7680: $06 $FA
    jr c, @-$0E                                   ; $7682: $38 $F0

    inc a                                         ; $7684: $3C
    ret z                                         ; $7685: $C8

    rst RST_18                                    ; $7686: $DF
    inc hl                                        ; $7687: $23
    inc b                                         ; $7688: $04
    ld hl, sp-$0A                                 ; $7689: $F8 $F6
    ld a, [bc]                                    ; $768B: $0A
    dec b                                         ; $768C: $05
    ld sp, hl                                     ; $768D: $F9
    db $E4                                        ; $768E: $E4
    jr jr_034_769F                                ; $768F: $18 $0E

    ldh a, [$FF93]                                ; $7691: $F0 $93
    ld h, b                                       ; $7693: $60
    ld h, c                                       ; $7694: $61
    add b                                         ; $7695: $80
    add c                                         ; $7696: $81
    nop                                           ; $7697: $00
    nop                                           ; $7698: $00
    nop                                           ; $7699: $00
    nop                                           ; $769A: $00
    nop                                           ; $769B: $00
    nop                                           ; $769C: $00
    nop                                           ; $769D: $00
    db $FC                                        ; $769E: $FC

jr_034_769F:
    db $FC                                        ; $769F: $FC
    ld [bc], a                                    ; $76A0: $02
    ld [bc], a                                    ; $76A1: $02
    ld [bc], a                                    ; $76A2: $02
    ld [bc], a                                    ; $76A3: $02
    inc b                                         ; $76A4: $04
    inc b                                         ; $76A5: $04
    jr jr_034_76C0                                ; $76A6: $18 $18

    ldh [$FFE0], a                                ; $76A8: $E0 $E0
    db $10                                        ; $76AA: $10
    db $10                                        ; $76AB: $10
    ld [$8808], sp                                ; $76AC: $08 $08 $88
    adc b                                         ; $76AF: $88
    ld [hl], b                                    ; $76B0: $70
    ld [hl], b                                    ; $76B1: $70
    nop                                           ; $76B2: $00
    nop                                           ; $76B3: $00
    nop                                           ; $76B4: $00
    nop                                           ; $76B5: $00
    ret nz                                        ; $76B6: $C0

    nop                                           ; $76B7: $00
    nop                                           ; $76B8: $00
    nop                                           ; $76B9: $00
    nop                                           ; $76BA: $00
    nop                                           ; $76BB: $00
    nop                                           ; $76BC: $00
    nop                                           ; $76BD: $00
    nop                                           ; $76BE: $00
    nop                                           ; $76BF: $00

jr_034_76C0:
    nop                                           ; $76C0: $00
    nop                                           ; $76C1: $00
    nop                                           ; $76C2: $00
    nop                                           ; $76C3: $00
    nop                                           ; $76C4: $00
    nop                                           ; $76C5: $00
    nop                                           ; $76C6: $00
    nop                                           ; $76C7: $00
    nop                                           ; $76C8: $00
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
    nop                                           ; $76E0: $00
    nop                                           ; $76E1: $00
    nop                                           ; $76E2: $00
    nop                                           ; $76E3: $00
    nop                                           ; $76E4: $00
    nop                                           ; $76E5: $00
    nop                                           ; $76E6: $00
    nop                                           ; $76E7: $00
    nop                                           ; $76E8: $00

jr_034_76E9:
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
    nop                                           ; $7720: $00
    nop                                           ; $7721: $00
    nop                                           ; $7722: $00
    nop                                           ; $7723: $00
    nop                                           ; $7724: $00
    nop                                           ; $7725: $00
    nop                                           ; $7726: $00
    nop                                           ; $7727: $00
    nop                                           ; $7728: $00
    nop                                           ; $7729: $00
    nop                                           ; $772A: $00
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
    nop                                           ; $777C: $00
    nop                                           ; $777D: $00
    nop                                           ; $777E: $00
    nop                                           ; $777F: $00
    nop                                           ; $7780: $00
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
    nop                                           ; $7792: $00
    nop                                           ; $7793: $00
    nop                                           ; $7794: $00
    nop                                           ; $7795: $00
    nop                                           ; $7796: $00
    nop                                           ; $7797: $00
    nop                                           ; $7798: $00
    nop                                           ; $7799: $00
    nop                                           ; $779A: $00
    nop                                           ; $779B: $00
    nop                                           ; $779C: $00
    nop                                           ; $779D: $00
    nop                                           ; $779E: $00
    nop                                           ; $779F: $00
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
    nop                                           ; $77BA: $00
    nop                                           ; $77BB: $00
    nop                                           ; $77BC: $00
    nop                                           ; $77BD: $00
    jr nc, jr_034_77C0                            ; $77BE: $30 $00

jr_034_77C0:
    ld c, a                                       ; $77C0: $4F
    jr nc, jr_034_77F3                            ; $77C1: $30 $30

    rrca                                          ; $77C3: $0F
    rra                                           ; $77C4: $1F
    nop                                           ; $77C5: $00
    daa                                           ; $77C6: $27
    jr jr_034_77E1                                ; $77C7: $18 $18

    rlca                                          ; $77C9: $07
    rrca                                          ; $77CA: $0F
    nop                                           ; $77CB: $00
    inc de                                        ; $77CC: $13
    inc c                                         ; $77CD: $0C
    inc c                                         ; $77CE: $0C
    inc bc                                        ; $77CF: $03
    inc bc                                        ; $77D0: $03
    nop                                           ; $77D1: $00
    inc b                                         ; $77D2: $04
    inc bc                                        ; $77D3: $03
    ld [bc], a                                    ; $77D4: $02
    ld bc, $0001                                  ; $77D5: $01 $01 $00
    nop                                           ; $77D8: $00
    nop                                           ; $77D9: $00
    nop                                           ; $77DA: $00
    nop                                           ; $77DB: $00
    ld [bc], a                                    ; $77DC: $02
    nop                                           ; $77DD: $00
    dec c                                         ; $77DE: $0D
    ld [bc], a                                    ; $77DF: $02
    ldh a, [c]                                    ; $77E0: $F2

jr_034_77E1:
    inc c                                         ; $77E1: $0C
    inc c                                         ; $77E2: $0C
    ldh a, [$FFFA]                                ; $77E3: $F0 $FA
    inc b                                         ; $77E5: $04
    db $E4                                        ; $77E6: $E4
    jr jr_034_7801                                ; $77E7: $18 $18

    ldh [$FFF4], a                                ; $77E9: $E0 $F4
    ld [$30C8], sp                                ; $77EB: $08 $C8 $30
    db $10                                        ; $77EE: $10
    ldh [$FFD0], a                                ; $77EF: $E0 $D0
    jr nz, jr_034_7813                            ; $77F1: $20 $20

jr_034_77F3:
    ret nz                                        ; $77F3: $C0

    ld b, b                                       ; $77F4: $40
    add b                                         ; $77F5: $80

jr_034_77F6:
    add b                                         ; $77F6: $80
    nop                                           ; $77F7: $00
    rrca                                          ; $77F8: $0F
    nop                                           ; $77F9: $00
    ccf                                           ; $77FA: $3F
    rrca                                          ; $77FB: $0F
    ld a, a                                       ; $77FC: $7F
    jr nc, jr_034_77F6                            ; $77FD: $30 $F7

    ld b, b                                       ; $77FF: $40
    ld c, a                                       ; $7800: $4F

jr_034_7801:
    scf                                           ; $7801: $37
    jr c, jr_034_7823                             ; $7802: $38 $1F

    ld a, a                                       ; $7804: $7F
    jr nz, jr_034_782E                            ; $7805: $20 $27

    dec de                                        ; $7807: $1B
    inc e                                         ; $7808: $1C
    rrca                                          ; $7809: $0F
    ccf                                           ; $780A: $3F
    db $10                                        ; $780B: $10
    inc de                                        ; $780C: $13
    rrca                                          ; $780D: $0F
    inc c                                         ; $780E: $0C
    rlca                                          ; $780F: $07
    rrca                                          ; $7810: $0F
    inc b                                         ; $7811: $04
    dec b                                         ; $7812: $05

jr_034_7813:
    inc bc                                        ; $7813: $03
    ld [bc], a                                    ; $7814: $02
    ld bc, $0001                                  ; $7815: $01 $01 $00
    nop                                           ; $7818: $00
    nop                                           ; $7819: $00
    add b                                         ; $781A: $80
    nop                                           ; $781B: $00
    nop                                           ; $781C: $00
    nop                                           ; $781D: $00
    nop                                           ; $781E: $00

jr_034_781F:
    nop                                           ; $781F: $00
    add b                                         ; $7820: $80
    nop                                           ; $7821: $00
    add b                                         ; $7822: $80

jr_034_7823:
    nop                                           ; $7823: $00
    nop                                           ; $7824: $00
    nop                                           ; $7825: $00
    add b                                         ; $7826: $80
    nop                                           ; $7827: $00
    add b                                         ; $7828: $80
    nop                                           ; $7829: $00
    nop                                           ; $782A: $00
    nop                                           ; $782B: $00
    add b                                         ; $782C: $80
    nop                                           ; $782D: $00

jr_034_782E:
    add b                                         ; $782E: $80
    nop                                           ; $782F: $00
    nop                                           ; $7830: $00
    nop                                           ; $7831: $00
    add b                                         ; $7832: $80
    nop                                           ; $7833: $00
    add b                                         ; $7834: $80
    nop                                           ; $7835: $00
    nop                                           ; $7836: $00
    nop                                           ; $7837: $00
    ld l, [hl]                                    ; $7838: $6E
    ld b, b                                       ; $7839: $40
    ld l, d                                       ; $783A: $6A
    nop                                           ; $783B: $00
    rlca                                          ; $783C: $07
    ld b, $18                                     ; $783D: $06 $18
    ld [$1034], sp                                ; $783F: $08 $34 $10
    ld b, d                                       ; $7842: $42
    dec a                                         ; $7843: $3D
    inc a                                         ; $7844: $3C
    ld [hl], d                                    ; $7845: $72
    ld a, [bc]                                    ; $7846: $0A
    add hl, hl                                    ; $7847: $29
    ld c, c                                       ; $7848: $49
    ld l, c                                       ; $7849: $69
    rst RST_38                                    ; $784A: $FF
    rlca                                          ; $784B: $07
    rst RST_38                                    ; $784C: $FF
    rlca                                          ; $784D: $07
    adc c                                         ; $784E: $89
    ld [$1AA2], sp                                ; $784F: $08 $A2 $1A
    rrca                                          ; $7852: $0F
    rrca                                          ; $7853: $0F
    dec c                                         ; $7854: $0D
    and b                                         ; $7855: $A0
    dec b                                         ; $7856: $05
    ldh [rP1], a                                  ; $7857: $E0 $00
    rst RST_18                                    ; $7859: $DF
    ret nz                                        ; $785A: $C0

    or a                                          ; $785B: $B7
    adc b                                         ; $785C: $88
    xor e                                         ; $785D: $AB
    inc d                                         ; $785E: $14
    sub h                                         ; $785F: $94
    ld b, a                                       ; $7860: $47
    jr c, jr_034_78E0                             ; $7861: $38 $7D

    ld a, a                                       ; $7863: $7F
    nop                                           ; $7864: $00
    sbc a                                         ; $7865: $9F
    rra                                           ; $7866: $1F
    ld [bc], a                                    ; $7867: $02
    rst RST_00                                    ; $7868: $C7
    rlca                                          ; $7869: $07
    db $E3                                        ; $786A: $E3
    inc bc                                        ; $786B: $03
    ld a, c                                       ; $786C: $79
    add c                                         ; $786D: $81
    ld l, e                                       ; $786E: $6B
    ldh a, [$FFA0]                                ; $786F: $F0 $A0
    nop                                           ; $7871: $00
    rst RST_28                                    ; $7872: $EF
    ld hl, sp-$25                                 ; $7873: $F8 $DB
    call nz, $CAD5                                ; $7875: $C4 $D5 $CA
    xor d                                         ; $7878: $AA
    ld [$5195], sp                                ; $7879: $08 $95 $51
    ld l, $FE                                     ; $787C: $2E $FE
    nop                                           ; $787E: $00
    db $FD                                        ; $787F: $FD
    db $FC                                        ; $7880: $FC
    ei                                            ; $7881: $FB
    nop                                           ; $7882: $00
    ld hl, sp+$7B                                 ; $7883: $F8 $7B
    ld a, b                                       ; $7885: $78
    ld [hl-], a                                   ; $7886: $32
    ld sp, $0087                                  ; $7887: $31 $87 $00
    add e                                         ; $788A: $83
    and b                                         ; $788B: $A0
    ld [$08C5], sp                                ; $788C: $08 $C5 $08
    xor e                                         ; $788F: $AB
    ld d, h                                       ; $7890: $54
    rst RST_00                                    ; $7891: $C7
    jr c, jr_034_781F                             ; $7892: $38 $8B

    ld d, $74                                     ; $7894: $16 $74
    ld b, l                                       ; $7896: $45
    cp d                                          ; $7897: $BA
    ld e, b                                       ; $7898: $58

jr_034_7899:
    ld a, h                                       ; $7899: $7C
    add hl, de                                    ; $789A: $19
    add hl, sp                                    ; $789B: $39
    ld d, a                                       ; $789C: $57
    ld b, d                                       ; $789D: $42
    xor b                                         ; $789E: $A8
    nop                                           ; $789F: $00
    ld d, b                                       ; $78A0: $50
    ld e, h                                       ; $78A1: $5C
    and b                                         ; $78A2: $A0
    xor h                                         ; $78A3: $AC
    jr jr_034_78EC                                ; $78A4: $18 $46

    dec [hl]                                      ; $78A6: $35
    cp b                                          ; $78A7: $B8
    adc d                                         ; $78A8: $8A
    ld e, b                                       ; $78A9: $58
    cp c                                          ; $78AA: $B9
    xor d                                         ; $78AB: $AA
    jp c, Jump_000_02FF                           ; $78AC: $DA $FF $02

    ld d, e                                       ; $78AF: $53
    ld a, a                                       ; $78B0: $7F
    ld [bc], a                                    ; $78B1: $02
    ccf                                           ; $78B2: $3F
    ld [bc], a                                    ; $78B3: $02
    sbc a                                         ; $78B4: $9F
    rra                                           ; $78B5: $1F
    ld bc, $487B                                  ; $78B6: $01 $7B $48
    cp $02                                        ; $78B9: $FE $02
    db $FD                                        ; $78BB: $FD
    db $FC                                        ; $78BC: $FC
    dec bc                                        ; $78BD: $0B
    ei                                            ; $78BE: $FB
    ld hl, sp+$62                                 ; $78BF: $F8 $62
    nop                                           ; $78C1: $00
    dec e                                         ; $78C2: $1D
    ld d, c                                       ; $78C3: $51
    ld l, $A2                                     ; $78C4: $2E $A2
    ld e, l                                       ; $78C6: $5D
    pop bc                                        ; $78C7: $C1
    ld a, $A0                                     ; $78C8: $3E $A0
    nop                                           ; $78CA: $00
    ld e, a                                       ; $78CB: $5F
    ld b, h                                       ; $78CC: $44
    cp e                                          ; $78CD: $BB
    adc d                                         ; $78CE: $8A
    ld [hl], l                                    ; $78CF: $75
    ld d, l                                       ; $78D0: $55
    xor d                                         ; $78D1: $AA
    jp $000A                                      ; $78D2: $C3 $0A $00


    ld h, l                                       ; $78D5: $65
    add b                                         ; $78D6: $80
    db $E3                                        ; $78D7: $E3
    jr jr_034_793B                                ; $78D8: $18 $61

    jr @-$4C                                      ; $78DA: $18 $B2

    ld [hl+], a                                   ; $78DC: $22
    ld b, b                                       ; $78DD: $40
    ld e, c                                       ; $78DE: $59
    sub b                                         ; $78DF: $90

jr_034_78E0:
    ld a, [hl-]                                   ; $78E0: $3A
    ret nz                                        ; $78E1: $C0

    ld a, c                                       ; $78E2: $79
    jr c, @-$6F                                   ; $78E3: $38 $8F

    ld bc, $D770                                  ; $78E5: $01 $70 $D7
    jr z, jr_034_7899                             ; $78E8: $28 $AF

    ld d, b                                       ; $78EA: $50
    rst RST_18                                    ; $78EB: $DF

jr_034_78EC:
    jr nz, jr_034_7907                            ; $78EC: $20 $19

    ld [$22DD], sp                                ; $78EE: $08 $DD $22
    xor [hl]                                      ; $78F1: $AE
    ld d, c                                       ; $78F2: $51
    add hl, de                                    ; $78F3: $19
    xor e                                         ; $78F4: $AB
    ld d, h                                       ; $78F5: $54
    rst RST_00                                    ; $78F6: $C7
    ld bc, $EB38                                  ; $78F7: $01 $38 $EB
    inc d                                         ; $78FA: $14
    rst RST_30                                    ; $78FB: $F7
    ld [$00FF], sp                                ; $78FC: $08 $FF $00
    sbc b                                         ; $78FF: $98
    xor b                                         ; $7900: $A8
    ld [$08EF], sp                                ; $7901: $08 $EF $08
    ld d, a                                       ; $7904: $57
    ld hl, sp-$61                                 ; $7905: $F8 $9F

jr_034_7907:
    rra                                           ; $7907: $1F
    ld c, a                                       ; $7908: $4F
    ld [hl], c                                    ; $7909: $71
    rrca                                          ; $790A: $0F
    ret c                                         ; $790B: $D8

    ld [$471B], sp                                ; $790C: $08 $1B $47
    rlca                                          ; $790F: $07
    and a                                         ; $7910: $A7
    ld [$D8C8], sp                                ; $7911: $08 $C8 $D8
    ld [$F9FA], sp                                ; $7914: $08 $FA $F9
    ret c                                         ; $7917: $D8

    ldh a, [$FFF6]                                ; $7918: $F0 $F6
    pop af                                        ; $791A: $F1
    nop                                           ; $791B: $00
    db $ED                                        ; $791C: $ED
    ldh [c], a                                    ; $791D: $E2
    ld [$DCE5], a                                 ; $791E: $EA $E5 $DC
    jp $C5DA                                      ; $7921: $C3 $DA $C5


    nop                                           ; $7924: $00
    cp h                                          ; $7925: $BC
    add e                                         ; $7926: $83
    xor [hl]                                      ; $7927: $AE
    ld d, c                                       ; $7928: $51
    rla                                           ; $7929: $17
    add sp, $2F                                   ; $792A: $E8 $2F
    ret nc                                        ; $792C: $D0

    ld [$A05F], sp                                ; $792D: $08 $5F $A0
    cp [hl]                                       ; $7930: $BE
    ld b, b                                       ; $7931: $40
    add hl, de                                    ; $7932: $19
    ld a, $C0                                     ; $7933: $3E $C0

jr_034_7935:
    ld e, [hl]                                    ; $7935: $5E
    adc l                                         ; $7936: $8D
    jr jr_034_7935                                ; $7937: $18 $FC

    nop                                           ; $7939: $00
    db $FD                                        ; $793A: $FD

jr_034_793B:
    ld [$7D19], sp                                ; $793B: $08 $19 $7D
    ld [$FE5F], sp                                ; $793E: $08 $5F $FE
    ld [$087F], sp                                ; $7941: $08 $7F $08
    sbc b                                         ; $7944: $98
    ld [$3998], sp                                ; $7945: $08 $98 $39
    ld e, h                                       ; $7948: $5C
    ld bc, $0258                                  ; $7949: $01 $58 $02
    add hl, de                                    ; $794C: $19
    ld e, d                                       ; $794D: $5A
    ld e, $AF                                     ; $794E: $1E $AF

Jump_034_7950:
    ld b, b                                       ; $7950: $40
    nop                                           ; $7951: $00
    scf                                           ; $7952: $37
    ret nz                                        ; $7953: $C0

    sbc e                                         ; $7954: $9B
    ld h, b                                       ; $7955: $60
    ld e, l                                       ; $7956: $5D
    and b                                         ; $7957: $A0
    adc d                                         ; $7958: $8A
    ld [hl], b                                    ; $7959: $70
    ld de, $E01D                                  ; $795A: $11 $1D $E0
    adc [hl]                                      ; $795D: $8E
    ld a, [de]                                    ; $795E: $1A
    and a                                         ; $795F: $A7

jr_034_7960:
    rlca                                          ; $7960: $07
    rst RST_10                                    ; $7961: $D7
    ld [$E31A], sp                                ; $7962: $08 $1A $E3
    inc bc                                        ; $7965: $03

jr_034_7966:
    db $D3                                        ; $7966: $D3
    ld [$E91B], sp                                ; $7967: $08 $1B $E9
    ld hl, sp-$2F                                 ; $796A: $F8 $D1
    adc b                                         ; $796C: $88
    ld [$87B8], sp                                ; $796D: $08 $B8 $87
    or l                                          ; $7970: $B5
    ret nc                                        ; $7971: $D0

    cp d                                          ; $7972: $BA
    add l                                         ; $7973: $85
    ld [hl], c                                    ; $7974: $71
    inc d                                         ; $7975: $14
    ld c, $6A                                     ; $7976: $0E $6A
    dec d                                         ; $7978: $15
    add hl, de                                    ; $7979: $19
    ld h, d                                       ; $797A: $62
    ldh a, [rHDMA5]                               ; $797B: $F0 $55
    ld a, [hl+]                                   ; $797D: $2A
    nop                                           ; $797E: $00
    ld a, $C0                                     ; $797F: $3E $C0
    ld [hl], a                                    ; $7981: $77
    adc b                                         ; $7982: $88
    dec sp                                        ; $7983: $3B
    call nz, $807F                                ; $7984: $C4 $7F $80
    ld b, $BB                                     ; $7987: $06 $BB
    ld b, h                                       ; $7989: $44
    ld a, l                                       ; $798A: $7D
    add d                                         ; $798B: $82
    cp $E8                                        ; $798C: $FE $E8
    add hl, de                                    ; $798E: $19
    cp [hl]                                       ; $798F: $BE
    ld l, $00                                     ; $7990: $2E $00
    ld e, a                                       ; $7992: $5F
    ld [$082E], sp                                ; $7993: $08 $2E $08
    ldh [$FF08], a                                ; $7996: $E0 $08
    adc d                                         ; $7998: $8A
    xor e                                         ; $7999: $AB
    ld [$0885], sp                                ; $799A: $08 $85 $08
    rrc b                                         ; $799D: $CB $08
    ld h, l                                       ; $799F: $65
    cp b                                          ; $79A0: $B8
    ld a, b                                       ; $79A1: $78
    ldh a, [c]                                    ; $79A2: $F2
    sbc b                                         ; $79A3: $98
    ret c                                         ; $79A4: $D8

    jr z, jr_034_7960                             ; $79A5: $28 $B9

    db $FD                                        ; $79A7: $FD
    ld [bc], a                                    ; $79A8: $02
    dec de                                        ; $79A9: $1B
    ld a, [$0542]                                 ; $79AA: $FA $42 $05
    add hl, de                                    ; $79AD: $19
    adc [hl]                                      ; $79AE: $8E

jr_034_79AF:
    ld [hl], b                                    ; $79AF: $70
    dec e                                         ; $79B0: $1D
    ldh [rNR31], a                                ; $79B1: $E0 $1B
    ld l, $02                                     ; $79B3: $2E $02
    ret nc                                        ; $79B5: $D0

    ld e, l                                       ; $79B6: $5D
    and b                                         ; $79B7: $A0
    cp a                                          ; $79B8: $BF
    ld b, b                                       ; $79B9: $40
    ld [hl], a                                    ; $79BA: $77
    ld hl, sp-$17                                 ; $79BB: $F8 $E9
    xor d                                         ; $79BD: $AA
    cp b                                          ; $79BE: $B8
    call nc, $E8F8                                ; $79BF: $D4 $F8 $E8
    ld [$08F4], sp                                ; $79C2: $08 $F4 $08
    ld [$08BA], a                                 ; $79C5: $EA $BA $08
    ld [hl], h                                    ; $79C8: $74
    ld [$3AF8], sp                                ; $79C9: $08 $F8 $3A
    rst RST_38                                    ; $79CC: $FF
    ld b, $7F                                     ; $79CD: $06 $7F
    xor h                                         ; $79CF: $AC
    inc b                                         ; $79D0: $04
    ccf                                           ; $79D1: $3F
    nop                                           ; $79D2: $00
    cp $07                                        ; $79D3: $FE $07
    ld b, $E2                                     ; $79D5: $06 $E2
    dec e                                         ; $79D7: $1D
    nop                                           ; $79D8: $00
    rst RST_00                                    ; $79D9: $C7
    jr c, @-$14                                   ; $79DA: $38 $EA

    dec d                                         ; $79DC: $15
    rst RST_10                                    ; $79DD: $D7
    jr z, jr_034_79AF                             ; $79DE: $28 $CF

    jr nc, jr_034_7966                            ; $79E0: $30 $84

    add hl, de                                    ; $79E2: $19
    rst RST_28                                    ; $79E3: $EF
    db $10                                        ; $79E4: $10
    rst RST_18                                    ; $79E5: $DF
    jr nz, @-$7E                                  ; $79E6: $20 $80

    ld bc, $4F77                                  ; $79E8: $01 $77 $4F
    add b                                         ; $79EB: $80
    add hl, de                                    ; $79EC: $19
    rst RST_30                                    ; $79ED: $F7
    nop                                           ; $79EE: $00
    ld e, b                                       ; $79EF: $58
    ld [$981B], sp                                ; $79F0: $08 $1B $98
    xor d                                         ; $79F3: $AA
    ld [$08E3], sp                                ; $79F4: $08 $E3 $08
    ld [hl], c                                    ; $79F7: $71
    ld a, b                                       ; $79F8: $78

jr_034_79F9:
    ldh a, [c]                                    ; $79F9: $F2
    jr @+$7B                                      ; $79FA: $18 $79

    xor a                                         ; $79FC: $AF
    jr jr_034_79F9                                ; $79FD: $18 $FA

    jr jr_034_7A7E                                ; $79FF: $18 $7D

    jr jr_034_7A7C                                ; $7A01: $18 $79

    ld hl, sp+$08                                 ; $7A03: $F8 $08
    and a                                         ; $7A05: $A7
    jr c, jr_034_7A0D                             ; $7A06: $38 $05

    cp b                                          ; $7A08: $B8
    ld [$28FF], sp                                ; $7A09: $08 $FF $28
    rrca                                          ; $7A0C: $0F

jr_034_7A0D:
    add hl, bc                                    ; $7A0D: $09
    ld [hl], l                                    ; $7A0E: $75
    db $EB                                        ; $7A0F: $EB
    ld [$1A78], sp                                ; $7A10: $08 $78 $1A
    push af                                       ; $7A13: $F5
    ld a, [de]                                    ; $7A14: $1A
    pop de                                        ; $7A15: $D1
    ld [$A25D], sp                                ; $7A16: $08 $5D $A2
    ld [$F951], sp                                ; $7A19: $08 $51 $F9
    ld e, d                                       ; $7A1C: $5A
    dec de                                        ; $7A1D: $1B
    ld [$5608], a                                 ; $7A1E: $EA $08 $56
    ld d, l                                       ; $7A21: $55
    ld [$1AAA], sp                                ; $7A22: $08 $AA $1A
    ccf                                           ; $7A25: $3F
    rlca                                          ; $7A26: $07
    ld b, $FE                                     ; $7A27: $06 $FE
    xor $88                                       ; $7A29: $EE $88
    add hl, bc                                    ; $7A2B: $09
    nop                                           ; $7A2C: $00
    rst RST_38                                    ; $7A2D: $FF
    nop                                           ; $7A2E: $00
    ld a, [de]                                    ; $7A2F: $1A
    dec c                                         ; $7A30: $0D
    cp a                                          ; $7A31: $BF
    xor d                                         ; $7A32: $AA
    db $10                                        ; $7A33: $10
    ld d, a                                       ; $7A34: $57
    ld [$082A], sp                                ; $7A35: $08 $2A $08
    dec d                                         ; $7A38: $15
    ld a, c                                       ; $7A39: $79
    add b                                         ; $7A3A: $80
    xor d                                         ; $7A3B: $AA
    ld [$7BF8], sp                                ; $7A3C: $08 $F8 $7B
    rst RST_28                                    ; $7A3F: $EF
    db $10                                        ; $7A40: $10
    ld d, l                                       ; $7A41: $55
    ld [$EAAA], sp                                ; $7A42: $08 $AA $EA
    ld a, [de]                                    ; $7A45: $1A
    sbc c                                         ; $7A46: $99
    ld [bc], a                                    ; $7A47: $02
    ldh a, [$FF79]                                ; $7A48: $F0 $79
    xor a                                         ; $7A4A: $AF
    db $10                                        ; $7A4B: $10
    ld e, a                                       ; $7A4C: $5F
    xor h                                         ; $7A4D: $AC
    ld [$08AB], sp                                ; $7A4E: $08 $AB $08
    ld b, l                                       ; $7A51: $45
    sbc h                                         ; $7A52: $9C
    ld [bc], a                                    ; $7A53: $02
    ret nz                                        ; $7A54: $C0

    ld a, [$10AA]                                 ; $7A55: $FA $AA $10
    push af                                       ; $7A58: $F5
    ld [$08EA], sp                                ; $7A59: $08 $EA $08
    ld d, c                                       ; $7A5C: $51
    ld [$A5A8], sp                                ; $7A5D: $08 $A8 $A5
    ld [$7B40], sp                                ; $7A60: $08 $40 $7B
    rrca                                          ; $7A63: $0F
    and d                                         ; $7A64: $A2
    ld e, d                                       ; $7A65: $5A
    and b                                         ; $7A66: $A0
    ld e, e                                       ; $7A67: $5B
    ld d, l                                       ; $7A68: $55
    ld b, $08                                     ; $7A69: $06 $08
    rra                                           ; $7A6B: $1F
    ld [$09FF], sp                                ; $7A6C: $08 $FF $09
    xor d                                         ; $7A6F: $AA
    db $10                                        ; $7A70: $10
    ld d, [hl]                                    ; $7A71: $56
    ld d, h                                       ; $7A72: $54
    jp c, Jump_034_7950                           ; $7A73: $DA $50 $79

    inc bc                                        ; $7A76: $03
    ld l, e                                       ; $7A77: $6B
    add hl, bc                                    ; $7A78: $09
    ccf                                           ; $7A79: $3F
    rst RST_28                                    ; $7A7A: $EF

jr_034_7A7B:
    db $10                                        ; $7A7B: $10

jr_034_7A7C:
    add hl, bc                                    ; $7A7C: $09
    nop                                           ; $7A7D: $00

jr_034_7A7E:
    ld a, a                                       ; $7A7E: $7F
    ld b, c                                       ; $7A7F: $41
    ld l, l                                       ; $7A80: $6D
    add hl, bc                                    ; $7A81: $09
    rlca                                          ; $7A82: $07
    rst RST_38                                    ; $7A83: $FF
    rlca                                          ; $7A84: $07
    rlca                                          ; $7A85: $07
    rlca                                          ; $7A86: $07
    rlca                                          ; $7A87: $07
    rlca                                          ; $7A88: $07
    rlca                                          ; $7A89: $07
    rlca                                          ; $7A8A: $07
    rlca                                          ; $7A8B: $07
    rst RST_38                                    ; $7A8C: $FF
    rlca                                          ; $7A8D: $07
    rlca                                          ; $7A8E: $07
    rlca                                          ; $7A8F: $07
    rlca                                          ; $7A90: $07
    rlca                                          ; $7A91: $07
    rlca                                          ; $7A92: $07
    rlca                                          ; $7A93: $07
    rlca                                          ; $7A94: $07
    rst RST_38                                    ; $7A95: $FF
    rlca                                          ; $7A96: $07
    rlca                                          ; $7A97: $07
    rlca                                          ; $7A98: $07
    rlca                                          ; $7A99: $07
    rlca                                          ; $7A9A: $07
    rlca                                          ; $7A9B: $07
    rlca                                          ; $7A9C: $07
    rlca                                          ; $7A9D: $07
    rst RST_38                                    ; $7A9E: $FF
    rlca                                          ; $7A9F: $07
    rlca                                          ; $7AA0: $07
    rlca                                          ; $7AA1: $07
    rlca                                          ; $7AA2: $07
    rlca                                          ; $7AA3: $07
    rlca                                          ; $7AA4: $07
    rlca                                          ; $7AA5: $07
    rlca                                          ; $7AA6: $07
    xor e                                         ; $7AA7: $AB
    rlca                                          ; $7AA8: $07
    nop                                           ; $7AA9: $00
    ld [bc], a                                    ; $7AAA: $02
    inc a                                         ; $7AAB: $3C
    nop                                           ; $7AAC: $00
    ld h, [hl]                                    ; $7AAD: $66
    rlca                                          ; $7AAE: $07
    rlca                                          ; $7AAF: $07
    push af                                       ; $7AB0: $F5
    nop                                           ; $7AB1: $00
    sbc c                                         ; $7AB2: $99
    rlc l                                         ; $7AB3: $CB $05
    ld [$1800], sp                                ; $7AB5: $08 $00 $18
    nop                                           ; $7AB8: $00
    ld a, a                                       ; $7AB9: $7F
    jr c, jr_034_7ABC                             ; $7ABA: $38 $00

jr_034_7ABC:
    add hl, de                                    ; $7ABC: $19
    rlca                                          ; $7ABD: $07
    inc bc                                        ; $7ABE: $03
    rst RST_38                                    ; $7ABF: $FF
    inc bc                                        ; $7AC0: $03
    ld e, c                                       ; $7AC1: $59
    ld d, [hl]                                    ; $7AC2: $56
    ld h, [hl]                                    ; $7AC3: $66
    inc b                                         ; $7AC4: $04
    ld b, $00                                     ; $7AC5: $06 $00
    inc c                                         ; $7AC7: $0C
    nop                                           ; $7AC8: $00
    ret                                           ; $7AC9: $C9


    jr nc, jr_034_7A7B                            ; $7ACA: $30 $AF

    nop                                           ; $7ACC: $00
    ld h, b                                       ; $7ACD: $60
    ld [bc], a                                    ; $7ACE: $02
    ld a, [hl]                                    ; $7ACF: $7E
    nop                                           ; $7AD0: $00
    rst RST_28                                    ; $7AD1: $EF
    rst RST_38                                    ; $7AD2: $FF
    jp hl                                         ; $7AD3: $E9


    cp a                                          ; $7AD4: $BF
    ld bc, $001C                                  ; $7AD5: $01 $1C $00
    dec hl                                        ; $7AD8: $2B
    ld l, e                                       ; $7AD9: $6B
    sbc c                                         ; $7ADA: $99
    rst RST_28                                    ; $7ADB: $EF
    ld bc, $0C7D                                  ; $7ADC: $01 $7D $0C
    ld [bc], a                                    ; $7ADF: $02
    ret                                           ; $7AE0: $C9


    ld bc, $0199                                  ; $7AE1: $01 $99 $01
    ld l, h                                       ; $7AE4: $6C
    ld [bc], a                                    ; $7AE5: $02
    ld a, l                                       ; $7AE6: $7D
    ld a, [hl]                                    ; $7AE7: $7E
    nop                                           ; $7AE8: $00
    adc e                                         ; $7AE9: $8B
    rst RST_28                                    ; $7AEA: $EF
    ld bc, $6079                                  ; $7AEB: $01 $79 $60
    inc b                                         ; $7AEE: $04
    ld d, [hl]                                    ; $7AEF: $56
    ld a, h                                       ; $7AF0: $7C
    nop                                           ; $7AF1: $00
    ld h, [hl]                                    ; $7AF2: $66
    nop                                           ; $7AF3: $00
    ld b, $04                                     ; $7AF4: $06 $04
    add hl, sp                                    ; $7AF6: $39
    inc a                                         ; $7AF7: $3C
    rst RST_28                                    ; $7AF8: $EF
    nop                                           ; $7AF9: $00
    rst RST_28                                    ; $7AFA: $EF
    ld bc, $003E                                  ; $7AFB: $01 $3E $00
    rst RST_38                                    ; $7AFE: $FF
    cp c                                          ; $7AFF: $B9
    rlca                                          ; $7B00: $07
    push de                                       ; $7B01: $D5
    rst RST_38                                    ; $7B02: $FF
    inc bc                                        ; $7B03: $03
    ld a, [hl]                                    ; $7B04: $7E
    nop                                           ; $7B05: $00
    ld b, $04                                     ; $7B06: $06 $04
    ld c, $00                                     ; $7B08: $0E $00
    ld e, [hl]                                    ; $7B0A: $5E
    inc e                                         ; $7B0B: $1C
    nop                                           ; $7B0C: $00
    jr jr_034_7B16                                ; $7B0D: $18 $07

    nop                                           ; $7B0F: $00
    rst RST_28                                    ; $7B10: $EF
    ld bc, $BF3C                                  ; $7B11: $01 $3C $BF
    nop                                           ; $7B14: $00
    ld h, [hl]                                    ; $7B15: $66

jr_034_7B16:
    ld b, $4F                                     ; $7B16: $06 $4F
    ld c, e                                       ; $7B18: $4B
    rst RST_28                                    ; $7B19: $EF
    rst RST_38                                    ; $7B1A: $FF
    dec b                                         ; $7B1B: $05
    ld d, a                                       ; $7B1C: $57
    ld a, $00                                     ; $7B1D: $3E $00
    ld b, $04                                     ; $7B1F: $06 $04
    ld a, h                                       ; $7B21: $7C
    nop                                           ; $7B22: $00

jr_034_7B23:
    rst RST_28                                    ; $7B23: $EF
    ld bc, $7F56                                  ; $7B24: $01 $56 $7F
    nop                                           ; $7B27: $00
    ld [$1000], sp                                ; $7B28: $08 $00 $10
    ld [bc], a                                    ; $7B2B: $02
    add hl, hl                                    ; $7B2C: $29
    rlca                                          ; $7B2D: $07
    push de                                       ; $7B2E: $D5
    nop                                           ; $7B2F: $00
    ld l, c                                       ; $7B30: $69
    jr nz, jr_034_7B37                            ; $7B31: $20 $04

    jr c, jr_034_7B35                             ; $7B33: $38 $00

jr_034_7B35:
    inc h                                         ; $7B35: $24
    nop                                           ; $7B36: $00

jr_034_7B37:
    ld e, e                                       ; $7B37: $5B
    ld b, h                                       ; $7B38: $44
    nop                                           ; $7B39: $00
    ld b, e                                       ; $7B3A: $43
    nop                                           ; $7B3B: $00
    ld a, c                                       ; $7B3C: $79
    inc b                                         ; $7B3D: $04
    nop                                           ; $7B3E: $00
    ld sp, hl                                     ; $7B3F: $F9
    cp a                                          ; $7B40: $BF
    add hl, de                                    ; $7B41: $19
    inc a                                         ; $7B42: $3C
    nop                                           ; $7B43: $00
    ld a, c                                       ; $7B44: $79
    add hl, de                                    ; $7B45: $19
    add hl, sp                                    ; $7B46: $39
    ld a, c                                       ; $7B47: $79
    add hl, hl                                    ; $7B48: $29
    xor e                                         ; $7B49: $AB
    add hl, de                                    ; $7B4A: $19
    ld a, [hl]                                    ; $7B4B: $7E
    nop                                           ; $7B4C: $00
    ld bc, $0202                                  ; $7B4D: $01 $02 $02
    nop                                           ; $7B50: $00
    ld e, e                                       ; $7B51: $5B
    ld d, a                                       ; $7B52: $57
    jr @+$04                                      ; $7B53: $18 $02

    ld [$1000], sp                                ; $7B55: $08 $00 $10
    nop                                           ; $7B58: $00
    ld c, c                                       ; $7B59: $49
    dec b                                         ; $7B5A: $05
    ld d, [hl]                                    ; $7B5B: $56
    ld [hl], $02                                  ; $7B5C: $36 $02
    ld [de], a                                    ; $7B5E: $12
    nop                                           ; $7B5F: $00
    inc h                                         ; $7B60: $24
    nop                                           ; $7B61: $00
    ld a, a                                       ; $7B62: $7F
    jr nc, jr_034_7B23                            ; $7B63: $30 $BE

    ld [bc], a                                    ; $7B65: $02
    jr c, jr_034_7B68                             ; $7B66: $38 $00

jr_034_7B68:
    sbc c                                         ; $7B68: $99
    dec sp                                        ; $7B69: $3B
    ld bc, $509D                                  ; $7B6A: $01 $9D $50
    xor e                                         ; $7B6D: $AB
    nop                                           ; $7B6E: $00
    ld d, [hl]                                    ; $7B6F: $56
    ld [bc], a                                    ; $7B70: $02
    ld b, $00                                     ; $7B71: $06 $00
    inc a                                         ; $7B73: $3C
    nop                                           ; $7B74: $00
    ld e, c                                       ; $7B75: $59
    ld e, [hl]                                    ; $7B76: $5E
    rlca                                          ; $7B77: $07
    nop                                           ; $7B78: $00
    ld a, l                                       ; $7B79: $7D
    nop                                           ; $7B7A: $00
    add hl, de                                    ; $7B7B: $19
    ld e, c                                       ; $7B7C: $59
    ld bc, $B50C                                  ; $7B7D: $01 $0C $B5
    nop                                           ; $7B80: $00
    jr c, jr_034_7B83                             ; $7B81: $38 $00

jr_034_7B83:
    ld a, c                                       ; $7B83: $79
    ld c, d                                       ; $7B84: $4A
    ld [bc], a                                    ; $7B85: $02
    ld b, b                                       ; $7B86: $40
    ld [bc], a                                    ; $7B87: $02
    ld e, d                                       ; $7B88: $5A
    ld b, c                                       ; $7B89: $41
    nop                                           ; $7B8A: $00
    ld b, d                                       ; $7B8B: $42
    nop                                           ; $7B8C: $00
    ei                                            ; $7B8D: $FB
    ld [hl+], a                                   ; $7B8E: $22
    nop                                           ; $7B8F: $00
    ld a, c                                       ; $7B90: $79
    xor e                                         ; $7B91: $AB
    nop                                           ; $7B92: $00
    dec h                                         ; $7B93: $25
    nop                                           ; $7B94: $00
    inc h                                         ; $7B95: $24
    inc b                                         ; $7B96: $04
    ld c, h                                       ; $7B97: $4C
    nop                                           ; $7B98: $00
    ld a, c                                       ; $7B99: $79
    ld d, l                                       ; $7B9A: $55
    jr nz, jr_034_7BA1                            ; $7B9B: $20 $04

    jr c, jr_034_7B9F                             ; $7B9D: $38 $00

jr_034_7B9F:
    ld b, h                                       ; $7B9F: $44
    ld [bc], a                                    ; $7BA0: $02

jr_034_7BA1:
    ld b, e                                       ; $7BA1: $43
    nop                                           ; $7BA2: $00
    push de                                       ; $7BA3: $D5
    ld a, c                                       ; $7BA4: $79
    rlca                                          ; $7BA5: $07
    ld hl, sp+$00                                 ; $7BA6: $F8 $00
    inc b                                         ; $7BA8: $04
    nop                                           ; $7BA9: $00
    ld [bc], a                                    ; $7BAA: $02
    inc b                                         ; $7BAB: $04
    cp e                                          ; $7BAC: $BB
    add hl, sp                                    ; $7BAD: $39
    jr jr_034_7BB0                                ; $7BAE: $18 $00

jr_034_7BB0:
    xor a                                         ; $7BB0: $AF
    inc bc                                        ; $7BB1: $03
    ld a, [bc]                                    ; $7BB2: $0A
    ld [bc], a                                    ; $7BB3: $02
    rst RST_38                                    ; $7BB4: $FF
    cp d                                          ; $7BB5: $BA
    db $FD                                        ; $7BB6: $FD
    jr c, jr_034_7BB9                             ; $7BB7: $38 $00

jr_034_7BB9:
    rst RST_18                                    ; $7BB9: $DF
    rlca                                          ; $7BBA: $07
    add h                                         ; $7BBB: $84
    nop                                           ; $7BBC: $00
    sbc [hl]                                      ; $7BBD: $9E
    xor $00                                       ; $7BBE: $EE $00
    add hl, de                                    ; $7BC0: $19
    rlca                                          ; $7BC1: $07
    ld c, b                                       ; $7BC2: $48
    nop                                           ; $7BC3: $00
    cp a                                          ; $7BC4: $BF
    rlca                                          ; $7BC5: $07
    cp $AA                                        ; $7BC6: $FE $AA
    nop                                           ; $7BC8: $00
    inc b                                         ; $7BC9: $04
    nop                                           ; $7BCA: $00
    jr jr_034_7BCD                                ; $7BCB: $18 $00

jr_034_7BCD:
    ld h, h                                       ; $7BCD: $64
    nop                                           ; $7BCE: $00
    ld [bc], a                                    ; $7BCF: $02
    xor e                                         ; $7BD0: $AB
    nop                                           ; $7BD1: $00
    ld h, d                                       ; $7BD2: $62
    nop                                           ; $7BD3: $00
    sub d                                         ; $7BD4: $92
    nop                                           ; $7BD5: $00
    ld a, h                                       ; $7BD6: $7C
    nop                                           ; $7BD7: $00
    cp a                                          ; $7BD8: $BF
    xor d                                         ; $7BD9: $AA
    rlca                                          ; $7BDA: $07
    ld c, b                                       ; $7BDB: $48
    nop                                           ; $7BDC: $00
    ld e, h                                       ; $7BDD: $5C
    nop                                           ; $7BDE: $00
    ldh [c], a                                    ; $7BDF: $E2
    nop                                           ; $7BE0: $00
    ld [hl+], a                                   ; $7BE1: $22
    xor e                                         ; $7BE2: $AB
    nop                                           ; $7BE3: $00
    inc h                                         ; $7BE4: $24
    nop                                           ; $7BE5: $00
    jr nz, jr_034_7BE8                            ; $7BE6: $20 $00

jr_034_7BE8:
    db $10                                        ; $7BE8: $10
    ld [bc], a                                    ; $7BE9: $02
    cp a                                          ; $7BEA: $BF
    xor d                                         ; $7BEB: $AA
    rlca                                          ; $7BEC: $07
    ld b, h                                       ; $7BED: $44
    ld [bc], a                                    ; $7BEE: $02
    ld a, h                                       ; $7BEF: $7C
    nop                                           ; $7BF0: $00
    jp z, $AA00                                   ; $7BF1: $CA $00 $AA

    xor e                                         ; $7BF4: $AB
    nop                                           ; $7BF5: $00
    or d                                          ; $7BF6: $B2
    nop                                           ; $7BF7: $00
    sub d                                         ; $7BF8: $92
    nop                                           ; $7BF9: $00
    ld h, h                                       ; $7BFA: $64
    nop                                           ; $7BFB: $00
    cp a                                          ; $7BFC: $BF
    xor e                                         ; $7BFD: $AB
    rlca                                          ; $7BFE: $07
    cp $00                                        ; $7BFF: $FE $00
    inc b                                         ; $7C01: $04
    nop                                           ; $7C02: $00
    jr jr_034_7C05                                ; $7C03: $18 $00

jr_034_7C05:
    cp c                                          ; $7C05: $B9
    ld e, e                                       ; $7C06: $5B
    ld [bc], a                                    ; $7C07: $02
    nop                                           ; $7C08: $00
    ld h, d                                       ; $7C09: $62
    nop                                           ; $7C0A: $00
    ld sp, hl                                     ; $7C0B: $F9
    ld a, h                                       ; $7C0C: $7C
    nop                                           ; $7C0D: $00
    cp a                                          ; $7C0E: $BF
    xor b                                         ; $7C0F: $A8
    dec b                                         ; $7C10: $05
    add b                                         ; $7C11: $80
    nop                                           ; $7C12: $00
    ret nz                                        ; $7C13: $C0

    nop                                           ; $7C14: $00
    ldh [$FFA0], a                                ; $7C15: $E0 $A0
    ldh a, [$FF1F]                                ; $7C17: $F0 $1F
    sub b                                         ; $7C19: $90
    ld hl, sp-$78                                 ; $7C1A: $F8 $88
    add hl, de                                    ; $7C1C: $19
    add hl, sp                                    ; $7C1D: $39
    ld e, c                                       ; $7C1E: $59
    ld a, c                                       ; $7C1F: $79
    rst RST_08                                    ; $7C20: $CF
    ld de, $7F00                                  ; $7C21: $11 $00 $7F
    ld [bc], a                                    ; $7C24: $02
    rrca                                          ; $7C25: $0F
    rrca                                          ; $7C26: $0F
    rrca                                          ; $7C27: $0F
    rrca                                          ; $7C28: $0F
    rrca                                          ; $7C29: $0F
    rrca                                          ; $7C2A: $0F
    rrca                                          ; $7C2B: $0F
    rst RST_38                                    ; $7C2C: $FF
    rrca                                          ; $7C2D: $0F
    rrca                                          ; $7C2E: $0F
    rrca                                          ; $7C2F: $0F
    rrca                                          ; $7C30: $0F
    rrca                                          ; $7C31: $0F
    rrca                                          ; $7C32: $0F
    rrca                                          ; $7C33: $0F
    inc c                                         ; $7C34: $0C
    ld l, $03                                     ; $7C35: $2E $03
    dec b                                         ; $7C37: $05
    db $10                                        ; $7C38: $10
    ld b, $FB                                     ; $7C39: $06 $FB
    rrca                                          ; $7C3B: $0F
    dec b                                         ; $7C3C: $05
    inc bc                                        ; $7C3D: $03
    ld d, l                                       ; $7C3E: $55
    rlca                                          ; $7C3F: $07
    db $10                                        ; $7C40: $10
    ld [$0910], sp                                ; $7C41: $08 $10 $09
    db $10                                        ; $7C44: $10
    ld a, [bc]                                    ; $7C45: $0A
    db $10                                        ; $7C46: $10
    ld [hl], d                                    ; $7C47: $72
    dec bc                                        ; $7C48: $0B
    push af                                       ; $7C49: $F5
    rrca                                          ; $7C4A: $0F
    rlca                                          ; $7C4B: $07
    inc bc                                        ; $7C4C: $03
    inc c                                         ; $7C4D: $0C
    db $10                                        ; $7C4E: $10
    dec c                                         ; $7C4F: $0D
    xor d                                         ; $7C50: $AA
    db $10                                        ; $7C51: $10
    ld c, $10                                     ; $7C52: $0E $10
    rrca                                          ; $7C54: $0F
    db $10                                        ; $7C55: $10
    db $10                                        ; $7C56: $10
    db $10                                        ; $7C57: $10
    ld de, $F3E5                                  ; $7C58: $11 $E5 $F3
    rrca                                          ; $7C5B: $0F
    add hl, bc                                    ; $7C5C: $09
    inc bc                                        ; $7C5D: $03
    ld [de], a                                    ; $7C5E: $12
    db $10                                        ; $7C5F: $10
    inc de                                        ; $7C60: $13
    db $10                                        ; $7C61: $10
    ld d, l                                       ; $7C62: $55
    inc d                                         ; $7C63: $14
    db $10                                        ; $7C64: $10
    dec d                                         ; $7C65: $15
    db $10                                        ; $7C66: $10
    ld d, $10                                     ; $7C67: $16 $10
    rla                                           ; $7C69: $17
    di                                            ; $7C6A: $F3
    jp z, $090F                                   ; $7C6B: $CA $0F $09

    inc bc                                        ; $7C6E: $03
    jr jr_034_7C81                                ; $7C6F: $18 $10

    add hl, de                                    ; $7C71: $19
    db $10                                        ; $7C72: $10
    ld a, [de]                                    ; $7C73: $1A
    xor d                                         ; $7C74: $AA
    db $10                                        ; $7C75: $10
    dec de                                        ; $7C76: $1B
    db $10                                        ; $7C77: $10
    inc e                                         ; $7C78: $1C
    db $10                                        ; $7C79: $10
    dec e                                         ; $7C7A: $1D
    db $10                                        ; $7C7B: $10
    ld e, $E5                                     ; $7C7C: $1E $E5
    pop af                                        ; $7C7E: $F1
    rrca                                          ; $7C7F: $0F
    rlca                                          ; $7C80: $07

jr_034_7C81:
    inc bc                                        ; $7C81: $03
    rra                                           ; $7C82: $1F
    db $10                                        ; $7C83: $10
    jr nz, jr_034_7C96                            ; $7C84: $20 $10

    ld d, l                                       ; $7C86: $55
    ld hl, $2210                                  ; $7C87: $21 $10 $22
    db $10                                        ; $7C8A: $10
    inc hl                                        ; $7C8B: $23
    db $10                                        ; $7C8C: $10
    inc h                                         ; $7C8D: $24
    db $10                                        ; $7C8E: $10
    ld c, a                                       ; $7C8F: $4F
    dec h                                         ; $7C90: $25
    db $10                                        ; $7C91: $10
    ld h, $02                                     ; $7C92: $26 $02
    dec b                                         ; $7C94: $05
    add b                                         ; $7C95: $80

jr_034_7C96:
    rra                                           ; $7C96: $1F
    ld [de], a                                    ; $7C97: $12
    dec d                                         ; $7C98: $15
    daa                                           ; $7C99: $27
    inc b                                         ; $7C9A: $04
    jr z, jr_034_7CAD                             ; $7C9B: $28 $10

    add hl, hl                                    ; $7C9D: $29
    db $10                                        ; $7C9E: $10
    ld a, [hl+]                                   ; $7C9F: $2A
    db $10                                        ; $7CA0: $10
    ld d, l                                       ; $7CA1: $55
    dec hl                                        ; $7CA2: $2B
    db $10                                        ; $7CA3: $10
    inc l                                         ; $7CA4: $2C
    db $10                                        ; $7CA5: $10
    dec l                                         ; $7CA6: $2D
    ret nc                                        ; $7CA7: $D0

    ld l, $10                                     ; $7CA8: $2E $10
    ld a, l                                       ; $7CAA: $7D
    inc bc                                        ; $7CAB: $03
    inc d                                         ; $7CAC: $14

jr_034_7CAD:
    and b                                         ; $7CAD: $A0
    rra                                           ; $7CAE: $1F
    rra                                           ; $7CAF: $1F
    rla                                           ; $7CB0: $17
    nop                                           ; $7CB1: $00
    rrca                                          ; $7CB2: $0F
    rst RST_38                                    ; $7CB3: $FF
    rrca                                          ; $7CB4: $0F
    rrca                                          ; $7CB5: $0F
    rrca                                          ; $7CB6: $0F
    rrca                                          ; $7CB7: $0F
    rrca                                          ; $7CB8: $0F
    rrca                                          ; $7CB9: $0F
    rrca                                          ; $7CBA: $0F
    rrca                                          ; $7CBB: $0F
    ld hl, sp+$0F                                 ; $7CBC: $F8 $0F
    rrca                                          ; $7CBE: $0F
    rrca                                          ; $7CBF: $0F
    rrca                                          ; $7CC0: $0F
    nop                                           ; $7CC1: $00
    dec sp                                        ; $7CC2: $3B
    add b                                         ; $7CC3: $80
    ld d, l                                       ; $7CC4: $55
    nop                                           ; $7CC5: $00
    nop                                           ; $7CC6: $00
    ld bc, $0304                                  ; $7CC7: $01 $04 $03
    ld [$0805], sp                                ; $7CCA: $08 $05 $08
    ld b, $0B                                     ; $7CCD: $06 $0B
    rlca                                          ; $7CCF: $07
    db $10                                        ; $7CD0: $10
    rrca                                          ; $7CD1: $0F
    inc de                                        ; $7CD2: $13
    rlca                                          ; $7CD3: $07
    dec b                                         ; $7CD4: $05
    ld c, $1E                                     ; $7CD5: $0E $1E
    ld d, $08                                     ; $7CD7: $16 $08
    jr jr_034_7D34                                ; $7CD9: $18 $59

    inc bc                                        ; $7CDB: $03
    inc bc                                        ; $7CDC: $03
    nop                                           ; $7CDD: $00
    add b                                         ; $7CDE: $80
    xor c                                         ; $7CDF: $A9
    inc b                                         ; $7CE0: $04
    ret nz                                        ; $7CE1: $C0

    ld [$08A0], sp                                ; $7CE2: $08 $A0 $08
    ret nc                                        ; $7CE5: $D0

    ldh [$FF50], a                                ; $7CE6: $E0 $50
    ccf                                           ; $7CE8: $3F
    ldh a, [$FFC8]                                ; $7CE9: $F0 $C8
    rlca                                          ; $7CEB: $07
    inc b                                         ; $7CEC: $04
    nop                                           ; $7CED: $00
    ld d, e                                       ; $7CEE: $53
    inc bc                                        ; $7CEF: $03
    inc bc                                        ; $7CF0: $03
    db $FD                                        ; $7CF1: $FD
    ld [bc], a                                    ; $7CF2: $02
    rst RST_38                                    ; $7CF3: $FF
    ldh a, [$FF08]                                ; $7CF4: $F0 $08
    ret c                                         ; $7CF6: $D8

    cp $17                                        ; $7CF7: $FE $17
    rlca                                          ; $7CF9: $07
    db $FD                                        ; $7CFA: $FD
    dec b                                         ; $7CFB: $05
    rst RST_38                                    ; $7CFC: $FF
    ld h, e                                       ; $7CFD: $63
    inc bc                                        ; $7CFE: $03
    rst RST_38                                    ; $7CFF: $FF
    inc b                                         ; $7D00: $04
    ld b, b                                       ; $7D01: $40
    cp $58                                        ; $7D02: $FE $58
    sub b                                         ; $7D04: $90

Jump_034_7D05:
    cp $88                                        ; $7D05: $FE $88
    rlca                                          ; $7D07: $07
    inc b                                         ; $7D08: $04
    ret z                                         ; $7D09: $C8

    jr nc, jr_034_7D34                            ; $7D0A: $30 $28

    ld a, [$7FA8]                                 ; $7D0C: $FA $A8 $7F
    inc bc                                        ; $7D0F: $03
    inc bc                                        ; $7D10: $03
    db $FD                                        ; $7D11: $FD
    ld [bc], a                                    ; $7D12: $02
    ld [$AD05], sp                                ; $7D13: $08 $05 $AD
    db $FC                                        ; $7D16: $FC
    add hl, bc                                    ; $7D17: $09
    cp $11                                        ; $7D18: $FE $11
    rlca                                          ; $7D1A: $07
    ld b, $17                                     ; $7D1B: $06 $17
    rst RST_38                                    ; $7D1D: $FF
    rst RST_38                                    ; $7D1E: $FF
    inc bc                                        ; $7D1F: $03
    inc bc                                        ; $7D20: $03
    cp $F0                                        ; $7D21: $FE $F0
    ld [$08F0], sp                                ; $7D23: $08 $F0 $08
    ret c                                         ; $7D26: $D8

    or e                                          ; $7D27: $B3
    cp $E8                                        ; $7D28: $FE $E8
    rlca                                          ; $7D2A: $07
    rlca                                          ; $7D2B: $07
    ld [hl], b                                    ; $7D2C: $70
    ld l, b                                       ; $7D2D: $68
    or b                                          ; $7D2E: $B0
    nop                                           ; $7D2F: $00
    rst RST_38                                    ; $7D30: $FF
    ld l, e                                       ; $7D31: $6B
    rst RST_30                                    ; $7D32: $F7
    nop                                           ; $7D33: $00

jr_034_7D34:
    add sp, -$08                                  ; $7D34: $E8 $F8
    add sp, -$08                                  ; $7D36: $E8 $F8
    ret z                                         ; $7D38: $C8

    inc hl                                        ; $7D39: $23
    dec bc                                        ; $7D3A: $0B
    rra                                           ; $7D3B: $1F
    ret nc                                        ; $7D3C: $D0

    jr nc, jr_034_7D6E                            ; $7D3D: $30 $2F

    ccf                                           ; $7D3F: $3F
    rlca                                          ; $7D40: $07
    ld b, $FF                                     ; $7D41: $06 $FF
    dec h                                         ; $7D43: $25
    dec [hl]                                      ; $7D44: $35
    ld b, l                                       ; $7D45: $45
    ld d, l                                       ; $7D46: $55
    ld h, l                                       ; $7D47: $65
    ld [hl], l                                    ; $7D48: $75
    add sp, $00                                   ; $7D49: $E8 $00
    adc c                                         ; $7D4B: $89
    add sp, $40                                   ; $7D4C: $E8 $40
    ld h, b                                       ; $7D4E: $60
    and b                                         ; $7D4F: $A0
    ld b, h                                       ; $7D50: $44
    ret nc                                        ; $7D51: $D0

    jr @-$2E                                      ; $7D52: $18 $D0

    ccf                                           ; $7D54: $3F
    inc c                                         ; $7D55: $0C
    db $F4                                        ; $7D56: $F4
    rlca                                          ; $7D57: $07
    rlca                                          ; $7D58: $07
    dec b                                         ; $7D59: $05
    dec [hl]                                      ; $7D5A: $35
    ld b, l                                       ; $7D5B: $45
    ld d, l                                       ; $7D5C: $55
    ei                                            ; $7D5D: $FB
    ld h, l                                       ; $7D5E: $65
    ld [hl], l                                    ; $7D5F: $75
    rst RST_38                                    ; $7D60: $FF
    rst RST_38                                    ; $7D61: $FF
    rst RST_38                                    ; $7D62: $FF

jr_034_7D63:
    scf                                           ; $7D63: $37
    rlca                                          ; $7D64: $07
    ld b, $FA                                     ; $7D65: $06 $FA
    rst RST_38                                    ; $7D67: $FF
    rst RST_38                                    ; $7D68: $FF
    rst RST_38                                    ; $7D69: $FF
    rst RST_38                                    ; $7D6A: $FF
    and l                                         ; $7D6B: $A5
    or b                                          ; $7D6C: $B0
    or h                                          ; $7D6D: $B4

jr_034_7D6E:
    sbc b                                         ; $7D6E: $98
    cp a                                          ; $7D6F: $BF
    cp $8C                                        ; $7D70: $FE $8C
    rlca                                          ; $7D72: $07
    ld b, $25                                     ; $7D73: $06 $25

jr_034_7D75:
    dec [hl]                                      ; $7D75: $35
    ld b, l                                       ; $7D76: $45
    rst RST_38                                    ; $7D77: $FF
    push de                                       ; $7D78: $D5
    rst RST_38                                    ; $7D79: $FF
    rst RST_38                                    ; $7D7A: $FF
    dec c                                         ; $7D7B: $0D
    or h                                          ; $7D7C: $B4
    dec de                                        ; $7D7D: $1B
    cp $33                                        ; $7D7E: $FE $33
    rlca                                          ; $7D80: $07
    cp $06                                        ; $7D81: $FE $06
    dec h                                         ; $7D83: $25
    dec [hl]                                      ; $7D84: $35
    ld b, l                                       ; $7D85: $45
    rst RST_38                                    ; $7D86: $FF
    rst RST_38                                    ; $7D87: $FF
    sub l                                         ; $7D88: $95
    ldh [$FFAF], a                                ; $7D89: $E0 $AF
    cp $D8                                        ; $7D8B: $FE $D8
    cp $CC                                        ; $7D8D: $FE $CC
    rlca                                          ; $7D8F: $07
    ld b, $25                                     ; $7D90: $06 $25
    dec [hl]                                      ; $7D92: $35
    rst RST_30                                    ; $7D93: $F7
    ld b, l                                       ; $7D94: $45
    ld d, l                                       ; $7D95: $55
    rst RST_38                                    ; $7D96: $FF
    rst RST_38                                    ; $7D97: $FF
    ld b, $A4                                     ; $7D98: $06 $A4
    ld b, h                                       ; $7D9A: $44
    or h                                          ; $7D9B: $B4
    ld e, a                                       ; $7D9C: $5F
    jr jr_034_7D63                                ; $7D9D: $18 $C4

    jr c, jr_034_7D75                             ; $7D9F: $38 $D4

    rlca                                          ; $7DA1: $07

jr_034_7DA2:
    rlca                                          ; $7DA2: $07
    dec b                                         ; $7DA3: $05
    dec [hl]                                      ; $7DA4: $35
    ld a, [$5545]                                 ; $7DA5: $FA $45 $55
    rst RST_38                                    ; $7DA8: $FF
    rst RST_38                                    ; $7DA9: $FF
    and l                                         ; $7DAA: $A5
    ld [hl], b                                    ; $7DAB: $70
    or h                                          ; $7DAC: $B4
    ld a, b                                       ; $7DAD: $78
    cp a                                          ; $7DAE: $BF
    cp $7C                                        ; $7DAF: $FE $7C
    rlca                                          ; $7DB1: $07
    ld b, $25                                     ; $7DB2: $06 $25
    dec [hl]                                      ; $7DB4: $35
    ld b, l                                       ; $7DB5: $45
    rst RST_38                                    ; $7DB6: $FF
    push de                                       ; $7DB7: $D5
    rst RST_38                                    ; $7DB8: $FF
    rst RST_38                                    ; $7DB9: $FF
    ld c, $B4                                     ; $7DBA: $0E $B4
    inc e                                         ; $7DBC: $1C
    call nz, $D430                                ; $7DBD: $C4 $30 $D4
    ld a, a                                       ; $7DC0: $7F
    inc a                                         ; $7DC1: $3C
    rlca                                          ; $7DC2: $07
    ld b, $25                                     ; $7DC3: $06 $25
    dec [hl]                                      ; $7DC5: $35
    ld b, l                                       ; $7DC6: $45
    rst RST_38                                    ; $7DC7: $FF
    rst RST_38                                    ; $7DC8: $FF
    xor a                                         ; $7DC9: $AF
    sub l                                         ; $7DCA: $95
    ld h, b                                       ; $7DCB: $60
    cp $38                                        ; $7DCC: $FE $38
    cp $64                                        ; $7DCE: $FE $64
    rlca                                          ; $7DD0: $07
    ld b, $FB                                     ; $7DD1: $06 $FB
    dec h                                         ; $7DD3: $25
    dec [hl]                                      ; $7DD4: $35
    ld b, l                                       ; $7DD5: $45
    ld d, l                                       ; $7DD6: $55
    rst RST_38                                    ; $7DD7: $FF
    nop                                           ; $7DD8: $00
    inc bc                                        ; $7DD9: $03
    inc bc                                        ; $7DDA: $03
    ei                                            ; $7DDB: $FB
    inc bc                                        ; $7DDC: $03
    inc bc                                        ; $7DDD: $03
    nop                                           ; $7DDE: $00
    db $EC                                        ; $7DDF: $EC
    inc b                                         ; $7DE0: $04
    rlca                                          ; $7DE1: $07
    inc b                                         ; $7DE2: $04
    db $E4                                        ; $7DE3: $E4
    ei                                            ; $7DE4: $FB
    inc hl                                        ; $7DE5: $23
    inc bc                                        ; $7DE6: $03
    inc bc                                        ; $7DE7: $03
    inc bc                                        ; $7DE8: $03
    nop                                           ; $7DE9: $00
    ld [$D404], sp                                ; $7DEA: $08 $04 $D4
    xor l                                         ; $7DED: $AD
    ld b, $06                                     ; $7DEE: $06 $06
    inc b                                         ; $7DF0: $04
    ld [bc], a                                    ; $7DF1: $02
    ld l, $75                                     ; $7DF2: $2E $75
    adc a                                         ; $7DF4: $8F
    sub [hl]                                      ; $7DF5: $96
    ld d, a                                       ; $7DF6: $57
    jr c, jr_034_7DFD                             ; $7DF7: $38 $04

    ld sp, $6304                                  ; $7DF9: $31 $04 $63
    ld l, e                                       ; $7DFC: $6B

jr_034_7DFD:
    inc bc                                        ; $7DFD: $03
    ld h, [hl]                                    ; $7DFE: $66
    jp c, Jump_034_7D05                           ; $7DFF: $DA $05 $7D

    jr jr_034_7DA2                                ; $7E02: $18 $9E

    ld bc, $04E0                                  ; $7E04: $01 $E0 $04
    ld hl, sp-$29                                 ; $7E07: $F8 $D7
    ld a, [hl]                                    ; $7E09: $7E
    dec [hl]                                      ; $7E0A: $35
    add $04                                       ; $7E0B: $C6 $04
    and $6B                                       ; $7E0D: $E6 $6B
    inc bc                                        ; $7E0F: $03
    inc bc                                        ; $7E10: $03
    xor $03                                       ; $7E11: $EE $03
    inc bc                                        ; $7E13: $03
    sub [hl]                                      ; $7E14: $96
    ld a, b                                       ; $7E15: $78
    adc [hl]                                      ; $7E16: $8E
    inc bc                                        ; $7E17: $03
    inc bc                                        ; $7E18: $03
    rrca                                          ; $7E19: $0F
    cp l                                          ; $7E1A: $BD
    inc b                                         ; $7E1B: $04
    ld e, $1B                                     ; $7E1C: $1E $1B
    inc bc                                        ; $7E1E: $03
    inc bc                                        ; $7E1F: $03
    nop                                           ; $7E20: $00
    ld bc, $ED06                                  ; $7E21: $01 $06 $ED
    inc bc                                        ; $7E24: $03
    inc bc                                        ; $7E25: $03
    ld bc, $0766                                  ; $7E26: $01 $66 $07
    inc b                                         ; $7E29: $04
    inc sp                                        ; $7E2A: $33
    inc b                                         ; $7E2B: $04
    ld d, l                                       ; $7E2C: $55
    add hl, sp                                    ; $7E2D: $39
    inc b                                         ; $7E2E: $04
    inc e                                         ; $7E2F: $1C
    inc b                                         ; $7E30: $04
    ld c, $04                                     ; $7E31: $0E $04
    inc hl                                        ; $7E33: $23
    sbc $5D                                       ; $7E34: $DE $5D
    ret nz                                        ; $7E36: $C0

    inc b                                         ; $7E37: $04
    add b                                         ; $7E38: $80
    ld h, e                                       ; $7E39: $63
    inc bc                                        ; $7E3A: $03
    ld [bc], a                                    ; $7E3B: $02

Jump_034_7E3C:
    ld h, d                                       ; $7E3C: $62
    ld b, $56                                     ; $7E3D: $06 $56
    ld b, $66                                     ; $7E3F: $06 $66
    call c, $F804                                 ; $7E41: $DC $04 $F8
    dec sp                                        ; $7E44: $3B
    nop                                           ; $7E45: $00
    db $10                                        ; $7E46: $10
    xor e                                         ; $7E47: $AB
    inc b                                         ; $7E48: $04
    jr nc, @+$06                                  ; $7E49: $30 $04

    jr jr_034_7E53                                ; $7E4B: $18 $06

    ld [$0333], sp                                ; $7E4D: $08 $33 $03
    rst RST_38                                    ; $7E50: $FF
    inc bc                                        ; $7E51: $03
    inc bc                                        ; $7E52: $03

jr_034_7E53:
    sbc $ED                                       ; $7E53: $DE $ED
    ld l, l                                       ; $7E55: $6D
    ld a, l                                       ; $7E56: $7D
    inc bc                                        ; $7E57: $03
    inc bc                                        ; $7E58: $03
    rst RST_30                                    ; $7E59: $F7
    inc bc                                        ; $7E5A: $03
    inc bc                                        ; $7E5B: $03
    inc bc                                        ; $7E5C: $03
    inc bc                                        ; $7E5D: $03
    ld bc, $0306                                  ; $7E5E: $01 $06 $03
    inc bc                                        ; $7E61: $03
    rst RST_10                                    ; $7E62: $D7
    inc bc                                        ; $7E63: $03
    ld bc, $043E                                  ; $7E64: $01 $3E $04
    jr c, jr_034_7E84                             ; $7E67: $38 $1B

    inc bc                                        ; $7E69: $03
    ld [bc], a                                    ; $7E6A: $02
    ld d, l                                       ; $7E6B: $55
    add b                                         ; $7E6C: $80
    ld b, $C0                                     ; $7E6D: $06 $C0
    inc b                                         ; $7E6F: $04
    ld h, b                                       ; $7E70: $60
    inc b                                         ; $7E71: $04
    jr nz, @-$60                                  ; $7E72: $20 $9E

    ld d, l                                       ; $7E74: $55
    rlca                                          ; $7E75: $07
    inc b                                         ; $7E76: $04
    inc c                                         ; $7E77: $0C
    inc b                                         ; $7E78: $04
    jr jr_034_7E7F                                ; $7E79: $18 $04

    ld sp, $6D04                                  ; $7E7B: $31 $04 $6D
    inc sp                                        ; $7E7E: $33

jr_034_7E7F:
    ld h, e                                       ; $7E7F: $63
    ld [bc], a                                    ; $7E80: $02
    jr nc, jr_034_7E8A                            ; $7E81: $30 $07

    ld l, [hl]                                    ; $7E83: $6E

jr_034_7E84:
    ld b, b                                       ; $7E84: $40
    ld l, [hl]                                    ; $7E85: $6E
    xor d                                         ; $7E86: $AA
    dec b                                         ; $7E87: $05
    ld hl, sp+$04                                 ; $7E88: $F8 $04

jr_034_7E8A:
    inc e                                         ; $7E8A: $1C
    inc b                                         ; $7E8B: $04
    ld b, $04                                     ; $7E8C: $06 $04
    inc bc                                        ; $7E8E: $03
    xor a                                         ; $7E8F: $AF
    inc b                                         ; $7E90: $04
    db $E3                                        ; $7E91: $E3
    inc b                                         ; $7E92: $04
    ld [hl], e                                    ; $7E93: $73
    ld [hl], e                                    ; $7E94: $73
    inc bc                                        ; $7E95: $03
    inc bc                                        ; $7E96: $03
    ld [bc], a                                    ; $7E97: $02
    cp a                                          ; $7E98: $BF
    ld h, l                                       ; $7E99: $65
    ldh a, [rNR31]                                ; $7E9A: $F0 $1B
    inc bc                                        ; $7E9C: $03
    inc bc                                        ; $7E9D: $03
    inc bc                                        ; $7E9E: $03
    inc bc                                        ; $7E9F: $03
    inc bc                                        ; $7EA0: $03
    rst RST_10                                    ; $7EA1: $D7
    inc bc                                        ; $7EA2: $03
    xor $07                                       ; $7EA3: $EE $07
    inc b                                         ; $7EA5: $04
    ld c, $23                                     ; $7EA6: $0E $23
    inc bc                                        ; $7EA8: $03
    inc bc                                        ; $7EA9: $03
    or l                                          ; $7EAA: $B5
    nop                                           ; $7EAB: $00
    ld [hl], $07                                  ; $7EAC: $36 $07
    inc b                                         ; $7EAE: $04
    scf                                           ; $7EAF: $37
    inc b                                         ; $7EB0: $04
    inc de                                        ; $7EB1: $13
    ld l, [hl]                                    ; $7EB2: $6E
    cp e                                          ; $7EB3: $BB
    ld bc, $4B80                                  ; $7EB4: $01 $80 $4B
    ld h, $05                                     ; $7EB7: $26 $05
    inc bc                                        ; $7EB9: $03
    ld b, $03                                     ; $7EBA: $06 $03
    ld d, l                                       ; $7EBC: $55
    inc sp                                        ; $7EBD: $33
    ld b, $73                                     ; $7EBE: $06 $73
    inc b                                         ; $7EC0: $04
    ld h, a                                       ; $7EC1: $67
    sub $FC                                       ; $7EC2: $D6 $FC
    ld [hl], $BE                                  ; $7EC4: $36 $BE
    ld c, l                                       ; $7EC6: $4D
    add c                                         ; $7EC7: $81
    adc [hl]                                      ; $7EC8: $8E
    rlca                                          ; $7EC9: $07
    inc bc                                        ; $7ECA: $03
    inc bc                                        ; $7ECB: $03
    ld bc, $BD3C                                  ; $7ECC: $01 $3C $BD
    inc b                                         ; $7ECF: $04
    inc e                                         ; $7ED0: $1C
    dec de                                        ; $7ED1: $1B
    inc bc                                        ; $7ED2: $03
    ld [bc], a                                    ; $7ED3: $02
    ld h, l                                       ; $7ED4: $65
    ret nz                                        ; $7ED5: $C0

    ld b, $E0                                     ; $7ED6: $06 $E0
    inc bc                                        ; $7ED8: $03
    inc bc                                        ; $7ED9: $03
    ld bc, $62E7                                  ; $7EDA: $01 $E7 $62
    nop                                           ; $7EDD: $00
    nop                                           ; $7EDE: $00
    ld a, a                                       ; $7EDF: $7F
    ld c, $FF                                     ; $7EE0: $0E $FF
    ld a, a                                       ; $7EE2: $7F
    add a                                         ; $7EE3: $87
    ld d, l                                       ; $7EE4: $55
    nop                                           ; $7EE5: $00
    nop                                           ; $7EE6: $00
    rst RST_18                                    ; $7EE7: $DF
    ld e, c                                       ; $7EE8: $59
    ld a, e                                       ; $7EE9: $7B
    ld a, a                                       ; $7EEA: $7F
    ld c, l                                       ; $7EEB: $4D
    ld [hl], d                                    ; $7EEC: $72
    nop                                           ; $7EED: $00
    nop                                           ; $7EEE: $00
    rst RST_18                                    ; $7EEF: $DF
    ld a, l                                       ; $7EF0: $7D
    rst RST_38                                    ; $7EF1: $FF
    rrca                                          ; $7EF2: $0F
    add a                                         ; $7EF3: $87
    ld d, l                                       ; $7EF4: $55
    nop                                           ; $7EF5: $00
    nop                                           ; $7EF6: $00
    cp a                                          ; $7EF7: $BF
    ld a, [hl]                                    ; $7EF8: $7E
    rst RST_38                                    ; $7EF9: $FF
    ld a, a                                       ; $7EFA: $7F
    dec l                                         ; $7EFB: $2D
    ld e, [hl]                                    ; $7EFC: $5E
    nop                                           ; $7EFD: $00
    nop                                           ; $7EFE: $00
    cp a                                          ; $7EFF: $BF
    inc l                                         ; $7F00: $2C
    rst RST_38                                    ; $7F01: $FF
    ld l, $2D                                     ; $7F02: $2E $2D
    ld e, [hl]                                    ; $7F04: $5E
    nop                                           ; $7F05: $00
    nop                                           ; $7F06: $00
    ldh [rNR34], a                                ; $7F07: $E0 $1E
    rst RST_38                                    ; $7F09: $FF
    ld a, a                                       ; $7F0A: $7F
    halt                                          ; $7F0B: $76
    ld d, [hl]                                    ; $7F0C: $56
    nop                                           ; $7F0D: $00
    nop                                           ; $7F0E: $00
    rst RST_20                                    ; $7F0F: $E7
    ld e, $FF                                     ; $7F10: $1E $FF
    ld a, a                                       ; $7F12: $7F
    add a                                         ; $7F13: $87
    ld d, l                                       ; $7F14: $55
    nop                                           ; $7F15: $00
    nop                                           ; $7F16: $00
    rst RST_28                                    ; $7F17: $EF
    dec a                                         ; $7F18: $3D
    or l                                          ; $7F19: $B5
    ld d, [hl]                                    ; $7F1A: $56
    ld d, b                                       ; $7F1B: $50
    ld d, [hl]                                    ; $7F1C: $56
    nop                                           ; $7F1D: $00
    nop                                           ; $7F1E: $00
    cp h                                          ; $7F1F: $BC
    ld c, $FF                                     ; $7F20: $0E $FF
    rrca                                          ; $7F22: $0F
    add a                                         ; $7F23: $87
    ld d, l                                       ; $7F24: $55
    nop                                           ; $7F25: $00
    nop                                           ; $7F26: $00
    ld a, [bc]                                    ; $7F27: $0A
    ld a, [hl]                                    ; $7F28: $7E
    rst RST_38                                    ; $7F29: $FF
    ld a, a                                       ; $7F2A: $7F
    add a                                         ; $7F2B: $87
    ld d, l                                       ; $7F2C: $55
    nop                                           ; $7F2D: $00
    nop                                           ; $7F2E: $00
    ld [hl], a                                    ; $7F2F: $77
    cpl                                           ; $7F30: $2F
    rst RST_38                                    ; $7F31: $FF
    ld a, a                                       ; $7F32: $7F
    add a                                         ; $7F33: $87
    ld d, l                                       ; $7F34: $55
    nop                                           ; $7F35: $00
    nop                                           ; $7F36: $00
    rst RST_30                                    ; $7F37: $F7
    ld e, [hl]                                    ; $7F38: $5E
    rst RST_38                                    ; $7F39: $FF
    ld a, a                                       ; $7F3A: $7F
    sub h                                         ; $7F3B: $94
    ld l, $00                                     ; $7F3C: $2E $00
    nop                                           ; $7F3E: $00
    ld l, a                                       ; $7F3F: $6F
    ld c, l                                       ; $7F40: $4D
    ld a, e                                       ; $7F41: $7B
    ld a, a                                       ; $7F42: $7F
    sub h                                         ; $7F43: $94
    ld l, $00                                     ; $7F44: $2E $00
    nop                                           ; $7F46: $00
    rst RST_38                                    ; $7F47: $FF
    inc d                                         ; $7F48: $14
    rst RST_38                                    ; $7F49: $FF
    cpl                                           ; $7F4A: $2F
    jr jr_034_7F88                                ; $7F4B: $18 $3B

    nop                                           ; $7F4D: $00
    nop                                           ; $7F4E: $00
    ld [hl], e                                    ; $7F4F: $73
    ld a, l                                       ; $7F50: $7D
    dec a                                         ; $7F51: $3D
    ld a, a                                       ; $7F52: $7F
    db $ED                                        ; $7F53: $ED
    ld a, [hl+]                                   ; $7F54: $2A
    nop                                           ; $7F55: $00
    nop                                           ; $7F56: $00
    pop af                                        ; $7F57: $F1
    ld h, d                                       ; $7F58: $62
    rst RST_38                                    ; $7F59: $FF
    ld a, a                                       ; $7F5A: $7F
    xor a                                         ; $7F5B: $AF
    ld d, [hl]                                    ; $7F5C: $56
    nop                                           ; $7F5D: $00
    nop                                           ; $7F5E: $00
    cp a                                          ; $7F5F: $BF
    inc l                                         ; $7F60: $2C
    ld a, a                                       ; $7F61: $7F
    ld e, a                                       ; $7F62: $5F
    add a                                         ; $7F63: $87
    ld d, l                                       ; $7F64: $55
    nop                                           ; $7F65: $00
    nop                                           ; $7F66: $00
    cp a                                          ; $7F67: $BF
    inc l                                         ; $7F68: $2C
    rst RST_38                                    ; $7F69: $FF
    ld a, a                                       ; $7F6A: $7F
    add a                                         ; $7F6B: $87
    ld d, l                                       ; $7F6C: $55
    nop                                           ; $7F6D: $00
    nop                                           ; $7F6E: $00
    and a                                         ; $7F6F: $A7
    ld e, $FF                                     ; $7F70: $1E $FF
    ld c, a                                       ; $7F72: $4F
    add a                                         ; $7F73: $87
    ld d, l                                       ; $7F74: $55
    nop                                           ; $7F75: $00
    nop                                           ; $7F76: $00
    rst RST_30                                    ; $7F77: $F7
    ld e, [hl]                                    ; $7F78: $5E
    rst RST_38                                    ; $7F79: $FF
    ld a, a                                       ; $7F7A: $7F
    sub h                                         ; $7F7B: $94
    ld l, $00                                     ; $7F7C: $2E $00
    nop                                           ; $7F7E: $00
    di                                            ; $7F7F: $F3
    ld a, h                                       ; $7F80: $7C
    rst RST_38                                    ; $7F81: $FF
    ld a, a                                       ; $7F82: $7F
    sub h                                         ; $7F83: $94
    ld l, $00                                     ; $7F84: $2E $00
    nop                                           ; $7F86: $00
    ld a, a                                       ; $7F87: $7F

jr_034_7F88:
    inc c                                         ; $7F88: $0C
    rst RST_28                                    ; $7F89: $EF
    ld h, a                                       ; $7F8A: $67
    or l                                          ; $7F8B: $B5
    ld a, [hl+]                                   ; $7F8C: $2A
    nop                                           ; $7F8D: $00
    nop                                           ; $7F8E: $00
    ld l, a                                       ; $7F8F: $6F
    ld e, [hl]                                    ; $7F90: $5E
    rst RST_38                                    ; $7F91: $FF
    rrca                                          ; $7F92: $0F
    sub h                                         ; $7F93: $94
    ld l, $00                                     ; $7F94: $2E $00
    nop                                           ; $7F96: $00
    ld a, a                                       ; $7F97: $7F
    inc c                                         ; $7F98: $0C
    rst RST_38                                    ; $7F99: $FF
    ld a, a                                       ; $7F9A: $7F
    dec l                                         ; $7F9B: $2D
    ld e, [hl]                                    ; $7F9C: $5E
    nop                                           ; $7F9D: $00
    nop                                           ; $7F9E: $00
    or l                                          ; $7F9F: $B5
    ld d, [hl]                                    ; $7FA0: $56
    rst RST_38                                    ; $7FA1: $FF
    ld a, a                                       ; $7FA2: $7F
    dec l                                         ; $7FA3: $2D
    ld e, [hl]                                    ; $7FA4: $5E
    nop                                           ; $7FA5: $00
    nop                                           ; $7FA6: $00
    ccf                                           ; $7FA7: $3F
    ld l, l                                       ; $7FA8: $6D
    rst RST_38                                    ; $7FA9: $FF
    ld a, a                                       ; $7FAA: $7F
    sub h                                         ; $7FAB: $94
    ld d, [hl]                                    ; $7FAC: $56
    nop                                           ; $7FAD: $00
    nop                                           ; $7FAE: $00
    rst RST_38                                    ; $7FAF: $FF
    rlca                                          ; $7FB0: $07
    rst RST_38                                    ; $7FB1: $FF
    ld a, a                                       ; $7FB2: $7F
    sub h                                         ; $7FB3: $94
    ld l, $00                                     ; $7FB4: $2E $00
    nop                                           ; $7FB6: $00
    rst RST_38                                    ; $7FB7: $FF
    dec c                                         ; $7FB8: $0D
    rst RST_38                                    ; $7FB9: $FF
    rrca                                          ; $7FBA: $0F
    ld sp, $0036                                  ; $7FBB: $31 $36 $00
    nop                                           ; $7FBE: $00
    rst RST_38                                    ; $7FBF: $FF
    ld a, a                                       ; $7FC0: $7F
    rst RST_20                                    ; $7FC1: $E7
    ld a, l                                       ; $7FC2: $7D
    dec l                                         ; $7FC3: $2D
    ld e, [hl]                                    ; $7FC4: $5E
    nop                                           ; $7FC5: $00
    nop                                           ; $7FC6: $00
    add hl, sp                                    ; $7FC7: $39
    ld c, $FF                                     ; $7FC8: $0E $FF
    rrca                                          ; $7FCA: $0F
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
