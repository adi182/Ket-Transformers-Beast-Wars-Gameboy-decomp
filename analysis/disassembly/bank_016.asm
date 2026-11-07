; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $016", ROMX[$4000], BANK[$16]

    nop                                           ; $4000: $00
    nop                                           ; $4001: $00
    nop                                           ; $4002: $00
    nop                                           ; $4003: $00
    nop                                           ; $4004: $00
    nop                                           ; $4005: $00
    rrca                                          ; $4006: $0F
    nop                                           ; $4007: $00
    inc e                                         ; $4008: $1C
    inc bc                                        ; $4009: $03
    ld e, $01                                     ; $400A: $1E $01
    rra                                           ; $400C: $1F
    nop                                           ; $400D: $00
    rra                                           ; $400E: $1F
    nop                                           ; $400F: $00
    rrca                                          ; $4010: $0F
    nop                                           ; $4011: $00
    rra                                           ; $4012: $1F
    ld [bc], a                                    ; $4013: $02
    cpl                                           ; $4014: $2F
    rla                                           ; $4015: $17
    ld c, a                                       ; $4016: $4F
    db $30, $88                                   ; $4017: $30 $88
    ld [hl], a                                    ; $4019: $77
    add h                                         ; $401A: $84
    ld a, e                                       ; $401B: $7B
    sbc h                                         ; $401C: $9C
    ld h, e                                       ; $401D: $63
    cp a                                          ; $401E: $BF
    ld b, b                                       ; $401F: $40
    nop                                           ; $4020: $00
    nop                                           ; $4021: $00
    nop                                           ; $4022: $00
    nop                                           ; $4023: $00
    nop                                           ; $4024: $00
    nop                                           ; $4025: $00
    rlca                                          ; $4026: $07
    nop                                           ; $4027: $00
    rst RST_00                                    ; $4028: $C7
    ld [bc], a                                    ; $4029: $02
    inc hl                                        ; $402A: $23
    pop bc                                        ; $402B: $C1
    sub e                                         ; $402C: $93
    pop hl                                        ; $402D: $E1
    ld a, l                                       ; $402E: $7D
    ldh [c], a                                    ; $402F: $E2
    cp [hl]                                       ; $4030: $BE
    ld l, l                                       ; $4031: $6D
    sbc a                                         ; $4032: $9F
    ld l, [hl]                                    ; $4033: $6E
    rst RST_28                                    ; $4034: $EF
    halt                                          ; $4035: $76
    rst RST_38                                    ; $4036: $FF
    or b                                          ; $4037: $B0
    call c, $7E2B                                 ; $4038: $DC $2B $7E
    sbc e                                         ; $403B: $9B
    ld a, a                                       ; $403C: $7F
    sbc l                                         ; $403D: $9D
    rst RST_38                                    ; $403E: $FF
    ld e, $00                                     ; $403F: $1E $00
    nop                                           ; $4041: $00
    nop                                           ; $4042: $00
    nop                                           ; $4043: $00
    ldh a, [rP1]                                  ; $4044: $F0 $00
    ret z                                         ; $4046: $C8

    or b                                          ; $4047: $B0
    db $FC                                        ; $4048: $FC
    adc b                                         ; $4049: $88
    db $FC                                        ; $404A: $FC
    ldh a, [$FFF2]                                ; $404B: $F0 $F2
    adc h                                         ; $404D: $8C
    ldh a, [c]                                    ; $404E: $F2
    ld l, h                                       ; $404F: $6C
    inc hl                                        ; $4050: $23
    call c, $4BB7                                 ; $4051: $DC $B7 $4B
    ld c, a                                       ; $4054: $4F
    or [hl]                                       ; $4055: $B6
    rst RST_38                                    ; $4056: $FF
    nop                                           ; $4057: $00
    ld a, c                                       ; $4058: $79
    or [hl]                                       ; $4059: $B6
    ld a, c                                       ; $405A: $79
    sub $FF                                       ; $405B: $D6 $FF
    adc $CF                                       ; $405D: $CE $CF
    ld sp, $00F0                                  ; $405F: $31 $F0 $00
    adc b                                         ; $4062: $88
    ld [hl], b                                    ; $4063: $70
    ld l, b                                       ; $4064: $68
    ldh a, [$FFD0]                                ; $4065: $F0 $D0
    ldh [$FF30], a                                ; $4067: $E0 $30
    ldh [$FFE0], a                                ; $4069: $E0 $E0
    ret nz                                        ; $406B: $C0

    ret nz                                        ; $406C: $C0

    nop                                           ; $406D: $00
    ret nz                                        ; $406E: $C0

    nop                                           ; $406F: $00
    or b                                          ; $4070: $B0
    ld b, b                                       ; $4071: $40
    ld [$0EF0], sp                                ; $4072: $08 $F0 $0E
    ldh a, [$FF1F]                                ; $4075: $F0 $1F
    xor $1F                                       ; $4077: $EE $1F
    add sp, -$04                                  ; $4079: $E8 $FC
    jr @+$80                                      ; $407B: $18 $7E

    add h                                         ; $407D: $84
    xor $10                                       ; $407E: $EE $10
    rst RST_38                                    ; $4080: $FF
    ld [bc], a                                    ; $4081: $02
    rst RST_38                                    ; $4082: $FF
    ld a, [de]                                    ; $4083: $1A
    rst RST_38                                    ; $4084: $FF
    ld a, [hl+]                                   ; $4085: $2A
    ld a, a                                       ; $4086: $7F
    jr z, jr_016_40C8                             ; $4087: $28 $3F

    inc d                                         ; $4089: $14
    inc e                                         ; $408A: $1C
    inc bc                                        ; $408B: $03
    jr c, jr_016_409D                             ; $408C: $38 $0F

    jr c, @+$11                                   ; $408E: $38 $0F

    cpl                                           ; $4090: $2F
    rla                                           ; $4091: $17
    daa                                           ; $4092: $27
    jr jr_016_40B8                                ; $4093: $18 $23

    inc e                                         ; $4095: $1C
    dec h                                         ; $4096: $25
    jr @+$1D                                      ; $4097: $18 $1B

    ld bc, $0103                                  ; $4099: $01 $03 $01
    inc bc                                        ; $409C: $03

jr_016_409D:
    ld bc, $0207                                  ; $409D: $01 $07 $02
    rst RST_18                                    ; $40A0: $DF
    xor a                                         ; $40A1: $AF
    rst RST_08                                    ; $40A2: $CF
    or a                                          ; $40A3: $B7
    rst RST_20                                    ; $40A4: $E7
    sbc e                                         ; $40A5: $9B
    rst RST_28                                    ; $40A6: $EF
    ld e, b                                       ; $40A7: $58
    rst RST_38                                    ; $40A8: $FF
    ret nc                                        ; $40A9: $D0

    ld hl, sp+$27                                 ; $40AA: $F8 $27
    ld l, b                                       ; $40AC: $68
    rst RST_00                                    ; $40AD: $C7
    ret nc                                        ; $40AE: $D0

    adc a                                         ; $40AF: $8F
    db $FC                                        ; $40B0: $FC
    inc bc                                        ; $40B1: $03
    ld [$FF15], a                                 ; $40B2: $EA $15 $FF
    add b                                         ; $40B5: $80
    db $EB                                        ; $40B6: $EB
    sub h                                         ; $40B7: $94

jr_016_40B8:
    sbc a                                         ; $40B8: $9F
    ld h, d                                       ; $40B9: $62
    add a                                         ; $40BA: $87
    ld a, d                                       ; $40BB: $7A
    adc [hl]                                      ; $40BC: $8E
    ld [hl], h                                    ; $40BD: $74
    ld c, $F4                                     ; $40BE: $0E $F4
    or a                                          ; $40C0: $B7
    ld a, e                                       ; $40C1: $7B
    cp a                                          ; $40C2: $BF
    ld [hl], b                                    ; $40C3: $70
    db $FC                                        ; $40C4: $FC
    or e                                          ; $40C5: $B3
    db $FC                                        ; $40C6: $FC
    inc bc                                        ; $40C7: $03

jr_016_40C8:
    ei                                            ; $40C8: $FB
    ld [hl], h                                    ; $40C9: $74
    ld a, b                                       ; $40CA: $78
    or a                                          ; $40CB: $B7
    ld a, b                                       ; $40CC: $78
    or a                                          ; $40CD: $B7
    ld a, b                                       ; $40CE: $78
    add a                                         ; $40CF: $87
    add a                                         ; $40D0: $87
    nop                                           ; $40D1: $00
    add a                                         ; $40D2: $87
    inc bc                                        ; $40D3: $03
    rlca                                          ; $40D4: $07
    inc bc                                        ; $40D5: $03
    rlca                                          ; $40D6: $07
    inc bc                                        ; $40D7: $03
    rlca                                          ; $40D8: $07
    inc bc                                        ; $40D9: $03
    rlca                                          ; $40DA: $07
    inc bc                                        ; $40DB: $03
    rlca                                          ; $40DC: $07
    inc bc                                        ; $40DD: $03
    rrca                                          ; $40DE: $0F
    rlca                                          ; $40DF: $07
    add sp, -$70                                  ; $40E0: $E8 $90
    ret c                                         ; $40E2: $D8

    and b                                         ; $40E3: $A0
    add sp, -$30                                  ; $40E4: $E8 $D0
    ld hl, sp-$40                                 ; $40E6: $F8 $C0
    ret nc                                        ; $40E8: $D0

    and b                                         ; $40E9: $A0
    ret nc                                        ; $40EA: $D0

    and b                                         ; $40EB: $A0

jr_016_40EC:
    ret nc                                        ; $40EC: $D0

    and b                                         ; $40ED: $A0

jr_016_40EE:
    ret nc                                        ; $40EE: $D0

    and b                                         ; $40EF: $A0
    ret nc                                        ; $40F0: $D0

    and b                                         ; $40F1: $A0
    ldh a, [$FF80]                                ; $40F2: $F0 $80
    ret z                                         ; $40F4: $C8

    or b                                          ; $40F5: $B0
    call nz, Call_016_6238                        ; $40F6: $C4 $38 $62
    inc e                                         ; $40F9: $1C
    ld e, $00                                     ; $40FA: $1E $00
    nop                                           ; $40FC: $00

jr_016_40FD:
    nop                                           ; $40FD: $00
    nop                                           ; $40FE: $00
    nop                                           ; $40FF: $00
    rlca                                          ; $4100: $07
    ld [bc], a                                    ; $4101: $02
    rlca                                          ; $4102: $07
    ld [bc], a                                    ; $4103: $02
    ld c, $05                                     ; $4104: $0E $05
    rrca                                          ; $4106: $0F
    inc b                                         ; $4107: $04
    ld b, $01                                     ; $4108: $06 $01
    inc b                                         ; $410A: $04
    inc bc                                        ; $410B: $03
    ld [$0F07], sp                                ; $410C: $08 $07 $0F
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
    ld c, $F4                                     ; $4120: $0E $F4
    inc e                                         ; $4122: $1C
    add sp, $1C                                   ; $4123: $E8 $1C
    add sp, -$48                                  ; $4125: $E8 $B8
    ld d, b                                       ; $4127: $50
    ld a, b                                       ; $4128: $78
    sub b                                         ; $4129: $90
    jr c, jr_016_40EC                             ; $412A: $38 $C0

    jr nz, jr_016_40EE                            ; $412C: $20 $C0

    ldh [rP1], a                                  ; $412E: $E0 $00
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

Jump_016_413C:
    nop                                           ; $413C: $00
    nop                                           ; $413D: $00
    nop                                           ; $413E: $00
    nop                                           ; $413F: $00
    rrca                                          ; $4140: $0F
    rlca                                          ; $4141: $07
    rrca                                          ; $4142: $0F
    rlca                                          ; $4143: $07
    rrca                                          ; $4144: $0F
    ld bc, $0001                                  ; $4145: $01 $01 $00
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
    nop                                           ; $4160: $00
    nop                                           ; $4161: $00
    rrca                                          ; $4162: $0F
    nop                                           ; $4163: $00
    inc e                                         ; $4164: $1C
    inc bc                                        ; $4165: $03
    ld e, $01                                     ; $4166: $1E $01
    rra                                           ; $4168: $1F
    nop                                           ; $4169: $00
    rra                                           ; $416A: $1F
    nop                                           ; $416B: $00
    rrca                                          ; $416C: $0F
    nop                                           ; $416D: $00
    rra                                           ; $416E: $1F
    ld [bc], a                                    ; $416F: $02
    cpl                                           ; $4170: $2F
    rla                                           ; $4171: $17
    ld c, a                                       ; $4172: $4F
    jr nc, jr_016_40FD                            ; $4173: $30 $88

    ld [hl], a                                    ; $4175: $77
    add h                                         ; $4176: $84
    ld a, e                                       ; $4177: $7B
    sbc l                                         ; $4178: $9D
    ld h, d                                       ; $4179: $62
    cp a                                          ; $417A: $BF
    ld b, b                                       ; $417B: $40
    rst RST_38                                    ; $417C: $FF
    ld b, $FF                                     ; $417D: $06 $FF
    ld a, [de]                                    ; $417F: $1A
    nop                                           ; $4180: $00
    nop                                           ; $4181: $00
    nop                                           ; $4182: $00
    nop                                           ; $4183: $00
    rst RST_00                                    ; $4184: $C7
    nop                                           ; $4185: $00
    daa                                           ; $4186: $27
    jp nz, $E193                                  ; $4187: $C2 $93 $E1

    ld a, e                                       ; $418A: $7B
    pop af                                        ; $418B: $F1
    cp l                                          ; $418C: $BD
    ld h, d                                       ; $418D: $62
    sbc [hl]                                      ; $418E: $9E
    ld l, l                                       ; $418F: $6D
    rst RST_28                                    ; $4190: $EF
    halt                                          ; $4191: $76
    rst RST_38                                    ; $4192: $FF
    or [hl]                                       ; $4193: $B6
    rst RST_18                                    ; $4194: $DF
    jr nz, jr_016_4213                            ; $4195: $20 $7C

    adc e                                         ; $4197: $8B
    cp $1B                                        ; $4198: $FE $1B
    rst RST_38                                    ; $419A: $FF
    sbc l                                         ; $419B: $9D
    rst RST_38                                    ; $419C: $FF
    sbc [hl]                                      ; $419D: $9E
    rst RST_18                                    ; $419E: $DF
    cpl                                           ; $419F: $2F
    nop                                           ; $41A0: $00
    nop                                           ; $41A1: $00
    ldh a, [rP1]                                  ; $41A2: $F0 $00
    ret z                                         ; $41A4: $C8

    or b                                          ; $41A5: $B0
    db $FC                                        ; $41A6: $FC
    adc b                                         ; $41A7: $88
    db $FC                                        ; $41A8: $FC
    ldh a, [$FFF2]                                ; $41A9: $F0 $F2
    adc h                                         ; $41AB: $8C
    di                                            ; $41AC: $F3
    ld l, h                                       ; $41AD: $6C
    inc hl                                        ; $41AE: $23
    call c, $CB37                                 ; $41AF: $DC $37 $CB
    ld c, a                                       ; $41B2: $4F
    or [hl]                                       ; $41B3: $B6
    rst RST_38                                    ; $41B4: $FF
    nop                                           ; $41B5: $00
    ld a, c                                       ; $41B6: $79
    or [hl]                                       ; $41B7: $B6
    ld a, c                                       ; $41B8: $79
    sub $FF                                       ; $41B9: $D6 $FF
    adc $CF                                       ; $41BB: $CE $CF
    ld sp, $78B7                                  ; $41BD: $31 $B7 $78
    ldh a, [rP1]                                  ; $41C0: $F0 $00
    adc b                                         ; $41C2: $88
    ld [hl], b                                    ; $41C3: $70
    add sp, $70                                   ; $41C4: $E8 $70
    ret nc                                        ; $41C6: $D0

    ldh [$FF30], a                                ; $41C7: $E0 $30
    ldh [$FFE0], a                                ; $41C9: $E0 $E0
    ret nz                                        ; $41CB: $C0

    ret nz                                        ; $41CC: $C0

    nop                                           ; $41CD: $00
    ret nz                                        ; $41CE: $C0

    nop                                           ; $41CF: $00
    or b                                          ; $41D0: $B0
    ld b, b                                       ; $41D1: $40
    rrca                                          ; $41D2: $0F
    ldh a, [rIF]                                  ; $41D3: $F0 $0F
    ldh a, [c]                                    ; $41D5: $F2
    ld e, $EC                                     ; $41D6: $1E $EC
    inc e                                         ; $41D8: $1C
    add sp, -$44                                  ; $41D9: $E8 $BC
    ld e, b                                       ; $41DB: $58
    cp $04                                        ; $41DC: $FE $04
    halt                                          ; $41DE: $76
    add b                                         ; $41DF: $80
    rst RST_38                                    ; $41E0: $FF
    add hl, hl                                    ; $41E1: $29
    ld a, a                                       ; $41E2: $7F
    ld d, $7E                                     ; $41E3: $16 $7E
    ld bc, $3F60                                  ; $41E5: $01 $60 $3F
    ldh [$FF3F], a                                ; $41E8: $E0 $3F
    pop hl                                        ; $41EA: $E1
    ccf                                           ; $41EB: $3F
    cp a                                          ; $41EC: $BF
    ld e, [hl]                                    ; $41ED: $5E
    sbc [hl]                                      ; $41EE: $9E
    ld h, b                                       ; $41EF: $60
    add h                                         ; $41F0: $84
    ld a, b                                       ; $41F1: $78
    sbc b                                         ; $41F2: $98
    ld h, b                                       ; $41F3: $60
    ld h, c                                       ; $41F4: $61
    nop                                           ; $41F5: $00
    ld bc, $0300                                  ; $41F6: $01 $00 $03
    ld bc, $0103                                  ; $41F9: $01 $03 $01
    inc bc                                        ; $41FC: $03
    ld bc, $0207                                  ; $41FD: $01 $07 $02
    rst RST_28                                    ; $4200: $EF
    sub a                                         ; $4201: $97
    rst RST_38                                    ; $4202: $FF
    db $D3                                        ; $4203: $D3
    di                                            ; $4204: $F3
    jr nz, @+$69                                  ; $4205: $20 $67

    ret nz                                        ; $4207: $C0

    call nz, $8883                                ; $4208: $C4 $83 $88
    rlca                                          ; $420B: $07
    ld [$1007], sp                                ; $420C: $08 $07 $10
    rrca                                          ; $420F: $0F
    inc a                                         ; $4210: $3C
    inc bc                                        ; $4211: $03
    rst RST_30                                    ; $4212: $F7

jr_016_4213:
    ld [$94EB], sp                                ; $4213: $08 $EB $94
    rst RST_30                                    ; $4216: $F7
    adc b                                         ; $4217: $88
    sbc a                                         ; $4218: $9F
    ld h, d                                       ; $4219: $62
    add a                                         ; $421A: $87
    ld a, d                                       ; $421B: $7A
    adc [hl]                                      ; $421C: $8E
    ld [hl], h                                    ; $421D: $74
    ld c, $F4                                     ; $421E: $0E $F4
    cp h                                          ; $4220: $BC
    ld [hl], e                                    ; $4221: $73
    db $FC                                        ; $4222: $FC
    or e                                          ; $4223: $B3
    rst RST_38                                    ; $4224: $FF
    nop                                           ; $4225: $00
    ei                                            ; $4226: $FB
    ld [hl], h                                    ; $4227: $74
    ld a, b                                       ; $4228: $78
    or a                                          ; $4229: $B7
    ld a, b                                       ; $422A: $78
    or a                                          ; $422B: $B7
    ld a, b                                       ; $422C: $78
    add a                                         ; $422D: $87
    add h                                         ; $422E: $84
    inc bc                                        ; $422F: $03
    add a                                         ; $4230: $87
    nop                                           ; $4231: $00
    rlca                                          ; $4232: $07
    inc bc                                        ; $4233: $03
    rlca                                          ; $4234: $07
    inc bc                                        ; $4235: $03
    rlca                                          ; $4236: $07
    inc bc                                        ; $4237: $03

Call_016_4238:
    rlca                                          ; $4238: $07
    inc bc                                        ; $4239: $03
    rlca                                          ; $423A: $07
    inc bc                                        ; $423B: $03
    rlca                                          ; $423C: $07
    inc bc                                        ; $423D: $03
    rrca                                          ; $423E: $0F
    rlca                                          ; $423F: $07
    ld a, b                                       ; $4240: $78
    add b                                         ; $4241: $80
    add sp, $10                                   ; $4242: $E8 $10
    add sp, -$70                                  ; $4244: $E8 $90
    ret c                                         ; $4246: $D8

    and b                                         ; $4247: $A0
    add sp, -$30                                  ; $4248: $E8 $D0
    ld hl, sp-$40                                 ; $424A: $F8 $C0

jr_016_424C:
    ret nc                                        ; $424C: $D0

    and b                                         ; $424D: $A0

jr_016_424E:
    ret nc                                        ; $424E: $D0

    and b                                         ; $424F: $A0
    ret nc                                        ; $4250: $D0

    and b                                         ; $4251: $A0
    ret nc                                        ; $4252: $D0

    and b                                         ; $4253: $A0
    ret nc                                        ; $4254: $D0

    and b                                         ; $4255: $A0
    ldh a, [$FF80]                                ; $4256: $F0 $80
    ret z                                         ; $4258: $C8

    or b                                          ; $4259: $B0
    call nz, Call_016_6238                        ; $425A: $C4 $38 $62
    inc e                                         ; $425D: $1C
    ld e, $00                                     ; $425E: $1E $00
    rlca                                          ; $4260: $07
    ld [bc], a                                    ; $4261: $02
    rlca                                          ; $4262: $07
    ld [bc], a                                    ; $4263: $02
    ld c, $05                                     ; $4264: $0E $05
    rrca                                          ; $4266: $0F
    inc b                                         ; $4267: $04
    ld b, $01                                     ; $4268: $06 $01
    inc b                                         ; $426A: $04
    inc bc                                        ; $426B: $03
    ld [$0F07], sp                                ; $426C: $08 $07 $0F
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
    nop                                           ; $427A: $00
    nop                                           ; $427B: $00
    nop                                           ; $427C: $00
    nop                                           ; $427D: $00
    nop                                           ; $427E: $00
    nop                                           ; $427F: $00
    ld c, $F4                                     ; $4280: $0E $F4
    inc e                                         ; $4282: $1C
    add sp, $1C                                   ; $4283: $E8 $1C
    add sp, -$48                                  ; $4285: $E8 $B8
    ld d, b                                       ; $4287: $50
    ld a, b                                       ; $4288: $78
    sub b                                         ; $4289: $90
    jr c, jr_016_424C                             ; $428A: $38 $C0

    jr nz, jr_016_424E                            ; $428C: $20 $C0

    ldh [rP1], a                                  ; $428E: $E0 $00
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
    nop                                           ; $429E: $00
    nop                                           ; $429F: $00
    rrca                                          ; $42A0: $0F
    rlca                                          ; $42A1: $07
    rrca                                          ; $42A2: $0F
    rlca                                          ; $42A3: $07
    rrca                                          ; $42A4: $0F
    ld bc, $0001                                  ; $42A5: $01 $01 $00
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
    nop                                           ; $42B8: $00
    nop                                           ; $42B9: $00
    nop                                           ; $42BA: $00
    nop                                           ; $42BB: $00
    nop                                           ; $42BC: $00
    nop                                           ; $42BD: $00
    nop                                           ; $42BE: $00
    nop                                           ; $42BF: $00
    rlca                                          ; $42C0: $07
    nop                                           ; $42C1: $00
    ld c, $01                                     ; $42C2: $0E $01
    rrca                                          ; $42C4: $0F
    nop                                           ; $42C5: $00
    rrca                                          ; $42C6: $0F
    nop                                           ; $42C7: $00
    rrca                                          ; $42C8: $0F
    nop                                           ; $42C9: $00
    rlca                                          ; $42CA: $07
    nop                                           ; $42CB: $00
    rrca                                          ; $42CC: $0F
    ld bc, $0B17                                  ; $42CD: $01 $17 $0B
    daa                                           ; $42D0: $27
    jr jr_016_4317                                ; $42D1: $18 $44

    dec sp                                        ; $42D3: $3B
    ld b, d                                       ; $42D4: $42
    dec a                                         ; $42D5: $3D
    ld c, [hl]                                    ; $42D6: $4E
    ld sp, $205F                                  ; $42D7: $31 $5F $20
    ld a, a                                       ; $42DA: $7F
    inc bc                                        ; $42DB: $03
    ld a, a                                       ; $42DC: $7F
    dec c                                         ; $42DD: $0D
    ld a, a                                       ; $42DE: $7F
    dec d                                         ; $42DF: $15
    add e                                         ; $42E0: $83
    nop                                           ; $42E1: $00
    ld h, e                                       ; $42E2: $63
    add c                                         ; $42E3: $81
    ld de, $C9E0                                  ; $42E4: $11 $E0 $C9
    ld [hl], b                                    ; $42E7: $70
    cp [hl]                                       ; $42E8: $BE
    ld [hl], c                                    ; $42E9: $71
    rst RST_18                                    ; $42EA: $DF
    ld [hl], $CF                                  ; $42EB: $36 $CF
    scf                                           ; $42ED: $37
    rst RST_30                                    ; $42EE: $F7
    cp e                                          ; $42EF: $BB
    rst RST_38                                    ; $42F0: $FF
    ld e, b                                       ; $42F1: $58
    ld l, [hl]                                    ; $42F2: $6E
    sub l                                         ; $42F3: $95
    ccf                                           ; $42F4: $3F
    call $CE3F                                    ; $42F5: $CD $3F $CE

jr_016_42F8:
    ccf                                           ; $42F8: $3F
    rst RST_08                                    ; $42F9: $CF
    rst RST_28                                    ; $42FA: $EF
    rla                                           ; $42FB: $17
    rst RST_20                                    ; $42FC: $E7
    ld e, e                                       ; $42FD: $5B
    db $E3                                        ; $42FE: $E3
    ld e, l                                       ; $42FF: $5D
    ld a, b                                       ; $4300: $78
    nop                                           ; $4301: $00
    db $E4                                        ; $4302: $E4
    ld e, b                                       ; $4303: $58
    cp $44                                        ; $4304: $FE $44
    cp $F8                                        ; $4306: $FE $F8
    ld sp, hl                                     ; $4308: $F9
    add $F9                                       ; $4309: $C6 $F9
    ld [hl], $11                                  ; $430B: $36 $11
    xor $FB                                       ; $430D: $EE $FB
    dec b                                         ; $430F: $05
    rst RST_20                                    ; $4310: $E7
    ld e, e                                       ; $4311: $5B
    rst RST_38                                    ; $4312: $FF
    nop                                           ; $4313: $00
    inc a                                         ; $4314: $3C
    db $DB                                        ; $4315: $DB
    inc a                                         ; $4316: $3C

jr_016_4317:
    db $EB                                        ; $4317: $EB
    rst RST_38                                    ; $4318: $FF
    rst RST_20                                    ; $4319: $E7
    rst RST_20                                    ; $431A: $E7
    jr jr_016_42F8                                ; $431B: $18 $DB

    cp l                                          ; $431D: $BD
    rst RST_18                                    ; $431E: $DF
    cp b                                          ; $431F: $B8
    ld hl, sp+$00                                 ; $4320: $F8 $00
    call nz, $B4B8                                ; $4322: $C4 $B8 $B4
    ld a, b                                       ; $4325: $78
    add sp, $70                                   ; $4326: $E8 $70
    sbc b                                         ; $4328: $98
    ld [hl], b                                    ; $4329: $70
    ldh a, [$FF60]                                ; $432A: $F0 $60
    ldh [rP1], a                                  ; $432C: $E0 $00
    ldh [$FF80], a                                ; $432E: $E0 $80
    ret c                                         ; $4330: $D8

    and b                                         ; $4331: $A0
    add h                                         ; $4332: $84
    ld a, b                                       ; $4333: $78
    ld b, $F8                                     ; $4334: $06 $F8
    adc a                                         ; $4336: $8F
    halt                                          ; $4337: $76
    ld a, a                                       ; $4338: $7F
    add h                                         ; $4339: $84
    ccf                                           ; $433A: $3F
    jp nz, $8876                                  ; $433B: $C2 $76 $88

    db $F4                                        ; $433E: $F4
    ld c, b                                       ; $433F: $48
    ccf                                           ; $4340: $3F
    dec d                                         ; $4341: $15
    rra                                           ; $4342: $1F
    nop                                           ; $4343: $00
    rrca                                          ; $4344: $0F
    nop                                           ; $4345: $00
    ld b, $03                                     ; $4346: $06 $03
    rlca                                          ; $4348: $07
    ld bc, $0205                                  ; $4349: $01 $05 $02
    inc b                                         ; $434C: $04
    inc bc                                        ; $434D: $03
    inc b                                         ; $434E: $04
    inc bc                                        ; $434F: $03
    dec b                                         ; $4350: $05

jr_016_4351:
    ld [bc], a                                    ; $4351: $02
    inc bc                                        ; $4352: $03
    nop                                           ; $4353: $00
    ld bc, $0300                                  ; $4354: $01 $00 $03
    ld bc, $0103                                  ; $4357: $01 $03 $01
    inc bc                                        ; $435A: $03
    ld bc, $0207                                  ; $435B: $01 $07 $02
    rlca                                          ; $435E: $07
    ld [bc], a                                    ; $435F: $02
    rst RST_20                                    ; $4360: $E7
    ld e, b                                       ; $4361: $58
    rst RST_20                                    ; $4362: $E7
    jr jr_016_4351                                ; $4363: $18 $EC

    db $D3                                        ; $4365: $D3
    ret z                                         ; $4366: $C8

    scf                                           ; $4367: $37
    sbc [hl]                                      ; $4368: $9E
    pop hl                                        ; $4369: $E1
    ei                                            ; $436A: $FB
    inc b                                         ; $436B: $04
    push af                                       ; $436C: $F5
    ld c, d                                       ; $436D: $4A
    ei                                            ; $436E: $FB
    ld b, h                                       ; $436F: $44
    rst RST_08                                    ; $4370: $CF
    or c                                          ; $4371: $B1
    jp $C7BD                                      ; $4372: $C3 $BD $C7


    cp d                                          ; $4375: $BA
    add a                                         ; $4376: $87
    ld a, d                                       ; $4377: $7A
    add a                                         ; $4378: $87
    ld a, d                                       ; $4379: $7A
    adc [hl]                                      ; $437A: $8E
    ld [hl], h                                    ; $437B: $74
    ld c, $F4                                     ; $437C: $0E $F4
    call c, $FE28                                 ; $437E: $DC $28 $FE
    reti                                          ; $4381: $D9


    rst RST_38                                    ; $4382: $FF
    nop                                           ; $4383: $00
    db $FC                                        ; $4384: $FC
    dec sp                                        ; $4385: $3B
    inc a                                         ; $4386: $3C
    db $DB                                        ; $4387: $DB
    inc a                                         ; $4388: $3C
    db $DB                                        ; $4389: $DB
    ccf                                           ; $438A: $3F
    ret nz                                        ; $438B: $C0

    ld b, e                                       ; $438C: $43
    add c                                         ; $438D: $81
    jp $8301                                      ; $438E: $C3 $01 $83


    ld bc, $0183                                  ; $4391: $01 $83 $01
    add e                                         ; $4394: $83
    ld bc, $0103                                  ; $4395: $01 $03 $01
    rlca                                          ; $4398: $07
    inc bc                                        ; $4399: $03
    rlca                                          ; $439A: $07
    inc bc                                        ; $439B: $03
    rlca                                          ; $439C: $07
    inc bc                                        ; $439D: $03
    rlca                                          ; $439E: $07
    nop                                           ; $439F: $00
    db $EC                                        ; $43A0: $EC
    ret nc                                        ; $43A1: $D0

    db $F4                                        ; $43A2: $F4
    add sp, -$04                                  ; $43A3: $E8 $FC
    ldh [$FFE8], a                                ; $43A5: $E0 $E8
    ret nc                                        ; $43A7: $D0

    add sp, -$30                                  ; $43A8: $E8 $D0
    add sp, -$30                                  ; $43AA: $E8 $D0
    add sp, -$30                                  ; $43AC: $E8 $D0
    add sp, -$30                                  ; $43AE: $E8 $D0
    ld hl, sp-$40                                 ; $43B0: $F8 $C0
    db $E4                                        ; $43B2: $E4
    ret c                                         ; $43B3: $D8

    ldh [c], a                                    ; $43B4: $E2
    inc e                                         ; $43B5: $1C
    ld sp, $0F0E                                  ; $43B6: $31 $0E $0F
    nop                                           ; $43B9: $00
    nop                                           ; $43BA: $00
    nop                                           ; $43BB: $00
    nop                                           ; $43BC: $00
    nop                                           ; $43BD: $00
    nop                                           ; $43BE: $00
    nop                                           ; $43BF: $00
    rst RST_08                                    ; $43C0: $CF
    ld [hl-], a                                   ; $43C1: $32
    add a                                         ; $43C2: $87
    ld a, b                                       ; $43C3: $78
    inc b                                         ; $43C4: $04
    ld hl, sp-$04                                 ; $43C5: $F8 $FC
    nop                                           ; $43C7: $00
    nop                                           ; $43C8: $00
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
    ld bc, $0100                                  ; $43E0: $01 $00 $01
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
    rrca                                          ; $4404: $0F
    nop                                           ; $4405: $00
    rra                                           ; $4406: $1F
    ld a, [bc]                                    ; $4407: $0A
    rra                                           ; $4408: $1F
    ld a, [bc]                                    ; $4409: $0A
    rra                                           ; $440A: $1F
    ld a, [bc]                                    ; $440B: $0A
    ld a, a                                       ; $440C: $7F
    nop                                           ; $440D: $00
    ld a, a                                       ; $440E: $7F
    cpl                                           ; $440F: $2F
    ccf                                           ; $4410: $3F
    rrca                                          ; $4411: $0F
    ccf                                           ; $4412: $3F
    rrca                                          ; $4413: $0F
    ccf                                           ; $4414: $3F
    ld bc, $003F                                  ; $4415: $01 $3F $00
    ld [hl+], a                                   ; $4418: $22
    dec e                                         ; $4419: $1D
    ld [hl+], a                                   ; $441A: $22
    dec e                                         ; $441B: $1D
    ld [hl+], a                                   ; $441C: $22
    dec e                                         ; $441D: $1D
    ld [hl+], a                                   ; $441E: $22
    dec e                                         ; $441F: $1D
    nop                                           ; $4420: $00
    nop                                           ; $4421: $00
    nop                                           ; $4422: $00
    nop                                           ; $4423: $00
    nop                                           ; $4424: $00
    nop                                           ; $4425: $00
    rst RST_00                                    ; $4426: $C7
    nop                                           ; $4427: $00
    rst RST_20                                    ; $4428: $E7
    add d                                         ; $4429: $82
    di                                            ; $442A: $F3
    add c                                         ; $442B: $81
    ei                                            ; $442C: $FB
    and c                                         ; $442D: $A1
    db $FD                                        ; $442E: $FD
    ld b, d                                       ; $442F: $42
    cp $8D                                        ; $4430: $FE $8D
    rst RST_28                                    ; $4432: $EF
    or [hl]                                       ; $4433: $B6
    rst RST_38                                    ; $4434: $FF
    or [hl]                                       ; $4435: $B6
    rst RST_18                                    ; $4436: $DF
    jr nz, jr_016_44B5                            ; $4437: $20 $7C

    adc e                                         ; $4439: $8B
    ld a, [hl]                                    ; $443A: $7E
    sbc e                                         ; $443B: $9B
    ld a, a                                       ; $443C: $7F
    sbc l                                         ; $443D: $9D
    ld a, a                                       ; $443E: $7F
    sbc [hl]                                      ; $443F: $9E
    nop                                           ; $4440: $00
    nop                                           ; $4441: $00
    nop                                           ; $4442: $00
    nop                                           ; $4443: $00
    ldh a, [rP1]                                  ; $4444: $F0 $00
    ret z                                         ; $4446: $C8

    or b                                          ; $4447: $B0
    db $FC                                        ; $4448: $FC
    adc b                                         ; $4449: $88
    db $FC                                        ; $444A: $FC
    ldh a, [$FFF2]                                ; $444B: $F0 $F2
    adc h                                         ; $444D: $8C
    di                                            ; $444E: $F3
    ld l, h                                       ; $444F: $6C
    inc hl                                        ; $4450: $23
    call c, $CB37                                 ; $4451: $DC $37 $CB
    ld c, a                                       ; $4454: $4F
    or [hl]                                       ; $4455: $B6
    rst RST_38                                    ; $4456: $FF
    nop                                           ; $4457: $00
    ld a, c                                       ; $4458: $79
    or [hl]                                       ; $4459: $B6
    ld a, c                                       ; $445A: $79
    sub $FF                                       ; $445B: $D6 $FF
    adc $CF                                       ; $445D: $CE $CF
    ld sp, $00F0                                  ; $445F: $31 $F0 $00
    adc b                                         ; $4462: $88
    ld [hl], b                                    ; $4463: $70
    add sp, $70                                   ; $4464: $E8 $70
    ret nc                                        ; $4466: $D0

    ldh [$FF30], a                                ; $4467: $E0 $30
    ldh [$FFE0], a                                ; $4469: $E0 $E0
    ret nz                                        ; $446B: $C0

    ret nz                                        ; $446C: $C0

    nop                                           ; $446D: $00
    ret nz                                        ; $446E: $C0

    nop                                           ; $446F: $00
    or b                                          ; $4470: $B0
    ld b, b                                       ; $4471: $40
    rrca                                          ; $4472: $0F
    ldh a, [rIF]                                  ; $4473: $F0 $0F
    ldh a, [c]                                    ; $4475: $F2
    ld e, $EC                                     ; $4476: $1E $EC
    inc e                                         ; $4478: $1C
    add sp, -$44                                  ; $4479: $E8 $BC
    ld e, b                                       ; $447B: $58
    ld a, [hl]                                    ; $447C: $7E
    inc b                                         ; $447D: $04
    ld b, $00                                     ; $447E: $06 $00
    ld [hl-], a                                   ; $4480: $32
    dec c                                         ; $4481: $0D
    dec sp                                        ; $4482: $3B
    inc d                                         ; $4483: $14
    ld h, [hl]                                    ; $4484: $66
    add hl, sp                                    ; $4485: $39
    ld h, b                                       ; $4486: $60
    ccf                                           ; $4487: $3F
    ld h, b                                       ; $4488: $60
    ccf                                           ; $4489: $3F
    ldh [$FF3F], a                                ; $448A: $E0 $3F
    pop hl                                        ; $448C: $E1
    ccf                                           ; $448D: $3F
    cp a                                          ; $448E: $BF
    ld e, [hl]                                    ; $448F: $5E
    sbc [hl]                                      ; $4490: $9E
    ld h, b                                       ; $4491: $60
    add h                                         ; $4492: $84
    ld a, b                                       ; $4493: $78
    sbc b                                         ; $4494: $98
    ld h, b                                       ; $4495: $60
    ld h, b                                       ; $4496: $60
    nop                                           ; $4497: $00
    nop                                           ; $4498: $00
    nop                                           ; $4499: $00
    nop                                           ; $449A: $00
    nop                                           ; $449B: $00
    nop                                           ; $449C: $00
    nop                                           ; $449D: $00
    nop                                           ; $449E: $00
    nop                                           ; $449F: $00
    ld e, a                                       ; $44A0: $5F
    xor a                                         ; $44A1: $AF
    adc a                                         ; $44A2: $8F
    ld [hl], a                                    ; $44A3: $77
    rra                                           ; $44A4: $1F
    di                                            ; $44A5: $F3
    scf                                           ; $44A6: $37
    ldh [$FF67], a                                ; $44A7: $E0 $67
    jp nz, $81C6                                  ; $44A9: $C2 $C6 $81

    add d                                         ; $44AC: $82
    ld bc, $0102                                  ; $44AD: $01 $02 $01
    ld [bc], a                                    ; $44B0: $02
    ld bc, $0102                                  ; $44B1: $01 $02 $01
    inc bc                                        ; $44B4: $03

jr_016_44B5:
    nop                                           ; $44B5: $00
    inc bc                                        ; $44B6: $03
    nop                                           ; $44B7: $00
    rlca                                          ; $44B8: $07
    ld [bc], a                                    ; $44B9: $02
    rlca                                          ; $44BA: $07
    inc bc                                        ; $44BB: $03
    rlca                                          ; $44BC: $07
    inc bc                                        ; $44BD: $03
    rlca                                          ; $44BE: $07
    inc bc                                        ; $44BF: $03
    or a                                          ; $44C0: $B7
    ld a, b                                       ; $44C1: $78
    cp h                                          ; $44C2: $BC
    ld [hl], e                                    ; $44C3: $73
    db $FC                                        ; $44C4: $FC
    or e                                          ; $44C5: $B3
    rst RST_38                                    ; $44C6: $FF
    nop                                           ; $44C7: $00
    db $FC                                        ; $44C8: $FC
    jr nc, @+$3C                                  ; $44C9: $30 $3A

    call nc, $D43A                                ; $44CB: $D4 $3A $D4
    ld a, [de]                                    ; $44CE: $1A
    db $E4                                        ; $44CF: $E4
    inc d                                         ; $44D0: $14
    add sp, -$0C                                  ; $44D1: $E8 $F4
    ld [$40BE], sp                                ; $44D3: $08 $BE $40

jr_016_44D6:
    ld e, [hl]                                    ; $44D6: $5E
    and h                                         ; $44D7: $A4
    cp [hl]                                       ; $44D8: $BE
    ld b, h                                       ; $44D9: $44
    rst RST_20                                    ; $44DA: $E7
    ld a, [de]                                    ; $44DB: $1A
    add a                                         ; $44DC: $87
    ld a, d                                       ; $44DD: $7A
    rst RST_00                                    ; $44DE: $C7
    cp d                                          ; $44DF: $BA
    db $FC                                        ; $44E0: $FC
    ld a, e                                       ; $44E1: $7B
    db $FC                                        ; $44E2: $FC
    ld a, e                                       ; $44E3: $7B
    cp $75                                        ; $44E4: $FE $75
    cp $05                                        ; $44E6: $FE $05
    daa                                           ; $44E8: $27
    ld a, [de]                                    ; $44E9: $1A
    ccf                                           ; $44EA: $3F
    ld [bc], a                                    ; $44EB: $02
    rlca                                          ; $44EC: $07
    nop                                           ; $44ED: $00
    ld bc, $0100                                  ; $44EE: $01 $00 $01
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
    jr c, @-$2E                                   ; $4500: $38 $D0

    jr c, @-$2E                                   ; $4502: $38 $D0

    jr c, jr_016_44D6                             ; $4504: $38 $D0

    inc e                                         ; $4506: $1C
    add sp, $7C                                   ; $4507: $E8 $7C
    adc b                                         ; $4509: $88
    sbc b                                         ; $450A: $98
    ld h, b                                       ; $450B: $60
    ld [$04F0], sp                                ; $450C: $08 $F0 $04
    ld hl, sp-$04                                 ; $450F: $F8 $FC
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
    nop                                           ; $451E: $00
    nop                                           ; $451F: $00
    nop                                           ; $4520: $00
    nop                                           ; $4521: $00
    nop                                           ; $4522: $00
    nop                                           ; $4523: $00
    nop                                           ; $4524: $00
    nop                                           ; $4525: $00
    rrca                                          ; $4526: $0F
    nop                                           ; $4527: $00
    rra                                           ; $4528: $1F
    inc b                                         ; $4529: $04
    ccf                                           ; $452A: $3F
    dec d                                         ; $452B: $15
    ccf                                           ; $452C: $3F
    ld bc, $1E3F                                  ; $452D: $01 $3F $1E
    ld a, a                                       ; $4530: $7F
    rra                                           ; $4531: $1F
    ld a, a                                       ; $4532: $7F
    rra                                           ; $4533: $1F
    ld a, a                                       ; $4534: $7F

jr_016_4535:
    inc bc                                        ; $4535: $03
    ld a, a                                       ; $4536: $7F
    nop                                           ; $4537: $00
    ld b, h                                       ; $4538: $44
    dec sp                                        ; $4539: $3B
    ld b, h                                       ; $453A: $44
    dec sp                                        ; $453B: $3B
    ld b, h                                       ; $453C: $44
    dec sp                                        ; $453D: $3B
    ld b, h                                       ; $453E: $44
    dec sp                                        ; $453F: $3B
    nop                                           ; $4540: $00
    nop                                           ; $4541: $00
    nop                                           ; $4542: $00
    nop                                           ; $4543: $00
    nop                                           ; $4544: $00
    nop                                           ; $4545: $00
    rlca                                          ; $4546: $07
    nop                                           ; $4547: $00
    rst RST_00                                    ; $4548: $C7
    ld [bc], a                                    ; $4549: $02
    db $E3                                        ; $454A: $E3
    add c                                         ; $454B: $81
    di                                            ; $454C: $F3
    ld b, c                                       ; $454D: $41
    db $FD                                        ; $454E: $FD
    ld b, d                                       ; $454F: $42
    cp $2D                                        ; $4550: $FE $2D
    sbc a                                         ; $4552: $9F
    ld l, [hl]                                    ; $4553: $6E
    rst RST_28                                    ; $4554: $EF
    halt                                          ; $4555: $76
    rst RST_38                                    ; $4556: $FF
    jr nc, jr_016_4535                            ; $4557: $30 $DC

    dec hl                                        ; $4559: $2B
    cp $1B                                        ; $455A: $FE $1B
    rst RST_38                                    ; $455C: $FF
    ld e, l                                       ; $455D: $5D
    rst RST_38                                    ; $455E: $FF
    ld e, $00                                     ; $455F: $1E $00
    nop                                           ; $4561: $00
    nop                                           ; $4562: $00
    nop                                           ; $4563: $00
    ldh a, [rP1]                                  ; $4564: $F0 $00
    ret z                                         ; $4566: $C8

    or b                                          ; $4567: $B0
    db $FC                                        ; $4568: $FC
    adc b                                         ; $4569: $88
    db $FC                                        ; $456A: $FC
    ldh a, [$FFF2]                                ; $456B: $F0 $F2
    adc h                                         ; $456D: $8C
    ldh a, [c]                                    ; $456E: $F2
    ld l, h                                       ; $456F: $6C
    inc hl                                        ; $4570: $23

jr_016_4571:
    call c, $4BB7                                 ; $4571: $DC $B7 $4B
    ld c, a                                       ; $4574: $4F
    or [hl]                                       ; $4575: $B6
    rst RST_38                                    ; $4576: $FF
    nop                                           ; $4577: $00
    ld a, c                                       ; $4578: $79
    or [hl]                                       ; $4579: $B6
    ld a, c                                       ; $457A: $79
    sub $FF                                       ; $457B: $D6 $FF
    adc $CF                                       ; $457D: $CE $CF
    jr nc, jr_016_4571                            ; $457F: $30 $F0

    nop                                           ; $4581: $00
    adc b                                         ; $4582: $88
    ld [hl], b                                    ; $4583: $70
    ld l, b                                       ; $4584: $68
    ldh a, [$FFD0]                                ; $4585: $F0 $D0
    ldh [$FF30], a                                ; $4587: $E0 $30
    ldh [$FFE0], a                                ; $4589: $E0 $E0
    ret nz                                        ; $458B: $C0

    ret nz                                        ; $458C: $C0

    nop                                           ; $458D: $00
    ld h, b                                       ; $458E: $60
    add b                                         ; $458F: $80
    db $10                                        ; $4590: $10
    ldh [rNR32], a                                ; $4591: $E0 $1C
    ldh [$FF3E], a                                ; $4593: $E0 $3E
    call c, $D03E                                 ; $4595: $DC $3E $D0
    ld hl, sp+$30                                 ; $4598: $F8 $30
    inc a                                         ; $459A: $3C
    ld [$008C], sp                                ; $459B: $08 $8C $00
    ld h, b                                       ; $459E: $60
    add b                                         ; $459F: $80
    inc h                                         ; $45A0: $24
    dec de                                        ; $45A1: $1B
    rla                                           ; $45A2: $17
    ld [$031C], sp                                ; $45A3: $08 $1C $03
    inc c                                         ; $45A6: $0C
    rlca                                          ; $45A7: $07
    jr jr_016_45B9                                ; $45A8: $18 $0F

    jr jr_016_45BB                                ; $45AA: $18 $0F

    jr c, jr_016_45BD                             ; $45AC: $38 $0F

    jr c, jr_016_45BF                             ; $45AE: $38 $0F

    cpl                                           ; $45B0: $2F
    rla                                           ; $45B1: $17
    daa                                           ; $45B2: $27
    jr @+$24                                      ; $45B3: $18 $22

    inc e                                         ; $45B5: $1C
    inc h                                         ; $45B6: $24
    jr jr_016_45D1                                ; $45B7: $18 $18

jr_016_45B9:
    nop                                           ; $45B9: $00
    nop                                           ; $45BA: $00

jr_016_45BB:
    nop                                           ; $45BB: $00
    nop                                           ; $45BC: $00

jr_016_45BD:
    nop                                           ; $45BD: $00
    nop                                           ; $45BE: $00

jr_016_45BF:
    nop                                           ; $45BF: $00
    sbc a                                         ; $45C0: $9F
    ld l, a                                       ; $45C1: $6F
    rrca                                          ; $45C2: $0F
    rst RST_30                                    ; $45C3: $F7
    rlca                                          ; $45C4: $07
    ei                                            ; $45C5: $FB
    rrca                                          ; $45C6: $0F
    ld hl, sp+$1B                                 ; $45C7: $F8 $1B
    ldh a, [$FF32]                                ; $45C9: $F0 $32
    pop hl                                        ; $45CB: $E1
    ld h, h                                       ; $45CC: $64
    jp $83C4                                      ; $45CD: $C3 $C4 $83


    add a                                         ; $45D0: $87

jr_016_45D1:
    nop                                           ; $45D1: $00
    dec e                                         ; $45D2: $1D
    ld [bc], a                                    ; $45D3: $02
    rra                                           ; $45D4: $1F
    ld [$0A1D], sp                                ; $45D5: $08 $1D $0A

jr_016_45D8:
    rra                                           ; $45D8: $1F
    ld [$0B1C], sp                                ; $45D9: $08 $1C $0B
    inc e                                         ; $45DC: $1C
    dec bc                                        ; $45DD: $0B
    inc e                                         ; $45DE: $1C
    dec bc                                        ; $45DF: $0B
    or [hl]                                       ; $45E0: $B6
    ld a, c                                       ; $45E1: $79
    cp h                                          ; $45E2: $BC
    ld [hl], e                                    ; $45E3: $73
    db $FC                                        ; $45E4: $FC
    or e                                          ; $45E5: $B3
    cp $01                                        ; $45E6: $FE $01
    ei                                            ; $45E8: $FB
    inc [hl]                                      ; $45E9: $34
    add hl, sp                                    ; $45EA: $39
    sub $38                                       ; $45EB: $D6 $38
    rst RST_10                                    ; $45ED: $D7
    ld a, $C1                                     ; $45EE: $3E $C1
    rst RST_28                                    ; $45F0: $EF
    ld [bc], a                                    ; $45F1: $02
    ld [hl], a                                    ; $45F2: $77

jr_016_45F3:
    add e                                         ; $45F3: $83
    rst RST_38                                    ; $45F4: $FF
    daa                                           ; $45F5: $27
    ld a, a                                       ; $45F6: $7F
    and a                                         ; $45F7: $A7
    rst RST_38                                    ; $45F8: $FF
    daa                                           ; $45F9: $27
    ld a, a                                       ; $45FA: $7F
    xor a                                         ; $45FB: $AF
    ld a, a                                       ; $45FC: $7F
    xor [hl]                                      ; $45FD: $AE
    ld a, a                                       ; $45FE: $7F
    xor [hl]                                      ; $45FF: $AE
    ret nc                                        ; $4600: $D0

    jr nz, jr_016_45F3                            ; $4601: $20 $F0

    add b                                         ; $4603: $80
    ret nc                                        ; $4604: $D0

    and b                                         ; $4605: $A0
    or b                                          ; $4606: $B0
    ld b, b                                       ; $4607: $40
    and b                                         ; $4608: $A0
    ld b, b                                       ; $4609: $40
    and b                                         ; $460A: $A0
    ld b, b                                       ; $460B: $40

jr_016_460C:
    ld b, b                                       ; $460C: $40
    add b                                         ; $460D: $80

jr_016_460E:
    ld b, b                                       ; $460E: $40
    add b                                         ; $460F: $80
    ld b, b                                       ; $4610: $40
    add b                                         ; $4611: $80
    ret nz                                        ; $4612: $C0

    nop                                           ; $4613: $00
    ld b, b                                       ; $4614: $40
    add b                                         ; $4615: $80
    jr nz, jr_016_45D8                            ; $4616: $20 $C0

    db $10                                        ; $4618: $10
    ldh [$FFF0], a                                ; $4619: $E0 $F0
    nop                                           ; $461B: $00
    nop                                           ; $461C: $00
    nop                                           ; $461D: $00
    nop                                           ; $461E: $00
    nop                                           ; $461F: $00
    inc e                                         ; $4620: $1C
    dec bc                                        ; $4621: $0B
    inc e                                         ; $4622: $1C
    dec bc                                        ; $4623: $0B
    inc e                                         ; $4624: $1C
    dec bc                                        ; $4625: $0B
    rra                                           ; $4626: $1F
    ld [$0B1C], sp                                ; $4627: $08 $1C $0B
    jr jr_016_4633                                ; $462A: $18 $07

    ld [$0F07], sp                                ; $462C: $08 $07 $0F
    nop                                           ; $462F: $00
    nop                                           ; $4630: $00
    nop                                           ; $4631: $00
    nop                                           ; $4632: $00

jr_016_4633:
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
    ld a, a                                       ; $4640: $7F
    xor [hl]                                      ; $4641: $AE
    ld a, a                                       ; $4642: $7F
    xor [hl]                                      ; $4643: $AE
    ld a, [hl]                                    ; $4644: $7E
    and c                                         ; $4645: $A1
    db $F4                                        ; $4646: $F4
    inc hl                                        ; $4647: $23
    ld [hl], e                                    ; $4648: $73
    and b                                         ; $4649: $A0
    jr nc, jr_016_460C                            ; $464A: $30 $C0

    jr nz, jr_016_460E                            ; $464C: $20 $C0

    ldh [rP1], a                                  ; $464E: $E0 $00
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
    nop                                           ; $465C: $00
    nop                                           ; $465D: $00
    nop                                           ; $465E: $00
    nop                                           ; $465F: $00
    nop                                           ; $4660: $00
    nop                                           ; $4661: $00
    nop                                           ; $4662: $00
    nop                                           ; $4663: $00
    nop                                           ; $4664: $00
    nop                                           ; $4665: $00
    nop                                           ; $4666: $00
    nop                                           ; $4667: $00
    rlca                                          ; $4668: $07
    nop                                           ; $4669: $00
    ld c, $01                                     ; $466A: $0E $01
    rrca                                          ; $466C: $0F
    nop                                           ; $466D: $00
    rra                                           ; $466E: $1F
    nop                                           ; $466F: $00
    rra                                           ; $4670: $1F
    rrca                                          ; $4671: $0F
    ccf                                           ; $4672: $3F
    rrca                                          ; $4673: $0F
    ccf                                           ; $4674: $3F
    rrca                                          ; $4675: $0F
    ccf                                           ; $4676: $3F
    ld bc, $003F                                  ; $4677: $01 $3F $00
    ld [hl+], a                                   ; $467A: $22
    dec e                                         ; $467B: $1D
    ld [hl+], a                                   ; $467C: $22
    dec e                                         ; $467D: $1D
    ld [hl+], a                                   ; $467E: $22

jr_016_467F:
    dec e                                         ; $467F: $1D
    nop                                           ; $4680: $00
    nop                                           ; $4681: $00
    nop                                           ; $4682: $00
    nop                                           ; $4683: $00
    nop                                           ; $4684: $00
    nop                                           ; $4685: $00
    nop                                           ; $4686: $00
    nop                                           ; $4687: $00
    add e                                         ; $4688: $83
    nop                                           ; $4689: $00
    ld h, e                                       ; $468A: $63
    add c                                         ; $468B: $81
    sub c                                         ; $468C: $91
    ld h, b                                       ; $468D: $60
    ret                                           ; $468E: $C9


    jr nc, jr_016_467F                            ; $468F: $30 $EE

    ld d, c                                       ; $4691: $51

jr_016_4692:
    rst RST_38                                    ; $4692: $FF
    and [hl]                                      ; $4693: $A6

jr_016_4694:
    rst RST_28                                    ; $4694: $EF
    sub a                                         ; $4695: $97
    rst RST_30                                    ; $4696: $F7
    cp e                                          ; $4697: $BB
    rst RST_38                                    ; $4698: $FF
    jr jr_016_4709                                ; $4699: $18 $6E

    sub l                                         ; $469B: $95
    ld a, a                                       ; $469C: $7F
    adc l                                         ; $469D: $8D
    ld a, a                                       ; $469E: $7F
    xor [hl]                                      ; $469F: $AE
    nop                                           ; $46A0: $00
    nop                                           ; $46A1: $00
    nop                                           ; $46A2: $00
    nop                                           ; $46A3: $00
    nop                                           ; $46A4: $00
    nop                                           ; $46A5: $00
    ld a, b                                       ; $46A6: $78
    nop                                           ; $46A7: $00
    db $E4                                        ; $46A8: $E4
    ld e, b                                       ; $46A9: $58
    cp $44                                        ; $46AA: $FE $44
    cp $F8                                        ; $46AC: $FE $F8
    ld sp, hl                                     ; $46AE: $F9
    add $F9                                       ; $46AF: $C6 $F9
    ld [hl], $11                                  ; $46B1: $36 $11
    xor $FB                                       ; $46B3: $EE $FB
    dec b                                         ; $46B5: $05
    rst RST_20                                    ; $46B6: $E7
    ld e, e                                       ; $46B7: $5B
    rst RST_38                                    ; $46B8: $FF
    nop                                           ; $46B9: $00
    inc a                                         ; $46BA: $3C
    db $DB                                        ; $46BB: $DB
    inc a                                         ; $46BC: $3C
    db $EB                                        ; $46BD: $EB
    rst RST_38                                    ; $46BE: $FF
    rst RST_20                                    ; $46BF: $E7
    ld hl, sp+$00                                 ; $46C0: $F8 $00
    ret z                                         ; $46C2: $C8

    or b                                          ; $46C3: $B0
    add sp, $70                                   ; $46C4: $E8 $70
    ret nc                                        ; $46C6: $D0

    ld h, b                                       ; $46C7: $60
    or b                                          ; $46C8: $B0
    ld h, b                                       ; $46C9: $60
    ldh [rLCDC], a                                ; $46CA: $E0 $40
    ret nz                                        ; $46CC: $C0

    nop                                           ; $46CD: $00
    ret nz                                        ; $46CE: $C0

    nop                                           ; $46CF: $00
    jr nz, jr_016_4692                            ; $46D0: $20 $C0

    jr nc, jr_016_4694                            ; $46D2: $30 $C0

    ld a, b                                       ; $46D4: $78
    or b                                          ; $46D5: $B0
    ld hl, sp+$20                                 ; $46D6: $F8 $20
    ld a, b                                       ; $46D8: $78
    add b                                         ; $46D9: $80
    inc a                                         ; $46DA: $3C
    ret nz                                        ; $46DB: $C0

    ld [hl], h                                    ; $46DC: $74
    adc b                                         ; $46DD: $88
    db $F4                                        ; $46DE: $F4
    ld c, b                                       ; $46DF: $48
    ld [hl+], a                                   ; $46E0: $22
    dec e                                         ; $46E1: $1D
    ld [de], a                                    ; $46E2: $12
    dec c                                         ; $46E3: $0D
    dec bc                                        ; $46E4: $0B
    inc b                                         ; $46E5: $04
    rlca                                          ; $46E6: $07
    nop                                           ; $46E7: $00
    inc bc                                        ; $46E8: $03
    ld bc, $0103                                  ; $46E9: $01 $03 $01
    ld b, $03                                     ; $46EC: $06 $03
    ld b, $03                                     ; $46EE: $06 $03
    rlca                                          ; $46F0: $07
    ld bc, $0205                                  ; $46F1: $01 $05 $02
    inc b                                         ; $46F4: $04
    inc bc                                        ; $46F5: $03
    inc b                                         ; $46F6: $04
    inc bc                                        ; $46F7: $03
    dec b                                         ; $46F8: $05
    ld [bc], a                                    ; $46F9: $02
    inc bc                                        ; $46FA: $03
    nop                                           ; $46FB: $00
    ld bc, $0300                                  ; $46FC: $01 $00 $03
    ld bc, $8F7F                                  ; $46FF: $01 $7F $8F
    ld c, a                                       ; $4702: $4F
    or a                                          ; $4703: $B7
    add a                                         ; $4704: $87
    ld a, e                                       ; $4705: $7B
    add e                                         ; $4706: $83
    db $FD                                        ; $4707: $FD
    rlca                                          ; $4708: $07

jr_016_4709:
    ld hl, sp+$07                                 ; $4709: $F8 $07
    ld hl, sp+$0C                                 ; $470B: $F8 $0C
    di                                            ; $470D: $F3
    ld [$9EF7], sp                                ; $470E: $08 $F7 $9E
    pop hl                                        ; $4711: $E1
    ei                                            ; $4712: $FB
    inc b                                         ; $4713: $04
    push af                                       ; $4714: $F5
    ld c, d                                       ; $4715: $4A
    ei                                            ; $4716: $FB
    ld b, h                                       ; $4717: $44
    rst RST_08                                    ; $4718: $CF
    or c                                          ; $4719: $B1
    jp $C7BD                                      ; $471A: $C3 $BD $C7


    cp d                                          ; $471D: $BA
    add a                                         ; $471E: $87
    ld a, d                                       ; $471F: $7A
    rst RST_20                                    ; $4720: $E7
    jr @-$24                                      ; $4721: $18 $DA

    cp l                                          ; $4723: $BD
    sbc $B9                                       ; $4724: $DE $B9
    cp $D9                                        ; $4726: $FE $D9
    rst RST_38                                    ; $4728: $FF
    nop                                           ; $4729: $00
    db $FC                                        ; $472A: $FC
    dec sp                                        ; $472B: $3B
    inc a                                         ; $472C: $3C
    db $DB                                        ; $472D: $DB
    inc a                                         ; $472E: $3C
    db $DB                                        ; $472F: $DB
    ccf                                           ; $4730: $3F
    ret nz                                        ; $4731: $C0

    ld b, e                                       ; $4732: $43
    add c                                         ; $4733: $81
    jp $8301                                      ; $4734: $C3 $01 $83


    ld bc, $0183                                  ; $4737: $01 $83 $01
    add e                                         ; $473A: $83
    ld bc, $0103                                  ; $473B: $01 $03 $01
    rlca                                          ; $473E: $07
    inc bc                                        ; $473F: $03
    db $EC                                        ; $4740: $EC
    ret nc                                        ; $4741: $D0

    db $F4                                        ; $4742: $F4
    add sp, -$04                                  ; $4743: $E8 $FC
    ldh [$FFE8], a                                ; $4745: $E0 $E8
    ret nc                                        ; $4747: $D0

    add sp, -$30                                  ; $4748: $E8 $D0
    add sp, -$30                                  ; $474A: $E8 $D0
    add sp, -$30                                  ; $474C: $E8 $D0
    add sp, -$30                                  ; $474E: $E8 $D0
    ld hl, sp-$40                                 ; $4750: $F8 $C0
    db $E4                                        ; $4752: $E4
    ret c                                         ; $4753: $D8

    ldh [c], a                                    ; $4754: $E2
    inc e                                         ; $4755: $1C
    ld sp, $0F0E                                  ; $4756: $31 $0E $0F
    nop                                           ; $4759: $00
    nop                                           ; $475A: $00

jr_016_475B:
    nop                                           ; $475B: $00
    nop                                           ; $475C: $00
    nop                                           ; $475D: $00
    nop                                           ; $475E: $00
    nop                                           ; $475F: $00
    inc bc                                        ; $4760: $03
    ld bc, $0103                                  ; $4761: $01 $03 $01
    rlca                                          ; $4764: $07
    ld [bc], a                                    ; $4765: $02
    rlca                                          ; $4766: $07
    ld [bc], a                                    ; $4767: $02
    inc bc                                        ; $4768: $03
    nop                                           ; $4769: $00
    ld [bc], a                                    ; $476A: $02
    ld bc, $0304                                  ; $476B: $01 $04 $03
    rlca                                          ; $476E: $07
    nop                                           ; $476F: $00
    nop                                           ; $4770: $00
    nop                                           ; $4771: $00
    nop                                           ; $4772: $00
    nop                                           ; $4773: $00
    nop                                           ; $4774: $00
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
    add a                                         ; $4780: $87
    ld a, d                                       ; $4781: $7A
    adc [hl]                                      ; $4782: $8E
    ld [hl], h                                    ; $4783: $74
    ld c, $F4                                     ; $4784: $0E $F4
    call c, Call_000_3C28                         ; $4786: $DC $28 $3C
    ret z                                         ; $4789: $C8

    inc e                                         ; $478A: $1C
    ldh [rNR10], a                                ; $478B: $E0 $10
    ldh [$FFF0], a                                ; $478D: $E0 $F0
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
    rlca                                          ; $47A0: $07
    inc bc                                        ; $47A1: $03
    rlca                                          ; $47A2: $07
    inc bc                                        ; $47A3: $03
    rlca                                          ; $47A4: $07
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
    nop                                           ; $47B6: $00
    nop                                           ; $47B7: $00
    nop                                           ; $47B8: $00
    nop                                           ; $47B9: $00
    nop                                           ; $47BA: $00
    nop                                           ; $47BB: $00
    nop                                           ; $47BC: $00
    nop                                           ; $47BD: $00

Jump_016_47BE:
    nop                                           ; $47BE: $00
    nop                                           ; $47BF: $00
    rrca                                          ; $47C0: $0F
    nop                                           ; $47C1: $00
    inc e                                         ; $47C2: $1C
    inc bc                                        ; $47C3: $03
    ld e, $01                                     ; $47C4: $1E $01
    rra                                           ; $47C6: $1F
    nop                                           ; $47C7: $00
    rra                                           ; $47C8: $1F
    nop                                           ; $47C9: $00
    rrca                                          ; $47CA: $0F
    nop                                           ; $47CB: $00
    rra                                           ; $47CC: $1F
    ld [bc], a                                    ; $47CD: $02
    cpl                                           ; $47CE: $2F
    rla                                           ; $47CF: $17
    ld c, a                                       ; $47D0: $4F
    jr nc, jr_016_475B                            ; $47D1: $30 $88

    ld [hl], a                                    ; $47D3: $77
    add h                                         ; $47D4: $84
    ld a, e                                       ; $47D5: $7B
    sbc h                                         ; $47D6: $9C
    ld h, e                                       ; $47D7: $63
    cp a                                          ; $47D8: $BF
    ld b, b                                       ; $47D9: $40
    rst RST_38                                    ; $47DA: $FF
    ld [bc], a                                    ; $47DB: $02
    rst RST_38                                    ; $47DC: $FF
    ld a, [de]                                    ; $47DD: $1A
    rst RST_38                                    ; $47DE: $FF
    ld a, [hl+]                                   ; $47DF: $2A
    rlca                                          ; $47E0: $07
    nop                                           ; $47E1: $00
    rst RST_00                                    ; $47E2: $C7
    ld [bc], a                                    ; $47E3: $02
    inc hl                                        ; $47E4: $23
    pop bc                                        ; $47E5: $C1
    sub e                                         ; $47E6: $93
    pop hl                                        ; $47E7: $E1
    ld a, l                                       ; $47E8: $7D
    ldh [c], a                                    ; $47E9: $E2
    cp [hl]                                       ; $47EA: $BE
    ld l, l                                       ; $47EB: $6D
    sbc a                                         ; $47EC: $9F
    ld l, [hl]                                    ; $47ED: $6E
    rst RST_28                                    ; $47EE: $EF
    halt                                          ; $47EF: $76
    rst RST_38                                    ; $47F0: $FF
    or b                                          ; $47F1: $B0
    call c, $7E2B                                 ; $47F2: $DC $2B $7E
    sbc e                                         ; $47F5: $9B
    ld a, a                                       ; $47F6: $7F
    add c                                         ; $47F7: $81
    db $EB                                        ; $47F8: $EB
    inc d                                         ; $47F9: $14
    rst RST_38                                    ; $47FA: $FF
    ld b, c                                       ; $47FB: $41
    db $EB                                        ; $47FC: $EB
    ld d, l                                       ; $47FD: $55
    rst RST_38                                    ; $47FE: $FF
    ld b, c                                       ; $47FF: $41
    ldh a, [rP1]                                  ; $4800: $F0 $00
    ret z                                         ; $4802: $C8

    or b                                          ; $4803: $B0
    db $FC                                        ; $4804: $FC
    adc b                                         ; $4805: $88
    db $FC                                        ; $4806: $FC
    ldh a, [$FFF2]                                ; $4807: $F0 $F2
    adc h                                         ; $4809: $8C
    ldh a, [c]                                    ; $480A: $F2
    ld l, h                                       ; $480B: $6C
    inc hl                                        ; $480C: $23
    call c, $4BB7                                 ; $480D: $DC $B7 $4B
    ld c, a                                       ; $4810: $4F
    or [hl]                                       ; $4811: $B6
    rst RST_38                                    ; $4812: $FF
    nop                                           ; $4813: $00
    ld a, c                                       ; $4814: $79
    or [hl]                                       ; $4815: $B6
    ld a, c                                       ; $4816: $79
    sub $FF                                       ; $4817: $D6 $FF
    adc $CF                                       ; $4819: $CE $CF
    ld sp, $7BB7                                  ; $481B: $31 $B7 $7B
    cp a                                          ; $481E: $BF
    ld [hl], b                                    ; $481F: $70
    ldh a, [rP1]                                  ; $4820: $F0 $00
    adc b                                         ; $4822: $88
    ld [hl], b                                    ; $4823: $70
    ld l, b                                       ; $4824: $68
    ldh a, [$FFD0]                                ; $4825: $F0 $D0
    ldh [$FF30], a                                ; $4827: $E0 $30
    ldh [$FFE0], a                                ; $4829: $E0 $E0
    ret nz                                        ; $482B: $C0

    ret nz                                        ; $482C: $C0

    nop                                           ; $482D: $00
    ret nz                                        ; $482E: $C0

    nop                                           ; $482F: $00
    or b                                          ; $4830: $B0
    ld b, b                                       ; $4831: $40
    ld [$0EF0], sp                                ; $4832: $08 $F0 $0E
    ldh a, [$FF1F]                                ; $4835: $F0 $1F
    xor $1F                                       ; $4837: $EE $1F
    add sp, -$04                                  ; $4839: $E8 $FC
    jr jr_016_48BB                                ; $483B: $18 $7E

    add h                                         ; $483D: $84
    ld h, $C0                                     ; $483E: $26 $C0
    ld a, a                                       ; $4840: $7F
    jr z, jr_016_4882                             ; $4841: $28 $3F

    inc d                                         ; $4843: $14
    inc e                                         ; $4844: $1C
    inc bc                                        ; $4845: $03
    jr c, jr_016_4857                             ; $4846: $38 $0F

    jr c, jr_016_4859                             ; $4848: $38 $0F

    cpl                                           ; $484A: $2F
    rla                                           ; $484B: $17
    daa                                           ; $484C: $27
    jr jr_016_4871                                ; $484D: $18 $22

    inc e                                         ; $484F: $1C
    inc h                                         ; $4850: $24
    jr jr_016_486B                                ; $4851: $18 $18

    nop                                           ; $4853: $00
    nop                                           ; $4854: $00
    nop                                           ; $4855: $00
    nop                                           ; $4856: $00

jr_016_4857:
    nop                                           ; $4857: $00
    nop                                           ; $4858: $00

jr_016_4859:
    nop                                           ; $4859: $00
    nop                                           ; $485A: $00
    nop                                           ; $485B: $00
    nop                                           ; $485C: $00
    nop                                           ; $485D: $00
    nop                                           ; $485E: $00
    nop                                           ; $485F: $00
    db $E3                                        ; $4860: $E3
    ld e, l                                       ; $4861: $5D
    db $E3                                        ; $4862: $E3
    ld e, l                                       ; $4863: $5D
    db $E3                                        ; $4864: $E3
    ld e, l                                       ; $4865: $5D
    db $E3                                        ; $4866: $E3
    ld e, l                                       ; $4867: $5D
    db $E3                                        ; $4868: $E3
    ld e, l                                       ; $4869: $5D
    db $E3                                        ; $486A: $E3

jr_016_486B:
    ld e, l                                       ; $486B: $5D
    rst RST_38                                    ; $486C: $FF
    ld b, c                                       ; $486D: $41
    db $E3                                        ; $486E: $E3
    ld e, l                                       ; $486F: $5D
    pop bc                                        ; $4870: $C1

jr_016_4871:
    ld a, $41                                     ; $4871: $3E $41
    ld a, $7F                                     ; $4873: $3E $7F
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
    db $FC                                        ; $4880: $FC
    inc sp                                        ; $4881: $33

jr_016_4882:
    db $FC                                        ; $4882: $FC
    inc bc                                        ; $4883: $03
    rst RST_38                                    ; $4884: $FF
    ld [hl], b                                    ; $4885: $70
    ld sp, hl                                     ; $4886: $F9
    ld [hl], $F8                                  ; $4887: $36 $F8
    scf                                           ; $4889: $37
    cp $01                                        ; $488A: $FE $01
    cp a                                          ; $488C: $BF
    ld e, [hl]                                    ; $488D: $5E
    cp a                                          ; $488E: $BF
    ld e, a                                       ; $488F: $5F
    cp a                                          ; $4890: $BF
    ld e, a                                       ; $4891: $5F
    sbc a                                         ; $4892: $9F
    ld h, e                                       ; $4893: $63
    di                                            ; $4894: $F3
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
    or b                                          ; $48A0: $B0
    ld b, b                                       ; $48A1: $40
    ldh a, [$FF80]                                ; $48A2: $F0 $80
    ldh a, [$FFC0]                                ; $48A4: $F0 $C0
    ret nc                                        ; $48A6: $D0

    and b                                         ; $48A7: $A0
    ldh [rP1], a                                  ; $48A8: $E0 $00
    nop                                           ; $48AA: $00
    nop                                           ; $48AB: $00
    nop                                           ; $48AC: $00
    nop                                           ; $48AD: $00
    nop                                           ; $48AE: $00
    nop                                           ; $48AF: $00
    nop                                           ; $48B0: $00
    nop                                           ; $48B1: $00
    nop                                           ; $48B2: $00
    nop                                           ; $48B3: $00
    nop                                           ; $48B4: $00
    nop                                           ; $48B5: $00
    nop                                           ; $48B6: $00
    nop                                           ; $48B7: $00
    nop                                           ; $48B8: $00
    nop                                           ; $48B9: $00
    nop                                           ; $48BA: $00

jr_016_48BB:
    nop                                           ; $48BB: $00
    nop                                           ; $48BC: $00
    nop                                           ; $48BD: $00
    nop                                           ; $48BE: $00
    nop                                           ; $48BF: $00
    nop                                           ; $48C0: $00
    nop                                           ; $48C1: $00
    nop                                           ; $48C2: $00
    nop                                           ; $48C3: $00
    ld bc, $0300                                  ; $48C4: $01 $00 $03
    nop                                           ; $48C7: $00
    rlca                                          ; $48C8: $07
    inc bc                                        ; $48C9: $03
    rlca                                          ; $48CA: $07
    inc bc                                        ; $48CB: $03
    rrca                                          ; $48CC: $0F
    rlca                                          ; $48CD: $07
    rra                                           ; $48CE: $1F
    inc bc                                        ; $48CF: $03
    rla                                           ; $48D0: $17
    ld [$1B24], sp                                ; $48D1: $08 $24 $1B
    jr z, jr_016_48ED                             ; $48D4: $28 $17

    ld c, b                                       ; $48D6: $48
    scf                                           ; $48D7: $37
    ld d, b                                       ; $48D8: $50
    cpl                                           ; $48D9: $2F
    ld d, c                                       ; $48DA: $51
    ld l, $37                                     ; $48DB: $2E $37
    add hl, bc                                    ; $48DD: $09
    rrca                                          ; $48DE: $0F
    inc bc                                        ; $48DF: $03
    nop                                           ; $48E0: $00
    nop                                           ; $48E1: $00
    nop                                           ; $48E2: $00
    nop                                           ; $48E3: $00
    ret nz                                        ; $48E4: $C0

    nop                                           ; $48E5: $00
    ldh a, [$FFC0]                                ; $48E6: $F0 $C0
    ld hl, sp+$50                                 ; $48E8: $F8 $50
    db $FC                                        ; $48EA: $FC
    jr z, @-$02                                   ; $48EB: $28 $FC

jr_016_48ED:
    ld d, b                                       ; $48ED: $50
    db $FD                                        ; $48EE: $FD
    and b                                         ; $48EF: $A0
    ei                                            ; $48F0: $FB
    inc [hl]                                      ; $48F1: $34
    scf                                           ; $48F2: $37
    jp z, $D937                                   ; $48F3: $CA $37 $D9

    add hl, sp                                    ; $48F6: $39
    sbc $3E                                       ; $48F7: $DE $3E
    call Call_000_34FF                            ; $48F9: $CD $FF $34
    rst RST_38                                    ; $48FC: $FF
    ret c                                         ; $48FD: $D8

    rst RST_38                                    ; $48FE: $FF
    ret nz                                        ; $48FF: $C0

    nop                                           ; $4900: $00
    nop                                           ; $4901: $00
    nop                                           ; $4902: $00
    nop                                           ; $4903: $00
    rlca                                          ; $4904: $07
    nop                                           ; $4905: $00
    rrca                                          ; $4906: $0F
    inc bc                                        ; $4907: $03
    rra                                           ; $4908: $1F
    ld a, [bc]                                    ; $4909: $0A
    ccf                                           ; $490A: $3F
    inc d                                         ; $490B: $14
    rst RST_38                                    ; $490C: $FF
    inc de                                        ; $490D: $13
    rst RST_38                                    ; $490E: $FF
    add c                                         ; $490F: $81
    rst RST_38                                    ; $4910: $FF
    adc [hl]                                      ; $4911: $8E
    rst RST_38                                    ; $4912: $FF
    ldh [$FFF3], a                                ; $4913: $E0 $F3
    adc h                                         ; $4915: $8C
    cp $61                                        ; $4916: $FE $61
    ccf                                           ; $4918: $3F
    call $DD3E                                    ; $4919: $CD $3E $DD
    ld a, l                                       ; $491C: $7D
    sbc d                                         ; $491D: $9A
    rst RST_38                                    ; $491E: $FF
    ld bc, $0000                                  ; $491F: $01 $00 $00
    nop                                           ; $4922: $00
    nop                                           ; $4923: $00
    nop                                           ; $4924: $00
    nop                                           ; $4925: $00
    add b                                         ; $4926: $80
    nop                                           ; $4927: $00
    ret nz                                        ; $4928: $C0

    add b                                         ; $4929: $80
    ldh [$FFC0], a                                ; $492A: $E0 $C0
    ret nc                                        ; $492C: $D0

    jr nz, @-$16                                  ; $492D: $20 $E8

    db $10                                        ; $492F: $10
    inc d                                         ; $4930: $14
    add sp, $0A                                   ; $4931: $E8 $0A
    db $F4                                        ; $4933: $F4
    dec b                                         ; $4934: $05

jr_016_4935:
    ld a, [$7C83]                                 ; $4935: $FA $83 $7C
    add d                                         ; $4938: $82
    ld a, h                                       ; $4939: $7C
    db $E4                                        ; $493A: $E4
    jr jr_016_4935                                ; $493B: $18 $F8

    ldh [$FFF0], a                                ; $493D: $E0 $F0
    ldh [$FFF9], a                                ; $493F: $E0 $F9
    ld [hl], $3D                                  ; $4941: $36 $3D
    ld b, $07                                     ; $4943: $06 $07
    inc bc                                        ; $4945: $03
    inc bc                                        ; $4946: $03
    nop                                           ; $4947: $00
    ld [bc], a                                    ; $4948: $02
    ld bc, $0102                                  ; $4949: $01 $02 $01
    ld bc, $0100                                  ; $494C: $01 $00 $01
    nop                                           ; $494F: $00
    ld bc, $0200                                  ; $4950: $01 $00 $02
    ld bc, $0102                                  ; $4953: $01 $02 $01
    ld [bc], a                                    ; $4956: $02
    ld bc, $0102                                  ; $4957: $01 $02 $01
    ld c, $01                                     ; $495A: $0E $01
    rla                                           ; $495C: $17
    ld [$001F], sp                                ; $495D: $08 $1F $00
    di                                            ; $4960: $F3
    db $DD                                        ; $4961: $DD
    rst RST_20                                    ; $4962: $E7
    cp l                                          ; $4963: $BD
    rst RST_38                                    ; $4964: $FF
    dec sp                                        ; $4965: $3B
    ccf                                           ; $4966: $3F
    rst RST_00                                    ; $4967: $C7
    rst RST_18                                    ; $4968: $DF
    rst RST_28                                    ; $4969: $EF
    rst RST_18                                    ; $496A: $DF
    xor $FF                                       ; $496B: $EE $FF
    db $DD                                        ; $496D: $DD
    rst RST_38                                    ; $496E: $FF
    ld bc, $E0FF                                  ; $496F: $01 $FF $E0
    db $E3                                        ; $4972: $E3
    ld e, h                                       ; $4973: $5C
    ldh [c], a                                    ; $4974: $E2
    ld e, h                                       ; $4975: $5C
    ld h, c                                       ; $4976: $61
    sbc [hl]                                      ; $4977: $9E
    ld hl, $57DE                                  ; $4978: $21 $DE $57
    adc b                                         ; $497B: $88

jr_016_497C:
    db $FD                                        ; $497C: $FD
    ld [bc], a                                    ; $497D: $02
    ld a, [$FCE5]                                 ; $497E: $FA $E5 $FC
    ld a, b                                       ; $4981: $78
    ld hl, sp+$70                                 ; $4982: $F8 $70
    ldh a, [$FF80]                                ; $4984: $F0 $80
    ldh a, [$FFA0]                                ; $4986: $F0 $A0
    sbc b                                         ; $4988: $98
    ld [hl], b                                    ; $4989: $70
    jr jr_016_497C                                ; $498A: $18 $F0

    inc c                                         ; $498C: $0C
    ld hl, sp+$0C                                 ; $498D: $F8 $0C
    ld hl, sp-$7A                                 ; $498F: $F8 $86
    db $FC                                        ; $4991: $FC
    add [hl]                                      ; $4992: $86
    db $FC                                        ; $4993: $FC
    jp $C37E                                      ; $4994: $C3 $7E $C3


    ld a, [hl]                                    ; $4997: $7E
    ld h, a                                       ; $4998: $67
    ld a, $FE                                     ; $4999: $3E $FE
    add hl, sp                                    ; $499B: $39
    ld hl, sp+$07                                 ; $499C: $F8 $07
    ldh a, [$FF2F]                                ; $499E: $F0 $2F
    rla                                           ; $49A0: $17
    ld [$020D], sp                                ; $49A1: $08 $0D $02
    dec b                                         ; $49A4: $05
    ld [bc], a                                    ; $49A5: $02
    dec b                                         ; $49A6: $05
    ld [bc], a                                    ; $49A7: $02
    dec b                                         ; $49A8: $05
    ld [bc], a                                    ; $49A9: $02
    dec b                                         ; $49AA: $05
    ld [bc], a                                    ; $49AB: $02
    dec b                                         ; $49AC: $05
    ld [bc], a                                    ; $49AD: $02
    dec c                                         ; $49AE: $0D
    ld [bc], a                                    ; $49AF: $02
    dec bc                                        ; $49B0: $0B
    inc b                                         ; $49B1: $04
    db $10                                        ; $49B2: $10
    rrca                                          ; $49B3: $0F
    ld de, $220E                                  ; $49B4: $11 $0E $22
    inc e                                         ; $49B7: $1C
    inc a                                         ; $49B8: $3C
    nop                                           ; $49B9: $00
    nop                                           ; $49BA: $00

jr_016_49BB:
    nop                                           ; $49BB: $00
    nop                                           ; $49BC: $00
    nop                                           ; $49BD: $00
    nop                                           ; $49BE: $00
    nop                                           ; $49BF: $00
    db $FD                                        ; $49C0: $FD
    ldh [c], a                                    ; $49C1: $E2
    rst RST_38                                    ; $49C2: $FF
    add sp, -$04                                  ; $49C3: $E8 $FC
    db $EB                                        ; $49C5: $EB
    cp $E5                                        ; $49C6: $FE $E5
    cp $E5                                        ; $49C8: $FE $E5
    cp $E5                                        ; $49CA: $FE $E5
    rst RST_38                                    ; $49CC: $FF
    ldh a, [c]                                    ; $49CD: $F2
    rst RST_38                                    ; $49CE: $FF
    ldh a, [c]                                    ; $49CF: $F2
    ei                                            ; $49D0: $FB
    ld bc, $0183                                  ; $49D1: $01 $83 $01
    inc bc                                        ; $49D4: $03
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
    ldh a, [$FF2F]                                ; $49E0: $F0 $2F
    jr c, jr_016_49BB                             ; $49E2: $38 $D7

    inc a                                         ; $49E4: $3C
    db $D3                                        ; $49E5: $D3
    dec sp                                        ; $49E6: $3B
    ret nc                                        ; $49E7: $D0

    inc e                                         ; $49E8: $1C
    add sp, $1C                                   ; $49E9: $E8 $1C
    add sp, $1C                                   ; $49EB: $E8 $1C
    add sp, $0E                                   ; $49ED: $E8 $0E
    db $F4                                        ; $49EF: $F4
    cp [hl]                                       ; $49F0: $BE
    ld b, h                                       ; $49F1: $44
    call z, $8430                                 ; $49F2: $CC $30 $84
    ld a, b                                       ; $49F5: $78
    add h                                         ; $49F6: $84
    ld a, b                                       ; $49F7: $78
    ld b, h                                       ; $49F8: $44
    jr c, jr_016_4A1F                             ; $49F9: $38 $24

    jr jr_016_4A15                                ; $49FB: $18 $18

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
    add b                                         ; $4A08: $80
    nop                                           ; $4A09: $00
    add b                                         ; $4A0A: $80
    nop                                           ; $4A0B: $00
    add b                                         ; $4A0C: $80
    nop                                           ; $4A0D: $00
    add b                                         ; $4A0E: $80
    nop                                           ; $4A0F: $00
    add b                                         ; $4A10: $80
    nop                                           ; $4A11: $00
    add b                                         ; $4A12: $80
    nop                                           ; $4A13: $00
    add b                                         ; $4A14: $80

jr_016_4A15:
    nop                                           ; $4A15: $00
    add b                                         ; $4A16: $80
    nop                                           ; $4A17: $00
    nop                                           ; $4A18: $00
    nop                                           ; $4A19: $00
    nop                                           ; $4A1A: $00
    nop                                           ; $4A1B: $00
    nop                                           ; $4A1C: $00
    nop                                           ; $4A1D: $00
    nop                                           ; $4A1E: $00

jr_016_4A1F:
    nop                                           ; $4A1F: $00
    ld e, $00                                     ; $4A20: $1E $00
    pop af                                        ; $4A22: $F1
    ld c, $50                                     ; $4A23: $0E $50
    xor a                                         ; $4A25: $AF
    ld d, b                                       ; $4A26: $50
    xor a                                         ; $4A27: $AF
    ld e, b                                       ; $4A28: $58
    and a                                         ; $4A29: $A7
    ld h, [hl]                                    ; $4A2A: $66
    sbc c                                         ; $4A2B: $99
    dec a                                         ; $4A2C: $3D
    adc $2F                                       ; $4A2D: $CE $2F
    jp nc, $B947                                  ; $4A2F: $D2 $47 $B9

    ld c, c                                       ; $4A32: $49
    or b                                          ; $4A33: $B0
    ld hl, sp+$00                                 ; $4A34: $F8 $00
    ld hl, sp-$10                                 ; $4A36: $F8 $F0
    db $FC                                        ; $4A38: $FC
    add sp, -$14                                  ; $4A39: $E8 $EC
    ret nz                                        ; $4A3B: $C0

    db $E3                                        ; $4A3C: $E3
    ret nz                                        ; $4A3D: $C0

    push hl                                       ; $4A3E: $E5

jr_016_4A3F:
    ld b, d                                       ; $4A3F: $42
    ldh [rP1], a                                  ; $4A40: $E0 $00
    ldh a, [rLCDC]                                ; $4A42: $F0 $40
    rst RST_38                                    ; $4A44: $FF
    ld b, b                                       ; $4A45: $40
    cp a                                          ; $4A46: $BF
    ld c, a                                       ; $4A47: $4F
    cp a                                          ; $4A48: $BF
    ld c, a                                       ; $4A49: $4F
    cp a                                          ; $4A4A: $BF
    ld c, a                                       ; $4A4B: $4F
    cp a                                          ; $4A4C: $BF
    ld e, a                                       ; $4A4D: $5F
    ld a, a                                       ; $4A4E: $7F
    inc bc                                        ; $4A4F: $03
    db $E3                                        ; $4A50: $E3
    inc e                                         ; $4A51: $1C
    ld b, b                                       ; $4A52: $40
    cp a                                          ; $4A53: $BF
    jp $E73C                                      ; $4A54: $C3 $3C $E7


    ld e, d                                       ; $4A57: $5A
    cp $25                                        ; $4A58: $FE $25
    cp a                                          ; $4A5A: $BF
    ld e, b                                       ; $4A5B: $58
    sbc l                                         ; $4A5C: $9D
    ld h, d                                       ; $4A5D: $62
    db $E3                                        ; $4A5E: $E3
    sbc h                                         ; $4A5F: $9C
    ld h, b                                       ; $4A60: $60
    nop                                           ; $4A61: $00
    ld [hl], b                                    ; $4A62: $70
    jr nz, @-$0E                                  ; $4A63: $20 $F0

    jr nz, jr_016_4A3F                            ; $4A65: $20 $D8

    or b                                          ; $4A67: $B0
    ret c                                         ; $4A68: $D8

    or b                                          ; $4A69: $B0
    ret c                                         ; $4A6A: $D8

    or b                                          ; $4A6B: $B0
    db $DB                                        ; $4A6C: $DB
    or b                                          ; $4A6D: $B0
    db $FC                                        ; $4A6E: $FC
    add e                                         ; $4A6F: $83
    ldh a, [rIF]                                  ; $4A70: $F0 $0F
    ldh [$FF5F], a                                ; $4A72: $E0 $5F
    ld h, b                                       ; $4A74: $60
    sbc a                                         ; $4A75: $9F
    ld h, e                                       ; $4A76: $63
    sbc h                                         ; $4A77: $9C
    ld l, h                                       ; $4A78: $6C
    sub e                                         ; $4A79: $93
    pop af                                        ; $4A7A: $F1
    ld c, a                                       ; $4A7B: $4F
    rst RST_30                                    ; $4A7C: $F7
    ld c, $FE                                     ; $4A7D: $0E $FE
    ldh [$FFCC], a                                ; $4A7F: $E0 $CC
    nop                                           ; $4A81: $00
    ld [hl], d                                    ; $4A82: $72
    adc h                                         ; $4A83: $8C
    ld d, c                                       ; $4A84: $51
    xor [hl]                                      ; $4A85: $AE
    ld d, c                                       ; $4A86: $51
    xor [hl]                                      ; $4A87: $AE
    ld d, c                                       ; $4A88: $51
    xor [hl]                                      ; $4A89: $AE
    jp hl                                         ; $4A8A: $E9


    ld d, $29                                     ; $4A8B: $16 $29
    sub $E9                                       ; $4A8D: $D6 $E9
    sub [hl]                                      ; $4A8F: $96
    adc c                                         ; $4A90: $89
    halt                                          ; $4A91: $76
    ld e, a                                       ; $4A92: $5F
    jr nz, jr_016_4AD4                            ; $4A93: $20 $3F

    ld e, $7F                                     ; $4A95: $1E $7F
    ld a, $FF                                     ; $4A97: $3E $FF
    ld c, [hl]                                    ; $4A99: $4E
    rst RST_18                                    ; $4A9A: $DF
    ld c, $3F                                     ; $4A9B: $0E $3F
    ld d, $7E                                     ; $4A9D: $16 $7E
    jr z, @+$01                                   ; $4A9F: $28 $FF

    nop                                           ; $4AA1: $00
    call z, Call_016_7F73                         ; $4AA2: $CC $73 $7F
    inc c                                         ; $4AA5: $0C
    ccf                                           ; $4AA6: $3F
    nop                                           ; $4AA7: $00
    rst RST_00                                    ; $4AA8: $C7
    dec sp                                        ; $4AA9: $3B
    inc bc                                        ; $4AAA: $03
    db $FD                                        ; $4AAB: $FD
    add e                                         ; $4AAC: $83
    ld a, l                                       ; $4AAD: $7D
    adc a                                         ; $4AAE: $8F
    ld [hl], b                                    ; $4AAF: $70
    rst RST_38                                    ; $4AB0: $FF
    rrca                                          ; $4AB1: $0F
    rst RST_38                                    ; $4AB2: $FF
    ld a, a                                       ; $4AB3: $7F
    rst RST_38                                    ; $4AB4: $FF
    ld a, a                                       ; $4AB5: $7F
    ld a, a                                       ; $4AB6: $7F
    rra                                           ; $4AB7: $1F
    rra                                           ; $4AB8: $1F
    ld b, $16                                     ; $4AB9: $06 $16
    add hl, bc                                    ; $4ABB: $09
    ld hl, $3E1E                                  ; $4ABC: $21 $1E $3E
    nop                                           ; $4ABF: $00
    cp $1C                                        ; $4AC0: $FE $1C
    cp $BC                                        ; $4AC2: $FE $BC
    db $FC                                        ; $4AC4: $FC
    ld a, b                                       ; $4AC5: $78
    db $FC                                        ; $4AC6: $FC
    nop                                           ; $4AC7: $00
    ldh [c], a                                    ; $4AC8: $E2
    call c, $BEC1                                 ; $4AC9: $DC $C1 $BE
    rst RST_38                                    ; $4ACC: $FF
    add b                                         ; $4ACD: $80
    db $EB                                        ; $4ACE: $EB
    dec d                                         ; $4ACF: $15
    rst RST_38                                    ; $4AD0: $FF
    ld b, c                                       ; $4AD1: $41
    db $EB                                        ; $4AD2: $EB
    ld d, l                                       ; $4AD3: $55

jr_016_4AD4:
    rst RST_38                                    ; $4AD4: $FF
    ld b, c                                       ; $4AD5: $41
    db $E3                                        ; $4AD6: $E3
    ld e, l                                       ; $4AD7: $5D
    db $E3                                        ; $4AD8: $E3
    inc e                                         ; $4AD9: $1C
    rst RST_38                                    ; $4ADA: $FF
    nop                                           ; $4ADB: $00
    ld hl, $111E                                  ; $4ADC: $21 $1E $11
    ld c, $78                                     ; $4ADF: $0E $78
    nop                                           ; $4AE1: $00
    add b                                         ; $4AE2: $80
    nop                                           ; $4AE3: $00
    add b                                         ; $4AE4: $80
    nop                                           ; $4AE5: $00
    add b                                         ; $4AE6: $80
    nop                                           ; $4AE7: $00
    add b                                         ; $4AE8: $80
    nop                                           ; $4AE9: $00
    add b                                         ; $4AEA: $80
    nop                                           ; $4AEB: $00
    nop                                           ; $4AEC: $00
    nop                                           ; $4AED: $00
    nop                                           ; $4AEE: $00
    nop                                           ; $4AEF: $00
    nop                                           ; $4AF0: $00
    nop                                           ; $4AF1: $00
    nop                                           ; $4AF2: $00
    nop                                           ; $4AF3: $00
    nop                                           ; $4AF4: $00
    nop                                           ; $4AF5: $00
    nop                                           ; $4AF6: $00
    nop                                           ; $4AF7: $00
    nop                                           ; $4AF8: $00
    nop                                           ; $4AF9: $00
    nop                                           ; $4AFA: $00
    nop                                           ; $4AFB: $00
    nop                                           ; $4AFC: $00
    nop                                           ; $4AFD: $00
    nop                                           ; $4AFE: $00
    nop                                           ; $4AFF: $00
    ld de, $0E0E                                  ; $4B00: $11 $0E $0E
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
    nop                                           ; $4B1C: $00
    nop                                           ; $4B1D: $00
    nop                                           ; $4B1E: $00
    nop                                           ; $4B1F: $00
    rst RST_20                                    ; $4B20: $E7
    ld b, b                                       ; $4B21: $40
    ld h, l                                       ; $4B22: $65
    ld [bc], a                                    ; $4B23: $02
    inc bc                                        ; $4B24: $03
    nop                                           ; $4B25: $00
    ld bc, $0000                                  ; $4B26: $01 $00 $00
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
    nop                                           ; $4B3E: $00
    nop                                           ; $4B3F: $00
    nop                                           ; $4B40: $00
    nop                                           ; $4B41: $00
    nop                                           ; $4B42: $00
    nop                                           ; $4B43: $00
    ld bc, $0200                                  ; $4B44: $01 $00 $02
    ld bc, $0102                                  ; $4B47: $01 $02 $01
    ld [bc], a                                    ; $4B4A: $02
    ld bc, $0102                                  ; $4B4B: $01 $02 $01
    ld [bc], a                                    ; $4B4E: $02
    ld bc, $0102                                  ; $4B4F: $01 $02 $01
    ld [bc], a                                    ; $4B52: $02
    ld bc, $0001                                  ; $4B53: $01 $01 $00
    ld bc, $0100                                  ; $4B56: $01 $00 $01
    nop                                           ; $4B59: $00
    ld bc, $0100                                  ; $4B5A: $01 $00 $01
    nop                                           ; $4B5D: $00
    nop                                           ; $4B5E: $00
    nop                                           ; $4B5F: $00
    nop                                           ; $4B60: $00
    nop                                           ; $4B61: $00
    nop                                           ; $4B62: $00
    nop                                           ; $4B63: $00
    inc c                                         ; $4B64: $0C
    nop                                           ; $4B65: $00
    ld c, $04                                     ; $4B66: $0E $04
    ccf                                           ; $4B68: $3F
    ld [bc], a                                    ; $4B69: $02
    ld a, a                                       ; $4B6A: $7F
    ld a, [de]                                    ; $4B6B: $1A
    sbc a                                         ; $4B6C: $9F
    ld h, l                                       ; $4B6D: $65
    cp a                                          ; $4B6E: $BF
    ld e, e                                       ; $4B6F: $5B
    ld a, a                                       ; $4B70: $7F
    inc b                                         ; $4B71: $04
    inc a                                         ; $4B72: $3C
    inc de                                        ; $4B73: $13
    db $10                                        ; $4B74: $10
    rrca                                          ; $4B75: $0F
    jr nz, jr_016_4B97                            ; $4B76: $20 $1F

    jr nz, jr_016_4B99                            ; $4B78: $20 $1F

    jr nz, jr_016_4B9B                            ; $4B7A: $20 $1F

    ld de, $0F0E                                  ; $4B7C: $11 $0E $0F
    nop                                           ; $4B7F: $00
    nop                                           ; $4B80: $00
    nop                                           ; $4B81: $00
    ccf                                           ; $4B82: $3F
    nop                                           ; $4B83: $00
    ld [hl], e                                    ; $4B84: $73
    dec l                                         ; $4B85: $2D
    rst RST_38                                    ; $4B86: $FF
    ld [hl+], a                                   ; $4B87: $22
    rst RST_38                                    ; $4B88: $FF
    or [hl]                                       ; $4B89: $B6
    rst RST_38                                    ; $4B8A: $FF
    ld l, l                                       ; $4B8B: $6D
    rst RST_38                                    ; $4B8C: $FF
    rra                                           ; $4B8D: $1F
    rst RST_38                                    ; $4B8E: $FF
    ld e, $1F                                     ; $4B8F: $1E $1F
    rst RST_28                                    ; $4B91: $EF
    rra                                           ; $4B92: $1F
    db $EC                                        ; $4B93: $EC
    rrca                                          ; $4B94: $0F
    db $F4                                        ; $4B95: $F4
    dec c                                         ; $4B96: $0D

jr_016_4B97:
    ldh a, [c]                                    ; $4B97: $F2
    add hl, bc                                    ; $4B98: $09

jr_016_4B99:
    or $31                                        ; $4B99: $F6 $31

jr_016_4B9B:
    adc $E3                                       ; $4B9B: $CE $E3
    dec e                                         ; $4B9D: $1D
    rst RST_18                                    ; $4B9E: $DF
    db $E3                                        ; $4B9F: $E3
    nop                                           ; $4BA0: $00
    nop                                           ; $4BA1: $00
    nop                                           ; $4BA2: $00
    nop                                           ; $4BA3: $00
    add b                                         ; $4BA4: $80
    nop                                           ; $4BA5: $00
    rst RST_38                                    ; $4BA6: $FF
    nop                                           ; $4BA7: $00
    ldh a, [$FFDF]                                ; $4BA8: $F0 $DF
    db $E3                                        ; $4BAA: $E3
    inc a                                         ; $4BAB: $3C
    rst RST_38                                    ; $4BAC: $FF
    ret nc                                        ; $4BAD: $D0

    rst RST_38                                    ; $4BAE: $FF
    nop                                           ; $4BAF: $00
    rst RST_38                                    ; $4BB0: $FF
    nop                                           ; $4BB1: $00
    cp $B0                                        ; $4BB2: $FE $B0
    ld hl, sp+$30                                 ; $4BB4: $F8 $30
    ldh a, [$FFE0]                                ; $4BB6: $F0 $E0
    add sp, -$30                                  ; $4BB8: $E8 $D0
    call nz, $C238                                ; $4BBA: $C4 $38 $C2
    cp h                                          ; $4BBD: $BC
    add c                                         ; $4BBE: $81
    ld a, [hl]                                    ; $4BBF: $7E
    nop                                           ; $4BC0: $00
    nop                                           ; $4BC1: $00
    nop                                           ; $4BC2: $00
    nop                                           ; $4BC3: $00

jr_016_4BC4:
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
    add b                                         ; $4BD8: $80
    nop                                           ; $4BD9: $00
    add b                                         ; $4BDA: $80
    nop                                           ; $4BDB: $00
    add b                                         ; $4BDC: $80
    nop                                           ; $4BDD: $00
    add b                                         ; $4BDE: $80
    nop                                           ; $4BDF: $00
    ld d, $0F                                     ; $4BE0: $16 $0F
    rrca                                          ; $4BE2: $0F
    ld b, $0F                                     ; $4BE3: $06 $0F
    nop                                           ; $4BE5: $00
    rrca                                          ; $4BE6: $0F
    rlca                                          ; $4BE7: $07
    rla                                           ; $4BE8: $17
    ld a, [bc]                                    ; $4BE9: $0A
    rla                                           ; $4BEA: $17
    ld a, [bc]                                    ; $4BEB: $0A
    inc de                                        ; $4BEC: $13
    inc c                                         ; $4BED: $0C
    ld de, $720E                                  ; $4BEE: $11 $0E $72
    inc c                                         ; $4BF1: $0C
    cp a                                          ; $4BF2: $BF
    ld b, b                                       ; $4BF3: $40
    rst RST_38                                    ; $4BF4: $FF
    ld b, $BF                                     ; $4BF5: $06 $BF
    ld b, [hl]                                    ; $4BF7: $46
    ld l, a                                       ; $4BF8: $6F
    ld d, $2F                                     ; $4BF9: $16 $2F
    ld d, $2F                                     ; $4BFB: $16 $2F
    rla                                           ; $4BFD: $17
    cpl                                           ; $4BFE: $2F
    rla                                           ; $4BFF: $17
    ld hl, sp+$77                                 ; $4C00: $F8 $77
    ld hl, sp-$19                                 ; $4C02: $F8 $E7
    cp $07                                        ; $4C04: $FE $07
    rst RST_30                                    ; $4C06: $F7
    ld bc, $E011                                  ; $4C07: $01 $11 $E0
    db $10                                        ; $4C0A: $10
    ldh [$FF08], a                                ; $4C0B: $E0 $08
    ldh a, [$FF08]                                ; $4C0D: $F0 $08
    ldh a, [$FFFC]                                ; $4C0F: $F0 $FC
    nop                                           ; $4C11: $00
    rst RST_18                                    ; $4C12: $DF
    jr nz, jr_016_4BC4                            ; $4C13: $20 $AF

    ld d, d                                       ; $4C15: $52
    rst RST_18                                    ; $4C16: $DF
    ld [hl+], a                                   ; $4C17: $22
    di                                            ; $4C18: $F3
    adc l                                         ; $4C19: $8D
    jp $E3BD                                      ; $4C1A: $C3 $BD $E3


    ld e, l                                       ; $4C1D: $5D
    pop hl                                        ; $4C1E: $E1
    ld e, [hl]                                    ; $4C1F: $5E
    rlca                                          ; $4C20: $07
    ld hl, sp+$06                                 ; $4C21: $F8 $06
    db $FD                                        ; $4C23: $FD
    ld b, $FD                                     ; $4C24: $06 $FD
    add [hl]                                      ; $4C26: $86
    db $FD                                        ; $4C27: $FD
    xor $7D                                       ; $4C28: $EE $7D
    ld a, h                                       ; $4C2A: $7C
    dec de                                        ; $4C2B: $1B
    jr c, jr_016_4C35                             ; $4C2C: $38 $07

    db $10                                        ; $4C2E: $10
    rrca                                          ; $4C2F: $0F
    rrca                                          ; $4C30: $0F
    nop                                           ; $4C31: $00
    nop                                           ; $4C32: $00
    nop                                           ; $4C33: $00
    nop                                           ; $4C34: $00

jr_016_4C35:
    nop                                           ; $4C35: $00
    nop                                           ; $4C36: $00
    nop                                           ; $4C37: $00
    add b                                         ; $4C38: $80
    nop                                           ; $4C39: $00
    add b                                         ; $4C3A: $80
    nop                                           ; $4C3B: $00
    add b                                         ; $4C3C: $80
    nop                                           ; $4C3D: $00
    ret nz                                        ; $4C3E: $C0

    add b                                         ; $4C3F: $80
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
    nop                                           ; $4C4A: $00
    nop                                           ; $4C4B: $00
    nop                                           ; $4C4C: $00
    nop                                           ; $4C4D: $00
    nop                                           ; $4C4E: $00
    nop                                           ; $4C4F: $00
    add b                                         ; $4C50: $80
    nop                                           ; $4C51: $00
    ld b, b                                       ; $4C52: $40
    add b                                         ; $4C53: $80
    ld b, b                                       ; $4C54: $40
    add b                                         ; $4C55: $80
    ld b, b                                       ; $4C56: $40
    add b                                         ; $4C57: $80
    ld b, b                                       ; $4C58: $40
    add b                                         ; $4C59: $80
    ld b, b                                       ; $4C5A: $40
    add b                                         ; $4C5B: $80
    ret nz                                        ; $4C5C: $C0

    nop                                           ; $4C5D: $00
    ret nz                                        ; $4C5E: $C0

    nop                                           ; $4C5F: $00
    rla                                           ; $4C60: $17
    dec bc                                        ; $4C61: $0B
    rla                                           ; $4C62: $17
    dec bc                                        ; $4C63: $0B
    scf                                           ; $4C64: $37
    dec bc                                        ; $4C65: $0B
    ld d, a                                       ; $4C66: $57
    dec hl                                        ; $4C67: $2B
    adc a                                         ; $4C68: $8F
    ld [hl], b                                    ; $4C69: $70
    db $FC                                        ; $4C6A: $FC
    nop                                           ; $4C6B: $00

jr_016_4C6C:
    nop                                           ; $4C6C: $00
    nop                                           ; $4C6D: $00

jr_016_4C6E:
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
    ldh a, [$FFAF]                                ; $4C80: $F0 $AF
    ld hl, sp-$69                                 ; $4C82: $F8 $97
    ld hl, sp-$29                                 ; $4C84: $F8 $D7
    db $FD                                        ; $4C86: $FD
    jp z, $09DE                                   ; $4C87: $CA $DE $09

    inc e                                         ; $4C8A: $1C
    inc bc                                        ; $4C8B: $03
    inc b                                         ; $4C8C: $04
    inc bc                                        ; $4C8D: $03
    rlca                                          ; $4C8E: $07
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
    ldh [rLCDC], a                                ; $4CA0: $E0 $40
    ldh [rLCDC], a                                ; $4CA2: $E0 $40
    ld [hl], b                                    ; $4CA4: $70
    and b                                         ; $4CA5: $A0
    ldh a, [rNR41]                                ; $4CA6: $F0 $20
    ld [hl], b                                    ; $4CA8: $70
    add b                                         ; $4CA9: $80
    jr nz, jr_016_4C6C                            ; $4CAA: $20 $C0

    jr nz, jr_016_4C6E                            ; $4CAC: $20 $C0

    ldh [rP1], a                                  ; $4CAE: $E0 $00
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
    nop                                           ; $4CC0: $00
    nop                                           ; $4CC1: $00
    nop                                           ; $4CC2: $00
    nop                                           ; $4CC3: $00
    nop                                           ; $4CC4: $00
    nop                                           ; $4CC5: $00
    nop                                           ; $4CC6: $00
    nop                                           ; $4CC7: $00
    ld a, $00                                     ; $4CC8: $3E $00
    ld a, a                                       ; $4CCA: $7F
    nop                                           ; $4CCB: $00

jr_016_4CCC:
    ld a, a                                       ; $4CCC: $7F
    dec a                                         ; $4CCD: $3D
    ld a, a                                       ; $4CCE: $7F
    ld a, $7F                                     ; $4CCF: $3E $7F
    ld a, $FF                                     ; $4CD1: $3E $FF
    ld b, $8F                                     ; $4CD3: $06 $8F
    ld [hl], b                                    ; $4CD5: $70
    adc c                                         ; $4CD6: $89
    halt                                          ; $4CD7: $76
    adc c                                         ; $4CD8: $89
    halt                                          ; $4CD9: $76
    adc c                                         ; $4CDA: $89

jr_016_4CDB:
    halt                                          ; $4CDB: $76
    adc c                                         ; $4CDC: $89
    halt                                          ; $4CDD: $76
    ld c, c                                       ; $4CDE: $49
    ld [hl], $00                                  ; $4CDF: $36 $00
    nop                                           ; $4CE1: $00
    nop                                           ; $4CE2: $00
    nop                                           ; $4CE3: $00
    nop                                           ; $4CE4: $00
    nop                                           ; $4CE5: $00
    nop                                           ; $4CE6: $00
    nop                                           ; $4CE7: $00
    inc bc                                        ; $4CE8: $03
    nop                                           ; $4CE9: $00
    rra                                           ; $4CEA: $1F
    ld [bc], a                                    ; $4CEB: $02
    sbc a                                         ; $4CEC: $9F
    ld a, [bc]                                    ; $4CED: $0A
    rst RST_08                                    ; $4CEE: $CF
    add a                                         ; $4CEF: $87
    rst RST_08                                    ; $4CF0: $CF
    ld b, $77                                     ; $4CF1: $06 $77
    adc c                                         ; $4CF3: $89
    ld hl, sp+$37                                 ; $4CF4: $F8 $37
    ld a, a                                       ; $4CF6: $7F
    cp b                                          ; $4CF7: $B8
    cp a                                          ; $4CF8: $BF
    jp c, $C0FF                                   ; $4CF9: $DA $FF $C0

    ld [hl], c                                    ; $4CFC: $71
    xor [hl]                                      ; $4CFD: $AE
    ld sp, hl                                     ; $4CFE: $F9
    ld l, a                                       ; $4CFF: $6F
    nop                                           ; $4D00: $00
    nop                                           ; $4D01: $00
    nop                                           ; $4D02: $00
    nop                                           ; $4D03: $00
    nop                                           ; $4D04: $00
    nop                                           ; $4D05: $00
    nop                                           ; $4D06: $00
    nop                                           ; $4D07: $00
    ret nz                                        ; $4D08: $C0

    nop                                           ; $4D09: $00
    jr nc, jr_016_4CCC                            ; $4D0A: $30 $C0

    ldh a, [rNR41]                                ; $4D0C: $F0 $20
    ldh a, [$FFC0]                                ; $4D0E: $F0 $C0
    ret z                                         ; $4D10: $C8

    jr nc, jr_016_4CDB                            ; $4D11: $30 $C8

    or b                                          ; $4D13: $B0
    adc a                                         ; $4D14: $8F
    ld [hl], b                                    ; $4D15: $70
    sbc $2D                                       ; $4D16: $DE $2D
    ccf                                           ; $4D18: $3F
    db $DB                                        ; $4D19: $DB
    cp $03                                        ; $4D1A: $FE $03
    push hl                                       ; $4D1C: $E5
    db $DB                                        ; $4D1D: $DB
    rst RST_20                                    ; $4D1E: $E7
    ld e, d                                       ; $4D1F: $5A
    nop                                           ; $4D20: $00
    nop                                           ; $4D21: $00
    nop                                           ; $4D22: $00
    nop                                           ; $4D23: $00
    ret nz                                        ; $4D24: $C0

    nop                                           ; $4D25: $00
    ld b, b                                       ; $4D26: $40
    add b                                         ; $4D27: $80
    ld b, b                                       ; $4D28: $40
    add b                                         ; $4D29: $80
    add b                                         ; $4D2A: $80
    nop                                           ; $4D2B: $00
    add b                                         ; $4D2C: $80
    nop                                           ; $4D2D: $00
    nop                                           ; $4D2E: $00
    nop                                           ; $4D2F: $00
    nop                                           ; $4D30: $00
    nop                                           ; $4D31: $00
    nop                                           ; $4D32: $00
    nop                                           ; $4D33: $00
    nop                                           ; $4D34: $00
    nop                                           ; $4D35: $00
    add b                                         ; $4D36: $80
    nop                                           ; $4D37: $00
    ld h, b                                       ; $4D38: $60
    add b                                         ; $4D39: $80
    ld [hl], b                                    ; $4D3A: $70
    and b                                         ; $4D3B: $A0
    ld [hl], b                                    ; $4D3C: $70
    and b                                         ; $4D3D: $A0
    ldh a, [rLCDC]                                ; $4D3E: $F0 $40
    cpl                                           ; $4D40: $2F
    ld de, $001F                                  ; $4D41: $11 $1F $00
    add hl, bc                                    ; $4D44: $09
    ld b, $11                                     ; $4D45: $06 $11
    ld c, $13                                     ; $4D47: $0E $13
    dec c                                         ; $4D49: $0D
    inc hl                                        ; $4D4A: $23
    dec e                                         ; $4D4B: $1D
    inc hl                                        ; $4D4C: $23
    dec e                                         ; $4D4D: $1D
    ld b, a                                       ; $4D4E: $47
    ld a, [hl-]                                   ; $4D4F: $3A
    rst RST_20                                    ; $4D50: $E7
    ld a, [hl-]                                   ; $4D51: $3A
    rst RST_20                                    ; $4D52: $E7
    ld a, [hl-]                                   ; $4D53: $3A
    cp [hl]                                       ; $4D54: $BE
    ld d, l                                       ; $4D55: $55
    sbc a                                         ; $4D56: $9F
    ld h, h                                       ; $4D57: $64
    adc [hl]                                      ; $4D58: $8E
    ld [hl], c                                    ; $4D59: $71
    sub h                                         ; $4D5A: $94
    ld h, e                                       ; $4D5B: $63
    ld l, b                                       ; $4D5C: $68
    rlca                                          ; $4D5D: $07
    rrca                                          ; $4D5E: $0F
    nop                                           ; $4D5F: $00
    rst RST_38                                    ; $4D60: $FF
    ld h, e                                       ; $4D61: $63
    rst RST_30                                    ; $4D62: $F7
    ld [$94EB], sp                                ; $4D63: $08 $EB $94
    rst RST_30                                    ; $4D66: $F7
    adc b                                         ; $4D67: $88
    sbc a                                         ; $4D68: $9F
    ld h, d                                       ; $4D69: $62
    add a                                         ; $4D6A: $87
    ld a, d                                       ; $4D6B: $7A
    adc a                                         ; $4D6C: $8F
    ld [hl], l                                    ; $4D6D: $75
    rrca                                          ; $4D6E: $0F
    push af                                       ; $4D6F: $F5
    rrca                                          ; $4D70: $0F
    db $F4                                        ; $4D71: $F4
    rra                                           ; $4D72: $1F
    add sp, $1E                                   ; $4D73: $E8 $1E
    jp hl                                         ; $4D75: $E9


    cp d                                          ; $4D76: $BA
    ld d, c                                       ; $4D77: $51
    ld a, d                                       ; $4D78: $7A
    sub c                                         ; $4D79: $91
    ld a, [hl-]                                   ; $4D7A: $3A
    pop bc                                        ; $4D7B: $C1
    inc hl                                        ; $4D7C: $23
    ret nz                                        ; $4D7D: $C0

    ldh [rP1], a                                  ; $4D7E: $E0 $00
    cp $38                                        ; $4D80: $FE $38
    ld a, $C4                                     ; $4D82: $3E $C4
    rst RST_18                                    ; $4D84: $DF
    db $EC                                        ; $4D85: $EC
    db $EC                                        ; $4D86: $EC
    db $D3                                        ; $4D87: $D3
    ldh [$FFDF], a                                ; $4D88: $E0 $DF
    ldh a, [rIF]                                  ; $4D8A: $F0 $0F
    ld hl, sp-$39                                 ; $4D8C: $F8 $C7
    and $D9                                       ; $4D8E: $E6 $D9
    pop hl                                        ; $4D90: $E1
    sbc $F8                                       ; $4D91: $DE $F8
    rlca                                          ; $4D93: $07
    cp $79                                        ; $4D94: $FE $79
    rst RST_38                                    ; $4D96: $FF
    ld a, [hl]                                    ; $4D97: $7E
    rst RST_38                                    ; $4D98: $FF
    ld a, a                                       ; $4D99: $7F
    ld a, a                                       ; $4D9A: $7F
    adc [hl]                                      ; $4D9B: $8E
    rst RST_08                                    ; $4D9C: $CF
    nop                                           ; $4D9D: $00
    nop                                           ; $4D9E: $00
    nop                                           ; $4D9F: $00
    ldh [rP1], a                                  ; $4DA0: $E0 $00
    ret nz                                        ; $4DA2: $C0

    nop                                           ; $4DA3: $00
    ret nz                                        ; $4DA4: $C0

    nop                                           ; $4DA5: $00
    ret nz                                        ; $4DA6: $C0

    nop                                           ; $4DA7: $00
    ret nz                                        ; $4DA8: $C0

    nop                                           ; $4DA9: $00
    ld b, b                                       ; $4DAA: $40
    add b                                         ; $4DAB: $80
    add b                                         ; $4DAC: $80
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
    rra                                           ; $4DC0: $1F
    nop                                           ; $4DC1: $00
    ccf                                           ; $4DC2: $3F
    nop                                           ; $4DC3: $00
    ccf                                           ; $4DC4: $3F
    ld e, $3F                                     ; $4DC5: $1E $3F
    rra                                           ; $4DC7: $1F
    ccf                                           ; $4DC8: $3F
    rra                                           ; $4DC9: $1F
    ld a, a                                       ; $4DCA: $7F
    inc bc                                        ; $4DCB: $03
    ld b, a                                       ; $4DCC: $47
    jr c, jr_016_4E13                             ; $4DCD: $38 $44

    dec sp                                        ; $4DCF: $3B
    ld b, h                                       ; $4DD0: $44
    dec sp                                        ; $4DD1: $3B
    ld b, h                                       ; $4DD2: $44
    dec sp                                        ; $4DD3: $3B
    ld b, h                                       ; $4DD4: $44
    dec sp                                        ; $4DD5: $3B
    inc h                                         ; $4DD6: $24
    dec de                                        ; $4DD7: $1B
    rla                                           ; $4DD8: $17
    ld [$000F], sp                                ; $4DD9: $08 $0F $00
    inc b                                         ; $4DDC: $04
    inc bc                                        ; $4DDD: $03
    ld [$0107], sp                                ; $4DDE: $08 $07 $01
    nop                                           ; $4DE1: $00
    adc a                                         ; $4DE2: $8F
    ld bc, $85CF                                  ; $4DE3: $01 $CF $85
    rst RST_20                                    ; $4DE6: $E7
    ld b, e                                       ; $4DE7: $43
    rst RST_20                                    ; $4DE8: $E7
    inc bc                                        ; $4DE9: $03
    cp e                                          ; $4DEA: $BB
    ld b, h                                       ; $4DEB: $44
    db $FC                                        ; $4DEC: $FC
    dec de                                        ; $4DED: $1B
    cp a                                          ; $4DEE: $BF

jr_016_4DEF:
    ld e, h                                       ; $4DEF: $5C
    rst RST_18                                    ; $4DF0: $DF

jr_016_4DF1:
    ld l, l                                       ; $4DF1: $6D
    rst RST_38                                    ; $4DF2: $FF
    ld h, b                                       ; $4DF3: $60
    cp b                                          ; $4DF4: $B8
    ld d, a                                       ; $4DF5: $57
    db $FC                                        ; $4DF6: $FC
    scf                                           ; $4DF7: $37
    rst RST_38                                    ; $4DF8: $FF
    or c                                          ; $4DF9: $B1
    rst RST_38                                    ; $4DFA: $FF
    inc c                                         ; $4DFB: $0C
    ccf                                           ; $4DFC: $3F
    sbc $1F                                       ; $4DFD: $DE $1F
    xor $E0                                       ; $4DFF: $EE $E0
    nop                                           ; $4E01: $00
    sbc b                                         ; $4E02: $98
    ld h, b                                       ; $4E03: $60
    ld hl, sp+$10                                 ; $4E04: $F8 $10
    ld hl, sp-$20                                 ; $4E06: $F8 $E0
    db $E4                                        ; $4E08: $E4
    jr jr_016_4DEF                                ; $4E09: $18 $E4

    ret c                                         ; $4E0B: $D8

    ld b, a                                       ; $4E0C: $47
    cp b                                          ; $4E0D: $B8
    rst RST_28                                    ; $4E0E: $EF
    ld d, $9F                                     ; $4E0F: $16 $9F
    ld l, l                                       ; $4E11: $6D
    rst RST_38                                    ; $4E12: $FF

jr_016_4E13:
    ld bc, $6DF2                                  ; $4E13: $01 $F2 $6D
    di                                            ; $4E16: $F3
    xor l                                         ; $4E17: $AD
    rst RST_38                                    ; $4E18: $FF
    sbc h                                         ; $4E19: $9C
    sbc a                                         ; $4E1A: $9F
    ld h, b                                       ; $4E1B: $60
    ld l, d                                       ; $4E1C: $6A
    pop af                                        ; $4E1D: $F1
    ld [hl], c                                    ; $4E1E: $71
    ldh [$FFE0], a                                ; $4E1F: $E0 $E0
    nop                                           ; $4E21: $00
    jr nz, @-$3E                                  ; $4E22: $20 $C0

    and b                                         ; $4E24: $A0
    ret nz                                        ; $4E25: $C0

    ld h, b                                       ; $4E26: $60
    add b                                         ; $4E27: $80
    ret nc                                        ; $4E28: $D0

    and b                                         ; $4E29: $A0
    ret z                                         ; $4E2A: $C8

    jr nc, jr_016_4DF1                            ; $4E2B: $30 $C4

    cp b                                          ; $4E2D: $B8
    adc [hl]                                      ; $4E2E: $8E
    ld [hl], b                                    ; $4E2F: $70
    rra                                           ; $4E30: $1F
    ld [$D03F], a                                 ; $4E31: $EA $3F $D0
    cp a                                          ; $4E34: $BF
    ld b, [hl]                                    ; $4E35: $46
    ld a, a                                       ; $4E36: $7F
    jr z, jr_016_4E77                             ; $4E37: $28 $3E

    inc d                                         ; $4E39: $14
    inc e                                         ; $4E3A: $1C
    nop                                           ; $4E3B: $00
    add b                                         ; $4E3C: $80
    nop                                           ; $4E3D: $00
    add b                                         ; $4E3E: $80
    nop                                           ; $4E3F: $00
    ld [$1007], sp                                ; $4E40: $08 $07 $10
    rrca                                          ; $4E43: $0F
    db $10                                        ; $4E44: $10
    rrca                                          ; $4E45: $0F
    inc hl                                        ; $4E46: $23
    inc e                                         ; $4E47: $1C
    ld [hl], l                                    ; $4E48: $75
    ld a, [de]                                    ; $4E49: $1A
    ld [hl], a                                    ; $4E4A: $77
    jr jr_016_4EAA                                ; $4E4B: $18 $5D

    ld a, [hl+]                                   ; $4E4D: $2A
    ld c, a                                       ; $4E4E: $4F
    jr nc, jr_016_4E96                            ; $4E4F: $30 $45

    jr c, jr_016_4E9B                             ; $4E51: $38 $48

    jr nc, @+$32                                  ; $4E53: $30 $30

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
    ccf                                           ; $4E60: $3F
    and $7F                                       ; $4E61: $E6 $7F
    ret nz                                        ; $4E63: $C0

    rst RST_00                                    ; $4E64: $C7
    dec sp                                        ; $4E65: $3B
    inc bc                                        ; $4E66: $03
    db $FD                                        ; $4E67: $FD
    add e                                         ; $4E68: $83
    ld a, l                                       ; $4E69: $7D
    adc a                                         ; $4E6A: $8F
    ld [hl], b                                    ; $4E6B: $70
    rst RST_38                                    ; $4E6C: $FF
    rrca                                          ; $4E6D: $0F
    rst RST_38                                    ; $4E6E: $FF
    rst RST_38                                    ; $4E6F: $FF
    rst RST_38                                    ; $4E70: $FF
    ld a, a                                       ; $4E71: $7F
    ld a, a                                       ; $4E72: $7F
    rra                                           ; $4E73: $1F
    rra                                           ; $4E74: $1F
    ld b, $16                                     ; $4E75: $06 $16

jr_016_4E77:
    add hl, bc                                    ; $4E77: $09
    ld hl, $3E1E                                  ; $4E78: $21 $1E $3E
    nop                                           ; $4E7B: $00
    nop                                           ; $4E7C: $00
    nop                                           ; $4E7D: $00
    nop                                           ; $4E7E: $00
    nop                                           ; $4E7F: $00
    ld [hl], b                                    ; $4E80: $70
    ldh [$FFF8], a                                ; $4E81: $E0 $F8
    nop                                           ; $4E83: $00
    call nz, $82B8                                ; $4E84: $C4 $B8 $82
    ld a, h                                       ; $4E87: $7C
    cp a                                          ; $4E88: $BF
    ld b, b                                       ; $4E89: $40
    db $EB                                        ; $4E8A: $EB
    dec d                                         ; $4E8B: $15
    rst RST_38                                    ; $4E8C: $FF
    ld b, c                                       ; $4E8D: $41
    db $EB                                        ; $4E8E: $EB
    ld d, l                                       ; $4E8F: $55
    rst RST_38                                    ; $4E90: $FF
    ld b, c                                       ; $4E91: $41
    db $E3                                        ; $4E92: $E3
    ld e, l                                       ; $4E93: $5D
    db $E3                                        ; $4E94: $E3
    inc e                                         ; $4E95: $1C

jr_016_4E96:
    rst RST_38                                    ; $4E96: $FF
    nop                                           ; $4E97: $00
    ld hl, $111E                                  ; $4E98: $21 $1E $11

jr_016_4E9B:
    ld c, $11                                     ; $4E9B: $0E $11
    ld c, $0E                                     ; $4E9D: $0E $0E
    nop                                           ; $4E9F: $00
    add b                                         ; $4EA0: $80
    nop                                           ; $4EA1: $00
    add b                                         ; $4EA2: $80
    nop                                           ; $4EA3: $00
    add b                                         ; $4EA4: $80
    nop                                           ; $4EA5: $00
    add b                                         ; $4EA6: $80
    nop                                           ; $4EA7: $00
    nop                                           ; $4EA8: $00
    nop                                           ; $4EA9: $00

jr_016_4EAA:
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
    inc bc                                        ; $4EC0: $03
    nop                                           ; $4EC1: $00
    rlca                                          ; $4EC2: $07
    ld [bc], a                                    ; $4EC3: $02
    rlca                                          ; $4EC4: $07
    ld bc, $0103                                  ; $4EC5: $01 $03 $01
    inc bc                                        ; $4EC8: $03
    nop                                           ; $4EC9: $00
    ld bc, $0200                                  ; $4ECA: $01 $00 $02
    ld bc, $0304                                  ; $4ECD: $01 $04 $03
    ret z                                         ; $4ED0: $C8

    rlca                                          ; $4ED1: $07
    cp h                                          ; $4ED2: $BC
    ld b, e                                       ; $4ED3: $43
    cp a                                          ; $4ED4: $BF
    ld c, h                                       ; $4ED5: $4C
    rst RST_18                                    ; $4ED6: $DF
    cpl                                           ; $4ED7: $2F
    cp a                                          ; $4ED8: $BF
    ld e, a                                       ; $4ED9: $5F
    rst RST_38                                    ; $4EDA: $FF
    rra                                           ; $4EDB: $1F
    cp a                                          ; $4EDC: $BF
    ld e, [hl]                                    ; $4EDD: $5E
    cp a                                          ; $4EDE: $BF
    ld e, [hl]                                    ; $4EDF: $5E
    nop                                           ; $4EE0: $00
    nop                                           ; $4EE1: $00
    ld bc, $0300                                  ; $4EE2: $01 $00 $03
    ld bc, $0003                                  ; $4EE5: $01 $03 $00
    ld [bc], a                                    ; $4EE8: $02
    ld bc, $0001                                  ; $4EE9: $01 $01 $00
    inc bc                                        ; $4EEC: $03
    ld bc, $0007                                  ; $4EED: $01 $07 $00
    ld [$0907], sp                                ; $4EF0: $08 $07 $09
    rlca                                          ; $4EF3: $07
    rrca                                          ; $4EF4: $0F
    inc bc                                        ; $4EF5: $03
    rra                                           ; $4EF6: $1F
    inc c                                         ; $4EF7: $0C
    cp $01                                        ; $4EF8: $FE $01
    rst RST_38                                    ; $4EFA: $FF
    ld hl, sp-$04                                 ; $4EFB: $F8 $FC
    dec sp                                        ; $4EFD: $3B
    db $FC                                        ; $4EFE: $FC
    ld e, e                                       ; $4EFF: $5B
    ldh a, [rP1]                                  ; $4F00: $F0 $00
    ld [$C4F0], sp                                ; $4F02: $08 $F0 $C4
    jr c, @-$0C                                   ; $4F05: $38 $F2

    adc h                                         ; $4F07: $8C
    rst RST_10                                    ; $4F08: $D7
    jr z, @-$06                                   ; $4F09: $28 $F8

    rlca                                          ; $4F0B: $07
    ei                                            ; $4F0C: $FB
    db $EC                                        ; $4F0D: $EC
    rst RST_30                                    ; $4F0E: $F7
    sbc b                                         ; $4F0F: $98
    rst RST_28                                    ; $4F10: $EF
    db $10                                        ; $4F11: $10
    rst RST_18                                    ; $4F12: $DF
    scf                                           ; $4F13: $37
    rst RST_38                                    ; $4F14: $FF
    rrca                                          ; $4F15: $0F
    rst RST_38                                    ; $4F16: $FF
    rrca                                          ; $4F17: $0F
    rrca                                          ; $4F18: $0F
    ldh a, [c]                                    ; $4F19: $F2
    rst RST_38                                    ; $4F1A: $FF
    ld bc, $FD03                                  ; $4F1B: $01 $03 $FD
    inc bc                                        ; $4F1E: $03
    db $FC                                        ; $4F1F: $FC
    nop                                           ; $4F20: $00

jr_016_4F21:
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
    add b                                         ; $4F2E: $80
    nop                                           ; $4F2F: $00
    ld h, b                                       ; $4F30: $60
    add b                                         ; $4F31: $80
    ldh a, [rP1]                                  ; $4F32: $F0 $00
    ldh a, [rP1]                                  ; $4F34: $F0 $00
    ldh a, [rP1]                                  ; $4F36: $F0 $00
    ldh [rP1], a                                  ; $4F38: $E0 $00
    ldh [rP1], a                                  ; $4F3A: $E0 $00
    ret nz                                        ; $4F3C: $C0

    nop                                           ; $4F3D: $00
    and b                                         ; $4F3E: $A0
    ld b, b                                       ; $4F3F: $40
    db $FC                                        ; $4F40: $FC
    xor e                                         ; $4F41: $AB
    db $FC                                        ; $4F42: $FC
    inc hl                                        ; $4F43: $23
    ld [hl], e                                    ; $4F44: $73
    adc h                                         ; $4F45: $8C
    ld [hl], b                                    ; $4F46: $70
    xor a                                         ; $4F47: $AF
    ld [hl], b                                    ; $4F48: $70
    adc a                                         ; $4F49: $8F
    ld e, l                                       ; $4F4A: $5D
    add d                                         ; $4F4B: $82
    or a                                          ; $4F4C: $B7
    ld [$14AB], sp                                ; $4F4D: $08 $AB $14
    sub a                                         ; $4F50: $97
    ld [$039C], sp                                ; $4F51: $08 $9C $03
    db $10                                        ; $4F54: $10
    rrca                                          ; $4F55: $0F
    ld [$0807], sp                                ; $4F56: $08 $07 $08
    rlca                                          ; $4F59: $07
    adc b                                         ; $4F5A: $88
    rlca                                          ; $4F5B: $07
    add h                                         ; $4F5C: $84
    inc bc                                        ; $4F5D: $03
    add l                                         ; $4F5E: $85
    ld [bc], a                                    ; $4F5F: $02
    ld b, $F9                                     ; $4F60: $06 $F9
    ld c, $F3                                     ; $4F62: $0E $F3
    di                                            ; $4F64: $F3
    ld bc, $0183                                  ; $4F65: $01 $83 $01
    add c                                         ; $4F68: $81
    nop                                           ; $4F69: $00
    ld bc, $E000                                  ; $4F6A: $01 $00 $E0
    nop                                           ; $4F6D: $00
    ldh [$FFC0], a                                ; $4F6E: $E0 $C0
    ldh a, [$FFE0]                                ; $4F70: $F0 $E0
    ldh a, [$FF60]                                ; $4F72: $F0 $60
    ldh a, [$FF60]                                ; $4F74: $F0 $60
    ld hl, sp+$70                                 ; $4F76: $F8 $70
    ld a, b                                       ; $4F78: $78
    or b                                          ; $4F79: $B0
    ld a, b                                       ; $4F7A: $78
    or b                                          ; $4F7B: $B0
    ld a, b                                       ; $4F7C: $78
    or b                                          ; $4F7D: $B0
    db $FC                                        ; $4F7E: $FC
    jr jr_016_4F21                                ; $4F7F: $18 $A0

    ld b, b                                       ; $4F81: $40
    sub b                                         ; $4F82: $90
    ld h, b                                       ; $4F83: $60
    db $10                                        ; $4F84: $10
    ldh [$FF08], a                                ; $4F85: $E0 $08
    ldh a, [$FF08]                                ; $4F87: $F0 $08
    ldh a, [rDIV]                                 ; $4F89: $F0 $04
    ld hl, sp+$04                                 ; $4F8B: $F8 $04
    ld hl, sp-$7E                                 ; $4F8D: $F8 $82
    db $FC                                        ; $4F8F: $FC
    add d                                         ; $4F90: $82
    db $FC                                        ; $4F91: $FC
    jp $C77E                                      ; $4F92: $C3 $7E $C7


    ld a, h                                       ; $4F95: $7C
    ld a, l                                       ; $4F96: $7D
    ld a, [hl-]                                   ; $4F97: $3A
    ld a, c                                       ; $4F98: $79
    ld b, $21                                     ; $4F99: $06 $21
    ld e, $19                                     ; $4F9B: $1E $19
    ld b, $07                                     ; $4F9D: $06 $07
    nop                                           ; $4F9F: $00
    ld e, a                                       ; $4FA0: $5F
    ld l, $5F                                     ; $4FA1: $2E $5F
    cpl                                           ; $4FA3: $2F
    ld e, a                                       ; $4FA4: $5F
    cpl                                           ; $4FA5: $2F
    cp a                                          ; $4FA6: $BF
    ld c, h                                       ; $4FA7: $4C
    inc e                                         ; $4FA8: $1C
    ldh [$FF30], a                                ; $4FA9: $E0 $30
    ret nz                                        ; $4FAB: $C0

    ret nz                                        ; $4FAC: $C0

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
    adc a                                         ; $4FC0: $8F
    halt                                          ; $4FC1: $76
    add a                                         ; $4FC2: $87
    ld a, b                                       ; $4FC3: $78
    add h                                         ; $4FC4: $84
    ld a, b                                       ; $4FC5: $78
    ld b, h                                       ; $4FC6: $44
    jr c, jr_016_5001                             ; $4FC7: $38 $38

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
    nop                                           ; $4FDE: $00
    nop                                           ; $4FDF: $00
    ld bc, $0200                                  ; $4FE0: $01 $00 $02
    ld bc, $0003                                  ; $4FE3: $01 $03 $00
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
    nop                                           ; $4FFA: $00
    nop                                           ; $4FFB: $00
    nop                                           ; $4FFC: $00
    nop                                           ; $4FFD: $00
    nop                                           ; $4FFE: $00
    nop                                           ; $4FFF: $00
    nop                                           ; $5000: $00

jr_016_5001:
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
    ld bc, $0700                                  ; $5010: $01 $00 $07
    nop                                           ; $5013: $00
    rrca                                          ; $5014: $0F
    dec b                                         ; $5015: $05
    rra                                           ; $5016: $1F
    dec b                                         ; $5017: $05
    ccf                                           ; $5018: $3F
    db $10                                        ; $5019: $10
    ccf                                           ; $501A: $3F
    rla                                           ; $501B: $17
    scf                                           ; $501C: $37
    nop                                           ; $501D: $00
    nop                                           ; $501E: $00
    nop                                           ; $501F: $00
    nop                                           ; $5020: $00
    nop                                           ; $5021: $00
    ld a, b                                       ; $5022: $78
    nop                                           ; $5023: $00
    and $18                                       ; $5024: $E6 $18
    pop af                                        ; $5026: $F1
    ld c, $FC                                     ; $5027: $0E $FC
    rlca                                          ; $5029: $07
    ei                                            ; $502A: $FB
    rlca                                          ; $502B: $07
    ld a, l                                       ; $502C: $7D
    inc bc                                        ; $502D: $03
    ld a, h                                       ; $502E: $7C
    inc de                                        ; $502F: $13
    rst RST_38                                    ; $5030: $FF
    ld a, [hl-]                                   ; $5031: $3A
    cp a                                          ; $5032: $BF
    ld b, l                                       ; $5033: $45
    rst RST_10                                    ; $5034: $D7
    xor b                                         ; $5035: $A8
    db $E3                                        ; $5036: $E3
    ld e, h                                       ; $5037: $5C
    ldh [c], a                                    ; $5038: $E2
    ld e, h                                       ; $5039: $5C
    db $F4                                        ; $503A: $F4
    adc b                                         ; $503B: $88
    ld hl, sp-$60                                 ; $503C: $F8 $A0
    ldh a, [rP1]                                  ; $503E: $F0 $00
    ldh [rP1], a                                  ; $5040: $E0 $00
    ldh a, [rLCDC]                                ; $5042: $F0 $40
    rst RST_38                                    ; $5044: $FF
    ld b, b                                       ; $5045: $40
    cp a                                          ; $5046: $BF
    ld c, a                                       ; $5047: $4F
    cp a                                          ; $5048: $BF
    ld c, a                                       ; $5049: $4F
    cp a                                          ; $504A: $BF
    ld c, a                                       ; $504B: $4F
    cp a                                          ; $504C: $BF
    ld e, a                                       ; $504D: $5F
    ld a, a                                       ; $504E: $7F
    inc bc                                        ; $504F: $03
    ld h, e                                       ; $5050: $63
    inc e                                         ; $5051: $1C
    ld b, b                                       ; $5052: $40
    ccf                                           ; $5053: $3F
    jp $E73C                                      ; $5054: $C3 $3C $E7


    ld e, d                                       ; $5057: $5A
    cp $25                                        ; $5058: $FE $25
    cp a                                          ; $505A: $BF
    ld e, b                                       ; $505B: $58
    sbc l                                         ; $505C: $9D
    ld h, d                                       ; $505D: $62
    db $E3                                        ; $505E: $E3
    sbc h                                         ; $505F: $9C
    ld h, b                                       ; $5060: $60
    nop                                           ; $5061: $00
    ld [hl], b                                    ; $5062: $70
    jr nz, @-$0E                                  ; $5063: $20 $F0

    jr nz, @-$26                                  ; $5065: $20 $D8

    or b                                          ; $5067: $B0
    ret c                                         ; $5068: $D8

    or b                                          ; $5069: $B0
    reti                                          ; $506A: $D9


    or b                                          ; $506B: $B0
    sbc $B1                                       ; $506C: $DE $B1
    ld hl, sp-$79                                 ; $506E: $F8 $87
    di                                            ; $5070: $F3
    ld c, $ED                                     ; $5071: $0E $ED
    ld e, [hl]                                    ; $5073: $5E
    ld a, e                                       ; $5074: $7B
    sbc h                                         ; $5075: $9C
    ld h, e                                       ; $5076: $63
    sbc h                                         ; $5077: $9C
    ld l, a                                       ; $5078: $6F
    sbc l                                         ; $5079: $9D
    rst RST_38                                    ; $507A: $FF
    ld e, d                                       ; $507B: $5A
    or $09                                        ; $507C: $F6 $09
    db $FC                                        ; $507E: $FC
    db $E3                                        ; $507F: $E3
    ldh [rP1], a                                  ; $5080: $E0 $00
    ld [hl], b                                    ; $5082: $70
    add b                                         ; $5083: $80
    ldh a, [rP1]                                  ; $5084: $F0 $00
    ldh a, [rP1]                                  ; $5086: $F0 $00
    ldh a, [rP1]                                  ; $5088: $F0 $00
    ldh [rP1], a                                  ; $508A: $E0 $00
    ldh a, [$FF80]                                ; $508C: $F0 $80
    add sp, -$30                                  ; $508E: $E8 $D0
    db $E4                                        ; $5090: $E4
    jr jr_016_50B5                                ; $5091: $18 $22

    call c, $BC42                                 ; $5093: $DC $42 $BC
    ld [hl], d                                    ; $5096: $72
    adc h                                         ; $5097: $8C
    ld a, [$FE04]                                 ; $5098: $FA $04 $FE
    ret nz                                        ; $509B: $C0

    cp $B0                                        ; $509C: $FE $B0
    cp $28                                        ; $509E: $FE $28
    rst RST_38                                    ; $50A0: $FF
    nop                                           ; $50A1: $00
    call z, Call_016_7F73                         ; $50A2: $CC $73 $7F
    inc c                                         ; $50A5: $0C
    rra                                           ; $50A6: $1F
    nop                                           ; $50A7: $00
    rrca                                          ; $50A8: $0F
    inc bc                                        ; $50A9: $03
    inc sp                                        ; $50AA: $33
    dec c                                         ; $50AB: $0D
    ld b, e                                       ; $50AC: $43
    dec a                                         ; $50AD: $3D
    add c                                         ; $50AE: $81
    ld a, [hl]                                    ; $50AF: $7E
    ldh a, [c]                                    ; $50B0: $F2
    inc c                                         ; $50B1: $0C
    db $FC                                        ; $50B2: $FC
    ldh a, [$FFF8]                                ; $50B3: $F0 $F8

jr_016_50B5:
    ldh a, [$FFF8]                                ; $50B5: $F0 $F8
    ldh a, [$FFF8]                                ; $50B7: $F0 $F8
    ldh a, [$FFF8]                                ; $50B9: $F0 $F8
    ldh a, [$FFF0]                                ; $50BB: $F0 $F0
    ldh [$FFF0], a                                ; $50BD: $E0 $F0
    ldh [rIE], a                                  ; $50BF: $E0 $FF
    jr @+$01                                      ; $50C1: $18 $FF

    cp d                                          ; $50C3: $BA
    rst RST_38                                    ; $50C4: $FF
    ld [hl], d                                    ; $50C5: $72
    rst RST_38                                    ; $50C6: $FF
    nop                                           ; $50C7: $00

jr_016_50C8:
    rst RST_38                                    ; $50C8: $FF
    jp $B6CF                                      ; $50C9: $C3 $CF $B6


    rst RST_18                                    ; $50CC: $DF
    and b                                         ; $50CD: $A0
    rst RST_30                                    ; $50CE: $F7
    ld [$146B], sp                                ; $50CF: $08 $6B $14
    ld [hl], a                                    ; $50D2: $77
    ld [$237C], sp                                ; $50D3: $08 $7C $23
    ld [hl], b                                    ; $50D6: $70
    cpl                                           ; $50D7: $2F
    jr c, jr_016_50F1                             ; $50D8: $38 $17

    jr c, jr_016_50F3                             ; $50DA: $38 $17

    jr c, jr_016_50F5                             ; $50DC: $38 $17

    inc e                                         ; $50DE: $1C
    dec bc                                        ; $50DF: $0B
    db $FC                                        ; $50E0: $FC
    ret nc                                        ; $50E1: $D0

    ldh a, [rP1]                                  ; $50E2: $F0 $00
    add b                                         ; $50E4: $80
    nop                                           ; $50E5: $00
    ret nz                                        ; $50E6: $C0

    add b                                         ; $50E7: $80
    ret nz                                        ; $50E8: $C0

    add b                                         ; $50E9: $80
    ldh [rLCDC], a                                ; $50EA: $E0 $40
    ldh [rLCDC], a                                ; $50EC: $E0 $40
    ldh [rLCDC], a                                ; $50EE: $E0 $40
    ld [hl], b                                    ; $50F0: $70

jr_016_50F1:
    and b                                         ; $50F1: $A0
    ld [hl], b                                    ; $50F2: $70

jr_016_50F3:
    and b                                         ; $50F3: $A0
    ld [hl], b                                    ; $50F4: $70

jr_016_50F5:
    and b                                         ; $50F5: $A0
    jr c, jr_016_50C8                             ; $50F6: $38 $D0

    ld hl, sp+$10                                 ; $50F8: $F8 $10
    jr nc, @-$3E                                  ; $50FA: $30 $C0

    db $10                                        ; $50FC: $10
    ldh [$FF08], a                                ; $50FD: $E0 $08
    ldh a, [rTMA]                                 ; $50FF: $F0 $06
    nop                                           ; $5101: $00
    dec bc                                        ; $5102: $0B
    inc b                                         ; $5103: $04
    dec c                                         ; $5104: $0D
    ld [bc], a                                    ; $5105: $02
    dec bc                                        ; $5106: $0B
    inc b                                         ; $5107: $04
    rlca                                          ; $5108: $07
    nop                                           ; $5109: $00
    dec b                                         ; $510A: $05
    ld [bc], a                                    ; $510B: $02
    dec b                                         ; $510C: $05
    ld [bc], a                                    ; $510D: $02
    dec b                                         ; $510E: $05
    ld [bc], a                                    ; $510F: $02
    dec b                                         ; $5110: $05
    ld [bc], a                                    ; $5111: $02
    dec b                                         ; $5112: $05
    ld [bc], a                                    ; $5113: $02
    dec c                                         ; $5114: $0D
    ld [bc], a                                    ; $5115: $02
    inc de                                        ; $5116: $13
    inc c                                         ; $5117: $0C
    ld hl, $3F1E                                  ; $5118: $21 $1E $3F
    nop                                           ; $511B: $00
    nop                                           ; $511C: $00
    nop                                           ; $511D: $00
    nop                                           ; $511E: $00
    nop                                           ; $511F: $00
    ldh a, [$FFE0]                                ; $5120: $F0 $E0
    ld hl, sp-$10                                 ; $5122: $F8 $F0
    ld hl, sp-$10                                 ; $5124: $F8 $F0
    ld hl, sp+$00                                 ; $5126: $F8 $00
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
    inc e                                         ; $5140: $1C
    dec bc                                        ; $5141: $0B
    ld c, $05                                     ; $5142: $0E $05
    rrca                                          ; $5144: $0F
    inc b                                         ; $5145: $04
    ld c, $01                                     ; $5146: $0E $01
    ld [bc], a                                    ; $5148: $02
    ld bc, $0003                                  ; $5149: $01 $03 $00
    nop                                           ; $514C: $00
    nop                                           ; $514D: $00
    nop                                           ; $514E: $00
    nop                                           ; $514F: $00
    nop                                           ; $5150: $00
    nop                                           ; $5151: $00
    nop                                           ; $5152: $00
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
    ld hl, sp+$00                                 ; $5160: $F8 $00
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
    nop                                           ; $517C: $00
    nop                                           ; $517D: $00
    nop                                           ; $517E: $00
    nop                                           ; $517F: $00
    rrca                                          ; $5180: $0F
    nop                                           ; $5181: $00
    rra                                           ; $5182: $1F
    dec bc                                        ; $5183: $0B
    rra                                           ; $5184: $1F
    inc b                                         ; $5185: $04
    rrca                                          ; $5186: $0F
    dec b                                         ; $5187: $05
    rra                                           ; $5188: $1F
    ld [bc], a                                    ; $5189: $02
    rra                                           ; $518A: $1F
    ld [$0A1D], sp                                ; $518B: $08 $1D $0A
    jr c, jr_016_51A7                             ; $518E: $38 $17

    jr c, @+$19                                   ; $5190: $38 $17

    jr c, jr_016_51AB                             ; $5192: $38 $17

    ld [hl], b                                    ; $5194: $70
    cpl                                           ; $5195: $2F
    ld a, l                                       ; $5196: $7D
    ld [hl+], a                                   ; $5197: $22
    ld [hl], e                                    ; $5198: $73
    inc c                                         ; $5199: $0C
    ld hl, $411E                                  ; $519A: $21 $1E $41
    ld a, $7F                                     ; $519D: $3E $7F
    nop                                           ; $519F: $00
    ld bc, $0300                                  ; $51A0: $01 $00 $03
    ld bc, $0003                                  ; $51A3: $01 $03 $00
    ld [bc], a                                    ; $51A6: $02

jr_016_51A7:
    ld bc, $0007                                  ; $51A7: $01 $07 $00
    rrca                                          ; $51AA: $0F

jr_016_51AB:
    rlca                                          ; $51AB: $07
    rra                                           ; $51AC: $1F
    ld [bc], a                                    ; $51AD: $02
    inc hl                                        ; $51AE: $23

jr_016_51AF:
    inc e                                         ; $51AF: $1C
    daa                                           ; $51B0: $27
    inc e                                         ; $51B1: $1C
    ld a, a                                       ; $51B2: $7F
    inc c                                         ; $51B3: $0C
    ld a, a                                       ; $51B4: $7F
    jr nc, jr_016_51AF                            ; $51B5: $30 $F8

    rlca                                          ; $51B7: $07
    rst RST_38                                    ; $51B8: $FF
    ldh [$FFF0], a                                ; $51B9: $E0 $F0
    rst RST_28                                    ; $51BB: $EF
    ldh a, [$FF6F]                                ; $51BC: $F0 $6F
    ldh a, [$FFAF]                                ; $51BE: $F0 $AF
    ldh a, [$FF8F]                                ; $51C0: $F0 $8F
    rst RST_38                                    ; $51C2: $FF
    jr nz, @+$81                                  ; $51C3: $20 $7F

    xor [hl]                                      ; $51C5: $AE
    ld a, a                                       ; $51C6: $7F
    and [hl]                                      ; $51C7: $A6
    rst RST_38                                    ; $51C8: $FF
    ld b, b                                       ; $51C9: $40
    rst RST_30                                    ; $51CA: $F7
    ld c, e                                       ; $51CB: $4B
    rst RST_10                                    ; $51CC: $D7
    adc e                                         ; $51CD: $8B
    rst RST_10                                    ; $51CE: $D7
    adc e                                         ; $51CF: $8B
    db $D3                                        ; $51D0: $D3
    inc c                                         ; $51D1: $0C
    ld e, $00                                     ; $51D2: $1E $00
    nop                                           ; $51D4: $00
    nop                                           ; $51D5: $00
    nop                                           ; $51D6: $00
    nop                                           ; $51D7: $00
    nop                                           ; $51D8: $00

jr_016_51D9:
    nop                                           ; $51D9: $00
    nop                                           ; $51DA: $00
    nop                                           ; $51DB: $00
    nop                                           ; $51DC: $00
    nop                                           ; $51DD: $00
    nop                                           ; $51DE: $00
    nop                                           ; $51DF: $00
    ldh a, [rP1]                                  ; $51E0: $F0 $00
    ld [$C4F0], sp                                ; $51E2: $08 $F0 $C4
    jr c, jr_016_51D9                             ; $51E5: $38 $F2

    adc h                                         ; $51E7: $8C
    sbc $20                                       ; $51E8: $DE $20
    pop hl                                        ; $51EA: $E1
    ld e, $EF                                     ; $51EB: $1E $EF
    or b                                          ; $51ED: $B0
    rst RST_18                                    ; $51EE: $DF
    ld h, b                                       ; $51EF: $60
    cp a                                          ; $51F0: $BF
    ld b, b                                       ; $51F1: $40
    ld a, a                                       ; $51F2: $7F
    call c, Call_000_3CFF                         ; $51F3: $DC $FF $3C
    rst RST_38                                    ; $51F6: $FF
    inc a                                         ; $51F7: $3C

jr_016_51F8:
    ld a, $C9                                     ; $51F8: $3E $C9

jr_016_51FA:
    cp $05                                        ; $51FA: $FE $05
    ld c, $F5                                     ; $51FC: $0E $F5
    inc c                                         ; $51FE: $0C
    di                                            ; $51FF: $F3
    jr @-$17                                      ; $5200: $18 $E7

    jr c, @-$2F                                   ; $5202: $38 $CF

    call z, Call_000_3C07                         ; $5204: $CC $07 $3C
    rst RST_00                                    ; $5207: $C7
    ld c, $F3                                     ; $5208: $0E $F3
    add $3B                                       ; $520A: $C6 $3B
    rst RST_30                                    ; $520C: $F7
    ret                                           ; $520D: $C9


    rst RST_38                                    ; $520E: $FF
    pop af                                        ; $520F: $F1
    rst RST_38                                    ; $5210: $FF
    ld hl, sp-$05                                 ; $5211: $F8 $FB
    ld [hl], h                                    ; $5213: $74
    ld a, h                                       ; $5214: $7C
    nop                                           ; $5215: $00
    nop                                           ; $5216: $00
    nop                                           ; $5217: $00
    nop                                           ; $5218: $00
    nop                                           ; $5219: $00
    nop                                           ; $521A: $00
    nop                                           ; $521B: $00
    nop                                           ; $521C: $00
    nop                                           ; $521D: $00
    nop                                           ; $521E: $00
    nop                                           ; $521F: $00
    add b                                         ; $5220: $80
    nop                                           ; $5221: $00
    ret nz                                        ; $5222: $C0

    nop                                           ; $5223: $00
    ret nz                                        ; $5224: $C0

    nop                                           ; $5225: $00
    ret nz                                        ; $5226: $C0

    nop                                           ; $5227: $00
    add b                                         ; $5228: $80
    nop                                           ; $5229: $00
    add b                                         ; $522A: $80
    nop                                           ; $522B: $00
    nop                                           ; $522C: $00
    nop                                           ; $522D: $00
    add b                                         ; $522E: $80
    nop                                           ; $522F: $00
    add b                                         ; $5230: $80
    nop                                           ; $5231: $00
    ld b, b                                       ; $5232: $40
    add b                                         ; $5233: $80
    ld b, b                                       ; $5234: $40
    add b                                         ; $5235: $80
    jr nz, jr_016_51F8                            ; $5236: $20 $C0

    jr nz, jr_016_51FA                            ; $5238: $20 $C0

    db $10                                        ; $523A: $10
    ldh [rNR10], a                                ; $523B: $E0 $10
    ldh [$FF08], a                                ; $523D: $E0 $08
    ldh a, [$FF08]                                ; $523F: $F0 $08
    ldh a, [rNR23]                                ; $5241: $F0 $18
    ldh a, [$FFF4]                                ; $5243: $F0 $F4
    add sp, -$1C                                  ; $5245: $E8 $E4
    jr jr_016_524D                                ; $5247: $18 $04

    ld hl, sp-$3C                                 ; $5249: $F8 $C4
    jr c, jr_016_5289                             ; $524B: $38 $3C

jr_016_524D:
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
    ccf                                           ; $526E: $3F
    nop                                           ; $526F: $00
    jr nz, jr_016_5291                            ; $5270: $20 $1F

    db $10                                        ; $5272: $10
    rrca                                          ; $5273: $0F
    dec c                                         ; $5274: $0D
    ld [bc], a                                    ; $5275: $02
    inc bc                                        ; $5276: $03
    nop                                           ; $5277: $00
    ld bc, $0100                                  ; $5278: $01 $00 $01
    nop                                           ; $527B: $00
    ld bc, $0100                                  ; $527C: $01 $00 $01
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

jr_016_5289:
    nop                                           ; $5289: $00
    nop                                           ; $528A: $00
    nop                                           ; $528B: $00
    nop                                           ; $528C: $00
    nop                                           ; $528D: $00
    ld bc, $FE00                                  ; $528E: $01 $00 $FE

jr_016_5291:
    ld bc, $7E81                                  ; $5291: $01 $81 $7E
    rst RST_38                                    ; $5294: $FF
    ld bc, $FFFF                                  ; $5295: $01 $FF $FF
    rst RST_38                                    ; $5298: $FF
    rst RST_38                                    ; $5299: $FF
    rst RST_38                                    ; $529A: $FF
    rst RST_38                                    ; $529B: $FF
    rst RST_38                                    ; $529C: $FF
    rst RST_00                                    ; $529D: $C7
    rst RST_00                                    ; $529E: $C7
    nop                                           ; $529F: $00
    nop                                           ; $52A0: $00
    nop                                           ; $52A1: $00
    inc e                                         ; $52A2: $1C
    nop                                           ; $52A3: $00
    rra                                           ; $52A4: $1F
    inc c                                         ; $52A5: $0C
    rrca                                          ; $52A6: $0F
    inc bc                                        ; $52A7: $03
    rrca                                          ; $52A8: $0F
    dec b                                         ; $52A9: $05
    rra                                           ; $52AA: $1F
    add hl, bc                                    ; $52AB: $09
    rra                                           ; $52AC: $1F
    ld [bc], a                                    ; $52AD: $02
    rst RST_28                                    ; $52AE: $EF
    ld b, $AF                                     ; $52AF: $06 $AF
    ld b, b                                       ; $52B1: $40
    pop hl                                        ; $52B2: $E1
    nop                                           ; $52B3: $00
    ldh a, [$FFC0]                                ; $52B4: $F0 $C0
    add sp, -$70                                  ; $52B6: $E8 $90
    db $FC                                        ; $52B8: $FC
    and b                                         ; $52B9: $A0
    db $FC                                        ; $52BA: $FC
    sbc b                                         ; $52BB: $98
    rst RST_38                                    ; $52BC: $FF
    inc c                                         ; $52BD: $0C
    rst RST_38                                    ; $52BE: $FF
    ld a, a                                       ; $52BF: $7F
    nop                                           ; $52C0: $00
    nop                                           ; $52C1: $00
    nop                                           ; $52C2: $00
    nop                                           ; $52C3: $00
    nop                                           ; $52C4: $00
    nop                                           ; $52C5: $00
    add b                                         ; $52C6: $80
    nop                                           ; $52C7: $00
    ldh [$FF80], a                                ; $52C8: $E0 $80
    sub b                                         ; $52CA: $90
    ld h, b                                       ; $52CB: $60
    ld [$04F0], sp                                ; $52CC: $08 $F0 $04
    ld hl, sp+$02                                 ; $52CF: $F8 $02
    db $FC                                        ; $52D1: $FC
    inc bc                                        ; $52D2: $03
    db $FC                                        ; $52D3: $FC
    add a                                         ; $52D4: $87
    ld a, e                                       ; $52D5: $7B
    ld c, a                                       ; $52D6: $4F
    jr nc, jr_016_5314                            ; $52D7: $30 $3B

    dec c                                         ; $52D9: $0D
    di                                            ; $52DA: $F3
    dec e                                         ; $52DB: $1D
    ccf                                           ; $52DC: $3F
    ret nc                                        ; $52DD: $D0

    rst RST_18                                    ; $52DE: $DF
    inc l                                         ; $52DF: $2C
    nop                                           ; $52E0: $00
    nop                                           ; $52E1: $00
    nop                                           ; $52E2: $00
    nop                                           ; $52E3: $00
    ret c                                         ; $52E4: $D8

    nop                                           ; $52E5: $00
    add sp, -$70                                  ; $52E6: $E8 $90
    ret z                                         ; $52E8: $C8

    or b                                          ; $52E9: $B0
    adc b                                         ; $52EA: $88
    ld [hl], b                                    ; $52EB: $70
    ld [$E8F0], sp                                ; $52EC: $08 $F0 $E8
    db $10                                        ; $52EF: $10
    db $FC                                        ; $52F0: $FC
    nop                                           ; $52F1: $00
    ld c, $F4                                     ; $52F2: $0E $F4
    cp l                                          ; $52F4: $BD
    ld c, d                                       ; $52F5: $4A
    db $FD                                        ; $52F6: $FD
    ld a, [hl+]                                   ; $52F7: $2A
    ld a, a                                       ; $52F8: $7F
    ret z                                         ; $52F9: $C8

    cp a                                          ; $52FA: $BF
    ld l, [hl]                                    ; $52FB: $6E
    adc $30                                       ; $52FC: $CE $30
    xor $14                                       ; $52FE: $EE $14
    rlca                                          ; $5300: $07
    nop                                           ; $5301: $00
    inc e                                         ; $5302: $1C
    inc bc                                        ; $5303: $03
    ld h, d                                       ; $5304: $62
    dec e                                         ; $5305: $1D
    add d                                         ; $5306: $82
    ld a, l                                       ; $5307: $7D
    add e                                         ; $5308: $83
    ld a, h                                       ; $5309: $7C
    adc a                                         ; $530A: $8F
    ld [hl], c                                    ; $530B: $71
    ld a, a                                       ; $530C: $7F
    ld bc, $0001                                  ; $530D: $01 $01 $00
    ld bc, $0000                                  ; $5310: $01 $00 $00
    nop                                           ; $5313: $00

jr_016_5314:
    nop                                           ; $5314: $00
    nop                                           ; $5315: $00
    nop                                           ; $5316: $00
    nop                                           ; $5317: $00
    nop                                           ; $5318: $00
    nop                                           ; $5319: $00
    nop                                           ; $531A: $00
    nop                                           ; $531B: $00
    nop                                           ; $531C: $00
    nop                                           ; $531D: $00
    nop                                           ; $531E: $00
    nop                                           ; $531F: $00
    ld bc, $1E00                                  ; $5320: $01 $00 $1E
    ld bc, $1AE5                                  ; $5323: $01 $E5 $1A
    ld b, $F9                                     ; $5326: $06 $F9
    inc bc                                        ; $5328: $03
    db $FC                                        ; $5329: $FC
    rlca                                          ; $532A: $07
    ld hl, sp+$3F                                 ; $532B: $F8 $3F
    rst RST_00                                    ; $532D: $C7
    rst RST_38                                    ; $532E: $FF
    ccf                                           ; $532F: $3F
    rst RST_38                                    ; $5330: $FF
    cp $FF                                        ; $5331: $FE $FF
    ldh a, [$FFF7]                                ; $5333: $F0 $F7
    ret nz                                        ; $5335: $C0

    ret                                           ; $5336: $C9


    ld b, $10                                     ; $5337: $06 $10
    rrca                                          ; $5339: $0F
    jr nz, jr_016_535B                            ; $533A: $20 $1F

    jr nz, jr_016_535D                            ; $533C: $20 $1F

    ccf                                           ; $533E: $3F
    nop                                           ; $533F: $00
    rst RST_38                                    ; $5340: $FF
    inc c                                         ; $5341: $0C
    cp $1D                                        ; $5342: $FE $1D
    ld a, h                                       ; $5344: $7C
    sub e                                         ; $5345: $93
    db $F4                                        ; $5346: $F4
    dec bc                                        ; $5347: $0B
    add d                                         ; $5348: $82
    ld a, l                                       ; $5349: $7D
    rst RST_38                                    ; $534A: $FF
    nop                                           ; $534B: $00
    adc a                                         ; $534C: $8F
    ld [bc], a                                    ; $534D: $02
    cp h                                          ; $534E: $BC
    rrca                                          ; $534F: $0F
    ldh a, [$FF3F]                                ; $5350: $F0 $3F
    ret nz                                        ; $5352: $C0

    rst RST_38                                    ; $5353: $FF
    add b                                         ; $5354: $80
    rst RST_38                                    ; $5355: $FF
    add e                                         ; $5356: $83
    rst RST_38                                    ; $5357: $FF
    rst RST_08                                    ; $5358: $CF
    ld a, h                                       ; $5359: $7C
    db $FC                                        ; $535A: $FC

jr_016_535B:
    ld [hl], b                                    ; $535B: $70
    ld [hl], b                                    ; $535C: $70

jr_016_535D:
    add b                                         ; $535D: $80
    ret nz                                        ; $535E: $C0

    nop                                           ; $535F: $00
    ccf                                           ; $5360: $3F
    call nz, $E81F                                ; $5361: $C4 $1F $E8
    rrca                                          ; $5364: $0F
    db $F4                                        ; $5365: $F4
    ld b, $F9                                     ; $5366: $06 $F9
    rlca                                          ; $5368: $07
    ld sp, hl                                     ; $5369: $F9
    rrca                                          ; $536A: $0F
    or $8F                                        ; $536B: $F6 $8F
    ld [hl], a                                    ; $536D: $77
    ld e, a                                       ; $536E: $5F
    xor a                                         ; $536F: $AF
    ccf                                           ; $5370: $3F
    rst RST_00                                    ; $5371: $C7
    ccf                                           ; $5372: $3F
    ldh a, [$FFF7]                                ; $5373: $F0 $F7
    ret nz                                        ; $5375: $C0

    jp RST_00                                     ; $5376: $C3 $00 $00


    nop                                           ; $5379: $00
    nop                                           ; $537A: $00
    nop                                           ; $537B: $00
    nop                                           ; $537C: $00
    nop                                           ; $537D: $00
    nop                                           ; $537E: $00
    nop                                           ; $537F: $00
    xor $10                                       ; $5380: $EE $10
    add sp, $10                                   ; $5382: $E8 $10
    ldh a, [rP1]                                  ; $5384: $F0 $00
    ldh a, [rP1]                                  ; $5386: $F0 $00
    ldh [rP1], a                                  ; $5388: $E0 $00
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
    nop                                           ; $5398: $00
    nop                                           ; $5399: $00
    nop                                           ; $539A: $00
    nop                                           ; $539B: $00
    nop                                           ; $539C: $00
    nop                                           ; $539D: $00
    nop                                           ; $539E: $00
    nop                                           ; $539F: $00
    add b                                         ; $53A0: $80
    nop                                           ; $53A1: $00
    add b                                         ; $53A2: $80
    nop                                           ; $53A3: $00
    ldh a, [rP1]                                  ; $53A4: $F0 $00
    adc h                                         ; $53A6: $8C
    ld [hl], b                                    ; $53A7: $70
    ld c, $F4                                     ; $53A8: $0E $F4
    cp l                                          ; $53AA: $BD
    ld c, d                                       ; $53AB: $4A
    db $FD                                        ; $53AC: $FD
    ld a, [hl+]                                   ; $53AD: $2A
    cp a                                          ; $53AE: $BF
    ld l, b                                       ; $53AF: $68
    rst RST_38                                    ; $53B0: $FF

jr_016_53B1:
    sbc [hl]                                      ; $53B1: $9E
    cp $18                                        ; $53B2: $FE $18
    sbc $E4                                       ; $53B4: $DE $E4
    ld c, [hl]                                    ; $53B6: $4E
    ldh a, [$FFA8]                                ; $53B7: $F0 $A8
    ld [hl], b                                    ; $53B9: $70
    db $E4                                        ; $53BA: $E4
    jr jr_016_53B1                                ; $53BB: $18 $F4

    ld [$00FC], sp                                ; $53BD: $08 $FC $00
    ld bc, $1F00                                  ; $53C0: $01 $00 $1F
    ld bc, $1C33                                  ; $53C3: $01 $33 $1C
    rst RST_38                                    ; $53C6: $FF
    db $10                                        ; $53C7: $10
    db $D3                                        ; $53C8: $D3
    db $EC                                        ; $53C9: $EC
    jp nc, Jump_000_3BED                          ; $53CA: $D2 $ED $3B

    call c, $1DFF                                 ; $53CD: $DC $FF $1D
    rst RST_38                                    ; $53D0: $FF
    reti                                          ; $53D1: $D9


    db $FD                                        ; $53D2: $FD
    and $F6                                       ; $53D3: $E6 $F6
    cpl                                           ; $53D5: $2F
    ld a, $C3                                     ; $53D6: $3E $C3
    rra                                           ; $53D8: $1F
    db $EC                                        ; $53D9: $EC
    rra                                           ; $53DA: $1F
    xor $1F                                       ; $53DB: $EE $1F
    rst RST_28                                    ; $53DD: $EF
    rra                                           ; $53DE: $1F
    ldh [rP1], a                                  ; $53DF: $E0 $00
    nop                                           ; $53E1: $00
    ldh a, [rP1]                                  ; $53E2: $F0 $00
    ret z                                         ; $53E4: $C8

    or b                                          ; $53E5: $B0
    rst RST_20                                    ; $53E6: $E7
    ret c                                         ; $53E7: $D8

    rst RST_38                                    ; $53E8: $FF
    pop bc                                        ; $53E9: $C1
    cp $DD                                        ; $53EA: $FE $DD
    rst RST_38                                    ; $53EC: $FF
    call c, Call_000_0DFF                         ; $53ED: $DC $FF $0D
    rrca                                          ; $53F0: $0F
    push af                                       ; $53F1: $F5
    rra                                           ; $53F2: $1F
    ldh [$FFF0], a                                ; $53F3: $E0 $F0
    rrca                                          ; $53F5: $0F
    ldh a, [$FFEF]                                ; $53F6: $F0 $EF
    ldh a, [$FFEF]                                ; $53F8: $F0 $EF
    ldh a, [$FFEF]                                ; $53FA: $F0 $EF
    ldh a, [$FF6F]                                ; $53FC: $F0 $6F
    rst RST_38                                    ; $53FE: $FF
    nop                                           ; $53FF: $00
    ld b, $00                                     ; $5400: $06 $00
    dec bc                                        ; $5402: $0B
    inc b                                         ; $5403: $04
    rra                                           ; $5404: $1F
    nop                                           ; $5405: $00
    rla                                           ; $5406: $17
    ld [$000F], sp                                ; $5407: $08 $0F $00
    dec bc                                        ; $540A: $0B
    dec b                                         ; $540B: $05
    rla                                           ; $540C: $17
    dec bc                                        ; $540D: $0B
    rla                                           ; $540E: $17
    dec bc                                        ; $540F: $0B
    cpl                                           ; $5410: $2F
    rla                                           ; $5411: $17
    ccf                                           ; $5412: $3F
    nop                                           ; $5413: $00
    sub $29                                       ; $5414: $D6 $29
    ld a, [hl+]                                   ; $5416: $2A
    push de                                       ; $5417: $D5
    ld [hl], $C9                                  ; $5418: $36 $C9
    rra                                           ; $541A: $1F
    db $E4                                        ; $541B: $E4
    rst RST_38                                    ; $541C: $FF
    dec de                                        ; $541D: $1B
    rst RST_38                                    ; $541E: $FF
    db $F4                                        ; $541F: $F4
    nop                                           ; $5420: $00
    nop                                           ; $5421: $00
    nop                                           ; $5422: $00
    nop                                           ; $5423: $00
    ld bc, $0E00                                  ; $5424: $01 $00 $0E
    ld bc, $0FF0                                  ; $5427: $01 $F0 $0F
    ld [$09F7], sp                                ; $542A: $08 $F7 $09
    or $0F                                        ; $542D: $F6 $0F
    pop af                                        ; $542F: $F1
    rst RST_38                                    ; $5430: $FF
    rrca                                          ; $5431: $0F
    rra                                           ; $5432: $1F
    ld c, $0E                                     ; $5433: $0E $0E
    nop                                           ; $5435: $00
    nop                                           ; $5436: $00
    nop                                           ; $5437: $00
    nop                                           ; $5438: $00
    nop                                           ; $5439: $00
    nop                                           ; $543A: $00
    nop                                           ; $543B: $00
    nop                                           ; $543C: $00
    nop                                           ; $543D: $00
    nop                                           ; $543E: $00
    nop                                           ; $543F: $00
    rst RST_38                                    ; $5440: $FF
    ret                                           ; $5441: $C9


    rst RST_18                                    ; $5442: $DF
    ld [bc], a                                    ; $5443: $02
    ld b, $00                                     ; $5444: $06 $00
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
    db $FC                                        ; $5460: $FC
    nop                                           ; $5461: $00
    ld a, b                                       ; $5462: $78
    nop                                           ; $5463: $00
    nop                                           ; $5464: $00
    nop                                           ; $5465: $00
    nop                                           ; $5466: $00
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
    pop hl                                        ; $5480: $E1
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
    inc bc                                        ; $54A0: $03
    nop                                           ; $54A1: $00
    ld [bc], a                                    ; $54A2: $02
    ld bc, $0102                                  ; $54A3: $01 $02 $01
    ld bc, $0000                                  ; $54A6: $01 $00 $00
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
    nop                                           ; $54C0: $00
    nop                                           ; $54C1: $00
    nop                                           ; $54C2: $00
    nop                                           ; $54C3: $00
    nop                                           ; $54C4: $00
    nop                                           ; $54C5: $00
    nop                                           ; $54C6: $00
    nop                                           ; $54C7: $00
    nop                                           ; $54C8: $00
    nop                                           ; $54C9: $00
    nop                                           ; $54CA: $00
    nop                                           ; $54CB: $00
    nop                                           ; $54CC: $00
    nop                                           ; $54CD: $00
    ccf                                           ; $54CE: $3F
    nop                                           ; $54CF: $00
    pop af                                        ; $54D0: $F1
    ld l, $E2                                     ; $54D1: $2E $E2
    sbc l                                         ; $54D3: $9D
    ldh [c], a                                    ; $54D4: $E2
    dec e                                         ; $54D5: $1D
    ldh [c], a                                    ; $54D6: $E2
    db $DD                                        ; $54D7: $DD

jr_016_54D8:
    ldh [c], a                                    ; $54D8: $E2
    ld e, l                                       ; $54D9: $5D
    ldh [c], a                                    ; $54DA: $E2
    ld e, l                                       ; $54DB: $5D
    pop af                                        ; $54DC: $F1
    ld l, [hl]                                    ; $54DD: $6E
    ld a, a                                       ; $54DE: $7F
    nop                                           ; $54DF: $00
    nop                                           ; $54E0: $00
    nop                                           ; $54E1: $00
    nop                                           ; $54E2: $00
    nop                                           ; $54E3: $00
    nop                                           ; $54E4: $00
    nop                                           ; $54E5: $00
    nop                                           ; $54E6: $00
    nop                                           ; $54E7: $00
    inc bc                                        ; $54E8: $03
    nop                                           ; $54E9: $00
    rlca                                          ; $54EA: $07
    ld [bc], a                                    ; $54EB: $02
    rra                                           ; $54EC: $1F
    rlca                                          ; $54ED: $07
    rra                                           ; $54EE: $1F
    inc c                                         ; $54EF: $0C
    rrca                                          ; $54F0: $0F
    nop                                           ; $54F1: $00
    ldh a, [rIF]                                  ; $54F2: $F0 $0F
    ld a, b                                       ; $54F4: $78
    add a                                         ; $54F5: $87
    db $FC                                        ; $54F6: $FC
    ld a, e                                       ; $54F7: $7B
    db $FC                                        ; $54F8: $FC
    ld a, e                                       ; $54F9: $7B
    db $FC                                        ; $54FA: $FC
    ld a, e                                       ; $54FB: $7B
    ld a, e                                       ; $54FC: $7B
    add h                                         ; $54FD: $84
    rst RST_38                                    ; $54FE: $FF
    ld [bc], a                                    ; $54FF: $02
    ldh [rP1], a                                  ; $5500: $E0 $00
    db $10                                        ; $5502: $10
    ldh [$FF90], a                                ; $5503: $E0 $90
    ld h, b                                       ; $5505: $60
    ld l, b                                       ; $5506: $68
    sub b                                         ; $5507: $90
    adc b                                         ; $5508: $88
    ld [hl], b                                    ; $5509: $70
    ld c, h                                       ; $550A: $4C
    or b                                          ; $550B: $B0
    ld [hl], e                                    ; $550C: $73
    adc h                                         ; $550D: $8C
    ld h, d                                       ; $550E: $62
    sbc l                                         ; $550F: $9D
    ld h, d                                       ; $5510: $62
    sbc l                                         ; $5511: $9D
    and d                                         ; $5512: $A2
    ld e, l                                       ; $5513: $5D
    ld [hl+], a                                   ; $5514: $22
    db $DD                                        ; $5515: $DD
    inc hl                                        ; $5516: $23
    call c, $C13F                                 ; $5517: $DC $3F $C1
    and c                                         ; $551A: $A1
    ld e, [hl]                                    ; $551B: $5E
    ret nz                                        ; $551C: $C0

    ccf                                           ; $551D: $3F
    ret nz                                        ; $551E: $C0

    cp a                                          ; $551F: $BF
    add b                                         ; $5520: $80
    nop                                           ; $5521: $00
    ld b, b                                       ; $5522: $40
    add b                                         ; $5523: $80
    ld e, h                                       ; $5524: $5C
    add b                                         ; $5525: $80
    ld [hl], d                                    ; $5526: $72
    adc h                                         ; $5527: $8C
    ret                                           ; $5528: $C9


    ld [hl], $E9                                  ; $5529: $36 $E9
    sub $E9                                       ; $552B: $D6 $E9
    sub $E9                                       ; $552D: $D6 $E9
    ld d, $89                                     ; $552F: $16 $89
    halt                                          ; $5531: $76
    ld d, d                                       ; $5532: $52
    xor h                                         ; $5533: $AC
    ld a, h                                       ; $5534: $7C
    ret nz                                        ; $5535: $C0

    ldh a, [$FF80]                                ; $5536: $F0 $80
    adc b                                         ; $5538: $88
    ld [hl], b                                    ; $5539: $70
    ld [$04F0], sp                                ; $553A: $08 $F0 $04
    ld hl, sp+$04                                 ; $553D: $F8 $04
    ld hl, sp+$3F                                 ; $553F: $F8 $3F
    ld a, [de]                                    ; $5541: $1A
    rra                                           ; $5542: $1F
    dec bc                                        ; $5543: $0B
    rra                                           ; $5544: $1F
    dec bc                                        ; $5545: $0B
    rrca                                          ; $5546: $0F
    inc bc                                        ; $5547: $03
    rrca                                          ; $5548: $0F
    nop                                           ; $5549: $00
    rra                                           ; $554A: $1F
    rlca                                          ; $554B: $07
    cpl                                           ; $554C: $2F
    ld d, $4F                                     ; $554D: $16 $4F
    ld [hl], $47                                  ; $554F: $36 $47
    jr c, jr_016_54D8                             ; $5551: $38 $85

    ld a, b                                       ; $5553: $78
    adc c                                         ; $5554: $89
    ld [hl], b                                    ; $5555: $70
    ld hl, sp+$00                                 ; $5556: $F8 $00
    ld hl, sp-$10                                 ; $5558: $F8 $F0
    ld sp, hl                                     ; $555A: $F9
    ldh a, [$FFF9]                                ; $555B: $F0 $F9
    ldh a, [$FFF1]                                ; $555D: $F0 $F1
    ldh [$FFE0], a                                ; $555F: $E0 $E0
    ccf                                           ; $5561: $3F
    ldh a, [$FF1F]                                ; $5562: $F0 $1F
    add hl, sp                                    ; $5564: $39
    rst RST_08                                    ; $5565: $CF
    add hl, de                                    ; $5566: $19
    xor $1F                                       ; $5567: $EE $1F
    and $0E                                       ; $5569: $E6 $0E
    push af                                       ; $556B: $F5
    ld a, [hl]                                    ; $556C: $7E
    add c                                         ; $556D: $81
    xor [hl]                                      ; $556E: $AE
    ld d, c                                       ; $556F: $51
    rst RST_38                                    ; $5570: $FF
    ld [bc], a                                    ; $5571: $02
    xor a                                         ; $5572: $AF
    ld d, d                                       ; $5573: $52
    di                                            ; $5574: $F3
    adc l                                         ; $5575: $8D
    jp $E3BD                                      ; $5576: $C3 $BD $E3


    ld e, l                                       ; $5579: $5D
    pop hl                                        ; $557A: $E1
    ld e, [hl]                                    ; $557B: $5E
    pop hl                                        ; $557C: $E1
    ld e, [hl]                                    ; $557D: $5E
    ld [hl], c                                    ; $557E: $71
    ld l, $04                                     ; $557F: $2E $04
    ld hl, sp+$02                                 ; $5581: $F8 $02
    db $FC                                        ; $5583: $FC
    add d                                         ; $5584: $82
    ld a, h                                       ; $5585: $7C
    ld h, d                                       ; $5586: $62
    inc e                                         ; $5587: $1C
    sbc [hl]                                      ; $5588: $9E
    nop                                           ; $5589: $00
    add b                                         ; $558A: $80
    nop                                           ; $558B: $00
    add b                                         ; $558C: $80
    nop                                           ; $558D: $00
    ret nz                                        ; $558E: $C0

    add b                                         ; $558F: $80
    ret nz                                        ; $5590: $C0

    add b                                         ; $5591: $80
    ret nz                                        ; $5592: $C0

    add b                                         ; $5593: $80
    ldh [rLCDC], a                                ; $5594: $E0 $40
    ldh [rLCDC], a                                ; $5596: $E0 $40
    ret nz                                        ; $5598: $C0

    nop                                           ; $5599: $00
    ld b, b                                       ; $559A: $40
    add b                                         ; $559B: $80
    jr nz, @-$3E                                  ; $559C: $20 $C0

    ldh [rP1], a                                  ; $559E: $E0 $00
    ld l, b                                       ; $55A0: $68
    rlca                                          ; $55A1: $07
    cp b                                          ; $55A2: $B8
    ld b, a                                       ; $55A3: $47
    rst RST_38                                    ; $55A4: $FF
    nop                                           ; $55A5: $00
    ld a, a                                       ; $55A6: $7F
    sbc a                                         ; $55A7: $9F
    rst RST_38                                    ; $55A8: $FF
    rra                                           ; $55A9: $1F
    cp a                                          ; $55AA: $BF
    ld e, a                                       ; $55AB: $5F
    cp a                                          ; $55AC: $BF
    ld e, [hl]                                    ; $55AD: $5E
    ld a, a                                       ; $55AE: $7F
    cp [hl]                                       ; $55AF: $BE
    ld a, [hl]                                    ; $55B0: $7E
    cp h                                          ; $55B1: $BC
    cp $7C                                        ; $55B2: $FE $7C
    cp $7C                                        ; $55B4: $FE $7C
    cp $7C                                        ; $55B6: $FE $7C
    ld a, h                                       ; $55B8: $7C
    add b                                         ; $55B9: $80
    ret nz                                        ; $55BA: $C0

    nop                                           ; $55BB: $00
    nop                                           ; $55BC: $00
    nop                                           ; $55BD: $00
    nop                                           ; $55BE: $00
    nop                                           ; $55BF: $00
    ld bc, $0100                                  ; $55C0: $01 $00 $01
    nop                                           ; $55C3: $00
    nop                                           ; $55C4: $00
    nop                                           ; $55C5: $00
    nop                                           ; $55C6: $00
    nop                                           ; $55C7: $00
    ld bc, $0100                                  ; $55C8: $01 $00 $01
    nop                                           ; $55CB: $00
    ld [bc], a                                    ; $55CC: $02
    ld bc, $0003                                  ; $55CD: $01 $03 $00
    inc b                                         ; $55D0: $04
    inc bc                                        ; $55D1: $03
    ld [$1007], sp                                ; $55D2: $08 $07 $10
    rrca                                          ; $55D5: $0F
    rra                                           ; $55D6: $1F
    nop                                           ; $55D7: $00
    nop                                           ; $55D8: $00
    nop                                           ; $55D9: $00
    nop                                           ; $55DA: $00
    nop                                           ; $55DB: $00
    nop                                           ; $55DC: $00
    nop                                           ; $55DD: $00
    nop                                           ; $55DE: $00
    nop                                           ; $55DF: $00
    ld [hl], b                                    ; $55E0: $70
    cpl                                           ; $55E1: $2F
    dec sp                                        ; $55E2: $3B
    inc d                                         ; $55E3: $14
    inc a                                         ; $55E4: $3C
    inc de                                        ; $55E5: $13
    jr c, jr_016_55EF                             ; $55E6: $38 $07

    ld [$0F07], sp                                ; $55E8: $08 $07 $0F
    nop                                           ; $55EB: $00
    nop                                           ; $55EC: $00
    nop                                           ; $55ED: $00
    nop                                           ; $55EE: $00

jr_016_55EF:
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
    inc bc                                        ; $561A: $03
    nop                                           ; $561B: $00
    inc bc                                        ; $561C: $03
    ld bc, $0001                                  ; $561D: $01 $01 $00
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
    rlca                                          ; $563E: $07
    nop                                           ; $563F: $00
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
    nop                                           ; $5650: $00
    nop                                           ; $5651: $00
    nop                                           ; $5652: $00
    nop                                           ; $5653: $00
    rra                                           ; $5654: $1F
    nop                                           ; $5655: $00
    ccf                                           ; $5656: $3F
    inc de                                        ; $5657: $13
    rst RST_38                                    ; $5658: $FF
    inc e                                         ; $5659: $1C
    cp $71                                        ; $565A: $FE $71
    ld a, a                                       ; $565C: $7F
    ld d, $F7                                     ; $565D: $16 $F7
    add hl, bc                                    ; $565F: $09
    nop                                           ; $5660: $00
    nop                                           ; $5661: $00
    nop                                           ; $5662: $00
    nop                                           ; $5663: $00
    rlca                                          ; $5664: $07
    nop                                           ; $5665: $00
    adc a                                         ; $5666: $8F
    ld [bc], a                                    ; $5667: $02
    sbc a                                         ; $5668: $9F
    ld a, [bc]                                    ; $5669: $0A
    ld a, a                                       ; $566A: $7F
    adc b                                         ; $566B: $88
    rst RST_18                                    ; $566C: $DF
    dec h                                         ; $566D: $25
    rst RST_18                                    ; $566E: $DF
    xor l                                         ; $566F: $AD
    rst RST_18                                    ; $5670: $DF
    xor e                                         ; $5671: $AB
    sbc a                                         ; $5672: $9F
    ld h, b                                       ; $5673: $60
    cp h                                          ; $5674: $BC
    ld l, e                                       ; $5675: $6B
    adc [hl]                                      ; $5676: $8E
    ld [hl], c                                    ; $5677: $71
    rst RST_38                                    ; $5678: $FF
    add b                                         ; $5679: $80
    ld hl, sp-$10                                 ; $567A: $F8 $F0
    db $FC                                        ; $567C: $FC
    ldh a, [$FFF2]                                ; $567D: $F0 $F2
    db $EC                                        ; $567F: $EC
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
    ret nz                                        ; $568A: $C0

    nop                                           ; $568B: $00
    ldh [$FFC0], a                                ; $568C: $E0 $C0
    ldh a, [$FF80]                                ; $568E: $F0 $80
    ld hl, sp+$20                                 ; $5690: $F8 $20
    db $F4                                        ; $5692: $F4
    add sp, -$0C                                  ; $5693: $E8 $F4
    add sp, -$14                                  ; $5695: $E8 $EC
    ret nc                                        ; $5697: $D0

    call nz, Call_000_0438                        ; $5698: $C4 $38 $04
    ld hl, sp+$08                                 ; $569B: $F8 $08
    ldh a, [$FFF0]                                ; $569D: $F0 $F0
    nop                                           ; $569F: $00
    add b                                         ; $56A0: $80
    nop                                           ; $56A1: $00
    ld b, b                                       ; $56A2: $40
    add b                                         ; $56A3: $80
    ld b, b                                       ; $56A4: $40
    add b                                         ; $56A5: $80
    ld h, b                                       ; $56A6: $60
    ret nz                                        ; $56A7: $C0

    ld [hl], b                                    ; $56A8: $70
    ret nz                                        ; $56A9: $C0

    ld [hl], b                                    ; $56AA: $70
    ret nz                                        ; $56AB: $C0

    ret nc                                        ; $56AC: $D0

    and b                                         ; $56AD: $A0
    sub b                                         ; $56AE: $90
    ld h, b                                       ; $56AF: $60
    db $10                                        ; $56B0: $10
    ldh [$FF90], a                                ; $56B1: $E0 $90
    ld h, b                                       ; $56B3: $60
    ld h, b                                       ; $56B4: $60
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
    ld bc, $0100                                  ; $56DA: $01 $00 $01
    nop                                           ; $56DD: $00
    ld bc, $0700                                  ; $56DE: $01 $00 $07
    nop                                           ; $56E1: $00
    rlca                                          ; $56E2: $07
    inc bc                                        ; $56E3: $03
    dec sp                                        ; $56E4: $3B

jr_016_56E5:
    ld bc, $187F                                  ; $56E5: $01 $7F $18
    cp $65                                        ; $56E8: $FE $65
    cp $11                                        ; $56EA: $FE $11
    rst RST_38                                    ; $56EC: $FF
    call Call_000_20FF                            ; $56ED: $CD $FF $20
    ld sp, hl                                     ; $56F0: $F9
    sub [hl]                                      ; $56F1: $96
    pop af                                        ; $56F2: $F1
    ld c, [hl]                                    ; $56F3: $4E
    ld h, b                                       ; $56F4: $60
    rra                                           ; $56F5: $1F
    jr nz, jr_016_5717                            ; $56F6: $20 $1F

    db $10                                        ; $56F8: $10
    rrca                                          ; $56F9: $0F
    rrca                                          ; $56FA: $0F
    nop                                           ; $56FB: $00
    ld [bc], a                                    ; $56FC: $02
    ld bc, $0102                                  ; $56FD: $01 $02 $01
    rst RST_18                                    ; $5700: $DF
    inc hl                                        ; $5701: $23
    and a                                         ; $5702: $A7
    ld e, e                                       ; $5703: $5B
    rst RST_38                                    ; $5704: $FF
    nop                                           ; $5705: $00
    jp Jump_016_47BE                              ; $5706: $C3 $BE $47


    cp [hl]                                       ; $5709: $BE
    rst RST_38                                    ; $570A: $FF
    adc l                                         ; $570B: $8D
    adc a                                         ; $570C: $8F
    ld [hl], e                                    ; $570D: $73
    rst RST_30                                    ; $570E: $F7
    ld a, e                                       ; $570F: $7B
    rst RST_30                                    ; $5710: $F7
    ld a, e                                       ; $5711: $7B
    rst RST_30                                    ; $5712: $F7
    dec sp                                        ; $5713: $3B
    rst RST_38                                    ; $5714: $FF
    nop                                           ; $5715: $00
    rst RST_38                                    ; $5716: $FF

jr_016_5717:
    jr c, jr_016_5791                             ; $5717: $38 $78

    or a                                          ; $5719: $B7
    ld a, b                                       ; $571A: $78
    or a                                          ; $571B: $B7
    jr c, jr_016_56E5                             ; $571C: $38 $C7

    jr z, @-$37                                   ; $571E: $28 $C7

    pop hl                                        ; $5720: $E1
    sbc $C0                                       ; $5721: $DE $C0
    cp a                                          ; $5723: $BF
    ret nz                                        ; $5724: $C0

    ld a, a                                       ; $5725: $7F
    ld h, b                                       ; $5726: $60
    ccf                                           ; $5727: $3F
    or b                                          ; $5728: $B0
    rra                                           ; $5729: $1F
    sbc b                                         ; $572A: $98
    rrca                                          ; $572B: $0F
    ld c, h                                       ; $572C: $4C
    add a                                         ; $572D: $87
    ld b, a                                       ; $572E: $47
    add e                                         ; $572F: $83
    jp Jump_016_7900                              ; $5730: $C3 $00 $79


    add b                                         ; $5733: $80
    ld hl, sp+$10                                 ; $5734: $F8 $10
    ld a, b                                       ; $5736: $78
    sub b                                         ; $5737: $90
    sbc h                                         ; $5738: $9C
    ld l, b                                       ; $5739: $68
    inc e                                         ; $573A: $1C
    add sp, $1C                                   ; $573B: $E8 $1C
    add sp, $0E                                   ; $573D: $E8 $0E
    db $F4                                        ; $573F: $F4
    inc [hl]                                      ; $5740: $34
    inc bc                                        ; $5741: $03
    ld e, h                                       ; $5742: $5C
    inc hl                                        ; $5743: $23
    ld a, a                                       ; $5744: $7F
    nop                                           ; $5745: $00
    cp a                                          ; $5746: $BF
    ld c, a                                       ; $5747: $4F
    rst RST_38                                    ; $5748: $FF
    rrca                                          ; $5749: $0F
    ld e, a                                       ; $574A: $5F
    cpl                                           ; $574B: $2F
    ld e, a                                       ; $574C: $5F
    cpl                                           ; $574D: $2F
    cp a                                          ; $574E: $BF
    ld e, a                                       ; $574F: $5F
    cp a                                          ; $5750: $BF
    ld e, [hl]                                    ; $5751: $5E
    ld a, a                                       ; $5752: $7F
    cp [hl]                                       ; $5753: $BE
    rst RST_38                                    ; $5754: $FF
    ld a, $7F                                     ; $5755: $3E $7F
    cp [hl]                                       ; $5757: $BE
    ld a, $C0                                     ; $5758: $3E $C0
    ld h, b                                       ; $575A: $60
    add b                                         ; $575B: $80
    add b                                         ; $575C: $80
    nop                                           ; $575D: $00
    nop                                           ; $575E: $00
    nop                                           ; $575F: $00
    ld c, e                                       ; $5760: $4B
    add h                                         ; $5761: $84
    push bc                                       ; $5762: $C5
    ld [bc], a                                    ; $5763: $02
    rst RST_00                                    ; $5764: $C7
    add b                                         ; $5765: $80
    call $CF82                                    ; $5766: $CD $82 $CF
    add h                                         ; $5769: $84
    adc [hl]                                      ; $576A: $8E
    dec b                                         ; $576B: $05
    add a                                         ; $576C: $87
    ld [bc], a                                    ; $576D: $02
    rlca                                          ; $576E: $07
    ld [bc], a                                    ; $576F: $02
    rlca                                          ; $5770: $07
    ld [bc], a                                    ; $5771: $02
    inc bc                                        ; $5772: $03
    ld bc, $0103                                  ; $5773: $01 $03 $01
    ld bc, $0100                                  ; $5776: $01 $00 $01
    nop                                           ; $5779: $00
    ld bc, $0000                                  ; $577A: $01 $00 $00
    nop                                           ; $577D: $00
    nop                                           ; $577E: $00
    nop                                           ; $577F: $00
    ld c, $F4                                     ; $5780: $0E $F4
    adc [hl]                                      ; $5782: $8E
    ld [hl], h                                    ; $5783: $74
    add a                                         ; $5784: $87
    ld a, d                                       ; $5785: $7A
    rst RST_18                                    ; $5786: $DF
    and d                                         ; $5787: $A2
    and $98                                       ; $5788: $E6 $98
    jp nz, Jump_016_413C                          ; $578A: $C2 $3C $41

    ld a, $7F                                     ; $578D: $3E $7F
    nop                                           ; $578F: $00
    nop                                           ; $5790: $00

jr_016_5791:
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
    ld [bc], a                                    ; $57A4: $02
    ld bc, $0304                                  ; $57A5: $01 $04 $03
    ld [$0F07], sp                                ; $57A8: $08 $07 $0F
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
    nop                                           ; $57B8: $00
    nop                                           ; $57B9: $00
    nop                                           ; $57BA: $00
    nop                                           ; $57BB: $00
    nop                                           ; $57BC: $00
    nop                                           ; $57BD: $00
    nop                                           ; $57BE: $00
    nop                                           ; $57BF: $00
    nop                                           ; $57C0: $00
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
    ld bc, $0700                                  ; $57D0: $01 $00 $07
    ld bc, $020F                                  ; $57D3: $01 $0F $02
    rrca                                          ; $57D6: $0F
    dec b                                         ; $57D7: $05
    rrca                                          ; $57D8: $0F
    ld [bc], a                                    ; $57D9: $02
    rrca                                          ; $57DA: $0F
    ld [bc], a                                    ; $57DB: $02
    rlca                                          ; $57DC: $07
    nop                                           ; $57DD: $00
    nop                                           ; $57DE: $00
    nop                                           ; $57DF: $00
    rst RST_38                                    ; $57E0: $FF
    nop                                           ; $57E1: $00
    ldh a, [$FFEF]                                ; $57E2: $F0 $EF
    ld hl, sp-$49                                 ; $57E4: $F8 $B7
    ld hl, sp+$57                                 ; $57E6: $F8 $57
    ld hl, sp-$69                                 ; $57E8: $F8 $97
    ld hl, sp-$79                                 ; $57EA: $F8 $87
    rst RST_38                                    ; $57EC: $FF
    ld [hl], b                                    ; $57ED: $70
    ldh a, [rP1]                                  ; $57EE: $F0 $00
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
    nop                                           ; $57FC: $00
    nop                                           ; $57FD: $00
    nop                                           ; $57FE: $00
    nop                                           ; $57FF: $00
    nop                                           ; $5800: $00
    nop                                           ; $5801: $00
    nop                                           ; $5802: $00
    nop                                           ; $5803: $00
    nop                                           ; $5804: $00
    nop                                           ; $5805: $00
    nop                                           ; $5806: $00
    nop                                           ; $5807: $00
    nop                                           ; $5808: $00
    nop                                           ; $5809: $00
    inc a                                         ; $580A: $3C
    nop                                           ; $580B: $00
    ld b, e                                       ; $580C: $43
    inc a                                         ; $580D: $3C
    ld h, [hl]                                    ; $580E: $66
    rra                                           ; $580F: $1F
    ld [hl], e                                    ; $5810: $73
    rrca                                          ; $5811: $0F
    ld sp, hl                                     ; $5812: $F9
    rlca                                          ; $5813: $07
    ld a, $C3                                     ; $5814: $3E $C3
    ccf                                           ; $5816: $3F
    db $DB                                        ; $5817: $DB
    ccf                                           ; $5818: $3F
    db $DD                                        ; $5819: $DD

jr_016_581A:
    ld a, $DD                                     ; $581A: $3E $DD
    ccf                                           ; $581C: $3F
    ret nz                                        ; $581D: $C0

    pop hl                                        ; $581E: $E1
    nop                                           ; $581F: $00
    nop                                           ; $5820: $00
    nop                                           ; $5821: $00
    nop                                           ; $5822: $00
    nop                                           ; $5823: $00
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
    inc bc                                        ; $5836: $03
    nop                                           ; $5837: $00
    rra                                           ; $5838: $1F
    ld [bc], a                                    ; $5839: $02
    rra                                           ; $583A: $1F
    ld a, [bc]                                    ; $583B: $0A
    rrca                                          ; $583C: $0F
    rlca                                          ; $583D: $07
    rst RST_08                                    ; $583E: $CF
    ld b, $00                                     ; $583F: $06 $00
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
    nop                                           ; $5854: $00
    nop                                           ; $5855: $00
    ret nz                                        ; $5856: $C0

    nop                                           ; $5857: $00
    jr nz, jr_016_581A                            ; $5858: $20 $C0

    ldh a, [rNR41]                                ; $585A: $F0 $20
    ldh a, [$FFC0]                                ; $585C: $F0 $C0
    ret z                                         ; $585E: $C8

    jr nc, jr_016_5861                            ; $585F: $30 $00

jr_016_5861:
    nop                                           ; $5861: $00
    add b                                         ; $5862: $80
    nop                                           ; $5863: $00
    add b                                         ; $5864: $80
    nop                                           ; $5865: $00
    nop                                           ; $5866: $00
    nop                                           ; $5867: $00
    nop                                           ; $5868: $00
    nop                                           ; $5869: $00
    nop                                           ; $586A: $00
    nop                                           ; $586B: $00
    nop                                           ; $586C: $00
    nop                                           ; $586D: $00
    add b                                         ; $586E: $80
    nop                                           ; $586F: $00
    ret nz                                        ; $5870: $C0

    add b                                         ; $5871: $80
    ret nz                                        ; $5872: $C0

    nop                                           ; $5873: $00
    ldh [$FF80], a                                ; $5874: $E0 $80
    ldh [rLCDC], a                                ; $5876: $E0 $40
    ldh [rLCDC], a                                ; $5878: $E0 $40
    ret nz                                        ; $587A: $C0

    add b                                         ; $587B: $80
    add b                                         ; $587C: $80
    nop                                           ; $587D: $00
    nop                                           ; $587E: $00
    nop                                           ; $587F: $00
    ld [hl], a                                    ; $5880: $77
    adc c                                         ; $5881: $89
    ld hl, sp-$49                                 ; $5882: $F8 $B7
    ld a, [hl]                                    ; $5884: $7E
    cp c                                          ; $5885: $B9
    dec a                                         ; $5886: $3D
    jp c, $C0BF                                   ; $5887: $DA $BF $C0

    ld sp, $F9CE                                  ; $588A: $31 $CE $F9
    cpl                                           ; $588D: $2F
    rst RST_38                                    ; $588E: $FF
    ld [hl], a                                    ; $588F: $77
    rst RST_38                                    ; $5890: $FF
    ld a, b                                       ; $5891: $78
    ld a, [hl]                                    ; $5892: $7E
    cp l                                          ; $5893: $BD
    ld a, $DD                                     ; $5894: $3E $DD
    rra                                           ; $5896: $1F
    xor $3F                                       ; $5897: $EE $3F
    ldh [$FF67], a                                ; $5899: $E0 $67
    db $DB                                        ; $589B: $DB
    rst RST_00                                    ; $589C: $C7
    cp e                                          ; $589D: $BB
    add a                                         ; $589E: $87
    ld a, e                                       ; $589F: $7B
    rst RST_08                                    ; $58A0: $CF
    or b                                          ; $58A1: $B0
    adc [hl]                                      ; $58A2: $8E
    ld [hl], c                                    ; $58A3: $71
    sbc $2D                                       ; $58A4: $DE $2D
    dec a                                         ; $58A6: $3D
    jp c, Jump_000_02FF                           ; $58A7: $DA $FF $02

    and $D8                                       ; $58AA: $E6 $D8
    db $E4                                        ; $58AC: $E4
    ld e, b                                       ; $58AD: $58
    rst RST_38                                    ; $58AE: $FF
    jr c, jr_016_58EC                             ; $58AF: $38 $3B

    push bc                                       ; $58B1: $C5
    rst RST_18                                    ; $58B2: $DF
    ldh [rIE], a                                  ; $58B3: $E0 $FF
    jp z, $C5FF                                   ; $58B5: $CA $FF $C5

    rst RST_38                                    ; $58B8: $FF
    dec b                                         ; $58B9: $05
    rst RST_38                                    ; $58BA: $FF
    adc a                                         ; $58BB: $8F
    adc a                                         ; $58BC: $8F
    ld [hl], b                                    ; $58BD: $70
    add h                                         ; $58BE: $84
    ld a, b                                       ; $58BF: $78
    ld [bc], a                                    ; $58C0: $02
    ld bc, $0304                                  ; $58C1: $01 $04 $03
    ld [$1007], sp                                ; $58C4: $08 $07 $10
    rrca                                          ; $58C7: $0F
    jr nz, @+$21                                  ; $58C8: $20 $1F

    jr nz, @+$21                                  ; $58CA: $20 $1F

    ld h, b                                       ; $58CC: $60
    ccf                                           ; $58CD: $3F
    pop hl                                        ; $58CE: $E1
    ccf                                           ; $58CF: $3F
    ei                                            ; $58D0: $FB
    ld h, $B7                                     ; $58D1: $26 $B7
    ld c, b                                       ; $58D3: $48
    sub a                                         ; $58D4: $97
    ld l, e                                       ; $58D5: $6B
    sbc a                                         ; $58D6: $9F
    ld h, e                                       ; $58D7: $63
    sub a                                         ; $58D8: $97
    ld l, c                                       ; $58D9: $69
    ld l, e                                       ; $58DA: $6B
    dec b                                         ; $58DB: $05
    dec bc                                        ; $58DC: $0B
    dec b                                         ; $58DD: $05
    dec b                                         ; $58DE: $05
    ld [bc], a                                    ; $58DF: $02
    add a                                         ; $58E0: $87
    ld a, b                                       ; $58E1: $78
    adc b                                         ; $58E2: $88
    ld [hl], b                                    ; $58E3: $70
    ldh a, [$FF80]                                ; $58E4: $F0 $80
    ldh a, [$FFE0]                                ; $58E6: $F0 $E0
    ldh a, [$FFE0]                                ; $58E8: $F0 $E0
    ldh a, [$FFE0]                                ; $58EA: $F0 $E0

jr_016_58EC:
    ldh a, [$FFE0]                                ; $58EC: $F0 $E0
    ldh a, [$FFE0]                                ; $58EE: $F0 $E0
    ld hl, sp-$10                                 ; $58F0: $F8 $F0
    ld hl, sp-$10                                 ; $58F2: $F8 $F0
    ld hl, sp-$10                                 ; $58F4: $F8 $F0
    ld hl, sp-$40                                 ; $58F6: $F8 $C0
    ret nz                                        ; $58F8: $C0

    nop                                           ; $58F9: $00

jr_016_58FA:
    nop                                           ; $58FA: $00
    nop                                           ; $58FB: $00

jr_016_58FC:
    nop                                           ; $58FC: $00
    nop                                           ; $58FD: $00
    nop                                           ; $58FE: $00
    nop                                           ; $58FF: $00
    add d                                         ; $5900: $82
    ld a, h                                       ; $5901: $7C
    ld b, a                                       ; $5902: $47
    jr c, jr_016_594F                             ; $5903: $38 $4A

    dec [hl]                                      ; $5905: $35
    cpl                                           ; $5906: $2F
    db $10                                        ; $5907: $10
    ld a, [de]                                    ; $5908: $1A
    dec b                                         ; $5909: $05
    rra                                           ; $590A: $1F
    ld [$0B1C], sp                                ; $590B: $08 $1C $0B
    ld c, $05                                     ; $590E: $0E $05
    ld c, $05                                     ; $5910: $0E $05
    rlca                                          ; $5912: $07
    ld [bc], a                                    ; $5913: $02
    rlca                                          ; $5914: $07
    ld [bc], a                                    ; $5915: $02
    inc bc                                        ; $5916: $03
    ld bc, $0103                                  ; $5917: $01 $03 $01
    ld bc, $0000                                  ; $591A: $01 $00 $00
    nop                                           ; $591D: $00
    nop                                           ; $591E: $00
    nop                                           ; $591F: $00
    ldh [rP1], a                                  ; $5920: $E0 $00
    ldh [rLCDC], a                                ; $5922: $E0 $40
    ldh a, [rNR41]                                ; $5924: $F0 $20
    ld [hl], b                                    ; $5926: $70
    and b                                         ; $5927: $A0
    jr c, jr_016_58FA                             ; $5928: $38 $D0

    jr c, jr_016_58FC                             ; $592A: $38 $D0

    inc e                                         ; $592C: $1C
    add sp, $1C                                   ; $592D: $E8 $1C
    add sp, $0E                                   ; $592F: $E8 $0E
    db $F4                                        ; $5931: $F4
    cp [hl]                                       ; $5932: $BE
    ld b, b                                       ; $5933: $40
    call nz, $C238                                ; $5934: $C4 $38 $C2
    inc a                                         ; $5937: $3C
    ld b, c                                       ; $5938: $41
    ld a, $7F                                     ; $5939: $3E $7F
    nop                                           ; $593B: $00
    nop                                           ; $593C: $00
    nop                                           ; $593D: $00
    nop                                           ; $593E: $00
    nop                                           ; $593F: $00
    dec b                                         ; $5940: $05
    ld [bc], a                                    ; $5941: $02
    dec b                                         ; $5942: $05
    ld [bc], a                                    ; $5943: $02
    dec c                                         ; $5944: $0D
    ld [bc], a                                    ; $5945: $02
    inc de                                        ; $5946: $13
    inc c                                         ; $5947: $0C
    ld hl, $3F1E                                  ; $5948: $21 $1E $3F
    nop                                           ; $594B: $00
    nop                                           ; $594C: $00
    nop                                           ; $594D: $00
    nop                                           ; $594E: $00

jr_016_594F:
    nop                                           ; $594F: $00
    nop                                           ; $5950: $00
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
    nop                                           ; $5966: $00
    nop                                           ; $5967: $00
    nop                                           ; $5968: $00
    nop                                           ; $5969: $00
    nop                                           ; $596A: $00
    nop                                           ; $596B: $00
    inc bc                                        ; $596C: $03
    nop                                           ; $596D: $00
    inc c                                         ; $596E: $0C
    inc bc                                        ; $596F: $03
    pop af                                        ; $5970: $F1
    ld c, $F1                                     ; $5971: $0E $F1
    xor $F1                                       ; $5973: $EE $F1
    ld l, $F8                                     ; $5975: $2E $F8
    or a                                          ; $5977: $B7
    ld hl, sp+$57                                 ; $5978: $F8 $57
    rst RST_38                                    ; $597A: $FF
    db $10                                        ; $597B: $10
    jr c, jr_016_598E                             ; $597C: $38 $10

    jr nc, jr_016_5980                            ; $597E: $30 $00

jr_016_5980:
    inc bc                                        ; $5980: $03
    nop                                           ; $5981: $00
    rlca                                          ; $5982: $07
    ld [bc], a                                    ; $5983: $02
    rra                                           ; $5984: $1F
    inc bc                                        ; $5985: $03

jr_016_5986:
    rra                                           ; $5986: $1F
    ld c, $0F                                     ; $5987: $0E $0F
    ld [bc], a                                    ; $5989: $02
    cp $01                                        ; $598A: $FE $01
    ei                                            ; $598C: $FB
    ld h, h                                       ; $598D: $64

jr_016_598E:
    ld [hl], h                                    ; $598E: $74
    dec hl                                        ; $598F: $2B
    rst RST_38                                    ; $5990: $FF
    nop                                           ; $5991: $00
    ret c                                         ; $5992: $D8

    scf                                           ; $5993: $37
    ret z                                         ; $5994: $C8

    or a                                          ; $5995: $B7
    rst RST_38                                    ; $5996: $FF
    or c                                          ; $5997: $B1
    pop af                                        ; $5998: $F1
    adc $FE                                       ; $5999: $CE $FE
    rrca                                          ; $599B: $0F
    ld c, [hl]                                    ; $599C: $4E
    add a                                         ; $599D: $87
    adc [hl]                                      ; $599E: $8E
    rlca                                          ; $599F: $07
    ldh [rP1], a                                  ; $59A0: $E0 $00
    ldh a, [$FF60]                                ; $59A2: $F0 $60
    di                                            ; $59A4: $F3
    add b                                         ; $59A5: $80
    call z, $F933                                 ; $59A6: $CC $33 $F9
    rst RST_00                                    ; $59A9: $C7
    cp $37                                        ; $59AA: $FE $37
    db $FD                                        ; $59AC: $FD
    halt                                          ; $59AD: $76
    ld sp, hl                                     ; $59AE: $F9
    ld h, [hl]                                    ; $59AF: $66
    rst RST_30                                    ; $59B0: $F7
    ld c, $7F                                     ; $59B1: $0E $7F
    call $D4FB                                    ; $59B3: $CD $FB $D4
    cp $B9                                        ; $59B6: $FE $B9
    cp $7D                                        ; $59B8: $FE $7D
    rst RST_38                                    ; $59BA: $FF
    ld a, h                                       ; $59BB: $7C
    rst RST_38                                    ; $59BC: $FF
    ld a, c                                       ; $59BD: $79
    ei                                            ; $59BE: $FB
    ld [hl], l                                    ; $59BF: $75
    nop                                           ; $59C0: $00
    nop                                           ; $59C1: $00
    ldh a, [rP1]                                  ; $59C2: $F0 $00
    jr c, jr_016_5986                             ; $59C4: $38 $C0

    ld a, b                                       ; $59C6: $78
    add b                                         ; $59C7: $80
    ld hl, sp+$00                                 ; $59C8: $F8 $00
    ld hl, sp+$00                                 ; $59CA: $F8 $00
    ldh a, [rP1]                                  ; $59CC: $F0 $00
    ld hl, sp+$40                                 ; $59CE: $F8 $40
    db $F4                                        ; $59D0: $F4
    add sp, -$0E                                  ; $59D1: $E8 $F2
    inc c                                         ; $59D3: $0C
    ld de, $21EE                                  ; $59D4: $11 $EE $21
    sbc $39                                       ; $59D7: $DE $39
    add $FD                                       ; $59D9: $C6 $FD
    ld [bc], a                                    ; $59DB: $02
    rst RST_38                                    ; $59DC: $FF
    ld b, b                                       ; $59DD: $40
    rst RST_38                                    ; $59DE: $FF
    ld e, b                                       ; $59DF: $58
    rst RST_38                                    ; $59E0: $FF
    ld d, h                                       ; $59E1: $54
    cp $14                                        ; $59E2: $FE $14
    db $FC                                        ; $59E4: $FC
    jr z, jr_016_5A25                             ; $59E5: $28 $3E

    ret nz                                        ; $59E7: $C0

    adc [hl]                                      ; $59E8: $8E
    ld hl, sp-$06                                 ; $59E9: $F8 $FA
    ld [hl], h                                    ; $59EB: $74
    ld [hl], d                                    ; $59EC: $72
    inc c                                         ; $59ED: $0C
    and d                                         ; $59EE: $A2
    inc e                                         ; $59EF: $1C
    sub d                                         ; $59F0: $92
    inc c                                         ; $59F1: $0C
    adc h                                         ; $59F2: $8C
    nop                                           ; $59F3: $00
    ret nz                                        ; $59F4: $C0

    add b                                         ; $59F5: $80
    ret nz                                        ; $59F6: $C0

    add b                                         ; $59F7: $80
    ret nz                                        ; $59F8: $C0

    add b                                         ; $59F9: $80
    ret nz                                        ; $59FA: $C0

    add b                                         ; $59FB: $80
    ldh [$FFC0], a                                ; $59FC: $E0 $C0
    ldh [rLCDC], a                                ; $59FE: $E0 $40
    ei                                            ; $5A00: $FB
    dec c                                         ; $5A01: $0D
    rst RST_28                                    ; $5A02: $EF
    ld [bc], a                                    ; $5A03: $02
    rla                                           ; $5A04: $17
    db $E3                                        ; $5A05: $E3
    inc de                                        ; $5A06: $13
    ldh [$FF09], a                                ; $5A07: $E0 $09
    ldh a, [$FF08]                                ; $5A09: $F0 $08
    ldh a, [$FFB8]                                ; $5A0B: $F0 $B8
    ld b, b                                       ; $5A0D: $40
    rst RST_10                                    ; $5A0E: $D7
    jr z, @+$01                                   ; $5A0F: $28 $FF

    ld bc, $29D7                                  ; $5A11: $01 $D7 $29
    ei                                            ; $5A14: $FB
    ld b, l                                       ; $5A15: $45
    pop hl                                        ; $5A16: $E1
    ld e, [hl]                                    ; $5A17: $5E
    pop hl                                        ; $5A18: $E1
    ld e, [hl]                                    ; $5A19: $5E
    ld [hl], c                                    ; $5A1A: $71
    ld l, $71                                     ; $5A1B: $2E $71
    ld l, $70                                     ; $5A1D: $2E $70
    cpl                                           ; $5A1F: $2F
    ld [hl], b                                    ; $5A20: $70
    cpl                                           ; $5A21: $2F
    dec sp                                        ; $5A22: $3B
    inc d                                         ; $5A23: $14
    inc a                                         ; $5A24: $3C

jr_016_5A25:
    inc de                                        ; $5A25: $13
    jr c, @+$09                                   ; $5A26: $38 $07

    inc b                                         ; $5A28: $04
    inc bc                                        ; $5A29: $03
    inc b                                         ; $5A2A: $04
    inc bc                                        ; $5A2B: $03
    ld [bc], a                                    ; $5A2C: $02
    ld bc, $0102                                  ; $5A2D: $01 $02 $01
    ld bc, $0000                                  ; $5A30: $01 $00 $00
    nop                                           ; $5A33: $00
    nop                                           ; $5A34: $00
    nop                                           ; $5A35: $00
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
    ldh [rLCDC], a                                ; $5A40: $E0 $40
    ldh [rLCDC], a                                ; $5A42: $E0 $40
    ldh [rP1], a                                  ; $5A44: $E0 $00
    ld b, b                                       ; $5A46: $40
    add b                                         ; $5A47: $80
    ld b, b                                       ; $5A48: $40
    add b                                         ; $5A49: $80
    ld b, b                                       ; $5A4A: $40
    add b                                         ; $5A4B: $80
    ld b, b                                       ; $5A4C: $40
    add b                                         ; $5A4D: $80
    ld b, b                                       ; $5A4E: $40
    add b                                         ; $5A4F: $80
    add b                                         ; $5A50: $80
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
    ccf                                           ; $5A60: $3F
    nop                                           ; $5A61: $00
    daa                                           ; $5A62: $27
    dec de                                        ; $5A63: $1B
    ld b, e                                       ; $5A64: $43
    inc a                                         ; $5A65: $3C
    jp $C33C                                      ; $5A66: $C3 $3C $C3


    inc a                                         ; $5A69: $3C
    rst RST_00                                    ; $5A6A: $C7
    jr c, @+$01                                   ; $5A6B: $38 $FF

    ld b, h                                       ; $5A6D: $44
    cp $3C                                        ; $5A6E: $FE $3C
    ld a, h                                       ; $5A70: $7C
    nop                                           ; $5A71: $00
    ld b, h                                       ; $5A72: $44
    jr c, jr_016_5A99                             ; $5A73: $38 $24

    jr jr_016_5AAF                                ; $5A75: $18 $38

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
    inc bc                                        ; $5A84: $03
    nop                                           ; $5A85: $00
    inc bc                                        ; $5A86: $03
    ld bc, $0007                                  ; $5A87: $01 $07 $00
    rlca                                          ; $5A8A: $07
    inc bc                                        ; $5A8B: $03
    inc bc                                        ; $5A8C: $03
    nop                                           ; $5A8D: $00
    inc bc                                        ; $5A8E: $03
    ld bc, $0003                                  ; $5A8F: $01 $03 $00
    nop                                           ; $5A92: $00
    nop                                           ; $5A93: $00
    nop                                           ; $5A94: $00
    nop                                           ; $5A95: $00
    nop                                           ; $5A96: $00
    nop                                           ; $5A97: $00
    nop                                           ; $5A98: $00

jr_016_5A99:
    nop                                           ; $5A99: $00
    nop                                           ; $5A9A: $00
    nop                                           ; $5A9B: $00
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
    nop                                           ; $5AA6: $00
    nop                                           ; $5AA7: $00
    nop                                           ; $5AA8: $00
    nop                                           ; $5AA9: $00
    nop                                           ; $5AAA: $00
    nop                                           ; $5AAB: $00
    nop                                           ; $5AAC: $00
    nop                                           ; $5AAD: $00
    ld a, a                                       ; $5AAE: $7F

jr_016_5AAF:
    nop                                           ; $5AAF: $00
    rlca                                          ; $5AB0: $07
    nop                                           ; $5AB1: $00
    inc bc                                        ; $5AB2: $03
    nop                                           ; $5AB3: $00
    inc c                                         ; $5AB4: $0C
    inc bc                                        ; $5AB5: $03
    ccf                                           ; $5AB6: $3F
    nop                                           ; $5AB7: $00
    nop                                           ; $5AB8: $00
    nop                                           ; $5AB9: $00
    nop                                           ; $5ABA: $00
    nop                                           ; $5ABB: $00
    inc bc                                        ; $5ABC: $03
    nop                                           ; $5ABD: $00
    rrca                                          ; $5ABE: $0F
    nop                                           ; $5ABF: $00
    rst RST_38                                    ; $5AC0: $FF
    nop                                           ; $5AC1: $00
    rst RST_38                                    ; $5AC2: $FF
    rst RST_38                                    ; $5AC3: $FF
    rst RST_38                                    ; $5AC4: $FF
    nop                                           ; $5AC5: $00
    nop                                           ; $5AC6: $00
    rst RST_38                                    ; $5AC7: $FF
    nop                                           ; $5AC8: $00
    rst RST_38                                    ; $5AC9: $FF
    rst RST_38                                    ; $5ACA: $FF
    ld a, a                                       ; $5ACB: $7F
    ld a, a                                       ; $5ACC: $7F
    nop                                           ; $5ACD: $00
    rst RST_38                                    ; $5ACE: $FF
    ld a, a                                       ; $5ACF: $7F
    rst RST_38                                    ; $5AD0: $FF
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
    cp $01                                        ; $5AEE: $FE $01
    jr nc, @+$01                                  ; $5AF0: $30 $FF

    rst RST_38                                    ; $5AF2: $FF
    nop                                           ; $5AF3: $00
    ld a, c                                       ; $5AF4: $79
    add [hl]                                      ; $5AF5: $86
    rrca                                          ; $5AF6: $0F
    ldh a, [rIE]                                  ; $5AF7: $F0 $FF
    add [hl]                                      ; $5AF9: $86
    nop                                           ; $5AFA: $00
    rst RST_38                                    ; $5AFB: $FF
    cp $FC                                        ; $5AFC: $FE $FC
    cp $00                                        ; $5AFE: $FE $00
    nop                                           ; $5B00: $00
    nop                                           ; $5B01: $00
    nop                                           ; $5B02: $00
    nop                                           ; $5B03: $00
    nop                                           ; $5B04: $00
    nop                                           ; $5B05: $00
    inc a                                         ; $5B06: $3C
    nop                                           ; $5B07: $00
    ld b, e                                       ; $5B08: $43
    inc a                                         ; $5B09: $3C
    ld h, [hl]                                    ; $5B0A: $66
    rra                                           ; $5B0B: $1F
    ld [hl], e                                    ; $5B0C: $73
    ld c, $7F                                     ; $5B0D: $0E $7F
    nop                                           ; $5B0F: $00
    jr c, jr_016_5B19                             ; $5B10: $38 $07

    jr nz, jr_016_5B33                            ; $5B12: $20 $1F

    ld b, b                                       ; $5B14: $40
    ccf                                           ; $5B15: $3F
    ld b, b                                       ; $5B16: $40
    ccf                                           ; $5B17: $3F
    ld b, b                                       ; $5B18: $40

jr_016_5B19:
    ccf                                           ; $5B19: $3F
    ld b, c                                       ; $5B1A: $41
    ld a, $26                                     ; $5B1B: $3E $26
    jr @+$1B                                      ; $5B1D: $18 $19

    nop                                           ; $5B1F: $00
    rst RST_38                                    ; $5B20: $FF
    ld h, h                                       ; $5B21: $64
    ld a, a                                       ; $5B22: $7F
    and b                                         ; $5B23: $A0

jr_016_5B24:
    ld [hl], c                                    ; $5B24: $71
    adc [hl]                                      ; $5B25: $8E
    ld a, c                                       ; $5B26: $79
    xor a                                         ; $5B27: $AF
    rst RST_38                                    ; $5B28: $FF
    ld [hl], a                                    ; $5B29: $77
    rst RST_38                                    ; $5B2A: $FF
    ld a, b                                       ; $5B2B: $78
    ld a, [hl]                                    ; $5B2C: $7E
    cp l                                          ; $5B2D: $BD
    ld a, $DD                                     ; $5B2E: $3E $DD
    rra                                           ; $5B30: $1F
    xor $FF                                       ; $5B31: $EE $FF

jr_016_5B33:
    jr nz, jr_016_5B74                            ; $5B33: $20 $3F

    rst RST_08                                    ; $5B35: $CF
    rrca                                          ; $5B36: $0F
    or $0F                                        ; $5B37: $F6 $0F
    or $8F                                        ; $5B39: $F6 $8F
    ld [hl], h                                    ; $5B3B: $74
    ld a, a                                       ; $5B3C: $7F
    nop                                           ; $5B3D: $00
    ld bc, $0000                                  ; $5B3E: $01 $00 $00
    nop                                           ; $5B41: $00
    nop                                           ; $5B42: $00
    nop                                           ; $5B43: $00
    nop                                           ; $5B44: $00
    nop                                           ; $5B45: $00
    nop                                           ; $5B46: $00
    nop                                           ; $5B47: $00
    nop                                           ; $5B48: $00
    nop                                           ; $5B49: $00
    nop                                           ; $5B4A: $00
    nop                                           ; $5B4B: $00
    nop                                           ; $5B4C: $00
    nop                                           ; $5B4D: $00
    nop                                           ; $5B4E: $00
    nop                                           ; $5B4F: $00
    dec bc                                        ; $5B50: $0B
    nop                                           ; $5B51: $00
    rra                                           ; $5B52: $1F
    ld a, [bc]                                    ; $5B53: $0A
    ccf                                           ; $5B54: $3F
    db $10                                        ; $5B55: $10
    ld a, a                                       ; $5B56: $7F
    ld [hl], $FF                                  ; $5B57: $36 $FF
    ld l, b                                       ; $5B59: $68
    rst RST_38                                    ; $5B5A: $FF
    cp $FF                                        ; $5B5B: $FE $FF
    ldh a, [$FFFE]                                ; $5B5D: $F0 $FE
    ld a, c                                       ; $5B5F: $79
    ret nz                                        ; $5B60: $C0

    nop                                           ; $5B61: $00
    jr nz, jr_016_5B24                            ; $5B62: $20 $C0

    ldh a, [rNR41]                                ; $5B64: $F0 $20
    ldh a, [$FFC0]                                ; $5B66: $F0 $C0
    ret z                                         ; $5B68: $C8

    jr nc, @-$2F                                  ; $5B69: $30 $CF

    or b                                          ; $5B6B: $B0
    adc [hl]                                      ; $5B6C: $8E
    ld [hl], c                                    ; $5B6D: $71
    sbc $2D                                       ; $5B6E: $DE $2D
    dec a                                         ; $5B70: $3D
    jp c, Jump_000_02FF                           ; $5B71: $DA $FF $02

jr_016_5B74:
    and $D8                                       ; $5B74: $E6 $D8
    db $E4                                        ; $5B76: $E4
    ld e, b                                       ; $5B77: $58
    rst RST_38                                    ; $5B78: $FF
    jr c, jr_016_5BB6                             ; $5B79: $38 $3B

    push bc                                       ; $5B7B: $C5

jr_016_5B7C:
    rst RST_18                                    ; $5B7C: $DF
    ldh [rIE], a                                  ; $5B7D: $E0 $FF
    jp z, $C5FF                                   ; $5B7F: $CA $FF $C5

    rst RST_38                                    ; $5B82: $FF
    dec b                                         ; $5B83: $05
    rst RST_38                                    ; $5B84: $FF
    rrca                                          ; $5B85: $0F
    rra                                           ; $5B86: $1F
    ldh [rNR10], a                                ; $5B87: $E0 $10
    ldh [$FF08], a                                ; $5B89: $E0 $08
    ldh a, [$FF08]                                ; $5B8B: $F0 $08
    ldh a, [$FFB8]                                ; $5B8D: $F0 $B8
    ld b, b                                       ; $5B8F: $40
    rst RST_10                                    ; $5B90: $D7
    jr z, @+$01                                   ; $5B91: $28 $FF

    ld bc, $29D7                                  ; $5B93: $01 $D7 $29
    ei                                            ; $5B96: $FB
    ld b, l                                       ; $5B97: $45
    pop hl                                        ; $5B98: $E1
    ld e, [hl]                                    ; $5B99: $5E
    pop hl                                        ; $5B9A: $E1
    ld e, [hl]                                    ; $5B9B: $5E
    ld [hl], c                                    ; $5B9C: $71
    ld l, $71                                     ; $5B9D: $2E $71
    ld l, $80                                     ; $5B9F: $2E $80
    nop                                           ; $5BA1: $00
    add b                                         ; $5BA2: $80
    nop                                           ; $5BA3: $00
    add b                                         ; $5BA4: $80
    nop                                           ; $5BA5: $00
    ret nz                                        ; $5BA6: $C0

    add b                                         ; $5BA7: $80
    ret nz                                        ; $5BA8: $C0

    add b                                         ; $5BA9: $80
    ret nz                                        ; $5BAA: $C0

    add b                                         ; $5BAB: $80
    ret nz                                        ; $5BAC: $C0

    add b                                         ; $5BAD: $80
    ldh [$FFC0], a                                ; $5BAE: $E0 $C0
    ldh [rLCDC], a                                ; $5BB0: $E0 $40
    ldh [rLCDC], a                                ; $5BB2: $E0 $40
    ldh [rLCDC], a                                ; $5BB4: $E0 $40

jr_016_5BB6:
    ldh [rP1], a                                  ; $5BB6: $E0 $00
    ld b, b                                       ; $5BB8: $40
    add b                                         ; $5BB9: $80
    jr nz, jr_016_5B7C                            ; $5BBA: $20 $C0

    ldh [rP1], a                                  ; $5BBC: $E0 $00
    nop                                           ; $5BBE: $00
    nop                                           ; $5BBF: $00
    ld [hl], b                                    ; $5BC0: $70
    cpl                                           ; $5BC1: $2F
    ld [hl], b                                    ; $5BC2: $70
    cpl                                           ; $5BC3: $2F
    dec sp                                        ; $5BC4: $3B
    inc d                                         ; $5BC5: $14
    inc a                                         ; $5BC6: $3C
    inc de                                        ; $5BC7: $13
    jr c, jr_016_5BD1                             ; $5BC8: $38 $07

    ld [$0F07], sp                                ; $5BCA: $08 $07 $0F
    nop                                           ; $5BCD: $00
    nop                                           ; $5BCE: $00
    nop                                           ; $5BCF: $00
    nop                                           ; $5BD0: $00

jr_016_5BD1:
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
    add b                                         ; $5BE4: $80
    nop                                           ; $5BE5: $00
    add b                                         ; $5BE6: $80
    nop                                           ; $5BE7: $00
    nop                                           ; $5BE8: $00
    nop                                           ; $5BE9: $00
    nop                                           ; $5BEA: $00
    nop                                           ; $5BEB: $00
    nop                                           ; $5BEC: $00
    nop                                           ; $5BED: $00
    nop                                           ; $5BEE: $00
    nop                                           ; $5BEF: $00
    add b                                         ; $5BF0: $80
    nop                                           ; $5BF1: $00
    ret nz                                        ; $5BF2: $C0

    add b                                         ; $5BF3: $80
    ret nz                                        ; $5BF4: $C0

    nop                                           ; $5BF5: $00
    ldh [$FF80], a                                ; $5BF6: $E0 $80
    ldh [rLCDC], a                                ; $5BF8: $E0 $40
    ldh [rLCDC], a                                ; $5BFA: $E0 $40
    ret nz                                        ; $5BFC: $C0

    add b                                         ; $5BFD: $80
    add b                                         ; $5BFE: $80
    nop                                           ; $5BFF: $00
    cp $01                                        ; $5C00: $FE $01
    cp $FD                                        ; $5C02: $FE $FD
    rst RST_38                                    ; $5C04: $FF
    nop                                           ; $5C05: $00
    dec d                                         ; $5C06: $15
    ld [$E01F], a                                 ; $5C07: $EA $1F $E0
    dec d                                         ; $5C0A: $15
    ld [$00FF], a                                 ; $5C0B: $EA $FF $00
    cp $FC                                        ; $5C0E: $FE $FC
    cp $00                                        ; $5C10: $FE $00
    nop                                           ; $5C12: $00
    nop                                           ; $5C13: $00
    nop                                           ; $5C14: $00
    nop                                           ; $5C15: $00
    nop                                           ; $5C16: $00
    nop                                           ; $5C17: $00
    nop                                           ; $5C18: $00
    nop                                           ; $5C19: $00
    nop                                           ; $5C1A: $00
    nop                                           ; $5C1B: $00
    nop                                           ; $5C1C: $00
    nop                                           ; $5C1D: $00
    nop                                           ; $5C1E: $00
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
    nop                                           ; $5C2A: $00
    nop                                           ; $5C2B: $00
    nop                                           ; $5C2C: $00
    nop                                           ; $5C2D: $00
    ccf                                           ; $5C2E: $3F
    nop                                           ; $5C2F: $00
    rst RST_38                                    ; $5C30: $FF
    rra                                           ; $5C31: $1F
    rra                                           ; $5C32: $1F
    ldh [$FF08], a                                ; $5C33: $E0 $08
    rst RST_30                                    ; $5C35: $F7
    ld [$88F7], sp                                ; $5C36: $08 $F7 $88
    ld [hl], a                                    ; $5C39: $77
    ld a, a                                       ; $5C3A: $7F
    nop                                           ; $5C3B: $00
    ccf                                           ; $5C3C: $3F
    rra                                           ; $5C3D: $1F
    ccf                                           ; $5C3E: $3F
    nop                                           ; $5C3F: $00
    inc bc                                        ; $5C40: $03
    nop                                           ; $5C41: $00
    inc b                                         ; $5C42: $04
    inc bc                                        ; $5C43: $03
    inc b                                         ; $5C44: $04
    inc bc                                        ; $5C45: $03
    inc b                                         ; $5C46: $04
    inc bc                                        ; $5C47: $03
    inc bc                                        ; $5C48: $03
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
    nop                                           ; $5C60: $00
    nop                                           ; $5C61: $00
    inc bc                                        ; $5C62: $03
    nop                                           ; $5C63: $00
    inc c                                         ; $5C64: $0C
    inc bc                                        ; $5C65: $03
    jr nc, jr_016_5C77                            ; $5C66: $30 $0F

    db $EC                                        ; $5C68: $EC
    inc de                                        ; $5C69: $13
    rst RST_38                                    ; $5C6A: $FF
    ld c, b                                       ; $5C6B: $48
    rst RST_38                                    ; $5C6C: $FF
    ld l, c                                       ; $5C6D: $69
    ld a, a                                       ; $5C6E: $7F
    dec hl                                        ; $5C6F: $2B
    ccf                                           ; $5C70: $3F
    inc b                                         ; $5C71: $04
    ld a, a                                       ; $5C72: $7F
    rra                                           ; $5C73: $1F
    rst RST_38                                    ; $5C74: $FF
    ld [hl], b                                    ; $5C75: $70
    rst RST_38                                    ; $5C76: $FF

jr_016_5C77:
    inc bc                                        ; $5C77: $03
    rla                                           ; $5C78: $17
    add hl, bc                                    ; $5C79: $09
    dec bc                                        ; $5C7A: $0B
    dec b                                         ; $5C7B: $05
    dec bc                                        ; $5C7C: $0B
    dec b                                         ; $5C7D: $05
    dec b                                         ; $5C7E: $05
    ld [bc], a                                    ; $5C7F: $02
    nop                                           ; $5C80: $00
    nop                                           ; $5C81: $00
    nop                                           ; $5C82: $00
    nop                                           ; $5C83: $00
    nop                                           ; $5C84: $00
    nop                                           ; $5C85: $00
    ld e, $00                                     ; $5C86: $1E $00
    ccf                                           ; $5C88: $3F
    nop                                           ; $5C89: $00
    ld a, [hl]                                    ; $5C8A: $7E
    ld bc, $017E                                  ; $5C8B: $01 $7E $01
    cp $01                                        ; $5C8E: $FE $01
    cp $71                                        ; $5C90: $FE $71
    db $FD                                        ; $5C92: $FD
    ld [hl-], a                                   ; $5C93: $32
    dec a                                         ; $5C94: $3D
    jp nz, $E01F                                  ; $5C95: $C2 $1F $E0

    rra                                           ; $5C98: $1F
    and $1F                                       ; $5C99: $E6 $1F
    and $9F                                       ; $5C9B: $E6 $9F
    ld h, l                                       ; $5C9D: $65
    rst RST_28                                    ; $5C9E: $EF
    dec b                                         ; $5C9F: $05
    inc a                                         ; $5CA0: $3C
    nop                                           ; $5CA1: $00
    ld [hl], d                                    ; $5CA2: $72
    inc l                                         ; $5CA3: $2C
    ld sp, hl                                     ; $5CA4: $F9
    ld b, [hl]                                    ; $5CA5: $46
    ld sp, hl                                     ; $5CA6: $F9
    halt                                          ; $5CA7: $76
    ldh a, [rIF]                                  ; $5CA8: $F0 $0F
    cp $41                                        ; $5CAA: $FE $41
    ld sp, hl                                     ; $5CAC: $F9
    ld a, $FD                                     ; $5CAD: $3E $FD
    ld a, $FD                                     ; $5CAF: $3E $FD
    ld a, $FD                                     ; $5CB1: $3E $FD
    ld a, $FF                                     ; $5CB3: $3E $FF
    dec a                                         ; $5CB5: $3D
    rst RST_38                                    ; $5CB6: $FF
    ld b, c                                       ; $5CB7: $41
    rst RST_28                                    ; $5CB8: $EF
    sbc h                                         ; $5CB9: $9C

Call_016_5CBA:
    rst RST_28                                    ; $5CBA: $EF
    sbc [hl]                                      ; $5CBB: $9E
    rst RST_30                                    ; $5CBC: $F7
    xor [hl]                                      ; $5CBD: $AE
    rst RST_30                                    ; $5CBE: $F7
    adc [hl]                                      ; $5CBF: $8E
    nop                                           ; $5CC0: $00
    nop                                           ; $5CC1: $00
    rlca                                          ; $5CC2: $07
    nop                                           ; $5CC3: $00
    add hl, de                                    ; $5CC4: $19
    ld b, $61                                     ; $5CC5: $06 $61
    ld e, $81                                     ; $5CC7: $1E $81
    ld a, [hl]                                    ; $5CC9: $7E
    ld sp, hl                                     ; $5CCA: $F9
    ld b, $EB                                     ; $5CCB: $06 $EB
    ld [hl], l                                    ; $5CCD: $75
    rst RST_30                                    ; $5CCE: $F7
    cp c                                          ; $5CCF: $B9
    rst RST_30                                    ; $5CD0: $F7
    cp e                                          ; $5CD1: $BB
    rst RST_30                                    ; $5CD2: $F7
    cp d                                          ; $5CD3: $BA
    rst RST_38                                    ; $5CD4: $FF
    ret nc                                        ; $5CD5: $D0

    db $FD                                        ; $5CD6: $FD
    ret z                                         ; $5CD7: $C8

    db $FC                                        ; $5CD8: $FC
    jr jr_016_5D17                                ; $5CD9: $18 $3C

    ret c                                         ; $5CDB: $D8

    ld e, $EC                                     ; $5CDC: $1E $EC
    ld e, $EC                                     ; $5CDE: $1E $EC
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
    jr nc, jr_016_5CEC                            ; $5CEA: $30 $00

jr_016_5CEC:
    call z, $F330                                 ; $5CEC: $CC $30 $F3
    inc c                                         ; $5CEF: $0C
    adc h                                         ; $5CF0: $8C
    ld [hl], e                                    ; $5CF1: $73
    add b                                         ; $5CF2: $80
    ld a, a                                       ; $5CF3: $7F
    nop                                           ; $5CF4: $00
    rst RST_38                                    ; $5CF5: $FF
    nop                                           ; $5CF6: $00
    rst RST_38                                    ; $5CF7: $FF
    pop bc                                        ; $5CF8: $C1
    ld a, $31                                     ; $5CF9: $3E $31
    ld c, $0F                                     ; $5CFB: $0E $0F
    ld bc, $0003                                  ; $5CFD: $01 $03 $00
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
    inc bc                                        ; $5D0A: $03
    nop                                           ; $5D0B: $00
    inc b                                         ; $5D0C: $04
    inc bc                                        ; $5D0D: $03
    dec bc                                        ; $5D0E: $0B
    rlca                                          ; $5D0F: $07
    rla                                           ; $5D10: $17
    rrca                                          ; $5D11: $0F
    rla                                           ; $5D12: $17
    rrca                                          ; $5D13: $0F
    cpl                                           ; $5D14: $2F
    rra                                           ; $5D15: $1F
    cpl                                           ; $5D16: $2F

jr_016_5D17:
    rra                                           ; $5D17: $1F
    cpl                                           ; $5D18: $2F
    ld e, $2E                                     ; $5D19: $1E $2E
    dec e                                         ; $5D1B: $1D
    inc e                                         ; $5D1C: $1C
    inc bc                                        ; $5D1D: $03
    dec b                                         ; $5D1E: $05
    ld [bc], a                                    ; $5D1F: $02
    nop                                           ; $5D20: $00
    nop                                           ; $5D21: $00
    nop                                           ; $5D22: $00
    nop                                           ; $5D23: $00
    nop                                           ; $5D24: $00
    nop                                           ; $5D25: $00
    nop                                           ; $5D26: $00
    nop                                           ; $5D27: $00
    ldh a, [rP1]                                  ; $5D28: $F0 $00
    jr nz, jr_016_5CEC                            ; $5D2A: $20 $C0

    ret nz                                        ; $5D2C: $C0

    add b                                         ; $5D2D: $80
    add b                                         ; $5D2E: $80
    nop                                           ; $5D2F: $00
    add b                                         ; $5D30: $80
    nop                                           ; $5D31: $00
    add b                                         ; $5D32: $80
    nop                                           ; $5D33: $00
    ldh [rP1], a                                  ; $5D34: $E0 $00
    sub b                                         ; $5D36: $90
    ld h, b                                       ; $5D37: $60
    jr nz, @-$3E                                  ; $5D38: $20 $C0

    ld b, b                                       ; $5D3A: $40
    add b                                         ; $5D3B: $80
    add b                                         ; $5D3C: $80
    nop                                           ; $5D3D: $00
    nop                                           ; $5D3E: $00
    nop                                           ; $5D3F: $00
    adc d                                         ; $5D40: $8A
    inc b                                         ; $5D41: $04
    db $F4                                        ; $5D42: $F4
    ld [$60F8], sp                                ; $5D43: $08 $F8 $60
    db $FC                                        ; $5D46: $FC
    ld l, b                                       ; $5D47: $68
    db $FC                                        ; $5D48: $FC
    ld hl, sp-$04                                 ; $5D49: $F8 $FC
    ld hl, sp-$04                                 ; $5D4B: $F8 $FC
    ld hl, sp-$08                                 ; $5D4D: $F8 $F8
    ldh [$FFE0], a                                ; $5D4F: $E0 $E0
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
    rst RST_38                                    ; $5D60: $FF
    pop bc                                        ; $5D61: $C1
    jp $C33C                                      ; $5D62: $C3 $3C $C3


    cp l                                          ; $5D65: $BD
    db $E3                                        ; $5D66: $E3
    db $DD                                        ; $5D67: $DD
    rst RST_38                                    ; $5D68: $FF
    ldh [$FFF0], a                                ; $5D69: $E0 $F0
    ldh [$FFF0], a                                ; $5D6B: $E0 $F0
    ldh [$FFF0], a                                ; $5D6D: $E0 $F0
    ldh [$FFF9], a                                ; $5D6F: $E0 $F9
    ldh a, [$FFF9]                                ; $5D71: $F0 $F9
    ldh a, [$FFF9]                                ; $5D73: $F0 $F9
    ldh a, [$FFF9]                                ; $5D75: $F0 $F9
    ret nz                                        ; $5D77: $C0

    pop bc                                        ; $5D78: $C1
    nop                                           ; $5D79: $00
    nop                                           ; $5D7A: $00
    nop                                           ; $5D7B: $00
    nop                                           ; $5D7C: $00
    nop                                           ; $5D7D: $00
    nop                                           ; $5D7E: $00
    nop                                           ; $5D7F: $00
    rst RST_30                                    ; $5D80: $F7
    rst RST_28                                    ; $5D81: $EF
    rst RST_30                                    ; $5D82: $F7
    rrca                                          ; $5D83: $0F
    rst RST_30                                    ; $5D84: $F7
    rst RST_28                                    ; $5D85: $EF
    rst RST_30                                    ; $5D86: $F7
    rst RST_08                                    ; $5D87: $CF
    rst RST_10                                    ; $5D88: $D7
    cpl                                           ; $5D89: $2F
    sub a                                         ; $5D8A: $97
    ld l, a                                       ; $5D8B: $6F
    adc e                                         ; $5D8C: $8B
    ld [hl], a                                    ; $5D8D: $77
    ld b, l                                       ; $5D8E: $45
    dec sp                                        ; $5D8F: $3B
    add $39                                       ; $5D90: $C6 $39
    rst RST_38                                    ; $5D92: $FF
    add d                                         ; $5D93: $82
    rst RST_38                                    ; $5D94: $FF
    add c                                         ; $5D95: $81
    rst RST_38                                    ; $5D96: $FF
    add c                                         ; $5D97: $81
    rst RST_38                                    ; $5D98: $FF
    add b                                         ; $5D99: $80
    rst RST_38                                    ; $5D9A: $FF
    ld bc, $41FF                                  ; $5D9B: $01 $FF $41
    rst RST_38                                    ; $5D9E: $FF
    ld b, c                                       ; $5D9F: $41
    adc [hl]                                      ; $5DA0: $8E
    ld [hl], h                                    ; $5DA1: $74
    adc a                                         ; $5DA2: $8F
    halt                                          ; $5DA3: $76
    add a                                         ; $5DA4: $87
    ld a, d                                       ; $5DA5: $7A
    rst RST_00                                    ; $5DA6: $C7
    cp d                                          ; $5DA7: $BA
    rst RST_18                                    ; $5DA8: $DF
    cp b                                          ; $5DA9: $B8
    ei                                            ; $5DAA: $FB
    and h                                         ; $5DAB: $A4
    pop hl                                        ; $5DAC: $E1
    sbc [hl]                                      ; $5DAD: $9E

jr_016_5DAE:
    pop bc                                        ; $5DAE: $C1
    cp [hl]                                       ; $5DAF: $BE
    ld b, c                                       ; $5DB0: $41
    cp [hl]                                       ; $5DB1: $BE
    pop bc                                        ; $5DB2: $C1
    ld a, $A1                                     ; $5DB3: $3E $A1
    ld e, $99                                     ; $5DB5: $1E $99
    ld b, $87                                     ; $5DB7: $06 $87
    nop                                           ; $5DB9: $00
    add b                                         ; $5DBA: $80
    nop                                           ; $5DBB: $00
    add b                                         ; $5DBC: $80
    nop                                           ; $5DBD: $00
    add b                                         ; $5DBE: $80
    nop                                           ; $5DBF: $00
    rst RST_38                                    ; $5DC0: $FF
    ld b, b                                       ; $5DC1: $40
    ld a, a                                       ; $5DC2: $7F
    nop                                           ; $5DC3: $00
    ld a, a                                       ; $5DC4: $7F
    inc hl                                        ; $5DC5: $23
    ld a, a                                       ; $5DC6: $7F
    inc a                                         ; $5DC7: $3C
    ld a, h                                       ; $5DC8: $7C
    inc bc                                        ; $5DC9: $03
    db $10                                        ; $5DCA: $10
    rrca                                          ; $5DCB: $0F
    inc e                                         ; $5DCC: $1C
    inc bc                                        ; $5DCD: $03
    rlca                                          ; $5DCE: $07
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
    ret nz                                        ; $5DE0: $C0

    nop                                           ; $5DE1: $00
    ret nz                                        ; $5DE2: $C0

    add b                                         ; $5DE3: $80
    ret nz                                        ; $5DE4: $C0

    add b                                         ; $5DE5: $80
    ret nz                                        ; $5DE6: $C0

    nop                                           ; $5DE7: $00
    add b                                         ; $5DE8: $80
    nop                                           ; $5DE9: $00
    ld b, b                                       ; $5DEA: $40
    add b                                         ; $5DEB: $80
    jr nz, jr_016_5DAE                            ; $5DEC: $20 $C0

    ldh [rP1], a                                  ; $5DEE: $E0 $00
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
    dec b                                         ; $5E00: $05
    ld [bc], a                                    ; $5E01: $02
    dec b                                         ; $5E02: $05
    ld [bc], a                                    ; $5E03: $02
    dec c                                         ; $5E04: $0D
    ld [bc], a                                    ; $5E05: $02
    inc de                                        ; $5E06: $13
    inc c                                         ; $5E07: $0C
    ld hl, $3F1E                                  ; $5E08: $21 $1E $3F
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
    inc bc                                        ; $5E20: $03
    ld bc, $0307                                  ; $5E21: $01 $07 $03
    rrca                                          ; $5E24: $0F
    rlca                                          ; $5E25: $07
    rra                                           ; $5E26: $1F
    rrca                                          ; $5E27: $0F
    ccf                                           ; $5E28: $3F
    rra                                           ; $5E29: $1F
    ccf                                           ; $5E2A: $3F
    inc e                                         ; $5E2B: $1C
    ld a, a                                       ; $5E2C: $7F
    ld sp, $2173                                  ; $5E2D: $31 $73 $21
    rst RST_20                                    ; $5E30: $E7
    ld b, e                                       ; $5E31: $43
    rst RST_00                                    ; $5E32: $C7
    inc bc                                        ; $5E33: $03
    rrca                                          ; $5E34: $0F
    rlca                                          ; $5E35: $07
    rrca                                          ; $5E36: $0F
    ld b, $1E                                     ; $5E37: $06 $1E
    inc c                                         ; $5E39: $0C
    inc e                                         ; $5E3A: $1C
    ld [$1038], sp                                ; $5E3B: $08 $38 $10
    jr nc, jr_016_5E40                            ; $5E3E: $30 $00

jr_016_5E40:
    nop                                           ; $5E40: $00
    nop                                           ; $5E41: $00
    inc bc                                        ; $5E42: $03
    nop                                           ; $5E43: $00
    rrca                                          ; $5E44: $0F
    inc bc                                        ; $5E45: $03
    ld a, $0F                                     ; $5E46: $3E $0F
    ld hl, sp+$3F                                 ; $5E48: $F8 $3F
    rst RST_20                                    ; $5E4A: $E7
    rst RST_38                                    ; $5E4B: $FF
    rst RST_18                                    ; $5E4C: $DF
    rst RST_38                                    ; $5E4D: $FF
    rst RST_38                                    ; $5E4E: $FF
    rst RST_38                                    ; $5E4F: $FF
    cp $FF                                        ; $5E50: $FE $FF
    rst RST_38                                    ; $5E52: $FF
    rst RST_38                                    ; $5E53: $FF
    rst RST_38                                    ; $5E54: $FF
    ld a, a                                       ; $5E55: $7F
    rst RST_38                                    ; $5E56: $FF
    rst RST_38                                    ; $5E57: $FF
    rst RST_38                                    ; $5E58: $FF
    db $FC                                        ; $5E59: $FC
    db $FD                                        ; $5E5A: $FD
    ldh a, [$FFF2]                                ; $5E5B: $F0 $F2
    pop bc                                        ; $5E5D: $C1
    rst RST_00                                    ; $5E5E: $C7
    add b                                         ; $5E5F: $80
    ld a, a                                       ; $5E60: $7F
    inc d                                         ; $5E61: $14
    ld a, a                                       ; $5E62: $7F
    cpl                                           ; $5E63: $2F
    ld a, a                                       ; $5E64: $7F
    inc l                                         ; $5E65: $2C
    rst RST_28                                    ; $5E66: $EF
    inc de                                        ; $5E67: $13
    pop af                                        ; $5E68: $F1
    ld c, $AD                                     ; $5E69: $0E $AD
    ld d, d                                       ; $5E6B: $52
    cp d                                          ; $5E6C: $BA
    ld b, l                                       ; $5E6D: $45
    rst RST_38                                    ; $5E6E: $FF
    ld b, b                                       ; $5E6F: $40
    ld a, a                                       ; $5E70: $7F
    dec bc                                        ; $5E71: $0B
    ld c, a                                       ; $5E72: $4F
    dec [hl]                                      ; $5E73: $35
    ld l, a                                       ; $5E74: $6F
    inc [hl]                                      ; $5E75: $34
    ccf                                           ; $5E76: $3F
    db $10                                        ; $5E77: $10
    ccf                                           ; $5E78: $3F
    rla                                           ; $5E79: $17
    rra                                           ; $5E7A: $1F
    rlca                                          ; $5E7B: $07
    rlca                                          ; $5E7C: $07
    ld bc, $0001                                  ; $5E7D: $01 $01 $00
    ld bc, $0E00                                  ; $5E80: $01 $00 $0E
    ld bc, $011E                                  ; $5E83: $01 $1E $01
    dec hl                                        ; $5E86: $2B
    inc d                                         ; $5E87: $14
    ccf                                           ; $5E88: $3F
    nop                                           ; $5E89: $00
    dec hl                                        ; $5E8A: $2B
    inc d                                         ; $5E8B: $14
    rra                                           ; $5E8C: $1F
    nop                                           ; $5E8D: $00
    rra                                           ; $5E8E: $1F
    inc c                                         ; $5E8F: $0C
    rra                                           ; $5E90: $1F
    ld c, $0F                                     ; $5E91: $0E $0F
    ld b, $0F                                     ; $5E93: $06 $0F
    ld b, $0F                                     ; $5E95: $06 $0F
    rlca                                          ; $5E97: $07

jr_016_5E98:
    rrca                                          ; $5E98: $0F
    nop                                           ; $5E99: $00

jr_016_5E9A:
    db $10                                        ; $5E9A: $10
    rrca                                          ; $5E9B: $0F
    ld hl, $3F1E                                  ; $5E9C: $21 $1E $3F
    nop                                           ; $5E9F: $00
    ld a, a                                       ; $5EA0: $7F
    nop                                           ; $5EA1: $00
    rst RST_38                                    ; $5EA2: $FF
    ld a, a                                       ; $5EA3: $7F
    ret nz                                        ; $5EA4: $C0

    rst RST_38                                    ; $5EA5: $FF
    nop                                           ; $5EA6: $00
    rst RST_38                                    ; $5EA7: $FF
    db $FC                                        ; $5EA8: $FC
    rst RST_38                                    ; $5EA9: $FF
    ldh a, [rIE]                                  ; $5EAA: $F0 $FF
    ret nz                                        ; $5EAC: $C0

    rst RST_38                                    ; $5EAD: $FF
    ccf                                           ; $5EAE: $3F
    rst RST_38                                    ; $5EAF: $FF
    db $FC                                        ; $5EB0: $FC
    rst RST_38                                    ; $5EB1: $FF
    rst RST_38                                    ; $5EB2: $FF
    rst RST_38                                    ; $5EB3: $FF
    rst RST_38                                    ; $5EB4: $FF
    ldh a, [$FFF6]                                ; $5EB5: $F0 $F6
    adc c                                         ; $5EB7: $89
    add a                                         ; $5EB8: $87
    ld a, d                                       ; $5EB9: $7A
    rlca                                          ; $5EBA: $07
    ld hl, sp-$0C                                 ; $5EBB: $F8 $F4
    dec bc                                        ; $5EBD: $0B
    rst RST_08                                    ; $5EBE: $CF
    or b                                          ; $5EBF: $B0
    ldh [rP1], a                                  ; $5EC0: $E0 $00
    db $FC                                        ; $5EC2: $FC
    ldh [$FF1F], a                                ; $5EC3: $E0 $1F
    db $FC                                        ; $5EC5: $FC
    inc bc                                        ; $5EC6: $03
    rst RST_38                                    ; $5EC7: $FF
    nop                                           ; $5EC8: $00
    rst RST_38                                    ; $5EC9: $FF
    ccf                                           ; $5ECA: $3F
    ret nz                                        ; $5ECB: $C0

    inc c                                         ; $5ECC: $0C
    ldh a, [$FF03]                                ; $5ECD: $F0 $03
    db $FC                                        ; $5ECF: $FC
    rst RST_38                                    ; $5ED0: $FF
    rst RST_38                                    ; $5ED1: $FF
    rst RST_38                                    ; $5ED2: $FF
    nop                                           ; $5ED3: $00
    ldh [rP1], a                                  ; $5ED4: $E0 $00
    jr nz, jr_016_5E98                            ; $5ED6: $20 $C0

    jr nz, jr_016_5E9A                            ; $5ED8: $20 $C0

    ret nz                                        ; $5EDA: $C0

jr_016_5EDB:
    nop                                           ; $5EDB: $00
    jr nz, @-$3E                                  ; $5EDC: $20 $C0

    ldh [rLCDC], a                                ; $5EDE: $E0 $40
    rst RST_38                                    ; $5EE0: $FF
    ld b, d                                       ; $5EE1: $42
    cp $9D                                        ; $5EE2: $FE $9D

jr_016_5EE4:
    sbc a                                         ; $5EE4: $9F
    ld l, h                                       ; $5EE5: $6C
    sbc a                                         ; $5EE6: $9F
    ld h, b                                       ; $5EE7: $60
    db $10                                        ; $5EE8: $10
    rst RST_28                                    ; $5EE9: $EF
    sbc a                                         ; $5EEA: $9F
    ld l, a                                       ; $5EEB: $6F
    ld a, a                                       ; $5EEC: $7F
    add c                                         ; $5EED: $81
    rst RST_20                                    ; $5EEE: $E7
    ld e, b                                       ; $5EEF: $58
    rst RST_08                                    ; $5EF0: $CF
    or b                                          ; $5EF1: $B0
    adc a                                         ; $5EF2: $8F
    ld [hl], b                                    ; $5EF3: $70
    adc a                                         ; $5EF4: $8F
    ld [hl], b                                    ; $5EF5: $70
    sbc a                                         ; $5EF6: $9F
    ld h, b                                       ; $5EF7: $60
    sbc a                                         ; $5EF8: $9F
    ld h, b                                       ; $5EF9: $60
    rst RST_18                                    ; $5EFA: $DF
    ld h, $FE                                     ; $5EFB: $26 $FE
    add c                                         ; $5EFD: $81
    db $F4                                        ; $5EFE: $F4
    dec bc                                        ; $5EFF: $0B
    jr z, @-$27                                   ; $5F00: $28 $D7

    jr z, jr_016_5EDB                             ; $5F02: $28 $D7

    ldh a, [rIF]                                  ; $5F04: $F0 $0F
    db $FC                                        ; $5F06: $FC
    ld h, e                                       ; $5F07: $63
    ld a, [hl]                                    ; $5F08: $7E
    adc l                                         ; $5F09: $8D
    rst RST_38                                    ; $5F0A: $FF
    ld a, [hl+]                                   ; $5F0B: $2A
    rst RST_38                                    ; $5F0C: $FF
    ldh a, [c]                                    ; $5F0D: $F2
    rst RST_38                                    ; $5F0E: $FF
    pop bc                                        ; $5F0F: $C1
    ld sp, hl                                     ; $5F10: $F9
    db $10                                        ; $5F11: $10
    ld a, b                                       ; $5F12: $78
    or b                                          ; $5F13: $B0
    ld a, b                                       ; $5F14: $78
    or b                                          ; $5F15: $B0
    cp b                                          ; $5F16: $B8
    ld d, b                                       ; $5F17: $50
    cp h                                          ; $5F18: $BC
    ld e, b                                       ; $5F19: $58
    db $FC                                        ; $5F1A: $FC
    jr jr_016_5F59                                ; $5F1B: $18 $3C

    ret nz                                        ; $5F1D: $C0

    ret nz                                        ; $5F1E: $C0

    nop                                           ; $5F1F: $00
    ret nz                                        ; $5F20: $C0

    nop                                           ; $5F21: $00
    jr c, jr_016_5EE4                             ; $5F22: $38 $C0

    rst RST_00                                    ; $5F24: $C7
    ld hl, sp-$08                                 ; $5F25: $F8 $F8
    ld a, a                                       ; $5F27: $7F
    rst RST_38                                    ; $5F28: $FF
    rra                                           ; $5F29: $1F
    rst RST_18                                    ; $5F2A: $DF
    and a                                         ; $5F2B: $A7
    rst RST_00                                    ; $5F2C: $C7
    cp c                                          ; $5F2D: $B9
    pop hl                                        ; $5F2E: $E1
    sbc [hl]                                      ; $5F2F: $9E
    pop de                                        ; $5F30: $D1
    cpl                                           ; $5F31: $2F
    jp hl                                         ; $5F32: $E9


    ld [hl], a                                    ; $5F33: $77
    push af                                       ; $5F34: $F5
    ld a, e                                       ; $5F35: $7B
    ei                                            ; $5F36: $FB
    inc a                                         ; $5F37: $3C
    db $FD                                        ; $5F38: $FD
    ld e, $FE                                     ; $5F39: $1E $FE
    ld e, a                                       ; $5F3B: $5F
    ld a, [hl]                                    ; $5F3C: $7E
    xor a                                         ; $5F3D: $AF
    ccf                                           ; $5F3E: $3F
    rst RST_08                                    ; $5F3F: $CF
    ccf                                           ; $5F40: $3F
    rst RST_10                                    ; $5F41: $D7
    ccf                                           ; $5F42: $3F
    ret nc                                        ; $5F43: $D0

    add hl, sp                                    ; $5F44: $39
    add $36                                       ; $5F45: $C6 $36
    ret z                                         ; $5F47: $C8

    ld a, b                                       ; $5F48: $78
    add b                                         ; $5F49: $80
    ret nz                                        ; $5F4A: $C0

    nop                                           ; $5F4B: $00
    add b                                         ; $5F4C: $80
    nop                                           ; $5F4D: $00
    add b                                         ; $5F4E: $80
    nop                                           ; $5F4F: $00
    add b                                         ; $5F50: $80
    nop                                           ; $5F51: $00
    nop                                           ; $5F52: $00
    nop                                           ; $5F53: $00
    nop                                           ; $5F54: $00
    nop                                           ; $5F55: $00
    nop                                           ; $5F56: $00
    nop                                           ; $5F57: $00
    nop                                           ; $5F58: $00

jr_016_5F59:
    nop                                           ; $5F59: $00
    nop                                           ; $5F5A: $00
    nop                                           ; $5F5B: $00
    nop                                           ; $5F5C: $00
    nop                                           ; $5F5D: $00
    nop                                           ; $5F5E: $00
    nop                                           ; $5F5F: $00
    ldh [rP1], a                                  ; $5F60: $E0 $00
    db $10                                        ; $5F62: $10
    ldh [$FFF0], a                                ; $5F63: $E0 $F0
    ldh [$FFE0], a                                ; $5F65: $E0 $E0
    ret nz                                        ; $5F67: $C0

    ret nz                                        ; $5F68: $C0

    nop                                           ; $5F69: $00
    ret nz                                        ; $5F6A: $C0

    nop                                           ; $5F6B: $00
    and b                                         ; $5F6C: $A0
    ld b, b                                       ; $5F6D: $40
    sub b                                         ; $5F6E: $90
    ld h, b                                       ; $5F6F: $60
    db $10                                        ; $5F70: $10
    ldh [rNR10], a                                ; $5F71: $E0 $10
    ldh [$FFF0], a                                ; $5F73: $E0 $F0
    nop                                           ; $5F75: $00
    ld hl, sp+$70                                 ; $5F76: $F8 $70
    ld a, b                                       ; $5F78: $78
    or b                                          ; $5F79: $B0
    ld a, h                                       ; $5F7A: $7C
    add b                                         ; $5F7B: $80
    call nc, $E428                                ; $5F7C: $D4 $28 $E4
    jr jr_016_5FA5                                ; $5F7F: $18 $24

    jr jr_016_5F97                                ; $5F81: $18 $14

    ld [$000C], sp                                ; $5F83: $08 $0C $00
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

jr_016_5F97:
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

jr_016_5FA5:
    nop                                           ; $5FA5: $00
    nop                                           ; $5FA6: $00
    nop                                           ; $5FA7: $00
    nop                                           ; $5FA8: $00
    nop                                           ; $5FA9: $00
    nop                                           ; $5FAA: $00
    nop                                           ; $5FAB: $00
    nop                                           ; $5FAC: $00
    nop                                           ; $5FAD: $00
    add b                                         ; $5FAE: $80
    nop                                           ; $5FAF: $00
    ldh [$FF80], a                                ; $5FB0: $E0 $80
    ld [hl], b                                    ; $5FB2: $70
    ldh [$FFD8], a                                ; $5FB3: $E0 $D8
    jr nc, jr_016_5FF3                            ; $5FB5: $30 $3C

    ld [$000C], sp                                ; $5FB7: $08 $0C $00
    ret nz                                        ; $5FBA: $C0

    nop                                           ; $5FBB: $00
    ldh [$FFC0], a                                ; $5FBC: $E0 $C0
    ldh [rP1], a                                  ; $5FBE: $E0 $00
    inc e                                         ; $5FC0: $1C
    nop                                           ; $5FC1: $00
    cpl                                           ; $5FC2: $2F
    inc d                                         ; $5FC3: $14
    cpl                                           ; $5FC4: $2F
    ld d, $6F                                     ; $5FC5: $16 $6F
    rla                                           ; $5FC7: $17
    rst RST_30                                    ; $5FC8: $F7
    ld l, e                                       ; $5FC9: $6B
    rst RST_30                                    ; $5FCA: $F7
    ld [$F0FF], a                                 ; $5FCB: $EA $FF $F0
    rst RST_38                                    ; $5FCE: $FF
    adc $FF                                       ; $5FCF: $CE $FF
    or c                                          ; $5FD1: $B1
    pop af                                        ; $5FD2: $F1
    ld l, [hl]                                    ; $5FD3: $6E
    cp $41                                        ; $5FD4: $FE $41
    pop hl                                        ; $5FD6: $E1
    sbc $C1                                       ; $5FD7: $DE $C1
    cp [hl]                                       ; $5FD9: $BE
    pop bc                                        ; $5FDA: $C1
    cp [hl]                                       ; $5FDB: $BE
    db $E3                                        ; $5FDC: $E3
    inc e                                         ; $5FDD: $1C
    ld a, a                                       ; $5FDE: $7F
    and d                                         ; $5FDF: $A2
    cp a                                          ; $5FE0: $BF
    ld e, h                                       ; $5FE1: $5C
    rst RST_38                                    ; $5FE2: $FF
    adc b                                         ; $5FE3: $88
    ld a, a                                       ; $5FE4: $7F
    push bc                                       ; $5FE5: $C5
    inc a                                         ; $5FE6: $3C
    db $E3                                        ; $5FE7: $E3
    sbc a                                         ; $5FE8: $9F
    ldh a, [rIE]                                  ; $5FE9: $F0 $FF
    db $FC                                        ; $5FEB: $FC
    ld a, a                                       ; $5FEC: $7F
    rst RST_38                                    ; $5FED: $FF
    rst RST_38                                    ; $5FEE: $FF
    rst RST_38                                    ; $5FEF: $FF
    rst RST_38                                    ; $5FF0: $FF
    rst RST_38                                    ; $5FF1: $FF
    rst RST_38                                    ; $5FF2: $FF

jr_016_5FF3:
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
    ccf                                           ; $5FFD: $3F
    ccf                                           ; $5FFE: $3F
    inc bc                                        ; $5FFF: $03
    rlca                                          ; $6000: $07
    db $FC                                        ; $6001: $FC
    inc bc                                        ; $6002: $03
    cp $01                                        ; $6003: $FE $01
    rst RST_38                                    ; $6005: $FF
    nop                                           ; $6006: $00
    rst RST_38                                    ; $6007: $FF
    jr nz, @+$01                                  ; $6008: $20 $FF

    ld sp, $98FF                                  ; $600A: $31 $FF $98
    rst RST_38                                    ; $600D: $FF
    sbc [hl]                                      ; $600E: $9E
    rst RST_38                                    ; $600F: $FF
    rst RST_08                                    ; $6010: $CF
    ld a, a                                       ; $6011: $7F
    rst RST_08                                    ; $6012: $CF
    ld a, a                                       ; $6013: $7F
    ld h, a                                       ; $6014: $67
    ccf                                           ; $6015: $3F
    scf                                           ; $6016: $37
    rra                                           ; $6017: $1F
    dec de                                        ; $6018: $1B
    rrca                                          ; $6019: $0F
    dec c                                         ; $601A: $0D
    rlca                                          ; $601B: $07
    rlca                                          ; $601C: $07
    inc bc                                        ; $601D: $03
    inc bc                                        ; $601E: $03
    nop                                           ; $601F: $00
    dec c                                         ; $6020: $0D
    ld b, $0D                                     ; $6021: $06 $0D
    ld b, $0C                                     ; $6023: $06 $0C
    rlca                                          ; $6025: $07
    inc c                                         ; $6026: $0C
    rlca                                          ; $6027: $07
    inc c                                         ; $6028: $0C
    rlca                                          ; $6029: $07
    inc c                                         ; $602A: $0C
    rlca                                          ; $602B: $07
    inc c                                         ; $602C: $0C
    rlca                                          ; $602D: $07
    ld b, $03                                     ; $602E: $06 $03
    ld b, $03                                     ; $6030: $06 $03
    ld b, $03                                     ; $6032: $06 $03
    ld b, $03                                     ; $6034: $06 $03
    inc bc                                        ; $6036: $03
    ld bc, $0103                                  ; $6037: $01 $03 $01
    inc bc                                        ; $603A: $03
    ld bc, $0001                                  ; $603B: $01 $01 $00
    ld bc, $0000                                  ; $603E: $01 $00 $00
    nop                                           ; $6041: $00
    nop                                           ; $6042: $00
    nop                                           ; $6043: $00
    nop                                           ; $6044: $00
    nop                                           ; $6045: $00
    nop                                           ; $6046: $00
    nop                                           ; $6047: $00
    nop                                           ; $6048: $00
    nop                                           ; $6049: $00
    nop                                           ; $604A: $00
    nop                                           ; $604B: $00
    ld bc, $0300                                  ; $604C: $01 $00 $03
    ld bc, $031F                                  ; $604F: $01 $1F $03
    scf                                           ; $6052: $37
    dec bc                                        ; $6053: $0B
    cp a                                          ; $6054: $BF
    inc de                                        ; $6055: $13
    cp e                                          ; $6056: $BB
    dec d                                         ; $6057: $15
    ld a, e                                       ; $6058: $7B
    sub l                                         ; $6059: $95
    ld l, l                                       ; $605A: $6D
    sbc d                                         ; $605B: $9A
    dec l                                         ; $605C: $2D
    jp c, $DC27                                   ; $605D: $DA $27 $DC

    add a                                         ; $6060: $87
    ld a, b                                       ; $6061: $78
    call nz, $B838                                ; $6062: $C4 $38 $B8
    ld b, b                                       ; $6065: $40
    cp $80                                        ; $6066: $FE $80
    rst RST_38                                    ; $6068: $FF
    ld hl, sp-$04                                 ; $6069: $F8 $FC
    rst RST_38                                    ; $606B: $FF

jr_016_606C:
    rst RST_38                                    ; $606C: $FF
    rst RST_38                                    ; $606D: $FF
    db $FC                                        ; $606E: $FC
    rst RST_38                                    ; $606F: $FF
    rst RST_38                                    ; $6070: $FF
    rst RST_38                                    ; $6071: $FF
    rst RST_38                                    ; $6072: $FF
    rst RST_38                                    ; $6073: $FF
    db $FC                                        ; $6074: $FC
    rst RST_38                                    ; $6075: $FF
    ldh [rIE], a                                  ; $6076: $E0 $FF
    db $FC                                        ; $6078: $FC
    rst RST_38                                    ; $6079: $FF
    rst RST_38                                    ; $607A: $FF
    nop                                           ; $607B: $00
    ret nz                                        ; $607C: $C0

    nop                                           ; $607D: $00
    nop                                           ; $607E: $00
    nop                                           ; $607F: $00
    rst RST_38                                    ; $6080: $FF
    inc a                                         ; $6081: $3C
    cp h                                          ; $6082: $BC
    ld d, b                                       ; $6083: $50
    ldh a, [rP1]                                  ; $6084: $F0 $00
    nop                                           ; $6086: $00
    nop                                           ; $6087: $00
    ldh [rP1], a                                  ; $6088: $E0 $00
    jr jr_016_606C                                ; $608A: $18 $E0

    adc b                                         ; $608C: $88
    ldh a, [$FF08]                                ; $608D: $F0 $08
    ldh a, [rDIV]                                 ; $608F: $F0 $04
    ld hl, sp-$1C                                 ; $6091: $F8 $E4
    ld hl, sp+$02                                 ; $6093: $F8 $02
    db $FC                                        ; $6095: $FC
    ld [bc], a                                    ; $6096: $02
    db $FC                                        ; $6097: $FC
    ld bc, $FFFE                                  ; $6098: $01 $FE $FF
    nop                                           ; $609B: $00
    nop                                           ; $609C: $00
    nop                                           ; $609D: $00
    nop                                           ; $609E: $00
    nop                                           ; $609F: $00
    inc de                                        ; $60A0: $13
    inc c                                         ; $60A1: $0C
    ld hl, $3F1E                                  ; $60A2: $21 $1E $3F
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
    nop                                           ; $60D0: $00
    nop                                           ; $60D1: $00
    nop                                           ; $60D2: $00
    nop                                           ; $60D3: $00
    nop                                           ; $60D4: $00
    nop                                           ; $60D5: $00
    nop                                           ; $60D6: $00
    nop                                           ; $60D7: $00
    nop                                           ; $60D8: $00
    nop                                           ; $60D9: $00
    inc c                                         ; $60DA: $0C
    nop                                           ; $60DB: $00
    ld c, $04                                     ; $60DC: $0E $04
    ld c, $04                                     ; $60DE: $0E $04
    add l                                         ; $60E0: $85
    ld a, d                                       ; $60E1: $7A
    adc c                                         ; $60E2: $89
    halt                                          ; $60E3: $76
    add hl, bc                                    ; $60E4: $09
    or $09                                        ; $60E5: $F6 $09
    or $11                                        ; $60E7: $F6 $11
    xor $D2                                       ; $60E9: $EE $D2
    inc l                                         ; $60EB: $2C
    ld a, [$FE44]                                 ; $60EC: $FA $44 $FE
    ld l, b                                       ; $60EF: $68
    ld a, h                                       ; $60F0: $7C
    xor b                                         ; $60F1: $A8
    ld a, h                                       ; $60F2: $7C
    xor b                                         ; $60F3: $A8
    ld a, a                                       ; $60F4: $7F
    xor b                                         ; $60F5: $A8
    ld a, a                                       ; $60F6: $7F
    and h                                         ; $60F7: $A4
    rst RST_30                                    ; $60F8: $F7
    jr jr_016_6169                                ; $60F9: $18 $6E

    or c                                          ; $60FB: $B1
    rst RST_38                                    ; $60FC: $FF
    ld b, [hl]                                    ; $60FD: $46
    rst RST_20                                    ; $60FE: $E7
    sbc d                                         ; $60FF: $9A
    jp $F3BD                                      ; $6100: $C3 $BD $F3


    adc l                                         ; $6103: $8D
    rst RST_38                                    ; $6104: $FF
    ld bc, $0F1F                                  ; $6105: $01 $1F $0F
    rrca                                          ; $6108: $0F
    ld bc, $0001                                  ; $6109: $01 $01 $00
    nop                                           ; $610C: $00
    nop                                           ; $610D: $00
    nop                                           ; $610E: $00
    nop                                           ; $610F: $00
    inc bc                                        ; $6110: $03
    nop                                           ; $6111: $00
    rra                                           ; $6112: $1F
    inc bc                                        ; $6113: $03
    rst RST_38                                    ; $6114: $FF
    rra                                           ; $6115: $1F
    rst RST_38                                    ; $6116: $FF
    ccf                                           ; $6117: $3F
    rst RST_38                                    ; $6118: $FF
    ccf                                           ; $6119: $3F
    ld a, a                                       ; $611A: $7F
    cp a                                          ; $611B: $BF
    ld a, a                                       ; $611C: $7F
    cp a                                          ; $611D: $BF
    ld a, a                                       ; $611E: $7F
    cp a                                          ; $611F: $BF
    ldh [$FFC0], a                                ; $6120: $E0 $C0
    ldh [$FFC0], a                                ; $6122: $E0 $C0
    ldh [rP1], a                                  ; $6124: $E0 $00
    ldh [$FFC0], a                                ; $6126: $E0 $C0
    ldh [$FFC0], a                                ; $6128: $E0 $C0
    ret nz                                        ; $612A: $C0

    nop                                           ; $612B: $00
    nop                                           ; $612C: $00
    nop                                           ; $612D: $00
    nop                                           ; $612E: $00
    nop                                           ; $612F: $00
    add b                                         ; $6130: $80
    nop                                           ; $6131: $00
    add b                                         ; $6132: $80
    nop                                           ; $6133: $00
    ret nz                                        ; $6134: $C0

    add b                                         ; $6135: $80
    ldh [$FF80], a                                ; $6136: $E0 $80
    ret c                                         ; $6138: $D8

    and b                                         ; $6139: $A0
    db $E4                                        ; $613A: $E4
    ret c                                         ; $613B: $D8

    ldh [c], a                                    ; $613C: $E2
    call c, Call_000_00FE                         ; $613D: $DC $FE $00
    nop                                           ; $6140: $00
    nop                                           ; $6141: $00
    nop                                           ; $6142: $00
    nop                                           ; $6143: $00
    nop                                           ; $6144: $00
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
    rrca                                          ; $6156: $0F
    nop                                           ; $6157: $00
    ld [$7F07], sp                                ; $6158: $08 $07 $7F
    nop                                           ; $615B: $00
    ld b, a                                       ; $615C: $47
    add hl, sp                                    ; $615D: $39
    add l                                         ; $615E: $85
    ld a, d                                       ; $615F: $7A
    nop                                           ; $6160: $00
    nop                                           ; $6161: $00
    nop                                           ; $6162: $00
    nop                                           ; $6163: $00
    nop                                           ; $6164: $00
    nop                                           ; $6165: $00
    nop                                           ; $6166: $00
    nop                                           ; $6167: $00
    nop                                           ; $6168: $00

jr_016_6169:
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
    ldh a, [rP1]                                  ; $6176: $F0 $00
    inc c                                         ; $6178: $0C
    ldh a, [rSC]                                  ; $6179: $F0 $02
    db $FC                                        ; $617B: $FC
    add c                                         ; $617C: $81
    ld a, [hl]                                    ; $617D: $7E
    pop bc                                        ; $617E: $C1
    cp [hl]                                       ; $617F: $BE
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
    add b                                         ; $619C: $80
    nop                                           ; $619D: $00
    ret nz                                        ; $619E: $C0

    add b                                         ; $619F: $80
    ld l, a                                       ; $61A0: $6F
    rla                                           ; $61A1: $17
    rst RST_30                                    ; $61A2: $F7
    ld l, e                                       ; $61A3: $6B
    rst RST_30                                    ; $61A4: $F7
    ld [$F0FF], a                                 ; $61A5: $EA $FF $F0
    rst RST_38                                    ; $61A8: $FF
    adc $FF                                       ; $61A9: $CE $FF
    or c                                          ; $61AB: $B1
    pop af                                        ; $61AC: $F1
    ld l, [hl]                                    ; $61AD: $6E
    cp $41                                        ; $61AE: $FE $41
    pop hl                                        ; $61B0: $E1
    sbc $C1                                       ; $61B1: $DE $C1
    cp [hl]                                       ; $61B3: $BE
    pop bc                                        ; $61B4: $C1
    cp [hl]                                       ; $61B5: $BE
    db $E3                                        ; $61B6: $E3
    inc e                                         ; $61B7: $1C
    ld a, a                                       ; $61B8: $7F
    and d                                         ; $61B9: $A2
    ccf                                           ; $61BA: $3F
    call c, $C83F                                 ; $61BB: $DC $3F $C8
    ld e, a                                       ; $61BE: $5F
    and l                                         ; $61BF: $A5
    ld e, h                                       ; $61C0: $5C
    and e                                         ; $61C1: $A3
    sbc a                                         ; $61C2: $9F
    ld h, b                                       ; $61C3: $60
    cp b                                          ; $61C4: $B8
    ld d, a                                       ; $61C5: $57
    ld a, b                                       ; $61C6: $78
    or a                                          ; $61C7: $B7
    ldh a, [rIF]                                  ; $61C8: $F0 $0F
    db $10                                        ; $61CA: $10
    rrca                                          ; $61CB: $0F
    db $10                                        ; $61CC: $10
    rrca                                          ; $61CD: $0F
    inc c                                         ; $61CE: $0C
    inc bc                                        ; $61CF: $03
    dec bc                                        ; $61D0: $0B
    inc b                                         ; $61D1: $04
    dec b                                         ; $61D2: $05
    ld [bc], a                                    ; $61D3: $02
    dec b                                         ; $61D4: $05
    ld [bc], a                                    ; $61D5: $02
    dec b                                         ; $61D6: $05
    ld [bc], a                                    ; $61D7: $02
    dec c                                         ; $61D8: $0D
    ld [bc], a                                    ; $61D9: $02
    inc de                                        ; $61DA: $13
    inc c                                         ; $61DB: $0C
    ld hl, $3F1E                                  ; $61DC: $21 $1E $3F
    nop                                           ; $61DF: $00
    add a                                         ; $61E0: $87
    ld a, b                                       ; $61E1: $78
    call nz, Call_000_3838                        ; $61E2: $C4 $38 $38
    ret nz                                        ; $61E5: $C0

    ld e, $E8                                     ; $61E6: $1E $E8
    rra                                           ; $61E8: $1F
    xor $1F                                       ; $61E9: $EE $1F
    rst RST_28                                    ; $61EB: $EF
    ccf                                           ; $61EC: $3F
    reti                                          ; $61ED: $D9


    dec a                                         ; $61EE: $3D
    jp c, Jump_000_1DFE                           ; $61EF: $DA $FE $1D

    rst RST_38                                    ; $61F2: $FF
    ldh [$FFF8], a                                ; $61F3: $E0 $F8
    ldh a, [$FFF8]                                ; $61F5: $F0 $F8
    ldh a, [$FFF8]                                ; $61F7: $F0 $F8
    ldh a, [$FFF8]                                ; $61F9: $F0 $F8
    ret nz                                        ; $61FB: $C0

    ret nz                                        ; $61FC: $C0

    nop                                           ; $61FD: $00
    nop                                           ; $61FE: $00
    nop                                           ; $61FF: $00
    rst RST_38                                    ; $6200: $FF
    inc a                                         ; $6201: $3C
    cp h                                          ; $6202: $BC
    ld d, b                                       ; $6203: $50
    ldh a, [rP1]                                  ; $6204: $F0 $00
    nop                                           ; $6206: $00
    nop                                           ; $6207: $00
    nop                                           ; $6208: $00
    nop                                           ; $6209: $00
    cp h                                          ; $620A: $BC
    nop                                           ; $620B: $00
    and d                                         ; $620C: $A2
    inc e                                         ; $620D: $1C
    ld a, l                                       ; $620E: $7D
    ld a, $FE                                     ; $620F: $3E $FE
    ccf                                           ; $6211: $3F
    ld a, $DF                                     ; $6212: $3E $DF
    sbc a                                         ; $6214: $9F
    ld l, a                                       ; $6215: $6F
    ld c, a                                       ; $6216: $4F
    ld sp, $1029                                  ; $6217: $31 $29 $10
    jr jr_016_621C                                ; $621A: $18 $00

jr_016_621C:
    nop                                           ; $621C: $00
    nop                                           ; $621D: $00
    nop                                           ; $621E: $00
    nop                                           ; $621F: $00
    nop                                           ; $6220: $00
    nop                                           ; $6221: $00
    ld bc, $0300                                  ; $6222: $01 $00 $03
    ld bc, $031F                                  ; $6225: $01 $1F $03
    rla                                           ; $6228: $17
    dec bc                                        ; $6229: $0B
    rla                                           ; $622A: $17
    dec bc                                        ; $622B: $0B
    dec bc                                        ; $622C: $0B
    dec b                                         ; $622D: $05
    dec bc                                        ; $622E: $0B
    dec b                                         ; $622F: $05
    dec b                                         ; $6230: $05
    ld [bc], a                                    ; $6231: $02
    dec b                                         ; $6232: $05
    ld [bc], a                                    ; $6233: $02
    inc bc                                        ; $6234: $03
    nop                                           ; $6235: $00
    inc bc                                        ; $6236: $03
    nop                                           ; $6237: $00

Call_016_6238:
    inc b                                         ; $6238: $04
    inc bc                                        ; $6239: $03
    inc b                                         ; $623A: $04
    inc bc                                        ; $623B: $03
    ld [$0807], sp                                ; $623C: $08 $07 $08
    rlca                                          ; $623F: $07
    db $10                                        ; $6240: $10
    rrca                                          ; $6241: $0F
    db $10                                        ; $6242: $10
    rrca                                          ; $6243: $0F
    db $10                                        ; $6244: $10
    rrca                                          ; $6245: $0F
    add hl, de                                    ; $6246: $19
    ld b, $07                                     ; $6247: $06 $07
    nop                                           ; $6249: $00
    nop                                           ; $624A: $00
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
    inc e                                         ; $627A: $1C
    nop                                           ; $627B: $00
    cpl                                           ; $627C: $2F
    inc d                                         ; $627D: $14
    cpl                                           ; $627E: $2F
    ld d, $80                                     ; $627F: $16 $80
    nop                                           ; $6281: $00
    add b                                         ; $6282: $80
    nop                                           ; $6283: $00
    ld b, b                                       ; $6284: $40
    add b                                         ; $6285: $80
    ld b, b                                       ; $6286: $40
    add b                                         ; $6287: $80
    and b                                         ; $6288: $A0
    ld b, b                                       ; $6289: $40
    ld h, b                                       ; $628A: $60
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
    nop                                           ; $629A: $00
    nop                                           ; $629B: $00
    nop                                           ; $629C: $00
    nop                                           ; $629D: $00
    nop                                           ; $629E: $00
    nop                                           ; $629F: $00
    rlca                                          ; $62A0: $07
    inc bc                                        ; $62A1: $03
    dec sp                                        ; $62A2: $3B
    ld bc, $187F                                  ; $62A3: $01 $7F $18
    cp $65                                        ; $62A6: $FE $65
    cp $11                                        ; $62A8: $FE $11
    rst RST_38                                    ; $62AA: $FF
    call Call_000_20FF                            ; $62AB: $CD $FF $20
    rst RST_38                                    ; $62AE: $FF
    sub h                                         ; $62AF: $94
    rst RST_38                                    ; $62B0: $FF
    ld b, h                                       ; $62B1: $44
    ld a, h                                       ; $62B2: $7C
    dec bc                                        ; $62B3: $0B
    inc a                                         ; $62B4: $3C
    dec bc                                        ; $62B5: $0B
    inc e                                         ; $62B6: $1C
    dec bc                                        ; $62B7: $0B
    jr c, jr_016_62D1                             ; $62B8: $38 $17

    jr c, jr_016_62D3                             ; $62BA: $38 $17

    jr c, jr_016_62D5                             ; $62BC: $38 $17

    ld [hl], b                                    ; $62BE: $70
    cpl                                           ; $62BF: $2F
    rst RST_18                                    ; $62C0: $DF
    inc hl                                        ; $62C1: $23
    and a                                         ; $62C2: $A7
    ld e, e                                       ; $62C3: $5B
    rst RST_38                                    ; $62C4: $FF
    nop                                           ; $62C5: $00
    jp Jump_016_47BE                              ; $62C6: $C3 $BE $47


    cp [hl]                                       ; $62C9: $BE
    rst RST_38                                    ; $62CA: $FF
    dec c                                         ; $62CB: $0D
    cp a                                          ; $62CC: $BF
    ld b, e                                       ; $62CD: $43
    ld e, a                                       ; $62CE: $5F
    and e                                         ; $62CF: $A3
    cp a                                          ; $62D0: $BF

jr_016_62D1:
    ld b, e                                       ; $62D1: $43
    rst RST_38                                    ; $62D2: $FF

jr_016_62D3:
    inc de                                        ; $62D3: $13
    ccf                                           ; $62D4: $3F

jr_016_62D5:
    ret nc                                        ; $62D5: $D0

    ld a, a                                       ; $62D6: $7F
    xor [hl]                                      ; $62D7: $AE
    ld a, a                                       ; $62D8: $7F
    xor [hl]                                      ; $62D9: $AE
    ld a, a                                       ; $62DA: $7F
    and [hl]                                      ; $62DB: $A6
    rst RST_38                                    ; $62DC: $FF
    ld b, b                                       ; $62DD: $40
    rst RST_30                                    ; $62DE: $F7
    ld c, e                                       ; $62DF: $4B
    pop hl                                        ; $62E0: $E1
    sbc $C0                                       ; $62E1: $DE $C0
    cp a                                          ; $62E3: $BF
    ret nz                                        ; $62E4: $C0

    ld a, a                                       ; $62E5: $7F
    ldh [$FF3F], a                                ; $62E6: $E0 $3F
    jr nc, @-$2F                                  ; $62E8: $30 $CF

    ld [$C6F7], sp                                ; $62EA: $08 $F7 $C6
    add hl, sp                                    ; $62ED: $39
    rst RST_30                                    ; $62EE: $F7
    ret                                           ; $62EF: $C9


    rst RST_38                                    ; $62F0: $FF
    ldh a, [rIE]                                  ; $62F1: $F0 $FF
    ld hl, sp-$06                                 ; $62F3: $F8 $FA
    ld [hl], h                                    ; $62F5: $74
    ld a, h                                       ; $62F6: $7C
    nop                                           ; $62F7: $00
    nop                                           ; $62F8: $00
    nop                                           ; $62F9: $00
    nop                                           ; $62FA: $00
    nop                                           ; $62FB: $00
    nop                                           ; $62FC: $00
    nop                                           ; $62FD: $00
    nop                                           ; $62FE: $00
    nop                                           ; $62FF: $00
    ld a, l                                       ; $6300: $7D
    ld [hl+], a                                   ; $6301: $22
    ld [hl], e                                    ; $6302: $73
    inc c                                         ; $6303: $0C
    ld hl, $411E                                  ; $6304: $21 $1E $41
    ld a, $7F                                     ; $6307: $3E $7F
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
    nop                                           ; $6314: $00
    nop                                           ; $6315: $00
    nop                                           ; $6316: $00
    nop                                           ; $6317: $00
    nop                                           ; $6318: $00
    nop                                           ; $6319: $00
    nop                                           ; $631A: $00
    nop                                           ; $631B: $00
    nop                                           ; $631C: $00
    nop                                           ; $631D: $00
    nop                                           ; $631E: $00
    nop                                           ; $631F: $00
    rst RST_10                                    ; $6320: $D7
    adc e                                         ; $6321: $8B
    rst RST_10                                    ; $6322: $D7
    adc e                                         ; $6323: $8B
    db $D3                                        ; $6324: $D3
    inc c                                         ; $6325: $0C
    ld e, $00                                     ; $6326: $1E $00
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
    ld [hl], a                                    ; $6340: $77
    adc c                                         ; $6341: $89
    ld hl, sp-$49                                 ; $6342: $F8 $B7
    ld a, [hl]                                    ; $6344: $7E
    cp c                                          ; $6345: $B9
    dec a                                         ; $6346: $3D
    jp c, $C0BF                                   ; $6347: $DA $BF $C0

    ld sp, $F9CE                                  ; $634A: $31 $CE $F9
    cpl                                           ; $634D: $2F
    rst RST_38                                    ; $634E: $FF
    inc bc                                        ; $634F: $03
    rst RST_10                                    ; $6350: $D7
    jr z, @+$01                                   ; $6351: $28 $FF

    add d                                         ; $6353: $82
    rst RST_10                                    ; $6354: $D7
    xor d                                         ; $6355: $AA
    rst RST_38                                    ; $6356: $FF
    add d                                         ; $6357: $82
    rst RST_00                                    ; $6358: $C7
    cp d                                          ; $6359: $BA
    rst RST_00                                    ; $635A: $C7
    cp d                                          ; $635B: $BA
    rst RST_00                                    ; $635C: $C7
    cp d                                          ; $635D: $BA
    rst RST_00                                    ; $635E: $C7
    cp d                                          ; $635F: $BA
    rst RST_08                                    ; $6360: $CF
    or b                                          ; $6361: $B0
    adc [hl]                                      ; $6362: $8E
    ld [hl], c                                    ; $6363: $71
    sbc $2D                                       ; $6364: $DE $2D
    dec a                                         ; $6366: $3D
    jp c, Jump_000_02FF                           ; $6367: $DA $FF $02

    and $D8                                       ; $636A: $E6 $D8
    db $E4                                        ; $636C: $E4
    ld e, b                                       ; $636D: $58
    rst RST_38                                    ; $636E: $FF
    jr c, jr_016_63AC                             ; $636F: $38 $3B

    push bc                                       ; $6371: $C5
    rst RST_18                                    ; $6372: $DF
    ldh [rIE], a                                  ; $6373: $E0 $FF
    jp z, $C5FF                                   ; $6375: $CA $FF $C5

    rst RST_38                                    ; $6378: $FF
    dec b                                         ; $6379: $05
    rst RST_38                                    ; $637A: $FF
    db $E3                                        ; $637B: $E3
    di                                            ; $637C: $F3
    ld l, h                                       ; $637D: $6C
    ldh a, [$FF6F]                                ; $637E: $F0 $6F
    ld bc, $0300                                  ; $6380: $01 $00 $03
    nop                                           ; $6383: $00
    dec b                                         ; $6384: $05
    ld [bc], a                                    ; $6385: $02
    add hl, bc                                    ; $6386: $09
    ld b, $11                                     ; $6387: $06 $11
    ld c, $21                                     ; $6389: $0E $21
    ld e, $21                                     ; $638B: $1E $21
    ld e, $61                                     ; $638D: $1E $61
    ld a, $E1                                     ; $638F: $3E $E1
    ld a, $E3                                     ; $6391: $3E $E3
    ld a, $B7                                     ; $6393: $3E $B7
    ld e, h                                       ; $6395: $5C
    sbc l                                         ; $6396: $9D
    ld l, b                                       ; $6397: $68
    adc c                                         ; $6398: $89
    ld [hl], b                                    ; $6399: $70
    sub c                                         ; $639A: $91
    ld h, b                                       ; $639B: $60
    ld h, b                                       ; $639C: $60
    nop                                           ; $639D: $00
    nop                                           ; $639E: $00
    nop                                           ; $639F: $00
    rst RST_00                                    ; $63A0: $C7
    cp d                                          ; $63A1: $BA
    rst RST_00                                    ; $63A2: $C7
    cp d                                          ; $63A3: $BA
    rst RST_38                                    ; $63A4: $FF
    add d                                         ; $63A5: $82
    rst RST_00                                    ; $63A6: $C7
    cp d                                          ; $63A7: $BA
    add e                                         ; $63A8: $83
    ld a, h                                       ; $63A9: $7C
    add e                                         ; $63AA: $83
    ld a, h                                       ; $63AB: $7C

jr_016_63AC:
    cp $00                                        ; $63AC: $FE $00
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
    db $FC                                        ; $63C0: $FC
    inc bc                                        ; $63C1: $03
    ld a, a                                       ; $63C2: $7F
    cp h                                          ; $63C3: $BC
    ld a, a                                       ; $63C4: $7F
    cp a                                          ; $63C5: $BF
    ld a, a                                       ; $63C6: $7F
    cp a                                          ; $63C7: $BF
    ccf                                           ; $63C8: $3F
    rst RST_00                                    ; $63C9: $C7
    rst RST_20                                    ; $63CA: $E7
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
    nop                                           ; $63D9: $00
    nop                                           ; $63DA: $00
    nop                                           ; $63DB: $00
    nop                                           ; $63DC: $00
    nop                                           ; $63DD: $00
    nop                                           ; $63DE: $00
    nop                                           ; $63DF: $00
    add b                                         ; $63E0: $80
    nop                                           ; $63E1: $00
    ld b, b                                       ; $63E2: $40
    add b                                         ; $63E3: $80
    ld h, b                                       ; $63E4: $60
    add b                                         ; $63E5: $80
    ldh [rP1], a                                  ; $63E6: $E0 $00
    ldh [$FF80], a                                ; $63E8: $E0 $80
    and b                                         ; $63EA: $A0
    ld b, b                                       ; $63EB: $40
    ret nz                                        ; $63EC: $C0

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
    inc bc                                        ; $6400: $03
    nop                                           ; $6401: $00
    inc b                                         ; $6402: $04
    inc bc                                        ; $6403: $03
    ld [$1007], sp                                ; $6404: $08 $07 $10
    rrca                                          ; $6407: $0F
    db $10                                        ; $6408: $10
    rrca                                          ; $6409: $0F
    rra                                           ; $640A: $1F
    nop                                           ; $640B: $00
    nop                                           ; $640C: $00
    nop                                           ; $640D: $00
    nop                                           ; $640E: $00

jr_016_640F:
    nop                                           ; $640F: $00
    nop                                           ; $6410: $00
    nop                                           ; $6411: $00
    nop                                           ; $6412: $00
    nop                                           ; $6413: $00
    nop                                           ; $6414: $00
    nop                                           ; $6415: $00
    nop                                           ; $6416: $00
    nop                                           ; $6417: $00
    nop                                           ; $6418: $00
    nop                                           ; $6419: $00
    nop                                           ; $641A: $00
    nop                                           ; $641B: $00
    nop                                           ; $641C: $00
    nop                                           ; $641D: $00
    nop                                           ; $641E: $00
    nop                                           ; $641F: $00
    inc bc                                        ; $6420: $03
    nop                                           ; $6421: $00
    inc b                                         ; $6422: $04
    inc bc                                        ; $6423: $03
    ld b, $01                                     ; $6424: $06 $01
    rlca                                          ; $6426: $07
    nop                                           ; $6427: $00
    rlca                                          ; $6428: $07
    nop                                           ; $6429: $00
    inc bc                                        ; $642A: $03
    nop                                           ; $642B: $00
    ld [bc], a                                    ; $642C: $02
    ld bc, $0304                                  ; $642D: $01 $04 $03
    inc b                                         ; $6430: $04
    inc bc                                        ; $6431: $03
    inc b                                         ; $6432: $04
    inc bc                                        ; $6433: $03
    inc b                                         ; $6434: $04
    inc bc                                        ; $6435: $03
    ld [bc], a                                    ; $6436: $02
    ld bc, $0001                                  ; $6437: $01 $01 $00
    nop                                           ; $643A: $00
    nop                                           ; $643B: $00
    inc bc                                        ; $643C: $03
    nop                                           ; $643D: $00
    rra                                           ; $643E: $1F
    ld [bc], a                                    ; $643F: $02
    ld a, a                                       ; $6440: $7F
    ld e, $FF                                     ; $6441: $1E $FF
    ccf                                           ; $6443: $3F
    ccf                                           ; $6444: $3F
    ret c                                         ; $6445: $D8

    jr c, jr_016_640F                             ; $6446: $38 $C7

    daa                                           ; $6448: $27
    ret c                                         ; $6449: $D8

    ccf                                           ; $644A: $3F
    rst RST_00                                    ; $644B: $C7
    rst RST_38                                    ; $644C: $FF
    inc e                                         ; $644D: $1C
    sbc h                                         ; $644E: $9C
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
    ld bc, $C300                                  ; $6460: $01 $00 $C3
    ld bc, $C337                                  ; $6463: $01 $37 $C3
    ld l, a                                       ; $6466: $6F
    or $3F                                        ; $6467: $F6 $3F
    rst RST_28                                    ; $6469: $EF
    rst RST_38                                    ; $646A: $FF
    rrca                                          ; $646B: $0F
    adc a                                         ; $646C: $8F
    ld [hl], a                                    ; $646D: $77
    rrca                                          ; $646E: $0F
    or $07                                        ; $646F: $F6 $07
    ld a, [$F807]                                 ; $6471: $FA $07 $F8
    rlca                                          ; $6474: $07
    ld a, [$E71F]                                 ; $6475: $FA $1F $E7
    ld l, a                                       ; $6478: $6F
    add a                                         ; $6479: $87
    sub a                                         ; $647A: $97
    dec bc                                        ; $647B: $0B
    db $E3                                        ; $647C: $E3
    dec e                                         ; $647D: $1D
    or c                                          ; $647E: $B1
    ld c, [hl]                                    ; $647F: $4E
    ld d, a                                       ; $6480: $57
    xor b                                         ; $6481: $A8
    ld hl, sp+$07                                 ; $6482: $F8 $07
    ldh a, [rIF]                                  ; $6484: $F0 $0F
    db $10                                        ; $6486: $10
    rst RST_28                                    ; $6487: $EF
    di                                            ; $6488: $F3
    inc c                                         ; $6489: $0C
    db $FC                                        ; $648A: $FC
    ldh [$FFF0], a                                ; $648B: $E0 $F0
    add b                                         ; $648D: $80
    add b                                         ; $648E: $80
    nop                                           ; $648F: $00
    nop                                           ; $6490: $00
    nop                                           ; $6491: $00
    nop                                           ; $6492: $00
    nop                                           ; $6493: $00
    nop                                           ; $6494: $00
    nop                                           ; $6495: $00
    nop                                           ; $6496: $00
    nop                                           ; $6497: $00
    nop                                           ; $6498: $00
    nop                                           ; $6499: $00
    nop                                           ; $649A: $00
    nop                                           ; $649B: $00
    nop                                           ; $649C: $00
    nop                                           ; $649D: $00
    nop                                           ; $649E: $00
    nop                                           ; $649F: $00
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
    nop                                           ; $64AE: $00
    nop                                           ; $64AF: $00
    cp h                                          ; $64B0: $BC
    nop                                           ; $64B1: $00
    ldh a, [c]                                    ; $64B2: $F2
    xor h                                         ; $64B3: $AC
    rst RST_38                                    ; $64B4: $FF
    ld [bc], a                                    ; $64B5: $02
    rst RST_38                                    ; $64B6: $FF
    ld l, h                                       ; $64B7: $6C
    db $FC                                        ; $64B8: $FC
    add e                                         ; $64B9: $83
    db $FC                                        ; $64BA: $FC
    db $EB                                        ; $64BB: $EB
    ld hl, sp+$07                                 ; $64BC: $F8 $07
    db $ED                                        ; $64BE: $ED
    sub d                                         ; $64BF: $92
    di                                            ; $64C0: $F3
    ld c, l                                       ; $64C1: $4D
    rst RST_38                                    ; $64C2: $FF
    nop                                           ; $64C3: $00
    rra                                           ; $64C4: $1F
    db $EC                                        ; $64C5: $EC
    sbc [hl]                                      ; $64C6: $9E
    pop af                                        ; $64C7: $F1
    db $FD                                        ; $64C8: $FD
    ld [hl], d                                    ; $64C9: $72
    cp $81                                        ; $64CA: $FE $81
    rst RST_28                                    ; $64CC: $EF

jr_016_64CD:
    call nc, $C5FE                                ; $64CD: $D4 $FE $C5
    rst RST_30                                    ; $64D0: $F7
    ld [$1AE7], a                                 ; $64D1: $EA $E7 $1A
    rst RST_20                                    ; $64D4: $E7
    ld e, d                                       ; $64D5: $5A
    db $E3                                        ; $64D6: $E3
    ld e, l                                       ; $64D7: $5D
    rst RST_20                                    ; $64D8: $E7
    ld e, c                                       ; $64D9: $59
    ld sp, hl                                     ; $64DA: $F9
    ld b, b                                       ; $64DB: $40
    pop bc                                        ; $64DC: $C1
    nop                                           ; $64DD: $00
    ld bc, $8000                                  ; $64DE: $01 $00 $80
    nop                                           ; $64E1: $00
    add b                                         ; $64E2: $80
    nop                                           ; $64E3: $00
    ldh a, [rP1]                                  ; $64E4: $F0 $00
    ldh a, [$FFC0]                                ; $64E6: $F0 $C0
    ret nc                                        ; $64E8: $D0

    and b                                         ; $64E9: $A0
    ret nc                                        ; $64EA: $D0

    jr nz, jr_016_64CD                            ; $64EB: $20 $E0

    nop                                           ; $64ED: $00
    ld hl, sp+$00                                 ; $64EE: $F8 $00
    ld a, b                                       ; $64F0: $78
    sub b                                         ; $64F1: $90
    db $FC                                        ; $64F2: $FC
    db $10                                        ; $64F3: $10
    sbc h                                         ; $64F4: $9C
    ld l, b                                       ; $64F5: $68
    ld e, $E8                                     ; $64F6: $1E $E8
    ld e, $E8                                     ; $64F8: $1E $E8
    ld c, $F4                                     ; $64FA: $0E $F4
    ld c, $F4                                     ; $64FC: $0E $F4
    adc [hl]                                      ; $64FE: $8E
    ld [hl], h                                    ; $64FF: $74
    add a                                         ; $6500: $87
    ld a, d                                       ; $6501: $7A
    rst RST_18                                    ; $6502: $DF
    and d                                         ; $6503: $A2
    rst RST_20                                    ; $6504: $E7
    sbc b                                         ; $6505: $98
    jp nz, Jump_016_413C                          ; $6506: $C2 $3C $41

    ld a, $7F                                     ; $6509: $3E $7F
    nop                                           ; $650B: $00
    nop                                           ; $650C: $00
    nop                                           ; $650D: $00
    nop                                           ; $650E: $00
    nop                                           ; $650F: $00
    nop                                           ; $6510: $00
    nop                                           ; $6511: $00
    nop                                           ; $6512: $00
    nop                                           ; $6513: $00
    nop                                           ; $6514: $00
    nop                                           ; $6515: $00
    nop                                           ; $6516: $00
    nop                                           ; $6517: $00
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
    nop                                           ; $6522: $00
    nop                                           ; $6523: $00
    nop                                           ; $6524: $00
    nop                                           ; $6525: $00
    nop                                           ; $6526: $00
    nop                                           ; $6527: $00
    jr jr_016_652A                                ; $6528: $18 $00

jr_016_652A:
    jr c, jr_016_653C                             ; $652A: $38 $10

    ld a, h                                       ; $652C: $7C
    ld [$68FC], sp                                ; $652D: $08 $FC $68
    ld a, [hl]                                    ; $6530: $7E
    inc b                                         ; $6531: $04
    rst RST_38                                    ; $6532: $FF
    ld b, [hl]                                    ; $6533: $46
    cp $05                                        ; $6534: $FE $05
    ld a, $0D                                     ; $6536: $3E $0D
    ld a, [hl]                                    ; $6538: $7E
    dec a                                         ; $6539: $3D
    ld a, h                                       ; $653A: $7C
    dec bc                                        ; $653B: $0B

jr_016_653C:
    inc c                                         ; $653C: $0C
    inc bc                                        ; $653D: $03
    rlca                                          ; $653E: $07
    nop                                           ; $653F: $00
    inc bc                                        ; $6540: $03
    nop                                           ; $6541: $00
    dec sp                                        ; $6542: $3B
    ld bc, $1827                                  ; $6543: $01 $27 $18
    pop af                                        ; $6546: $F1
    ld c, $3A                                     ; $6547: $0E $3A
    push bc                                       ; $6549: $C5
    ccf                                           ; $654A: $3F
    ret c                                         ; $654B: $D8

    ld a, $CD                                     ; $654C: $3E $CD
    rra                                           ; $654E: $1F
    ldh [rNR13], a                                ; $654F: $E0 $13
    db $ED                                        ; $6551: $ED
    inc de                                        ; $6552: $13
    db $ED                                        ; $6553: $ED
    rst RST_38                                    ; $6554: $FF
    ld c, $0F                                     ; $6555: $0E $0F
    nop                                           ; $6557: $00
    inc b                                         ; $6558: $04
    inc bc                                        ; $6559: $03
    rlca                                          ; $655A: $07
    inc bc                                        ; $655B: $03
    ccf                                           ; $655C: $3F
    inc bc                                        ; $655D: $03
    db $E3                                        ; $655E: $E3
    dec e                                         ; $655F: $1D
    ld a, b                                       ; $6560: $78
    nop                                           ; $6561: $00
    db $E4                                        ; $6562: $E4
    ld e, b                                       ; $6563: $58
    cp $44                                        ; $6564: $FE $44
    cp $F8                                        ; $6566: $FE $F8
    ld sp, hl                                     ; $6568: $F9
    add $F9                                       ; $6569: $C6 $F9
    ld [hl], $17                                  ; $656B: $36 $17
    add sp, -$41                                  ; $656D: $E8 $BF
    ld b, [hl]                                    ; $656F: $46
    sbc a                                         ; $6570: $9F
    ld l, [hl]                                    ; $6571: $6E
    cp $01                                        ; $6572: $FE $01
    add $79                                       ; $6574: $C6 $79
    xor $F9                                       ; $6576: $EE $F9
    rst RST_38                                    ; $6578: $FF
    halt                                          ; $6579: $76
    ld a, a                                       ; $657A: $7F
    adc a                                         ; $657B: $8F
    cp a                                          ; $657C: $BF
    sbc $BE                                       ; $657D: $DE $BE
    db $DD                                        ; $657F: $DD
    ldh a, [rP1]                                  ; $6580: $F0 $00
    ld c, $F0                                     ; $6582: $0E $F0
    ld bc, $00FE                                  ; $6584: $01 $FE $00
    rst RST_38                                    ; $6587: $FF
    rlca                                          ; $6588: $07
    ld hl, sp+$1F                                 ; $6589: $F8 $1F
    ldh [$FF7E], a                                ; $658B: $E0 $7E
    sbc l                                         ; $658D: $9D
    db $FC                                        ; $658E: $FC
    dec sp                                        ; $658F: $3B
    cp b                                          ; $6590: $B8
    rla                                           ; $6591: $17
    ld e, b                                       ; $6592: $58
    add a                                         ; $6593: $87
    ld c, b                                       ; $6594: $48
    add a                                         ; $6595: $87
    dec h                                         ; $6596: $25
    jp nz, $C122                                  ; $6597: $C2 $22 $C1

    ld de, $90E0                                  ; $659A: $11 $E0 $90
    ld h, b                                       ; $659D: $60
    add sp, -$70                                  ; $659E: $E8 $90
    nop                                           ; $65A0: $00
    nop                                           ; $65A1: $00
    nop                                           ; $65A2: $00
    nop                                           ; $65A3: $00
    add b                                         ; $65A4: $80
    nop                                           ; $65A5: $00
    add b                                         ; $65A6: $80
    nop                                           ; $65A7: $00
    add b                                         ; $65A8: $80
    nop                                           ; $65A9: $00
    ret nz                                        ; $65AA: $C0

    nop                                           ; $65AB: $00
    jr nc, @-$3E                                  ; $65AC: $30 $C0

    inc c                                         ; $65AE: $0C
    ldh a, [$FF3F]                                ; $65AF: $F0 $3F
    call z, $BE7F                                 ; $65B1: $CC $7F $BE
    rst RST_38                                    ; $65B4: $FF
    ld [hl], h                                    ; $65B5: $74
    rst RST_38                                    ; $65B6: $FF
    ld c, d                                       ; $65B7: $4A
    rst RST_38                                    ; $65B8: $FF
    ld a, [hl+]                                   ; $65B9: $2A
    cp $30                                        ; $65BA: $FE $30
    ldh a, [rLCDC]                                ; $65BC: $F0 $40
    ld [hl], b                                    ; $65BE: $70
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
    inc bc                                        ; $65CA: $03
    nop                                           ; $65CB: $00
    dec c                                         ; $65CC: $0D
    ld [bc], a                                    ; $65CD: $02
    dec d                                         ; $65CE: $15
    ld a, [bc]                                    ; $65CF: $0A
    ld l, l                                       ; $65D0: $6D
    ld [de], a                                    ; $65D1: $12
    sbc l                                         ; $65D2: $9D
    ld l, [hl]                                    ; $65D3: $6E
    ld a, l                                       ; $65D4: $7D
    sbc [hl]                                      ; $65D5: $9E

jr_016_65D6:
    db $FD                                        ; $65D6: $FD
    ld a, [hl]                                    ; $65D7: $7E
    ld a, [$F47C]                                 ; $65D8: $FA $7C $F4
    ld a, b                                       ; $65DB: $78
    adc b                                         ; $65DC: $88
    ld [hl], b                                    ; $65DD: $70
    ldh a, [rP1]                                  ; $65DE: $F0 $00
    inc bc                                        ; $65E0: $03
    nop                                           ; $65E1: $00
    ld [bc], a                                    ; $65E2: $02
    ld bc, $0102                                  ; $65E3: $01 $02 $01
    inc bc                                        ; $65E6: $03
    nop                                           ; $65E7: $00
    ld [bc], a                                    ; $65E8: $02
    ld bc, $0001                                  ; $65E9: $01 $01 $00
    ld bc, $0000                                  ; $65EC: $01 $00 $00
    nop                                           ; $65EF: $00
    nop                                           ; $65F0: $00
    nop                                           ; $65F1: $00
    nop                                           ; $65F2: $00
    nop                                           ; $65F3: $00
    ld bc, $0200                                  ; $65F4: $01 $00 $02
    ld bc, $0304                                  ; $65F7: $01 $04 $03
    rlca                                          ; $65FA: $07
    nop                                           ; $65FB: $00
    nop                                           ; $65FC: $00
    nop                                           ; $65FD: $00
    nop                                           ; $65FE: $00
    nop                                           ; $65FF: $00
    db $E3                                        ; $6600: $E3
    ld e, h                                       ; $6601: $5C
    ei                                            ; $6602: $FB
    ld h, l                                       ; $6603: $65
    rst RST_38                                    ; $6604: $FF
    add hl, sp                                    ; $6605: $39
    ld a, a                                       ; $6606: $7F
    cp l                                          ; $6607: $BD
    ld a, a                                       ; $6608: $7F
    cp h                                          ; $6609: $BC
    cp [hl]                                       ; $660A: $BE
    ld e, h                                       ; $660B: $5C
    cp a                                          ; $660C: $BF
    ld e, [hl]                                    ; $660D: $5E
    cp a                                          ; $660E: $BF
    ld e, [hl]                                    ; $660F: $5E
    cp a                                          ; $6610: $BF
    ld e, [hl]                                    ; $6611: $5E
    ld a, a                                       ; $6612: $7F
    sbc b                                         ; $6613: $98
    jr c, jr_016_65D6                             ; $6614: $38 $C0

    ldh [rP1], a                                  ; $6616: $E0 $00
    nop                                           ; $6618: $00
    nop                                           ; $6619: $00
    nop                                           ; $661A: $00
    nop                                           ; $661B: $00
    nop                                           ; $661C: $00
    nop                                           ; $661D: $00
    nop                                           ; $661E: $00
    nop                                           ; $661F: $00
    db $FC                                        ; $6620: $FC
    cp e                                          ; $6621: $BB
    ld hl, sp+$07                                 ; $6622: $F8 $07
    db $FC                                        ; $6624: $FC
    add e                                         ; $6625: $83
    push bc                                       ; $6626: $C5
    cp d                                          ; $6627: $BA
    jp $CDBC                                      ; $6628: $C3 $BC $CD


    ld [hl-], a                                   ; $662B: $32
    ld a, [hl-]                                   ; $662C: $3A
    dec b                                         ; $662D: $05
    dec c                                         ; $662E: $0D
    ld [bc], a                                    ; $662F: $02
    rlca                                          ; $6630: $07
    nop                                           ; $6631: $00
    rlca                                          ; $6632: $07
    ld [bc], a                                    ; $6633: $02
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
    ld hl, sp+$60                                 ; $6640: $F8 $60
    cp $18                                        ; $6642: $FE $18
    sbc a                                         ; $6644: $9F
    ld h, [hl]                                    ; $6645: $66
    rlca                                          ; $6646: $07
    ld sp, hl                                     ; $6647: $F9
    add c                                         ; $6648: $81
    ld a, [hl]                                    ; $6649: $7E
    ldh [$FF9F], a                                ; $664A: $E0 $9F
    ld sp, hl                                     ; $664C: $F9
    ld h, [hl]                                    ; $664D: $66
    ld a, a                                       ; $664E: $7F
    jr jr_016_6670                                ; $664F: $18 $1F

    ld b, $06                                     ; $6651: $06 $06
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
    add b                                         ; $6660: $80
    nop                                           ; $6661: $00
    add b                                         ; $6662: $80
    nop                                           ; $6663: $00
    ret nz                                        ; $6664: $C0

    nop                                           ; $6665: $00
    and b                                         ; $6666: $A0
    ld b, b                                       ; $6667: $40
    db $10                                        ; $6668: $10
    ldh [$FF08], a                                ; $6669: $E0 $08
    ldh a, [rDIV]                                 ; $666B: $F0 $04
    ld hl, sp-$04                                 ; $666D: $F8 $FC
    nop                                           ; $666F: $00

jr_016_6670:
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
    ldh a, [rP1]                                  ; $6680: $F0 $00
    inc c                                         ; $6682: $0C
    ldh a, [rSC]                                  ; $6683: $F0 $02
    db $FC                                        ; $6685: $FC
    ld hl, $C0FE                                  ; $6686: $21 $FE $C0
    rst RST_38                                    ; $6689: $FF
    ret c                                         ; $668A: $D8

    rst RST_38                                    ; $668B: $FF
    cp e                                          ; $668C: $BB
    cp $FE                                        ; $668D: $FE $FE
    db $FC                                        ; $668F: $FC
    db $FD                                        ; $6690: $FD

jr_016_6691:
    ld a, [$F9FF]                                 ; $6691: $FA $FF $F9
    rst RST_38                                    ; $6694: $FF
    di                                            ; $6695: $F3
    rst RST_18                                    ; $6696: $DF
    pop af                                        ; $6697: $F1
    reti                                          ; $6698: $D9


    or $B0                                        ; $6699: $F6 $B0
    rst RST_28                                    ; $669B: $EF
    or b                                          ; $669C: $B0
    rst RST_28                                    ; $669D: $EF
    or b                                          ; $669E: $B0
    rst RST_28                                    ; $669F: $EF
    ld sp, $32EE                                  ; $66A0: $31 $EE $32
    db $ED                                        ; $66A3: $ED
    ccf                                           ; $66A4: $3F
    ldh [$FF38], a                                ; $66A5: $E0 $38
    rst RST_20                                    ; $66A7: $E7
    jr c, jr_016_6691                             ; $66A8: $38 $E7

    jr c, @-$17                                   ; $66AA: $38 $E7

    inc [hl]                                      ; $66AC: $34
    db $E3                                        ; $66AD: $E3
    inc [hl]                                      ; $66AE: $34
    db $E3                                        ; $66AF: $E3
    ld [hl-], a                                   ; $66B0: $32
    pop hl                                        ; $66B1: $E1
    ld [hl-], a                                   ; $66B2: $32
    pop hl                                        ; $66B3: $E1
    ld sp, $30E0                                  ; $66B4: $31 $E0 $30
    ldh [$FF30], a                                ; $66B7: $E0 $30
    ldh [$FF30], a                                ; $66B9: $E0 $30
    ldh [$FF30], a                                ; $66BB: $E0 $30
    ldh [$FF30], a                                ; $66BD: $E0 $30
    ldh [rTAC], a                                 ; $66BF: $E0 $07
    nop                                           ; $66C1: $00
    inc c                                         ; $66C2: $0C
    rlca                                          ; $66C3: $07
    jr jr_016_66D5                                ; $66C4: $18 $0F

    ld [hl], $1F                                  ; $66C6: $36 $1F
    inc a                                         ; $66C8: $3C
    rra                                           ; $66C9: $1F
    ld a, l                                       ; $66CA: $7D
    ccf                                           ; $66CB: $3F
    ld a, e                                       ; $66CC: $7B
    ccf                                           ; $66CD: $3F
    rst RST_38                                    ; $66CE: $FF
    ld a, a                                       ; $66CF: $7F
    rst RST_38                                    ; $66D0: $FF
    ld a, a                                       ; $66D1: $7F
    rst RST_38                                    ; $66D2: $FF
    rst RST_38                                    ; $66D3: $FF
    rst RST_38                                    ; $66D4: $FF

jr_016_66D5:
    rst RST_38                                    ; $66D5: $FF
    rst RST_38                                    ; $66D6: $FF
    rst RST_38                                    ; $66D7: $FF
    db $FD                                        ; $66D8: $FD
    rst RST_38                                    ; $66D9: $FF
    ld a, l                                       ; $66DA: $7D
    rst RST_38                                    ; $66DB: $FF
    ld a, c                                       ; $66DC: $79
    rst RST_38                                    ; $66DD: $FF
    ld a, c                                       ; $66DE: $79
    rst RST_38                                    ; $66DF: $FF
    nop                                           ; $66E0: $00
    nop                                           ; $66E1: $00
    ld bc, $0100                                  ; $66E2: $01 $00 $01
    nop                                           ; $66E5: $00
    inc bc                                        ; $66E6: $03
    ld bc, $0103                                  ; $66E7: $01 $03 $01
    rlca                                          ; $66EA: $07
    inc bc                                        ; $66EB: $03
    ld b, $03                                     ; $66EC: $06 $03
    ld c, $07                                     ; $66EE: $0E $07
    inc c                                         ; $66F0: $0C
    rlca                                          ; $66F1: $07
    inc c                                         ; $66F2: $0C
    rlca                                          ; $66F3: $07
    jr jr_016_6705                                ; $66F4: $18 $0F

    jr jr_016_6707                                ; $66F6: $18 $0F

    jr jr_016_6709                                ; $66F8: $18 $0F

    jr nc, jr_016_671B                            ; $66FA: $30 $1F

    ld [hl-], a                                   ; $66FC: $32
    rra                                           ; $66FD: $1F
    ld [hl-], a                                   ; $66FE: $32
    rra                                           ; $66FF: $1F
    ld [hl], c                                    ; $6700: $71
    rst RST_38                                    ; $6701: $FF
    ld [hl], c                                    ; $6702: $71
    rst RST_38                                    ; $6703: $FF
    ld h, b                                       ; $6704: $60

jr_016_6705:
    rst RST_38                                    ; $6705: $FF
    ld h, b                                       ; $6706: $60

jr_016_6707:
    rst RST_38                                    ; $6707: $FF
    ld h, b                                       ; $6708: $60

jr_016_6709:
    rst RST_38                                    ; $6709: $FF
    ld b, b                                       ; $670A: $40
    rst RST_38                                    ; $670B: $FF
    ld b, b                                       ; $670C: $40
    rst RST_38                                    ; $670D: $FF
    ld b, b                                       ; $670E: $40
    rst RST_38                                    ; $670F: $FF
    nop                                           ; $6710: $00
    rst RST_38                                    ; $6711: $FF
    nop                                           ; $6712: $00
    rst RST_38                                    ; $6713: $FF
    nop                                           ; $6714: $00
    rst RST_38                                    ; $6715: $FF
    nop                                           ; $6716: $00
    rst RST_38                                    ; $6717: $FF
    ld [$08FF], sp                                ; $6718: $08 $FF $08

jr_016_671B:
    rst RST_38                                    ; $671B: $FF
    inc e                                         ; $671C: $1C
    rst RST_30                                    ; $671D: $F7
    inc e                                         ; $671E: $1C
    rst RST_30                                    ; $671F: $F7
    sbc h                                         ; $6720: $9C
    rst RST_30                                    ; $6721: $F7
    cp h                                          ; $6722: $BC
    rst RST_20                                    ; $6723: $E7
    cp h                                          ; $6724: $BC
    rst RST_20                                    ; $6725: $E7
    cp h                                          ; $6726: $BC
    rst RST_20                                    ; $6727: $E7
    db $FC                                        ; $6728: $FC
    ld h, a                                       ; $6729: $67
    or $63                                        ; $672A: $F6 $63
    or $63                                        ; $672C: $F6 $63
    rst RST_30                                    ; $672E: $F7
    ld h, e                                       ; $672F: $63
    ld [hl], a                                    ; $6730: $77
    inc hl                                        ; $6731: $23
    ld [hl], e                                    ; $6732: $73
    ld hl, $2173                                  ; $6733: $21 $73 $21
    inc sp                                        ; $6736: $33
    nop                                           ; $6737: $00
    inc sp                                        ; $6738: $33
    nop                                           ; $6739: $00
    ld sp, $1100                                  ; $673A: $31 $00 $11
    nop                                           ; $673D: $00
    stop                                          ; $673E: $10 $00
    scf                                           ; $6740: $37
    dec e                                         ; $6741: $1D

jr_016_6742:
    ld h, a                                       ; $6742: $67
    dec a                                         ; $6743: $3D

jr_016_6744:
    ld l, a                                       ; $6744: $6F
    add hl, sp                                    ; $6745: $39
    ld l, a                                       ; $6746: $6F
    add hl, sp                                    ; $6747: $39
    ld a, e                                       ; $6748: $7B
    ld sp, $317B                                  ; $6749: $31 $7B $31
    ld [hl], e                                    ; $674C: $73
    ld hl, $2173                                  ; $674D: $21 $73 $21
    ld h, c                                       ; $6750: $61
    nop                                           ; $6751: $00
    ld h, c                                       ; $6752: $61
    nop                                           ; $6753: $00
    ld b, c                                       ; $6754: $41
    nop                                           ; $6755: $00
    ld bc, $0000                                  ; $6756: $01 $00 $00
    nop                                           ; $6759: $00
    nop                                           ; $675A: $00
    nop                                           ; $675B: $00
    nop                                           ; $675C: $00
    nop                                           ; $675D: $00
    nop                                           ; $675E: $00
    nop                                           ; $675F: $00
    jr nc, jr_016_6742                            ; $6760: $30 $E0

    jr nc, jr_016_6744                            ; $6762: $30 $E0

    ld sp, $31E0                                  ; $6764: $31 $E0 $31
    ldh [$FF33], a                                ; $6767: $E0 $33
    pop hl                                        ; $6769: $E1

jr_016_676A:
    or e                                          ; $676A: $B3
    pop hl                                        ; $676B: $E1
    or e                                          ; $676C: $B3
    ldh [$FFF0], a                                ; $676D: $E0 $F0
    ld h, b                                       ; $676F: $60
    ldh a, [$FF60]                                ; $6770: $F0 $60
    ldh a, [$FF60]                                ; $6772: $F0 $60
    ldh a, [$FF60]                                ; $6774: $F0 $60
    ld [hl], b                                    ; $6776: $70
    jr nz, jr_016_67E9                            ; $6777: $20 $70

    jr nz, jr_016_67AB                            ; $6779: $20 $30

    nop                                           ; $677B: $00
    jr nc, jr_016_677E                            ; $677C: $30 $00

jr_016_677E:
    stop                                          ; $677E: $10 $00
    nop                                           ; $6780: $00
    nop                                           ; $6781: $00
    nop                                           ; $6782: $00
    nop                                           ; $6783: $00
    nop                                           ; $6784: $00
    nop                                           ; $6785: $00
    nop                                           ; $6786: $00
    nop                                           ; $6787: $00
    add b                                         ; $6788: $80
    nop                                           ; $6789: $00
    add b                                         ; $678A: $80
    nop                                           ; $678B: $00
    nop                                           ; $678C: $00
    nop                                           ; $678D: $00
    nop                                           ; $678E: $00
    nop                                           ; $678F: $00
    ret nz                                        ; $6790: $C0

    nop                                           ; $6791: $00
    ldh a, [$FFC0]                                ; $6792: $F0 $C0
    ld hl, sp-$10                                 ; $6794: $F8 $F0
    db $FC                                        ; $6796: $FC
    ld hl, sp-$04                                 ; $6797: $F8 $FC
    ld a, b                                       ; $6799: $78
    ld a, d                                       ; $679A: $7A
    and h                                         ; $679B: $A4
    ld a, [hl]                                    ; $679C: $7E
    or b                                          ; $679D: $B0
    ldh a, [rP1]                                  ; $679E: $F0 $00
    ld b, b                                       ; $67A0: $40
    add b                                         ; $67A1: $80
    add b                                         ; $67A2: $80
    nop                                           ; $67A3: $00
    add b                                         ; $67A4: $80
    nop                                           ; $67A5: $00
    ld b, b                                       ; $67A6: $40
    add b                                         ; $67A7: $80
    jr nz, jr_016_676A                            ; $67A8: $20 $C0

    db $10                                        ; $67AA: $10

jr_016_67AB:
    ldh [$FF08], a                                ; $67AB: $E0 $08
    ldh a, [$FF0B]                                ; $67AD: $F0 $0B
    ldh a, [rNR34]                                ; $67AF: $F0 $1E
    jp hl                                         ; $67B1: $E9


    ccf                                           ; $67B2: $3F
    ret nc                                        ; $67B3: $D0

    di                                            ; $67B4: $F3
    dec l                                         ; $67B5: $2D
    rst RST_30                                    ; $67B6: $F7

jr_016_67B7:
    ld l, e                                       ; $67B7: $6B
    rst RST_20                                    ; $67B8: $E7
    ld e, e                                       ; $67B9: $5B
    rst RST_28                                    ; $67BA: $EF
    ld d, a                                       ; $67BB: $57
    rst RST_38                                    ; $67BC: $FF
    jr nz, jr_016_67B7                            ; $67BD: $20 $F8

    daa                                           ; $67BF: $27
    ld [hl], b                                    ; $67C0: $70
    nop                                           ; $67C1: $00
    adc b                                         ; $67C2: $88
    ld [hl], b                                    ; $67C3: $70
    inc b                                         ; $67C4: $04
    ld hl, sp+$06                                 ; $67C5: $F8 $06
    ld hl, sp-$39                                 ; $67C7: $F8 $C7
    ld a, [hl-]                                   ; $67C9: $3A
    or $C8                                        ; $67CA: $F6 $C8
    db $FC                                        ; $67CC: $FC
    ldh a, [$FFFE]                                ; $67CD: $F0 $FE
    ldh a, [$FFF5]                                ; $67CF: $F0 $F5
    ld [$6BF4], a                                 ; $67D1: $EA $F4 $6B
    ld l, b                                       ; $67D4: $68
    sub a                                         ; $67D5: $97
    ld l, [hl]                                    ; $67D6: $6E
    pop de                                        ; $67D7: $D1
    ld a, a                                       ; $67D8: $7F
    adc $FF                                       ; $67D9: $CE $FF
    add c                                         ; $67DB: $81
    pop bc                                        ; $67DC: $C1
    cp [hl]                                       ; $67DD: $BE
    cp $01                                        ; $67DE: $FE $01
    ldh a, [rVBK]                                 ; $67E0: $F0 $4F
    ldh [$FF5F], a                                ; $67E2: $E0 $5F
    ldh [$FF9F], a                                ; $67E4: $E0 $9F
    ret nz                                        ; $67E6: $C0

    cp a                                          ; $67E7: $BF
    ret nz                                        ; $67E8: $C0

jr_016_67E9:
    ccf                                           ; $67E9: $3F
    ld sp, hl                                     ; $67EA: $F9
    ccf                                           ; $67EB: $3F
    ld a, a                                       ; $67EC: $7F
    rlca                                          ; $67ED: $07
    add a                                         ; $67EE: $87
    ld a, c                                       ; $67EF: $79
    add c                                         ; $67F0: $81
    ld a, [hl]                                    ; $67F1: $7E
    add c                                         ; $67F2: $81
    ld a, [hl]                                    ; $67F3: $7E
    add e                                         ; $67F4: $83
    ld a, l                                       ; $67F5: $7D
    add e                                         ; $67F6: $83
    ld a, h                                       ; $67F7: $7C
    add [hl]                                      ; $67F8: $86
    ld a, c                                       ; $67F9: $79
    adc d                                         ; $67FA: $8A
    ld [hl], l                                    ; $67FB: $75
    sub e                                         ; $67FC: $93
    ld l, h                                       ; $67FD: $6C
    ld a, a                                       ; $67FE: $7F
    ld bc, $217F                                  ; $67FF: $01 $7F $21
    ld a, a                                       ; $6802: $7F
    jr nz, @+$81                                  ; $6803: $20 $7F

    db $10                                        ; $6805: $10

jr_016_6806:
    ld a, a                                       ; $6806: $7F
    db $10                                        ; $6807: $10
    rst RST_38                                    ; $6808: $FF
    ld d, b                                       ; $6809: $50
    rst RST_38                                    ; $680A: $FF
    ld c, b                                       ; $680B: $48
    rst RST_38                                    ; $680C: $FF
    ld c, b                                       ; $680D: $48
    cp $49                                        ; $680E: $FE $49
    db $FC                                        ; $6810: $FC
    ld b, e                                       ; $6811: $43
    db $FC                                        ; $6812: $FC
    ld b, e                                       ; $6813: $43
    add $39                                       ; $6814: $C6 $39
    ld b, [hl]                                    ; $6816: $46
    add hl, sp                                    ; $6817: $39
    ld b, l                                       ; $6818: $45
    jr c, jr_016_685F                             ; $6819: $38 $44

    jr c, jr_016_6865                             ; $681B: $38 $48

    jr nc, jr_016_688F                            ; $681D: $30 $70

    nop                                           ; $681F: $00
    pop bc                                        ; $6820: $C1
    ld a, $C0                                     ; $6821: $3E $C0
    ccf                                           ; $6823: $3F
    ldh [$FF9F], a                                ; $6824: $E0 $9F
    sbc a                                         ; $6826: $9F
    nop                                           ; $6827: $00

jr_016_6828:
    adc a                                         ; $6828: $8F
    rlca                                          ; $6829: $07

jr_016_682A:
    add a                                         ; $682A: $87
    nop                                           ; $682B: $00

jr_016_682C:
    add b                                         ; $682C: $80
    nop                                           ; $682D: $00

jr_016_682E:
    add b                                         ; $682E: $80
    nop                                           ; $682F: $00
    add b                                         ; $6830: $80
    nop                                           ; $6831: $00
    add b                                         ; $6832: $80
    nop                                           ; $6833: $00
    add b                                         ; $6834: $80
    nop                                           ; $6835: $00
    ret nz                                        ; $6836: $C0

    add b                                         ; $6837: $80
    ret nz                                        ; $6838: $C0

    add b                                         ; $6839: $80
    ret nz                                        ; $683A: $C0

    add b                                         ; $683B: $80
    ldh [rLCDC], a                                ; $683C: $E0 $40
    ldh [rLCDC], a                                ; $683E: $E0 $40
    nop                                           ; $6840: $00
    nop                                           ; $6841: $00
    ret nz                                        ; $6842: $C0

    nop                                           ; $6843: $00
    jr nz, jr_016_6806                            ; $6844: $20 $C0

    db $10                                        ; $6846: $10
    ldh [$FF88], a                                ; $6847: $E0 $88
    ld [hl], b                                    ; $6849: $70
    ldh a, [rP1]                                  ; $684A: $F0 $00
    add b                                         ; $684C: $80
    nop                                           ; $684D: $00
    ret nz                                        ; $684E: $C0

    nop                                           ; $684F: $00
    ldh [rLCDC], a                                ; $6850: $E0 $40
    ldh [rLCDC], a                                ; $6852: $E0 $40
    ldh [rLCDC], a                                ; $6854: $E0 $40
    ldh [$FFC0], a                                ; $6856: $E0 $C0
    ret nz                                        ; $6858: $C0

    add b                                         ; $6859: $80
    add b                                         ; $685A: $80
    nop                                           ; $685B: $00
    nop                                           ; $685C: $00
    nop                                           ; $685D: $00
    nop                                           ; $685E: $00

jr_016_685F:
    nop                                           ; $685F: $00
    ldh [rLCDC], a                                ; $6860: $E0 $40
    ld b, b                                       ; $6862: $40
    add b                                         ; $6863: $80
    ld b, b                                       ; $6864: $40

jr_016_6865:
    add b                                         ; $6865: $80
    jr nz, jr_016_6828                            ; $6866: $20 $C0

    jr nz, jr_016_682A                            ; $6868: $20 $C0

    jr nz, jr_016_682C                            ; $686A: $20 $C0

    jr nz, jr_016_682E                            ; $686C: $20 $C0

    ret nz                                        ; $686E: $C0

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
    ldh a, [rP1]                                  ; $6880: $F0 $00
    inc c                                         ; $6882: $0C
    ldh a, [$FFF2]                                ; $6883: $F0 $F2
    ld a, h                                       ; $6885: $7C
    ld a, l                                       ; $6886: $7D
    ld a, $FE                                     ; $6887: $3E $FE
    ld a, a                                       ; $6889: $7F
    ld a, [hl]                                    ; $688A: $7E
    sbc a                                         ; $688B: $9F
    sbc a                                         ; $688C: $9F
    ld h, [hl]                                    ; $688D: $66
    ld h, [hl]                                    ; $688E: $66

jr_016_688F:
    jr jr_016_68AA                                ; $688F: $18 $19

    ld b, $07                                     ; $6891: $06 $07
    ld bc, $0307                                  ; $6893: $01 $07 $03
    rrca                                          ; $6896: $0F
    ld bc, $0E11                                  ; $6897: $01 $11 $0E
    jr nz, jr_016_68BB                            ; $689A: $20 $1F

    jr nz, jr_016_68BD                            ; $689C: $20 $1F

    ld b, b                                       ; $689E: $40
    ccf                                           ; $689F: $3F
    ld b, c                                       ; $68A0: $41
    ld a, $42                                     ; $68A1: $3E $42
    dec a                                         ; $68A3: $3D
    ld c, a                                       ; $68A4: $4F
    jr nc, jr_016_68CF                            ; $68A5: $30 $28

    rla                                           ; $68A7: $17
    jr jr_016_68B1                                ; $68A8: $18 $07

jr_016_68AA:
    ld [$0407], sp                                ; $68AA: $08 $07 $04
    inc bc                                        ; $68AD: $03
    inc b                                         ; $68AE: $04
    inc bc                                        ; $68AF: $03
    ld [bc], a                                    ; $68B0: $02

jr_016_68B1:
    ld bc, $0102                                  ; $68B1: $01 $02 $01
    ld bc, $0000                                  ; $68B4: $01 $00 $00
    nop                                           ; $68B7: $00
    nop                                           ; $68B8: $00
    nop                                           ; $68B9: $00
    nop                                           ; $68BA: $00

jr_016_68BB:
    nop                                           ; $68BB: $00
    nop                                           ; $68BC: $00

jr_016_68BD:
    nop                                           ; $68BD: $00
    nop                                           ; $68BE: $00
    nop                                           ; $68BF: $00
    ld bc, $0100                                  ; $68C0: $01 $00 $01
    nop                                           ; $68C3: $00
    inc bc                                        ; $68C4: $03
    ld bc, $0103                                  ; $68C5: $01 $03 $01
    inc bc                                        ; $68C8: $03
    nop                                           ; $68C9: $00
    nop                                           ; $68CA: $00
    nop                                           ; $68CB: $00
    nop                                           ; $68CC: $00
    nop                                           ; $68CD: $00
    nop                                           ; $68CE: $00

jr_016_68CF:
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
    nop                                           ; $68E9: $00
    nop                                           ; $68EA: $00
    nop                                           ; $68EB: $00
    nop                                           ; $68EC: $00
    nop                                           ; $68ED: $00
    nop                                           ; $68EE: $00
    nop                                           ; $68EF: $00
    rlca                                          ; $68F0: $07
    nop                                           ; $68F1: $00
    inc bc                                        ; $68F2: $03
    nop                                           ; $68F3: $00
    nop                                           ; $68F4: $00
    nop                                           ; $68F5: $00
    nop                                           ; $68F6: $00
    nop                                           ; $68F7: $00
    ld bc, $0200                                  ; $68F8: $01 $00 $02
    ld bc, $0003                                  ; $68FB: $01 $03 $00
    nop                                           ; $68FE: $00
    nop                                           ; $68FF: $00
    sub c                                         ; $6900: $91
    ld l, [hl]                                    ; $6901: $6E
    sub b                                         ; $6902: $90
    ld l, a                                       ; $6903: $6F
    add b                                         ; $6904: $80
    ld a, a                                       ; $6905: $7F
    call nz, $C67F                                ; $6906: $C4 $7F $C6
    ld a, a                                       ; $6909: $7F
    ld h, a                                       ; $690A: $67
    ccf                                           ; $690B: $3F
    ld h, e                                       ; $690C: $63
    ccf                                           ; $690D: $3F
    ld [hl], e                                    ; $690E: $73
    ccf                                           ; $690F: $3F
    dec a                                         ; $6910: $3D
    rra                                           ; $6911: $1F
    ccf                                           ; $6912: $3F
    rra                                           ; $6913: $1F
    rra                                           ; $6914: $1F
    rrca                                          ; $6915: $0F
    rra                                           ; $6916: $1F
    rrca                                          ; $6917: $0F
    rrca                                          ; $6918: $0F
    rlca                                          ; $6919: $07
    rlca                                          ; $691A: $07
    inc bc                                        ; $691B: $03
    inc bc                                        ; $691C: $03
    ld bc, $0001                                  ; $691D: $01 $01 $00
    or a                                          ; $6920: $B7
    cp $FB                                        ; $6921: $FE $FB
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
    ei                                            ; $6930: $FB
    rst RST_38                                    ; $6931: $FF
    db $FC                                        ; $6932: $FC
    rst RST_38                                    ; $6933: $FF
    cp $FF                                        ; $6934: $FE $FF
    rst RST_38                                    ; $6936: $FF
    ld a, a                                       ; $6937: $7F
    ld a, a                                       ; $6938: $7F
    ccf                                           ; $6939: $3F
    inc a                                         ; $693A: $3C
    rrca                                          ; $693B: $0F
    rrca                                          ; $693C: $0F
    inc bc                                        ; $693D: $03
    inc bc                                        ; $693E: $03
    nop                                           ; $693F: $00
    rrca                                          ; $6940: $0F
    rlca                                          ; $6941: $07
    rrca                                          ; $6942: $0F
    inc b                                         ; $6943: $04
    rlca                                          ; $6944: $07
    ld [bc], a                                    ; $6945: $02
    ccf                                           ; $6946: $3F
    nop                                           ; $6947: $00
    ld b, c                                       ; $6948: $41
    ld a, $80                                     ; $6949: $3E $80
    ld a, a                                       ; $694B: $7F
    db $FC                                        ; $694C: $FC
    inc bc                                        ; $694D: $03
    cp $71                                        ; $694E: $FE $71
    cp $09                                        ; $6950: $FE $09
    rrca                                          ; $6952: $0F
    ldh a, [rTAC]                                 ; $6953: $F0 $07
    ld sp, hl                                     ; $6955: $F9
    add a                                         ; $6956: $87
    ld a, e                                       ; $6957: $7B
    rst RST_28                                    ; $6958: $EF
    sub e                                         ; $6959: $93
    rst RST_38                                    ; $695A: $FF
    ldh [$FF9F], a                                ; $695B: $E0 $9F
    ld hl, sp-$39                                 ; $695D: $F8 $C7
    rst RST_38                                    ; $695F: $FF
    ret z                                         ; $6960: $C8

    or b                                          ; $6961: $B0
    xor b                                         ; $6962: $A8
    ld d, b                                       ; $6963: $50
    call nz, Call_000_3F38                        ; $6964: $C4 $38 $3F
    ret nz                                        ; $6967: $C0

    ld a, [hl]                                    ; $6968: $7E
    sbc l                                         ; $6969: $9D
    cp $5D                                        ; $696A: $FE $5D
    rst RST_38                                    ; $696C: $FF
    ld l, [hl]                                    ; $696D: $6E
    rst RST_38                                    ; $696E: $FF
    ld l, [hl]                                    ; $696F: $6E
    rst RST_38                                    ; $6970: $FF
    ld l, [hl]                                    ; $6971: $6E
    rst RST_38                                    ; $6972: $FF
    ld h, b                                       ; $6973: $60
    ldh a, [$FFAF]                                ; $6974: $F0 $AF
    ldh [$FF9F], a                                ; $6976: $E0 $9F
    ldh a, [$FFDF]                                ; $6978: $F0 $DF
    ldh a, [$FFDF]                                ; $697A: $F0 $DF
    rst RST_38                                    ; $697C: $FF
    nop                                           ; $697D: $00
    rst RST_38                                    ; $697E: $FF
    rst RST_38                                    ; $697F: $FF
    ld c, h                                       ; $6980: $4C
    add e                                         ; $6981: $83
    daa                                           ; $6982: $27
    ret nz                                        ; $6983: $C0

    db $10                                        ; $6984: $10
    ldh [$FFF0], a                                ; $6985: $E0 $F0
    nop                                           ; $6987: $00
    ld hl, sp-$20                                 ; $6988: $F8 $E0
    db $E4                                        ; $698A: $E4
    jr jr_016_6991                                ; $698B: $18 $04

    ld hl, sp+$04                                 ; $698D: $F8 $04
    ld hl, sp-$04                                 ; $698F: $F8 $FC

jr_016_6991:
    nop                                           ; $6991: $00
    db $FC                                        ; $6992: $FC
    ldh a, [$FFF4]                                ; $6993: $F0 $F4
    adc b                                         ; $6995: $88

jr_016_6996:
    call nz, Call_000_3C38                        ; $6996: $C4 $38 $3C
    nop                                           ; $6999: $00
    ret nz                                        ; $699A: $C0

    nop                                           ; $699B: $00
    ldh [$FFC0], a                                ; $699C: $E0 $C0
    ldh [rP1], a                                  ; $699E: $E0 $00
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
    inc c                                         ; $69B4: $0C
    nop                                           ; $69B5: $00
    ld a, [bc]                                    ; $69B6: $0A
    inc b                                         ; $69B7: $04

jr_016_69B8:
    jp z, $AA04                                   ; $69B8: $CA $04 $AA

    ld b, h                                       ; $69BB: $44
    xor c                                         ; $69BC: $A9
    ld b, [hl]                                    ; $69BD: $46
    xor c                                         ; $69BE: $A9
    ld b, [hl]                                    ; $69BF: $46
    nop                                           ; $69C0: $00
    nop                                           ; $69C1: $00
    nop                                           ; $69C2: $00
    nop                                           ; $69C3: $00
    nop                                           ; $69C4: $00
    nop                                           ; $69C5: $00
    nop                                           ; $69C6: $00
    nop                                           ; $69C7: $00
    nop                                           ; $69C8: $00
    nop                                           ; $69C9: $00
    nop                                           ; $69CA: $00
    nop                                           ; $69CB: $00
    nop                                           ; $69CC: $00
    nop                                           ; $69CD: $00
    ld h, b                                       ; $69CE: $60
    nop                                           ; $69CF: $00
    and b                                         ; $69D0: $A0
    ld b, b                                       ; $69D1: $40
    and b                                         ; $69D2: $A0
    ld b, b                                       ; $69D3: $40
    jr nz, jr_016_6996                            ; $69D4: $20 $C0

    jr nc, jr_016_69B8                            ; $69D6: $30 $E0

    db $10                                        ; $69D8: $10
    ldh [rNR23], a                                ; $69D9: $E0 $18
    ldh a, [$FF0D]                                ; $69DB: $F0 $0D
    ld hl, sp+$46                                 ; $69DD: $F8 $46
    db $FD                                        ; $69DF: $FD
    ldh [rIE], a                                  ; $69E0: $E0 $FF
    ldh a, [rIE]                                  ; $69E2: $F0 $FF
    ld hl, sp-$01                                 ; $69E4: $F8 $FF
    cp $FF                                        ; $69E6: $FE $FF
    rra                                           ; $69E8: $1F
    rst RST_38                                    ; $69E9: $FF
    add b                                         ; $69EA: $80
    rst RST_38                                    ; $69EB: $FF
    ldh [rIE], a                                  ; $69EC: $E0 $FF
    ld a, b                                       ; $69EE: $78
    rst RST_38                                    ; $69EF: $FF
    add b                                         ; $69F0: $80
    rst RST_38                                    ; $69F1: $FF
    rst RST_38                                    ; $69F2: $FF
    ld a, a                                       ; $69F3: $7F
    ld a, a                                       ; $69F4: $7F
    nop                                           ; $69F5: $00
    rlca                                          ; $69F6: $07
    ld [bc], a                                    ; $69F7: $02
    inc bc                                        ; $69F8: $03
    nop                                           ; $69F9: $00
    ld bc, $0200                                  ; $69FA: $01 $00 $02
    ld bc, $0003                                  ; $69FD: $01 $03 $00
    rlca                                          ; $6A00: $07
    rst RST_38                                    ; $6A01: $FF
    rra                                           ; $6A02: $1F
    ld hl, sp+$7F                                 ; $6A03: $F8 $7F
    ldh [$FF1F], a                                ; $6A05: $E0 $1F
    rst RST_38                                    ; $6A07: $FF
    nop                                           ; $6A08: $00
    rst RST_38                                    ; $6A09: $FF
    inc bc                                        ; $6A0A: $03
    rst RST_38                                    ; $6A0B: $FF
    rrca                                          ; $6A0C: $0F
    db $FC                                        ; $6A0D: $FC
    rra                                           ; $6A0E: $1F
    ldh a, [c]                                    ; $6A0F: $F2
    rrca                                          ; $6A10: $0F
    ld hl, sp-$01                                 ; $6A11: $F8 $FF
    rst RST_38                                    ; $6A13: $FF
    rst RST_38                                    ; $6A14: $FF
    nop                                           ; $6A15: $00

jr_016_6A16:
    pop af                                        ; $6A16: $F1
    ld c, [hl]                                    ; $6A17: $4E

jr_016_6A18:
    rst RST_28                                    ; $6A18: $EF
    db $10                                        ; $6A19: $10

jr_016_6A1A:
    ld b, d                                       ; $6A1A: $42
    cp h                                          ; $6A1B: $BC

jr_016_6A1C:
    ld a, $C0                                     ; $6A1C: $3E $C0
    ldh a, [rP1]                                  ; $6A1E: $F0 $00
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
    nop                                           ; $6A2C: $00
    nop                                           ; $6A2D: $00
    nop                                           ; $6A2E: $00
    nop                                           ; $6A2F: $00
    ldh a, [rP1]                                  ; $6A30: $F0 $00
    ld de, $1BE0                                  ; $6A32: $11 $E0 $1B
    ldh [$FF3D], a                                ; $6A35: $E0 $3D
    jp c, $BA7D                                   ; $6A37: $DA $7D $BA

    db $FD                                        ; $6A3A: $FD
    ld a, [hl-]                                   ; $6A3B: $3A
    add hl, sp                                    ; $6A3C: $39
    ld b, $92                                     ; $6A3D: $06 $92
    dec c                                         ; $6A3F: $0D
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
    ret nz                                        ; $6A4E: $C0

    nop                                           ; $6A4F: $00
    ldh [rLCDC], a                                ; $6A50: $E0 $40
    ld [hl], b                                    ; $6A52: $70
    and b                                         ; $6A53: $A0
    jr nc, jr_016_6A16                            ; $6A54: $30 $C0

    jr nc, jr_016_6A18                            ; $6A56: $30 $C0

    jr nz, jr_016_6A1A                            ; $6A58: $20 $C0

    jr nz, jr_016_6A1C                            ; $6A5A: $20 $C0

    ld b, b                                       ; $6A5C: $40
    add b                                         ; $6A5D: $80
    add b                                         ; $6A5E: $80
    nop                                           ; $6A5F: $00
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
    nop                                           ; $6A78: $00
    nop                                           ; $6A79: $00
    inc a                                         ; $6A7A: $3C
    nop                                           ; $6A7B: $00
    ld [hl], d                                    ; $6A7C: $72
    inc l                                         ; $6A7D: $2C
    ld a, l                                       ; $6A7E: $7D
    ld [hl+], a                                   ; $6A7F: $22
    ld bc, $0300                                  ; $6A80: $01 $00 $03
    ld bc, $0306                                  ; $6A83: $01 $06 $03
    inc c                                         ; $6A86: $0C
    rlca                                          ; $6A87: $07
    jr jr_016_6A99                                ; $6A88: $18 $0F

    ld sp, $611F                                  ; $6A8A: $31 $1F $61
    ccf                                           ; $6A8D: $3F
    ret nz                                        ; $6A8E: $C0

    ld a, a                                       ; $6A8F: $7F
    ret nz                                        ; $6A90: $C0

    ld a, a                                       ; $6A91: $7F
    ld b, b                                       ; $6A92: $40
    ccf                                           ; $6A93: $3F
    jr nz, jr_016_6AB5                            ; $6A94: $20 $1F

    jr jr_016_6A9F                                ; $6A96: $18 $07

    rlca                                          ; $6A98: $07

jr_016_6A99:
    nop                                           ; $6A99: $00
    nop                                           ; $6A9A: $00
    nop                                           ; $6A9B: $00
    nop                                           ; $6A9C: $00
    nop                                           ; $6A9D: $00
    nop                                           ; $6A9E: $00

jr_016_6A9F:
    nop                                           ; $6A9F: $00
    cp a                                          ; $6AA0: $BF
    cp $7F                                        ; $6AA1: $FE $7F
    cp $7E                                        ; $6AA3: $FE $7E
    db $FC                                        ; $6AA5: $FC
    rst RST_28                                    ; $6AA6: $EF
    db $FC                                        ; $6AA7: $FC
    rst RST_18                                    ; $6AA8: $DF
    ei                                            ; $6AA9: $FB
    sbc l                                         ; $6AAA: $9D
    rst RST_38                                    ; $6AAB: $FF
    ld de, $23FF                                  ; $6AAC: $11 $FF $23
    cp $03                                        ; $6AAF: $FE $03
    cp $07                                        ; $6AB1: $FE $07
    db $FC                                        ; $6AB3: $FC
    inc c                                         ; $6AB4: $0C

jr_016_6AB5:
    ld hl, sp+$18                                 ; $6AB5: $F8 $18
    ldh a, [$FFF0]                                ; $6AB7: $F0 $F0
    nop                                           ; $6AB9: $00
    nop                                           ; $6ABA: $00
    nop                                           ; $6ABB: $00
    nop                                           ; $6ABC: $00
    nop                                           ; $6ABD: $00
    nop                                           ; $6ABE: $00
    nop                                           ; $6ABF: $00
    add b                                         ; $6AC0: $80
    nop                                           ; $6AC1: $00
    add b                                         ; $6AC2: $80
    nop                                           ; $6AC3: $00
    nop                                           ; $6AC4: $00
    nop                                           ; $6AC5: $00
    nop                                           ; $6AC6: $00
    nop                                           ; $6AC7: $00
    ret nz                                        ; $6AC8: $C0

    nop                                           ; $6AC9: $00
    ret nz                                        ; $6ACA: $C0

    add b                                         ; $6ACB: $80
    add b                                         ; $6ACC: $80
    nop                                           ; $6ACD: $00
    add b                                         ; $6ACE: $80
    nop                                           ; $6ACF: $00
    inc bc                                        ; $6AD0: $03
    nop                                           ; $6AD1: $00
    ld a, h                                       ; $6AD2: $7C
    inc bc                                        ; $6AD3: $03
    ldh [$FF5F], a                                ; $6AD4: $E0 $5F
    ret nz                                        ; $6AD6: $C0

    cp a                                          ; $6AD7: $BF
    ret nz                                        ; $6AD8: $C0

    cp a                                          ; $6AD9: $BF
    ld hl, sp+$07                                 ; $6ADA: $F8 $07
    ret z                                         ; $6ADC: $C8

    scf                                           ; $6ADD: $37
    rst RST_30                                    ; $6ADE: $F7
    ld c, b                                       ; $6ADF: $48
    nop                                           ; $6AE0: $00
    nop                                           ; $6AE1: $00
    nop                                           ; $6AE2: $00
    nop                                           ; $6AE3: $00
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
    ld bc, $0300                                  ; $6AF0: $01 $00 $03
    ld bc, $0207                                  ; $6AF3: $01 $07 $02
    rrca                                          ; $6AF6: $0F
    ld b, $1E                                     ; $6AF7: $06 $1E
    inc c                                         ; $6AF9: $0C
    ccf                                           ; $6AFA: $3F
    inc e                                         ; $6AFB: $1C
    ld a, a                                       ; $6AFC: $7F
    add hl, sp                                    ; $6AFD: $39
    rst RST_18                                    ; $6AFE: $DF
    ld a, e                                       ; $6AFF: $7B
    ld hl, sp-$60                                 ; $6B00: $F8 $A0
    ldh a, [rLCDC]                                ; $6B02: $F0 $40
    ldh [rP1], a                                  ; $6B04: $E0 $00
    nop                                           ; $6B06: $00
    nop                                           ; $6B07: $00
    nop                                           ; $6B08: $00
    nop                                           ; $6B09: $00
    ld bc, $0100                                  ; $6B0A: $01 $00 $01
    nop                                           ; $6B0D: $00
    ld bc, $0100                                  ; $6B0E: $01 $00 $01
    nop                                           ; $6B11: $00
    ld bc, $0100                                  ; $6B12: $01 $00 $01
    nop                                           ; $6B15: $00

jr_016_6B16:
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
    ld a, b                                       ; $6B26: $78
    nop                                           ; $6B27: $00
    add [hl]                                      ; $6B28: $86
    ld a, b                                       ; $6B29: $78
    call $E63E                                    ; $6B2A: $CD $3E $E6
    rra                                           ; $6B2D: $1F
    ld [hl], e                                    ; $6B2E: $73
    rrca                                          ; $6B2F: $0F
    ld a, h                                       ; $6B30: $7C
    rlca                                          ; $6B31: $07
    cp $77                                        ; $6B32: $FE $77
    rst RST_38                                    ; $6B34: $FF
    ld a, e                                       ; $6B35: $7B
    ld a, h                                       ; $6B36: $7C
    cp e                                          ; $6B37: $BB
    ld a, a                                       ; $6B38: $7F
    or b                                          ; $6B39: $B0
    ld [hl], e                                    ; $6B3A: $73
    add b                                         ; $6B3B: $80
    push bc                                       ; $6B3C: $C5
    ld [bc], a                                    ; $6B3D: $02
    ld [$1007], sp                                ; $6B3E: $08 $07 $10
    rrca                                          ; $6B41: $0F
    jr nz, jr_016_6B63                            ; $6B42: $20 $1F

    ld b, b                                       ; $6B44: $40
    ccf                                           ; $6B45: $3F
    ld b, c                                       ; $6B46: $41
    ld a, $C6                                     ; $6B47: $3E $C6
    ld a, c                                       ; $6B49: $79
    bit 6, h                                      ; $6B4A: $CB $74
    rst RST_38                                    ; $6B4C: $FF
    ld b, b                                       ; $6B4D: $40
    ld l, e                                       ; $6B4E: $6B
    sub h                                         ; $6B4F: $94
    cpl                                           ; $6B50: $2F
    pop de                                        ; $6B51: $D1
    inc sp                                        ; $6B52: $33
    ret nz                                        ; $6B53: $C0

    jr nz, jr_016_6B16                            ; $6B54: $20 $C0

    ret nz                                        ; $6B56: $C0

    nop                                           ; $6B57: $00
    nop                                           ; $6B58: $00
    nop                                           ; $6B59: $00
    nop                                           ; $6B5A: $00
    nop                                           ; $6B5B: $00
    nop                                           ; $6B5C: $00
    nop                                           ; $6B5D: $00
    nop                                           ; $6B5E: $00
    nop                                           ; $6B5F: $00
    nop                                           ; $6B60: $00
    nop                                           ; $6B61: $00
    rlca                                          ; $6B62: $07

jr_016_6B63:
    nop                                           ; $6B63: $00
    ld a, $05                                     ; $6B64: $3E $05
    ccf                                           ; $6B66: $3F
    inc d                                         ; $6B67: $14
    rra                                           ; $6B68: $1F
    rrca                                          ; $6B69: $0F
    sbc a                                         ; $6B6A: $9F
    inc c                                         ; $6B6B: $0C
    rst RST_28                                    ; $6B6C: $EF
    inc de                                        ; $6B6D: $13
    pop af                                        ; $6B6E: $F1
    ld l, [hl]                                    ; $6B6F: $6E
    db $FD                                        ; $6B70: $FD
    ld [hl], d                                    ; $6B71: $72
    ld a, d                                       ; $6B72: $7A
    or l                                          ; $6B73: $B5
    ld a, a                                       ; $6B74: $7F
    add b                                         ; $6B75: $80
    ld h, e                                       ; $6B76: $63
    sbc l                                         ; $6B77: $9D
    di                                            ; $6B78: $F3
    ld e, [hl]                                    ; $6B79: $5E
    rst RST_38                                    ; $6B7A: $FF
    xor $FE                                       ; $6B7B: $EE $FE
    pop af                                        ; $6B7D: $F1
    db $FD                                        ; $6B7E: $FD
    ld a, e                                       ; $6B7F: $7B
    nop                                           ; $6B80: $00
    nop                                           ; $6B81: $00
    add b                                         ; $6B82: $80
    nop                                           ; $6B83: $00
    ld b, b                                       ; $6B84: $40
    add b                                         ; $6B85: $80
    ldh [rLCDC], a                                ; $6B86: $E0 $40
    ldh [$FF80], a                                ; $6B88: $E0 $80
    sub b                                         ; $6B8A: $90
    ld h, b                                       ; $6B8B: $60
    sbc [hl]                                      ; $6B8C: $9E
    ld h, b                                       ; $6B8D: $60
    dec e                                         ; $6B8E: $1D
    ldh [c], a                                    ; $6B8F: $E2
    cp l                                          ; $6B90: $BD
    ld e, d                                       ; $6B91: $5A
    ld a, d                                       ; $6B92: $7A
    or h                                          ; $6B93: $B4
    cp $04                                        ; $6B94: $FE $04
    call z, $C8B0                                 ; $6B96: $CC $B0 $C8
    or b                                          ; $6B99: $B0
    rst RST_38                                    ; $6B9A: $FF
    ld [hl], b                                    ; $6B9B: $70
    ld [hl], a                                    ; $6B9C: $77
    adc e                                         ; $6B9D: $8B
    cp a                                          ; $6B9E: $BF
    ret nz                                        ; $6B9F: $C0

    ld a, l                                       ; $6BA0: $7D
    cp e                                          ; $6BA1: $BB
    ccf                                           ; $6BA2: $3F
    db $DD                                        ; $6BA3: $DD
    ld a, a                                       ; $6BA4: $7F
    add b                                         ; $6BA5: $80
    adc a                                         ; $6BA6: $8F
    ld [hl], a                                    ; $6BA7: $77
    rlca                                          ; $6BA8: $07
    ei                                            ; $6BA9: $FB
    rlca                                          ; $6BAA: $07
    ei                                            ; $6BAB: $FB
    rra                                           ; $6BAC: $1F
    ldh [rIE], a                                  ; $6BAD: $E0 $FF
    rra                                           ; $6BAF: $1F
    rst RST_38                                    ; $6BB0: $FF
    rst RST_38                                    ; $6BB1: $FF
    rst RST_38                                    ; $6BB2: $FF
    rst RST_38                                    ; $6BB3: $FF
    rst RST_38                                    ; $6BB4: $FF
    ccf                                           ; $6BB5: $3F
    ccf                                           ; $6BB6: $3F
    inc c                                         ; $6BB7: $0C
    dec l                                         ; $6BB8: $2D
    ld [de], a                                    ; $6BB9: $12
    ld b, d                                       ; $6BBA: $42
    inc a                                         ; $6BBB: $3C
    ld a, h                                       ; $6BBC: $7C
    nop                                           ; $6BBD: $00
    nop                                           ; $6BBE: $00
    nop                                           ; $6BBF: $00
    rst RST_38                                    ; $6BC0: $FF
    sub l                                         ; $6BC1: $95
    rst RST_38                                    ; $6BC2: $FF
    adc d                                         ; $6BC3: $8A
    rst RST_38                                    ; $6BC4: $FF
    ld a, [bc]                                    ; $6BC5: $0A
    rst RST_38                                    ; $6BC6: $FF
    rlca                                          ; $6BC7: $07
    adc a                                         ; $6BC8: $8F
    ld [hl], b                                    ; $6BC9: $70
    add a                                         ; $6BCA: $87
    ld a, c                                       ; $6BCB: $79
    sbc e                                         ; $6BCC: $9B
    ld h, h                                       ; $6BCD: $64
    push de                                       ; $6BCE: $D5
    ld a, [hl+]                                   ; $6BCF: $2A
    cp e                                          ; $6BD0: $BB
    inc b                                         ; $6BD1: $04
    sbc [hl]                                      ; $6BD2: $9E
    ld bc, $048F                                  ; $6BD3: $01 $8F $04
    rrca                                          ; $6BD6: $0F
    inc bc                                        ; $6BD7: $03
    inc bc                                        ; $6BD8: $03
    nop                                           ; $6BD9: $00

jr_016_6BDA:
    nop                                           ; $6BDA: $00
    nop                                           ; $6BDB: $00
    nop                                           ; $6BDC: $00
    nop                                           ; $6BDD: $00
    nop                                           ; $6BDE: $00
    nop                                           ; $6BDF: $00
    ret nz                                        ; $6BE0: $C0

    nop                                           ; $6BE1: $00
    ret nz                                        ; $6BE2: $C0

    add b                                         ; $6BE3: $80
    ret nz                                        ; $6BE4: $C0

    add b                                         ; $6BE5: $80
    add b                                         ; $6BE6: $80
    nop                                           ; $6BE7: $00
    nop                                           ; $6BE8: $00
    nop                                           ; $6BE9: $00
    ret nz                                        ; $6BEA: $C0

    nop                                           ; $6BEB: $00
    ldh a, [$FFC0]                                ; $6BEC: $F0 $C0
    db $FC                                        ; $6BEE: $FC
    jr nc, jr_016_6C30                            ; $6BEF: $30 $3F

    call z, $F20F                                 ; $6BF1: $CC $0F $F2
    inc bc                                        ; $6BF4: $03
    db $FC                                        ; $6BF5: $FC
    pop bc                                        ; $6BF6: $C1
    ld a, $F2                                     ; $6BF7: $3E $F2
    call $31FE                                    ; $6BF9: $CD $FE $31
    ld a, $0D                                     ; $6BFC: $3E $0D
    dec c                                         ; $6BFE: $0D
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
    add b                                         ; $6C14: $80
    nop                                           ; $6C15: $00
    ld b, b                                       ; $6C16: $40
    add b                                         ; $6C17: $80
    jr nz, jr_016_6BDA                            ; $6C18: $20 $C0

    db $10                                        ; $6C1A: $10
    ldh [$FF08], a                                ; $6C1B: $E0 $08
    ldh a, [$FFF8]                                ; $6C1D: $F0 $F8
    nop                                           ; $6C1F: $00
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

jr_016_6C30:
    nop                                           ; $6C30: $00
    nop                                           ; $6C31: $00
    nop                                           ; $6C32: $00
    nop                                           ; $6C33: $00
    nop                                           ; $6C34: $00
    nop                                           ; $6C35: $00
    nop                                           ; $6C36: $00
    nop                                           ; $6C37: $00
    nop                                           ; $6C38: $00
    nop                                           ; $6C39: $00
    nop                                           ; $6C3A: $00
    nop                                           ; $6C3B: $00
    add b                                         ; $6C3C: $80
    nop                                           ; $6C3D: $00
    add b                                         ; $6C3E: $80
    nop                                           ; $6C3F: $00
    nop                                           ; $6C40: $00
    nop                                           ; $6C41: $00
    nop                                           ; $6C42: $00
    nop                                           ; $6C43: $00
    nop                                           ; $6C44: $00
    nop                                           ; $6C45: $00
    nop                                           ; $6C46: $00
    nop                                           ; $6C47: $00
    rrca                                          ; $6C48: $0F
    nop                                           ; $6C49: $00
    ld [$0F07], sp                                ; $6C4A: $08 $07 $0F
    nop                                           ; $6C4D: $00
    rrca                                          ; $6C4E: $0F
    rlca                                          ; $6C4F: $07
    rst RST_38                                    ; $6C50: $FF
    rrca                                          ; $6C51: $0F
    ld e, a                                       ; $6C52: $5F
    ccf                                           ; $6C53: $3F
    daa                                           ; $6C54: $27
    rra                                           ; $6C55: $1F
    jr jr_016_6C5F                                ; $6C56: $18 $07

    rlca                                          ; $6C58: $07
    nop                                           ; $6C59: $00
    nop                                           ; $6C5A: $00
    nop                                           ; $6C5B: $00
    nop                                           ; $6C5C: $00
    nop                                           ; $6C5D: $00
    nop                                           ; $6C5E: $00

jr_016_6C5F:
    nop                                           ; $6C5F: $00
    nop                                           ; $6C60: $00
    nop                                           ; $6C61: $00
    nop                                           ; $6C62: $00
    nop                                           ; $6C63: $00
    nop                                           ; $6C64: $00
    nop                                           ; $6C65: $00
    inc bc                                        ; $6C66: $03
    nop                                           ; $6C67: $00
    rst RST_38                                    ; $6C68: $FF
    inc bc                                        ; $6C69: $03
    rlca                                          ; $6C6A: $07
    ei                                            ; $6C6B: $FB
    rst RST_38                                    ; $6C6C: $FF
    ld [bc], a                                    ; $6C6D: $02
    rst RST_38                                    ; $6C6E: $FF
    pop af                                        ; $6C6F: $F1
    rst RST_38                                    ; $6C70: $FF
    or $FF                                        ; $6C71: $F6 $FF
    ld hl, sp-$0C                                 ; $6C73: $F8 $F4
    ld hl, sp+$08                                 ; $6C75: $F8 $08
    ldh a, [$FFF0]                                ; $6C77: $F0 $F0
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
    nop                                           ; $6C85: $00
    nop                                           ; $6C86: $00
    nop                                           ; $6C87: $00
    nop                                           ; $6C88: $00
    nop                                           ; $6C89: $00
    nop                                           ; $6C8A: $00
    nop                                           ; $6C8B: $00
    nop                                           ; $6C8C: $00
    nop                                           ; $6C8D: $00
    nop                                           ; $6C8E: $00
    nop                                           ; $6C8F: $00
    inc bc                                        ; $6C90: $03
    nop                                           ; $6C91: $00
    inc e                                         ; $6C92: $1C
    inc bc                                        ; $6C93: $03
    ld h, b                                       ; $6C94: $60
    rra                                           ; $6C95: $1F
    add b                                         ; $6C96: $80
    ld a, a                                       ; $6C97: $7F
    add b                                         ; $6C98: $80
    ld a, a                                       ; $6C99: $7F
    ld hl, sp+$07                                 ; $6C9A: $F8 $07
    ret z                                         ; $6C9C: $C8

    or a                                          ; $6C9D: $B7
    rst RST_30                                    ; $6C9E: $F7
    ld c, b                                       ; $6C9F: $48
    nop                                           ; $6CA0: $00
    nop                                           ; $6CA1: $00
    ld bc, $0100                                  ; $6CA2: $01 $00 $01
    nop                                           ; $6CA5: $00
    rlca                                          ; $6CA6: $07
    nop                                           ; $6CA7: $00
    rrca                                          ; $6CA8: $0F
    inc bc                                        ; $6CA9: $03
    inc de                                        ; $6CAA: $13
    inc c                                         ; $6CAB: $0C
    rla                                           ; $6CAC: $17
    dec bc                                        ; $6CAD: $0B
    rrca                                          ; $6CAE: $0F
    nop                                           ; $6CAF: $00
    rlca                                          ; $6CB0: $07
    ld [bc], a                                    ; $6CB1: $02
    ld [bc], a                                    ; $6CB2: $02
    ld bc, $0304                                  ; $6CB3: $01 $04 $03
    inc b                                         ; $6CB6: $04
    inc bc                                        ; $6CB7: $03
    inc b                                         ; $6CB8: $04
    inc bc                                        ; $6CB9: $03
    ld [bc], a                                    ; $6CBA: $02
    ld bc, $0001                                  ; $6CBB: $01 $01 $00
    nop                                           ; $6CBE: $00
    nop                                           ; $6CBF: $00
    rlca                                          ; $6CC0: $07
    nop                                           ; $6CC1: $00
    adc [hl]                                      ; $6CC2: $8E
    dec b                                         ; $6CC3: $05
    rst RST_18                                    ; $6CC4: $DF
    add h                                         ; $6CC5: $84
    rst RST_38                                    ; $6CC6: $FF
    ld d, [hl]                                    ; $6CC7: $56
    rst RST_38                                    ; $6CC8: $FF
    ld c, l                                       ; $6CC9: $4D
    rst RST_38                                    ; $6CCA: $FF
    and e                                         ; $6CCB: $A3
    rst RST_38                                    ; $6CCC: $FF
    ld h, e                                       ; $6CCD: $63
    db $E3                                        ; $6CCE: $E3
    sbc l                                         ; $6CCF: $9D
    add e                                         ; $6CD0: $83
    ld a, l                                       ; $6CD1: $7D
    ld bc, $01FE                                  ; $6CD2: $01 $FE $01
    cp $01                                        ; $6CD5: $FE $01
    cp $06                                        ; $6CD7: $FE $06
    ld sp, hl                                     ; $6CD9: $F9
    inc a                                         ; $6CDA: $3C
    jp $1CFB                                      ; $6CDB: $C3 $FB $1C


jr_016_6CDE:
    ld e, e                                       ; $6CDE: $5B
    dec a                                         ; $6CDF: $3D
    ldh [rP1], a                                  ; $6CE0: $E0 $00
    ld [hl], b                                    ; $6CE2: $70
    and b                                         ; $6CE3: $A0
    rst RST_38                                    ; $6CE4: $FF
    ld b, b                                       ; $6CE5: $40
    cp $DB                                        ; $6CE6: $FE $DB
    db $FC                                        ; $6CE8: $FC
    and a                                         ; $6CE9: $A7
    rst RST_38                                    ; $6CEA: $FF
    ld a, [$C0FF]                                 ; $6CEB: $FA $FF $C0
    rst RST_38                                    ; $6CEE: $FF
    ldh [rIE], a                                  ; $6CEF: $E0 $FF
    sub [hl]                                      ; $6CF1: $96
    rst RST_38                                    ; $6CF2: $FF
    add [hl]                                      ; $6CF3: $86
    cp [hl]                                       ; $6CF4: $BE
    ld e, h                                       ; $6CF5: $5C
    dec a                                         ; $6CF6: $3D
    jp c, $C738                                   ; $6CF7: $DA $38 $C7

    ld a, b                                       ; $6CFA: $78
    or a                                          ; $6CFB: $B7
    ldh a, [$FF6F]                                ; $6CFC: $F0 $6F
    ldh [$FFDF], a                                ; $6CFE: $E0 $DF
    nop                                           ; $6D00: $00
    nop                                           ; $6D01: $00
    nop                                           ; $6D02: $00
    nop                                           ; $6D03: $00
    ldh [rP1], a                                  ; $6D04: $E0 $00
    db $10                                        ; $6D06: $10
    ldh [rSVBK], a                                ; $6D07: $E0 $70
    add b                                         ; $6D09: $80
    ldh a, [rP1]                                  ; $6D0A: $F0 $00
    ldh a, [rP1]                                  ; $6D0C: $F0 $00
    ldh [rP1], a                                  ; $6D0E: $E0 $00
    ret nz                                        ; $6D10: $C0

    nop                                           ; $6D11: $00
    nop                                           ; $6D12: $00
    nop                                           ; $6D13: $00
    nop                                           ; $6D14: $00
    nop                                           ; $6D15: $00
    nop                                           ; $6D16: $00
    nop                                           ; $6D17: $00
    add b                                         ; $6D18: $80
    nop                                           ; $6D19: $00
    ld b, b                                       ; $6D1A: $40
    add b                                         ; $6D1B: $80
    jr nz, jr_016_6CDE                            ; $6D1C: $20 $C0

    inc e                                         ; $6D1E: $1C
    ldh [rP1], a                                  ; $6D1F: $E0 $00
    nop                                           ; $6D21: $00
    nop                                           ; $6D22: $00
    nop                                           ; $6D23: $00
    inc bc                                        ; $6D24: $03
    nop                                           ; $6D25: $00
    inc c                                         ; $6D26: $0C
    inc bc                                        ; $6D27: $03
    ld d, $09                                     ; $6D28: $16 $09
    ld e, $01                                     ; $6D2A: $1E $01
    rla                                           ; $6D2C: $17
    ld [$031F], sp                                ; $6D2D: $08 $1F $03
    rlca                                          ; $6D30: $07
    ld bc, $0001                                  ; $6D31: $01 $01 $00
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
    ccf                                           ; $6D40: $3F
    dec de                                        ; $6D41: $1B
    rst RST_38                                    ; $6D42: $FF
    nop                                           ; $6D43: $00
    rra                                           ; $6D44: $1F
    xor $0E                                       ; $6D45: $EE $0E
    push af                                       ; $6D47: $F5
    ld c, $F5                                     ; $6D48: $0E $F5
    ccf                                           ; $6D4A: $3F
    ret nz                                        ; $6D4B: $C0

    rst RST_38                                    ; $6D4C: $FF
    dec a                                         ; $6D4D: $3D
    rst RST_38                                    ; $6D4E: $FF
    db $FD                                        ; $6D4F: $FD
    rst RST_38                                    ; $6D50: $FF
    db $FD                                        ; $6D51: $FD
    rst RST_38                                    ; $6D52: $FF
    ld a, l                                       ; $6D53: $7D
    ld a, a                                       ; $6D54: $7F
    jr jr_016_6DB2                                ; $6D55: $18 $5B

    inc h                                         ; $6D57: $24
    add h                                         ; $6D58: $84
    ld a, b                                       ; $6D59: $78
    ld hl, sp+$00                                 ; $6D5A: $F8 $00
    nop                                           ; $6D5C: $00
    nop                                           ; $6D5D: $00
    nop                                           ; $6D5E: $00
    nop                                           ; $6D5F: $00
    ldh [$FF9F], a                                ; $6D60: $E0 $9F
    ld hl, sp+$1F                                 ; $6D62: $F8 $1F
    ld e, $E7                                     ; $6D64: $1E $E7
    rrca                                          ; $6D66: $0F
    pop af                                        ; $6D67: $F1
    rst RST_38                                    ; $6D68: $FF
    nop                                           ; $6D69: $00
    xor [hl]                                      ; $6D6A: $AE
    ld d, h                                       ; $6D6B: $54
    cp $04                                        ; $6D6C: $FE $04
    xor [hl]                                      ; $6D6E: $AE
    ld d, h                                       ; $6D6F: $54
    cp $04                                        ; $6D70: $FE $04
    adc [hl]                                      ; $6D72: $8E
    ld [hl], h                                    ; $6D73: $74
    adc h                                         ; $6D74: $8C
    ld [hl], b                                    ; $6D75: $70
    db $FC                                        ; $6D76: $FC
    nop                                           ; $6D77: $00
    add h                                         ; $6D78: $84
    ld a, b                                       ; $6D79: $78
    ld b, h                                       ; $6D7A: $44
    jr c, @+$46                                   ; $6D7B: $38 $44

    jr c, @+$3A                                   ; $6D7D: $38 $38

    nop                                           ; $6D7F: $00
    ld a, [de]                                    ; $6D80: $1A
    db $F4                                        ; $6D81: $F4
    add hl, de                                    ; $6D82: $19
    or $19                                        ; $6D83: $F6 $19
    or $B9                                        ; $6D85: $F6 $B9
    or $F1                                        ; $6D87: $F6 $F1
    ld l, [hl]                                    ; $6D89: $6E
    pop hl                                        ; $6D8A: $E1
    ld e, $43                                     ; $6D8B: $1E $43
    inc a                                         ; $6D8D: $3C
    ccf                                           ; $6D8E: $3F
    nop                                           ; $6D8F: $00
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
    nop                                           ; $6DA0: $00
    nop                                           ; $6DA1: $00
    ld bc, $0300                                  ; $6DA2: $01 $00 $03
    ld bc, $0103                                  ; $6DA5: $01 $03 $01
    rlca                                          ; $6DA8: $07
    inc bc                                        ; $6DA9: $03
    rlca                                          ; $6DAA: $07
    inc bc                                        ; $6DAB: $03
    dec c                                         ; $6DAC: $0D
    rlca                                          ; $6DAD: $07
    dec c                                         ; $6DAE: $0D
    rlca                                          ; $6DAF: $07
    jr @+$09                                      ; $6DB0: $18 $07

jr_016_6DB2:
    jr nc, @+$11                                  ; $6DB2: $30 $0F

    jr nc, @+$11                                  ; $6DB4: $30 $0F

    jr nc, @+$11                                  ; $6DB6: $30 $0F

    jr nz, @+$21                                  ; $6DB8: $20 $1F

    jr nz, jr_016_6DDB                            ; $6DBA: $20 $1F

    jr nz, @+$21                                  ; $6DBC: $20 $1F

    jr nz, jr_016_6DDF                            ; $6DBE: $20 $1F

    jr nz, jr_016_6DE1                            ; $6DC0: $20 $1F

    jr nz, jr_016_6DE3                            ; $6DC2: $20 $1F

    jr nz, @+$21                                  ; $6DC4: $20 $1F

    jr nz, jr_016_6DE7                            ; $6DC6: $20 $1F

    jr nz, @+$21                                  ; $6DC8: $20 $1F

    jr nz, @+$21                                  ; $6DCA: $20 $1F

    db $10                                        ; $6DCC: $10
    rrca                                          ; $6DCD: $0F
    db $10                                        ; $6DCE: $10
    rrca                                          ; $6DCF: $0F
    db $10                                        ; $6DD0: $10
    rrca                                          ; $6DD1: $0F
    inc c                                         ; $6DD2: $0C
    rlca                                          ; $6DD3: $07
    inc c                                         ; $6DD4: $0C
    rlca                                          ; $6DD5: $07
    ld b, $03                                     ; $6DD6: $06 $03
    ld b, $03                                     ; $6DD8: $06 $03
    inc bc                                        ; $6DDA: $03

jr_016_6DDB:
    ld bc, $0001                                  ; $6DDB: $01 $01 $00
    nop                                           ; $6DDE: $00

jr_016_6DDF:
    nop                                           ; $6DDF: $00
    nop                                           ; $6DE0: $00

jr_016_6DE1:
    nop                                           ; $6DE1: $00
    nop                                           ; $6DE2: $00

jr_016_6DE3:
    nop                                           ; $6DE3: $00
    ld bc, $0700                                  ; $6DE4: $01 $00 $07

jr_016_6DE7:
    ld bc, $060F                                  ; $6DE7: $01 $0F $06
    ld e, $0C                                     ; $6DEA: $1E $0C
    inc a                                         ; $6DEC: $3C
    jr jr_016_6E6B                                ; $6DED: $18 $7C

    jr c, @-$06                                   ; $6DEF: $38 $F8

    ld [hl], b                                    ; $6DF1: $70
    ld sp, hl                                     ; $6DF2: $F9
    ldh a, [$FFF3]                                ; $6DF3: $F0 $F3
    pop hl                                        ; $6DF5: $E1
    rst RST_30                                    ; $6DF6: $F7
    db $E3                                        ; $6DF7: $E3
    rst RST_38                                    ; $6DF8: $FF
    or $DF                                        ; $6DF9: $F6 $DF
    cp $9F                                        ; $6DFB: $FE $9F
    db $FC                                        ; $6DFD: $FC
    ccf                                           ; $6DFE: $3F
    rst RST_38                                    ; $6DFF: $FF
    nop                                           ; $6E00: $00
    nop                                           ; $6E01: $00
    nop                                           ; $6E02: $00
    nop                                           ; $6E03: $00
    add b                                         ; $6E04: $80
    nop                                           ; $6E05: $00
    add b                                         ; $6E06: $80
    nop                                           ; $6E07: $00
    ld bc, $0100                                  ; $6E08: $01 $00 $01
    nop                                           ; $6E0B: $00
    inc bc                                        ; $6E0C: $03
    ld bc, $0103                                  ; $6E0D: $01 $03 $01
    add $03                                       ; $6E10: $C6 $03
    rst RST_08                                    ; $6E12: $CF
    add b                                         ; $6E13: $80
    sbc h                                         ; $6E14: $9C
    dec bc                                        ; $6E15: $0B
    cp [hl]                                       ; $6E16: $BE
    add hl, bc                                    ; $6E17: $09
    ld a, a                                       ; $6E18: $7F
    ld l, $3F                                     ; $6E19: $2E $3F
    nop                                           ; $6E1B: $00
    rst RST_38                                    ; $6E1C: $FF
    ld a, $FF                                     ; $6E1D: $3E $FF
    ld hl, sp+$3F                                 ; $6E1F: $F8 $3F
    rst RST_38                                    ; $6E21: $FF
    ld b, a                                       ; $6E22: $47
    rst RST_38                                    ; $6E23: $FF
    rrca                                          ; $6E24: $0F
    rst RST_38                                    ; $6E25: $FF
    rra                                           ; $6E26: $1F
    rst RST_38                                    ; $6E27: $FF
    ccf                                           ; $6E28: $3F
    rst RST_38                                    ; $6E29: $FF
    ld a, a                                       ; $6E2A: $7F
    cp $0F                                        ; $6E2B: $FE $0F
    ld hl, sp+$1F                                 ; $6E2D: $F8 $1F
    db $FC                                        ; $6E2F: $FC
    rlca                                          ; $6E30: $07
    rst RST_38                                    ; $6E31: $FF
    ld bc, $FFFF                                  ; $6E32: $01 $FF $FF
    rst RST_38                                    ; $6E35: $FF
    ccf                                           ; $6E36: $3F
    rst RST_38                                    ; $6E37: $FF
    rrca                                          ; $6E38: $0F
    rst RST_38                                    ; $6E39: $FF
    inc bc                                        ; $6E3A: $03
    rst RST_38                                    ; $6E3B: $FF
    ld a, a                                       ; $6E3C: $7F
    rst RST_38                                    ; $6E3D: $FF

jr_016_6E3E:
    rra                                           ; $6E3E: $1F
    rst RST_38                                    ; $6E3F: $FF

jr_016_6E40:
    ei                                            ; $6E40: $FB
    call nz, Call_000_01FF                        ; $6E41: $C4 $FF $01
    rst RST_38                                    ; $6E44: $FF
    ld hl, sp-$04                                 ; $6E45: $F8 $FC
    rst RST_20                                    ; $6E47: $E7
    ld sp, hl                                     ; $6E48: $F9
    adc a                                         ; $6E49: $8F
    rst RST_38                                    ; $6E4A: $FF
    ld c, [hl]                                    ; $6E4B: $4E
    rst RST_08                                    ; $6E4C: $CF
    ld sp, $7BB7                                  ; $6E4D: $31 $B7 $7B
    rst RST_30                                    ; $6E50: $F7
    adc e                                         ; $6E51: $8B
    rst RST_38                                    ; $6E52: $FF
    di                                            ; $6E53: $F3
    rst RST_38                                    ; $6E54: $FF
    db $FC                                        ; $6E55: $FC
    rst RST_38                                    ; $6E56: $FF
    rst RST_38                                    ; $6E57: $FF
    rst RST_38                                    ; $6E58: $FF
    ld hl, sp-$04                                 ; $6E59: $F8 $FC
    db $E3                                        ; $6E5B: $E3
    db $FC                                        ; $6E5C: $FC
    add e                                         ; $6E5D: $83
    db $FC                                        ; $6E5E: $FC
    db $E3                                        ; $6E5F: $E3
    ldh a, [$FFEF]                                ; $6E60: $F0 $EF
    pop hl                                        ; $6E62: $E1
    sbc $E3                                       ; $6E63: $DE $E3
    inc e                                         ; $6E65: $1C
    db $E3                                        ; $6E66: $E3
    ld e, l                                       ; $6E67: $5D
    rst RST_20                                    ; $6E68: $E7
    ld e, c                                       ; $6E69: $59
    rst RST_38                                    ; $6E6A: $FF

jr_016_6E6B:
    pop hl                                        ; $6E6B: $E1
    pop af                                        ; $6E6C: $F1
    xor $E0                                       ; $6E6D: $EE $E0
    rst RST_18                                    ; $6E6F: $DF
    ret nz                                        ; $6E70: $C0

    cp a                                          ; $6E71: $BF
    ldh [$FF7F], a                                ; $6E72: $E0 $7F
    ld hl, sp+$1F                                 ; $6E74: $F8 $1F
    sbc [hl]                                      ; $6E76: $9E
    rlca                                          ; $6E77: $07
    ld b, a                                       ; $6E78: $47
    add c                                         ; $6E79: $81
    ld b, c                                       ; $6E7A: $41
    add b                                         ; $6E7B: $80
    jr nz, jr_016_6E3E                            ; $6E7C: $20 $C0

    jr nz, jr_016_6E40                            ; $6E7E: $20 $C0

    rlca                                          ; $6E80: $07
    rst RST_38                                    ; $6E81: $FF
    inc bc                                        ; $6E82: $03
    rst RST_38                                    ; $6E83: $FF
    rlca                                          ; $6E84: $07
    cp $CF                                        ; $6E85: $FE $CF
    db $FC                                        ; $6E87: $FC
    ld a, a                                       ; $6E88: $7F
    rst RST_38                                    ; $6E89: $FF
    ccf                                           ; $6E8A: $3F
    rst RST_38                                    ; $6E8B: $FF
    cp a                                          ; $6E8C: $BF
    rst RST_38                                    ; $6E8D: $FF
    rst RST_38                                    ; $6E8E: $FF
    ld a, h                                       ; $6E8F: $7C
    ld a, a                                       ; $6E90: $7F
    add hl, sp                                    ; $6E91: $39
    ccf                                           ; $6E92: $3F
    inc c                                         ; $6E93: $0C
    rrca                                          ; $6E94: $0F
    inc bc                                        ; $6E95: $03
    dec bc                                        ; $6E96: $0B
    inc b                                         ; $6E97: $04
    ld de, $1F0E                                  ; $6E98: $11 $0E $1F
    nop                                           ; $6E9B: $00
    nop                                           ; $6E9C: $00
    nop                                           ; $6E9D: $00
    nop                                           ; $6E9E: $00
    nop                                           ; $6E9F: $00
    db $FC                                        ; $6EA0: $FC
    ei                                            ; $6EA1: $FB
    rst RST_38                                    ; $6EA2: $FF
    nop                                           ; $6EA3: $00
    db $FD                                        ; $6EA4: $FD
    ld hl, sp-$01                                 ; $6EA5: $F8 $FF
    ld hl, sp-$01                                 ; $6EA7: $F8 $FF
    add hl, de                                    ; $6EA9: $19
    rst RST_38                                    ; $6EAA: $FF
    jp hl                                         ; $6EAB: $E9


    db $FD                                        ; $6EAC: $FD
    sub b                                         ; $6EAD: $90
    ld sp, hl                                     ; $6EAE: $F9
    ld [hl], b                                    ; $6EAF: $70
    ld sp, hl                                     ; $6EB0: $F9
    ldh a, [$FFF8]                                ; $6EB1: $F0 $F8
    ldh a, [$FFFC]                                ; $6EB3: $F0 $FC
    ld a, b                                       ; $6EB5: $78
    db $FC                                        ; $6EB6: $FC
    ld a, b                                       ; $6EB7: $78
    db $FC                                        ; $6EB8: $FC
    nop                                           ; $6EB9: $00
    nop                                           ; $6EBA: $00
    nop                                           ; $6EBB: $00
    nop                                           ; $6EBC: $00
    nop                                           ; $6EBD: $00

jr_016_6EBE:
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
    ldh a, [rP1]                                  ; $6EC8: $F0 $00
    ld hl, sp-$10                                 ; $6ECA: $F8 $F0
    ld [$08F0], sp                                ; $6ECC: $08 $F0 $08
    ldh a, [$FF09]                                ; $6ECF: $F0 $09
    ldh a, [rNR13]                                ; $6ED1: $F0 $13
    pop hl                                        ; $6ED3: $E1
    and [hl]                                      ; $6ED4: $A6
    ld b, e                                       ; $6ED5: $43
    ld c, h                                       ; $6ED6: $4C
    add a                                         ; $6ED7: $87
    ld e, b                                       ; $6ED8: $58
    adc a                                         ; $6ED9: $8F
    inc sp                                        ; $6EDA: $33
    call c, $D32C                                 ; $6EDB: $DC $2C $D3
    ldh a, [rIF]                                  ; $6EDE: $F0 $0F
    nop                                           ; $6EE0: $00
    nop                                           ; $6EE1: $00
    nop                                           ; $6EE2: $00
    nop                                           ; $6EE3: $00
    nop                                           ; $6EE4: $00
    nop                                           ; $6EE5: $00
    nop                                           ; $6EE6: $00
    nop                                           ; $6EE7: $00
    ld e, $00                                     ; $6EE8: $1E $00
    ccf                                           ; $6EEA: $3F
    ld e, $61                                     ; $6EEB: $1E $61
    ld a, $C1                                     ; $6EED: $3E $C1

jr_016_6EEF:
    ld a, [hl]                                    ; $6EEF: $7E
    add c                                         ; $6EF0: $81
    cp $01                                        ; $6EF1: $FE $01
    cp $01                                        ; $6EF3: $FE $01
    cp $02                                        ; $6EF5: $FE $02
    db $FC                                        ; $6EF7: $FC
    inc b                                         ; $6EF8: $04
    ld hl, sp-$08                                 ; $6EF9: $F8 $F8
    nop                                           ; $6EFB: $00
    jr nc, jr_016_6EBE                            ; $6EFC: $30 $C0

    ld [hl], b                                    ; $6EFE: $70
    add b                                         ; $6EFF: $80
    rst RST_38                                    ; $6F00: $FF
    nop                                           ; $6F01: $00
    ret nz                                        ; $6F02: $C0

    ccf                                           ; $6F03: $3F
    ret nz                                        ; $6F04: $C0

    ccf                                           ; $6F05: $3F
    ldh [$FFDF], a                                ; $6F06: $E0 $DF
    ldh [$FFDF], a                                ; $6F08: $E0 $DF
    ldh [$FFDF], a                                ; $6F0A: $E0 $DF
    ldh [$FF1F], a                                ; $6F0C: $E0 $1F
    jr nz, jr_016_6EEF                            ; $6F0E: $20 $DF

    rra                                           ; $6F10: $1F
    ldh [$FF0E], a                                ; $6F11: $E0 $0E
    ld hl, sp+$0D                                 ; $6F13: $F8 $0D
    ld a, [$F30C]                                 ; $6F15: $FA $0C $F3
    sbc b                                         ; $6F18: $98
    rst RST_30                                    ; $6F19: $F7
    ldh a, [$FF6F]                                ; $6F1A: $F0 $6F
    ld h, b                                       ; $6F1C: $60
    rra                                           ; $6F1D: $1F
    rra                                           ; $6F1E: $1F
    nop                                           ; $6F1F: $00
    db $FC                                        ; $6F20: $FC
    ret c                                         ; $6F21: $D8

    cp $44                                        ; $6F22: $FE $44
    cp $5C                                        ; $6F24: $FE $5C
    ld a, [hl]                                    ; $6F26: $7E
    add b                                         ; $6F27: $80
    ld a, [hl]                                    ; $6F28: $7E
    sbc h                                         ; $6F29: $9C
    ld a, [hl]                                    ; $6F2A: $7E
    add b                                         ; $6F2B: $80
    ld a, h                                       ; $6F2C: $7C
    sbc b                                         ; $6F2D: $98
    ld a, b                                       ; $6F2E: $78
    add b                                         ; $6F2F: $80
    add b                                         ; $6F30: $80
    nop                                           ; $6F31: $00
    nop                                           ; $6F32: $00
    nop                                           ; $6F33: $00
    nop                                           ; $6F34: $00
    nop                                           ; $6F35: $00
    add b                                         ; $6F36: $80
    nop                                           ; $6F37: $00
    add b                                         ; $6F38: $80
    nop                                           ; $6F39: $00
    ld b, b                                       ; $6F3A: $40
    add b                                         ; $6F3B: $80
    ld b, b                                       ; $6F3C: $40
    add b                                         ; $6F3D: $80
    add b                                         ; $6F3E: $80
    nop                                           ; $6F3F: $00
    ldh a, [rP1]                                  ; $6F40: $F0 $00
    ld e, [hl]                                    ; $6F42: $5E
    and b                                         ; $6F43: $A0
    cp $04                                        ; $6F44: $FE $04
    ld e, [hl]                                    ; $6F46: $5E
    and h                                         ; $6F47: $A4
    rst RST_20                                    ; $6F48: $E7
    ld a, [de]                                    ; $6F49: $1A
    add a                                         ; $6F4A: $87
    ld a, d                                       ; $6F4B: $7A
    rst RST_00                                    ; $6F4C: $C7
    cp d                                          ; $6F4D: $BA
    jp $C3BD                                      ; $6F4E: $C3 $BD $C3


    cp l                                          ; $6F51: $BD
    db $E3                                        ; $6F52: $E3
    ld e, l                                       ; $6F53: $5D
    pop hl                                        ; $6F54: $E1
    ld e, [hl]                                    ; $6F55: $5E
    ld [hl], a                                    ; $6F56: $77
    jr z, jr_016_6FD2                             ; $6F57: $28 $79

    ld h, $70                                     ; $6F59: $26 $70
    rrca                                          ; $6F5B: $0F
    db $10                                        ; $6F5C: $10
    rrca                                          ; $6F5D: $0F
    rra                                           ; $6F5E: $1F
    nop                                           ; $6F5F: $00
    add b                                         ; $6F60: $80
    nop                                           ; $6F61: $00
    add b                                         ; $6F62: $80
    nop                                           ; $6F63: $00
    add b                                         ; $6F64: $80
    nop                                           ; $6F65: $00
    ret nz                                        ; $6F66: $C0

    add b                                         ; $6F67: $80
    ret nz                                        ; $6F68: $C0

    add b                                         ; $6F69: $80
    add b                                         ; $6F6A: $80
    nop                                           ; $6F6B: $00
    add b                                         ; $6F6C: $80
    nop                                           ; $6F6D: $00
    ld b, b                                       ; $6F6E: $40
    add b                                         ; $6F6F: $80
    ret nz                                        ; $6F70: $C0

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
    nop                                           ; $6F9C: $00
    nop                                           ; $6F9D: $00
    db $FC                                        ; $6F9E: $FC
    nop                                           ; $6F9F: $00
    ld bc, $0301                                  ; $6FA0: $01 $01 $03
    inc bc                                        ; $6FA3: $03
    inc bc                                        ; $6FA4: $03
    inc bc                                        ; $6FA5: $03
    rlca                                          ; $6FA6: $07
    rlca                                          ; $6FA7: $07
    ld b, $06                                     ; $6FA8: $06 $06
    inc b                                         ; $6FAA: $04
    inc b                                         ; $6FAB: $04
    nop                                           ; $6FAC: $00
    inc b                                         ; $6FAD: $04
    ld [$0F08], sp                                ; $6FAE: $08 $08 $0F
    rrca                                          ; $6FB1: $0F
    ld a, [de]                                    ; $6FB2: $1A
    rrca                                          ; $6FB3: $0F
    jr nc, jr_016_6FD5                            ; $6FB4: $30 $1F

    jr nc, @+$21                                  ; $6FB6: $30 $1F

    inc sp                                        ; $6FB8: $33
    inc e                                         ; $6FB9: $1C
    scf                                           ; $6FBA: $37
    jr jr_016_6FEB                                ; $6FBB: $18 $2E

    dec e                                         ; $6FBD: $1D
    ld a, [hl+]                                   ; $6FBE: $2A
    dec d                                         ; $6FBF: $15
    ld [de], a                                    ; $6FC0: $12
    dec c                                         ; $6FC1: $0D
    ld bc, $001A                                  ; $6FC2: $01 $1A $00
    rrca                                          ; $6FC5: $0F
    nop                                           ; $6FC6: $00
    rrca                                          ; $6FC7: $0F
    nop                                           ; $6FC8: $00
    rrca                                          ; $6FC9: $0F
    nop                                           ; $6FCA: $00
    rlca                                          ; $6FCB: $07
    inc b                                         ; $6FCC: $04
    rlca                                          ; $6FCD: $07
    inc b                                         ; $6FCE: $04
    rlca                                          ; $6FCF: $07
    nop                                           ; $6FD0: $00
    inc bc                                        ; $6FD1: $03

jr_016_6FD2:
    nop                                           ; $6FD2: $00
    inc bc                                        ; $6FD3: $03
    nop                                           ; $6FD4: $00

jr_016_6FD5:
    ld bc, $0000                                  ; $6FD5: $01 $00 $00
    ld bc, $0101                                  ; $6FD8: $01 $01 $01
    ld bc, $0000                                  ; $6FDB: $01 $00 $00
    nop                                           ; $6FDE: $00
    nop                                           ; $6FDF: $00
    jr jr_016_6FFA                                ; $6FE0: $18 $18

    db $10                                        ; $6FE2: $10
    db $10                                        ; $6FE3: $10
    and c                                         ; $6FE4: $A1
    and c                                         ; $6FE5: $A1
    rst RST_20                                    ; $6FE6: $E7
    rst RST_20                                    ; $6FE7: $E7
    rst RST_08                                    ; $6FE8: $CF
    rst RST_08                                    ; $6FE9: $CF
    rst RST_18                                    ; $6FEA: $DF

jr_016_6FEB:
    rst RST_18                                    ; $6FEB: $DF
    di                                            ; $6FEC: $F3
    di                                            ; $6FED: $F3
    dec sp                                        ; $6FEE: $3B
    ld a, e                                       ; $6FEF: $7B
    dec bc                                        ; $6FF0: $0B
    db $DB                                        ; $6FF1: $DB
    inc bc                                        ; $6FF2: $03
    adc e                                         ; $6FF3: $8B
    rra                                           ; $6FF4: $1F
    ld [bc], a                                    ; $6FF5: $02
    rra                                           ; $6FF6: $1F
    ld c, $97                                     ; $6FF7: $0E $97
    adc a                                         ; $6FF9: $8F

jr_016_6FFA:
    rst RST_38                                    ; $6FFA: $FF
    rst RST_08                                    ; $6FFB: $CF
    ld e, a                                       ; $6FFC: $5F
    ld hl, sp+$1E                                 ; $6FFD: $F8 $1E
    db $FD                                        ; $6FFF: $FD
    ccf                                           ; $7000: $3F
    rst RST_38                                    ; $7001: $FF
    ld l, a                                       ; $7002: $6F
    cp $0F                                        ; $7003: $FE $0F
    db $FC                                        ; $7005: $FC
    ld d, $F8                                     ; $7006: $16 $F8
    reti                                          ; $7008: $D9


    ld hl, $3707                                  ; $7009: $21 $07 $37
    inc bc                                        ; $700C: $03
    sub e                                         ; $700D: $93
    ld bc, $0183                                  ; $700E: $01 $83 $01
    adc e                                         ; $7011: $8B
    nop                                           ; $7012: $00
    jp $F313                                      ; $7013: $C3 $13 $F3


    rst RST_28                                    ; $7016: $EF
    rst RST_28                                    ; $7017: $EF
    ld a, [hl]                                    ; $7018: $7E
    db $FC                                        ; $7019: $FC
    cp e                                          ; $701A: $BB
    cp h                                          ; $701B: $BC
    sbc a                                         ; $701C: $9F
    sbc b                                         ; $701D: $98

jr_016_701E:
    set 0, h                                      ; $701E: $CB $C4

jr_016_7020:
    ld hl, $4120                                  ; $7020: $21 $20 $41
    ld b, b                                       ; $7023: $40
    jp $83C1                                      ; $7024: $C3 $C1 $83


    add c                                         ; $7027: $81
    add [hl]                                      ; $7028: $86
    add e                                         ; $7029: $83
    adc a                                         ; $702A: $8F
    add b                                         ; $702B: $80
    sbc h                                         ; $702C: $9C
    adc e                                         ; $702D: $8B
    ld a, $0D                                     ; $702E: $3E $0D
    ld a, a                                       ; $7030: $7F
    ld a, $7F                                     ; $7031: $3E $7F
    ld a, b                                       ; $7033: $78
    cp a                                          ; $7034: $BF
    ld d, $62                                     ; $7035: $16 $62
    cp l                                          ; $7037: $BD
    di                                            ; $7038: $F3
    call z, $89F7                                 ; $7039: $CC $F7 $89
    rst RST_38                                    ; $703C: $FF
    nop                                           ; $703D: $00
    ld a, h                                       ; $703E: $7C
    or a                                          ; $703F: $B7
    ldh a, [$FFEF]                                ; $7040: $F0 $EF
    pop hl                                        ; $7042: $E1
    sbc $E3                                       ; $7043: $DE $E3
    inc e                                         ; $7045: $1C
    db $E3                                        ; $7046: $E3
    ld e, l                                       ; $7047: $5D
    rst RST_20                                    ; $7048: $E7
    ld e, c                                       ; $7049: $59
    rst RST_38                                    ; $704A: $FF
    pop hl                                        ; $704B: $E1
    pop af                                        ; $704C: $F1
    xor $E0                                       ; $704D: $EE $E0
    rst RST_18                                    ; $704F: $DF
    ret nz                                        ; $7050: $C0

    cp a                                          ; $7051: $BF
    ldh [$FF7F], a                                ; $7052: $E0 $7F
    ld hl, sp+$1F                                 ; $7054: $F8 $1F
    sbc [hl]                                      ; $7056: $9E
    rlca                                          ; $7057: $07
    ld b, a                                       ; $7058: $47
    add c                                         ; $7059: $81
    ld b, c                                       ; $705A: $41
    add b                                         ; $705B: $80
    jr nz, jr_016_701E                            ; $705C: $20 $C0

    jr nz, jr_016_7020                            ; $705E: $20 $C0

    ld a, l                                       ; $7060: $7D
    xor a                                         ; $7061: $AF
    rst RST_38                                    ; $7062: $FF
    rst RST_38                                    ; $7063: $FF
    rst RST_18                                    ; $7064: $DF
    ccf                                           ; $7065: $3F
    rst RST_30                                    ; $7066: $F7
    ld a, e                                       ; $7067: $7B
    rst RST_30                                    ; $7068: $F7
    ei                                            ; $7069: $FB
    rst RST_38                                    ; $706A: $FF
    rst RST_30                                    ; $706B: $F7
    rst RST_38                                    ; $706C: $FF
    sub b                                         ; $706D: $90
    ld a, a                                       ; $706E: $7F
    inc a                                         ; $706F: $3C
    db $FC                                        ; $7070: $FC
    db $DB                                        ; $7071: $DB
    db $FC                                        ; $7072: $FC
    rst RST_38                                    ; $7073: $FF
    db $FC                                        ; $7074: $FC
    db $E3                                        ; $7075: $E3
    db $FC                                        ; $7076: $FC
    ei                                            ; $7077: $FB
    db $FC                                        ; $7078: $FC
    ei                                            ; $7079: $FB
    rst RST_38                                    ; $707A: $FF
    add sp, -$03                                  ; $707B: $E8 $FD
    ld hl, sp-$01                                 ; $707D: $F8 $FF
    ld hl, sp-$11                                 ; $707F: $F8 $EF
    rst RST_28                                    ; $7081: $EF
    rst RST_00                                    ; $7082: $C7
    rst RST_00                                    ; $7083: $C7
    ld b, e                                       ; $7084: $43
    ld b, e                                       ; $7085: $43
    inc bc                                        ; $7086: $03
    ld bc, $0102                                  ; $7087: $01 $02 $01
    ld [bc], a                                    ; $708A: $02
    ld bc, $0106                                  ; $708B: $01 $06 $01
    ld a, [bc]                                    ; $708E: $0A
    dec b                                         ; $708F: $05
    ld de, $1F0E                                  ; $7090: $11 $0E $1F
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
    rst RST_38                                    ; $70A0: $FF
    ld sp, hl                                     ; $70A1: $F9
    rst RST_38                                    ; $70A2: $FF
    ld sp, hl                                     ; $70A3: $F9
    db $FD                                        ; $70A4: $FD
    ld hl, sp-$07                                 ; $70A5: $F8 $F9
    ld [hl], b                                    ; $70A7: $70
    ld sp, hl                                     ; $70A8: $F9
    ld [hl], b                                    ; $70A9: $70
    ld hl, sp+$70                                 ; $70AA: $F8 $70
    db $FC                                        ; $70AC: $FC
    ld a, b                                       ; $70AD: $78
    db $FC                                        ; $70AE: $FC
    ld a, b                                       ; $70AF: $78
    db $FC                                        ; $70B0: $FC
    nop                                           ; $70B1: $00
    nop                                           ; $70B2: $00
    nop                                           ; $70B3: $00
    nop                                           ; $70B4: $00
    nop                                           ; $70B5: $00
    nop                                           ; $70B6: $00
    nop                                           ; $70B7: $00
    nop                                           ; $70B8: $00
    nop                                           ; $70B9: $00
    nop                                           ; $70BA: $00
    nop                                           ; $70BB: $00
    nop                                           ; $70BC: $00
    nop                                           ; $70BD: $00
    nop                                           ; $70BE: $00
    nop                                           ; $70BF: $00
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
    rrca                                          ; $70CC: $0F
    nop                                           ; $70CD: $00
    rra                                           ; $70CE: $1F
    ld b, $3F                                     ; $70CF: $06 $3F
    ld a, [bc]                                    ; $70D1: $0A
    ccf                                           ; $70D2: $3F
    db $10                                        ; $70D3: $10

jr_016_70D4:
    ccf                                           ; $70D4: $3F
    inc c                                         ; $70D5: $0C
    ccf                                           ; $70D6: $3F
    db $10                                        ; $70D7: $10
    ccf                                           ; $70D8: $3F
    inc c                                         ; $70D9: $0C
    ccf                                           ; $70DA: $3F
    db $10                                        ; $70DB: $10
    ld e, $01                                     ; $70DC: $1E $01
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
    rra                                           ; $70EA: $1F
    nop                                           ; $70EB: $00
    inc de                                        ; $70EC: $13
    inc c                                         ; $70ED: $0C
    rla                                           ; $70EE: $17
    dec bc                                        ; $70EF: $0B
    rst RST_38                                    ; $70F0: $FF
    inc bc                                        ; $70F1: $03
    rrca                                          ; $70F2: $0F
    ldh a, [rNR34]                                ; $70F3: $F0 $1E
    db $ED                                        ; $70F5: $ED
    rra                                           ; $70F6: $1F
    db $ED                                        ; $70F7: $ED
    rra                                           ; $70F8: $1F
    xor $0F                                       ; $70F9: $EE $0F
    ldh a, [rTMA]                                 ; $70FB: $F0 $06
    ld hl, sp-$08                                 ; $70FD: $F8 $F8
    nop                                           ; $70FF: $00

jr_016_7100:
    ld bc, $0100                                  ; $7100: $01 $00 $01
    nop                                           ; $7103: $00
    inc bc                                        ; $7104: $03
    ld bc, $0103                                  ; $7105: $01 $03 $01
    ld b, $03                                     ; $7108: $06 $03
    rrca                                          ; $710A: $0F
    nop                                           ; $710B: $00
    inc e                                         ; $710C: $1C
    dec bc                                        ; $710D: $0B
    ld a, $09                                     ; $710E: $3E $09
    ld a, a                                       ; $7110: $7F
    ld l, $3F                                     ; $7111: $2E $3F
    jr jr_016_70D4                                ; $7113: $18 $BF

    ld b, $62                                     ; $7115: $06 $62
    sbc l                                         ; $7117: $9D
    or e                                          ; $7118: $B3
    ld c, h                                       ; $7119: $4C
    rst RST_30                                    ; $711A: $F7
    adc c                                         ; $711B: $89
    rst RST_38                                    ; $711C: $FF
    nop                                           ; $711D: $00
    ld a, h                                       ; $711E: $7C
    or a                                          ; $711F: $B7
    ldh a, [$FFEF]                                ; $7120: $F0 $EF
    pop hl                                        ; $7122: $E1
    sbc $E3                                       ; $7123: $DE $E3
    inc e                                         ; $7125: $1C
    db $E3                                        ; $7126: $E3
    ld e, l                                       ; $7127: $5D
    rst RST_20                                    ; $7128: $E7
    ld e, c                                       ; $7129: $59
    rst RST_38                                    ; $712A: $FF
    pop hl                                        ; $712B: $E1
    pop af                                        ; $712C: $F1
    xor $E0                                       ; $712D: $EE $E0
    rst RST_18                                    ; $712F: $DF
    ret nz                                        ; $7130: $C0

    cp a                                          ; $7131: $BF
    ldh [$FF7F], a                                ; $7132: $E0 $7F
    ld hl, sp+$1F                                 ; $7134: $F8 $1F
    sbc [hl]                                      ; $7136: $9E
    rlca                                          ; $7137: $07
    ld b, a                                       ; $7138: $47
    add c                                         ; $7139: $81
    ld b, c                                       ; $713A: $41
    add b                                         ; $713B: $80
    jr nz, @-$3E                                  ; $713C: $20 $C0

    jr nz, jr_016_7100                            ; $713E: $20 $C0

    ld a, c                                       ; $7140: $79
    xor a                                         ; $7141: $AF
    rst RST_38                                    ; $7142: $FF
    adc $CF                                       ; $7143: $CE $CF
    ld sp, $7BB7                                  ; $7145: $31 $B7 $7B
    or a                                          ; $7148: $B7
    ld a, e                                       ; $7149: $7B
    ld a, a                                       ; $714A: $7F
    scf                                           ; $714B: $37
    ld a, a                                       ; $714C: $7F
    nop                                           ; $714D: $00
    ld a, a                                       ; $714E: $7F
    inc a                                         ; $714F: $3C
    cp h                                          ; $7150: $BC
    ld e, e                                       ; $7151: $5B
    cp h                                          ; $7152: $BC
    ld e, e                                       ; $7153: $5B
    sbc h                                         ; $7154: $9C
    ld h, e                                       ; $7155: $63
    adc h                                         ; $7156: $8C
    ld [hl], e                                    ; $7157: $73
    adc h                                         ; $7158: $8C
    ld [hl], e                                    ; $7159: $73
    ei                                            ; $715A: $FB
    nop                                           ; $715B: $00
    db $FD                                        ; $715C: $FD
    ld a, b                                       ; $715D: $78
    rst RST_38                                    ; $715E: $FF
    ld a, b                                       ; $715F: $78
    ld b, $00                                     ; $7160: $06 $00
    dec bc                                        ; $7162: $0B
    inc b                                         ; $7163: $04
    rrca                                          ; $7164: $0F
    nop                                           ; $7165: $00
    dec bc                                        ; $7166: $0B
    inc b                                         ; $7167: $04
    ld b, $01                                     ; $7168: $06 $01
    ld [bc], a                                    ; $716A: $02
    ld bc, $0102                                  ; $716B: $01 $02 $01
    ld [bc], a                                    ; $716E: $02
    ld bc, $0102                                  ; $716F: $01 $02 $01
    ld [bc], a                                    ; $7172: $02
    ld bc, $0106                                  ; $7173: $01 $06 $01
    ld a, [bc]                                    ; $7176: $0A
    dec b                                         ; $7177: $05
    ld de, $1F0E                                  ; $7178: $11 $0E $1F
    nop                                           ; $717B: $00
    nop                                           ; $717C: $00
    nop                                           ; $717D: $00
    nop                                           ; $717E: $00
    nop                                           ; $717F: $00
    rst RST_38                                    ; $7180: $FF
    ld a, c                                       ; $7181: $79
    rst RST_38                                    ; $7182: $FF
    ld a, c                                       ; $7183: $79
    db $FD                                        ; $7184: $FD
    ld a, b                                       ; $7185: $78
    ld sp, hl                                     ; $7186: $F9
    ld [hl], b                                    ; $7187: $70
    ld sp, hl                                     ; $7188: $F9
    ld [hl], b                                    ; $7189: $70
    ld hl, sp+$70                                 ; $718A: $F8 $70
    db $FC                                        ; $718C: $FC
    ld a, b                                       ; $718D: $78
    db $FC                                        ; $718E: $FC
    ld a, b                                       ; $718F: $78
    db $FC                                        ; $7190: $FC
    nop                                           ; $7191: $00
    nop                                           ; $7192: $00
    nop                                           ; $7193: $00
    nop                                           ; $7194: $00
    nop                                           ; $7195: $00
    nop                                           ; $7196: $00
    nop                                           ; $7197: $00
    nop                                           ; $7198: $00
    nop                                           ; $7199: $00
    nop                                           ; $719A: $00
    nop                                           ; $719B: $00
    nop                                           ; $719C: $00
    nop                                           ; $719D: $00
    nop                                           ; $719E: $00
    nop                                           ; $719F: $00
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
    inc bc                                        ; $71AE: $03
    nop                                           ; $71AF: $00
    inc b                                         ; $71B0: $04
    inc bc                                        ; $71B1: $03
    jr @+$09                                      ; $71B2: $18 $07

    jr c, jr_016_71CD                             ; $71B4: $38 $17

    ld a, c                                       ; $71B6: $79
    ld h, $6E                                     ; $71B7: $26 $6E
    ld bc, $030C                                  ; $71B9: $01 $0C $03
    rrca                                          ; $71BC: $0F
    inc b                                         ; $71BD: $04
    inc c                                         ; $71BE: $0C
    nop                                           ; $71BF: $00
    nop                                           ; $71C0: $00
    nop                                           ; $71C1: $00
    ld bc, $0000                                  ; $71C2: $01 $00 $00
    nop                                           ; $71C5: $00
    ld a, [hl]                                    ; $71C6: $7E
    nop                                           ; $71C7: $00
    ld c, l                                       ; $71C8: $4D
    ld [hl-], a                                   ; $71C9: $32
    ld e, [hl]                                    ; $71CA: $5E
    dec l                                         ; $71CB: $2D
    rst RST_38                                    ; $71CC: $FF

jr_016_71CD:
    ld c, $3F                                     ; $71CD: $0E $3F
    ret nz                                        ; $71CF: $C0

    ld a, c                                       ; $71D0: $79
    or [hl]                                       ; $71D1: $B6
    ld a, l                                       ; $71D2: $7D
    or [hl]                                       ; $71D3: $B6
    ld a, a                                       ; $71D4: $7F
    cp e                                          ; $71D5: $BB
    cp e                                          ; $71D6: $BB
    ld b, b                                       ; $71D7: $40
    ld a, [de]                                    ; $71D8: $1A
    pop hl                                        ; $71D9: $E1
    ld [hl], d                                    ; $71DA: $72
    add c                                         ; $71DB: $81
    ld sp, hl                                     ; $71DC: $F9
    nop                                           ; $71DD: $00
    ld bc, $0000                                  ; $71DE: $01 $00 $00
    nop                                           ; $71E1: $00
    rlca                                          ; $71E2: $07
    nop                                           ; $71E3: $00
    rlca                                          ; $71E4: $07
    inc bc                                        ; $71E5: $03
    inc c                                         ; $71E6: $0C
    rlca                                          ; $71E7: $07
    inc c                                         ; $71E8: $0C
    rlca                                          ; $71E9: $07
    jr jr_016_71FB                                ; $71EA: $18 $0F

    inc a                                         ; $71EC: $3C
    inc bc                                        ; $71ED: $03
    ld [hl], d                                    ; $71EE: $72
    dec l                                         ; $71EF: $2D
    ld sp, hl                                     ; $71F0: $F9
    ld h, $FD                                     ; $71F1: $26 $FD
    cp d                                          ; $71F3: $BA
    db $FC                                        ; $71F4: $FC
    ld h, e                                       ; $71F5: $63
    db $FC                                        ; $71F6: $FC
    dec de                                        ; $71F7: $1B
    adc e                                         ; $71F8: $8B
    ld [hl], h                                    ; $71F9: $74
    rst RST_08                                    ; $71FA: $CF

jr_016_71FB:
    inc sp                                        ; $71FB: $33
    rst RST_18                                    ; $71FC: $DF
    daa                                           ; $71FD: $27
    rst RST_38                                    ; $71FE: $FF
    nop                                           ; $71FF: $00
    nop                                           ; $7200: $00
    nop                                           ; $7201: $00
    db $FC                                        ; $7202: $FC
    nop                                           ; $7203: $00
    ld hl, sp-$20                                 ; $7204: $F8 $E0
    ld hl, $23C0                                  ; $7206: $21 $C0 $23
    pop bc                                        ; $7209: $C1
    ld h, $C3                                     ; $720A: $26 $C3
    ld a, h                                       ; $720C: $7C
    add a                                         ; $720D: $87
    ret c                                         ; $720E: $D8

    rrca                                          ; $720F: $0F
    jr nc, jr_016_7231                            ; $7210: $30 $1F

    ld h, b                                       ; $7212: $60
    ccf                                           ; $7213: $3F
    rst RST_08                                    ; $7214: $CF
    ld [hl], b                                    ; $7215: $70
    or b                                          ; $7216: $B0
    ld c, a                                       ; $7217: $4F
    pop bc                                        ; $7218: $C1
    ld a, $C3                                     ; $7219: $3E $C3
    cp h                                          ; $721B: $BC
    add a                                         ; $721C: $87
    ld a, b                                       ; $721D: $78
    adc a                                         ; $721E: $8F
    ld [hl], b                                    ; $721F: $70
    nop                                           ; $7220: $00
    nop                                           ; $7221: $00
    ld a, a                                       ; $7222: $7F
    nop                                           ; $7223: $00
    cp $78                                        ; $7224: $FE $78
    add h                                         ; $7226: $84
    ld hl, sp+$04                                 ; $7227: $F8 $04
    ld hl, sp+$06                                 ; $7229: $F8 $06
    ld hl, sp+$04                                 ; $722B: $F8 $04
    ld hl, sp+$04                                 ; $722D: $F8 $04
    ld hl, sp+$0F                                 ; $722F: $F8 $0F

jr_016_7231:
    ldh a, [rNR32]                                ; $7231: $F0 $1C
    ldh [$FFE0], a                                ; $7233: $E0 $E0
    nop                                           ; $7235: $00
    cp $00                                        ; $7236: $FE $00
    ld hl, sp+$00                                 ; $7238: $F8 $00
    ldh [rP1], a                                  ; $723A: $E0 $00
    ret nz                                        ; $723C: $C0

    nop                                           ; $723D: $00
    ld a, a                                       ; $723E: $7F
    nop                                           ; $723F: $00
    di                                            ; $7240: $F3
    db $DD                                        ; $7241: $DD
    rst RST_20                                    ; $7242: $E7
    cp l                                          ; $7243: $BD
    rst RST_38                                    ; $7244: $FF
    dec sp                                        ; $7245: $3B
    ccf                                           ; $7246: $3F
    rst RST_00                                    ; $7247: $C7
    rst RST_18                                    ; $7248: $DF
    rst RST_28                                    ; $7249: $EF
    rst RST_18                                    ; $724A: $DF
    xor $FF                                       ; $724B: $EE $FF
    db $DD                                        ; $724D: $DD
    rst RST_38                                    ; $724E: $FF
    nop                                           ; $724F: $00
    cp $E0                                        ; $7250: $FE $E0
    ldh [c], a                                    ; $7252: $E2
    ld e, h                                       ; $7253: $5C
    pop hl                                        ; $7254: $E1
    ld e, [hl]                                    ; $7255: $5E
    ld h, c                                       ; $7256: $61
    sbc [hl]                                      ; $7257: $9E
    ld de, $17EE                                  ; $7258: $11 $EE $17
    add sp, -$13                                  ; $725B: $E8 $ED
    ld [bc], a                                    ; $725D: $02
    ld a, [$8FC5]                                 ; $725E: $FA $C5 $8F
    ld [hl], a                                    ; $7261: $77
    sbc a                                         ; $7262: $9F
    ld h, a                                       ; $7263: $67
    rst RST_38                                    ; $7264: $FF
    add [hl]                                      ; $7265: $86
    rst RST_00                                    ; $7266: $C7
    cp b                                          ; $7267: $B8
    add d                                         ; $7268: $82
    ld a, l                                       ; $7269: $7D
    inc bc                                        ; $726A: $03
    db $FC                                        ; $726B: $FC
    add b                                         ; $726C: $80
    rst RST_38                                    ; $726D: $FF
    ldh [$FF7F], a                                ; $726E: $E0 $7F
    ld a, b                                       ; $7270: $78
    rra                                           ; $7271: $1F
    ld e, $07                                     ; $7272: $1E $07
    rst RST_20                                    ; $7274: $E7
    ld bc, $0081                                  ; $7275: $01 $81 $00
    nop                                           ; $7278: $00
    nop                                           ; $7279: $00
    cp $00                                        ; $727A: $FE $00
    ld hl, sp+$40                                 ; $727C: $F8 $40
    ldh a, [rNR41]                                ; $727E: $F0 $20
    sbc h                                         ; $7280: $9C
    ld h, b                                       ; $7281: $60
    add [hl]                                      ; $7282: $86
    ld a, b                                       ; $7283: $78
    ld bc, $81FE                                  ; $7284: $01 $FE $81
    ld a, [hl]                                    ; $7287: $7E
    ld h, e                                       ; $7288: $63
    sbc l                                         ; $7289: $9D
    dec de                                        ; $728A: $1B
    push hl                                       ; $728B: $E5
    rst RST_00                                    ; $728C: $C7
    ld a, [hl-]                                   ; $728D: $3A
    scf                                           ; $728E: $37
    jp z, $C33F                                   ; $728F: $CA $3F $C3

    ld h, e                                       ; $7292: $63
    db $DD                                        ; $7293: $DD
    pop bc                                        ; $7294: $C1
    cp [hl]                                       ; $7295: $BE
    add c                                         ; $7296: $81
    ld a, [hl]                                    ; $7297: $7E
    ld a, [hl]                                    ; $7298: $7E
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
    nop                                           ; $72A4: $00
    nop                                           ; $72A5: $00
    cp $00                                        ; $72A6: $FE $00
    ld hl, sp-$20                                 ; $72A8: $F8 $E0
    ldh a, [rP1]                                  ; $72AA: $F0 $00
    ldh a, [rNR41]                                ; $72AC: $F0 $20
    db $FC                                        ; $72AE: $FC
    db $10                                        ; $72AF: $10
    ld hl, sp+$20                                 ; $72B0: $F8 $20
    ldh a, [rNR41]                                ; $72B2: $F0 $20
    or b                                          ; $72B4: $B0
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
    ld bc, $0200                                  ; $72C0: $01 $00 $02
    ld bc, $0102                                  ; $72C3: $01 $02 $01
    ld [bc], a                                    ; $72C6: $02
    ld bc, $0001                                  ; $72C7: $01 $01 $00
    dec c                                         ; $72CA: $0D
    nop                                           ; $72CB: $00
    dec bc                                        ; $72CC: $0B
    inc b                                         ; $72CD: $04
    dec bc                                        ; $72CE: $0B
    dec b                                         ; $72CF: $05
    rrca                                          ; $72D0: $0F
    ld bc, $040B                                  ; $72D1: $01 $0B $04

jr_016_72D4:
    dec b                                         ; $72D4: $05
    ld [bc], a                                    ; $72D5: $02
    dec b                                         ; $72D6: $05
    ld [bc], a                                    ; $72D7: $02
    ld [bc], a                                    ; $72D8: $02
    ld bc, $0102                                  ; $72D9: $01 $02 $01
    ld [bc], a                                    ; $72DC: $02
    ld bc, $0102                                  ; $72DD: $01 $02 $01
    db $FD                                        ; $72E0: $FD
    ld [$E8FF], a                                 ; $72E1: $EA $FF $E8
    cp $F5                                        ; $72E4: $FE $F5
    cp $F5                                        ; $72E6: $FE $F5
    rst RST_38                                    ; $72E8: $FF
    ld [hl], d                                    ; $72E9: $72
    rst RST_38                                    ; $72EA: $FF
    ld a, d                                       ; $72EB: $7A
    rst RST_38                                    ; $72EC: $FF
    ld a, c                                       ; $72ED: $79
    rst RST_38                                    ; $72EE: $FF
    ld a, c                                       ; $72EF: $79
    db $FD                                        ; $72F0: $FD
    ld h, b                                       ; $72F1: $60
    ldh [rP1], a                                  ; $72F2: $E0 $00
    ret nz                                        ; $72F4: $C0

    nop                                           ; $72F5: $00
    ldh a, [rP1]                                  ; $72F6: $F0 $00
    nop                                           ; $72F8: $00
    nop                                           ; $72F9: $00
    nop                                           ; $72FA: $00
    nop                                           ; $72FB: $00
    nop                                           ; $72FC: $00
    nop                                           ; $72FD: $00
    nop                                           ; $72FE: $00
    nop                                           ; $72FF: $00
    ldh a, [rNR41]                                ; $7300: $F0 $20
    jr c, jr_016_72D4                             ; $7302: $38 $D0

    ld a, $D0                                     ; $7304: $3E $D0
    inc e                                         ; $7306: $1C
    add sp, $1C                                   ; $7307: $E8 $1C
    add sp, $0E                                   ; $7309: $E8 $0E
    db $F4                                        ; $730B: $F4
    adc [hl]                                      ; $730C: $8E
    ld [hl], h                                    ; $730D: $74
    add [hl]                                      ; $730E: $86
    ld a, b                                       ; $730F: $78
    db $FC                                        ; $7310: $FC
    add b                                         ; $7311: $80
    rst RST_00                                    ; $7312: $C7
    jr c, jr_016_7357                             ; $7313: $38 $42

    inc a                                         ; $7315: $3C
    ld [hl+], a                                   ; $7316: $22
    inc e                                         ; $7317: $1C
    ld [hl+], a                                   ; $7318: $22
    inc e                                         ; $7319: $1C
    inc e                                         ; $731A: $1C
    nop                                           ; $731B: $00
    nop                                           ; $731C: $00
    nop                                           ; $731D: $00
    nop                                           ; $731E: $00
    nop                                           ; $731F: $00
    dec b                                         ; $7320: $05
    ld [bc], a                                    ; $7321: $02
    ld [$1007], sp                                ; $7322: $08 $07 $10
    rrca                                          ; $7325: $0F
    inc de                                        ; $7326: $13
    inc c                                         ; $7327: $0C
    inc e                                         ; $7328: $1C
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
    inc bc                                        ; $734E: $03
    nop                                           ; $734F: $00
    inc b                                         ; $7350: $04
    inc bc                                        ; $7351: $03
    jr @+$09                                      ; $7352: $18 $07

    jr c, jr_016_736D                             ; $7354: $38 $17

    ld a, c                                       ; $7356: $79

jr_016_7357:
    ld h, $6E                                     ; $7357: $26 $6E
    ld bc, $030C                                  ; $7359: $01 $0C $03
    rrca                                          ; $735C: $0F
    inc b                                         ; $735D: $04
    inc c                                         ; $735E: $0C
    nop                                           ; $735F: $00
    nop                                           ; $7360: $00
    nop                                           ; $7361: $00
    ld bc, $0000                                  ; $7362: $01 $00 $00
    nop                                           ; $7365: $00
    ld a, [hl]                                    ; $7366: $7E
    nop                                           ; $7367: $00
    ld c, l                                       ; $7368: $4D
    ld [hl-], a                                   ; $7369: $32
    ld e, [hl]                                    ; $736A: $5E
    dec l                                         ; $736B: $2D
    rst RST_38                                    ; $736C: $FF

jr_016_736D:
    ld c, $3F                                     ; $736D: $0E $3F
    ret nz                                        ; $736F: $C0

    ld a, c                                       ; $7370: $79
    or [hl]                                       ; $7371: $B6
    ld a, l                                       ; $7372: $7D
    or [hl]                                       ; $7373: $B6
    ld a, a                                       ; $7374: $7F
    cp e                                          ; $7375: $BB
    cp e                                          ; $7376: $BB
    ld b, b                                       ; $7377: $40
    ld a, [de]                                    ; $7378: $1A
    pop hl                                        ; $7379: $E1
    ld h, d                                       ; $737A: $62
    add c                                         ; $737B: $81
    add c                                         ; $737C: $81
    nop                                           ; $737D: $00
    ld bc, $0000                                  ; $737E: $01 $00 $00
    nop                                           ; $7381: $00
    rlca                                          ; $7382: $07
    nop                                           ; $7383: $00
    rlca                                          ; $7384: $07
    inc bc                                        ; $7385: $03
    inc c                                         ; $7386: $0C
    rlca                                          ; $7387: $07
    inc c                                         ; $7388: $0C
    rlca                                          ; $7389: $07
    jr jr_016_739B                                ; $738A: $18 $0F

    inc a                                         ; $738C: $3C
    inc bc                                        ; $738D: $03
    ld [hl], d                                    ; $738E: $72
    dec l                                         ; $738F: $2D
    ld sp, hl                                     ; $7390: $F9
    ld h, $FD                                     ; $7391: $26 $FD
    cp d                                          ; $7393: $BA
    db $FC                                        ; $7394: $FC
    ld h, e                                       ; $7395: $63
    db $FC                                        ; $7396: $FC
    dec de                                        ; $7397: $1B
    adc e                                         ; $7398: $8B
    ld [hl], h                                    ; $7399: $74
    rst RST_08                                    ; $739A: $CF

jr_016_739B:
    inc sp                                        ; $739B: $33
    rst RST_18                                    ; $739C: $DF
    daa                                           ; $739D: $27
    rst RST_38                                    ; $739E: $FF
    nop                                           ; $739F: $00
    nop                                           ; $73A0: $00
    nop                                           ; $73A1: $00
    ret nz                                        ; $73A2: $C0

    nop                                           ; $73A3: $00
    ldh [$FFC0], a                                ; $73A4: $E0 $C0
    ld hl, $23C0                                  ; $73A6: $21 $C0 $23
    pop bc                                        ; $73A9: $C1
    ld h, $C3                                     ; $73AA: $26 $C3
    ld c, h                                       ; $73AC: $4C
    add a                                         ; $73AD: $87
    sbc b                                         ; $73AE: $98
    rrca                                          ; $73AF: $0F
    jr nc, jr_016_73D1                            ; $73B0: $30 $1F

    ld h, b                                       ; $73B2: $60
    ccf                                           ; $73B3: $3F
    rst RST_08                                    ; $73B4: $CF
    ld [hl], b                                    ; $73B5: $70
    or b                                          ; $73B6: $B0
    ld c, a                                       ; $73B7: $4F
    pop bc                                        ; $73B8: $C1
    ld a, $C3                                     ; $73B9: $3E $C3
    cp h                                          ; $73BB: $BC
    add a                                         ; $73BC: $87
    ld a, b                                       ; $73BD: $78
    adc a                                         ; $73BE: $8F
    ld [hl], b                                    ; $73BF: $70
    nop                                           ; $73C0: $00
    nop                                           ; $73C1: $00
    ld a, b                                       ; $73C2: $78
    nop                                           ; $73C3: $00
    db $FC                                        ; $73C4: $FC
    ld a, b                                       ; $73C5: $78
    add h                                         ; $73C6: $84
    ld hl, sp+$04                                 ; $73C7: $F8 $04
    ld hl, sp+$04                                 ; $73C9: $F8 $04
    ld hl, sp+$04                                 ; $73CB: $F8 $04
    ld hl, sp+$04                                 ; $73CD: $F8 $04
    ld hl, sp+$08                                 ; $73CF: $F8 $08

jr_016_73D1:
    ldh a, [rNR10]                                ; $73D1: $F0 $10
    ldh [$FFE0], a                                ; $73D3: $E0 $E0
    nop                                           ; $73D5: $00
    ret nz                                        ; $73D6: $C0

    nop                                           ; $73D7: $00
    ret nz                                        ; $73D8: $C0

    nop                                           ; $73D9: $00
    add b                                         ; $73DA: $80
    nop                                           ; $73DB: $00
    add b                                         ; $73DC: $80
    nop                                           ; $73DD: $00
    ld h, b                                       ; $73DE: $60
    nop                                           ; $73DF: $00
    di                                            ; $73E0: $F3
    db $DD                                        ; $73E1: $DD
    rst RST_20                                    ; $73E2: $E7
    cp l                                          ; $73E3: $BD
    rst RST_38                                    ; $73E4: $FF
    dec sp                                        ; $73E5: $3B
    ccf                                           ; $73E6: $3F
    rst RST_00                                    ; $73E7: $C7
    rst RST_18                                    ; $73E8: $DF
    rst RST_28                                    ; $73E9: $EF
    rst RST_18                                    ; $73EA: $DF
    xor $FF                                       ; $73EB: $EE $FF
    db $DD                                        ; $73ED: $DD
    rst RST_38                                    ; $73EE: $FF
    nop                                           ; $73EF: $00
    cp $E0                                        ; $73F0: $FE $E0
    ldh [c], a                                    ; $73F2: $E2
    ld e, h                                       ; $73F3: $5C
    pop hl                                        ; $73F4: $E1
    ld e, [hl]                                    ; $73F5: $5E
    ld h, c                                       ; $73F6: $61
    sbc [hl]                                      ; $73F7: $9E
    ld de, $17EE                                  ; $73F8: $11 $EE $17
    add sp, -$13                                  ; $73FB: $E8 $ED
    ld [bc], a                                    ; $73FD: $02
    ld a, [$8FC5]                                 ; $73FE: $FA $C5 $8F
    ld [hl], a                                    ; $7401: $77
    sbc a                                         ; $7402: $9F
    ld h, a                                       ; $7403: $67
    rst RST_38                                    ; $7404: $FF
    add [hl]                                      ; $7405: $86
    rst RST_00                                    ; $7406: $C7
    cp b                                          ; $7407: $B8
    add d                                         ; $7408: $82
    ld a, l                                       ; $7409: $7D
    inc bc                                        ; $740A: $03
    db $FC                                        ; $740B: $FC
    add b                                         ; $740C: $80
    rst RST_38                                    ; $740D: $FF
    ldh [$FF7F], a                                ; $740E: $E0 $7F
    ld a, b                                       ; $7410: $78
    rra                                           ; $7411: $1F
    ld e, $07                                     ; $7412: $1E $07
    rlca                                          ; $7414: $07
    ld bc, $0001                                  ; $7415: $01 $01 $00
    nop                                           ; $7418: $00
    nop                                           ; $7419: $00
    ret nz                                        ; $741A: $C0

    nop                                           ; $741B: $00
    ldh [rLCDC], a                                ; $741C: $E0 $40
    ldh a, [rNR41]                                ; $741E: $F0 $20
    sbc b                                         ; $7420: $98
    ld h, b                                       ; $7421: $60
    add [hl]                                      ; $7422: $86
    ld a, b                                       ; $7423: $78
    ld bc, $81FE                                  ; $7424: $01 $FE $81
    ld a, [hl]                                    ; $7427: $7E
    ld h, e                                       ; $7428: $63
    sbc l                                         ; $7429: $9D
    dec de                                        ; $742A: $1B
    push hl                                       ; $742B: $E5
    rst RST_00                                    ; $742C: $C7
    ld a, [hl-]                                   ; $742D: $3A
    scf                                           ; $742E: $37
    jp z, $C33F                                   ; $742F: $CA $3F $C3

    ld h, e                                       ; $7432: $63
    db $DD                                        ; $7433: $DD
    pop bc                                        ; $7434: $C1
    cp [hl]                                       ; $7435: $BE
    add c                                         ; $7436: $81
    ld a, [hl]                                    ; $7437: $7E
    ld a, [hl]                                    ; $7438: $7E
    nop                                           ; $7439: $00
    nop                                           ; $743A: $00
    nop                                           ; $743B: $00
    nop                                           ; $743C: $00
    nop                                           ; $743D: $00
    nop                                           ; $743E: $00
    nop                                           ; $743F: $00
    nop                                           ; $7440: $00
    nop                                           ; $7441: $00
    nop                                           ; $7442: $00
    nop                                           ; $7443: $00
    nop                                           ; $7444: $00
    nop                                           ; $7445: $00
    ldh a, [rP1]                                  ; $7446: $F0 $00
    ldh a, [$FFE0]                                ; $7448: $F0 $E0
    ldh [rP1], a                                  ; $744A: $E0 $00
    ldh a, [rNR41]                                ; $744C: $F0 $20
    ld hl, sp+$10                                 ; $744E: $F8 $10
    ld hl, sp+$20                                 ; $7450: $F8 $20
    ldh a, [rNR41]                                ; $7452: $F0 $20
    or b                                          ; $7454: $B0
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
    nop                                           ; $745F: $00
    ld bc, $0200                                  ; $7460: $01 $00 $02
    ld bc, $0102                                  ; $7463: $01 $02 $01
    ld [bc], a                                    ; $7466: $02
    ld bc, $0001                                  ; $7467: $01 $01 $00
    dec c                                         ; $746A: $0D
    nop                                           ; $746B: $00
    dec bc                                        ; $746C: $0B
    inc b                                         ; $746D: $04
    dec bc                                        ; $746E: $0B
    dec b                                         ; $746F: $05
    rrca                                          ; $7470: $0F
    ld bc, $040B                                  ; $7471: $01 $0B $04

jr_016_7474:
    dec b                                         ; $7474: $05
    ld [bc], a                                    ; $7475: $02

jr_016_7476:
    dec b                                         ; $7476: $05
    ld [bc], a                                    ; $7477: $02
    ld [bc], a                                    ; $7478: $02
    ld bc, $0102                                  ; $7479: $01 $02 $01
    ld [bc], a                                    ; $747C: $02
    ld bc, $0102                                  ; $747D: $01 $02 $01
    db $FD                                        ; $7480: $FD
    ld [$E8FF], a                                 ; $7481: $EA $FF $E8
    cp $F5                                        ; $7484: $FE $F5
    cp $F5                                        ; $7486: $FE $F5
    rst RST_38                                    ; $7488: $FF
    ld [hl], d                                    ; $7489: $72
    rst RST_38                                    ; $748A: $FF
    ld a, d                                       ; $748B: $7A
    rst RST_38                                    ; $748C: $FF
    ld a, c                                       ; $748D: $79
    rst RST_38                                    ; $748E: $FF
    ld a, c                                       ; $748F: $79
    db $FD                                        ; $7490: $FD
    ld h, b                                       ; $7491: $60
    ldh [rP1], a                                  ; $7492: $E0 $00
    add b                                         ; $7494: $80
    nop                                           ; $7495: $00
    nop                                           ; $7496: $00
    nop                                           ; $7497: $00
    nop                                           ; $7498: $00
    nop                                           ; $7499: $00
    nop                                           ; $749A: $00
    nop                                           ; $749B: $00
    nop                                           ; $749C: $00
    nop                                           ; $749D: $00
    nop                                           ; $749E: $00
    nop                                           ; $749F: $00
    ldh a, [rNR41]                                ; $74A0: $F0 $20
    jr c, jr_016_7474                             ; $74A2: $38 $D0

    jr c, jr_016_7476                             ; $74A4: $38 $D0

    inc e                                         ; $74A6: $1C
    add sp, $1C                                   ; $74A7: $E8 $1C
    add sp, $0E                                   ; $74A9: $E8 $0E
    db $F4                                        ; $74AB: $F4
    adc [hl]                                      ; $74AC: $8E
    ld [hl], h                                    ; $74AD: $74
    add [hl]                                      ; $74AE: $86
    ld a, b                                       ; $74AF: $78
    db $FC                                        ; $74B0: $FC
    add b                                         ; $74B1: $80
    call nz, Call_016_4238                        ; $74B2: $C4 $38 $42
    inc a                                         ; $74B5: $3C
    ld [hl+], a                                   ; $74B6: $22
    inc e                                         ; $74B7: $1C
    ld [hl+], a                                   ; $74B8: $22
    inc e                                         ; $74B9: $1C
    inc e                                         ; $74BA: $1C
    nop                                           ; $74BB: $00
    nop                                           ; $74BC: $00
    nop                                           ; $74BD: $00
    nop                                           ; $74BE: $00
    nop                                           ; $74BF: $00
    dec b                                         ; $74C0: $05
    ld [bc], a                                    ; $74C1: $02
    ld [$1007], sp                                ; $74C2: $08 $07 $10
    rrca                                          ; $74C5: $0F
    inc de                                        ; $74C6: $13
    inc c                                         ; $74C7: $0C
    inc e                                         ; $74C8: $1C
    nop                                           ; $74C9: $00
    nop                                           ; $74CA: $00
    nop                                           ; $74CB: $00
    nop                                           ; $74CC: $00
    nop                                           ; $74CD: $00
    nop                                           ; $74CE: $00
    nop                                           ; $74CF: $00
    nop                                           ; $74D0: $00
    nop                                           ; $74D1: $00
    nop                                           ; $74D2: $00
    nop                                           ; $74D3: $00
    nop                                           ; $74D4: $00
    nop                                           ; $74D5: $00
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
    ld bc, $0D00                                  ; $74E8: $01 $00 $0D
    nop                                           ; $74EB: $00
    rrca                                          ; $74EC: $0F
    dec b                                         ; $74ED: $05
    ccf                                           ; $74EE: $3F
    ld bc, $153F                                  ; $74EF: $01 $3F $15
    rra                                           ; $74F2: $1F
    ld b, $3F                                     ; $74F3: $06 $3F
    ld d, $3E                                     ; $74F5: $16 $3E
    dec b                                         ; $74F7: $05
    ld e, $05                                     ; $74F8: $1E $05
    ld a, $15                                     ; $74FA: $3E $15
    ld e, $01                                     ; $74FC: $1E $01
    ld bc, $C000                                  ; $74FE: $01 $00 $C0
    nop                                           ; $7501: $00
    ret nz                                        ; $7502: $C0

    add b                                         ; $7503: $80
    ret nz                                        ; $7504: $C0

    add b                                         ; $7505: $80
    ret nz                                        ; $7506: $C0

    add b                                         ; $7507: $80
    add $80                                       ; $7508: $C6 $80
    push bc                                       ; $750A: $C5
    ld [bc], a                                    ; $750B: $02
    db $E4                                        ; $750C: $E4
    inc bc                                        ; $750D: $03
    inc e                                         ; $750E: $1C
    db $E3                                        ; $750F: $E3
    ld b, $F9                                     ; $7510: $06 $F9
    ld [bc], a                                    ; $7512: $02
    db $FD                                        ; $7513: $FD
    rlca                                          ; $7514: $07
    ld hl, sp+$07                                 ; $7515: $F8 $07
    ei                                            ; $7517: $FB
    rlca                                          ; $7518: $07
    ei                                            ; $7519: $FB
    swap b                                        ; $751A: $CB $30
    ld a, [hl-]                                   ; $751C: $3A
    ld bc, $0103                                  ; $751D: $01 $03 $01
    nop                                           ; $7520: $00
    nop                                           ; $7521: $00
    nop                                           ; $7522: $00
    nop                                           ; $7523: $00
    nop                                           ; $7524: $00
    nop                                           ; $7525: $00
    nop                                           ; $7526: $00
    nop                                           ; $7527: $00
    rrca                                          ; $7528: $0F
    nop                                           ; $7529: $00
    inc e                                         ; $752A: $1C
    dec bc                                        ; $752B: $0B
    cp $09                                        ; $752C: $FE $09
    ld a, a                                       ; $752E: $7F
    xor [hl]                                      ; $752F: $AE
    ld a, a                                       ; $7530: $7F
    sbc b                                         ; $7531: $98
    ccf                                           ; $7532: $3F
    add $22                                       ; $7533: $C6 $22
    db $DD                                        ; $7535: $DD
    or e                                          ; $7536: $B3
    ld c, h                                       ; $7537: $4C
    rst RST_30                                    ; $7538: $F7
    adc c                                         ; $7539: $89
    rst RST_38                                    ; $753A: $FF
    nop                                           ; $753B: $00
    ld a, h                                       ; $753C: $7C
    or a                                          ; $753D: $B7
    ld a, c                                       ; $753E: $79
    xor a                                         ; $753F: $AF
    nop                                           ; $7540: $00
    nop                                           ; $7541: $00
    nop                                           ; $7542: $00
    nop                                           ; $7543: $00
    nop                                           ; $7544: $00
    nop                                           ; $7545: $00
    nop                                           ; $7546: $00
    nop                                           ; $7547: $00
    rlca                                          ; $7548: $07
    nop                                           ; $7549: $00
    adc c                                         ; $754A: $89
    ld b, $51                                     ; $754B: $06 $51
    adc [hl]                                      ; $754D: $8E
    ld h, e                                       ; $754E: $63
    sbc h                                         ; $754F: $9C
    ld h, d                                       ; $7550: $62
    sbc l                                         ; $7551: $9D
    ld b, [hl]                                    ; $7552: $46
    cp c                                          ; $7553: $B9
    or $09                                        ; $7554: $F6 $09
    or $E9                                        ; $7556: $F6 $E9
    rst RST_28                                    ; $7558: $EF
    sub $EF                                       ; $7559: $D6 $EF
    ld d, $EF                                     ; $755B: $16 $EF
    ld d, h                                       ; $755D: $54
    cp $40                                        ; $755E: $FE $40
    nop                                           ; $7560: $00
    nop                                           ; $7561: $00
    inc c                                         ; $7562: $0C
    nop                                           ; $7563: $00
    ld c, $04                                     ; $7564: $0E $04
    rrca                                          ; $7566: $0F
    inc b                                         ; $7567: $04
    rrca                                          ; $7568: $0F
    dec b                                         ; $7569: $05
    rrca                                          ; $756A: $0F
    ld b, $3F                                     ; $756B: $06 $3F
    ld b, $CF                                     ; $756D: $06 $CF
    ld [hl], $07                                  ; $756F: $36 $07
    ei                                            ; $7571: $FB
    rlca                                          ; $7572: $07
    ei                                            ; $7573: $FB
    inc bc                                        ; $7574: $03
    db $FC                                        ; $7575: $FC
    ld [bc], a                                    ; $7576: $02
    db $FC                                        ; $7577: $FC
    ld b, $F8                                     ; $7578: $06 $F8
    jr @-$1E                                      ; $757A: $18 $E0

    ld h, b                                       ; $757C: $60
    add b                                         ; $757D: $80
    add b                                         ; $757E: $80
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
    ld b, b                                       ; $758A: $40
    nop                                           ; $758B: $00
    ldh [rLCDC], a                                ; $758C: $E0 $40
    ldh [rLCDC], a                                ; $758E: $E0 $40
    ldh [$FF80], a                                ; $7590: $E0 $80
    ld hl, sp-$40                                 ; $7592: $F8 $C0

jr_016_7594:
    ld hl, sp-$50                                 ; $7594: $F8 $B0

jr_016_7596:
    ldh a, [$FFC0]                                ; $7596: $F0 $C0
    ld hl, sp-$50                                 ; $7598: $F8 $B0
    ld hl, sp-$40                                 ; $759A: $F8 $C0
    ldh a, [$FFA0]                                ; $759C: $F0 $A0
    ldh a, [rP1]                                  ; $759E: $F0 $00
    rst RST_38                                    ; $75A0: $FF
    inc bc                                        ; $75A1: $03
    ld b, a                                       ; $75A2: $47
    jr c, jr_016_7620                             ; $75A3: $38 $7B

    dec a                                         ; $75A5: $3D
    ld a, e                                       ; $75A6: $7B
    dec a                                         ; $75A7: $3D
    ld a, e                                       ; $75A8: $7B
    dec a                                         ; $75A9: $3D
    ld a, a                                       ; $75AA: $7F
    nop                                           ; $75AB: $00
    ld a, a                                       ; $75AC: $7F
    inc a                                         ; $75AD: $3C
    cp h                                          ; $75AE: $BC
    ld e, e                                       ; $75AF: $5B
    cp h                                          ; $75B0: $BC
    ld e, e                                       ; $75B1: $5B
    sbc h                                         ; $75B2: $9C
    ld h, e                                       ; $75B3: $63
    adc h                                         ; $75B4: $8C
    ld [hl], e                                    ; $75B5: $73
    adc h                                         ; $75B6: $8C
    ld [hl], e                                    ; $75B7: $73
    ei                                            ; $75B8: $FB
    nop                                           ; $75B9: $00
    db $FD                                        ; $75BA: $FD
    ld a, b                                       ; $75BB: $78
    rst RST_38                                    ; $75BC: $FF
    ld a, b                                       ; $75BD: $78
    rst RST_38                                    ; $75BE: $FF
    ld a, c                                       ; $75BF: $79
    rst RST_38                                    ; $75C0: $FF
    cp h                                          ; $75C1: $BC
    db $FC                                        ; $75C2: $FC
    ld [hl], e                                    ; $75C3: $73
    ldh a, [$FFEF]                                ; $75C4: $F0 $EF

jr_016_75C6:
    ldh [$FFDF], a                                ; $75C6: $E0 $DF
    ld hl, sp-$61                                 ; $75C8: $F8 $9F
    sbc [hl]                                      ; $75CA: $9E
    rlca                                          ; $75CB: $07
    add a                                         ; $75CC: $87
    ld bc, $8041                                  ; $75CD: $01 $41 $80

jr_016_75D0:
    ld b, b                                       ; $75D0: $40
    add b                                         ; $75D1: $80
    jr nz, jr_016_7594                            ; $75D2: $20 $C0

    jr nz, jr_016_7596                            ; $75D4: $20 $C0

    ldh a, [rP1]                                  ; $75D6: $F0 $00
    ld e, [hl]                                    ; $75D8: $5E
    and b                                         ; $75D9: $A0
    cp $04                                        ; $75DA: $FE $04
    ld e, [hl]                                    ; $75DC: $5E
    and h                                         ; $75DD: $A4
    rst RST_20                                    ; $75DE: $E7
    ld a, [de]                                    ; $75DF: $1A
    add b                                         ; $75E0: $80
    nop                                           ; $75E1: $00
    ld h, b                                       ; $75E2: $60
    add b                                         ; $75E3: $80
    jr jr_016_75C6                                ; $75E4: $18 $E0

    ld b, $F8                                     ; $75E6: $06 $F8
    inc bc                                        ; $75E8: $03
    cp $03                                        ; $75E9: $FE $03
    cp $83                                        ; $75EB: $FE $83
    db $FC                                        ; $75ED: $FC
    and $7D                                       ; $75EE: $E6 $7D
    ld a, h                                       ; $75F0: $7C
    dec de                                        ; $75F1: $1B
    jr jr_016_75FB                                ; $75F2: $18 $07

    rlca                                          ; $75F4: $07
    nop                                           ; $75F5: $00
    nop                                           ; $75F6: $00
    nop                                           ; $75F7: $00
    nop                                           ; $75F8: $00
    nop                                           ; $75F9: $00
    nop                                           ; $75FA: $00

jr_016_75FB:
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
    nop                                           ; $7606: $00
    nop                                           ; $7607: $00
    add b                                         ; $7608: $80
    nop                                           ; $7609: $00
    ld b, b                                       ; $760A: $40
    add b                                         ; $760B: $80
    jr nz, @-$3E                                  ; $760C: $20 $C0

    jr nz, jr_016_75D0                            ; $760E: $20 $C0

    db $10                                        ; $7610: $10
    ldh [rNR10], a                                ; $7611: $E0 $10
    ldh [$FFE0], a                                ; $7613: $E0 $E0
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

jr_016_7620:
    inc a                                         ; $7620: $3C
    inc bc                                        ; $7621: $03
    ld e, a                                       ; $7622: $5F
    jr nz, jr_016_76A4                            ; $7623: $20 $7F

    inc bc                                        ; $7625: $03
    ld e, a                                       ; $7626: $5F
    inc hl                                        ; $7627: $23
    scf                                           ; $7628: $37
    dec bc                                        ; $7629: $0B
    rla                                           ; $762A: $17
    dec bc                                        ; $762B: $0B
    rla                                           ; $762C: $17
    dec bc                                        ; $762D: $0B
    rla                                           ; $762E: $17
    dec bc                                        ; $762F: $0B
    rla                                           ; $7630: $17
    dec bc                                        ; $7631: $0B

jr_016_7632:
    rla                                           ; $7632: $17
    dec bc                                        ; $7633: $0B

jr_016_7634:
    scf                                           ; $7634: $37
    dec bc                                        ; $7635: $0B
    ld d, a                                       ; $7636: $57
    dec hl                                        ; $7637: $2B
    adc a                                         ; $7638: $8F
    ld [hl], b                                    ; $7639: $70
    db $FC                                        ; $763A: $FC
    nop                                           ; $763B: $00
    nop                                           ; $763C: $00
    nop                                           ; $763D: $00
    nop                                           ; $763E: $00
    nop                                           ; $763F: $00
    db $FC                                        ; $7640: $FC
    set 5, [hl]                                   ; $7641: $CB $EE
    push bc                                       ; $7643: $C5
    adc $85                                       ; $7644: $CE $85
    adc $85                                       ; $7646: $CE $85
    rst RST_00                                    ; $7648: $C7
    add d                                         ; $7649: $82
    rst RST_20                                    ; $764A: $E7
    jp nz, $C1E3                                  ; $764B: $C2 $E3 $C1

    db $E3                                        ; $764E: $E3
    ld bc, $0003                                  ; $764F: $01 $03 $00
    nop                                           ; $7652: $00
    nop                                           ; $7653: $00
    nop                                           ; $7654: $00
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
    jr c, jr_016_7632                             ; $7660: $38 $D0

    jr c, jr_016_7634                             ; $7662: $38 $D0

    inc e                                         ; $7664: $1C
    add sp, $1C                                   ; $7665: $E8 $1C
    add sp, $1C                                   ; $7667: $E8 $1C
    add sp, $0E                                   ; $7669: $E8 $0E
    db $F4                                        ; $766B: $F4
    cp [hl]                                       ; $766C: $BE
    ld b, h                                       ; $766D: $44
    call z, $8430                                 ; $766E: $CC $30 $84
    ld a, b                                       ; $7671: $78
    add d                                         ; $7672: $82
    ld a, h                                       ; $7673: $7C
    cp $00                                        ; $7674: $FE $00
    nop                                           ; $7676: $00
    nop                                           ; $7677: $00
    nop                                           ; $7678: $00
    nop                                           ; $7679: $00
    nop                                           ; $767A: $00
    nop                                           ; $767B: $00
    nop                                           ; $767C: $00
    nop                                           ; $767D: $00
    nop                                           ; $767E: $00
    nop                                           ; $767F: $00
    inc e                                         ; $7680: $1C
    nop                                           ; $7681: $00
    ccf                                           ; $7682: $3F
    inc e                                         ; $7683: $1C
    inc hl                                        ; $7684: $23
    rra                                           ; $7685: $1F
    jr nz, jr_016_76A7                            ; $7686: $20 $1F

    jr nz, jr_016_76A9                            ; $7688: $20 $1F

    jr nz, @+$21                                  ; $768A: $20 $1F

jr_016_768C:
    jr nz, @+$21                                  ; $768C: $20 $1F

    call nc, $FF0B                                ; $768E: $D4 $0B $FF
    ld d, h                                       ; $7691: $54
    rst RST_38                                    ; $7692: $FF
    ld d, [hl]                                    ; $7693: $56
    rst RST_38                                    ; $7694: $FF
    nop                                           ; $7695: $00
    ld a, a                                       ; $7696: $7F
    rrca                                          ; $7697: $0F
    ld a, a                                       ; $7698: $7F
    cpl                                           ; $7699: $2F
    ccf                                           ; $769A: $3F
    rrca                                          ; $769B: $0F
    ccf                                           ; $769C: $3F
    ld bc, $003F                                  ; $769D: $01 $3F $00
    nop                                           ; $76A0: $00
    nop                                           ; $76A1: $00
    nop                                           ; $76A2: $00
    nop                                           ; $76A3: $00

jr_016_76A4:
    add b                                         ; $76A4: $80
    nop                                           ; $76A5: $00
    ret nz                                        ; $76A6: $C0

jr_016_76A7:
    add b                                         ; $76A7: $80
    ld h, b                                       ; $76A8: $60

jr_016_76A9:
    ret nz                                        ; $76A9: $C0

    jr nc, jr_016_768C                            ; $76AA: $30 $E0

    jr @-$0E                                      ; $76AC: $18 $F0

    adc a                                         ; $76AE: $8F
    ld a, b                                       ; $76AF: $78
    rst RST_00                                    ; $76B0: $C7
    cp d                                          ; $76B1: $BA
    di                                            ; $76B2: $F3
    adc l                                         ; $76B3: $8D
    rst RST_08                                    ; $76B4: $CF
    or c                                          ; $76B5: $B1
    db $DD                                        ; $76B6: $DD
    ld [hl+], a                                   ; $76B7: $22
    cp $8D                                        ; $76B8: $FE $8D
    rst RST_28                                    ; $76BA: $EF
    or [hl]                                       ; $76BB: $B6
    rst RST_38                                    ; $76BC: $FF
    or [hl]                                       ; $76BD: $B6

jr_016_76BE:
    rst RST_18                                    ; $76BE: $DF
    jr nz, @+$05                                  ; $76BF: $20 $03

    nop                                           ; $76C1: $00
    inc bc                                        ; $76C2: $03
    ld bc, $0306                                  ; $76C3: $01 $06 $03
    ld b, $03                                     ; $76C6: $06 $03
    inc c                                         ; $76C8: $0C
    rlca                                          ; $76C9: $07
    inc c                                         ; $76CA: $0C
    rlca                                          ; $76CB: $07
    ld hl, sp+$0F                                 ; $76CC: $F8 $0F
    ret z                                         ; $76CE: $C8

    or a                                          ; $76CF: $B7
    db $FC                                        ; $76D0: $FC
    adc e                                         ; $76D1: $8B
    db $FC                                        ; $76D2: $FC
    di                                            ; $76D3: $F3
    di                                            ; $76D4: $F3
    adc h                                         ; $76D5: $8C
    di                                            ; $76D6: $F3
    ld l, h                                       ; $76D7: $6C
    inc hl                                        ; $76D8: $23
    call c, $0BF7                                 ; $76D9: $DC $F7 $0B
    rst RST_08                                    ; $76DC: $CF
    or [hl]                                       ; $76DD: $B6
    rst RST_38                                    ; $76DE: $FF
    nop                                           ; $76DF: $00
    add b                                         ; $76E0: $80
    nop                                           ; $76E1: $00
    ret nz                                        ; $76E2: $C0

    add b                                         ; $76E3: $80
    ld b, b                                       ; $76E4: $40
    add b                                         ; $76E5: $80
    ld b, b                                       ; $76E6: $40
    add b                                         ; $76E7: $80
    ld b, b                                       ; $76E8: $40
    add b                                         ; $76E9: $80
    ld b, b                                       ; $76EA: $40
    add b                                         ; $76EB: $80
    ld b, b                                       ; $76EC: $40
    add b                                         ; $76ED: $80
    ld b, b                                       ; $76EE: $40
    add b                                         ; $76EF: $80
    add b                                         ; $76F0: $80
    nop                                           ; $76F1: $00
    add b                                         ; $76F2: $80
    nop                                           ; $76F3: $00
    nop                                           ; $76F4: $00
    nop                                           ; $76F5: $00
    ldh [rP1], a                                  ; $76F6: $E0 $00
    db $10                                        ; $76F8: $10
    ldh [$FF90], a                                ; $76F9: $E0 $90
    ld h, b                                       ; $76FB: $60
    jr nz, jr_016_76BE                            ; $76FC: $20 $C0

    halt                                          ; $76FE: $76
    add b                                         ; $76FF: $80
    ld [hl+], a                                   ; $7700: $22
    dec e                                         ; $7701: $1D
    ld [hl+], a                                   ; $7702: $22
    dec e                                         ; $7703: $1D
    ld [hl+], a                                   ; $7704: $22
    dec e                                         ; $7705: $1D
    ld [hl+], a                                   ; $7706: $22
    dec e                                         ; $7707: $1D
    ld [de], a                                    ; $7708: $12
    dec c                                         ; $7709: $0D
    dec de                                        ; $770A: $1B
    inc b                                         ; $770B: $04
    ld [hl], $19                                  ; $770C: $36 $19
    jr nc, jr_016_772F                            ; $770E: $30 $1F

    ld h, b                                       ; $7710: $60
    ccf                                           ; $7711: $3F
    ld h, [hl]                                    ; $7712: $66
    add hl, sp                                    ; $7713: $39
    db $EB                                        ; $7714: $EB
    inc [hl]                                      ; $7715: $34
    cp e                                          ; $7716: $BB
    ld d, l                                       ; $7717: $55
    sbc a                                         ; $7718: $9F
    ld h, c                                       ; $7719: $61
    adc e                                         ; $771A: $8B
    ld [hl], h                                    ; $771B: $74
    sbc l                                         ; $771C: $9D
    ld h, d                                       ; $771D: $62
    ld h, l                                       ; $771E: $65
    ld [bc], a                                    ; $771F: $02
    ld a, h                                       ; $7720: $7C
    adc e                                         ; $7721: $8B
    ld a, [hl]                                    ; $7722: $7E
    sbc e                                         ; $7723: $9B
    ld a, a                                       ; $7724: $7F
    sbc l                                         ; $7725: $9D
    ld a, a                                       ; $7726: $7F
    sbc [hl]                                      ; $7727: $9E
    ld e, a                                       ; $7728: $5F
    xor a                                         ; $7729: $AF
    adc a                                         ; $772A: $8F
    ld [hl], a                                    ; $772B: $77
    rra                                           ; $772C: $1F
    rst RST_30                                    ; $772D: $F7
    scf                                           ; $772E: $37

jr_016_772F:
    ldh [$FF7F], a                                ; $772F: $E0 $7F
    jp Jump_000_3DC3                              ; $7731: $C3 $C3 $3D


    pop bc                                        ; $7734: $C1
    ld a, $F1                                     ; $7735: $3E $F1
    adc $FE                                       ; $7737: $CE $FE
    ldh a, [$FFF8]                                ; $7739: $F0 $F8
    ldh a, [$FFF8]                                ; $773B: $F0 $F8
    ldh a, [$FFF8]                                ; $773D: $F0 $F8
    ldh a, [$FF79]                                ; $773F: $F0 $79
    or [hl]                                       ; $7741: $B6
    ld a, c                                       ; $7742: $79
    sub $FF                                       ; $7743: $D6 $FF
    adc $CE                                       ; $7745: $CE $CE
    ld sp, $79B6                                  ; $7747: $31 $B6 $79
    cp c                                          ; $774A: $B9
    ld [hl], b                                    ; $774B: $70
    ld hl, sp-$50                                 ; $774C: $F8 $B0
    db $FC                                        ; $774E: $FC
    nop                                           ; $774F: $00
    di                                            ; $7750: $F3
    db $EC                                        ; $7751: $EC
    rst RST_20                                    ; $7752: $E7
    ret c                                         ; $7753: $D8

    push hl                                       ; $7754: $E5
    jp c, Jump_000_18E7                           ; $7755: $DA $E7 $18

    dec e                                         ; $7758: $1D
    ld [bc], a                                    ; $7759: $02
    rrca                                          ; $775A: $0F
    inc b                                         ; $775B: $04
    ld c, $05                                     ; $775C: $0E $05
    rlca                                          ; $775E: $07
    ld [bc], a                                    ; $775F: $02
    ld c, a                                       ; $7760: $4F
    or d                                          ; $7761: $B2
    add a                                         ; $7762: $87
    ld a, d                                       ; $7763: $7A
    rlca                                          ; $7764: $07
    ld hl, sp+$07                                 ; $7765: $F8 $07
    ei                                            ; $7767: $FB
    rrca                                          ; $7768: $0F
    rst RST_30                                    ; $7769: $F7
    adc a                                         ; $776A: $8F
    ld [hl], a                                    ; $776B: $77

jr_016_776C:
    ld a, a                                       ; $776C: $7F
    rlca                                          ; $776D: $07
    rrca                                          ; $776E: $0F
    ld [bc], a                                    ; $776F: $02
    add e                                         ; $7770: $83
    ld bc, $00C1                                  ; $7771: $01 $C1 $00
    ld [hl], b                                    ; $7774: $70
    add b                                         ; $7775: $80
    ldh a, [rNR41]                                ; $7776: $F0 $20
    ld a, b                                       ; $7778: $78
    sub b                                         ; $7779: $90
    cp b                                          ; $777A: $B8
    ld d, b                                       ; $777B: $50
    inc e                                         ; $777C: $1C
    add sp, $1C                                   ; $777D: $E8 $1C
    add sp, $00                                   ; $777F: $E8 $00
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
    ld h, b                                       ; $778C: $60
    nop                                           ; $778D: $00
    ldh [rLCDC], a                                ; $778E: $E0 $40
    ldh [$FFC0], a                                ; $7790: $E0 $C0
    ldh a, [rP1]                                  ; $7792: $F0 $00
    ldh a, [$FFA0]                                ; $7794: $F0 $A0
    ldh a, [rP1]                                  ; $7796: $F0 $00
    ldh [rLCDC], a                                ; $7798: $E0 $40
    ldh [rP1], a                                  ; $779A: $E0 $00
    add b                                         ; $779C: $80
    nop                                           ; $779D: $00
    add b                                         ; $779E: $80
    nop                                           ; $779F: $00
    cp [hl]                                       ; $77A0: $BE
    ld e, h                                       ; $77A1: $5C
    cp a                                          ; $77A2: $BF
    ld e, [hl]                                    ; $77A3: $5E
    cp a                                          ; $77A4: $BF
    ld e, [hl]                                    ; $77A5: $5E
    cp a                                          ; $77A6: $BF
    ld e, [hl]                                    ; $77A7: $5E
    ld a, a                                       ; $77A8: $7F
    sbc b                                         ; $77A9: $98
    jr c, jr_016_776C                             ; $77AA: $38 $C0

jr_016_77AC:
    ldh [rP1], a                                  ; $77AC: $E0 $00
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
    pop hl                                        ; $77C0: $E1
    ld e, [hl]                                    ; $77C1: $5E
    ld [hl], c                                    ; $77C2: $71
    ld l, $70                                     ; $77C3: $2E $70
    cpl                                           ; $77C5: $2F
    dec sp                                        ; $77C6: $3B
    inc d                                         ; $77C7: $14
    inc a                                         ; $77C8: $3C
    inc de                                        ; $77C9: $13
    inc e                                         ; $77CA: $1C
    inc bc                                        ; $77CB: $03
    inc b                                         ; $77CC: $04
    inc bc                                        ; $77CD: $03
    rlca                                          ; $77CE: $07
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
    ret nz                                        ; $77E0: $C0

    add b                                         ; $77E1: $80
    ret nz                                        ; $77E2: $C0

    add b                                         ; $77E3: $80
    ldh [rLCDC], a                                ; $77E4: $E0 $40
    ldh [rP1], a                                  ; $77E6: $E0 $00
    ld b, b                                       ; $77E8: $40
    add b                                         ; $77E9: $80
    jr nz, jr_016_77AC                            ; $77EA: $20 $C0

    db $10                                        ; $77EC: $10
    ldh [$FFF0], a                                ; $77ED: $E0 $F0
    nop                                           ; $77EF: $00
    nop                                           ; $77F0: $00
    nop                                           ; $77F1: $00
    nop                                           ; $77F2: $00
    nop                                           ; $77F3: $00
    nop                                           ; $77F4: $00
    nop                                           ; $77F5: $00
    nop                                           ; $77F6: $00
    nop                                           ; $77F7: $00
    nop                                           ; $77F8: $00
    nop                                           ; $77F9: $00
    nop                                           ; $77FA: $00
    nop                                           ; $77FB: $00
    nop                                           ; $77FC: $00
    nop                                           ; $77FD: $00
    nop                                           ; $77FE: $00
    nop                                           ; $77FF: $00
    ld bc, $0200                                  ; $7800: $01 $00 $02
    ld bc, $0304                                  ; $7803: $01 $04 $03
    rlca                                          ; $7806: $07
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
    nop                                           ; $781B: $00
    nop                                           ; $781C: $00
    nop                                           ; $781D: $00
    nop                                           ; $781E: $00
    nop                                           ; $781F: $00
    nop                                           ; $7820: $00
    nop                                           ; $7821: $00
    inc e                                         ; $7822: $1C
    nop                                           ; $7823: $00
    ccf                                           ; $7824: $3F
    inc e                                         ; $7825: $1C
    inc sp                                        ; $7826: $33
    rra                                           ; $7827: $1F
    jr nc, jr_016_7849                            ; $7828: $30 $1F

    or h                                          ; $782A: $B4
    sbc a                                         ; $782B: $9F
    or h                                          ; $782C: $B4
    sbc a                                         ; $782D: $9F
    cp h                                          ; $782E: $BC
    sbc a                                         ; $782F: $9F
    db $DD                                        ; $7830: $DD
    rst RST_18                                    ; $7831: $DF
    xor e                                         ; $7832: $AB
    rst RST_38                                    ; $7833: $FF
    xor c                                         ; $7834: $A9
    rst RST_38                                    ; $7835: $FF
    rst RST_38                                    ; $7836: $FF
    rst RST_38                                    ; $7837: $FF
    ld [hl], b                                    ; $7838: $70
    ld a, a                                       ; $7839: $7F
    ld d, b                                       ; $783A: $50
    ld a, a                                       ; $783B: $7F
    jr nc, jr_016_787D                            ; $783C: $30 $3F

    jr nc, jr_016_787F                            ; $783E: $30 $3F

    ld b, b                                       ; $7840: $40
    nop                                           ; $7841: $00
    ld b, b                                       ; $7842: $40
    nop                                           ; $7843: $00
    ret nz                                        ; $7844: $C0

    nop                                           ; $7845: $00
    ret nz                                        ; $7846: $C0

    nop                                           ; $7847: $00
    ret nz                                        ; $7848: $C0

jr_016_7849:
    add b                                         ; $7849: $80
    ld h, h                                       ; $784A: $64
    ret nz                                        ; $784B: $C0

    or h                                          ; $784C: $B4
    ldh [$FF9C], a                                ; $784D: $E0 $9C
    ldh a, [$FF8F]                                ; $784F: $F0 $8F
    ld hl, sp+$45                                 ; $7851: $F8 $45
    ld a, [$CD72]                                 ; $7853: $FA $72 $CD
    ld c, [hl]                                    ; $7856: $4E
    pop af                                        ; $7857: $F1
    db $DD                                        ; $7858: $DD
    ldh [c], a                                    ; $7859: $E2
    ld [hl], d                                    ; $785A: $72
    call $F669                                    ; $785B: $CD $69 $F6
    ld a, c                                       ; $785E: $79
    or $04                                        ; $785F: $F6 $04
    nop                                           ; $7861: $00
    rlca                                          ; $7862: $07
    nop                                           ; $7863: $00
    rlca                                          ; $7864: $07
    ld bc, $0346                                  ; $7865: $01 $46 $03
    ld b, [hl]                                    ; $7868: $46
    inc bc                                        ; $7869: $03
    ld c, h                                       ; $786A: $4C
    rlca                                          ; $786B: $07
    ld l, h                                       ; $786C: $6C
    rlca                                          ; $786D: $07
    ld hl, sp+$0F                                 ; $786E: $F8 $0F
    ld a, b                                       ; $7870: $78
    or a                                          ; $7871: $B7
    ld [hl], l                                    ; $7872: $75
    adc e                                         ; $7873: $8B
    dec c                                         ; $7874: $0D
    di                                            ; $7875: $F3
    ld [hl], e                                    ; $7876: $73
    adc [hl]                                      ; $7877: $8E
    di                                            ; $7878: $F3
    ld l, [hl]                                    ; $7879: $6E
    ld hl, $E0DF                                  ; $787A: $21 $DF $E0

jr_016_787D:
    rra                                           ; $787D: $1F
    nop                                           ; $787E: $00

jr_016_787F:
    rst RST_38                                    ; $787F: $FF
    nop                                           ; $7880: $00
    nop                                           ; $7881: $00
    add b                                         ; $7882: $80
    nop                                           ; $7883: $00
    ret nz                                        ; $7884: $C0

    add b                                         ; $7885: $80
    ret nz                                        ; $7886: $C0

    add b                                         ; $7887: $80
    ret nz                                        ; $7888: $C0

    add b                                         ; $7889: $80
    ret nz                                        ; $788A: $C0

    add b                                         ; $788B: $80
    ret nz                                        ; $788C: $C0

    add b                                         ; $788D: $80
    ret nz                                        ; $788E: $C0

    add b                                         ; $788F: $80
    ret nz                                        ; $7890: $C0

    add b                                         ; $7891: $80
    sub b                                         ; $7892: $90
    nop                                           ; $7893: $00
    sub b                                         ; $7894: $90
    nop                                           ; $7895: $00
    jr nc, jr_016_7898                            ; $7896: $30 $00

jr_016_7898:
    ldh a, [rP1]                                  ; $7898: $F0 $00
    db $F4                                        ; $789A: $F4
    db $E4                                        ; $789B: $E4
    inc [hl]                                      ; $789C: $34
    db $E4                                        ; $789D: $E4
    ld h, [hl]                                    ; $789E: $66
    add $3F                                       ; $789F: $C6 $3F
    ccf                                           ; $78A1: $3F
    ld [hl-], a                                   ; $78A2: $32
    rra                                           ; $78A3: $1F
    ld [hl-], a                                   ; $78A4: $32
    rra                                           ; $78A5: $1F
    jr nc, jr_016_78C7                            ; $78A6: $30 $1F

    jr nc, jr_016_78C9                            ; $78A8: $30 $1F

    sbc b                                         ; $78AA: $98
    rrca                                          ; $78AB: $0F
    sbc b                                         ; $78AC: $98
    rrca                                          ; $78AD: $0F
    or b                                          ; $78AE: $B0
    rra                                           ; $78AF: $1F
    ldh [$FF3F], a                                ; $78B0: $E0 $3F
    ldh [$FF3F], a                                ; $78B2: $E0 $3F
    ret nz                                        ; $78B4: $C0

    ld a, a                                       ; $78B5: $7F
    ret nz                                        ; $78B6: $C0

    ld a, a                                       ; $78B7: $7F
    ret nz                                        ; $78B8: $C0

    ld a, a                                       ; $78B9: $7F
    ret nz                                        ; $78BA: $C0

    ld a, a                                       ; $78BB: $7F
    call c, $FE7F                                 ; $78BC: $DC $7F $FE
    ld h, e                                       ; $78BF: $63
    ret nc                                        ; $78C0: $D0

    rst RST_28                                    ; $78C1: $EF
    ldh a, [$FF8F]                                ; $78C2: $F0 $8F
    ldh a, [$FF9F]                                ; $78C4: $F0 $9F
    ld [hl], b                                    ; $78C6: $70

jr_016_78C7:
    rst RST_18                                    ; $78C7: $DF
    ld [hl], b                                    ; $78C8: $70

jr_016_78C9:
    rst RST_18                                    ; $78C9: $DF
    jr nz, @+$01                                  ; $78CA: $20 $FF

    nop                                           ; $78CC: $00
    rst RST_38                                    ; $78CD: $FF
    nop                                           ; $78CE: $00
    rst RST_38                                    ; $78CF: $FF
    nop                                           ; $78D0: $00
    rst RST_38                                    ; $78D1: $FF
    nop                                           ; $78D2: $00
    rst RST_38                                    ; $78D3: $FF
    ld bc, $0FFF                                  ; $78D4: $01 $FF $0F
    cp $1E                                        ; $78D7: $FE $1E
    ldh a, [rNR23]                                ; $78D9: $F0 $18
    ldh a, [rNR23]                                ; $78DB: $F0 $18
    ldh a, [rNR23]                                ; $78DD: $F0 $18
    ldh a, [rP1]                                  ; $78DF: $F0 $00
    rst RST_38                                    ; $78E1: $FF
    nop                                           ; $78E2: $00
    rst RST_38                                    ; $78E3: $FF
    nop                                           ; $78E4: $00
    rst RST_38                                    ; $78E5: $FF
    nop                                           ; $78E6: $00
    rst RST_38                                    ; $78E7: $FF
    ld b, $FF                                     ; $78E8: $06 $FF
    rrca                                          ; $78EA: $0F
    ld sp, hl                                     ; $78EB: $F9
    add hl, de                                    ; $78EC: $19
    ldh a, [$FF0C]                                ; $78ED: $F0 $0C
    ld hl, sp+$07                                 ; $78EF: $F8 $07
    db $FC                                        ; $78F1: $FC
    inc bc                                        ; $78F2: $03
    rst RST_38                                    ; $78F3: $FF
    ldh [rIE], a                                  ; $78F4: $E0 $FF
    ld hl, sp+$1F                                 ; $78F6: $F8 $1F

jr_016_78F8:
    inc e                                         ; $78F8: $1C
    rlca                                          ; $78F9: $07
    inc c                                         ; $78FA: $0C
    rlca                                          ; $78FB: $07
    inc c                                         ; $78FC: $0C
    rlca                                          ; $78FD: $07
    ld b, $03                                     ; $78FE: $06 $03

Jump_016_7900:
    halt                                          ; $7900: $76
    add $3D                                       ; $7901: $C6 $3D
    rst RST_30                                    ; $7903: $F7
    dec c                                         ; $7904: $0D
    rst RST_38                                    ; $7905: $FF
    rlca                                          ; $7906: $07
    rst RST_38                                    ; $7907: $FF
    inc b                                         ; $7908: $04
    rst RST_38                                    ; $7909: $FF
    adc b                                         ; $790A: $88
    rst RST_38                                    ; $790B: $FF
    ld hl, sp+$7F                                 ; $790C: $F8 $7F
    ld a, b                                       ; $790E: $78
    rrca                                          ; $790F: $0F
    sbc l                                         ; $7910: $9D
    rrca                                          ; $7911: $0F
    ldh a, [c]                                    ; $7912: $F2
    add e                                         ; $7913: $83
    ld [hl], c                                    ; $7914: $71
    pop hl                                        ; $7915: $E1
    jr nc, jr_016_78F8                            ; $7916: $30 $E0

    ld a, [de]                                    ; $7918: $1A
    ldh a, [rNR30]                                ; $7919: $F0 $1A
    ldh a, [$FF0E]                                ; $791B: $F0 $0E
    ld hl, sp+$0E                                 ; $791D: $F8 $0E
    ld hl, sp+$00                                 ; $791F: $F8 $00
    nop                                           ; $7921: $00
    nop                                           ; $7922: $00
    nop                                           ; $7923: $00
    nop                                           ; $7924: $00
    nop                                           ; $7925: $00
    nop                                           ; $7926: $00
    nop                                           ; $7927: $00
    nop                                           ; $7928: $00
    nop                                           ; $7929: $00
    jr nz, jr_016_794C                            ; $792A: $20 $20

    ld h, b                                       ; $792C: $60
    ld h, b                                       ; $792D: $60
    and b                                         ; $792E: $A0
    ldh [rNR41], a                                ; $792F: $E0 $20
    ldh [$FFF0], a                                ; $7931: $E0 $F0
    ldh a, [$FF50]                                ; $7933: $F0 $50
    ldh a, [$FFF0]                                ; $7935: $F0 $F0
    ldh a, [$FFA0]                                ; $7937: $F0 $A0
    ldh [$FFE0], a                                ; $7939: $E0 $E0
    ldh [$FF80], a                                ; $793B: $E0 $80
    add b                                         ; $793D: $80
    add b                                         ; $793E: $80
    add b                                         ; $793F: $80
    ld sp, $0500                                  ; $7940: $31 $00 $05
    nop                                           ; $7943: $00
    dec b                                         ; $7944: $05
    nop                                           ; $7945: $00
    rrca                                          ; $7946: $0F
    nop                                           ; $7947: $00
    rrca                                          ; $7948: $0F
    rlca                                          ; $7949: $07
    inc c                                         ; $794A: $0C
    rlca                                          ; $794B: $07

jr_016_794C:
    rrca                                          ; $794C: $0F
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
    adc h                                         ; $7960: $8C
    ld hl, sp-$7A                                 ; $7961: $F8 $86
    db $FC                                        ; $7963: $FC
    add [hl]                                      ; $7964: $86
    db $FC                                        ; $7965: $FC
    add [hl]                                      ; $7966: $86
    db $FC                                        ; $7967: $FC
    ld c, $F0                                     ; $7968: $0E $F0
    ld [hl], b                                    ; $796A: $70
    add b                                         ; $796B: $80
    ret nz                                        ; $796C: $C0

    nop                                           ; $796D: $00
    nop                                           ; $796E: $00
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
    ret nz                                        ; $7980: $C0

    ld a, a                                       ; $7981: $7F
    ld h, b                                       ; $7982: $60
    ccf                                           ; $7983: $3F
    ld h, b                                       ; $7984: $60
    ccf                                           ; $7985: $3F
    jr nc, jr_016_79A7                            ; $7986: $30 $1F

    inc a                                         ; $7988: $3C
    rra                                           ; $7989: $1F
    ld e, $03                                     ; $798A: $1E $03
    ld b, $03                                     ; $798C: $06 $03

jr_016_798E:
    rlca                                          ; $798E: $07
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
    ret nz                                        ; $79A0: $C0

    add b                                         ; $79A1: $80
    ret nz                                        ; $79A2: $C0

    add b                                         ; $79A3: $80
    ld h, b                                       ; $79A4: $60
    ret nz                                        ; $79A5: $C0

    ld h, b                                       ; $79A6: $60

jr_016_79A7:
    ret nz                                        ; $79A7: $C0

    ld h, b                                       ; $79A8: $60
    ret nz                                        ; $79A9: $C0

    ld h, b                                       ; $79AA: $60
    ret nz                                        ; $79AB: $C0

    jr nc, jr_016_798E                            ; $79AC: $30 $E0

    ldh a, [rP1]                                  ; $79AE: $F0 $00
    nop                                           ; $79B0: $00
    nop                                           ; $79B1: $00
    nop                                           ; $79B2: $00
    nop                                           ; $79B3: $00
    nop                                           ; $79B4: $00
    nop                                           ; $79B5: $00
    nop                                           ; $79B6: $00
    nop                                           ; $79B7: $00
    nop                                           ; $79B8: $00
    nop                                           ; $79B9: $00
    nop                                           ; $79BA: $00
    nop                                           ; $79BB: $00
    nop                                           ; $79BC: $00
    nop                                           ; $79BD: $00
    nop                                           ; $79BE: $00
    nop                                           ; $79BF: $00
    ld e, [hl]                                    ; $79C0: $5E
    ld sp, $162F                                  ; $79C1: $31 $2F $16
    rra                                           ; $79C4: $1F
    add hl, bc                                    ; $79C5: $09
    rrca                                          ; $79C6: $0F
    rlca                                          ; $79C7: $07
    rla                                           ; $79C8: $17
    add hl, bc                                    ; $79C9: $09
    inc de                                        ; $79CA: $13
    dec c                                         ; $79CB: $0D
    ld de, $100E                                  ; $79CC: $11 $0E $10

jr_016_79CF:
    rrca                                          ; $79CF: $0F
    add hl, bc                                    ; $79D0: $09
    ld b, $07                                     ; $79D1: $06 $07
    nop                                           ; $79D3: $00
    ld bc, $0100                                  ; $79D4: $01 $00 $01
    nop                                           ; $79D7: $00
    ld [bc], a                                    ; $79D8: $02
    ld bc, $0102                                  ; $79D9: $01 $02 $01
    ld [bc], a                                    ; $79DC: $02
    ld bc, $0102                                  ; $79DD: $01 $02 $01
    adc a                                         ; $79E0: $8F
    ld [hl], e                                    ; $79E1: $73
    rst RST_18                                    ; $79E2: $DF
    ld h, $FF                                     ; $79E3: $26 $FF
    ret nz                                        ; $79E5: $C0

    rst RST_00                                    ; $79E6: $C7
    cp c                                          ; $79E7: $B9
    pop bc                                        ; $79E8: $C1
    cp [hl]                                       ; $79E9: $BE
    add b                                         ; $79EA: $80
    ld a, a                                       ; $79EB: $7F
    add b                                         ; $79EC: $80
    ld a, a                                       ; $79ED: $7F
    ret nz                                        ; $79EE: $C0

    ccf                                           ; $79EF: $3F
    ldh a, [$FFCF]                                ; $79F0: $F0 $CF
    db $ED                                        ; $79F2: $ED
    ldh a, [c]                                    ; $79F3: $F2
    rst RST_38                                    ; $79F4: $FF
    nop                                           ; $79F5: $00
    cp $F0                                        ; $79F6: $FE $F0
    pop af                                        ; $79F8: $F1
    ld l, [hl]                                    ; $79F9: $6E
    pop af                                        ; $79FA: $F1
    ld l, [hl]                                    ; $79FB: $6E
    ld [hl], b                                    ; $79FC: $70
    adc a                                         ; $79FD: $8F
    jr nc, jr_016_79CF                            ; $79FE: $30 $CF

    db $DB                                        ; $7A00: $DB
    cp h                                          ; $7A01: $BC
    rst RST_38                                    ; $7A02: $FF
    db $10                                        ; $7A03: $10
    rst RST_38                                    ; $7A04: $FF
    ld b, b                                       ; $7A05: $40
    rst RST_38                                    ; $7A06: $FF
    sub b                                         ; $7A07: $90
    rst RST_38                                    ; $7A08: $FF
    jr c, jr_016_7A89                             ; $7A09: $38 $7E

    cp b                                          ; $7A0B: $B8
    ld a, [hl]                                    ; $7A0C: $7E
    or b                                          ; $7A0D: $B0
    ld [hl], c                                    ; $7A0E: $71
    adc [hl]                                      ; $7A0F: $8E
    add b                                         ; $7A10: $80
    ld a, a                                       ; $7A11: $7F
    add b                                         ; $7A12: $80
    rst RST_38                                    ; $7A13: $FF

jr_016_7A14:
    ldh [$FF7F], a                                ; $7A14: $E0 $7F
    ld a, b                                       ; $7A16: $78
    rra                                           ; $7A17: $1F
    ld e, $07                                     ; $7A18: $1E $07
    rlca                                          ; $7A1A: $07
    ld bc, $0081                                  ; $7A1B: $01 $81 $00
    add b                                         ; $7A1E: $80
    nop                                           ; $7A1F: $00
    ldh [rP1], a                                  ; $7A20: $E0 $00
    ldh [rP1], a                                  ; $7A22: $E0 $00
    ret nz                                        ; $7A24: $C0

    nop                                           ; $7A25: $00
    add b                                         ; $7A26: $80
    nop                                           ; $7A27: $00
    nop                                           ; $7A28: $00
    nop                                           ; $7A29: $00
    nop                                           ; $7A2A: $00
    nop                                           ; $7A2B: $00
    nop                                           ; $7A2C: $00
    nop                                           ; $7A2D: $00
    add b                                         ; $7A2E: $80
    nop                                           ; $7A2F: $00
    ld h, b                                       ; $7A30: $60
    add b                                         ; $7A31: $80
    jr c, jr_016_7A14                             ; $7A32: $38 $E0

    inc [hl]                                      ; $7A34: $34
    add sp, $32                                   ; $7A35: $E8 $32
    call z, $DC62                                 ; $7A37: $CC $62 $DC
    pop bc                                        ; $7A3A: $C1
    cp [hl]                                       ; $7A3B: $BE
    add c                                         ; $7A3C: $81
    ld a, [hl]                                    ; $7A3D: $7E
    ld a, [hl]                                    ; $7A3E: $7E
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
    ld bc, $0100                                  ; $7A58: $01 $00 $01
    nop                                           ; $7A5B: $00
    ld a, h                                       ; $7A5C: $7C
    nop                                           ; $7A5D: $00
    ld b, e                                       ; $7A5E: $43
    inc a                                         ; $7A5F: $3C
    nop                                           ; $7A60: $00
    nop                                           ; $7A61: $00
    nop                                           ; $7A62: $00
    nop                                           ; $7A63: $00
    nop                                           ; $7A64: $00
    nop                                           ; $7A65: $00
    nop                                           ; $7A66: $00
    nop                                           ; $7A67: $00
    rlca                                          ; $7A68: $07
    nop                                           ; $7A69: $00
    rlca                                          ; $7A6A: $07
    inc bc                                        ; $7A6B: $03
    inc c                                         ; $7A6C: $0C
    rlca                                          ; $7A6D: $07
    inc c                                         ; $7A6E: $0C
    rlca                                          ; $7A6F: $07
    jr jr_016_7A81                                ; $7A70: $18 $0F

    jr jr_016_7A7B                                ; $7A72: $18 $07

    ld h, h                                       ; $7A74: $64
    dec de                                        ; $7A75: $1B
    ld a, [$FD45]                                 ; $7A76: $FA $45 $FD
    ld e, d                                       ; $7A79: $5A
    db $FC                                        ; $7A7A: $FC

jr_016_7A7B:
    db $E3                                        ; $7A7B: $E3
    db $FC                                        ; $7A7C: $FC
    ld e, e                                       ; $7A7D: $5B
    ld l, e                                       ; $7A7E: $6B
    sub h                                         ; $7A7F: $94
    nop                                           ; $7A80: $00

jr_016_7A81:
    nop                                           ; $7A81: $00
    nop                                           ; $7A82: $00
    nop                                           ; $7A83: $00
    nop                                           ; $7A84: $00
    nop                                           ; $7A85: $00
    nop                                           ; $7A86: $00
    nop                                           ; $7A87: $00
    ret nz                                        ; $7A88: $C0

jr_016_7A89:
    nop                                           ; $7A89: $00
    ldh [$FFC0], a                                ; $7A8A: $E0 $C0
    ld hl, $23C0                                  ; $7A8C: $21 $C0 $23
    pop bc                                        ; $7A8F: $C1
    ld h, $C3                                     ; $7A90: $26 $C3
    inc l                                         ; $7A92: $2C
    rst RST_00                                    ; $7A93: $C7
    ld e, b                                       ; $7A94: $58
    adc a                                         ; $7A95: $8F
    or b                                          ; $7A96: $B0
    rra                                           ; $7A97: $1F
    ld h, b                                       ; $7A98: $60
    ccf                                           ; $7A99: $3F
    ret nz                                        ; $7A9A: $C0

    ld a, a                                       ; $7A9B: $7F
    sbc a                                         ; $7A9C: $9F
    ld h, b                                       ; $7A9D: $60
    ldh [$FF1F], a                                ; $7A9E: $E0 $1F
    nop                                           ; $7AA0: $00
    nop                                           ; $7AA1: $00
    nop                                           ; $7AA2: $00
    nop                                           ; $7AA3: $00
    nop                                           ; $7AA4: $00
    nop                                           ; $7AA5: $00
    nop                                           ; $7AA6: $00
    nop                                           ; $7AA7: $00
    ld a, b                                       ; $7AA8: $78
    nop                                           ; $7AA9: $00
    db $FC                                        ; $7AAA: $FC
    ld a, b                                       ; $7AAB: $78
    add h                                         ; $7AAC: $84
    ld hl, sp+$04                                 ; $7AAD: $F8 $04
    ld hl, sp+$04                                 ; $7AAF: $F8 $04
    ld hl, sp+$04                                 ; $7AB1: $F8 $04
    ld hl, sp+$04                                 ; $7AB3: $F8 $04
    ld hl, sp+$08                                 ; $7AB5: $F8 $08
    ldh a, [rNR10]                                ; $7AB7: $F0 $10
    ldh [rNR41], a                                ; $7AB9: $E0 $20
    ret nz                                        ; $7ABB: $C0

    ret nz                                        ; $7ABC: $C0

    nop                                           ; $7ABD: $00
    ldh [rP1], a                                  ; $7ABE: $E0 $00
    inc a                                         ; $7AC0: $3C
    inc bc                                        ; $7AC1: $03
    ld e, a                                       ; $7AC2: $5F
    jr nz, jr_016_7B44                            ; $7AC3: $20 $7F

    inc bc                                        ; $7AC5: $03
    ld e, a                                       ; $7AC6: $5F
    inc hl                                        ; $7AC7: $23
    scf                                           ; $7AC8: $37
    dec bc                                        ; $7AC9: $0B
    rla                                           ; $7ACA: $17
    dec bc                                        ; $7ACB: $0B
    rla                                           ; $7ACC: $17
    dec bc                                        ; $7ACD: $0B
    rla                                           ; $7ACE: $17
    dec bc                                        ; $7ACF: $0B
    rla                                           ; $7AD0: $17
    dec bc                                        ; $7AD1: $0B
    rla                                           ; $7AD2: $17
    dec bc                                        ; $7AD3: $0B
    scf                                           ; $7AD4: $37
    dec bc                                        ; $7AD5: $0B
    ld d, a                                       ; $7AD6: $57
    dec hl                                        ; $7AD7: $2B
    adc a                                         ; $7AD8: $8F
    ld [hl], b                                    ; $7AD9: $70

jr_016_7ADA:
    db $FC                                        ; $7ADA: $FC
    nop                                           ; $7ADB: $00

jr_016_7ADC:
    nop                                           ; $7ADC: $00
    nop                                           ; $7ADD: $00

jr_016_7ADE:
    nop                                           ; $7ADE: $00
    nop                                           ; $7ADF: $00
    ld h, a                                       ; $7AE0: $67
    sbc b                                         ; $7AE1: $98
    jp c, $EF05                                   ; $7AE2: $DA $05 $EF

    ret nz                                        ; $7AE5: $C0

    ld a, [$FFC5]                                 ; $7AE6: $FA $C5 $FF
    ret z                                         ; $7AE9: $C8

    db $FC                                        ; $7AEA: $FC
    set 5, [hl]                                   ; $7AEB: $CB $EE
    push bc                                       ; $7AED: $C5
    adc $85                                       ; $7AEE: $CE $85
    adc $85                                       ; $7AF0: $CE $85
    rst RST_00                                    ; $7AF2: $C7
    add d                                         ; $7AF3: $82
    rst RST_20                                    ; $7AF4: $E7
    jp nz, $C1E3                                  ; $7AF5: $C2 $E3 $C1

    db $E3                                        ; $7AF8: $E3
    ld bc, $0003                                  ; $7AF9: $01 $03 $00
    nop                                           ; $7AFC: $00
    nop                                           ; $7AFD: $00
    nop                                           ; $7AFE: $00
    nop                                           ; $7AFF: $00
    add b                                         ; $7B00: $80
    nop                                           ; $7B01: $00
    ldh a, [rP1]                                  ; $7B02: $F0 $00
    ldh a, [rNR41]                                ; $7B04: $F0 $20
    ldh a, [rNR41]                                ; $7B06: $F0 $20
    jr c, jr_016_7ADA                             ; $7B08: $38 $D0

    jr c, jr_016_7ADC                             ; $7B0A: $38 $D0

    jr c, jr_016_7ADE                             ; $7B0C: $38 $D0

    inc e                                         ; $7B0E: $1C
    add sp, $1C                                   ; $7B0F: $E8 $1C
    add sp, $1C                                   ; $7B11: $E8 $1C
    add sp, $0E                                   ; $7B13: $E8 $0E
    db $F4                                        ; $7B15: $F4
    cp [hl]                                       ; $7B16: $BE
    ld b, h                                       ; $7B17: $44
    call z, $8430                                 ; $7B18: $CC $30 $84
    ld a, b                                       ; $7B1B: $78
    add d                                         ; $7B1C: $82
    ld a, h                                       ; $7B1D: $7C
    cp $00                                        ; $7B1E: $FE $00
    cpl                                           ; $7B20: $2F
    ld d, $1F                                     ; $7B21: $16 $1F
    add hl, bc                                    ; $7B23: $09
    rrca                                          ; $7B24: $0F
    rlca                                          ; $7B25: $07
    rla                                           ; $7B26: $17
    add hl, bc                                    ; $7B27: $09
    inc de                                        ; $7B28: $13
    dec c                                         ; $7B29: $0D
    ld de, $100E                                  ; $7B2A: $11 $0E $10
    rrca                                          ; $7B2D: $0F
    add hl, bc                                    ; $7B2E: $09

jr_016_7B2F:
    ld b, $07                                     ; $7B2F: $06 $07
    nop                                           ; $7B31: $00
    ld bc, $0100                                  ; $7B32: $01 $00 $01
    nop                                           ; $7B35: $00
    ld bc, $0200                                  ; $7B36: $01 $00 $02
    ld bc, $0102                                  ; $7B39: $01 $02 $01
    ld [bc], a                                    ; $7B3C: $02
    ld bc, $0102                                  ; $7B3D: $01 $02 $01
    rst RST_08                                    ; $7B40: $CF
    ld [hl-], a                                   ; $7B41: $32
    rst RST_38                                    ; $7B42: $FF
    ret nz                                        ; $7B43: $C0

jr_016_7B44:
    rst RST_00                                    ; $7B44: $C7
    cp c                                          ; $7B45: $B9
    pop bc                                        ; $7B46: $C1
    cp [hl]                                       ; $7B47: $BE
    add b                                         ; $7B48: $80
    ld a, a                                       ; $7B49: $7F
    add b                                         ; $7B4A: $80
    ld a, a                                       ; $7B4B: $7F
    ret nz                                        ; $7B4C: $C0

    ccf                                           ; $7B4D: $3F
    jr nc, @-$2F                                  ; $7B4E: $30 $CF

    db $ED                                        ; $7B50: $ED
    ldh a, [c]                                    ; $7B51: $F2
    rst RST_28                                    ; $7B52: $EF
    ldh a, [rIE]                                  ; $7B53: $F0 $FF
    nop                                           ; $7B55: $00
    cp $F0                                        ; $7B56: $FE $F0
    pop af                                        ; $7B58: $F1
    ld l, [hl]                                    ; $7B59: $6E
    pop af                                        ; $7B5A: $F1
    ld l, [hl]                                    ; $7B5B: $6E
    ld [hl], b                                    ; $7B5C: $70
    adc a                                         ; $7B5D: $8F
    jr nc, jr_016_7B2F                            ; $7B5E: $30 $CF

    rst RST_38                                    ; $7B60: $FF
    db $10                                        ; $7B61: $10
    rst RST_38                                    ; $7B62: $FF
    ld b, b                                       ; $7B63: $40
    rst RST_38                                    ; $7B64: $FF
    sub b                                         ; $7B65: $90
    rst RST_38                                    ; $7B66: $FF
    jr c, jr_016_7BE7                             ; $7B67: $38 $7E

    cp b                                          ; $7B69: $B8
    ld a, b                                       ; $7B6A: $78
    or b                                          ; $7B6B: $B0
    halt                                          ; $7B6C: $76
    adc b                                         ; $7B6D: $88
    pop bc                                        ; $7B6E: $C1
    ld a, $80                                     ; $7B6F: $3E $80
    ld a, a                                       ; $7B71: $7F
    add b                                         ; $7B72: $80
    rst RST_38                                    ; $7B73: $FF

jr_016_7B74:
    ldh [$FF7F], a                                ; $7B74: $E0 $7F
    ld a, b                                       ; $7B76: $78
    rra                                           ; $7B77: $1F
    ld e, $07                                     ; $7B78: $1E $07
    rlca                                          ; $7B7A: $07
    ld bc, $0081                                  ; $7B7B: $01 $81 $00
    add b                                         ; $7B7E: $80
    nop                                           ; $7B7F: $00
    ldh [rP1], a                                  ; $7B80: $E0 $00
    ret nz                                        ; $7B82: $C0

    nop                                           ; $7B83: $00
    add b                                         ; $7B84: $80
    nop                                           ; $7B85: $00
    nop                                           ; $7B86: $00
    nop                                           ; $7B87: $00
    nop                                           ; $7B88: $00
    nop                                           ; $7B89: $00
    nop                                           ; $7B8A: $00
    nop                                           ; $7B8B: $00
    nop                                           ; $7B8C: $00
    nop                                           ; $7B8D: $00
    add b                                         ; $7B8E: $80
    nop                                           ; $7B8F: $00
    ld h, b                                       ; $7B90: $60
    add b                                         ; $7B91: $80
    jr c, jr_016_7B74                             ; $7B92: $38 $E0

    inc [hl]                                      ; $7B94: $34
    add sp, $32                                   ; $7B95: $E8 $32
    call z, $DC62                                 ; $7B97: $CC $62 $DC
    pop bc                                        ; $7B9A: $C1
    cp [hl]                                       ; $7B9B: $BE
    add c                                         ; $7B9C: $81
    ld a, [hl]                                    ; $7B9D: $7E
    ld a, [hl]                                    ; $7B9E: $7E
    nop                                           ; $7B9F: $00
    nop                                           ; $7BA0: $00
    nop                                           ; $7BA1: $00
    nop                                           ; $7BA2: $00
    nop                                           ; $7BA3: $00
    nop                                           ; $7BA4: $00
    nop                                           ; $7BA5: $00
    nop                                           ; $7BA6: $00
    nop                                           ; $7BA7: $00
    nop                                           ; $7BA8: $00
    nop                                           ; $7BA9: $00
    nop                                           ; $7BAA: $00
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
    ld bc, $7D00                                  ; $7BB8: $01 $00 $7D
    nop                                           ; $7BBB: $00
    ld b, e                                       ; $7BBC: $43
    inc a                                         ; $7BBD: $3C
    ld e, [hl]                                    ; $7BBE: $5E
    ld sp, $0000                                  ; $7BBF: $31 $00 $00
    nop                                           ; $7BC2: $00
    nop                                           ; $7BC3: $00
    nop                                           ; $7BC4: $00
    nop                                           ; $7BC5: $00
    nop                                           ; $7BC6: $00
    nop                                           ; $7BC7: $00
    rlca                                          ; $7BC8: $07
    nop                                           ; $7BC9: $00
    rlca                                          ; $7BCA: $07
    inc bc                                        ; $7BCB: $03
    inc c                                         ; $7BCC: $0C
    rlca                                          ; $7BCD: $07
    inc c                                         ; $7BCE: $0C
    rlca                                          ; $7BCF: $07
    jr jr_016_7BE1                                ; $7BD0: $18 $0F

    jr jr_016_7BDB                                ; $7BD2: $18 $07

    ld h, h                                       ; $7BD4: $64
    dec de                                        ; $7BD5: $1B
    ld a, [$FD45]                                 ; $7BD6: $FA $45 $FD
    ld e, d                                       ; $7BD9: $5A
    db $FC                                        ; $7BDA: $FC

jr_016_7BDB:
    db $E3                                        ; $7BDB: $E3
    db $FC                                        ; $7BDC: $FC
    ld e, e                                       ; $7BDD: $5B
    db $EB                                        ; $7BDE: $EB
    inc d                                         ; $7BDF: $14
    nop                                           ; $7BE0: $00

jr_016_7BE1:
    nop                                           ; $7BE1: $00
    nop                                           ; $7BE2: $00
    nop                                           ; $7BE3: $00
    nop                                           ; $7BE4: $00
    nop                                           ; $7BE5: $00
    nop                                           ; $7BE6: $00

jr_016_7BE7:
    nop                                           ; $7BE7: $00
    ret nz                                        ; $7BE8: $C0

    nop                                           ; $7BE9: $00
    ldh [$FFC0], a                                ; $7BEA: $E0 $C0
    ld hl, $23C0                                  ; $7BEC: $21 $C0 $23
    pop bc                                        ; $7BEF: $C1
    ld h, $C3                                     ; $7BF0: $26 $C3
    inc l                                         ; $7BF2: $2C
    rst RST_00                                    ; $7BF3: $C7
    ld e, b                                       ; $7BF4: $58
    adc a                                         ; $7BF5: $8F
    or b                                          ; $7BF6: $B0
    rra                                           ; $7BF7: $1F
    ld h, b                                       ; $7BF8: $60
    ccf                                           ; $7BF9: $3F
    rst RST_08                                    ; $7BFA: $CF
    ld [hl], b                                    ; $7BFB: $70
    or b                                          ; $7BFC: $B0
    ld c, a                                       ; $7BFD: $4F
    db $DB                                        ; $7BFE: $DB
    inc a                                         ; $7BFF: $3C
    nop                                           ; $7C00: $00
    nop                                           ; $7C01: $00
    nop                                           ; $7C02: $00
    nop                                           ; $7C03: $00
    nop                                           ; $7C04: $00
    nop                                           ; $7C05: $00
    nop                                           ; $7C06: $00
    nop                                           ; $7C07: $00
    ld a, b                                       ; $7C08: $78
    nop                                           ; $7C09: $00
    db $FC                                        ; $7C0A: $FC
    ld a, b                                       ; $7C0B: $78
    add h                                         ; $7C0C: $84
    ld hl, sp+$04                                 ; $7C0D: $F8 $04
    ld hl, sp+$04                                 ; $7C0F: $F8 $04
    ld hl, sp+$04                                 ; $7C11: $F8 $04
    ld hl, sp+$04                                 ; $7C13: $F8 $04
    ld hl, sp+$08                                 ; $7C15: $F8 $08
    ldh a, [rNR10]                                ; $7C17: $F0 $10
    ldh [$FFE0], a                                ; $7C19: $E0 $E0
    nop                                           ; $7C1B: $00
    ldh [rP1], a                                  ; $7C1C: $E0 $00
    ldh [rP1], a                                  ; $7C1E: $E0 $00
    nop                                           ; $7C20: $00
    nop                                           ; $7C21: $00
    ld bc, $0100                                  ; $7C22: $01 $00 $01

jr_016_7C25:
    nop                                           ; $7C25: $00
    inc bc                                        ; $7C26: $03
    ld bc, $000F                                  ; $7C27: $01 $0F $00
    ld sp, $400E                                  ; $7C2A: $31 $0E $40
    ccf                                           ; $7C2D: $3F
    add b                                         ; $7C2E: $80
    ld a, a                                       ; $7C2F: $7F
    add c                                         ; $7C30: $81
    ld a, [hl]                                    ; $7C31: $7E
    ld b, [hl]                                    ; $7C32: $46
    add hl, sp                                    ; $7C33: $39
    ld e, c                                       ; $7C34: $59
    ld h, $27                                     ; $7C35: $26 $27
    jr jr_016_7C58                                ; $7C37: $18 $1F

    inc bc                                        ; $7C39: $03
    rlca                                          ; $7C3A: $07
    nop                                           ; $7C3B: $00
    ld [bc], a                                    ; $7C3C: $02
    ld bc, $0102                                  ; $7C3D: $01 $02 $01
    jr nc, jr_016_7C42                            ; $7C40: $30 $00

jr_016_7C42:
    db $FC                                        ; $7C42: $FC
    jr nz, @-$04                                  ; $7C43: $20 $FA

    sub h                                         ; $7C45: $94
    db $FC                                        ; $7C46: $FC
    ld a, d                                       ; $7C47: $7A
    rst RST_38                                    ; $7C48: $FF
    inc a                                         ; $7C49: $3C
    rst RST_38                                    ; $7C4A: $FF
    ld a, [hl]                                    ; $7C4B: $7E
    cp $BD                                        ; $7C4C: $FE $BD
    db $FC                                        ; $7C4E: $FC
    ld e, e                                       ; $7C4F: $5B
    ld hl, sp+$57                                 ; $7C50: $F8 $57
    db $F4                                        ; $7C52: $F4
    dec hl                                        ; $7C53: $2B
    ld a, [$F545]                                 ; $7C54: $FA $45 $F5
    ld a, [de]                                    ; $7C57: $1A

jr_016_7C58:
    push hl                                       ; $7C58: $E5
    cp d                                          ; $7C59: $BA
    cp $39                                        ; $7C5A: $FE $39
    ccf                                           ; $7C5C: $3F
    add $DF                                       ; $7C5D: $C6 $DF
    rst RST_28                                    ; $7C5F: $EF
    add b                                         ; $7C60: $80
    nop                                           ; $7C61: $00
    rst RST_38                                    ; $7C62: $FF
    nop                                           ; $7C63: $00
    ld l, h                                       ; $7C64: $6C
    sbc a                                         ; $7C65: $9F
    ccf                                           ; $7C66: $3F
    ret nz                                        ; $7C67: $C0

    rra                                           ; $7C68: $1F
    add sp, $0F                                   ; $7C69: $E8 $0F
    or $0F                                        ; $7C6B: $F6 $0F
    or $1F                                        ; $7C6D: $F6 $1F
    xor $BF                                       ; $7C6F: $EE $BF
    ld c, h                                       ; $7C71: $4C
    db $FC                                        ; $7C72: $FC
    inc bc                                        ; $7C73: $03
    sbc a                                         ; $7C74: $9F
    ld h, b                                       ; $7C75: $60
    ld [$04F0], sp                                ; $7C76: $08 $F0 $04
    ld hl, sp+$02                                 ; $7C79: $F8 $02
    db $FC                                        ; $7C7B: $FC
    add c                                         ; $7C7C: $81
    cp $C1                                        ; $7C7D: $FE $C1
    ld a, a                                       ; $7C7F: $7F
    nop                                           ; $7C80: $00
    nop                                           ; $7C81: $00
    nop                                           ; $7C82: $00
    nop                                           ; $7C83: $00
    nop                                           ; $7C84: $00
    nop                                           ; $7C85: $00
    nop                                           ; $7C86: $00
    nop                                           ; $7C87: $00
    nop                                           ; $7C88: $00
    nop                                           ; $7C89: $00
    nop                                           ; $7C8A: $00
    nop                                           ; $7C8B: $00

jr_016_7C8C:
    ret nz                                        ; $7C8C: $C0

    nop                                           ; $7C8D: $00
    ld a, h                                       ; $7C8E: $7C
    add b                                         ; $7C8F: $80
    cp $1C                                        ; $7C90: $FE $1C
    and $1C                                       ; $7C92: $E6 $1C
    and $1C                                       ; $7C94: $E6 $1C
    db $EC                                        ; $7C96: $EC
    jr jr_016_7C25                                ; $7C97: $18 $8C

    ld a, b                                       ; $7C99: $78
    jr jr_016_7C8C                                ; $7C9A: $18 $F0

    ld a, b                                       ; $7C9C: $78
    add b                                         ; $7C9D: $80
    add b                                         ; $7C9E: $80

jr_016_7C9F:
    nop                                           ; $7C9F: $00
    ld bc, $0100                                  ; $7CA0: $01 $00 $01
    nop                                           ; $7CA3: $00
    ld bc, $0200                                  ; $7CA4: $01 $00 $02
    ld bc, $0102                                  ; $7CA7: $01 $02 $01
    ld [bc], a                                    ; $7CAA: $02
    ld bc, $0102                                  ; $7CAB: $01 $02 $01
    ld e, $01                                     ; $7CAE: $1E $01
    cpl                                           ; $7CB0: $2F
    db $10                                        ; $7CB1: $10
    ccf                                           ; $7CB2: $3F
    ld bc, $112F                                  ; $7CB3: $01 $2F $11
    dec de                                        ; $7CB6: $1B
    dec b                                         ; $7CB7: $05
    dec bc                                        ; $7CB8: $0B
    dec b                                         ; $7CB9: $05
    dec bc                                        ; $7CBA: $0B
    dec b                                         ; $7CBB: $05
    dec bc                                        ; $7CBC: $0B
    dec b                                         ; $7CBD: $05
    dec bc                                        ; $7CBE: $0B
    dec b                                         ; $7CBF: $05
    rst RST_18                                    ; $7CC0: $DF
    xor $FE                                       ; $7CC1: $EE $FE
    db $DD                                        ; $7CC3: $DD
    rst RST_38                                    ; $7CC4: $FF
    ld bc, $F0FF                                  ; $7CC5: $01 $FF $F0
    di                                            ; $7CC8: $F3
    ld l, [hl]                                    ; $7CC9: $6E
    pop af                                        ; $7CCA: $F1
    ld l, [hl]                                    ; $7CCB: $6E
    ld [hl], b                                    ; $7CCC: $70
    adc a                                         ; $7CCD: $8F
    jr nc, jr_016_7C9F                            ; $7CCE: $30 $CF

    inc sp                                        ; $7CD0: $33
    call z, $02ED                                 ; $7CD1: $CC $ED $02
    rst RST_30                                    ; $7CD4: $F7
    ldh [$FFFD], a                                ; $7CD5: $E0 $FD
    ldh [c], a                                    ; $7CD7: $E2
    rst RST_38                                    ; $7CD8: $FF
    db $E4                                        ; $7CD9: $E4
    cp $E5                                        ; $7CDA: $FE $E5
    rst RST_30                                    ; $7CDC: $F7
    ldh [c], a                                    ; $7CDD: $E2
    rst RST_20                                    ; $7CDE: $E7
    jp nz, Jump_000_3F61                          ; $7CDF: $C2 $61 $3F

    or c                                          ; $7CE2: $B1
    rra                                           ; $7CE3: $1F
    sbc e                                         ; $7CE4: $9B
    ld c, $CE                                     ; $7CE5: $0E $CE
    dec b                                         ; $7CE7: $05
    ld [hl], h                                    ; $7CE8: $74
    add e                                         ; $7CE9: $83
    ei                                            ; $7CEA: $FB
    db $10                                        ; $7CEB: $10
    ld a, b                                       ; $7CEC: $78
    sub b                                         ; $7CED: $90
    sbc h                                         ; $7CEE: $9C
    ld l, b                                       ; $7CEF: $68
    inc e                                         ; $7CF0: $1C
    add sp, $1C                                   ; $7CF1: $E8 $1C
    add sp, $0E                                   ; $7CF3: $E8 $0E
    db $F4                                        ; $7CF5: $F4
    ld c, $F4                                     ; $7CF6: $0E $F4
    adc [hl]                                      ; $7CF8: $8E
    ld [hl], h                                    ; $7CF9: $74
    add a                                         ; $7CFA: $87
    ld a, d                                       ; $7CFB: $7A
    rst RST_18                                    ; $7CFC: $DF
    and d                                         ; $7CFD: $A2
    and $98                                       ; $7CFE: $E6 $98
    nop                                           ; $7D00: $00
    nop                                           ; $7D01: $00
    nop                                           ; $7D02: $00
    nop                                           ; $7D03: $00
    nop                                           ; $7D04: $00
    nop                                           ; $7D05: $00
    nop                                           ; $7D06: $00
    nop                                           ; $7D07: $00
    ret nz                                        ; $7D08: $C0

    nop                                           ; $7D09: $00
    and b                                         ; $7D0A: $A0
    ld b, b                                       ; $7D0B: $40
    and b                                         ; $7D0C: $A0
    ld b, b                                       ; $7D0D: $40
    db $10                                        ; $7D0E: $10
    ldh [rNR10], a                                ; $7D0F: $E0 $10
    ldh [$FF08], a                                ; $7D11: $E0 $08
    ldh a, [$FF08]                                ; $7D13: $F0 $08
    ldh a, [$FFF8]                                ; $7D15: $F0 $F8
    nop                                           ; $7D17: $00
    nop                                           ; $7D18: $00
    nop                                           ; $7D19: $00
    nop                                           ; $7D1A: $00
    nop                                           ; $7D1B: $00
    nop                                           ; $7D1C: $00
    nop                                           ; $7D1D: $00
    nop                                           ; $7D1E: $00
    nop                                           ; $7D1F: $00
    dec bc                                        ; $7D20: $0B
    dec b                                         ; $7D21: $05
    dec de                                        ; $7D22: $1B
    dec b                                         ; $7D23: $05
    dec hl                                        ; $7D24: $2B
    dec d                                         ; $7D25: $15
    ld b, a                                       ; $7D26: $47
    jr c, @+$80                                   ; $7D27: $38 $7E

    nop                                           ; $7D29: $00
    nop                                           ; $7D2A: $00
    nop                                           ; $7D2B: $00
    nop                                           ; $7D2C: $00
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
    rst RST_20                                    ; $7D40: $E7
    jp nz, $C1E3                                  ; $7D41: $C2 $E3 $C1

    di                                            ; $7D44: $F3
    pop hl                                        ; $7D45: $E1
    pop af                                        ; $7D46: $F1
    ldh [$FFF1], a                                ; $7D47: $E0 $F1
    nop                                           ; $7D49: $00
    ld bc, $0000                                  ; $7D4A: $01 $00 $00
    nop                                           ; $7D4D: $00
    nop                                           ; $7D4E: $00
    nop                                           ; $7D4F: $00
    nop                                           ; $7D50: $00
    nop                                           ; $7D51: $00
    nop                                           ; $7D52: $00
    nop                                           ; $7D53: $00
    nop                                           ; $7D54: $00
    nop                                           ; $7D55: $00
    nop                                           ; $7D56: $00
    nop                                           ; $7D57: $00
    nop                                           ; $7D58: $00
    nop                                           ; $7D59: $00
    nop                                           ; $7D5A: $00
    nop                                           ; $7D5B: $00
    nop                                           ; $7D5C: $00
    nop                                           ; $7D5D: $00
    nop                                           ; $7D5E: $00
    nop                                           ; $7D5F: $00
    jp nz, Jump_016_413C                          ; $7D60: $C2 $3C $41

    ld a, $7F                                     ; $7D63: $3E $7F
    nop                                           ; $7D65: $00
    nop                                           ; $7D66: $00
    nop                                           ; $7D67: $00
    nop                                           ; $7D68: $00
    nop                                           ; $7D69: $00
    nop                                           ; $7D6A: $00
    nop                                           ; $7D6B: $00
    nop                                           ; $7D6C: $00
    nop                                           ; $7D6D: $00
    nop                                           ; $7D6E: $00
    nop                                           ; $7D6F: $00
    nop                                           ; $7D70: $00
    nop                                           ; $7D71: $00
    nop                                           ; $7D72: $00
    nop                                           ; $7D73: $00
    nop                                           ; $7D74: $00
    nop                                           ; $7D75: $00
    nop                                           ; $7D76: $00
    nop                                           ; $7D77: $00
    nop                                           ; $7D78: $00
    nop                                           ; $7D79: $00
    nop                                           ; $7D7A: $00
    nop                                           ; $7D7B: $00
    nop                                           ; $7D7C: $00
    nop                                           ; $7D7D: $00
    nop                                           ; $7D7E: $00
    nop                                           ; $7D7F: $00
    ld a, a                                       ; $7D80: $7F
    nop                                           ; $7D81: $00
    add b                                         ; $7D82: $80
    ld a, a                                       ; $7D83: $7F
    add b                                         ; $7D84: $80
    ld a, a                                       ; $7D85: $7F
    add b                                         ; $7D86: $80
    ld a, a                                       ; $7D87: $7F
    adc c                                         ; $7D88: $89
    halt                                          ; $7D89: $76
    adc c                                         ; $7D8A: $89
    halt                                          ; $7D8B: $76
    adc b                                         ; $7D8C: $88
    ld [hl], a                                    ; $7D8D: $77
    sub b                                         ; $7D8E: $90
    ld l, a                                       ; $7D8F: $6F
    sub b                                         ; $7D90: $90
    ld l, a                                       ; $7D91: $6F
    and b                                         ; $7D92: $A0
    ld e, a                                       ; $7D93: $5F
    add b                                         ; $7D94: $80
    ld a, a                                       ; $7D95: $7F
    ld h, c                                       ; $7D96: $61
    ld e, $11                                     ; $7D97: $1E $11
    ld c, $09                                     ; $7D99: $0E $09
    ld b, $05                                     ; $7D9B: $06 $05
    ld [bc], a                                    ; $7D9D: $02
    inc bc                                        ; $7D9E: $03
    nop                                           ; $7D9F: $00
    rst RST_38                                    ; $7DA0: $FF
    nop                                           ; $7DA1: $00
    nop                                           ; $7DA2: $00
    rst RST_38                                    ; $7DA3: $FF
    ld [bc], a                                    ; $7DA4: $02
    db $FD                                        ; $7DA5: $FD
    jp nz, $CF3D                                  ; $7DA6: $C2 $3D $CF

    jr nc, jr_016_7DAD                            ; $7DA9: $30 $02

    db $FD                                        ; $7DAB: $FD
    add d                                         ; $7DAC: $82

jr_016_7DAD:
    ld a, l                                       ; $7DAD: $7D
    add h                                         ; $7DAE: $84
    ld a, e                                       ; $7DAF: $7B
    ld b, h                                       ; $7DB0: $44
    cp e                                          ; $7DB1: $BB
    ld c, c                                       ; $7DB2: $49
    or [hl]                                       ; $7DB3: $B6
    nop                                           ; $7DB4: $00
    rst RST_38                                    ; $7DB5: $FF
    rst RST_38                                    ; $7DB6: $FF
    nop                                           ; $7DB7: $00
    nop                                           ; $7DB8: $00
    nop                                           ; $7DB9: $00
    nop                                           ; $7DBA: $00
    nop                                           ; $7DBB: $00
    nop                                           ; $7DBC: $00
    nop                                           ; $7DBD: $00
    nop                                           ; $7DBE: $00
    nop                                           ; $7DBF: $00
    rst RST_38                                    ; $7DC0: $FF
    nop                                           ; $7DC1: $00
    nop                                           ; $7DC2: $00
    rst RST_38                                    ; $7DC3: $FF
    inc b                                         ; $7DC4: $04
    ei                                            ; $7DC5: $FB
    rlca                                          ; $7DC6: $07
    ld hl, sp-$3C                                 ; $7DC7: $F8 $C4
    dec sp                                        ; $7DC9: $3B
    ld c, d                                       ; $7DCA: $4A
    or l                                          ; $7DCB: $B5
    ld c, c                                       ; $7DCC: $49
    or [hl]                                       ; $7DCD: $B6
    ld c, e                                       ; $7DCE: $4B
    or h                                          ; $7DCF: $B4
    ld b, h                                       ; $7DD0: $44
    cp e                                          ; $7DD1: $BB
    add b                                         ; $7DD2: $80
    ld a, a                                       ; $7DD3: $7F
    nop                                           ; $7DD4: $00
    rst RST_38                                    ; $7DD5: $FF
    rst RST_38                                    ; $7DD6: $FF
    nop                                           ; $7DD7: $00
    nop                                           ; $7DD8: $00
    nop                                           ; $7DD9: $00
    nop                                           ; $7DDA: $00
    nop                                           ; $7DDB: $00
    nop                                           ; $7DDC: $00
    nop                                           ; $7DDD: $00
    nop                                           ; $7DDE: $00
    nop                                           ; $7DDF: $00
    rst RST_38                                    ; $7DE0: $FF
    nop                                           ; $7DE1: $00
    nop                                           ; $7DE2: $00

jr_016_7DE3:
    rst RST_38                                    ; $7DE3: $FF
    add c                                         ; $7DE4: $81
    ld a, [hl]                                    ; $7DE5: $7E
    pop bc                                        ; $7DE6: $C1
    ld a, $A3                                     ; $7DE7: $3E $A3
    ld e, h                                       ; $7DE9: $5C
    sub c                                         ; $7DEA: $91
    ld l, [hl]                                    ; $7DEB: $6E
    ld de, $11EE                                  ; $7DEC: $11 $EE $11
    xor $22                                       ; $7DEF: $EE $22

jr_016_7DF1:
    db $DD                                        ; $7DF1: $DD
    jp nz, $003D                                  ; $7DF2: $C2 $3D $00

    rst RST_38                                    ; $7DF5: $FF
    rst RST_38                                    ; $7DF6: $FF
    nop                                           ; $7DF7: $00
    nop                                           ; $7DF8: $00
    nop                                           ; $7DF9: $00
    nop                                           ; $7DFA: $00
    nop                                           ; $7DFB: $00
    nop                                           ; $7DFC: $00
    nop                                           ; $7DFD: $00
    nop                                           ; $7DFE: $00
    nop                                           ; $7DFF: $00
    rst RST_38                                    ; $7E00: $FF
    nop                                           ; $7E01: $00
    nop                                           ; $7E02: $00
    rst RST_38                                    ; $7E03: $FF
    inc c                                         ; $7E04: $0C
    di                                            ; $7E05: $F3
    db $10                                        ; $7E06: $10
    rst RST_28                                    ; $7E07: $EF
    ret z                                         ; $7E08: $C8

    scf                                           ; $7E09: $37
    jr z, jr_016_7DE3                             ; $7E0A: $28 $D7

    inc h                                         ; $7E0C: $24
    db $DB                                        ; $7E0D: $DB
    inc h                                         ; $7E0E: $24
    db $DB                                        ; $7E0F: $DB
    jr nz, jr_016_7DF1                            ; $7E10: $20 $DF

    ret nz                                        ; $7E12: $C0

    ccf                                           ; $7E13: $3F
    nop                                           ; $7E14: $00
    rst RST_38                                    ; $7E15: $FF
    rst RST_38                                    ; $7E16: $FF
    nop                                           ; $7E17: $00
    nop                                           ; $7E18: $00
    nop                                           ; $7E19: $00
    nop                                           ; $7E1A: $00
    nop                                           ; $7E1B: $00
    nop                                           ; $7E1C: $00
    nop                                           ; $7E1D: $00
    nop                                           ; $7E1E: $00
    nop                                           ; $7E1F: $00
    cp $00                                        ; $7E20: $FE $00
    ld bc, $CDFE                                  ; $7E22: $01 $FE $CD
    ld [hl-], a                                   ; $7E25: $32
    call $CD32                                    ; $7E26: $CD $32 $CD
    ld [hl-], a                                   ; $7E29: $32
    call $0132                                    ; $7E2A: $CD $32 $01
    cp $CD                                        ; $7E2D: $FE $CD
    ld [hl-], a                                   ; $7E2F: $32
    call $0132                                    ; $7E30: $CD $32 $01
    cp $01                                        ; $7E33: $FE $01
    cp $FE                                        ; $7E35: $FE $FE
    nop                                           ; $7E37: $00
    nop                                           ; $7E38: $00
    nop                                           ; $7E39: $00
    nop                                           ; $7E3A: $00
    nop                                           ; $7E3B: $00
    nop                                           ; $7E3C: $00
    nop                                           ; $7E3D: $00
    nop                                           ; $7E3E: $00
    nop                                           ; $7E3F: $00
    ld sp, hl                                     ; $7E40: $F9
    nop                                           ; $7E41: $00
    add [hl]                                      ; $7E42: $86
    ld a, c                                       ; $7E43: $79
    cp l                                          ; $7E44: $BD
    ld h, d                                       ; $7E45: $62
    ld e, a                                       ; $7E46: $5F
    inc l                                         ; $7E47: $2C
    ccf                                           ; $7E48: $3F
    inc de                                        ; $7E49: $13
    rra                                           ; $7E4A: $1F
    rrca                                          ; $7E4B: $0F
    cpl                                           ; $7E4C: $2F
    inc de                                        ; $7E4D: $13
    daa                                           ; $7E4E: $27
    ld a, [de]                                    ; $7E4F: $1A
    inc hl                                        ; $7E50: $23
    inc e                                         ; $7E51: $1C
    ld hl, $131E                                  ; $7E52: $21 $1E $13
    dec c                                         ; $7E55: $0D
    rrca                                          ; $7E56: $0F
    ld bc, $0003                                  ; $7E57: $01 $03 $00
    inc bc                                        ; $7E5A: $03
    ld bc, $0205                                  ; $7E5B: $01 $05 $02
    dec b                                         ; $7E5E: $05
    ld [bc], a                                    ; $7E5F: $02
    inc bc                                        ; $7E60: $03
    nop                                           ; $7E61: $00
    inc bc                                        ; $7E62: $03
    ld bc, $0306                                  ; $7E63: $01 $06 $03
    ld b, $03                                     ; $7E66: $06 $03
    inc c                                         ; $7E68: $0C
    rlca                                          ; $7E69: $07
    inc c                                         ; $7E6A: $0C
    inc bc                                        ; $7E6B: $03
    ld [hl-], a                                   ; $7E6C: $32
    dec c                                         ; $7E6D: $0D
    ld a, l                                       ; $7E6E: $7D
    ld [hl+], a                                   ; $7E6F: $22
    cp $2D                                        ; $7E70: $FE $2D
    cp $71                                        ; $7E72: $FE $71
    ld a, [hl]                                    ; $7E74: $7E
    dec l                                         ; $7E75: $2D
    or l                                          ; $7E76: $B5
    ld c, d                                       ; $7E77: $4A
    ld b, a                                       ; $7E78: $47
    cp c                                          ; $7E79: $B9
    rst RST_28                                    ; $7E7A: $EF
    inc de                                        ; $7E7B: $13
    rst RST_38                                    ; $7E7C: $FF
    ldh [$FFE3], a                                ; $7E7D: $E0 $E3
    call c, Call_000_00E0                         ; $7E7F: $DC $E0 $00
    ldh a, [$FFE0]                                ; $7E82: $F0 $E0
    db $10                                        ; $7E84: $10
    ldh [rNR11], a                                ; $7E85: $E0 $11
    ldh [rNR13], a                                ; $7E87: $E0 $13
    pop hl                                        ; $7E89: $E1
    ld d, $E3                                     ; $7E8A: $16 $E3
    inc l                                         ; $7E8C: $2C
    rst RST_00                                    ; $7E8D: $C7
    ld e, b                                       ; $7E8E: $58
    adc a                                         ; $7E8F: $8F
    or b                                          ; $7E90: $B0
    rra                                           ; $7E91: $1F
    ld h, b                                       ; $7E92: $60
    cp a                                          ; $7E93: $BF
    ld c, a                                       ; $7E94: $4F
    or b                                          ; $7E95: $B0
    ldh a, [rIF]                                  ; $7E96: $F0 $0F
    db $ED                                        ; $7E98: $ED
    sbc $FF                                       ; $7E99: $DE $FF
    ld [$20FF], sp                                ; $7E9B: $08 $FF $20
    rst RST_38                                    ; $7E9E: $FF
    ret z                                         ; $7E9F: $C8

    inc a                                         ; $7EA0: $3C
    nop                                           ; $7EA1: $00
    ld a, [hl]                                    ; $7EA2: $7E
    inc a                                         ; $7EA3: $3C
    jp nz, $827C                                  ; $7EA4: $C2 $7C $82

    db $FC                                        ; $7EA7: $FC
    ld [bc], a                                    ; $7EA8: $02
    db $FC                                        ; $7EA9: $FC
    ld [bc], a                                    ; $7EAA: $02
    db $FC                                        ; $7EAB: $FC
    ld [bc], a                                    ; $7EAC: $02
    db $FC                                        ; $7EAD: $FC
    inc b                                         ; $7EAE: $04
    ld hl, sp+$08                                 ; $7EAF: $F8 $08
    ldh a, [rNR10]                                ; $7EB1: $F0 $10
    ldh [$FFE0], a                                ; $7EB3: $E0 $E0
    nop                                           ; $7EB5: $00
    ld [hl], b                                    ; $7EB6: $70
    add b                                         ; $7EB7: $80
    ldh a, [rP1]                                  ; $7EB8: $F0 $00
    ldh a, [rP1]                                  ; $7EBA: $F0 $00
    ldh [rP1], a                                  ; $7EBC: $E0 $00
    ret nz                                        ; $7EBE: $C0

    nop                                           ; $7EBF: $00
    inc b                                         ; $7EC0: $04
    inc bc                                        ; $7EC1: $03
    inc b                                         ; $7EC2: $04
    inc bc                                        ; $7EC3: $03
    inc a                                         ; $7EC4: $3C
    inc bc                                        ; $7EC5: $03
    ld e, a                                       ; $7EC6: $5F
    jr nz, jr_016_7F48                            ; $7EC7: $20 $7F

    inc bc                                        ; $7EC9: $03
    ld e, a                                       ; $7ECA: $5F
    inc hl                                        ; $7ECB: $23
    scf                                           ; $7ECC: $37
    dec bc                                        ; $7ECD: $0B
    rla                                           ; $7ECE: $17
    dec bc                                        ; $7ECF: $0B
    rla                                           ; $7ED0: $17
    dec bc                                        ; $7ED1: $0B
    rla                                           ; $7ED2: $17
    dec bc                                        ; $7ED3: $0B
    rla                                           ; $7ED4: $17
    dec bc                                        ; $7ED5: $0B
    rla                                           ; $7ED6: $17
    dec bc                                        ; $7ED7: $0B
    scf                                           ; $7ED8: $37
    dec bc                                        ; $7ED9: $0B
    ld d, a                                       ; $7EDA: $57
    dec hl                                        ; $7EDB: $2B
    adc a                                         ; $7EDC: $8F
    ld [hl], b                                    ; $7EDD: $70
    db $FC                                        ; $7EDE: $FC
    nop                                           ; $7EDF: $00
    add e                                         ; $7EE0: $83
    ld a, h                                       ; $7EE1: $7C
    nop                                           ; $7EE2: $00
    rst RST_38                                    ; $7EE3: $FF
    nop                                           ; $7EE4: $00
    rst RST_38                                    ; $7EE5: $FF
    add b                                         ; $7EE6: $80
    ld a, a                                       ; $7EE7: $7F
    pop hl                                        ; $7EE8: $E1
    sbc [hl]                                      ; $7EE9: $9E
    db $DB                                        ; $7EEA: $DB
    push hl                                       ; $7EEB: $E5
    rst RST_38                                    ; $7EEC: $FF
    nop                                           ; $7EED: $00
    db $FC                                        ; $7EEE: $FC
    ldh [$FFE2], a                                ; $7EEF: $E0 $E2
    call c, $DCE2                                 ; $7EF1: $DC $E2 $DC
    pop hl                                        ; $7EF4: $E1
    ld e, $61                                     ; $7EF5: $1E $61
    sbc [hl]                                      ; $7EF7: $9E
    ld h, a                                       ; $7EF8: $67
    sbc b                                         ; $7EF9: $98
    jp c, $EF05                                   ; $7EFA: $DA $05 $EF

    ret nz                                        ; $7EFD: $C0

    ld a, [$FEC5]                                 ; $7EFE: $FA $C5 $FE
    ld [hl], b                                    ; $7F01: $70
    db $FC                                        ; $7F02: $FC
    ld [hl], b                                    ; $7F03: $70
    db $FC                                        ; $7F04: $FC
    ld h, b                                       ; $7F05: $60
    db $E3                                        ; $7F06: $E3
    inc e                                         ; $7F07: $1C
    nop                                           ; $7F08: $00
    rst RST_38                                    ; $7F09: $FF
    nop                                           ; $7F0A: $00
    rst RST_38                                    ; $7F0B: $FF
    ret nz                                        ; $7F0C: $C0

    rst RST_38                                    ; $7F0D: $FF
    ldh a, [$FF3F]                                ; $7F0E: $F0 $3F
    inc a                                         ; $7F10: $3C
    rrca                                          ; $7F11: $0F
    rrca                                          ; $7F12: $0F
    inc bc                                        ; $7F13: $03
    inc bc                                        ; $7F14: $03
    nop                                           ; $7F15: $00
    nop                                           ; $7F16: $00
    nop                                           ; $7F17: $00
    add b                                         ; $7F18: $80
    nop                                           ; $7F19: $00
    ldh a, [rP1]                                  ; $7F1A: $F0 $00
    ldh a, [rNR41]                                ; $7F1C: $F0 $20
    ldh a, [rNR41]                                ; $7F1E: $F0 $20
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
    ld [hl], b                                    ; $7F2A: $70
    ret nz                                        ; $7F2B: $C0

    ld l, b                                       ; $7F2C: $68
    ret nc                                        ; $7F2D: $D0

    ld h, h                                       ; $7F2E: $64
    sbc b                                         ; $7F2F: $98
    call nz, $82B8                                ; $7F30: $C4 $B8 $82
    ld a, h                                       ; $7F33: $7C

jr_016_7F34:
    ld [bc], a                                    ; $7F34: $02
    db $FC                                        ; $7F35: $FC

jr_016_7F36:
    db $FC                                        ; $7F36: $FC
    nop                                           ; $7F37: $00
    nop                                           ; $7F38: $00
    nop                                           ; $7F39: $00
    nop                                           ; $7F3A: $00
    nop                                           ; $7F3B: $00
    nop                                           ; $7F3C: $00
    nop                                           ; $7F3D: $00
    nop                                           ; $7F3E: $00
    nop                                           ; $7F3F: $00
    rst RST_38                                    ; $7F40: $FF
    ret z                                         ; $7F41: $C8

    db $FC                                        ; $7F42: $FC
    set 5, [hl]                                   ; $7F43: $CB $EE
    push bc                                       ; $7F45: $C5
    adc $85                                       ; $7F46: $CE $85

jr_016_7F48:
    adc $85                                       ; $7F48: $CE $85
    rst RST_00                                    ; $7F4A: $C7
    add d                                         ; $7F4B: $82
    rst RST_20                                    ; $7F4C: $E7
    jp nz, $C1E3                                  ; $7F4D: $C2 $E3 $C1

    db $E3                                        ; $7F50: $E3
    ld bc, $0003                                  ; $7F51: $01 $03 $00
    nop                                           ; $7F54: $00
    nop                                           ; $7F55: $00
    nop                                           ; $7F56: $00
    nop                                           ; $7F57: $00
    nop                                           ; $7F58: $00
    nop                                           ; $7F59: $00
    nop                                           ; $7F5A: $00
    nop                                           ; $7F5B: $00
    nop                                           ; $7F5C: $00
    nop                                           ; $7F5D: $00
    nop                                           ; $7F5E: $00
    nop                                           ; $7F5F: $00
    jr c, @-$2E                                   ; $7F60: $38 $D0

    jr c, jr_016_7F34                             ; $7F62: $38 $D0

    jr c, jr_016_7F36                             ; $7F64: $38 $D0

    inc e                                         ; $7F66: $1C
    add sp, $1C                                   ; $7F67: $E8 $1C
    add sp, $1C                                   ; $7F69: $E8 $1C
    add sp, $0E                                   ; $7F6B: $E8 $0E
    db $F4                                        ; $7F6D: $F4
    cp [hl]                                       ; $7F6E: $BE
    ld b, h                                       ; $7F6F: $44
    call z, $8430                                 ; $7F70: $CC $30 $84

Call_016_7F73:
    ld a, b                                       ; $7F73: $78
    add d                                         ; $7F74: $82
    ld a, h                                       ; $7F75: $7C
    cp $00                                        ; $7F76: $FE $00
    nop                                           ; $7F78: $00
    nop                                           ; $7F79: $00
    nop                                           ; $7F7A: $00
    nop                                           ; $7F7B: $00
    nop                                           ; $7F7C: $00
    nop                                           ; $7F7D: $00
    nop                                           ; $7F7E: $00
    nop                                           ; $7F7F: $00
    nop                                           ; $7F80: $00
    nop                                           ; $7F81: $00
    nop                                           ; $7F82: $00
    nop                                           ; $7F83: $00
    nop                                           ; $7F84: $00
    nop                                           ; $7F85: $00
    nop                                           ; $7F86: $00
    nop                                           ; $7F87: $00
    nop                                           ; $7F88: $00
    nop                                           ; $7F89: $00
    nop                                           ; $7F8A: $00
    nop                                           ; $7F8B: $00
    nop                                           ; $7F8C: $00
    nop                                           ; $7F8D: $00
    nop                                           ; $7F8E: $00
    nop                                           ; $7F8F: $00
    rlca                                          ; $7F90: $07
    nop                                           ; $7F91: $00
    inc b                                         ; $7F92: $04
    inc bc                                        ; $7F93: $03
    inc bc                                        ; $7F94: $03
    ld bc, $0001                                  ; $7F95: $01 $01 $00
    ld bc, $0300                                  ; $7F98: $01 $00 $03
    nop                                           ; $7F9B: $00
    ld [bc], a                                    ; $7F9C: $02
    ld bc, $0102                                  ; $7F9D: $01 $02 $01
    nop                                           ; $7FA0: $00
    nop                                           ; $7FA1: $00
    nop                                           ; $7FA2: $00
    nop                                           ; $7FA3: $00
    nop                                           ; $7FA4: $00
    nop                                           ; $7FA5: $00
    nop                                           ; $7FA6: $00
    nop                                           ; $7FA7: $00
    nop                                           ; $7FA8: $00
    nop                                           ; $7FA9: $00
    nop                                           ; $7FAA: $00
    nop                                           ; $7FAB: $00
    nop                                           ; $7FAC: $00
    nop                                           ; $7FAD: $00
    nop                                           ; $7FAE: $00
    nop                                           ; $7FAF: $00
    add b                                         ; $7FB0: $80
    nop                                           ; $7FB1: $00
    ld h, b                                       ; $7FB2: $60
    add b                                         ; $7FB3: $80
    sub b                                         ; $7FB4: $90
    ldh [$FFE8], a                                ; $7FB5: $E0 $E8
    ldh a, [$FFF4]                                ; $7FB7: $F0 $F4
    ld hl, sp-$0C                                 ; $7FB9: $F8 $F4
    ld hl, sp-$06                                 ; $7FBB: $F8 $FA
    ld a, h                                       ; $7FBD: $7C
    ld a, d                                       ; $7FBE: $7A
    cp h                                          ; $7FBF: $BC
    pop bc                                        ; $7FC0: $C1
    nop                                           ; $7FC1: $00
    ld sp, $0CC0                                  ; $7FC2: $31 $C0 $0C
    ldh a, [rSC]                                  ; $7FC5: $F0 $02
    db $FC                                        ; $7FC7: $FC
    inc bc                                        ; $7FC8: $03
    db $FC                                        ; $7FC9: $FC
    rlca                                          ; $7FCA: $07
    ei                                            ; $7FCB: $FB
    rlca                                          ; $7FCC: $07
    ei                                            ; $7FCD: $FB
    rrca                                          ; $7FCE: $0F
    rst RST_30                                    ; $7FCF: $F7
    rst RST_08                                    ; $7FD0: $CF
    scf                                           ; $7FD1: $37
    ccf                                           ; $7FD2: $3F
    rrca                                          ; $7FD3: $0F
    rrca                                          ; $7FD4: $0F
    rlca                                          ; $7FD5: $07
    rrca                                          ; $7FD6: $0F
    ld bc, $040B                                  ; $7FD7: $01 $0B $04
    inc c                                         ; $7FDA: $0C
    nop                                           ; $7FDB: $00
    nop                                           ; $7FDC: $00
    nop                                           ; $7FDD: $00
    nop                                           ; $7FDE: $00
    nop                                           ; $7FDF: $00
    ld a, d                                       ; $7FE0: $7A
    cp h                                          ; $7FE1: $BC
    ld a, [hl-]                                   ; $7FE2: $3A
    call c, Call_016_5CBA                         ; $7FE3: $DC $BA $5C
    cp d                                          ; $7FE6: $BA
    ld e, h                                       ; $7FE7: $5C
    cp d                                          ; $7FE8: $BA
    ld b, h                                       ; $7FE9: $44
    and $00                                       ; $7FEA: $E6 $00
    ldh [$FFC0], a                                ; $7FEC: $E0 $C0
    ldh [$FFC0], a                                ; $7FEE: $E0 $C0
    ldh [$FFC0], a                                ; $7FF0: $E0 $C0
    ret nz                                        ; $7FF2: $C0

    add b                                         ; $7FF3: $80
    ret nz                                        ; $7FF4: $C0

    add b                                         ; $7FF5: $80
    add b                                         ; $7FF6: $80
    nop                                           ; $7FF7: $00
    nop                                           ; $7FF8: $00
    nop                                           ; $7FF9: $00
    nop                                           ; $7FFA: $00
    nop                                           ; $7FFB: $00
    nop                                           ; $7FFC: $00
    nop                                           ; $7FFD: $00
    nop                                           ; $7FFE: $00
    nop                                           ; $7FFF: $00
